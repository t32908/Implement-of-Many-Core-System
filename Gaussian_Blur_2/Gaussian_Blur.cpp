#include <cmath>

#include "Gaussian_Blur.h"

Gaussian_Blur::Gaussian_Blur(sc_module_name n) : sc_module(n) {
  SC_THREAD(do_filter);
  sensitive << i_clk.pos();
  dont_initialize();
  reset_signal_is(i_rst, false);
}

// Gaussian_Blur
double filter[filterHeight][filterWidth] =
{
  0.077847, 0.123317, 0.077847,
  0.123317, 0.195346, 0.123317,
  0.077847, 0.123317, 0.077847,
};

void Gaussian_Blur::do_filter() {
  { wait(); }
  while (true) {
    red = 0; green = 0; blue = 0;
    for (unsigned int v = 0; v < filterHeight; ++v) {
      for (unsigned int u = 0; u < filterWidth; ++u) {
        unsigned char p_red = i_r.read();
        unsigned char p_green = i_g.read();
        unsigned char p_blue = i_b.read();
        wait();
          red += p_red * filter[u][v];
          green += p_green * filter[u][v];
          blue += p_blue * filter[u][v];
          wait();
      }
    }

    o_result_r.write(red);    
    o_result_g.write(green);
    o_result_b.write(blue);
  }
}
