`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:27:33 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_LessThan_4Sx3S_1U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [3:0] in2;
input [2:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((9'B100000000 ^ {{6{in1[2]}}, in1})>(9'B100000000 ^ {{5{in2[3]}}, in2}));

assign out1 = asc001;
endmodule

/* CADENCE  ubb0Tg4= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

