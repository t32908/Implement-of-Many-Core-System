#ifndef FILTER_DEF_H_
#define FILTER_DEF_H_

const int filterWidth = 3;
const int filterHeight = 3;

const int Gaussian_B_FILTER_R_ADDR = 0x00000000;
const int Gaussian_B_FILTER_RESULT_ADDR = 0x00000004;

union word {
  int sint;
  unsigned int uint;
  unsigned char uc[4];
};

// Gaussian_Blur
const double filter[filterHeight][filterWidth] =
{
  0.077847, 0.123317, 0.077847,
  0.123317, 0.195346, 0.123317,
  0.077847, 0.123317, 0.077847,
};

#endif
