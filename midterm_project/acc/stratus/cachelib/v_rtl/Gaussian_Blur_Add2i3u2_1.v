`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:33:50 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Add2i3u2_1 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [1:0] in1;
output [2:0] out1;
wire [2:0] asc001;

assign asc001 = 
	+(in1)
	+(3'B011);

assign out1 = asc001;
endmodule

/* CADENCE  urf5Tgk= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


