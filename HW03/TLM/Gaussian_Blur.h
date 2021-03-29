#ifndef SOBEL_FILTER_H_
#define SOBEL_FILTER_H_
#include <systemc>
using namespace sc_core;

#include "tlm"
#include "tlm_utils/simple_target_socket.h"

#include "filter_def.h"

class Gaussian_Blur : public sc_module {
public:
  tlm_utils::simple_target_socket<Gaussian_Blur> t_skt;

  sc_fifo<unsigned char> i_r;
  sc_fifo<unsigned char> i_g;
  sc_fifo<unsigned char> i_b;
  sc_fifo<unsigned int> WH;
  sc_fifo<unsigned char> o_result_r;
  sc_fifo<unsigned char> o_result_g;
  sc_fifo<unsigned char> o_result_b;

  SC_HAS_PROCESS(Gaussian_Blur);
  Gaussian_Blur(sc_module_name n);
  ~Gaussian_Blur() = default;

private:
  void do_filter();
  double red, green, blue;

  int init = 0;
  
  unsigned int base_offset;
  void blocking_transport(tlm::tlm_generic_payload &payload, sc_core::sc_time &delay);

};
#endif
