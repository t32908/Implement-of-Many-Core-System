`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:30:11 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_DECODE_16U_8_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [3:0] in1;
output [15:0] out1;
wire [15:0] asc001;

assign asc001 = 16'B0000000000000001 << in1;

assign out1 = asc001;
endmodule

/* CADENCE  urnwSgk= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


