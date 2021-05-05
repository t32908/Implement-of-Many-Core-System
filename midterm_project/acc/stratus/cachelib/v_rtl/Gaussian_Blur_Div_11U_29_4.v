`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:33:03 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Div_11U_29_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [10:0] in1;
output [10:0] out1;
wire [10:0] asc001_0;
wire [2:0] in1_2;
wire [1:0] in1_3;
wire [2:0] in1_5,
	in1_6,
	in1_8;
wire [3:0] in1_9;
wire [2:0] in1_11;
wire [4:0] in1_12;
wire [2:0] in1_14;
wire [5:0] in1_15;
wire [2:0] in1_17;
wire [6:0] in1_18;
wire [2:0] in1_20;
wire [7:0] in1_21;
wire [2:0] in1_23;
wire [8:0] in1_24;
wire [2:0] in1_26;
wire [9:0] in1_27;
wire [10:0] in1_28;
wire [2:0] in1_29,
	in1_4_0,
	in1_4_1;
wire [3:0] in1_7_0,
	in1_7_1;
wire [4:0] in1_10_0,
	in1_10_1;
wire [5:0] in1_13_0,
	in1_13_1;
wire [6:0] in1_16_0,
	in1_16_1;
wire [7:0] in1_19_0,
	in1_19_1;
wire [8:0] in1_22_0,
	in1_22_1;
wire [9:0] in1_25_0,
	in1_25_1;

assign asc001_0[10] = 1'B0;

wire [2:0] in1_2_tmp_0;
assign in1_2_tmp_0 = 
	+(in1[10:9]);
assign in1_2 = in1_2_tmp_0
	-(3'B011);

assign asc001_0[9] = ~in1_2[2];

reg [1:0] in1_3_tmp_1;
assign in1_3 = in1_3_tmp_1;
always @ (in1_2[2] or in1_2[1:0] or in1[10:9]) begin
	case (in1_2[2])
		1'B0 : in1_3_tmp_1 = in1_2[1:0] ;
		default : in1_3_tmp_1 = in1[10:9] ;
	endcase
end

assign in1_4_0 = {in1_3,in1[8]};

assign in1_4_1 = {in1_3,in1[8]};

wire [2:0] in1_5_tmp_2;
assign in1_5_tmp_2 = 
	+(in1_4_1);
assign in1_5 = in1_5_tmp_2
	-(3'B011);

assign asc001_0[8] = ~in1_5[2];

reg [2:0] in1_6_tmp_3;
assign in1_6 = in1_6_tmp_3;
always @ (in1_5[2] or in1_5 or in1_4_0) begin
	case (in1_5[2])
		1'B0 : in1_6_tmp_3 = in1_5 ;
		default : in1_6_tmp_3 = in1_4_0 ;
	endcase
end

assign in1_7_0 = {in1_6,in1[7]};

assign in1_7_1 = {in1_6,in1[7]};

wire [2:0] in1_8_tmp_4;
assign in1_8_tmp_4 = 
	+(in1_7_1[2:0]);
assign in1_8 = in1_8_tmp_4
	-(3'B011);

assign asc001_0[7] = ~in1_8[2];

reg [3:0] in1_9_tmp_5;
assign in1_9 = in1_9_tmp_5;
always @ (in1_8[2] or in1_8 or in1_7_0) begin
	case (in1_8[2])
		1'B0 : in1_9_tmp_5 = in1_8 ;
		default : in1_9_tmp_5 = in1_7_0 ;
	endcase
end

assign in1_10_0 = {in1_9,in1[6]};

assign in1_10_1 = {in1_9,in1[6]};

wire [2:0] in1_11_tmp_6;
assign in1_11_tmp_6 = 
	+(in1_10_1[2:0]);
assign in1_11 = in1_11_tmp_6
	-(3'B011);

assign asc001_0[6] = ~in1_11[2];

reg [4:0] in1_12_tmp_7;
assign in1_12 = in1_12_tmp_7;
always @ (in1_11[2] or in1_11 or in1_10_0) begin
	case (in1_11[2])
		1'B0 : in1_12_tmp_7 = in1_11 ;
		default : in1_12_tmp_7 = in1_10_0 ;
	endcase
end

assign in1_13_0 = {in1_12,in1[5]};

assign in1_13_1 = {in1_12,in1[5]};

wire [2:0] in1_14_tmp_8;
assign in1_14_tmp_8 = 
	+(in1_13_1[2:0]);
assign in1_14 = in1_14_tmp_8
	-(3'B011);

assign asc001_0[5] = ~in1_14[2];

reg [5:0] in1_15_tmp_9;
assign in1_15 = in1_15_tmp_9;
always @ (in1_14[2] or in1_14 or in1_13_0) begin
	case (in1_14[2])
		1'B0 : in1_15_tmp_9 = in1_14 ;
		default : in1_15_tmp_9 = in1_13_0 ;
	endcase
end

assign in1_16_0 = {in1_15,in1[4]};

assign in1_16_1 = {in1_15,in1[4]};

wire [2:0] in1_17_tmp_10;
assign in1_17_tmp_10 = 
	+(in1_16_1[2:0]);
assign in1_17 = in1_17_tmp_10
	-(3'B011);

assign asc001_0[4] = ~in1_17[2];

reg [6:0] in1_18_tmp_11;
assign in1_18 = in1_18_tmp_11;
always @ (in1_17[2] or in1_17 or in1_16_0) begin
	case (in1_17[2])
		1'B0 : in1_18_tmp_11 = in1_17 ;
		default : in1_18_tmp_11 = in1_16_0 ;
	endcase
end

assign in1_19_0 = {in1_18,in1[3]};

assign in1_19_1 = {in1_18,in1[3]};

wire [2:0] in1_20_tmp_12;
assign in1_20_tmp_12 = 
	+(in1_19_1[2:0]);
assign in1_20 = in1_20_tmp_12
	-(3'B011);

assign asc001_0[3] = ~in1_20[2];

reg [7:0] in1_21_tmp_13;
assign in1_21 = in1_21_tmp_13;
always @ (in1_20[2] or in1_20 or in1_19_0) begin
	case (in1_20[2])
		1'B0 : in1_21_tmp_13 = in1_20 ;
		default : in1_21_tmp_13 = in1_19_0 ;
	endcase
end

assign in1_22_0 = {in1_21,in1[2]};

assign in1_22_1 = {in1_21,in1[2]};

wire [2:0] in1_23_tmp_14;
assign in1_23_tmp_14 = 
	+(in1_22_1[2:0]);
assign in1_23 = in1_23_tmp_14
	-(3'B011);

assign asc001_0[2] = ~in1_23[2];

reg [8:0] in1_24_tmp_15;
assign in1_24 = in1_24_tmp_15;
always @ (in1_23[2] or in1_23 or in1_22_0) begin
	case (in1_23[2])
		1'B0 : in1_24_tmp_15 = in1_23 ;
		default : in1_24_tmp_15 = in1_22_0 ;
	endcase
end

assign in1_25_0 = {in1_24,in1[1]};

assign in1_25_1 = {in1_24,in1[1]};

wire [2:0] in1_26_tmp_16;
assign in1_26_tmp_16 = 
	+(in1_25_1[2:0]);
assign in1_26 = in1_26_tmp_16
	-(3'B011);

assign asc001_0[1] = ~in1_26[2];

reg [9:0] in1_27_tmp_17;
assign in1_27 = in1_27_tmp_17;
always @ (in1_26[2] or in1_26 or in1_25_0) begin
	case (in1_26[2])
		1'B0 : in1_27_tmp_17 = in1_26 ;
		default : in1_27_tmp_17 = in1_25_0 ;
	endcase
end

assign in1_28 = {in1_27,in1[0]};

wire [2:0] in1_29_tmp_18;
assign in1_29_tmp_18 = 
	+(in1_28[2:0]);
assign in1_29 = in1_29_tmp_18
	-(3'B011);

assign asc001_0[0] = ~in1_29[2];

assign out1 = asc001_0;
endmodule

/* CADENCE  v7n2TgjZ : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


