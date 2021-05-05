`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:28:03 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Div_11Ux2U_11U_1 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [10:0] in2;
input [1:0] in1;
output [10:0] out1;
wire [10:0] asc001_0;
wire [2:0] in2_1;
wire [0:0] in2_2;
wire [2:0] in2_4;
wire [1:0] in2_5;
wire [2:0] in2_7,
	in2_8,
	in2_10;
wire [3:0] in2_11;
wire [2:0] in2_13;
wire [4:0] in2_14;
wire [2:0] in2_16;
wire [5:0] in2_17;
wire [2:0] in2_19;
wire [6:0] in2_20;
wire [2:0] in2_22;
wire [7:0] in2_23;
wire [2:0] in2_25;
wire [8:0] in2_26;
wire [2:0] in2_28;
wire [9:0] in2_29;
wire [10:0] in2_30;
wire [2:0] in2_31;
wire [1:0] in2_3_0,
	in2_3_1;
wire [2:0] in2_6_0,
	in2_6_1;
wire [3:0] in2_9_0,
	in2_9_1;
wire [4:0] in2_12_0,
	in2_12_1;
wire [5:0] in2_15_0,
	in2_15_1;
wire [6:0] in2_18_0,
	in2_18_1;
wire [7:0] in2_21_0,
	in2_21_1;
wire [8:0] in2_24_0,
	in2_24_1;
wire [9:0] in2_27_0,
	in2_27_1;

wire [2:0] in2_1_tmp_0;
assign in2_1_tmp_0 = 
	+(in2[10]);
assign in2_1 = in2_1_tmp_0
	-(in1);

assign asc001_0[10] = ~in2_1[2];

reg [0:0] in2_2_tmp_1;
assign in2_2 = in2_2_tmp_1;
always @ (in2_1[2] or in2_1[0] or in2[10]) begin
	case (in2_1[2])
		1'B0 : in2_2_tmp_1 = in2_1[0] ;
		default : in2_2_tmp_1 = in2[10] ;
	endcase
end

assign in2_3_0 = {in2_2,in2[9]};

assign in2_3_1 = {in2_2,in2[9]};

wire [2:0] in2_4_tmp_2;
assign in2_4_tmp_2 = 
	+(in2_3_1);
assign in2_4 = in2_4_tmp_2
	-(in1);

assign asc001_0[9] = ~in2_4[2];

reg [1:0] in2_5_tmp_3;
assign in2_5 = in2_5_tmp_3;
always @ (in2_4[2] or in2_4[1:0] or in2_3_0) begin
	case (in2_4[2])
		1'B0 : in2_5_tmp_3 = in2_4[1:0] ;
		default : in2_5_tmp_3 = in2_3_0 ;
	endcase
end

assign in2_6_0 = {in2_5,in2[8]};

assign in2_6_1 = {in2_5,in2[8]};

wire [2:0] in2_7_tmp_4;
assign in2_7_tmp_4 = 
	+(in2_6_1);
assign in2_7 = in2_7_tmp_4
	-(in1);

assign asc001_0[8] = ~in2_7[2];

reg [2:0] in2_8_tmp_5;
assign in2_8 = in2_8_tmp_5;
always @ (in2_7[2] or in2_7 or in2_6_0) begin
	case (in2_7[2])
		1'B0 : in2_8_tmp_5 = in2_7 ;
		default : in2_8_tmp_5 = in2_6_0 ;
	endcase
end

assign in2_9_0 = {in2_8,in2[7]};

assign in2_9_1 = {in2_8,in2[7]};

wire [2:0] in2_10_tmp_6;
assign in2_10_tmp_6 = 
	+(in2_9_1[2:0]);
assign in2_10 = in2_10_tmp_6
	-(in1);

assign asc001_0[7] = ~in2_10[2];

reg [3:0] in2_11_tmp_7;
assign in2_11 = in2_11_tmp_7;
always @ (in2_10[2] or in2_10 or in2_9_0) begin
	case (in2_10[2])
		1'B0 : in2_11_tmp_7 = in2_10 ;
		default : in2_11_tmp_7 = in2_9_0 ;
	endcase
end

assign in2_12_0 = {in2_11,in2[6]};

assign in2_12_1 = {in2_11,in2[6]};

wire [2:0] in2_13_tmp_8;
assign in2_13_tmp_8 = 
	+(in2_12_1[2:0]);
assign in2_13 = in2_13_tmp_8
	-(in1);

assign asc001_0[6] = ~in2_13[2];

reg [4:0] in2_14_tmp_9;
assign in2_14 = in2_14_tmp_9;
always @ (in2_13[2] or in2_13 or in2_12_0) begin
	case (in2_13[2])
		1'B0 : in2_14_tmp_9 = in2_13 ;
		default : in2_14_tmp_9 = in2_12_0 ;
	endcase
end

assign in2_15_0 = {in2_14,in2[5]};

assign in2_15_1 = {in2_14,in2[5]};

wire [2:0] in2_16_tmp_10;
assign in2_16_tmp_10 = 
	+(in2_15_1[2:0]);
assign in2_16 = in2_16_tmp_10
	-(in1);

assign asc001_0[5] = ~in2_16[2];

reg [5:0] in2_17_tmp_11;
assign in2_17 = in2_17_tmp_11;
always @ (in2_16[2] or in2_16 or in2_15_0) begin
	case (in2_16[2])
		1'B0 : in2_17_tmp_11 = in2_16 ;
		default : in2_17_tmp_11 = in2_15_0 ;
	endcase
end

assign in2_18_0 = {in2_17,in2[4]};

assign in2_18_1 = {in2_17,in2[4]};

wire [2:0] in2_19_tmp_12;
assign in2_19_tmp_12 = 
	+(in2_18_1[2:0]);
assign in2_19 = in2_19_tmp_12
	-(in1);

assign asc001_0[4] = ~in2_19[2];

reg [6:0] in2_20_tmp_13;
assign in2_20 = in2_20_tmp_13;
always @ (in2_19[2] or in2_19 or in2_18_0) begin
	case (in2_19[2])
		1'B0 : in2_20_tmp_13 = in2_19 ;
		default : in2_20_tmp_13 = in2_18_0 ;
	endcase
end

assign in2_21_0 = {in2_20,in2[3]};

assign in2_21_1 = {in2_20,in2[3]};

wire [2:0] in2_22_tmp_14;
assign in2_22_tmp_14 = 
	+(in2_21_1[2:0]);
assign in2_22 = in2_22_tmp_14
	-(in1);

assign asc001_0[3] = ~in2_22[2];

reg [7:0] in2_23_tmp_15;
assign in2_23 = in2_23_tmp_15;
always @ (in2_22[2] or in2_22 or in2_21_0) begin
	case (in2_22[2])
		1'B0 : in2_23_tmp_15 = in2_22 ;
		default : in2_23_tmp_15 = in2_21_0 ;
	endcase
end

assign in2_24_0 = {in2_23,in2[2]};

assign in2_24_1 = {in2_23,in2[2]};

wire [2:0] in2_25_tmp_16;
assign in2_25_tmp_16 = 
	+(in2_24_1[2:0]);
assign in2_25 = in2_25_tmp_16
	-(in1);

assign asc001_0[2] = ~in2_25[2];

reg [8:0] in2_26_tmp_17;
assign in2_26 = in2_26_tmp_17;
always @ (in2_25[2] or in2_25 or in2_24_0) begin
	case (in2_25[2])
		1'B0 : in2_26_tmp_17 = in2_25 ;
		default : in2_26_tmp_17 = in2_24_0 ;
	endcase
end

assign in2_27_0 = {in2_26,in2[1]};

assign in2_27_1 = {in2_26,in2[1]};

wire [2:0] in2_28_tmp_18;
assign in2_28_tmp_18 = 
	+(in2_27_1[2:0]);
assign in2_28 = in2_28_tmp_18
	-(in1);

assign asc001_0[1] = ~in2_28[2];

reg [9:0] in2_29_tmp_19;
assign in2_29 = in2_29_tmp_19;
always @ (in2_28[2] or in2_28 or in2_27_0) begin
	case (in2_28[2])
		1'B0 : in2_29_tmp_19 = in2_28 ;
		default : in2_29_tmp_19 = in2_27_0 ;
	endcase
end

assign in2_30 = {in2_29,in2[0]};

wire [2:0] in2_31_tmp_20;
assign in2_31_tmp_20 = 
	+(in2_30[2:0]);
assign in2_31 = in2_31_tmp_20
	-(in1);

assign asc001_0[0] = ~in2_31[2];

assign out1 = asc001_0;
endmodule

/* CADENCE  vrTySQnW : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

