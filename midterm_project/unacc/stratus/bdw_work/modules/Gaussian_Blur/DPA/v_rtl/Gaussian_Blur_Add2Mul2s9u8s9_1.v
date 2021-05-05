`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:58:09 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Add2Mul2s9u8s9_1 (
	in3,
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [8:0] in3;
input [7:0] in2;
input [8:0] in1;
output [8:0] out1;
wire [8:0] asc001;

wire [8:0] asc001_tmp_0;
assign asc001_tmp_0 = 
	+(in3);
assign asc001 = asc001_tmp_0
	+(in1 * in2);

assign out1 = asc001;
endmodule

/* CADENCE  uLD5Qgs= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

