/*
Filename    : sobel.cpp
Compiler    : Clang++ 8.0.0
Description : Demo the how to use sobel detector on gray level image
*/
#include <cassert>
#include <cmath>
#include <iostream>

using namespace std;

const int filterWidth = 3;
const int filterHeight = 3;

double filter[filterHeight][filterWidth] =
{
  0.077847, 0.123317, 0.077847,
  0.123317, 0.195346, 0.123317,
  0.077847, 0.123317, 0.077847,
};

unsigned char *image_s = nullptr; // source image array
unsigned char *image_t = nullptr; // target image array
FILE *fp_s = nullptr;             // source file handler
FILE *fp_t = nullptr;             // target file handler

unsigned int width = 0;               // image width
unsigned int height = 0;              // image height
unsigned int rgb_raw_data_offset = 0; // RGB raw data offset
unsigned char bit_per_pixel = 0;      // bit per pixel
unsigned short byte_per_pixel = 0;    // byte per pixel

// bitmap header
unsigned char header[54] = {
    0x42,          // identity : B
    0x4d,          // identity : M
    0,    0, 0, 0, // file size
    0,    0,       // reserved1
    0,    0,       // reserved2
    54,   0, 0, 0, // RGB data offset
    40,   0, 0, 0, // struct BITMAPINFOHEADER size
    0,    0, 0, 0, // bmp width
    0,    0, 0, 0, // bmp height
    1,    0,       // planes
    24,   0,       // bit per pixel
    0,    0, 0, 0, // compression
    0,    0, 0, 0, // data size
    0,    0, 0, 0, // h resolution
    0,    0, 0, 0, // v resolution
    0,    0, 0, 0, // used colors
    0,    0, 0, 0  // important colors
};

// Gaussian_Blur

int read_bmp(const char *fname_s) {
  fp_s = fopen(fname_s, "rb");
  if (fp_s == nullptr) {
    std::cerr << "fopen fp_s error" << std::endl;
    return -1;
  }

  // move offset to 10 to find rgb raw data offset
  fseek(fp_s, 10, SEEK_SET);
  assert(fread(&rgb_raw_data_offset, sizeof(unsigned int), 1, fp_s));

  // move offset to 18 to get width & height;
  fseek(fp_s, 18, SEEK_SET);
  assert(fread(&width, sizeof(unsigned int), 1, fp_s));
  assert(fread(&height, sizeof(unsigned int), 1, fp_s));

  // get bit per pixel
  fseek(fp_s, 28, SEEK_SET);
  assert(fread(&bit_per_pixel, sizeof(unsigned short), 1, fp_s));
  byte_per_pixel = bit_per_pixel / 8;

  // move offset to rgb_raw_data_offset to get RGB raw data
  fseek(fp_s, rgb_raw_data_offset, SEEK_SET);

  size_t size = width * height * byte_per_pixel;
  image_s = reinterpret_cast<unsigned char *>(new void *[size]);
  if (image_s == nullptr) {
    std::cerr << "allocate image_s error" << std::endl;
    return -1;
  }

  image_t = reinterpret_cast<unsigned char *>(new void *[size]);
  if (image_t == nullptr) {
    std::cerr << "allocate image_t error" << std::endl;
    return -1;
  }

  assert(fread(image_s, sizeof(unsigned char),
               (size_t)(long)width * height * byte_per_pixel, fp_s));
  fclose(fp_s);

  return 0;
}

void Gaussian_Blur(){
  //apply the filter
  for(int x = 0; x < width; x++)
    for(int y = 0; y < height; y++)
    {
      double red = 0.0, green = 0.0, blue = 0.0;

      //multiply every value of the filter with corresponding image pixel
      for(int filterY = 0; filterY < filterHeight; filterY++)
        for(int filterX = 0; filterX < filterWidth; filterX++)
        {
          int imageX = (x - filterWidth / 2 + filterX + width) % width;
          int imageY = (y - filterHeight / 2 + filterY + height) % height;
          red += *(image_s + byte_per_pixel * (width * imageY + imageX) + 2) * filter[filterY][filterX];
          green += *(image_s + byte_per_pixel * (width * imageY + imageX) + 1) * filter[filterY][filterX];
          blue += *(image_s + byte_per_pixel * (width * imageY + imageX) + 0) * filter[filterY][filterX];
        }

      //truncate values smaller than zero and larger than 255
      *(image_t + byte_per_pixel * (width * y + x) + 2) = min(max(int(red), 0), 255);
      *(image_t + byte_per_pixel * (width * y + x) + 1) = min(max(int(green), 0), 255);
      *(image_t + byte_per_pixel * (width * y + x) + 0) = min(max(int(blue), 0), 255);
    }
}

int write_bmp(const char *fname_t) {
  unsigned int file_size = 0; // file size

  fp_t = fopen(fname_t, "wb");
  if (fp_t == nullptr) {
    std::cerr << "fopen fname_t error" << std::endl;
    return -1;
  }

  // file size
  file_size = width * height * byte_per_pixel + rgb_raw_data_offset;
  header[2] = (unsigned char)(file_size & 0x000000ff);
  header[3] = (file_size >> 8) & 0x000000ff;
  header[4] = (file_size >> 16) & 0x000000ff;
  header[5] = (file_size >> 24) & 0x000000ff;

  // width
  header[18] = width & 0x000000ff;
  header[19] = (width >> 8) & 0x000000ff;
  header[20] = (width >> 16) & 0x000000ff;
  header[21] = (width >> 24) & 0x000000ff;

  // height
  header[22] = height & 0x000000ff;
  header[23] = (height >> 8) & 0x000000ff;
  header[24] = (height >> 16) & 0x000000ff;
  header[25] = (height >> 24) & 0x000000ff;

  // bit per pixel
  header[28] = bit_per_pixel;

  // write header
  fwrite(header, sizeof(unsigned char), rgb_raw_data_offset, fp_t);

  // write image
  fwrite(image_t, sizeof(unsigned char),
         (size_t)(long)width * height * byte_per_pixel, fp_t);

  fclose(fp_t);

  return 0;
}

int main(void) {
  assert(read_bmp("lena.bmp") == 0); // 24 bit gray level image
  Gaussian_Blur();
  assert(write_bmp("lena_GB.bmp") == 0);
  delete (image_s);
  delete (image_t);

  return 0;
}
