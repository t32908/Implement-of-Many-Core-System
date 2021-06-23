#include <string.h>
#include "stdio.h"
#include "lena_std_short.h" //included here to avoid compiler issue of not initializing global arrays
#include "out.h" //included here to avoid compiler issue of not initializing global arrays

unsigned char* source_array_1= lena_std_short_bmp;
unsigned char* source_array_2= out_bmp;

//Filter ACC
static char* const gaussianFILTER_START_ADDR[2] = {reinterpret_cast<char* const>(0x75000000), reinterpret_cast<char* const>(0x76000000)};
static char* const gaussianFILTER_READ_ADDR[2]   = {reinterpret_cast<char* const>(0x75000004), reinterpret_cast<char* const>(0x76000004)};

// DMA 
static volatile uint32_t * const DMA_SRC_ADDR  = (uint32_t * const)0x70000000;
static volatile uint32_t * const DMA_DST_ADDR  = (uint32_t * const)0x70000004;
static volatile uint32_t * const DMA_LEN_ADDR  = (uint32_t * const)0x70000008;
static volatile uint32_t * const DMA_OP_ADDR   = (uint32_t * const)0x7000000C;
static volatile uint32_t * const DMA_STAT_ADDR = (uint32_t * const)0x70000010;
static const uint32_t DMA_OP_MEMCPY = 1;

bool _is_using_dma = false;

//Total number of cores
//static const int PROCESSORS = 2;
#define PROCESSORS 2
//the barrier synchronization objects
uint32_t barrier_counter=0; 
uint32_t barrier_lock; 
uint32_t barrier_sem; 
//the mutex object to control global summation
uint32_t lock;  
//print synchronication semaphore (print in core order)
uint32_t print_sem[PROCESSORS]; 


int sem_init (uint32_t *__sem, uint32_t count) __THROW{
  *__sem=count;
  return 0;
}
int sem_wait (uint32_t *__sem) __THROW{
  uint32_t value, success; //RV32A
  __asm__ __volatile__("\
L%=:\n\t\
     lr.w %[value],(%[__sem])            # load reserved\n\t\
     beqz %[value],L%=                   # if zero, try again\n\t\
     addi %[value],%[value],-1           # value --\n\t\
     sc.w %[success],%[value],(%[__sem]) # store conditionally\n\t\
     bnez %[success], L%=                # if the store failed, try again\n\t\
"
    : [value] "=r"(value), [success]"=r"(success)
    : [__sem] "r"(__sem)
    : "memory");
  return 0;
}

int sem_post (uint32_t *__sem) __THROW{
  uint32_t value, success; //RV32A
  __asm__ __volatile__("\
L%=:\n\t\
     lr.w %[value],(%[__sem])            # load reserved\n\t\
     addi %[value],%[value], 1           # value ++\n\t\
     sc.w %[success],%[value],(%[__sem]) # store conditionally\n\t\
     bnez %[success], L%=                # if the store failed, try again\n\t\
"
    : [value] "=r"(value), [success]"=r"(success)
    : [__sem] "r"(__sem)
    : "memory");
  return 0;
}

int barrier(uint32_t *__sem, uint32_t *__lock, uint32_t *counter, uint32_t thread_count) {
	sem_wait(__lock);
	if (*counter == thread_count - 1) { //all finished
		*counter = 0;
		sem_post(__lock);
		for (int j = 0; j < thread_count - 1; ++j) sem_post(__sem);
	} else {
		(*counter)++;
		sem_post(__lock);
		sem_wait(__sem);
	}
	return 0;
}

void write_data_to_ACC(char* ADDR, unsigned char* buffer, int len, int hart_id){
    if(_is_using_dma){  
        // Using DMA 
	    sem_wait(&lock);
      *(DMA_SRC_ADDR) = (uint32_t)(buffer);
      *(DMA_DST_ADDR) = (uint32_t)(ADDR);
      *(DMA_LEN_ADDR) = len;
      *(DMA_OP_ADDR)  = DMA_OP_MEMCPY;
	    sem_post(&lock);

    }else{
        // Directly Send
        memcpy(ADDR, buffer, sizeof(unsigned char)*len);
    }
}
void read_data_from_ACC(char* ADDR, unsigned char* buffer, int len, int hart_id){
    if(_is_using_dma){
        // Using DMA 
	    sem_wait(&lock);
      *(DMA_SRC_ADDR) = (uint32_t)(ADDR);
      *(DMA_DST_ADDR) = (uint32_t)(buffer);
      *(DMA_LEN_ADDR) = len;
      *(DMA_OP_ADDR)  = DMA_OP_MEMCPY;
	    sem_post(&lock);
    }else{
        // Directly Read
        memcpy(buffer, ADDR, sizeof(unsigned char)*len);
    }
}

unsigned int ReadfromByteArray(unsigned char* array, unsigned int offset) {
	unsigned int output = (array[offset] << 0) | (array[offset + 1] << 8) | (array[offset + 2] << 16) | (array[offset + 3] << 24);
	return output;
}

int main(unsigned hart_id) {
  int file_length;

  /////////////////////////////
	// thread and barrier init //
	/////////////////////////////

	if (hart_id == 0) {
		// create a barrier object with a count of PROCESSORS
		sem_init(&barrier_lock, 1);
		sem_init(&barrier_sem, 0); //lock all cores initially
		for(int i=0; i< PROCESSORS; ++i){
			sem_init(&print_sem[i], 0); //lock printing initially
		}
		// Create mutex lock
		sem_init(&lock, 1);
	}

  unsigned int input_rgb_raw_data_offset = ReadfromByteArray(source_array_1, 10);
	unsigned int width = ReadfromByteArray(source_array_1, 18);
	unsigned int length = ReadfromByteArray(source_array_1, 22);
	unsigned int bytes_per_pixel = ReadfromByteArray(source_array_1, 28) / 8;
	unsigned char* source_bitmap = &source_array_1[input_rgb_raw_data_offset];
  printf("======================================\n");
  printf("\t  Reading from array\n");
  printf("======================================\n");
	printf(" input_rgb_raw_data_offset\t= %d\n", input_rgb_raw_data_offset);
	printf(" width\t\t\t\t= %d\n", width);
	printf(" length\t\t\t\t= %d\n", length);
	printf(" bytes_per_pixel\t\t= %d\n",bytes_per_pixel);
  printf("======================================\n");

    unsigned char  buffer[4] = {0};
    if (hart_id == 0){
        file_length = lena_std_short_bmp_len;
        int mod_4 = lena_std_short_bmp_len % 4;
        buffer[0] = lena_std_short_bmp_len & 0xFF;
        buffer[1] = (lena_std_short_bmp_len >> 8) & 0xFF;
        buffer[2] = (lena_std_short_bmp_len >> 16) & 0xFF;
        buffer[3] = (lena_std_short_bmp_len >> 24) & 0xFF;
    }
    else if (hart_id == 1){
        file_length = out_bmp_len;
        int mod_4 = out_bmp_len % 4;
        buffer[0] = out_bmp_len & 0xFF;
        buffer[1] = (out_bmp_len >> 8) & 0xFF;
        buffer[2] = (out_bmp_len >> 16) & 0xFF;
        buffer[3] = (out_bmp_len >> 24) & 0xFF;
    }
    write_data_to_ACC(gaussianFILTER_START_ADDR[hart_id], buffer, 4, hart_id);

  int first_core = (hart_id == 0 ? 0 : width / PROCESSORS);
	int second_core = (hart_id == 0 ? width / PROCESSORS : width);
    for(int i = 0; i < file_length; i = i + 4){
        // if(i > (lena_std_short_bmp_len - 4) && mod_4 != 0){
        //     buffer[0] = *(source_array_1 + 4 * i + 0);
        //     if(mod_4 == 1)

        // }
        // else{
        if (hart_id == 0){
            buffer[0] = *(source_array_1 + i + 0);
            buffer[1] = *(source_array_1 + i + 1);
            buffer[2] = *(source_array_1 + i + 2);
            buffer[3] = *(source_array_1 + i + 3);
        }
        else if (hart_id == 1){
            buffer[0] = *(source_array_2 + i + 0);
            buffer[1] = *(source_array_2 + i + 1);
            buffer[2] = *(source_array_2 + i + 2);
            buffer[3] = *(source_array_2 + i + 3);
        }
        write_data_to_ACC(gaussianFILTER_START_ADDR[hart_id], buffer, 4, hart_id);
        // }  
        // printf(" i = %d", i);          
    }

    read_data_from_ACC(gaussianFILTER_READ_ADDR[hart_id], buffer, 4, hart_id);
    // printf(" \n buffer= %d %d %d %d\n", buffer[0], buffer[1], buffer[2], buffer[3]);

	barrier(&barrier_sem, &barrier_lock, &barrier_counter, PROCESSORS);
	if (hart_id == 0) sem_post(&print_sem[1]);  // Allow Core 1 to print
  return 0;
}
