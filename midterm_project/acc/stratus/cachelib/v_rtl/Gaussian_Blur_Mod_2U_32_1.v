`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:33:40 CST (+0800), Thursday 06 May 2021
    Configured on: ws32
    Configured by: m109061641 (m109061641)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module Gaussian_Blur_Mod_2U_32_1 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [31:0] in1;
output [1:0] out1;
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
wire [2:0] in1_29;
wire [10:0] in1_30;
wire [2:0] in1_32;
wire [11:0] in1_33;
wire [2:0] in1_35;
wire [12:0] in1_36;
wire [2:0] in1_38;
wire [13:0] in1_39;
wire [2:0] in1_41;
wire [14:0] in1_42;
wire [2:0] in1_44;
wire [15:0] in1_45;
wire [2:0] in1_47;
wire [16:0] in1_48;
wire [2:0] in1_50;
wire [17:0] in1_51;
wire [2:0] in1_53;
wire [18:0] in1_54;
wire [2:0] in1_56;
wire [19:0] in1_57;
wire [2:0] in1_59;
wire [20:0] in1_60;
wire [2:0] in1_62;
wire [21:0] in1_63;
wire [2:0] in1_65;
wire [22:0] in1_66;
wire [2:0] in1_68;
wire [23:0] in1_69;
wire [2:0] in1_71;
wire [24:0] in1_72;
wire [2:0] in1_74;
wire [25:0] in1_75;
wire [2:0] in1_77;
wire [26:0] in1_78;
wire [2:0] in1_80;
wire [27:0] in1_81;
wire [2:0] in1_83;
wire [28:0] in1_84;
wire [2:0] in1_86;
wire [29:0] in1_87;
wire [2:0] in1_89;
wire [30:0] in1_90;
wire [2:0] in1_92;
wire [31:0] in1_93;
wire [2:0] in1_4_0,
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
wire [10:0] in1_28_0,
	in1_28_1;
wire [11:0] in1_31_0,
	in1_31_1;
wire [12:0] in1_34_0,
	in1_34_1;
wire [13:0] in1_37_0,
	in1_37_1;
wire [14:0] in1_40_0,
	in1_40_1;
wire [15:0] in1_43_0,
	in1_43_1;
wire [16:0] in1_46_0,
	in1_46_1;
wire [17:0] in1_49_0,
	in1_49_1;
wire [18:0] in1_52_0,
	in1_52_1;
wire [19:0] in1_55_0,
	in1_55_1;
wire [20:0] in1_58_0,
	in1_58_1;
wire [21:0] in1_61_0,
	in1_61_1;
wire [22:0] in1_64_0,
	in1_64_1;
wire [23:0] in1_67_0,
	in1_67_1;
wire [24:0] in1_70_0,
	in1_70_1;
wire [25:0] in1_73_0,
	in1_73_1;
wire [26:0] in1_76_0,
	in1_76_1;
wire [27:0] in1_79_0,
	in1_79_1;
wire [28:0] in1_82_0,
	in1_82_1;
wire [29:0] in1_85_0,
	in1_85_1;
wire [30:0] in1_88_0,
	in1_88_1;
wire [31:0] in1_91_0,
	in1_91_1;

wire [2:0] in1_2_tmp_0;
assign in1_2_tmp_0 = 
	+(in1[31:30]);
assign in1_2 = in1_2_tmp_0
	-(3'B011);

reg [1:0] in1_3_tmp_1;
assign in1_3 = in1_3_tmp_1;
always @ (in1_2[2] or in1_2[1:0] or in1[31:30]) begin
	case (in1_2[2])
		1'B0 : in1_3_tmp_1 = in1_2[1:0] ;
		default : in1_3_tmp_1 = in1[31:30] ;
	endcase
end

assign in1_4_0 = {in1_3,in1[29]};

assign in1_4_1 = {in1_3,in1[29]};

wire [2:0] in1_5_tmp_2;
assign in1_5_tmp_2 = 
	+(in1_4_1);
assign in1_5 = in1_5_tmp_2
	-(3'B011);

reg [2:0] in1_6_tmp_3;
assign in1_6 = in1_6_tmp_3;
always @ (in1_5[2] or in1_5 or in1_4_0) begin
	case (in1_5[2])
		1'B0 : in1_6_tmp_3 = in1_5 ;
		default : in1_6_tmp_3 = in1_4_0 ;
	endcase
end

assign in1_7_0 = {in1_6,in1[28]};

assign in1_7_1 = {in1_6,in1[28]};

wire [2:0] in1_8_tmp_4;
assign in1_8_tmp_4 = 
	+(in1_7_1[2:0]);
assign in1_8 = in1_8_tmp_4
	-(3'B011);

reg [3:0] in1_9_tmp_5;
assign in1_9 = in1_9_tmp_5;
always @ (in1_8[2] or in1_8 or in1_7_0) begin
	case (in1_8[2])
		1'B0 : in1_9_tmp_5 = in1_8 ;
		default : in1_9_tmp_5 = in1_7_0 ;
	endcase
end

assign in1_10_0 = {in1_9,in1[27]};

assign in1_10_1 = {in1_9,in1[27]};

wire [2:0] in1_11_tmp_6;
assign in1_11_tmp_6 = 
	+(in1_10_1[2:0]);
assign in1_11 = in1_11_tmp_6
	-(3'B011);

reg [4:0] in1_12_tmp_7;
assign in1_12 = in1_12_tmp_7;
always @ (in1_11[2] or in1_11 or in1_10_0) begin
	case (in1_11[2])
		1'B0 : in1_12_tmp_7 = in1_11 ;
		default : in1_12_tmp_7 = in1_10_0 ;
	endcase
end

assign in1_13_0 = {in1_12,in1[26]};

assign in1_13_1 = {in1_12,in1[26]};

wire [2:0] in1_14_tmp_8;
assign in1_14_tmp_8 = 
	+(in1_13_1[2:0]);
assign in1_14 = in1_14_tmp_8
	-(3'B011);

reg [5:0] in1_15_tmp_9;
assign in1_15 = in1_15_tmp_9;
always @ (in1_14[2] or in1_14 or in1_13_0) begin
	case (in1_14[2])
		1'B0 : in1_15_tmp_9 = in1_14 ;
		default : in1_15_tmp_9 = in1_13_0 ;
	endcase
end

assign in1_16_0 = {in1_15,in1[25]};

assign in1_16_1 = {in1_15,in1[25]};

wire [2:0] in1_17_tmp_10;
assign in1_17_tmp_10 = 
	+(in1_16_1[2:0]);
assign in1_17 = in1_17_tmp_10
	-(3'B011);

reg [6:0] in1_18_tmp_11;
assign in1_18 = in1_18_tmp_11;
always @ (in1_17[2] or in1_17 or in1_16_0) begin
	case (in1_17[2])
		1'B0 : in1_18_tmp_11 = in1_17 ;
		default : in1_18_tmp_11 = in1_16_0 ;
	endcase
end

assign in1_19_0 = {in1_18,in1[24]};

assign in1_19_1 = {in1_18,in1[24]};

wire [2:0] in1_20_tmp_12;
assign in1_20_tmp_12 = 
	+(in1_19_1[2:0]);
assign in1_20 = in1_20_tmp_12
	-(3'B011);

reg [7:0] in1_21_tmp_13;
assign in1_21 = in1_21_tmp_13;
always @ (in1_20[2] or in1_20 or in1_19_0) begin
	case (in1_20[2])
		1'B0 : in1_21_tmp_13 = in1_20 ;
		default : in1_21_tmp_13 = in1_19_0 ;
	endcase
end

assign in1_22_0 = {in1_21,in1[23]};

assign in1_22_1 = {in1_21,in1[23]};

wire [2:0] in1_23_tmp_14;
assign in1_23_tmp_14 = 
	+(in1_22_1[2:0]);
assign in1_23 = in1_23_tmp_14
	-(3'B011);

reg [8:0] in1_24_tmp_15;
assign in1_24 = in1_24_tmp_15;
always @ (in1_23[2] or in1_23 or in1_22_0) begin
	case (in1_23[2])
		1'B0 : in1_24_tmp_15 = in1_23 ;
		default : in1_24_tmp_15 = in1_22_0 ;
	endcase
end

assign in1_25_0 = {in1_24,in1[22]};

assign in1_25_1 = {in1_24,in1[22]};

wire [2:0] in1_26_tmp_16;
assign in1_26_tmp_16 = 
	+(in1_25_1[2:0]);
assign in1_26 = in1_26_tmp_16
	-(3'B011);

reg [9:0] in1_27_tmp_17;
assign in1_27 = in1_27_tmp_17;
always @ (in1_26[2] or in1_26 or in1_25_0) begin
	case (in1_26[2])
		1'B0 : in1_27_tmp_17 = in1_26 ;
		default : in1_27_tmp_17 = in1_25_0 ;
	endcase
end

assign in1_28_0 = {in1_27,in1[21]};

assign in1_28_1 = {in1_27,in1[21]};

wire [2:0] in1_29_tmp_18;
assign in1_29_tmp_18 = 
	+(in1_28_1[2:0]);
assign in1_29 = in1_29_tmp_18
	-(3'B011);

reg [10:0] in1_30_tmp_19;
assign in1_30 = in1_30_tmp_19;
always @ (in1_29[2] or in1_29 or in1_28_0) begin
	case (in1_29[2])
		1'B0 : in1_30_tmp_19 = in1_29 ;
		default : in1_30_tmp_19 = in1_28_0 ;
	endcase
end

assign in1_31_0 = {in1_30,in1[20]};

assign in1_31_1 = {in1_30,in1[20]};

wire [2:0] in1_32_tmp_20;
assign in1_32_tmp_20 = 
	+(in1_31_1[2:0]);
assign in1_32 = in1_32_tmp_20
	-(3'B011);

reg [11:0] in1_33_tmp_21;
assign in1_33 = in1_33_tmp_21;
always @ (in1_32[2] or in1_32 or in1_31_0) begin
	case (in1_32[2])
		1'B0 : in1_33_tmp_21 = in1_32 ;
		default : in1_33_tmp_21 = in1_31_0 ;
	endcase
end

assign in1_34_0 = {in1_33,in1[19]};

assign in1_34_1 = {in1_33,in1[19]};

wire [2:0] in1_35_tmp_22;
assign in1_35_tmp_22 = 
	+(in1_34_1[2:0]);
assign in1_35 = in1_35_tmp_22
	-(3'B011);

reg [12:0] in1_36_tmp_23;
assign in1_36 = in1_36_tmp_23;
always @ (in1_35[2] or in1_35 or in1_34_0) begin
	case (in1_35[2])
		1'B0 : in1_36_tmp_23 = in1_35 ;
		default : in1_36_tmp_23 = in1_34_0 ;
	endcase
end

assign in1_37_0 = {in1_36,in1[18]};

assign in1_37_1 = {in1_36,in1[18]};

wire [2:0] in1_38_tmp_24;
assign in1_38_tmp_24 = 
	+(in1_37_1[2:0]);
assign in1_38 = in1_38_tmp_24
	-(3'B011);

reg [13:0] in1_39_tmp_25;
assign in1_39 = in1_39_tmp_25;
always @ (in1_38[2] or in1_38 or in1_37_0) begin
	case (in1_38[2])
		1'B0 : in1_39_tmp_25 = in1_38 ;
		default : in1_39_tmp_25 = in1_37_0 ;
	endcase
end

assign in1_40_0 = {in1_39,in1[17]};

assign in1_40_1 = {in1_39,in1[17]};

wire [2:0] in1_41_tmp_26;
assign in1_41_tmp_26 = 
	+(in1_40_1[2:0]);
assign in1_41 = in1_41_tmp_26
	-(3'B011);

reg [14:0] in1_42_tmp_27;
assign in1_42 = in1_42_tmp_27;
always @ (in1_41[2] or in1_41 or in1_40_0) begin
	case (in1_41[2])
		1'B0 : in1_42_tmp_27 = in1_41 ;
		default : in1_42_tmp_27 = in1_40_0 ;
	endcase
end

assign in1_43_0 = {in1_42,in1[16]};

assign in1_43_1 = {in1_42,in1[16]};

wire [2:0] in1_44_tmp_28;
assign in1_44_tmp_28 = 
	+(in1_43_1[2:0]);
assign in1_44 = in1_44_tmp_28
	-(3'B011);

reg [15:0] in1_45_tmp_29;
assign in1_45 = in1_45_tmp_29;
always @ (in1_44[2] or in1_44 or in1_43_0) begin
	case (in1_44[2])
		1'B0 : in1_45_tmp_29 = in1_44 ;
		default : in1_45_tmp_29 = in1_43_0 ;
	endcase
end

assign in1_46_0 = {in1_45,in1[15]};

assign in1_46_1 = {in1_45,in1[15]};

wire [2:0] in1_47_tmp_30;
assign in1_47_tmp_30 = 
	+(in1_46_1[2:0]);
assign in1_47 = in1_47_tmp_30
	-(3'B011);

reg [16:0] in1_48_tmp_31;
assign in1_48 = in1_48_tmp_31;
always @ (in1_47[2] or in1_47 or in1_46_0) begin
	case (in1_47[2])
		1'B0 : in1_48_tmp_31 = in1_47 ;
		default : in1_48_tmp_31 = in1_46_0 ;
	endcase
end

assign in1_49_0 = {in1_48,in1[14]};

assign in1_49_1 = {in1_48,in1[14]};

wire [2:0] in1_50_tmp_32;
assign in1_50_tmp_32 = 
	+(in1_49_1[2:0]);
assign in1_50 = in1_50_tmp_32
	-(3'B011);

reg [17:0] in1_51_tmp_33;
assign in1_51 = in1_51_tmp_33;
always @ (in1_50[2] or in1_50 or in1_49_0) begin
	case (in1_50[2])
		1'B0 : in1_51_tmp_33 = in1_50 ;
		default : in1_51_tmp_33 = in1_49_0 ;
	endcase
end

assign in1_52_0 = {in1_51,in1[13]};

assign in1_52_1 = {in1_51,in1[13]};

wire [2:0] in1_53_tmp_34;
assign in1_53_tmp_34 = 
	+(in1_52_1[2:0]);
assign in1_53 = in1_53_tmp_34
	-(3'B011);

reg [18:0] in1_54_tmp_35;
assign in1_54 = in1_54_tmp_35;
always @ (in1_53[2] or in1_53 or in1_52_0) begin
	case (in1_53[2])
		1'B0 : in1_54_tmp_35 = in1_53 ;
		default : in1_54_tmp_35 = in1_52_0 ;
	endcase
end

assign in1_55_0 = {in1_54,in1[12]};

assign in1_55_1 = {in1_54,in1[12]};

wire [2:0] in1_56_tmp_36;
assign in1_56_tmp_36 = 
	+(in1_55_1[2:0]);
assign in1_56 = in1_56_tmp_36
	-(3'B011);

reg [19:0] in1_57_tmp_37;
assign in1_57 = in1_57_tmp_37;
always @ (in1_56[2] or in1_56 or in1_55_0) begin
	case (in1_56[2])
		1'B0 : in1_57_tmp_37 = in1_56 ;
		default : in1_57_tmp_37 = in1_55_0 ;
	endcase
end

assign in1_58_0 = {in1_57,in1[11]};

assign in1_58_1 = {in1_57,in1[11]};

wire [2:0] in1_59_tmp_38;
assign in1_59_tmp_38 = 
	+(in1_58_1[2:0]);
assign in1_59 = in1_59_tmp_38
	-(3'B011);

reg [20:0] in1_60_tmp_39;
assign in1_60 = in1_60_tmp_39;
always @ (in1_59[2] or in1_59 or in1_58_0) begin
	case (in1_59[2])
		1'B0 : in1_60_tmp_39 = in1_59 ;
		default : in1_60_tmp_39 = in1_58_0 ;
	endcase
end

assign in1_61_0 = {in1_60,in1[10]};

assign in1_61_1 = {in1_60,in1[10]};

wire [2:0] in1_62_tmp_40;
assign in1_62_tmp_40 = 
	+(in1_61_1[2:0]);
assign in1_62 = in1_62_tmp_40
	-(3'B011);

reg [21:0] in1_63_tmp_41;
assign in1_63 = in1_63_tmp_41;
always @ (in1_62[2] or in1_62 or in1_61_0) begin
	case (in1_62[2])
		1'B0 : in1_63_tmp_41 = in1_62 ;
		default : in1_63_tmp_41 = in1_61_0 ;
	endcase
end

assign in1_64_0 = {in1_63,in1[9]};

assign in1_64_1 = {in1_63,in1[9]};

wire [2:0] in1_65_tmp_42;
assign in1_65_tmp_42 = 
	+(in1_64_1[2:0]);
assign in1_65 = in1_65_tmp_42
	-(3'B011);

reg [22:0] in1_66_tmp_43;
assign in1_66 = in1_66_tmp_43;
always @ (in1_65[2] or in1_65 or in1_64_0) begin
	case (in1_65[2])
		1'B0 : in1_66_tmp_43 = in1_65 ;
		default : in1_66_tmp_43 = in1_64_0 ;
	endcase
end

assign in1_67_0 = {in1_66,in1[8]};

assign in1_67_1 = {in1_66,in1[8]};

wire [2:0] in1_68_tmp_44;
assign in1_68_tmp_44 = 
	+(in1_67_1[2:0]);
assign in1_68 = in1_68_tmp_44
	-(3'B011);

reg [23:0] in1_69_tmp_45;
assign in1_69 = in1_69_tmp_45;
always @ (in1_68[2] or in1_68 or in1_67_0) begin
	case (in1_68[2])
		1'B0 : in1_69_tmp_45 = in1_68 ;
		default : in1_69_tmp_45 = in1_67_0 ;
	endcase
end

assign in1_70_0 = {in1_69,in1[7]};

assign in1_70_1 = {in1_69,in1[7]};

wire [2:0] in1_71_tmp_46;
assign in1_71_tmp_46 = 
	+(in1_70_1[2:0]);
assign in1_71 = in1_71_tmp_46
	-(3'B011);

reg [24:0] in1_72_tmp_47;
assign in1_72 = in1_72_tmp_47;
always @ (in1_71[2] or in1_71 or in1_70_0) begin
	case (in1_71[2])
		1'B0 : in1_72_tmp_47 = in1_71 ;
		default : in1_72_tmp_47 = in1_70_0 ;
	endcase
end

assign in1_73_0 = {in1_72,in1[6]};

assign in1_73_1 = {in1_72,in1[6]};

wire [2:0] in1_74_tmp_48;
assign in1_74_tmp_48 = 
	+(in1_73_1[2:0]);
assign in1_74 = in1_74_tmp_48
	-(3'B011);

reg [25:0] in1_75_tmp_49;
assign in1_75 = in1_75_tmp_49;
always @ (in1_74[2] or in1_74 or in1_73_0) begin
	case (in1_74[2])
		1'B0 : in1_75_tmp_49 = in1_74 ;
		default : in1_75_tmp_49 = in1_73_0 ;
	endcase
end

assign in1_76_0 = {in1_75,in1[5]};

assign in1_76_1 = {in1_75,in1[5]};

wire [2:0] in1_77_tmp_50;
assign in1_77_tmp_50 = 
	+(in1_76_1[2:0]);
assign in1_77 = in1_77_tmp_50
	-(3'B011);

reg [26:0] in1_78_tmp_51;
assign in1_78 = in1_78_tmp_51;
always @ (in1_77[2] or in1_77 or in1_76_0) begin
	case (in1_77[2])
		1'B0 : in1_78_tmp_51 = in1_77 ;
		default : in1_78_tmp_51 = in1_76_0 ;
	endcase
end

assign in1_79_0 = {in1_78,in1[4]};

assign in1_79_1 = {in1_78,in1[4]};

wire [2:0] in1_80_tmp_52;
assign in1_80_tmp_52 = 
	+(in1_79_1[2:0]);
assign in1_80 = in1_80_tmp_52
	-(3'B011);

reg [27:0] in1_81_tmp_53;
assign in1_81 = in1_81_tmp_53;
always @ (in1_80[2] or in1_80 or in1_79_0) begin
	case (in1_80[2])
		1'B0 : in1_81_tmp_53 = in1_80 ;
		default : in1_81_tmp_53 = in1_79_0 ;
	endcase
end

assign in1_82_0 = {in1_81,in1[3]};

assign in1_82_1 = {in1_81,in1[3]};

wire [2:0] in1_83_tmp_54;
assign in1_83_tmp_54 = 
	+(in1_82_1[2:0]);
assign in1_83 = in1_83_tmp_54
	-(3'B011);

reg [28:0] in1_84_tmp_55;
assign in1_84 = in1_84_tmp_55;
always @ (in1_83[2] or in1_83 or in1_82_0) begin
	case (in1_83[2])
		1'B0 : in1_84_tmp_55 = in1_83 ;
		default : in1_84_tmp_55 = in1_82_0 ;
	endcase
end

assign in1_85_0 = {in1_84,in1[2]};

assign in1_85_1 = {in1_84,in1[2]};

wire [2:0] in1_86_tmp_56;
assign in1_86_tmp_56 = 
	+(in1_85_1[2:0]);
assign in1_86 = in1_86_tmp_56
	-(3'B011);

reg [29:0] in1_87_tmp_57;
assign in1_87 = in1_87_tmp_57;
always @ (in1_86[2] or in1_86 or in1_85_0) begin
	case (in1_86[2])
		1'B0 : in1_87_tmp_57 = in1_86 ;
		default : in1_87_tmp_57 = in1_85_0 ;
	endcase
end

assign in1_88_0 = {in1_87,in1[1]};

assign in1_88_1 = {in1_87,in1[1]};

wire [2:0] in1_89_tmp_58;
assign in1_89_tmp_58 = 
	+(in1_88_1[2:0]);
assign in1_89 = in1_89_tmp_58
	-(3'B011);

reg [30:0] in1_90_tmp_59;
assign in1_90 = in1_90_tmp_59;
always @ (in1_89[2] or in1_89 or in1_88_0) begin
	case (in1_89[2])
		1'B0 : in1_90_tmp_59 = in1_89 ;
		default : in1_90_tmp_59 = in1_88_0 ;
	endcase
end

assign in1_91_0 = {in1_90,in1[0]};

assign in1_91_1 = {in1_90,in1[0]};

wire [2:0] in1_92_tmp_60;
assign in1_92_tmp_60 = 
	+(in1_91_1[2:0]);
assign in1_92 = in1_92_tmp_60
	-(3'B011);

reg [31:0] in1_93_tmp_61;
assign in1_93 = in1_93_tmp_61;
always @ (in1_92[2] or in1_92 or in1_91_0) begin
	case (in1_92[2])
		1'B0 : in1_93_tmp_61 = in1_92 ;
		default : in1_93_tmp_61 = in1_91_0 ;
	endcase
end

assign out1 = in1_93[1:0];
endmodule

/* CADENCE  urXzSgjZrA== : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE **/


