#ifndef SOBEL_FILTER_H_
#define SOBEL_FILTER_H_
#include <systemc>
using namespace sc_core;

#include "filter_def.h"

class Gaussian_Blur : public sc_module {
public:
  sc_in_clk i_clk;
  sc_in<bool> i_rst;
  sc_fifo_in<unsigned char> i_r;
  sc_fifo_in<unsigned char> i_g;
  sc_fifo_in<unsigned char> i_b;
  sc_fifo_in<int> i_w;
  sc_fifo_in<int> i_h;
  sc_fifo_out<int> o_result_r;
  sc_fifo_out<int> o_result_g;
  sc_fifo_out<int> o_result_b;

  SC_HAS_PROCESS(Gaussian_Blur);
  Gaussian_Blur(sc_module_name n);
  ~Gaussian_Blur() = default;

private:
  void do_filter();
  double red, green, blue;
};
#endif
