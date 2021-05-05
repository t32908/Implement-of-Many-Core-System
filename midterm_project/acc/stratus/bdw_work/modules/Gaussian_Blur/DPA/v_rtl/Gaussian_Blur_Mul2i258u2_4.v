`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:33:12 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Mul2i258u2_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [1:0] in1;
output [9:0] out1;
wire [9:0] asc001;

assign asc001 = 
	+(10'B0100000010 * in1);

assign out1 = asc001;
endmodule

/* CADENCE  urnySA4= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

