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
  int W, H, x, y, v, u;
  int adjustX, adjustY, xBound, yBound;
  unsigned char R, G, B;
  W = i_w.read();
  H = i_h.read();
  unsigned char r_buffer[H][W];
  unsigned char g_buffer[H][W];
  unsigned char b_buffer[H][W];

  while (true) {
    for (y = 0; y != H ; ++y) {
      for (x = 0; x != W; ++x) {
        r_buffer[y][x] = i_r.read();
        g_buffer[y][x] = i_g.read();
        b_buffer[y][x] = i_b.read();
        wait();
      }
    } 
    for (y = 0; y != H; ++y) {
      for (x = 0; x != W; ++x) {
        adjustX = (filterWidth % 2) ? 1 : 0; // 1
        adjustY = (filterHeight % 2) ? 1 : 0; // 1
        xBound = filterWidth / 2;            // 1
        yBound = filterHeight / 2;            // 1
        red = 0; green = 0; blue = 0;

        for (v = -yBound; v != yBound + adjustY; ++v) {   //-1, 0, 1
          for (u = -xBound; u != xBound + adjustX; ++u) { //-1, 0, 1
            if (x + u >= 0 && x + u < W && y + v >= 0 && y + v < H) {
              R = r_buffer[y + v][x + u];
              G = g_buffer[y + v][x + u];
              B = b_buffer[y + v][x + u];
            } else {
              R = 0;
              G = 0;
              B = 0;
            }
            red += R * filter[u + 1][v + 1];
            green += G * filter[u + 1][v + 1];
            blue += B * filter[u + 1][v + 1];
            wait(); 
          }
        }
        o_result_r.write(red);    
        o_result_g.write(green);
        o_result_b.write(blue);
      }
    }
  }
}
