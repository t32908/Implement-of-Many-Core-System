#include <iostream>
#include <string>
using namespace std;

// Wall Clock Time Measurement
#include <sys/time.h>

#include "Gaussian_Blur.h"
#include "Testbench.h"

// TIMEVAL STRUCT IS Defined ctime
// use start_time and end_time variables to capture
// start of simulation and end of simulation
struct timeval start_time, end_time;

// int main(int argc, char *argv[])
int sc_main(int argc, char **argv) {
  if ((argc < 3) || (argc > 4)) {
    cout << "No arguments for the executable : " << argv[0] << endl;
    cout << "Usage : >" << argv[0] << " in_image_file_name out_image_file_name"
         << endl;
    return 0;
  }
  Testbench tb("tb");
  Gaussian_Blur Gaussian_Blur("Gaussian_Blur");
  sc_clock clk("clk", CLOCK_PERIOD, SC_NS);
  sc_signal<bool> rst("rst");
  sc_fifo<unsigned char> r;
  sc_fifo<unsigned char> g;
  sc_fifo<unsigned char> b;
  sc_fifo<int> result_red;
  sc_fifo<int> result_green;
  sc_fifo<int> result_blue;
  tb.i_clk(clk);
  tb.o_rst(rst);
  Gaussian_Blur.i_clk(clk);
  Gaussian_Blur.i_rst(rst);
  tb.o_r(r);
  tb.o_g(g);
  tb.o_b(b);
  tb.i_result_red(result_red);
  tb.i_result_green(result_green);
  tb.i_result_blue(result_blue);
  Gaussian_Blur.i_r(r);
  Gaussian_Blur.i_g(g);
  Gaussian_Blur.i_b(b);
  Gaussian_Blur.o_result_r(result_red);
  Gaussian_Blur.o_result_g(result_green);
  Gaussian_Blur.o_result_b(result_blue);

  tb.read_bmp(argv[1]);
  sc_start();
  std::cout << "Simulated time == " << sc_core::sc_time_stamp() << std::endl;
  tb.write_bmp(argv[2]);

  return 0;
}
