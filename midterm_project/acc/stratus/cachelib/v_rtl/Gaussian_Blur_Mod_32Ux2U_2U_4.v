`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:27:22 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Mod_32Ux2U_2U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [31:0] in2;
input [1:0] in1;
output [1:0] out1;
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
wire [2:0] in2_31;
wire [10:0] in2_32;
wire [2:0] in2_34;
wire [11:0] in2_35;
wire [2:0] in2_37;
wire [12:0] in2_38;
wire [2:0] in2_40;
wire [13:0] in2_41;
wire [2:0] in2_43;
wire [14:0] in2_44;
wire [2:0] in2_46;
wire [15:0] in2_47;
wire [2:0] in2_49;
wire [16:0] in2_50;
wire [2:0] in2_52;
wire [17:0] in2_53;
wire [2:0] in2_55;
wire [18:0] in2_56;
wire [2:0] in2_58;
wire [19:0] in2_59;
wire [2:0] in2_61;
wire [20:0] in2_62;
wire [2:0] in2_64;
wire [21:0] in2_65;
wire [2:0] in2_67;
wire [22:0] in2_68;
wire [2:0] in2_70;
wire [23:0] in2_71;
wire [2:0] in2_73;
wire [24:0] in2_74;
wire [2:0] in2_76;
wire [25:0] in2_77;
wire [2:0] in2_79;
wire [26:0] in2_80;
wire [2:0] in2_82;
wire [27:0] in2_83;
wire [2:0] in2_85;
wire [28:0] in2_86;
wire [2:0] in2_88;
wire [29:0] in2_89;
wire [2:0] in2_91;
wire [30:0] in2_92;
wire [2:0] in2_94;
wire [31:0] in2_95;
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
wire [10:0] in2_30_0,
	in2_30_1;
wire [11:0] in2_33_0,
	in2_33_1;
wire [12:0] in2_36_0,
	in2_36_1;
wire [13:0] in2_39_0,
	in2_39_1;
wire [14:0] in2_42_0,
	in2_42_1;
wire [15:0] in2_45_0,
	in2_45_1;
wire [16:0] in2_48_0,
	in2_48_1;
wire [17:0] in2_51_0,
	in2_51_1;
wire [18:0] in2_54_0,
	in2_54_1;
wire [19:0] in2_57_0,
	in2_57_1;
wire [20:0] in2_60_0,
	in2_60_1;
wire [21:0] in2_63_0,
	in2_63_1;
wire [22:0] in2_66_0,
	in2_66_1;
wire [23:0] in2_69_0,
	in2_69_1;
wire [24:0] in2_72_0,
	in2_72_1;
wire [25:0] in2_75_0,
	in2_75_1;
wire [26:0] in2_78_0,
	in2_78_1;
wire [27:0] in2_81_0,
	in2_81_1;
wire [28:0] in2_84_0,
	in2_84_1;
wire [29:0] in2_87_0,
	in2_87_1;
wire [30:0] in2_90_0,
	in2_90_1;
wire [31:0] in2_93_0,
	in2_93_1;

wire [2:0] in2_1_tmp_0;
assign in2_1_tmp_0 = 
	+(in2[31]);
assign in2_1 = in2_1_tmp_0
	-(in1);

reg [0:0] in2_2_tmp_1;
assign in2_2 = in2_2_tmp_1;
always @ (in2_1[2] or in2_1[0] or in2[31]) begin
	case (in2_1[2])
		1'B0 : in2_2_tmp_1 = in2_1[0] ;
		default : in2_2_tmp_1 = in2[31] ;
	endcase
end

assign in2_3_0 = {in2_2,in2[30]};

assign in2_3_1 = {in2_2,in2[30]};

wire [2:0] in2_4_tmp_2;
assign in2_4_tmp_2 = 
	+(in2_3_1);
assign in2_4 = in2_4_tmp_2
	-(in1);

reg [1:0] in2_5_tmp_3;
assign in2_5 = in2_5_tmp_3;
always @ (in2_4[2] or in2_4[1:0] or in2_3_0) begin
	case (in2_4[2])
		1'B0 : in2_5_tmp_3 = in2_4[1:0] ;
		default : in2_5_tmp_3 = in2_3_0 ;
	endcase
end

assign in2_6_0 = {in2_5,in2[29]};

assign in2_6_1 = {in2_5,in2[29]};

wire [2:0] in2_7_tmp_4;
assign in2_7_tmp_4 = 
	+(in2_6_1);
assign in2_7 = in2_7_tmp_4
	-(in1);

reg [2:0] in2_8_tmp_5;
assign in2_8 = in2_8_tmp_5;
always @ (in2_7[2] or in2_7 or in2_6_0) begin
	case (in2_7[2])
		1'B0 : in2_8_tmp_5 = in2_7 ;
		default : in2_8_tmp_5 = in2_6_0 ;
	endcase
end

assign in2_9_0 = {in2_8,in2[28]};

assign in2_9_1 = {in2_8,in2[28]};

wire [2:0] in2_10_tmp_6;
assign in2_10_tmp_6 = 
	+(in2_9_1[2:0]);
assign in2_10 = in2_10_tmp_6
	-(in1);

reg [3:0] in2_11_tmp_7;
assign in2_11 = in2_11_tmp_7;
always @ (in2_10[2] or in2_10 or in2_9_0) begin
	case (in2_10[2])
		1'B0 : in2_11_tmp_7 = in2_10 ;
		default : in2_11_tmp_7 = in2_9_0 ;
	endcase
end

assign in2_12_0 = {in2_11,in2[27]};

assign in2_12_1 = {in2_11,in2[27]};

wire [2:0] in2_13_tmp_8;
assign in2_13_tmp_8 = 
	+(in2_12_1[2:0]);
assign in2_13 = in2_13_tmp_8
	-(in1);

reg [4:0] in2_14_tmp_9;
assign in2_14 = in2_14_tmp_9;
always @ (in2_13[2] or in2_13 or in2_12_0) begin
	case (in2_13[2])
		1'B0 : in2_14_tmp_9 = in2_13 ;
		default : in2_14_tmp_9 = in2_12_0 ;
	endcase
end

assign in2_15_0 = {in2_14,in2[26]};

assign in2_15_1 = {in2_14,in2[26]};

wire [2:0] in2_16_tmp_10;
assign in2_16_tmp_10 = 
	+(in2_15_1[2:0]);
assign in2_16 = in2_16_tmp_10
	-(in1);

reg [5:0] in2_17_tmp_11;
assign in2_17 = in2_17_tmp_11;
always @ (in2_16[2] or in2_16 or in2_15_0) begin
	case (in2_16[2])
		1'B0 : in2_17_tmp_11 = in2_16 ;
		default : in2_17_tmp_11 = in2_15_0 ;
	endcase
end

assign in2_18_0 = {in2_17,in2[25]};

assign in2_18_1 = {in2_17,in2[25]};

wire [2:0] in2_19_tmp_12;
assign in2_19_tmp_12 = 
	+(in2_18_1[2:0]);
assign in2_19 = in2_19_tmp_12
	-(in1);

reg [6:0] in2_20_tmp_13;
assign in2_20 = in2_20_tmp_13;
always @ (in2_19[2] or in2_19 or in2_18_0) begin
	case (in2_19[2])
		1'B0 : in2_20_tmp_13 = in2_19 ;
		default : in2_20_tmp_13 = in2_18_0 ;
	endcase
end

assign in2_21_0 = {in2_20,in2[24]};

assign in2_21_1 = {in2_20,in2[24]};

wire [2:0] in2_22_tmp_14;
assign in2_22_tmp_14 = 
	+(in2_21_1[2:0]);
assign in2_22 = in2_22_tmp_14
	-(in1);

reg [7:0] in2_23_tmp_15;
assign in2_23 = in2_23_tmp_15;
always @ (in2_22[2] or in2_22 or in2_21_0) begin
	case (in2_22[2])
		1'B0 : in2_23_tmp_15 = in2_22 ;
		default : in2_23_tmp_15 = in2_21_0 ;
	endcase
end

assign in2_24_0 = {in2_23,in2[23]};

assign in2_24_1 = {in2_23,in2[23]};

wire [2:0] in2_25_tmp_16;
assign in2_25_tmp_16 = 
	+(in2_24_1[2:0]);
assign in2_25 = in2_25_tmp_16
	-(in1);

reg [8:0] in2_26_tmp_17;
assign in2_26 = in2_26_tmp_17;
always @ (in2_25[2] or in2_25 or in2_24_0) begin
	case (in2_25[2])
		1'B0 : in2_26_tmp_17 = in2_25 ;
		default : in2_26_tmp_17 = in2_24_0 ;
	endcase
end

assign in2_27_0 = {in2_26,in2[22]};

assign in2_27_1 = {in2_26,in2[22]};

wire [2:0] in2_28_tmp_18;
assign in2_28_tmp_18 = 
	+(in2_27_1[2:0]);
assign in2_28 = in2_28_tmp_18
	-(in1);

reg [9:0] in2_29_tmp_19;
assign in2_29 = in2_29_tmp_19;
always @ (in2_28[2] or in2_28 or in2_27_0) begin
	case (in2_28[2])
		1'B0 : in2_29_tmp_19 = in2_28 ;
		default : in2_29_tmp_19 = in2_27_0 ;
	endcase
end

assign in2_30_0 = {in2_29,in2[21]};

assign in2_30_1 = {in2_29,in2[21]};

wire [2:0] in2_31_tmp_20;
assign in2_31_tmp_20 = 
	+(in2_30_1[2:0]);
assign in2_31 = in2_31_tmp_20
	-(in1);

reg [10:0] in2_32_tmp_21;
assign in2_32 = in2_32_tmp_21;
always @ (in2_31[2] or in2_31 or in2_30_0) begin
	case (in2_31[2])
		1'B0 : in2_32_tmp_21 = in2_31 ;
		default : in2_32_tmp_21 = in2_30_0 ;
	endcase
end

assign in2_33_0 = {in2_32,in2[20]};

assign in2_33_1 = {in2_32,in2[20]};

wire [2:0] in2_34_tmp_22;
assign in2_34_tmp_22 = 
	+(in2_33_1[2:0]);
assign in2_34 = in2_34_tmp_22
	-(in1);

reg [11:0] in2_35_tmp_23;
assign in2_35 = in2_35_tmp_23;
always @ (in2_34[2] or in2_34 or in2_33_0) begin
	case (in2_34[2])
		1'B0 : in2_35_tmp_23 = in2_34 ;
		default : in2_35_tmp_23 = in2_33_0 ;
	endcase
end

assign in2_36_0 = {in2_35,in2[19]};

assign in2_36_1 = {in2_35,in2[19]};

wire [2:0] in2_37_tmp_24;
assign in2_37_tmp_24 = 
	+(in2_36_1[2:0]);
assign in2_37 = in2_37_tmp_24
	-(in1);

reg [12:0] in2_38_tmp_25;
assign in2_38 = in2_38_tmp_25;
always @ (in2_37[2] or in2_37 or in2_36_0) begin
	case (in2_37[2])
		1'B0 : in2_38_tmp_25 = in2_37 ;
		default : in2_38_tmp_25 = in2_36_0 ;
	endcase
end

assign in2_39_0 = {in2_38,in2[18]};

assign in2_39_1 = {in2_38,in2[18]};

wire [2:0] in2_40_tmp_26;
assign in2_40_tmp_26 = 
	+(in2_39_1[2:0]);
assign in2_40 = in2_40_tmp_26
	-(in1);

reg [13:0] in2_41_tmp_27;
assign in2_41 = in2_41_tmp_27;
always @ (in2_40[2] or in2_40 or in2_39_0) begin
	case (in2_40[2])
		1'B0 : in2_41_tmp_27 = in2_40 ;
		default : in2_41_tmp_27 = in2_39_0 ;
	endcase
end

assign in2_42_0 = {in2_41,in2[17]};

assign in2_42_1 = {in2_41,in2[17]};

wire [2:0] in2_43_tmp_28;
assign in2_43_tmp_28 = 
	+(in2_42_1[2:0]);
assign in2_43 = in2_43_tmp_28
	-(in1);

reg [14:0] in2_44_tmp_29;
assign in2_44 = in2_44_tmp_29;
always @ (in2_43[2] or in2_43 or in2_42_0) begin
	case (in2_43[2])
		1'B0 : in2_44_tmp_29 = in2_43 ;
		default : in2_44_tmp_29 = in2_42_0 ;
	endcase
end

assign in2_45_0 = {in2_44,in2[16]};

assign in2_45_1 = {in2_44,in2[16]};

wire [2:0] in2_46_tmp_30;
assign in2_46_tmp_30 = 
	+(in2_45_1[2:0]);
assign in2_46 = in2_46_tmp_30
	-(in1);

reg [15:0] in2_47_tmp_31;
assign in2_47 = in2_47_tmp_31;
always @ (in2_46[2] or in2_46 or in2_45_0) begin
	case (in2_46[2])
		1'B0 : in2_47_tmp_31 = in2_46 ;
		default : in2_47_tmp_31 = in2_45_0 ;
	endcase
end

assign in2_48_0 = {in2_47,in2[15]};

assign in2_48_1 = {in2_47,in2[15]};

wire [2:0] in2_49_tmp_32;
assign in2_49_tmp_32 = 
	+(in2_48_1[2:0]);
assign in2_49 = in2_49_tmp_32
	-(in1);

reg [16:0] in2_50_tmp_33;
assign in2_50 = in2_50_tmp_33;
always @ (in2_49[2] or in2_49 or in2_48_0) begin
	case (in2_49[2])
		1'B0 : in2_50_tmp_33 = in2_49 ;
		default : in2_50_tmp_33 = in2_48_0 ;
	endcase
end

assign in2_51_0 = {in2_50,in2[14]};

assign in2_51_1 = {in2_50,in2[14]};

wire [2:0] in2_52_tmp_34;
assign in2_52_tmp_34 = 
	+(in2_51_1[2:0]);
assign in2_52 = in2_52_tmp_34
	-(in1);

reg [17:0] in2_53_tmp_35;
assign in2_53 = in2_53_tmp_35;
always @ (in2_52[2] or in2_52 or in2_51_0) begin
	case (in2_52[2])
		1'B0 : in2_53_tmp_35 = in2_52 ;
		default : in2_53_tmp_35 = in2_51_0 ;
	endcase
end

assign in2_54_0 = {in2_53,in2[13]};

assign in2_54_1 = {in2_53,in2[13]};

wire [2:0] in2_55_tmp_36;
assign in2_55_tmp_36 = 
	+(in2_54_1[2:0]);
assign in2_55 = in2_55_tmp_36
	-(in1);

reg [18:0] in2_56_tmp_37;
assign in2_56 = in2_56_tmp_37;
always @ (in2_55[2] or in2_55 or in2_54_0) begin
	case (in2_55[2])
		1'B0 : in2_56_tmp_37 = in2_55 ;
		default : in2_56_tmp_37 = in2_54_0 ;
	endcase
end

assign in2_57_0 = {in2_56,in2[12]};

assign in2_57_1 = {in2_56,in2[12]};

wire [2:0] in2_58_tmp_38;
assign in2_58_tmp_38 = 
	+(in2_57_1[2:0]);
assign in2_58 = in2_58_tmp_38
	-(in1);

reg [19:0] in2_59_tmp_39;
assign in2_59 = in2_59_tmp_39;
always @ (in2_58[2] or in2_58 or in2_57_0) begin
	case (in2_58[2])
		1'B0 : in2_59_tmp_39 = in2_58 ;
		default : in2_59_tmp_39 = in2_57_0 ;
	endcase
end

assign in2_60_0 = {in2_59,in2[11]};

assign in2_60_1 = {in2_59,in2[11]};

wire [2:0] in2_61_tmp_40;
assign in2_61_tmp_40 = 
	+(in2_60_1[2:0]);
assign in2_61 = in2_61_tmp_40
	-(in1);

reg [20:0] in2_62_tmp_41;
assign in2_62 = in2_62_tmp_41;
always @ (in2_61[2] or in2_61 or in2_60_0) begin
	case (in2_61[2])
		1'B0 : in2_62_tmp_41 = in2_61 ;
		default : in2_62_tmp_41 = in2_60_0 ;
	endcase
end

assign in2_63_0 = {in2_62,in2[10]};

assign in2_63_1 = {in2_62,in2[10]};

wire [2:0] in2_64_tmp_42;
assign in2_64_tmp_42 = 
	+(in2_63_1[2:0]);
assign in2_64 = in2_64_tmp_42
	-(in1);

reg [21:0] in2_65_tmp_43;
assign in2_65 = in2_65_tmp_43;
always @ (in2_64[2] or in2_64 or in2_63_0) begin
	case (in2_64[2])
		1'B0 : in2_65_tmp_43 = in2_64 ;
		default : in2_65_tmp_43 = in2_63_0 ;
	endcase
end

assign in2_66_0 = {in2_65,in2[9]};

assign in2_66_1 = {in2_65,in2[9]};

wire [2:0] in2_67_tmp_44;
assign in2_67_tmp_44 = 
	+(in2_66_1[2:0]);
assign in2_67 = in2_67_tmp_44
	-(in1);

reg [22:0] in2_68_tmp_45;
assign in2_68 = in2_68_tmp_45;
always @ (in2_67[2] or in2_67 or in2_66_0) begin
	case (in2_67[2])
		1'B0 : in2_68_tmp_45 = in2_67 ;
		default : in2_68_tmp_45 = in2_66_0 ;
	endcase
end

assign in2_69_0 = {in2_68,in2[8]};

assign in2_69_1 = {in2_68,in2[8]};

wire [2:0] in2_70_tmp_46;
assign in2_70_tmp_46 = 
	+(in2_69_1[2:0]);
assign in2_70 = in2_70_tmp_46
	-(in1);

reg [23:0] in2_71_tmp_47;
assign in2_71 = in2_71_tmp_47;
always @ (in2_70[2] or in2_70 or in2_69_0) begin
	case (in2_70[2])
		1'B0 : in2_71_tmp_47 = in2_70 ;
		default : in2_71_tmp_47 = in2_69_0 ;
	endcase
end

assign in2_72_0 = {in2_71,in2[7]};

assign in2_72_1 = {in2_71,in2[7]};

wire [2:0] in2_73_tmp_48;
assign in2_73_tmp_48 = 
	+(in2_72_1[2:0]);
assign in2_73 = in2_73_tmp_48
	-(in1);

reg [24:0] in2_74_tmp_49;
assign in2_74 = in2_74_tmp_49;
always @ (in2_73[2] or in2_73 or in2_72_0) begin
	case (in2_73[2])
		1'B0 : in2_74_tmp_49 = in2_73 ;
		default : in2_74_tmp_49 = in2_72_0 ;
	endcase
end

assign in2_75_0 = {in2_74,in2[6]};

assign in2_75_1 = {in2_74,in2[6]};

wire [2:0] in2_76_tmp_50;
assign in2_76_tmp_50 = 
	+(in2_75_1[2:0]);
assign in2_76 = in2_76_tmp_50
	-(in1);

reg [25:0] in2_77_tmp_51;
assign in2_77 = in2_77_tmp_51;
always @ (in2_76[2] or in2_76 or in2_75_0) begin
	case (in2_76[2])
		1'B0 : in2_77_tmp_51 = in2_76 ;
		default : in2_77_tmp_51 = in2_75_0 ;
	endcase
end

assign in2_78_0 = {in2_77,in2[5]};

assign in2_78_1 = {in2_77,in2[5]};

wire [2:0] in2_79_tmp_52;
assign in2_79_tmp_52 = 
	+(in2_78_1[2:0]);
assign in2_79 = in2_79_tmp_52
	-(in1);

reg [26:0] in2_80_tmp_53;
assign in2_80 = in2_80_tmp_53;
always @ (in2_79[2] or in2_79 or in2_78_0) begin
	case (in2_79[2])
		1'B0 : in2_80_tmp_53 = in2_79 ;
		default : in2_80_tmp_53 = in2_78_0 ;
	endcase
end

assign in2_81_0 = {in2_80,in2[4]};

assign in2_81_1 = {in2_80,in2[4]};

wire [2:0] in2_82_tmp_54;
assign in2_82_tmp_54 = 
	+(in2_81_1[2:0]);
assign in2_82 = in2_82_tmp_54
	-(in1);

reg [27:0] in2_83_tmp_55;
assign in2_83 = in2_83_tmp_55;
always @ (in2_82[2] or in2_82 or in2_81_0) begin
	case (in2_82[2])
		1'B0 : in2_83_tmp_55 = in2_82 ;
		default : in2_83_tmp_55 = in2_81_0 ;
	endcase
end

assign in2_84_0 = {in2_83,in2[3]};

assign in2_84_1 = {in2_83,in2[3]};

wire [2:0] in2_85_tmp_56;
assign in2_85_tmp_56 = 
	+(in2_84_1[2:0]);
assign in2_85 = in2_85_tmp_56
	-(in1);

reg [28:0] in2_86_tmp_57;
assign in2_86 = in2_86_tmp_57;
always @ (in2_85[2] or in2_85 or in2_84_0) begin
	case (in2_85[2])
		1'B0 : in2_86_tmp_57 = in2_85 ;
		default : in2_86_tmp_57 = in2_84_0 ;
	endcase
end

assign in2_87_0 = {in2_86,in2[2]};

assign in2_87_1 = {in2_86,in2[2]};

wire [2:0] in2_88_tmp_58;
assign in2_88_tmp_58 = 
	+(in2_87_1[2:0]);
assign in2_88 = in2_88_tmp_58
	-(in1);

reg [29:0] in2_89_tmp_59;
assign in2_89 = in2_89_tmp_59;
always @ (in2_88[2] or in2_88 or in2_87_0) begin
	case (in2_88[2])
		1'B0 : in2_89_tmp_59 = in2_88 ;
		default : in2_89_tmp_59 = in2_87_0 ;
	endcase
end

assign in2_90_0 = {in2_89,in2[1]};

assign in2_90_1 = {in2_89,in2[1]};

wire [2:0] in2_91_tmp_60;
assign in2_91_tmp_60 = 
	+(in2_90_1[2:0]);
assign in2_91 = in2_91_tmp_60
	-(in1);

reg [30:0] in2_92_tmp_61;
assign in2_92 = in2_92_tmp_61;
always @ (in2_91[2] or in2_91 or in2_90_0) begin
	case (in2_91[2])
		1'B0 : in2_92_tmp_61 = in2_91 ;
		default : in2_92_tmp_61 = in2_90_0 ;
	endcase
end

assign in2_93_0 = {in2_92,in2[0]};

assign in2_93_1 = {in2_92,in2[0]};

wire [2:0] in2_94_tmp_62;
assign in2_94_tmp_62 = 
	+(in2_93_1[2:0]);
assign in2_94 = in2_94_tmp_62
	-(in1);

reg [31:0] in2_95_tmp_63;
assign in2_95 = in2_95_tmp_63;
always @ (in2_94[2] or in2_94 or in2_93_0) begin
	case (in2_94[2])
		1'B0 : in2_95_tmp_63 = in2_94 ;
		default : in2_95_tmp_63 = in2_93_0 ;
	endcase
end

assign out1 = in2_95[1:0];
endmodule

/* CADENCE  urX1QwzYqQ== : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE **/


