`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:33:13 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Lti3s4_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [3:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((9'B100000000 ^ 9'B000000011)>(9'B100000000 ^ {{5{in1[3]}}, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  ubH4TQg= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


