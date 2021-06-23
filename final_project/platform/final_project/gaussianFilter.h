#ifndef GAUSSIAN_FILTER_H_
#define GAUSSIAN_FILTER_H_
#include <systemc>
#include <cmath>
#include <iomanip>

using namespace sc_core;

#include <tlm>
#include <tlm_utils/simple_target_socket.h>

#include "filter_def.h"

struct gaussianFilter : public sc_module {
  tlm_utils::simple_target_socket<gaussianFilter> tsock;

  sc_fifo<unsigned char> i_0;
  sc_fifo<unsigned char> i_1;
  sc_fifo<unsigned char> i_2;
  sc_fifo<unsigned char> i_3;
  sc_fifo<int> o_result_0;
  sc_fifo<int> o_result_1;
  sc_fifo<int> o_result_2;
  sc_fifo<int> o_result_3;

  SC_HAS_PROCESS(gaussianFilter);

  gaussianFilter(sc_module_name n): 
    sc_module(n), 
    tsock("t_skt"), 
    base_offset(0) 
  {
    tsock.register_b_transport(this, &gaussianFilter::blocking_transport);
    SC_THREAD(do_filter);
  }

  ~gaussianFilter() {
	}

//   int val[MASK_N];
  unsigned int base_offset;
  int red, green, blue, mod_4;
  unsigned int file_length = 0;
  uint32_t calcuCrc = 0xffffffff;

  void do_filter(){
    { wait(CLOCK_PERIOD, SC_NS); }
    unsigned char in_0 = i_0.read();
    unsigned char in_1 = i_1.read();
    unsigned char in_2 = i_2.read();
    unsigned char in_3 = i_3.read();
    wait(CLOCK_PERIOD, SC_NS);
    file_length = in_0 | (in_1 << 8) | (in_2 << 16) | (in_3 << 24);
    mod_4 = file_length % 4;
    while (true) {
    //   for (unsigned int i = 0; i < MASK_N; ++i) {
    //     val[i] = 0;
    //     wait(CLOCK_PERIOD, SC_NS);
    //   }

      red = 0; green = 0; blue = 0;
      // unsigned char in_0, in_1, in_2, in_3;

      for (unsigned int v = 0; v < file_length; v = v + 4) {
        if(v > (file_length - 4) && mod_4 != 0){
          if(mod_4 == 1){
            in_0 = i_0.read();
            wait(CLOCK_PERIOD, SC_NS);
            calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_0)&0xff]);
          }
          else if(mod_4 == 2){
            in_0 = i_0.read();
            in_1 = i_1.read();
            wait(CLOCK_PERIOD, SC_NS);
            calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_0)&0xff]);
            calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_1)&0xff]);
          }
          else if(mod_4 == 3){
            in_0 = i_0.read();
            in_1 = i_1.read();
            in_2 = i_2.read();
            wait(CLOCK_PERIOD, SC_NS);
            calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_0)&0xff]);
            calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_1)&0xff]);
            calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_2)&0xff]);
          }

        }
        else{
          in_0 = i_0.read();
          in_1 = i_1.read();
          in_2 = i_2.read();
          in_3 = i_3.read();
          wait(CLOCK_PERIOD, SC_NS);
      //   for (unsigned int i = 0; i != MASK_N; ++i) {
      //     val[i] += grey * mask[i][u][v];
      //     wait(CLOCK_PERIOD, SC_NS);
      //   }
          calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_0)&0xff]);
          calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_1)&0xff]);
          calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_2)&0xff]);
          calcuCrc = (calcuCrc >> 8)^(crc32_table[(calcuCrc ^ in_3)&0xff]);
          // printf(" calcuCrc = %d", calcuCrc);
        }
      }
    //   double total = 0;
    //   for (unsigned int i = 0; i != MASK_N; ++i) {
    //     total += val[i] * val[i];
    //     wait(CLOCK_PERIOD, SC_NS);
    //   }
    //   int result = static_cast<int>(std::sqrt(total));

      // cout << (int)result << endl;

      o_result_0.write((unsigned char)(calcuCrc & 0xFF));
      o_result_1.write((unsigned char)((calcuCrc >> 8) & 0xFF));
      o_result_2.write((unsigned char)((calcuCrc >> 16) & 0xFF));
      o_result_3.write((unsigned char)((calcuCrc >> 24) & 0xFF));
      printf(" calcuCrc = %x \n", calcuCrc);
    }
  }

  void blocking_transport(tlm::tlm_generic_payload &payload, sc_core::sc_time &delay){
    wait(delay);
    // unsigned char *mask_ptr = payload.get_byte_enable_ptr();
    // auto len = payload.get_data_length();
    tlm::tlm_command cmd = payload.get_command();
    sc_dt::uint64 addr = payload.get_address();
    unsigned char *data_ptr = payload.get_data_ptr();

    addr -= base_offset;


    // cout << (int)data_ptr[0] << endl;
    // cout << (int)data_ptr[1] << endl;
    // cout << (int)data_ptr[2] << endl;
    word buffer;

    switch (cmd) {
      case tlm::TLM_READ_COMMAND:
        // cout << "READ" << endl;
        switch (addr) {
          case GAUSSIAN_BLUR_RESULT_ADDR:
            buffer.uc[0] = o_result_0.read();
            buffer.uc[1] = o_result_1.read();
            buffer.uc[2] = o_result_2.read();
            buffer.uc[3] = o_result_3.read();
            break;
          default:
            std::cerr << "READ Error! gaussianFilter::blocking_transport: address 0x"
                      << std::setfill('0') << std::setw(8) << std::hex << addr
                      << std::dec << " is not valid" << std::endl;
          }
        data_ptr[0] = buffer.uc[0];
        data_ptr[1] = buffer.uc[1];
        data_ptr[2] = buffer.uc[2];
        data_ptr[3] = buffer.uc[3];
        break;
      case tlm::TLM_WRITE_COMMAND:
        // cout << "WRITE" << endl;
        switch (addr) {
          case GAUSSIAN_BLUR_R_ADDR:
            i_0.write(data_ptr[0]);
            i_1.write(data_ptr[1]);
            i_2.write(data_ptr[2]);
            i_3.write(data_ptr[3]);
            break;
          default:
            std::cerr << "WRITE Error! gaussianFilter::blocking_transport: address 0x"
                      << std::setfill('0') << std::setw(8) << std::hex << addr
                      << std::dec << " is not valid" << std::endl;
        }
        break;
      case tlm::TLM_IGNORE_COMMAND:
        payload.set_response_status(tlm::TLM_GENERIC_ERROR_RESPONSE);
        return;
      default:
        payload.set_response_status(tlm::TLM_GENERIC_ERROR_RESPONSE);
        return;
      }
      payload.set_response_status(tlm::TLM_OK_RESPONSE); // Always OK
  }
};
#endif
