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

  sc_fifo<unsigned char> i_r;
  sc_fifo<unsigned char> i_g;
  sc_fifo<unsigned char> i_b;
  sc_fifo<int> o_result_r;
  sc_fifo<int> o_result_g;
  sc_fifo<int> o_result_b;

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
  int red, green, blue;

  void do_filter(){
    { wait(CLOCK_PERIOD, SC_NS); }
    while (true) {
    //   for (unsigned int i = 0; i < MASK_N; ++i) {
    //     val[i] = 0;
    //     wait(CLOCK_PERIOD, SC_NS);
    //   }
      red = 0; green = 0; blue = 0;

      for (unsigned int v = 0; v < MASK_Y; ++v) {
        for (unsigned int u = 0; u < MASK_X; ++u) {
          unsigned char r = i_r.read();
          unsigned char g = i_g.read();
          unsigned char b = i_b.read();
          wait(CLOCK_PERIOD, SC_NS);
        //   for (unsigned int i = 0; i != MASK_N; ++i) {
        //     val[i] += grey * mask[i][u][v];
        //     wait(CLOCK_PERIOD, SC_NS);
        //   }
          red += gaussian_blur[u][v] * r;
          green += gaussian_blur[u][v] * g;
          blue += gaussian_blur[u][v] * b;
        }
      }
    //   double total = 0;
    //   for (unsigned int i = 0; i != MASK_N; ++i) {
    //     total += val[i] * val[i];
    //     wait(CLOCK_PERIOD, SC_NS);
    //   }
    //   int result = static_cast<int>(std::sqrt(total));

      // cout << (int)result << endl;

      o_result_r.write((unsigned char)(red / factor));
      o_result_g.write((unsigned char)(green / factor));
      o_result_b.write((unsigned char)(blue / factor));
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
            buffer.uc[0] = o_result_r.read();
            buffer.uc[1] = o_result_g.read();
            buffer.uc[2] = o_result_b.read();
            buffer.uc[3] = 0;
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
            i_r.write(data_ptr[0]);
            i_g.write(data_ptr[1]);
            i_b.write(data_ptr[2]);
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
