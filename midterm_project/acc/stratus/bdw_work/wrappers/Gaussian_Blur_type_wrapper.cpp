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
* This file contains the Gaussian_Blur_type_wrapper module
* for use in the verilog verification wrapper Gaussian_Blur_vlwrapper.v
* It creats an instance of the Gaussian_Blur module and has threads
* for converting the BEH ports to RTL level ports on the wrapper.
*
****************************************************************************/

#include "Gaussian_Blur_type_wrapper.h"


SC_MODULE_EXPORT(Gaussian_Blur_type_wrapper)

// The following threads are used to connect RTL ports to the actual
// structured ports

void Gaussian_Blur_type_wrapper::InitInstances()
{
    Gaussian_Blur0 = new Gaussian_Blur( "Gaussian_Blur" );

    Gaussian_Blur0->i_clk(i_clk);
    Gaussian_Blur0->i_rst(i_rst);
    Gaussian_Blur0->i_rgb.busy(i_rgb_busy);
    Gaussian_Blur0->i_rgb.vld(i_rgb_vld);
    Gaussian_Blur0->i_rgb.data(i_rgb_data);
    Gaussian_Blur0->o_result.busy(o_result_busy);
    Gaussian_Blur0->o_result.vld(o_result_vld);
    Gaussian_Blur0->o_result.data(o_result_data);

}

void Gaussian_Blur_type_wrapper::InitThreads()
{
    
}

void Gaussian_Blur_type_wrapper::DeleteInstances()
{
        delete Gaussian_Blur0;
        Gaussian_Blur0 = 0;
}

