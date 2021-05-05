/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/

#ifdef NCSC
#include <string>
typedef std::string sc_string;
#define SYSTEMC_VERSION 20070314
#endif

#include "Gaussian_Blur_cycsim.h"
#include "esc_catrace.h"
#include "verilated.h"
#include "VGaussian_Blur_rtl.h"


class VGaussian_Blur_rtl;

class Gaussian_Blur_cycsimV : public Gaussian_Blur_cycsim
{
    // Port declarations inherited from parent class

    // These signals are used to connect ports that need type conversion to the RTL ports
    sc_signal< uint32_t > i_rgb_data_I;
    sc_signal< uint32_t > o_result_data_O;


    // The following threads are used to do the type conversion.
    inline void thread_i_rgb_data_I() {
        i_rgb_data_I = (sc_uint<25>)i_rgb_data.read();
    };
    inline void thread_o_result_data_O() {
        o_result_data = o_result_data_O.read();
    };


    SC_HAS_PROCESS(Gaussian_Blur_cycsimV);

public:

    Gaussian_Blur_cycsimV( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" Gaussian_Blur") ) )
        : Gaussian_Blur_cycsim(in_name)
    {
        // instantiate the verilated module
        Gaussian_Blur_cyc0 = new VGaussian_Blur_rtl( "VGaussian_Blur" );
        // generate port connections
        Gaussian_Blur_cyc0->i_clk(i_clk);
        Gaussian_Blur_cyc0->i_rst(i_rst);
        Gaussian_Blur_cyc0->i_rgb_busy(i_rgb_busy);
        Gaussian_Blur_cyc0->i_rgb_vld(i_rgb_vld);
        Gaussian_Blur_cyc0->i_rgb_data(i_rgb_data_I);
        Gaussian_Blur_cyc0->o_result_busy(o_result_busy);
        Gaussian_Blur_cyc0->o_result_vld(o_result_vld);
        Gaussian_Blur_cyc0->o_result_data(o_result_data_O);


        // setup the type conversion threads
        SC_METHOD( thread_i_rgb_data_I);
            sensitive << i_rgb_data;
        SC_METHOD( thread_o_result_data_O);
            sensitive << o_result_data_O;


        TraceFileType* tfp = esc_get_ca_trace_file();
        if ( tfp )
        {
            Gaussian_Blur_cyc0->trace(tfp,99);
        }
    };

    ~Gaussian_Blur_cycsimV()
    {
        delete Gaussian_Blur_cyc0;
    }

    void end_of_elaboration()
    {
        esc_open_ca_trace_file();
    }

    void end_of_simulation()
    {
        esc_close_ca_trace_file();
    }

protected:
    VGaussian_Blur_rtl* Gaussian_Blur_cyc0;
};

Gaussian_Blur_cycsim* Gaussian_Blur_cycsim_factory()
{
    return new Gaussian_Blur_cycsimV("Gaussian_Blur");
}

class Gaussian_Blur_linkup
{
public:
    Gaussian_Blur_linkup() {
        extern Gaussian_Blur_cycsim* (*Gaussian_Blur_cycsim_factory_p)();
        Gaussian_Blur_cycsim_factory_p = &Gaussian_Blur_cycsim_factory;
    }
};

// Create the one instance of the factory for this verilated model.
Gaussian_Blur_linkup Gaussian_Blur_cycsimV_link;


