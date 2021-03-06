`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:33:59 CST (May  5 2021 21:33:59 UTC)

module Gaussian_Blur_AbsAdd3s9s9s9_1(in3, in2, in1, out1);
  input [8:0] in3, in2, in1;
  output [10:0] out1;
  wire [8:0] in3, in2, in1;
  wire [10:0] out1;
  wire csa_tree_add_29_2_n_0, csa_tree_add_29_2_n_7,
       csa_tree_minus_32_17_groupi_n_0,
       csa_tree_minus_32_17_groupi_n_1,
       csa_tree_minus_32_17_groupi_n_2,
       csa_tree_minus_32_17_groupi_n_3,
       csa_tree_minus_32_17_groupi_n_4, csa_tree_minus_32_17_groupi_n_5;
  wire csa_tree_minus_32_17_groupi_n_6,
       csa_tree_minus_32_17_groupi_n_7,
       csa_tree_minus_32_17_groupi_n_10,
       csa_tree_minus_32_17_groupi_n_11,
       csa_tree_minus_32_17_groupi_n_12,
       csa_tree_minus_32_17_groupi_n_13,
       csa_tree_minus_32_17_groupi_n_14,
       csa_tree_minus_32_17_groupi_n_15;
  wire csa_tree_minus_32_17_groupi_n_16,
       csa_tree_minus_32_17_groupi_n_17,
       csa_tree_minus_32_17_groupi_n_18,
       csa_tree_minus_32_17_groupi_n_19,
       csa_tree_minus_32_17_groupi_n_20,
       csa_tree_minus_32_17_groupi_n_53,
       csa_tree_minus_32_17_groupi_n_56,
       csa_tree_minus_32_17_groupi_n_57;
  wire csa_tree_minus_32_17_groupi_n_58,
       csa_tree_minus_32_17_groupi_n_59,
       csa_tree_minus_32_17_groupi_n_60,
       csa_tree_minus_32_17_groupi_n_61,
       csa_tree_minus_32_17_groupi_n_62,
       csa_tree_minus_32_17_groupi_n_63,
       csa_tree_minus_32_17_groupi_n_64,
       csa_tree_minus_32_17_groupi_n_65;
  wire csa_tree_minus_32_17_groupi_n_66,
       csa_tree_minus_32_17_groupi_n_67,
       csa_tree_minus_32_17_groupi_n_68,
       csa_tree_minus_32_17_groupi_n_69,
       csa_tree_minus_32_17_groupi_n_70,
       csa_tree_minus_32_17_groupi_n_71,
       csa_tree_minus_32_17_groupi_n_72,
       csa_tree_minus_32_17_groupi_n_73;
  wire csa_tree_minus_32_17_groupi_n_75,
       csa_tree_minus_32_17_groupi_n_76,
       csa_tree_minus_32_17_groupi_n_77,
       csa_tree_minus_32_17_groupi_n_78,
       csa_tree_minus_32_17_groupi_n_79,
       csa_tree_minus_32_17_groupi_n_80,
       csa_tree_minus_32_17_groupi_n_81,
       csa_tree_minus_32_17_groupi_n_82;
  wire csa_tree_minus_32_17_groupi_n_83,
       csa_tree_minus_32_17_groupi_n_84,
       csa_tree_minus_32_17_groupi_n_85,
       csa_tree_minus_32_17_groupi_n_86,
       csa_tree_minus_32_17_groupi_n_87,
       csa_tree_minus_32_17_groupi_n_88,
       csa_tree_minus_32_17_groupi_n_89,
       csa_tree_minus_32_17_groupi_n_90;
  wire csa_tree_minus_32_17_groupi_n_91,
       csa_tree_minus_32_17_groupi_n_92,
       csa_tree_minus_32_17_groupi_n_93,
       csa_tree_minus_32_17_groupi_n_94,
       csa_tree_minus_32_17_groupi_n_95,
       csa_tree_minus_32_17_groupi_n_96,
       csa_tree_minus_32_17_groupi_n_97,
       csa_tree_minus_32_17_groupi_n_98;
  wire csa_tree_minus_32_17_groupi_n_99,
       csa_tree_minus_32_17_groupi_n_100,
       csa_tree_minus_32_17_groupi_n_101,
       csa_tree_minus_32_17_groupi_n_102,
       csa_tree_minus_32_17_groupi_n_103,
       csa_tree_minus_32_17_groupi_n_104,
       csa_tree_minus_32_17_groupi_n_105,
       csa_tree_minus_32_17_groupi_n_106;
  wire csa_tree_minus_32_17_groupi_n_107,
       csa_tree_minus_32_17_groupi_n_108,
       csa_tree_minus_32_17_groupi_n_109,
       csa_tree_minus_32_17_groupi_n_110,
       csa_tree_minus_32_17_groupi_n_111,
       csa_tree_minus_32_17_groupi_n_112,
       csa_tree_minus_32_17_groupi_n_113,
       csa_tree_minus_32_17_groupi_n_114;
  wire csa_tree_minus_32_17_groupi_n_115,
       csa_tree_minus_32_17_groupi_n_116,
       csa_tree_minus_32_17_groupi_n_119,
       csa_tree_minus_32_17_groupi_n_120,
       csa_tree_minus_32_17_groupi_n_121,
       csa_tree_minus_32_17_groupi_n_123,
       csa_tree_minus_32_17_groupi_n_125,
       csa_tree_minus_32_17_groupi_n_127;
  wire csa_tree_minus_32_17_groupi_n_133,
       csa_tree_minus_32_17_groupi_n_134, final_adder_add_29_2_n_1,
       final_adder_add_29_2_n_2, final_adder_add_29_2_n_3,
       final_adder_add_29_2_n_4, final_adder_add_29_2_n_5,
       final_adder_add_29_2_n_6;
  wire final_adder_add_29_2_n_7, final_adder_add_29_2_n_8,
       final_adder_add_29_2_n_9, final_adder_add_29_2_n_10,
       final_adder_add_29_2_n_11, final_adder_add_29_2_n_12,
       final_adder_add_29_2_n_13, final_adder_add_29_2_n_14;
  wire final_adder_add_29_2_n_15, final_adder_add_29_2_n_16,
       final_adder_add_29_2_n_17, final_adder_add_29_2_n_18,
       final_adder_add_29_2_n_19, final_adder_add_29_2_n_20,
       final_adder_add_29_2_n_21, final_adder_add_29_2_n_22;
  wire final_adder_add_29_2_n_23, final_adder_add_29_2_n_24,
       final_adder_add_29_2_n_25, final_adder_add_29_2_n_26,
       final_adder_add_29_2_n_27, final_adder_add_29_2_n_28,
       final_adder_add_29_2_n_29, final_adder_add_29_2_n_30;
  wire final_adder_add_29_2_n_31, final_adder_add_29_2_n_32,
       final_adder_add_29_2_n_33, final_adder_add_29_2_n_34,
       final_adder_add_29_2_n_35, final_adder_add_29_2_n_36,
       final_adder_add_29_2_n_37, final_adder_add_29_2_n_38;
  wire final_adder_add_29_2_n_39, final_adder_add_29_2_n_41,
       final_adder_add_29_2_n_42, final_adder_add_29_2_n_44,
       final_adder_add_29_2_n_46, final_adder_add_29_2_n_48,
       final_adder_add_29_2_n_49, final_adder_add_29_2_n_50;
  wire final_adder_add_29_2_n_51, final_adder_add_29_2_n_54,
       final_adder_add_29_2_n_55, final_adder_add_29_2_n_56,
       final_adder_add_29_2_n_57, final_adder_add_29_2_n_58,
       final_adder_add_29_2_n_62, final_adder_add_29_2_n_89;
  wire final_adder_add_29_2_n_90, final_adder_add_29_2_n_91,
       final_adder_add_29_2_n_93, final_adder_add_29_2_n_94,
       final_adder_add_29_2_n_95, final_adder_add_29_2_n_96,
       final_adder_add_29_2_n_97, final_adder_add_29_2_n_98;
  wire final_adder_add_29_2_n_105, final_adder_add_29_2_n_106,
       final_adder_add_29_2_n_107, n_2, n_5, n_6, n_7, n_8;
  wire n_9, n_12, n_13, n_18, n_19, n_20, n_21, n_22;
  wire n_23, n_24, n_25, n_26, n_27, n_28, n_29, n_30;
  wire n_31, n_32, n_33, n_34, n_35, n_36, n_37, n_38;
  wire n_39, n_40, n_41, n_42, n_43, n_44, n_45, n_46;
  wire n_47, n_48, n_49, n_52, n_53, n_54, n_55, n_56;
  wire n_57, n_58, n_59, n_60;
  OAI2BB1X1 g112(.A0N (n_39), .A1N (n_24), .B0 (n_9), .Y (out1[6]));
  OAI2BB1XL g113(.A0N (n_39), .A1N (n_26), .B0 (n_8), .Y (out1[8]));
  OAI2BB1X1 g114(.A0N (n_39), .A1N (n_27), .B0 (n_5), .Y (out1[9]));
  OAI2BB1XL g117(.A0N (n_39), .A1N (n_23), .B0 (n_6), .Y (out1[5]));
  OAI2BB1XL g118(.A0N (n_39), .A1N (n_25), .B0 (n_12), .Y (out1[7]));
  NAND2X1 g121(.A (n_7), .B (n_13), .Y (out1[4]));
  NAND2X1 g124(.A (n_33), .B (n_2), .Y (n_13));
  NAND2XL g125(.A (n_36), .B (n_2), .Y (n_12));
  NOR2BX1 g127(.AN (n_28), .B (n_2), .Y (out1[10]));
  NAND2XL g129(.A (n_35), .B (n_2), .Y (n_9));
  NAND2XL g130(.A (n_37), .B (n_2), .Y (n_8));
  NAND2X1 g131(.A (n_39), .B (n_22), .Y (n_7));
  NAND2XL g132(.A (n_34), .B (n_2), .Y (n_6));
  NAND2X1 g133(.A (n_38), .B (n_2), .Y (n_5));
  INVX2 g136(.A (n_39), .Y (n_2));
  MX2XL g2(.A (n_32), .B (n_21), .S0 (n_39), .Y (out1[3]));
  MX2XL g139(.A (n_31), .B (n_20), .S0 (n_39), .Y (out1[2]));
  MX2XL g140(.A (n_30), .B (n_19), .S0 (n_39), .Y (out1[1]));
  MX2XL g141(.A (n_29), .B (n_18), .S0 (n_39), .Y (out1[0]));
  MXI2X1 final_adder_add_29_2_g229(.A (final_adder_add_29_2_n_30), .B
       (final_adder_add_29_2_n_31), .S0 (final_adder_add_29_2_n_62), .Y
       (n_38));
  NOR2X4 final_adder_add_29_2_g230(.A (final_adder_add_29_2_n_35), .B
       (final_adder_add_29_2_n_57), .Y (n_39));
  NOR2X1 final_adder_add_29_2_g231(.A (final_adder_add_29_2_n_3), .B
       (final_adder_add_29_2_n_58), .Y (final_adder_add_29_2_n_62));
  XOR2XL final_adder_add_29_2_g233(.A (final_adder_add_29_2_n_27), .B
       (final_adder_add_29_2_n_51), .Y (n_36));
  XOR2XL final_adder_add_29_2_g234(.A (final_adder_add_29_2_n_23), .B
       (final_adder_add_29_2_n_55), .Y (n_35));
  XOR2XL final_adder_add_29_2_g235(.A (final_adder_add_29_2_n_21), .B
       (final_adder_add_29_2_n_54), .Y (n_34));
  NOR2X1 final_adder_add_29_2_g236(.A (final_adder_add_29_2_n_14), .B
       (final_adder_add_29_2_n_56), .Y (final_adder_add_29_2_n_58));
  NOR2X2 final_adder_add_29_2_g237(.A (final_adder_add_29_2_n_24), .B
       (final_adder_add_29_2_n_56), .Y (final_adder_add_29_2_n_57));
  NOR2X1 final_adder_add_29_2_g238(.A (final_adder_add_29_2_n_41), .B
       (final_adder_add_29_2_n_50), .Y (final_adder_add_29_2_n_56));
  AOI21X1 final_adder_add_29_2_g239(.A0 (final_adder_add_29_2_n_29),
       .A1 (final_adder_add_29_2_n_91), .B0
       (final_adder_add_29_2_n_33), .Y (final_adder_add_29_2_n_55));
  OAI21X1 final_adder_add_29_2_g240(.A0 (final_adder_add_29_2_n_4), .A1
       (final_adder_add_29_2_n_89), .B0 (final_adder_add_29_2_n_17), .Y
       (final_adder_add_29_2_n_54));
  XNOR2X1 final_adder_add_29_2_g241(.A (final_adder_add_29_2_n_20), .B
       (final_adder_add_29_2_n_90), .Y (n_33));
  XNOR2X1 final_adder_add_29_2_g242(.A (final_adder_add_29_2_n_22), .B
       (final_adder_add_29_2_n_48), .Y (n_32));
  NAND2BXL final_adder_add_29_2_g243(.AN (final_adder_add_29_2_n_42),
       .B (final_adder_add_29_2_n_49), .Y (final_adder_add_29_2_n_51));
  NOR2X1 final_adder_add_29_2_g244(.A (final_adder_add_29_2_n_38), .B
       (final_adder_add_29_2_n_46), .Y (final_adder_add_29_2_n_50));
  NAND2XL final_adder_add_29_2_g245(.A (final_adder_add_29_2_n_37), .B
       (final_adder_add_29_2_n_91), .Y (final_adder_add_29_2_n_49));
  OAI2BB1X1 final_adder_add_29_2_g246(.A0N (final_adder_add_29_2_n_8),
       .A1N (final_adder_add_29_2_n_44), .B0
       (final_adder_add_29_2_n_1), .Y (final_adder_add_29_2_n_48));
  XNOR2X1 final_adder_add_29_2_g247(.A (final_adder_add_29_2_n_26), .B
       (final_adder_add_29_2_n_44), .Y (n_31));
  AOI21X2 final_adder_add_29_2_g249(.A0 (final_adder_add_29_2_n_28),
       .A1 (final_adder_add_29_2_n_44), .B0
       (final_adder_add_29_2_n_34), .Y (final_adder_add_29_2_n_46));
  ADDFX1 final_adder_add_29_2_g250(.A (n_41), .B (n_52), .CI
       (final_adder_add_29_2_n_39), .CO (final_adder_add_29_2_n_44), .S
       (n_30));
  OAI2BB1X1 final_adder_add_29_2_g251(.A0N (final_adder_add_29_2_n_12),
       .A1N (final_adder_add_29_2_n_33), .B0
       (final_adder_add_29_2_n_13), .Y (final_adder_add_29_2_n_42));
  OAI2BB1X1 final_adder_add_29_2_g252(.A0N (final_adder_add_29_2_n_25),
       .A1N (final_adder_add_29_2_n_33), .B0
       (final_adder_add_29_2_n_36), .Y (final_adder_add_29_2_n_41));
  ADDHX1 final_adder_add_29_2_g253(.A (in3[0]), .B (n_40), .CO
       (final_adder_add_29_2_n_39), .S (n_29));
  NAND2X1 final_adder_add_29_2_g254(.A (final_adder_add_29_2_n_25), .B
       (final_adder_add_29_2_n_29), .Y (final_adder_add_29_2_n_38));
  AND2XL final_adder_add_29_2_g255(.A (final_adder_add_29_2_n_12), .B
       (final_adder_add_29_2_n_29), .Y (final_adder_add_29_2_n_37));
  AOI2BB1X1 final_adder_add_29_2_g256(.A0N (final_adder_add_29_2_n_13),
       .A1N (final_adder_add_29_2_n_6), .B0
       (final_adder_add_29_2_n_19), .Y (final_adder_add_29_2_n_36));
  OAI21X1 final_adder_add_29_2_g257(.A0 (final_adder_add_29_2_n_2), .A1
       (final_adder_add_29_2_n_5), .B0 (final_adder_add_29_2_n_10), .Y
       (final_adder_add_29_2_n_35));
  OAI21X1 final_adder_add_29_2_g258(.A0 (final_adder_add_29_2_n_1), .A1
       (final_adder_add_29_2_n_15), .B0 (final_adder_add_29_2_n_18), .Y
       (final_adder_add_29_2_n_34));
  OAI21X1 final_adder_add_29_2_g259(.A0 (final_adder_add_29_2_n_17),
       .A1 (final_adder_add_29_2_n_16), .B0 (final_adder_add_29_2_n_9),
       .Y (final_adder_add_29_2_n_33));
  INVXL final_adder_add_29_2_g261(.A (final_adder_add_29_2_n_30), .Y
       (final_adder_add_29_2_n_31));
  NOR2X1 final_adder_add_29_2_g262(.A (final_adder_add_29_2_n_15), .B
       (final_adder_add_29_2_n_7), .Y (final_adder_add_29_2_n_28));
  NOR2XL final_adder_add_29_2_g263(.A (final_adder_add_29_2_n_19), .B
       (final_adder_add_29_2_n_6), .Y (final_adder_add_29_2_n_27));
  NAND2XL final_adder_add_29_2_g264(.A (final_adder_add_29_2_n_1), .B
       (final_adder_add_29_2_n_8), .Y (final_adder_add_29_2_n_26));
  NOR2X1 final_adder_add_29_2_g265(.A (final_adder_add_29_2_n_3), .B
       (final_adder_add_29_2_n_14), .Y (final_adder_add_29_2_n_32));
  NOR2BX1 final_adder_add_29_2_g266(.AN (final_adder_add_29_2_n_10), .B
       (final_adder_add_29_2_n_5), .Y (final_adder_add_29_2_n_30));
  NOR2X1 final_adder_add_29_2_g267(.A (final_adder_add_29_2_n_16), .B
       (final_adder_add_29_2_n_4), .Y (final_adder_add_29_2_n_29));
  OR2XL final_adder_add_29_2_g268(.A (final_adder_add_29_2_n_5), .B
       (final_adder_add_29_2_n_14), .Y (final_adder_add_29_2_n_24));
  NAND2XL final_adder_add_29_2_g269(.A (final_adder_add_29_2_n_13), .B
       (final_adder_add_29_2_n_12), .Y (final_adder_add_29_2_n_23));
  NAND2BXL final_adder_add_29_2_g270(.AN (final_adder_add_29_2_n_15),
       .B (final_adder_add_29_2_n_18), .Y (final_adder_add_29_2_n_22));
  NOR2BX1 final_adder_add_29_2_g271(.AN (final_adder_add_29_2_n_9), .B
       (final_adder_add_29_2_n_16), .Y (final_adder_add_29_2_n_21));
  NOR2BX1 final_adder_add_29_2_g272(.AN (final_adder_add_29_2_n_17), .B
       (final_adder_add_29_2_n_4), .Y (final_adder_add_29_2_n_20));
  NOR2X1 final_adder_add_29_2_g273(.A (final_adder_add_29_2_n_6), .B
       (final_adder_add_29_2_n_11), .Y (final_adder_add_29_2_n_25));
  INVX1 final_adder_add_29_2_g274(.A (final_adder_add_29_2_n_11), .Y
       (final_adder_add_29_2_n_12));
  AND2XL final_adder_add_29_2_g275(.A (n_58), .B
       (final_adder_add_29_2_n_93), .Y (final_adder_add_29_2_n_19));
  NAND2X1 final_adder_add_29_2_g276(.A (n_54), .B
       (final_adder_add_29_2_n_96), .Y (final_adder_add_29_2_n_18));
  NAND2X1 final_adder_add_29_2_g277(.A (n_55), .B (n_44), .Y
       (final_adder_add_29_2_n_17));
  NOR2X1 final_adder_add_29_2_g278(.A (n_56), .B (n_45), .Y
       (final_adder_add_29_2_n_16));
  NOR2X1 final_adder_add_29_2_g279(.A (n_54), .B
       (final_adder_add_29_2_n_97), .Y (final_adder_add_29_2_n_15));
  NOR2X1 final_adder_add_29_2_g280(.A (n_59), .B (n_48), .Y
       (final_adder_add_29_2_n_14));
  NAND2X1 final_adder_add_29_2_g281(.A (n_57), .B
       (final_adder_add_29_2_n_105), .Y (final_adder_add_29_2_n_13));
  NOR2X1 final_adder_add_29_2_g282(.A (n_57), .B
       (final_adder_add_29_2_n_106), .Y (final_adder_add_29_2_n_11));
  INVX1 final_adder_add_29_2_g283(.A (final_adder_add_29_2_n_7), .Y
       (final_adder_add_29_2_n_8));
  INVX1 final_adder_add_29_2_g284(.A (final_adder_add_29_2_n_2), .Y
       (final_adder_add_29_2_n_3));
  NAND2X1 final_adder_add_29_2_g285(.A (n_60), .B (n_49), .Y
       (final_adder_add_29_2_n_10));
  NAND2X1 final_adder_add_29_2_g286(.A (n_56), .B (n_45), .Y
       (final_adder_add_29_2_n_9));
  NOR2X1 final_adder_add_29_2_g287(.A (n_53), .B (n_42), .Y
       (final_adder_add_29_2_n_7));
  NOR2X1 final_adder_add_29_2_g288(.A (n_58), .B
       (final_adder_add_29_2_n_94), .Y (final_adder_add_29_2_n_6));
  NOR2X1 final_adder_add_29_2_g289(.A (n_60), .B (n_49), .Y
       (final_adder_add_29_2_n_5));
  NOR2X1 final_adder_add_29_2_g290(.A (n_55), .B (n_44), .Y
       (final_adder_add_29_2_n_4));
  NAND2X1 final_adder_add_29_2_g291(.A (n_59), .B (n_48), .Y
       (final_adder_add_29_2_n_2));
  NAND2X1 final_adder_add_29_2_g292(.A (n_53), .B (n_42), .Y
       (final_adder_add_29_2_n_1));
  XNOR2X1 final_adder_add_29_2_g2(.A (final_adder_add_29_2_n_32), .B
       (final_adder_add_29_2_n_56), .Y (n_37));
  CLKINVX1 final_adder_add_29_2_fopt(.A (final_adder_add_29_2_n_91), .Y
       (final_adder_add_29_2_n_89));
  INVXL final_adder_add_29_2_fopt293(.A (final_adder_add_29_2_n_91), .Y
       (final_adder_add_29_2_n_90));
  CLKINVX1 final_adder_add_29_2_fopt294(.A (final_adder_add_29_2_n_46),
       .Y (final_adder_add_29_2_n_91));
  INVXL final_adder_add_29_2_fopt295(.A (final_adder_add_29_2_n_95), .Y
       (final_adder_add_29_2_n_93));
  INVXL final_adder_add_29_2_fopt296(.A (final_adder_add_29_2_n_95), .Y
       (final_adder_add_29_2_n_94));
  INVXL final_adder_add_29_2_fopt297(.A (n_47), .Y
       (final_adder_add_29_2_n_95));
  INVXL final_adder_add_29_2_fopt298(.A (final_adder_add_29_2_n_98), .Y
       (final_adder_add_29_2_n_96));
  INVXL final_adder_add_29_2_fopt299(.A (final_adder_add_29_2_n_98), .Y
       (final_adder_add_29_2_n_97));
  INVXL final_adder_add_29_2_fopt300(.A (n_43), .Y
       (final_adder_add_29_2_n_98));
  INVXL final_adder_add_29_2_fopt307(.A (final_adder_add_29_2_n_107),
       .Y (final_adder_add_29_2_n_105));
  INVXL final_adder_add_29_2_fopt308(.A (final_adder_add_29_2_n_107),
       .Y (final_adder_add_29_2_n_106));
  INVXL final_adder_add_29_2_fopt309(.A (n_46), .Y
       (final_adder_add_29_2_n_107));
  INVX1 csa_tree_minus_32_17_groupi_g7(.A (n_41), .Y
       (csa_tree_minus_32_17_groupi_n_2));
  INVX1 csa_tree_minus_32_17_groupi_g8(.A (n_40), .Y
       (csa_tree_minus_32_17_groupi_n_1));
  INVX1 csa_tree_minus_32_17_groupi_g6(.A (in3[0]), .Y
       (csa_tree_minus_32_17_groupi_n_0));
  ADDHX1 csa_tree_minus_32_17_groupi_g178(.A
       (csa_tree_minus_32_17_groupi_n_53), .B
       (csa_tree_minus_32_17_groupi_n_127), .CO
       (csa_tree_minus_32_17_groupi_n_15), .S
       (csa_tree_minus_32_17_groupi_n_6));
  XOR2XL csa_tree_minus_32_17_groupi_g179(.A (n_60), .B (n_49), .Y
       (csa_tree_minus_32_17_groupi_n_12));
  CLKXOR2X1 csa_tree_minus_32_17_groupi_g183(.A (n_55), .B (n_44), .Y
       (csa_tree_minus_32_17_groupi_n_7));
  CLKXOR2X1 csa_tree_minus_32_17_groupi_g184(.A (n_53), .B (n_42), .Y
       (csa_tree_minus_32_17_groupi_n_5));
  XOR2XL csa_tree_minus_32_17_groupi_g185(.A (n_59), .B (n_48), .Y
       (csa_tree_minus_32_17_groupi_n_11));
  NOR2X1 csa_tree_minus_32_17_groupi_g186(.A (n_58), .B
       (csa_tree_minus_32_17_groupi_n_125), .Y
       (csa_tree_minus_32_17_groupi_n_19));
  NOR2X1 csa_tree_minus_32_17_groupi_g187(.A (n_57), .B (n_46), .Y
       (csa_tree_minus_32_17_groupi_n_18));
  NOR2X1 csa_tree_minus_32_17_groupi_g188(.A (n_56), .B (n_45), .Y
       (csa_tree_minus_32_17_groupi_n_17));
  NOR2X1 csa_tree_minus_32_17_groupi_g189(.A (n_53), .B (n_42), .Y
       (csa_tree_minus_32_17_groupi_n_14));
  NOR2X1 csa_tree_minus_32_17_groupi_g190(.A (n_60), .B (n_49), .Y
       (csa_tree_minus_32_17_groupi_n_13));
  NOR2X1 csa_tree_minus_32_17_groupi_g191(.A (n_55), .B (n_44), .Y
       (csa_tree_minus_32_17_groupi_n_16));
  NOR2X1 csa_tree_minus_32_17_groupi_g192(.A (n_59), .B (n_48), .Y
       (csa_tree_minus_32_17_groupi_n_20));
  INVX1 csa_tree_minus_32_17_groupi_g195(.A (n_54), .Y
       (csa_tree_minus_32_17_groupi_n_53));
  XOR2XL csa_tree_minus_32_17_groupi_g2(.A (n_58), .B (n_47), .Y
       (csa_tree_minus_32_17_groupi_n_10));
  MXI2XL csa_tree_minus_32_17_groupi_g228(.A
       (csa_tree_minus_32_17_groupi_n_13), .B
       (csa_tree_minus_32_17_groupi_n_58), .S0
       (csa_tree_minus_32_17_groupi_n_113), .Y (n_28));
  MXI2XL csa_tree_minus_32_17_groupi_g229(.A
       (csa_tree_minus_32_17_groupi_n_94), .B
       (csa_tree_minus_32_17_groupi_n_93), .S0
       (csa_tree_minus_32_17_groupi_n_112), .Y (n_27));
  OAI21X1 csa_tree_minus_32_17_groupi_g230(.A0
       (csa_tree_minus_32_17_groupi_n_80), .A1
       (csa_tree_minus_32_17_groupi_n_111), .B0
       (csa_tree_minus_32_17_groupi_n_98), .Y
       (csa_tree_minus_32_17_groupi_n_113));
  OAI21X2 csa_tree_minus_32_17_groupi_g231(.A0
       (csa_tree_minus_32_17_groupi_n_4), .A1
       (csa_tree_minus_32_17_groupi_n_111), .B0
       (csa_tree_minus_32_17_groupi_n_69), .Y
       (csa_tree_minus_32_17_groupi_n_112));
  MXI2XL csa_tree_minus_32_17_groupi_g232(.A
       (csa_tree_minus_32_17_groupi_n_91), .B
       (csa_tree_minus_32_17_groupi_n_92), .S0
       (csa_tree_minus_32_17_groupi_n_111), .Y (n_26));
  MXI2XL csa_tree_minus_32_17_groupi_g233(.A
       (csa_tree_minus_32_17_groupi_n_89), .B
       (csa_tree_minus_32_17_groupi_n_90), .S0
       (csa_tree_minus_32_17_groupi_n_108), .Y (n_25));
  MXI2XL csa_tree_minus_32_17_groupi_g234(.A
       (csa_tree_minus_32_17_groupi_n_86), .B
       (csa_tree_minus_32_17_groupi_n_85), .S0
       (csa_tree_minus_32_17_groupi_n_110), .Y (n_24));
  MXI2XL csa_tree_minus_32_17_groupi_g235(.A
       (csa_tree_minus_32_17_groupi_n_87), .B
       (csa_tree_minus_32_17_groupi_n_88), .S0
       (csa_tree_minus_32_17_groupi_n_109), .Y (n_23));
  AOI21X2 csa_tree_minus_32_17_groupi_g236(.A0
       (csa_tree_minus_32_17_groupi_n_100), .A1
       (csa_tree_minus_32_17_groupi_n_106), .B0
       (csa_tree_minus_32_17_groupi_n_102), .Y
       (csa_tree_minus_32_17_groupi_n_111));
  AOI21X1 csa_tree_minus_32_17_groupi_g237(.A0
       (csa_tree_minus_32_17_groupi_n_119), .A1
       (csa_tree_minus_32_17_groupi_n_116), .B0
       (csa_tree_minus_32_17_groupi_n_96), .Y
       (csa_tree_minus_32_17_groupi_n_110));
  AOI21X1 csa_tree_minus_32_17_groupi_g238(.A0
       (csa_tree_minus_32_17_groupi_n_60), .A1
       (csa_tree_minus_32_17_groupi_n_116), .B0
       (csa_tree_minus_32_17_groupi_n_68), .Y
       (csa_tree_minus_32_17_groupi_n_109));
  XOR2XL csa_tree_minus_32_17_groupi_g239(.A
       (csa_tree_minus_32_17_groupi_n_79), .B
       (csa_tree_minus_32_17_groupi_n_116), .Y (n_22));
  XNOR2X1 csa_tree_minus_32_17_groupi_g240(.A
       (csa_tree_minus_32_17_groupi_n_77), .B
       (csa_tree_minus_32_17_groupi_n_107), .Y (n_21));
  AOI21X1 csa_tree_minus_32_17_groupi_g241(.A0
       (csa_tree_minus_32_17_groupi_n_57), .A1
       (csa_tree_minus_32_17_groupi_n_116), .B0
       (csa_tree_minus_32_17_groupi_n_103), .Y
       (csa_tree_minus_32_17_groupi_n_108));
  AOI21XL csa_tree_minus_32_17_groupi_g242(.A0
       (csa_tree_minus_32_17_groupi_n_72), .A1
       (csa_tree_minus_32_17_groupi_n_104), .B0
       (csa_tree_minus_32_17_groupi_n_134), .Y
       (csa_tree_minus_32_17_groupi_n_107));
  XNOR2X1 csa_tree_minus_32_17_groupi_g243(.A
       (csa_tree_minus_32_17_groupi_n_104), .B
       (csa_tree_minus_32_17_groupi_n_78), .Y (n_20));
  NAND2X4 csa_tree_minus_32_17_groupi_g244(.A
       (csa_tree_minus_32_17_groupi_n_105), .B
       (csa_tree_minus_32_17_groupi_n_97), .Y
       (csa_tree_minus_32_17_groupi_n_106));
  NAND2X2 csa_tree_minus_32_17_groupi_g245(.A
       (csa_tree_minus_32_17_groupi_n_104), .B
       (csa_tree_minus_32_17_groupi_n_81), .Y
       (csa_tree_minus_32_17_groupi_n_105));
  ADDFHX1 csa_tree_minus_32_17_groupi_g246(.A
       (csa_tree_minus_32_17_groupi_n_2), .B (n_52), .CI
       (csa_tree_minus_32_17_groupi_n_101), .CO
       (csa_tree_minus_32_17_groupi_n_104), .S (n_19));
  OAI21X1 csa_tree_minus_32_17_groupi_g247(.A0
       (csa_tree_minus_32_17_groupi_n_3), .A1
       (csa_tree_minus_32_17_groupi_n_95), .B0
       (csa_tree_minus_32_17_groupi_n_61), .Y
       (csa_tree_minus_32_17_groupi_n_103));
  OAI21X2 csa_tree_minus_32_17_groupi_g248(.A0
       (csa_tree_minus_32_17_groupi_n_56), .A1
       (csa_tree_minus_32_17_groupi_n_95), .B0
       (csa_tree_minus_32_17_groupi_n_99), .Y
       (csa_tree_minus_32_17_groupi_n_102));
  ADDHX1 csa_tree_minus_32_17_groupi_g249(.A
       (csa_tree_minus_32_17_groupi_n_1), .B
       (csa_tree_minus_32_17_groupi_n_0), .CO
       (csa_tree_minus_32_17_groupi_n_101), .S (n_18));
  NOR2BX1 csa_tree_minus_32_17_groupi_g250(.AN
       (csa_tree_minus_32_17_groupi_n_84), .B
       (csa_tree_minus_32_17_groupi_n_56), .Y
       (csa_tree_minus_32_17_groupi_n_100));
  AOI2BB1X1 csa_tree_minus_32_17_groupi_g252(.A0N
       (csa_tree_minus_32_17_groupi_n_61), .A1N
       (csa_tree_minus_32_17_groupi_n_66), .B0
       (csa_tree_minus_32_17_groupi_n_75), .Y
       (csa_tree_minus_32_17_groupi_n_99));
  OA21X1 csa_tree_minus_32_17_groupi_g253(.A0
       (csa_tree_minus_32_17_groupi_n_69), .A1
       (csa_tree_minus_32_17_groupi_n_63), .B0
       (csa_tree_minus_32_17_groupi_n_65), .Y
       (csa_tree_minus_32_17_groupi_n_98));
  NOR2X2 csa_tree_minus_32_17_groupi_g254(.A
       (csa_tree_minus_32_17_groupi_n_64), .B
       (csa_tree_minus_32_17_groupi_n_82), .Y
       (csa_tree_minus_32_17_groupi_n_97));
  INVX1 csa_tree_minus_32_17_groupi_g255(.A
       (csa_tree_minus_32_17_groupi_n_95), .Y
       (csa_tree_minus_32_17_groupi_n_96));
  NOR2X4 csa_tree_minus_32_17_groupi_g256(.A
       (csa_tree_minus_32_17_groupi_n_76), .B
       (csa_tree_minus_32_17_groupi_n_83), .Y
       (csa_tree_minus_32_17_groupi_n_95));
  INVX1 csa_tree_minus_32_17_groupi_g257(.A
       (csa_tree_minus_32_17_groupi_n_93), .Y
       (csa_tree_minus_32_17_groupi_n_94));
  INVXL csa_tree_minus_32_17_groupi_g258(.A
       (csa_tree_minus_32_17_groupi_n_91), .Y
       (csa_tree_minus_32_17_groupi_n_92));
  INVX1 csa_tree_minus_32_17_groupi_g259(.A
       (csa_tree_minus_32_17_groupi_n_89), .Y
       (csa_tree_minus_32_17_groupi_n_90));
  INVX1 csa_tree_minus_32_17_groupi_g260(.A
       (csa_tree_minus_32_17_groupi_n_87), .Y
       (csa_tree_minus_32_17_groupi_n_88));
  INVX1 csa_tree_minus_32_17_groupi_g261(.A
       (csa_tree_minus_32_17_groupi_n_85), .Y
       (csa_tree_minus_32_17_groupi_n_86));
  NOR2X2 csa_tree_minus_32_17_groupi_g263(.A
       (csa_tree_minus_32_17_groupi_n_67), .B
       (csa_tree_minus_32_17_groupi_n_62), .Y
       (csa_tree_minus_32_17_groupi_n_83));
  NOR2BX1 csa_tree_minus_32_17_groupi_g264(.AN
       (csa_tree_minus_32_17_groupi_n_65), .B
       (csa_tree_minus_32_17_groupi_n_63), .Y
       (csa_tree_minus_32_17_groupi_n_93));
  NOR2BX1 csa_tree_minus_32_17_groupi_g265(.AN
       (csa_tree_minus_32_17_groupi_n_69), .B
       (csa_tree_minus_32_17_groupi_n_4), .Y
       (csa_tree_minus_32_17_groupi_n_91));
  NOR2X1 csa_tree_minus_32_17_groupi_g266(.A
       (csa_tree_minus_32_17_groupi_n_75), .B
       (csa_tree_minus_32_17_groupi_n_123), .Y
       (csa_tree_minus_32_17_groupi_n_89));
  NOR2X1 csa_tree_minus_32_17_groupi_g267(.A
       (csa_tree_minus_32_17_groupi_n_76), .B
       (csa_tree_minus_32_17_groupi_n_62), .Y
       (csa_tree_minus_32_17_groupi_n_87));
  NAND2BX1 csa_tree_minus_32_17_groupi_g268(.AN
       (csa_tree_minus_32_17_groupi_n_3), .B
       (csa_tree_minus_32_17_groupi_n_61), .Y
       (csa_tree_minus_32_17_groupi_n_85));
  NOR2X1 csa_tree_minus_32_17_groupi_g269(.A
       (csa_tree_minus_32_17_groupi_n_62), .B
       (csa_tree_minus_32_17_groupi_n_59), .Y
       (csa_tree_minus_32_17_groupi_n_84));
  NOR2X1 csa_tree_minus_32_17_groupi_g270(.A
       (csa_tree_minus_32_17_groupi_n_73), .B
       (csa_tree_minus_32_17_groupi_n_70), .Y
       (csa_tree_minus_32_17_groupi_n_82));
  NOR2X1 csa_tree_minus_32_17_groupi_g271(.A
       (csa_tree_minus_32_17_groupi_n_71), .B
       (csa_tree_minus_32_17_groupi_n_70), .Y
       (csa_tree_minus_32_17_groupi_n_81));
  OR2XL csa_tree_minus_32_17_groupi_g272(.A
       (csa_tree_minus_32_17_groupi_n_63), .B
       (csa_tree_minus_32_17_groupi_n_4), .Y
       (csa_tree_minus_32_17_groupi_n_80));
  NOR2XL csa_tree_minus_32_17_groupi_g273(.A
       (csa_tree_minus_32_17_groupi_n_68), .B
       (csa_tree_minus_32_17_groupi_n_59), .Y
       (csa_tree_minus_32_17_groupi_n_79));
  NAND2XL csa_tree_minus_32_17_groupi_g274(.A
       (csa_tree_minus_32_17_groupi_n_72), .B
       (csa_tree_minus_32_17_groupi_n_133), .Y
       (csa_tree_minus_32_17_groupi_n_78));
  NOR2XL csa_tree_minus_32_17_groupi_g276(.A
       (csa_tree_minus_32_17_groupi_n_64), .B
       (csa_tree_minus_32_17_groupi_n_70), .Y
       (csa_tree_minus_32_17_groupi_n_77));
  INVX1 csa_tree_minus_32_17_groupi_g278(.A
       (csa_tree_minus_32_17_groupi_n_71), .Y
       (csa_tree_minus_32_17_groupi_n_72));
  INVX1 csa_tree_minus_32_17_groupi_g279(.A
       (csa_tree_minus_32_17_groupi_n_67), .Y
       (csa_tree_minus_32_17_groupi_n_68));
  AND2X1 csa_tree_minus_32_17_groupi_g281(.A
       (csa_tree_minus_32_17_groupi_n_16), .B
       (csa_tree_minus_32_17_groupi_n_115), .Y
       (csa_tree_minus_32_17_groupi_n_76));
  AND2X1 csa_tree_minus_32_17_groupi_g282(.A
       (csa_tree_minus_32_17_groupi_n_18), .B
       (csa_tree_minus_32_17_groupi_n_10), .Y
       (csa_tree_minus_32_17_groupi_n_75));
  NAND2BX1 csa_tree_minus_32_17_groupi_g283(.AN (n_52), .B
       (csa_tree_minus_32_17_groupi_n_5), .Y
       (csa_tree_minus_32_17_groupi_n_73));
  NOR2BX1 csa_tree_minus_32_17_groupi_g284(.AN (n_52), .B
       (csa_tree_minus_32_17_groupi_n_5), .Y
       (csa_tree_minus_32_17_groupi_n_71));
  NOR2X2 csa_tree_minus_32_17_groupi_g285(.A
       (csa_tree_minus_32_17_groupi_n_14), .B
       (csa_tree_minus_32_17_groupi_n_6), .Y
       (csa_tree_minus_32_17_groupi_n_70));
  NAND2X1 csa_tree_minus_32_17_groupi_g286(.A
       (csa_tree_minus_32_17_groupi_n_19), .B
       (csa_tree_minus_32_17_groupi_n_11), .Y
       (csa_tree_minus_32_17_groupi_n_69));
  NAND2X2 csa_tree_minus_32_17_groupi_g287(.A
       (csa_tree_minus_32_17_groupi_n_15), .B
       (csa_tree_minus_32_17_groupi_n_7), .Y
       (csa_tree_minus_32_17_groupi_n_67));
  NOR2X1 csa_tree_minus_32_17_groupi_g288(.A
       (csa_tree_minus_32_17_groupi_n_18), .B
       (csa_tree_minus_32_17_groupi_n_10), .Y
       (csa_tree_minus_32_17_groupi_n_66));
  INVX1 csa_tree_minus_32_17_groupi_g289(.A
       (csa_tree_minus_32_17_groupi_n_59), .Y
       (csa_tree_minus_32_17_groupi_n_60));
  NAND2XL csa_tree_minus_32_17_groupi_g290(.A
       (csa_tree_minus_32_17_groupi_n_20), .B
       (csa_tree_minus_32_17_groupi_n_12), .Y
       (csa_tree_minus_32_17_groupi_n_65));
  AND2XL csa_tree_minus_32_17_groupi_g291(.A
       (csa_tree_minus_32_17_groupi_n_14), .B
       (csa_tree_minus_32_17_groupi_n_6), .Y
       (csa_tree_minus_32_17_groupi_n_64));
  NOR2X1 csa_tree_minus_32_17_groupi_g292(.A
       (csa_tree_minus_32_17_groupi_n_20), .B
       (csa_tree_minus_32_17_groupi_n_12), .Y
       (csa_tree_minus_32_17_groupi_n_63));
  NOR2X2 csa_tree_minus_32_17_groupi_g293(.A
       (csa_tree_minus_32_17_groupi_n_16), .B
       (csa_tree_minus_32_17_groupi_n_115), .Y
       (csa_tree_minus_32_17_groupi_n_62));
  NAND2X1 csa_tree_minus_32_17_groupi_g294(.A
       (csa_tree_minus_32_17_groupi_n_17), .B
       (csa_tree_minus_32_17_groupi_n_114), .Y
       (csa_tree_minus_32_17_groupi_n_61));
  NOR2X2 csa_tree_minus_32_17_groupi_g295(.A
       (csa_tree_minus_32_17_groupi_n_15), .B
       (csa_tree_minus_32_17_groupi_n_7), .Y
       (csa_tree_minus_32_17_groupi_n_59));
  NOR2X1 csa_tree_minus_32_17_groupi_g296(.A
       (csa_tree_minus_32_17_groupi_n_19), .B
       (csa_tree_minus_32_17_groupi_n_11), .Y
       (csa_tree_minus_32_17_groupi_n_4));
  NOR2X2 csa_tree_minus_32_17_groupi_g297(.A
       (csa_tree_minus_32_17_groupi_n_17), .B
       (csa_tree_minus_32_17_groupi_n_114), .Y
       (csa_tree_minus_32_17_groupi_n_3));
  INVX1 csa_tree_minus_32_17_groupi_g298(.A
       (csa_tree_minus_32_17_groupi_n_13), .Y
       (csa_tree_minus_32_17_groupi_n_58));
  NOR2BX1 csa_tree_minus_32_17_groupi_g198(.AN
       (csa_tree_minus_32_17_groupi_n_120), .B
       (csa_tree_minus_32_17_groupi_n_3), .Y
       (csa_tree_minus_32_17_groupi_n_57));
  OR2X1 csa_tree_minus_32_17_groupi_g299(.A
       (csa_tree_minus_32_17_groupi_n_66), .B
       (csa_tree_minus_32_17_groupi_n_3), .Y
       (csa_tree_minus_32_17_groupi_n_56));
  CLKXOR2X1 csa_tree_minus_32_17_groupi_g300(.A (n_57), .B (n_46), .Y
       (csa_tree_minus_32_17_groupi_n_114));
  XOR2XL csa_tree_minus_32_17_groupi_g301(.A (n_56), .B (n_45), .Y
       (csa_tree_minus_32_17_groupi_n_115));
  BUFX3 csa_tree_minus_32_17_groupi_fopt(.A
       (csa_tree_minus_32_17_groupi_n_106), .Y
       (csa_tree_minus_32_17_groupi_n_116));
  INVXL csa_tree_minus_32_17_groupi_fopt302(.A
       (csa_tree_minus_32_17_groupi_n_121), .Y
       (csa_tree_minus_32_17_groupi_n_119));
  INVXL csa_tree_minus_32_17_groupi_fopt303(.A
       (csa_tree_minus_32_17_groupi_n_121), .Y
       (csa_tree_minus_32_17_groupi_n_120));
  INVXL csa_tree_minus_32_17_groupi_fopt304(.A
       (csa_tree_minus_32_17_groupi_n_84), .Y
       (csa_tree_minus_32_17_groupi_n_121));
  BUFX2 csa_tree_minus_32_17_groupi_fopt305(.A
       (csa_tree_minus_32_17_groupi_n_66), .Y
       (csa_tree_minus_32_17_groupi_n_123));
  BUFX2 csa_tree_minus_32_17_groupi_fopt306(.A (n_47), .Y
       (csa_tree_minus_32_17_groupi_n_125));
  CLKINVX1 csa_tree_minus_32_17_groupi_fopt307(.A (n_43), .Y
       (csa_tree_minus_32_17_groupi_n_127));
  INVXL csa_tree_minus_32_17_groupi_fopt312(.A
       (csa_tree_minus_32_17_groupi_n_134), .Y
       (csa_tree_minus_32_17_groupi_n_133));
  INVXL csa_tree_minus_32_17_groupi_fopt313(.A
       (csa_tree_minus_32_17_groupi_n_73), .Y
       (csa_tree_minus_32_17_groupi_n_134));
  ADDFHXL csa_tree_add_29_2_g386(.A (in2[7]), .B (in3[7]), .CI
       (in1[7]), .CO (n_59), .S (n_47));
  ADDFHXL csa_tree_add_29_2_g387(.A (in2[6]), .B (in3[6]), .CI
       (in1[6]), .CO (n_58), .S (n_46));
  ADDFHXL csa_tree_add_29_2_g388(.A (in2[4]), .B (in3[4]), .CI
       (in1[4]), .CO (n_56), .S (n_44));
  ADDFHXL csa_tree_add_29_2_g389(.A (in2[2]), .B (in3[2]), .CI
       (in1[2]), .CO (n_54), .S (n_42));
  ADDFHXL csa_tree_add_29_2_g390(.A (in2[1]), .B (in3[1]), .CI
       (in1[1]), .CO (n_53), .S (n_41));
  ADDFHXL csa_tree_add_29_2_g391(.A (in1[3]), .B (in2[3]), .CI
       (in3[3]), .CO (n_55), .S (n_43));
  ADDFHXL csa_tree_add_29_2_g392(.A (in3[5]), .B (in2[5]), .CI
       (in1[5]), .CO (n_57), .S (n_45));
  NAND2BX1 csa_tree_add_29_2_g393(.AN (csa_tree_add_29_2_n_7), .B
       (n_49), .Y (n_48));
  NOR2XL csa_tree_add_29_2_g394(.A (in2[8]), .B
       (csa_tree_add_29_2_n_0), .Y (csa_tree_add_29_2_n_7));
  NAND2X1 csa_tree_add_29_2_g395(.A (in2[8]), .B
       (csa_tree_add_29_2_n_0), .Y (n_49));
  ADDHX1 csa_tree_add_29_2_g396(.A (in1[0]), .B (in2[0]), .CO (n_52),
       .S (n_40));
  NOR2X1 csa_tree_add_29_2_g398(.A (in1[8]), .B (in3[8]), .Y (n_60));
  XNOR2X1 csa_tree_add_29_2_g2(.A (in1[8]), .B (in3[8]), .Y
       (csa_tree_add_29_2_n_0));
endmodule

