`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:27:13 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_NotEQ_32Sx1S_1U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [31:0] in2;
input  in1;
output  out1;
wire  asc001,
	asc002;

assign asc002 = ({{36{in1}}, in1}=={{5{in2[31]}}, in2});

assign asc001 = 
	((~asc002));

assign out1 = asc001;
endmodule

/* CADENCE  ubf4TQ8= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


