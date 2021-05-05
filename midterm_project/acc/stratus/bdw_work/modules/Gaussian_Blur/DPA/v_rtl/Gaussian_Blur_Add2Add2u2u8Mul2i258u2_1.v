`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:33:51 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Add2Add2u2u8Mul2i258u2_1 (
	in3,
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [1:0] in3;
input [7:0] in2;
input [1:0] in1;
output [9:0] out1;
wire [9:0] asc001;
wire [8:0] asc003;

assign asc003 = 
	+(in2)
	+(in1);

wire [9:0] asc001_tmp_0;
assign asc001_tmp_0 = 
	+(10'B0100000010 * in3);
assign asc001 = asc001_tmp_0
	+(asc003);

assign out1 = asc001;
endmodule

/* CADENCE  uLfzTgA= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

