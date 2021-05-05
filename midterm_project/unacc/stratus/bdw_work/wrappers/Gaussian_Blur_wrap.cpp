/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/
/****************************************************************************
*
* This file is used to wrap the three different versions of the DUT
* block called "Gaussian_Blur". By default, it will include the behavioral
* model. Otherwise, it will include the RTL C++ or the RTL Verilog
* depending on the definition of either of "RTL" or "COSIM".
*
****************************************************************************/

#if defined(CYNTHVLG)


#ifndef BDW_PORTS_ONLY
#define BDW_PORTS_ONLY 1
#endif


#include	"Gaussian_Blur_rtl.cpp"

#else 

#if defined(BDW_HUB)

#include "esc.h"

#if defined(BDW_RTL) || defined(COWARE_RTL_Gaussian_Blur)

#define BDW_AUTO_KNOWN 1 


#ifndef BDW_PORTS_ONLY
#define BDW_PORTS_ONLY 1
#endif


#undef Gaussian_Blur
#define Gaussian_Blur Gaussian_Blur_rtl
#	include	"Gaussian_Blur_rtl.cpp"
#undef Gaussian_Blur


#ifdef BDW_PORTS_ONLY
#undef BDW_PORTS_ONLY
#endif



#elif defined(BDW_HOIST) 
#else

#endif
#ifdef BDW_COWARE
#include	"Gaussian_Blur_coware.h"
#else
#include	"Gaussian_Blur_cosim.h"
#endif

// include for cycle-accurate verilator simulation
#include    "Gaussian_Blur_cycsim.h"



// Include the source for the behavioral model so it will be compiled.
#include	"../Gaussian_Blur.cpp"


#define		Gaussian_Blur_INTERNAL


#include	"Gaussian_Blur_wrap.h"

// this global pointer indicates whether or not the Verilator cycsim wrapper is present
Gaussian_Blur_cycsim* (*Gaussian_Blur_cycsim_factory_p)() = 0;

#define MAX_SIMCONFIG_LENGTH 128

#if BDW_WRITEFSDB == 1

#if defined(NC_SYSTEMC) && defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102
#include "fsdb_nc_mix.h"
#else
#if SYSTEMC_VERSION >= 20120701
#include "fsdb_osci.h"
#else
#include "fsdb_trace_file.h"
#endif
#endif 
#if BDW_USE_SCV
#include "scv.h"
#include "scv_tr_fsdb.h"
#endif

#endif /* BDW_WRITEFSDB */

inline void esc_open_fsdb_trace( const char *file_name = "systemc" );
inline void esc_close_fsdb_trace();
inline void esc_close_fsdb_scv_trace();

// The following threads are used to connect structured ports to the actual
// RTL ports

const char * Gaussian_Blur_wrapper::simConfigName()
{
	static char defineBuf[MAX_SIMCONFIG_LENGTH];
	const char *simConfig = NULL;
	if ( qbhGetDefine( "BDW_SIM_CONFIG", defineBuf, MAX_SIMCONFIG_LENGTH ) == qbhOK )
	{
		simConfig = defineBuf;
	}
	else
	{
		simConfig = getenv( "BDW_SIM_CONFIG" );
	}

	if ( simConfig == NULL )
	{
		esc_report_error( esc_fatal, "BDW_SIM_CONFIG needs to be set" );
	}

	return simConfig;
}

enum Gaussian_Blur_wrapper::Representation Gaussian_Blur_wrapper::lookupRepresentation( const char* instName )
{
	const char *simConfig = simConfigName();

	if ( simConfig == NULL )
		return BDWRep_None;

	Representation result;

	qbhProjectHandle hProj;
	qbhError err = qbhGetCurrentProject( &hProj );
	if ( err == qbhErrorNoProject )
	{
		err = qbhOpenProject( "project.tcl", &hProj );

		if ( err != qbhOK )
		{
			esc_report_error( esc_fatal, "could not open project file %s",
							  "project.tcl" );
			return BDWRep_None;
		}
	}

	int iresult = 0;
	err = qbhGetRepresentation(hProj, "Gaussian_Blur", simConfig, instName, &iresult );
	result = (Representation)iresult;

	if ( err == qbhOK )
		return result;

	// If this module isn't mentioned in the simConfig, assume it's behavioral.
	if ( err == qbhErrorNotFound ) {
		return BDWRep_Behavioral;
	} else if ( err == qbhErrorBadInstName ) {
		if (instName && *instName) {
			const char* leaf = strrchr( instName, '.' ) + 1;
			esc_report_error( esc_warning, "Instance names were specified for module '%s' in simConfig '%s', but they did not "
			                    "match the actal instance names in the RTL.  Try '%s' or '%s'. Simulating '%s' as BEH.\n",
								 "Gaussian_Blur", simConfig, instName, leaf,  "Gaussian_Blur" );
		}
		return BDWRep_Behavioral;
	}

    // If we couldn't get a license, then just exit.
    if ( err == qbhErrorNoLicense )
        exit(1);

	return BDWRep_None;
}

void Gaussian_Blur_wrapper::InitInstances(  )
{
    enum Gaussian_Blur_wrapper::Representation rep =
		Gaussian_Blur_wrapper::lookupRepresentation( name() );

	esc_log_wrapper_inst( "Gaussian_Blur" );
	esc_log_representation( "Gaussian_Blur", name(), rep );

	

	switch ( rep )
	{
		case BDWRep_Gates:
		    Gaussian_Blur_cosim0 = new Gaussian_Blur_cosim( "Gaussian_Blur" );

		    Gaussian_Blur_cosim0->i_clk(i_clk);
		    Gaussian_Blur_cosim0->i_rst(i_rst);
		    Gaussian_Blur_cosim0->i_rgb_busy(i_rgb.busy);
		    Gaussian_Blur_cosim0->i_rgb_vld(i_rgb.vld);
		    Gaussian_Blur_cosim0->i_rgb_data(i_rgb.data);
		    Gaussian_Blur_cosim0->o_result_busy(o_result.busy);
		    Gaussian_Blur_cosim0->o_result_vld(o_result.vld);
		    Gaussian_Blur_cosim0->o_result_data(o_result.data);

			break;
		case BDWRep_RTL_HDL:
		    Gaussian_Blur_cosim0 = new Gaussian_Blur_cosim( "Gaussian_Blur" );

		    Gaussian_Blur_cosim0->i_clk(i_clk);
		    Gaussian_Blur_cosim0->i_rst(i_rst);
		    Gaussian_Blur_cosim0->i_rgb_busy(i_rgb.busy);
		    Gaussian_Blur_cosim0->i_rgb_vld(i_rgb.vld);
		    Gaussian_Blur_cosim0->i_rgb_data(i_rgb.data);
		    Gaussian_Blur_cosim0->o_result_busy(o_result.busy);
		    Gaussian_Blur_cosim0->o_result_vld(o_result.vld);
		    Gaussian_Blur_cosim0->o_result_data(o_result.data);

			break;
        case BDWRep_CYC_HDL:
            if ( Gaussian_Blur_cycsim_factory_p )
                Gaussian_Blur_cycsim0 = Gaussian_Blur_cycsim_factory_p();
            else
            {
                esc_report_error( esc_fatal, "verilator_produced files not available for module Gaussian_Blur");
                return;
            }

            esc_report_error( esc_note, " using verilator model for module \"Gaussian_Blur\"");

		    Gaussian_Blur_cycsim0->i_clk(i_clk);
		    Gaussian_Blur_cycsim0->i_rst(i_rst);
		    Gaussian_Blur_cycsim0->i_rgb_busy(i_rgb.busy);
		    Gaussian_Blur_cycsim0->i_rgb_vld(i_rgb.vld);
		    Gaussian_Blur_cycsim0->i_rgb_data(i_rgb.data);
		    Gaussian_Blur_cycsim0->o_result_busy(o_result.busy);
		    Gaussian_Blur_cycsim0->o_result_vld(o_result.vld);
		    Gaussian_Blur_cycsim0->o_result_data(o_result.data);

			break;
#if defined(BDW_RTL) || defined(COWARE_RTL_Gaussian_Blur)
		case BDWRep_RTL_C:
		    Gaussian_Blur_rtl0 = new Gaussian_Blur_rtl( "Gaussian_Blur" );

		    Gaussian_Blur_rtl0->i_clk(i_clk);
		    Gaussian_Blur_rtl0->i_rst(i_rst);
		    Gaussian_Blur_rtl0->i_rgb_busy(i_rgb.busy);
		    Gaussian_Blur_rtl0->i_rgb_vld(i_rgb.vld);
		    Gaussian_Blur_rtl0->i_rgb_data(i_rgb.data);
		    Gaussian_Blur_rtl0->o_result_busy(o_result.busy);
		    Gaussian_Blur_rtl0->o_result_vld(o_result.vld);
		    Gaussian_Blur_rtl0->o_result_data(o_result.data);


			{
			const char *simConfig = Gaussian_Blur_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
#endif
		case BDWRep_Behavioral:
		    Gaussian_Blur0 = new Gaussian_Blur( "Gaussian_Blur" );

		    Gaussian_Blur0->i_clk(i_clk);
		    Gaussian_Blur0->i_rst(i_rst);
		    Gaussian_Blur0->i_rgb.busy(i_rgb.busy);
		    Gaussian_Blur0->i_rgb.vld(i_rgb.vld);
		    Gaussian_Blur0->i_rgb.data(i_rgb.data);
		    Gaussian_Blur0->o_result.busy(o_result.busy);
		    Gaussian_Blur0->o_result.vld(o_result.vld);
		    Gaussian_Blur0->o_result.data(o_result.data);


			{
			const char *simConfig = Gaussian_Blur_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
		case BDWRep_None:
		default:
			esc_report_error( esc_error, "No representation could be determined for simulating instance %s. Please make sure that you used the right name string in the module constructor",
							  name() );
			break;
	}
}

void Gaussian_Blur_wrapper::InitThreads()
{
	if ( !isBEH() )
	{
		
	}
}

void Gaussian_Blur_wrapper::start_of_simulation()
{

#include <Gaussian_Blur_trace.h>

    esc_multiple_writers_warning();
}

void Gaussian_Blur_wrapper::CloseTrace()
{
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
	esc_close_vcd_trace();
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		esc_close_fsdb_trace();
		if ( esc_trace_is_enabled( esc_trace_scv ) ) {
			esc_close_fsdb_scv_trace();
		}
	}
}

void Gaussian_Blur_wrapper::end_of_simulation()
{
	CloseTrace();
}



void Gaussian_Blur_wrapper::DeleteInstances()
{
    if (Gaussian_Blur0)
    {
        delete Gaussian_Blur0;
        Gaussian_Blur0 = 0;
    }
    if (Gaussian_Blur_cosim0)
    {
        delete Gaussian_Blur_cosim0;
        Gaussian_Blur_cosim0 = 0;
    }
    if (Gaussian_Blur_cycsim0)
    {
        delete Gaussian_Blur_cycsim0;
        Gaussian_Blur_cycsim0 = 0;
    }
#if defined(BDW_RTL) || defined(COWARE_RTL_Gaussian_Blur)
    if (Gaussian_Blur_rtl0)
    {
        delete Gaussian_Blur_rtl0;
        Gaussian_Blur_rtl0 = 0;
    }
#endif
}

// The following threads are used to connect RTL ports to the actual
// structured ports

const char * Gaussian_Blur_wrapper_r::simConfigName()
{
	static char defineBuf[MAX_SIMCONFIG_LENGTH];
	const char *simConfig = NULL;
	if ( qbhGetDefine( "BDW_SIM_CONFIG", defineBuf, MAX_SIMCONFIG_LENGTH ) == qbhOK )
	{
		simConfig = defineBuf;
	}
	else
	{
		simConfig = getenv( "BDW_SIM_CONFIG" );
	}

	if ( simConfig == NULL )
	{
		esc_report_error( esc_fatal, "BDW_SIM_CONFIG needs to be set" );
	}

	return simConfig;
}

enum Gaussian_Blur_wrapper_r::Representation Gaussian_Blur_wrapper_r::lookupRepresentation( const char* instName )
{
	const char *simConfig = simConfigName();

	if ( simConfig == NULL )
		return BDWRep_None;

	Representation result;

	qbhProjectHandle hProj;
	qbhError err = qbhGetCurrentProject( &hProj );
	if ( err == qbhErrorNoProject )
	{
		err = qbhOpenProject( "project.tcl", &hProj );

		if ( err != qbhOK )
		{
			esc_report_error( esc_fatal, "could not open project file %s",
							  "project.tcl" );
			return BDWRep_None;
		}
	}

	int iresult = 0;
	err = qbhGetRepresentation(hProj, "Gaussian_Blur", simConfig, instName, &iresult );
	result = (Representation)iresult;

	if ( err == qbhOK )
		return result;

	// If this module isn't mentioned in the simConfig, assume it's behavioral.
	if ( err == qbhErrorNotFound )
		return BDWRep_Behavioral;

    // If we couldn't get a license, then just exit.
    if ( err == qbhErrorNoLicense )
        exit(1);

	return BDWRep_None;
}

void Gaussian_Blur_wrapper_r::InitInstances()
{
    enum Gaussian_Blur_wrapper_r::Representation rep =
		Gaussian_Blur_wrapper_r::lookupRepresentation( name() );

	esc_log_wrapper_inst( "Gaussian_Blur" );
	esc_log_representation( "Gaussian_Blur", name(), rep );

	switch ( rep )
	{
		case BDWRep_Gates:
		    Gaussian_Blur_cosim0 = new Gaussian_Blur_cosim( "Gaussian_Blur" );

		    Gaussian_Blur_cosim0->i_clk(i_clk);
		    Gaussian_Blur_cosim0->i_rst(i_rst);
		    Gaussian_Blur_cosim0->i_rgb_busy(i_rgb_busy);
		    Gaussian_Blur_cosim0->i_rgb_vld(i_rgb_vld);
		    Gaussian_Blur_cosim0->i_rgb_data(i_rgb_data);
		    Gaussian_Blur_cosim0->o_result_busy(o_result_busy);
		    Gaussian_Blur_cosim0->o_result_vld(o_result_vld);
		    Gaussian_Blur_cosim0->o_result_data(o_result_data);

			break;
		case BDWRep_RTL_HDL:
		    Gaussian_Blur_cosim0 = new Gaussian_Blur_cosim( "Gaussian_Blur" );

		    Gaussian_Blur_cosim0->i_clk(i_clk);
		    Gaussian_Blur_cosim0->i_rst(i_rst);
		    Gaussian_Blur_cosim0->i_rgb_busy(i_rgb_busy);
		    Gaussian_Blur_cosim0->i_rgb_vld(i_rgb_vld);
		    Gaussian_Blur_cosim0->i_rgb_data(i_rgb_data);
		    Gaussian_Blur_cosim0->o_result_busy(o_result_busy);
		    Gaussian_Blur_cosim0->o_result_vld(o_result_vld);
		    Gaussian_Blur_cosim0->o_result_data(o_result_data);

			break;
        case BDWRep_CYC_HDL:
            if ( Gaussian_Blur_cycsim_factory_p )
                Gaussian_Blur_cycsim0 = Gaussian_Blur_cycsim_factory_p();
            else
            {
                esc_report_error( esc_fatal, "verilator_produced files not available for module Gaussian_Blur");
                return;
            }

            esc_report_error( esc_note, " using verilator model for module \"Gaussian_Blur\"");

		    Gaussian_Blur_cycsim0->i_clk(i_clk);
		    Gaussian_Blur_cycsim0->i_rst(i_rst);
		    Gaussian_Blur_cycsim0->i_rgb_busy(i_rgb_busy);
		    Gaussian_Blur_cycsim0->i_rgb_vld(i_rgb_vld);
		    Gaussian_Blur_cycsim0->i_rgb_data(i_rgb_data);
		    Gaussian_Blur_cycsim0->o_result_busy(o_result_busy);
		    Gaussian_Blur_cycsim0->o_result_vld(o_result_vld);
		    Gaussian_Blur_cycsim0->o_result_data(o_result_data);

			break;
#if defined(BDW_RTL) || defined(COWARE_RTL_Gaussian_Blur)
		case BDWRep_RTL_C:
		    Gaussian_Blur_rtl0 = new Gaussian_Blur_rtl( "Gaussian_Blur" );

		    Gaussian_Blur_rtl0->i_clk(i_clk);
		    Gaussian_Blur_rtl0->i_rst(i_rst);
		    Gaussian_Blur_rtl0->i_rgb_busy(i_rgb_busy);
		    Gaussian_Blur_rtl0->i_rgb_vld(i_rgb_vld);
		    Gaussian_Blur_rtl0->i_rgb_data(i_rgb_data);
		    Gaussian_Blur_rtl0->o_result_busy(o_result_busy);
		    Gaussian_Blur_rtl0->o_result_vld(o_result_vld);
		    Gaussian_Blur_rtl0->o_result_data(o_result_data);


			{
			const char *simConfig = Gaussian_Blur_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
#endif
		case BDWRep_Behavioral:
		    Gaussian_Blur0 = new Gaussian_Blur( "Gaussian_Blur" );

		    Gaussian_Blur0->i_clk(i_clk);
		    Gaussian_Blur0->i_rst(i_rst);
		    Gaussian_Blur0->i_rgb.busy(i_rgb_busy);
		    Gaussian_Blur0->i_rgb.vld(i_rgb_vld);
		    Gaussian_Blur0->i_rgb.data(i_rgb_data);
		    Gaussian_Blur0->o_result.busy(o_result_busy);
		    Gaussian_Blur0->o_result.vld(o_result_vld);
		    Gaussian_Blur0->o_result.data(o_result_data);


			{
			const char *simConfig = Gaussian_Blur_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
		case BDWRep_None:
		default:
			esc_report_error( esc_error, "No representation could be determined for simulating instance %s. Please make sure that you used the right name string in the module constructor",
							  name() );
			break;
	}
}

void Gaussian_Blur_wrapper_r::InitThreads()
{
	if ( isBEH() ) 
	{
		
	}
}

void Gaussian_Blur_wrapper_r::start_of_simulation()
{

#include <Gaussian_Blur_trace.h>

    esc_multiple_writers_warning();
}

void Gaussian_Blur_wrapper_r::CloseTrace()
{
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
	esc_close_vcd_trace();
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		esc_close_fsdb_trace();
		if ( esc_trace_is_enabled( esc_trace_scv ) ) {
			esc_close_fsdb_scv_trace();
		}
	}
}

void Gaussian_Blur_wrapper_r::end_of_simulation()
{
	CloseTrace();
}



void Gaussian_Blur_wrapper_r::DeleteInstances()
{
    if (Gaussian_Blur0)
    {
        delete Gaussian_Blur0;
        Gaussian_Blur0 = 0;
    }
    if (Gaussian_Blur_cosim0)
    {
        delete Gaussian_Blur_cosim0;
        Gaussian_Blur_cosim0 = 0;
    }
    if (Gaussian_Blur_cycsim0)
    {
        delete Gaussian_Blur_cycsim0;
        Gaussian_Blur_cycsim0 = 0;
    }
#if defined(BDW_RTL) || defined(COWARE_RTL_Gaussian_Blur)
    if (Gaussian_Blur_rtl0)
    {
        delete Gaussian_Blur_rtl0;
        Gaussian_Blur_rtl0 = 0;
    }
#endif
}

#if BDW_WRITEFSDB == 1

inline void esc_open_fsdb_trace( const char *file_name  )
{
	sc_trace_file *fsdb_file;
#if ( defined(NC_SYSTEMC) && defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102 ) || SYSTEMC_VERSION >= 20120701
    fsdbDumpfile(file_name);
    esc_set_trace_file( fsdb_file, esc_trace_fsdb );
# else

	// SystemC suffixes .fsdb to filenames automatically. Make sure
	// that doesn't get tacked onto a filename that already has the suffix.
	if ( strrchr( file_name, '.' ) != NULL )
	{
		char *trunc_file_name = new char[strlen(file_name)+1];
		strcpy( trunc_file_name, file_name );

		fsdb_file = new fsdb_trace_file( trunc_file_name );
		esc_set_trace_file( fsdb_file, esc_trace_fsdb );

		delete trunc_file_name;
	}
	else
	{
		fsdb_file = new fsdb_trace_file( file_name );
		esc_set_trace_file( fsdb_file, esc_trace_fsdb );
	}
#endif

//
// Novas's SystemC wrapper doesn't have a way to set the time unit as of SystemC 2.1v1.
//
//		((fsdb_trace_file*)fsdb_file)->sc_set_fsdb_time_unit( -12 );
}

inline void esc_close_fsdb_trace()
{
#if ! ((defined(NC_SYSTEMC) &&  defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102) || SYSTEMC_VERSION >= 20120701)
	fsdb_trace_file * fsdb_file =
		(fsdb_trace_file *)esc_trace_file( esc_trace_fsdb );

	if ( fsdb_file != NULL )
	{
		fsdb_file->CloseFile();
		delete fsdb_file;
		esc_set_trace_file( NULL, esc_trace_fsdb );
	}
#endif
}

#else

inline void esc_open_fsdb_trace( const char *file_name )
{
}

inline void esc_close_fsdb_trace()
{
}

#endif

#if BDW_USE_SCV && BDW_WRITEFSDB == 1
static scv_tr_db* local_fsdb_scv_db = 0;

inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
	// Start SCV logging to FSDB if there is not already a database setup.
    if (!esc_get_scv_tr_db() && esc_trace_is_enabled(esc_trace_scv) )
	{
		scv_startup();
		scv_tr_fsdb_init();

		char* scv_file_name = new char[strlen(file_name) + 1];
		strcpy( scv_file_name, file_name );
		char* fsdb_suffix = strstr( scv_file_name, ".fsdb" );
		if (fsdb_suffix)
			*fsdb_suffix = 0;
		local_fsdb_scv_db = new scv_tr_db(scv_file_name);

		delete [] scv_file_name;
		esc_set_scv_tr_db(local_fsdb_scv_db);
		scv_tr_db::set_default_db(local_fsdb_scv_db);
		local_fsdb_scv_db->set_recording(true);
	}
}

inline void esc_close_fsdb_scv_trace()
{
    if ( local_fsdb_scv_db && (local_fsdb_scv_db == esc_get_scv_tr_db() ) ) 
	{
		delete local_fsdb_scv_db;
		local_fsdb_scv_db = 0;
		esc_set_scv_tr_db(0);
	}
}
#else 
inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
}

inline void esc_close_fsdb_scv_trace()
{
}

#endif

class Gaussian_Blur_wrapper_fsdb_opener {
public:
	Gaussian_Blur_wrapper_fsdb_opener() {
		esc_set_open_fsdb_trace( esc_open_fsdb_trace );
		esc_set_open_fsdb_scv_trace( esc_open_fsdb_scv_trace );
	}
};

static Gaussian_Blur_wrapper_fsdb_opener
  Gaussian_Blur_wrapper_fsdb_opener_inst;

#else

// Visible to uses of the wrapper outside of the BDW environment.
// Only behavioral SystemC simulation is supported.


// Include the source for the behavioral model so it will be compiled.
#include	"../Gaussian_Blur.cpp"

#define		Gaussian_Blur_INTERNAL


#include	"Gaussian_Blur_wrap.h"

const char * Gaussian_Blur_wrapper::simConfigName()
{
  return "";
}

enum Gaussian_Blur_wrapper::Representation Gaussian_Blur_wrapper::lookupRepresentation( const char* instName )
{
  return BDWRep_Behavioral;
}

void Gaussian_Blur_wrapper::InitInstances( sc_core::sc_module_name n )
{
	Gaussian_Blur0 = new Gaussian_Blur( "Gaussian_Blur" );

	Gaussian_Blur0->i_clk(i_clk);
	Gaussian_Blur0->i_rst(i_rst);
	Gaussian_Blur0->i_rgb.busy(i_rgb.busy);
	Gaussian_Blur0->i_rgb.vld(i_rgb.vld);
	Gaussian_Blur0->i_rgb.data(i_rgb.data);
	Gaussian_Blur0->o_result.busy(o_result.busy);
	Gaussian_Blur0->o_result.vld(o_result.vld);
	Gaussian_Blur0->o_result.data(o_result.data);

}

void Gaussian_Blur_wrapper::InitThreads()
{
}

void Gaussian_Blur_wrapper::CloseTrace()
{
}

void Gaussian_Blur_wrapper::DeleteInstances()
{
    if (Gaussian_Blur0)
    {
        delete Gaussian_Blur0;
        Gaussian_Blur0 = 0;
    }
}

void Gaussian_Blur_wrapper::start_of_simulation()
{
}

void Gaussian_Blur_wrapper::end_of_simulation()
{
}



inline void esc_open_fsdb_trace( const char *file_name )
{
}

inline void esc_close_fsdb_trace()
{
}


inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
}

inline void esc_close_fsdb_scv_trace()
{
}

class Gaussian_Blur_wrapper_fsdb_opener {
public:
	Gaussian_Blur_wrapper_fsdb_opener() {
	}
};

static Gaussian_Blur_wrapper_fsdb_opener
  Gaussian_Blur_wrapper_fsdb_opener_inst;

#endif

#endif
