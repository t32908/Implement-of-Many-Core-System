`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:53:36 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_DECODE_2U_3_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input  in1;
output [1:0] out1;
wire [1:0] asc001;

assign asc001 = 2'B01 << in1;

assign out1 = asc001;
endmodule

/* CADENCE  urbzTQw= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


