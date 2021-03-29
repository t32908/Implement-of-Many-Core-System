#include <cmath>
#include <iomanip>

#include "Gaussian_Blur.h"

Gaussian_Blur::Gaussian_Blur(sc_module_name n) : sc_module(n), t_skt("t_skt"), base_offset(0) {
  SC_THREAD(do_filter);
  t_skt.register_b_transport(this, &Gaussian_Blur::blocking_transport);
}

// Gaussian_Blur
double filter[filterHeight][filterWidth] =
{
  0.077847, 0.123317, 0.077847,
  0.123317, 0.195346, 0.123317,
  0.077847, 0.123317, 0.077847,
};

void Gaussian_Blur::do_filter() {
  { wait(CLOCK_PERIOD, SC_NS); }
  int W, H, x, y, v, u;
  int adjustX, adjustY, xBound, yBound;
  unsigned char R, G, B;
  W = (int)WH.read();
  wait(CLOCK_PERIOD, SC_NS);
  H = (int)WH.read();
  unsigned char r_buffer[H][W];
  unsigned char g_buffer[H][W];
  unsigned char b_buffer[H][W];

  while (true) {
    for (y = 0; y != H ; ++y) {
      for (x = 0; x != W; ++x) {
        r_buffer[y][x] = i_r.read();
        g_buffer[y][x] = i_g.read();
        b_buffer[y][x] = i_b.read();
        wait(CLOCK_PERIOD, SC_NS);
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
            wait(CLOCK_PERIOD, SC_NS); 
          }
        }
        o_result_r.write(red);    
        o_result_g.write(green);
        o_result_b.write(blue);
      }
    }
  }
}

void Gaussian_Blur::blocking_transport(tlm::tlm_generic_payload &payload,
                                     sc_core::sc_time &delay) {
  sc_dt::uint64 addr = payload.get_address();
  addr = addr - base_offset;
  unsigned char *mask_ptr = payload.get_byte_enable_ptr();
  unsigned char *data_ptr = payload.get_data_ptr();
  word buffer;
  switch (payload.get_command()) {
  case tlm::TLM_READ_COMMAND:
    switch (addr) {
    case Gaussian_B_FILTER_RESULT_ADDR:
      buffer.uc[0] = o_result_r.read();
      buffer.uc[1] = o_result_g.read();
      buffer.uc[2] = o_result_b.read();
      break;
    default:
      std::cerr << "Error! SobelFilter::blocking_transport: address 0x"
                << std::setfill('0') << std::setw(8) << std::hex << addr
                << std::dec << " is not valid" << std::endl;
      break;
    }
    data_ptr[0] = buffer.uc[0];
    data_ptr[1] = buffer.uc[1];
    data_ptr[2] = buffer.uc[2];
    data_ptr[3] = buffer.uc[3];
    break;

  case tlm::TLM_WRITE_COMMAND:
    switch (addr) {
    case Gaussian_B_FILTER_R_ADDR:
      if (init < 2)
      {
        buffer.uc[0] = data_ptr[0];
        buffer.uc[1] = data_ptr[1];
        buffer.uc[2] = data_ptr[2];
        buffer.uc[3] = data_ptr[3];
        WH.write(buffer.uint);
        init = init + 1;
      }
      else
      {
        if (mask_ptr[0] == 0xff) {
          i_r.write(data_ptr[0]);
        }
        if (mask_ptr[1] == 0xff) {
          i_g.write(data_ptr[1]);
        }
        if (mask_ptr[2] == 0xff) {
          i_b.write(data_ptr[2]);
        }
      }
      break;
    default:
      std::cerr << "Error! SobelFilter::blocking_transport: address 0x"
                << std::setfill('0') << std::setw(8) << std::hex << addr
                << std::dec << " is not valid" << std::endl;
      break;
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

