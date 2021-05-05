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


#include	"Gaussian_Blur_sc_wrap.h"
#include	"Gaussian_Blur_sc_foreign.h"

// The following threads are used to connect structured ports to the actual
// RTL ports

void Gaussian_Blur_wrapper::InitInstances(  )
{
	
            
    Gaussian_Blur0 = new Gaussian_Blur( "Gaussian_Blur" );

    Gaussian_Blur0->i_clk(i_clk);
    Gaussian_Blur0->i_rst(i_rst);
    Gaussian_Blur0->i_rgb_busy(i_rgb.busy);
    Gaussian_Blur0->i_rgb_vld(i_rgb.vld);
    Gaussian_Blur0->i_rgb_data(i_rgb.data);
    Gaussian_Blur0->o_result_busy(o_result.busy);
    Gaussian_Blur0->o_result_vld(o_result.vld);
    Gaussian_Blur0->o_result_data(o_result.data);

}

void Gaussian_Blur_wrapper::InitThreads()
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

