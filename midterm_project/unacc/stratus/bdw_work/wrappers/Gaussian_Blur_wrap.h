/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/


#ifndef _GAUSSIAN_BLUR_WRAP_INCLUDED_
#define _GAUSSIAN_BLUR_WRAP_INCLUDED_


/* Save ioConfig define values for parent module and define those for this module's ioConfigs. */


#if defined(CYNTHVLG) 

#include <systemc.h>

#define Gaussian_Blur_wrapper Gaussian_Blur

/* This is the section that is seen during processing by cynthVLG of a module
 * that instantiates the module defined by this wrapper.
 */
SC_MODULE(Gaussian_Blur)
{
public:
	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	sc_out< bool > i_rgb_busy;
	sc_in< bool > i_rgb_vld;
	sc_in< sc_int< 25 > > i_rgb_data;
	sc_in< bool > o_result_busy;
	sc_out< bool > o_result_vld;
	sc_out< sc_int< 32 > > o_result_data;

	SC_CTOR(Gaussian_Blur);
};

#elif defined(CYNTHHL) || defined(BDW_EXTRACT)

/* This is the section seen during processing by cynthHL or bdw_extract of a module 
 * that instantiates the module defined by this wrapper.
 */
#include <systemc.h>

#include "cynw_p2p.h"
#include "cyn_enums.h"


#define Gaussian_Blur_wrapper Gaussian_Blur

/* Only port declarations are required for nested modules.
 */
SC_MODULE(Gaussian_Blur)
{
public:
	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	cynw::cynw_p2p_base_in <sc_dt::sc_int <(int)25 >, CYN::cyn_enum <(int)1 > > i_rgb;
	cynw::cynw_p2p_base_out <sc_dt::sc_int <(int)32 >, CYN::cyn_enum <(int)1 > > o_result;


	SC_HAS_PROCESS(Gaussian_Blur);
    	Gaussian_Blur_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("Gaussian_Blur")) );
};

#else

#include <esc.h>


/* This is the section seen during processing by gcc either when the module
 * itself is compiled, or when a module that instantiates it is compiled.
 */

struct Gaussian_Blur;
struct Gaussian_Blur_cosim;
struct Gaussian_Blur_cycsim;
struct Gaussian_Blur_rtl;

#ifdef BDW_COWARE
#include	"Gaussian_Blur_coware.h"
#endif

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
    
    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };
	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances( );
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(Gaussian_Blur_wrapper);

    	Gaussian_Blur_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("Gaussian_Blur")) )
		: sc_module(name)
		  ,i_clk("i_clk")
		  	,i_rst("i_rst")
		  	,i_rgb("i_rgb")
		  	,o_result("o_result")
		  	

		  ,Gaussian_Blur0(0), Gaussian_Blur_cosim0(0), Gaussian_Blur_rtl0(0), Gaussian_Blur_cycsim0(0)
		

    {
        InitInstances( );
		InitThreads();
    }


    // destructor
    ~Gaussian_Blur_wrapper()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( Gaussian_Blur_wrapper::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( Gaussian_Blur_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( Gaussian_Blur_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( Gaussian_Blur_wrapper::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( Gaussian_Blur_wrapper::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	Gaussian_Blur* behModule() { return Gaussian_Blur0; }
	Gaussian_Blur_cosim* cosimModule() { return Gaussian_Blur_cosim0; }
	Gaussian_Blur_cycsim* cycsimModule() { return Gaussian_Blur_cycsim0; }
	Gaussian_Blur_rtl* rtlModule() { return Gaussian_Blur_rtl0; }

	Gaussian_Blur* Gaussian_Blur0;
	Gaussian_Blur_cosim* Gaussian_Blur_cosim0;
	Gaussian_Blur_rtl* Gaussian_Blur_rtl0;
	Gaussian_Blur_cycsim* Gaussian_Blur_cycsim0;
};

// Declaration of wrapper with RTL level ports

SC_MODULE(Gaussian_Blur_wrapper_r)
{
public:

	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	sc_out< bool > i_rgb_busy;
	sc_in< bool > i_rgb_vld;
	sc_in< sc_int< 25 > > i_rgb_data;
	sc_in< bool > o_result_busy;
	sc_out< bool > o_result_vld;
	sc_out< sc_int< 32 > > o_result_data;

    
    // These signals are used to connect structured ports or ports that need
    // type conversion to the RTL ports.
    
    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };

	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances();
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(Gaussian_Blur_wrapper_r);

	Gaussian_Blur_wrapper_r( sc_module_name name = sc_module_name( sc_gen_unique_name("Gaussian_Blur")) )
		: sc_module(name)
		  ,i_clk("i_clk")
		  	,i_rst("i_rst")
		  	,i_rgb_busy("i_rgb_busy")
		  	,i_rgb_vld("i_rgb_vld")
		  	,i_rgb_data("i_rgb_data")
		  	,o_result_busy("o_result_busy")
		  	,o_result_vld("o_result_vld")
		  	,o_result_data("o_result_data")
		  	

		  ,Gaussian_Blur0(0), Gaussian_Blur_cosim0(0), Gaussian_Blur_rtl0(0), Gaussian_Blur_cycsim0(0)
		

    {
        InitInstances();
        InitThreads();
		end_module();
    }


    // destructor
    ~Gaussian_Blur_wrapper_r()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( Gaussian_Blur_wrapper_r::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( Gaussian_Blur_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( Gaussian_Blur_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( Gaussian_Blur_wrapper_r::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( Gaussian_Blur_wrapper_r::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	Gaussian_Blur* behModule() { return Gaussian_Blur0; }
	Gaussian_Blur_cosim* cosimModule() { return Gaussian_Blur_cosim0; }
	Gaussian_Blur_cycsim* cycsimModule() { return Gaussian_Blur_cycsim0; }
	Gaussian_Blur_rtl* rtlModule() { return Gaussian_Blur_rtl0; }

protected:
	Gaussian_Blur* Gaussian_Blur0;
	Gaussian_Blur_cosim* Gaussian_Blur_cosim0;
	Gaussian_Blur_rtl* Gaussian_Blur_rtl0;
	Gaussian_Blur_cycsim* Gaussian_Blur_cycsim0;
};

#endif

/* Restore ioConfig define values for parent module. */

#endif /*  */
