#include <cmath>
#ifndef NATIVE_SYSTEMC
#include "stratus_hls.h"
#endif

#include "Gaussian_Blur.h"
using namespace sc_dt;

Gaussian_Blur::Gaussian_Blur(sc_module_name n) : sc_module(n) {
  SC_THREAD(do_filter);
  sensitive << i_clk.pos();
  dont_initialize();
  reset_signal_is(i_rst, false);

#ifndef NATIVE_SYSTEMC
	i_rgb.clk_rst(i_clk, i_rst);
  o_result.clk_rst(i_clk, i_rst);
#endif
}

Gaussian_Blur::~Gaussian_Blur() {}

const sc_int<9> filter_const[filterHeight][filterWidth] =
  {
    {1, 1, 1},
    {1, -7, 1},
    {1, 1, 1}
  };

void Gaussian_Blur::do_filter() {
  {
#ifndef NATIVE_SYSTEMC
		HLS_DEFINE_PROTOCOL("main_reset");
		i_rgb.reset();
		o_result.reset();
#endif
		wait();
	}
    int x, y, i, v, u;
    int flag = 0; 
    int counter = -1;
    for (v = 0; v < filterHeight; ++v) {
      for (u = 0; u < filterWidth; ++u) {
        filter[v][u] = filter_const[v][u];
      }
    }
    for (y = 1; y != 3 ; ++y) {
      for (x = 0; x != W; ++x) {
#ifndef NATIVE_SYSTEMC
        {
          HLS_DEFINE_PROTOCOL("input");
          rgb_buffer[y][x + 1] = i_rgb.get();
          wait();
        }
#else
        rgb_buffer[y][x + 1] = i_rgb.read();
#endif 
      }
    } 
    for (x = 0; x != 258; ++x) {    //set inital buffer 0
      HLS_UNROLL_LOOP(ALL, "shift");
      rgb_buffer[0][x] = 0;
    }
    for (x = 0; x != 3; ++x) {        //set side to 0
      rgb_buffer[x][0] = 0;
      rgb_buffer[x][W+1] = 0;
    }
    // rgb_buffer = i_rgb.read();


  while (true) {
    flag = counter % 3;
    // HLS_CONSTRAIN_LATENCY(0, 1, "lat00");
    red = 0; green = 0; blue = 0;
    if (counter != (-1) && counter != 254)
    {
      for (x = 0; x != W; ++x) {
#ifndef NATIVE_SYSTEMC
        {
          HLS_DEFINE_PROTOCOL("input");
          rgb_buffer[flag][x + 1] = i_rgb.get();
          wait();
        }
#else
        rgb_buffer[flag][x + 1] = i_rgb.read();
#endif 
      }
      for (x = 0; x != 3; ++x) {      //switch kernel
        HLS_UNROLL_LOOP(ALL, "shift");
        i = filter[2][x];
        filter[2][x] = filter[1][x];
        filter[1][x] = filter[0][x];
        filter[0][x] = i;
      }
    }
    else if (counter == 254){
      for (x = 0; x != W; ++x) {      //padding
        rgb_buffer[flag][x + 1] = 0;
      }
      for (x = 0; x != 3; ++x) {      //switch kernel
        i = filter[2][x];
        filter[2][x] = filter[1][x];
        filter[1][x] = filter[0][x];
        filter[0][x] = i;
      }
    }
    for (x = 0; x != W; ++x) {
      for (v = 0; v < filterHeight; ++v) {
        for (u = 0; u < filterWidth; ++u) {
          // sc_int<25> rgb;
          p_red = rgb_buffer[v][x + u].range(7,0);
          p_green = rgb_buffer[v][x + u].range(15,8);
          p_blue = rgb_buffer[v][x + u].range(23,16);
          HLS_PIPELINE_LOOP(HARD_STALL, 1, "main_loop_pipeline");
          HLS_CONSTRAIN_LATENCY(0, 3, "lat01");
          red += p_red * filter[v][u];
          green += p_green * filter[v][u];
          blue += p_blue * filter[v][u];
        }
      }
      total = 0;
      total = (red + green + blue) / 3;
#ifndef NATIVE_SYSTEMC
      {
        HLS_DEFINE_PROTOCOL("output");
        o_result.put(total);
        wait();
      }
#else
      o_result.write(total);    
#endif
    red = 0; green = 0; blue = 0;
    }
    counter += 1;
  }
}
