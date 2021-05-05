/****************************************************************************
*
*  Copyright (c) 2017, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/


#ifndef _GAUSSIAN_BLUR_SC_WRAP_INCLUDED_
#define _GAUSSIAN_BLUR_SC_WRAP_INCLUDED_

#include <systemc.h>

struct Gaussian_Blur;

#include "cynw_p2p.h"
#include "cyn_enums.h"


// Declaration of wrapper with BEH level ports

SC_MODULE(Gaussian_Blur_wrapper)
{
public:

	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	cynw::cynw_p2p_base_in <sc_dt::sc_int <(int)25 >, CYN::cyn_enum <(int)1 > > i_rgb;
	cynw::cynw_p2p_base_out <sc_dt::sc_int <(int)32 >, CYN::cyn_enum <(int)1 > > o_result;

    
    // These signals are used to connect structured ports or ports that need
    // type conversion to the RTL ports.
    
    
	// create the netlist
    void InitInstances( );
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(Gaussian_Blur_wrapper);

    	Gaussian_Blur_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("Gaussian_Blur")) )
		: sc_module(name)
		  ,i_clk("i_clk")
		  	,i_rst("i_rst")
		  	,i_rgb("i_rgb")
		  	,o_result("o_result")
		  	

		  ,Gaussian_Blur0(0)

    {
        InitInstances( );
		InitThreads();
    }

    // destructor
    ~Gaussian_Blur_wrapper()
    {
        DeleteInstances();
    }

	Gaussian_Blur* Gaussian_Blur0;
};

#endif /* _GAUSSIAN_BLUR_SC_WRAP_INCLUDED_ */
