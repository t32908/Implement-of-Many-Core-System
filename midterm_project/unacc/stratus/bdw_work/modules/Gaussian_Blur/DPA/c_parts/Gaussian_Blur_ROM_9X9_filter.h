// Generated by stratus_hls 19.12-s100  (91710.131054)
// Thu May  6 05:58:18 2021
// from ../Gaussian_Blur.cpp
#ifndef CYNTH_PART_Gaussian_Blur_Gaussian_Blur_ROM_9X9_filter_h
#define CYNTH_PART_Gaussian_Blur_Gaussian_Blur_ROM_9X9_filter_h

#include "systemc.h"
#include "cynthhl.h"
/* Include declarations of instantiated parts. */


/* Declaration of the synthesized module. */
struct Gaussian_Blur_ROM_9X9_filter : public sc_module {
  sc_in<sc_uint<4> > in1;
  sc_out<sc_uint<9> > out1;
  sc_in<bool > clk;
  Gaussian_Blur_ROM_9X9_filter( sc_module_name name );
  SC_HAS_PROCESS(Gaussian_Blur_ROM_9X9_filter);
  /*const*/ sc_uint<9> filter[9];
  void Gaussian_Blur_ROM_9X9_filter_filter_thread_1();
};

#endif
