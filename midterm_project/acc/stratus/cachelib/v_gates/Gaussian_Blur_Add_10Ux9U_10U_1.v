`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:28:45 CST (May  5 2021 21:28:45 UTC)

module Gaussian_Blur_Add_10Ux9U_10U_1(in2, in1, out1);
  input [9:0] in2;
  input [8:0] in1;
  output [9:0] out1;
  wire [9:0] in2;
  wire [8:0] in1;
  wire [9:0] out1;
  wire add_23_2_n_1, add_23_2_n_2, add_23_2_n_3, add_23_2_n_4,
       add_23_2_n_5, add_23_2_n_9, add_23_2_n_13, add_23_2_n_15;
  wire add_23_2_n_16, add_23_2_n_17, add_23_2_n_18, add_23_2_n_19,
       add_23_2_n_20, add_23_2_n_21, add_23_2_n_22, add_23_2_n_23;
  wire add_23_2_n_24, add_23_2_n_25, add_23_2_n_26, add_23_2_n_27,
       add_23_2_n_28, add_23_2_n_29, add_23_2_n_30, add_23_2_n_31;
  wire add_23_2_n_32, add_23_2_n_33, add_23_2_n_34, add_23_2_n_35,
       add_23_2_n_36, add_23_2_n_37, add_23_2_n_38, add_23_2_n_39;
  wire add_23_2_n_40, add_23_2_n_41, add_23_2_n_42, add_23_2_n_43,
       add_23_2_n_44, add_23_2_n_45, add_23_2_n_46, add_23_2_n_47;
  wire add_23_2_n_48, add_23_2_n_49, add_23_2_n_50, add_23_2_n_51,
       add_23_2_n_52, add_23_2_n_53, add_23_2_n_54, add_23_2_n_55;
  wire add_23_2_n_56, add_23_2_n_57, add_23_2_n_58, add_23_2_n_59,
       add_23_2_n_60, add_23_2_n_61, add_23_2_n_63, add_23_2_n_84;
  wire add_23_2_n_86, add_23_2_n_87, add_23_2_n_88, add_23_2_n_91,
       add_23_2_n_94, add_23_2_n_97, add_23_2_n_98, add_23_2_n_99;
  MXI2X1 add_23_2_g200(.A (in2[9]), .B (add_23_2_n_15), .S0
       (add_23_2_n_63), .Y (out1[9]));
  NOR2BX1 add_23_2_g204(.AN (add_23_2_n_22), .B (add_23_2_n_61), .Y
       (add_23_2_n_63));
  MXI2XL add_23_2_g205(.A (add_23_2_n_33), .B (add_23_2_n_34), .S0
       (add_23_2_n_84), .Y (out1[8]));
  NOR2X1 add_23_2_g206(.A (add_23_2_n_23), .B (add_23_2_n_60), .Y
       (add_23_2_n_61));
  NOR2X1 add_23_2_g207(.A (add_23_2_n_50), .B (add_23_2_n_56), .Y
       (add_23_2_n_60));
  NOR2BX1 add_23_2_g209(.AN (add_23_2_n_18), .B (add_23_2_n_57), .Y
       (add_23_2_n_59));
  NOR2X1 add_23_2_g212(.A (add_23_2_n_51), .B (add_23_2_n_55), .Y
       (add_23_2_n_58));
  NOR2X1 add_23_2_g214(.A (add_23_2_n_17), .B (add_23_2_n_53), .Y
       (add_23_2_n_57));
  NOR2X2 add_23_2_g215(.A (add_23_2_n_47), .B (add_23_2_n_53), .Y
       (add_23_2_n_56));
  NOR2X1 add_23_2_g216(.A (add_23_2_n_46), .B (add_23_2_n_53), .Y
       (add_23_2_n_55));
  NOR2BX1 add_23_2_g217(.AN (add_23_2_n_24), .B (add_23_2_n_5), .Y
       (add_23_2_n_54));
  NOR2X4 add_23_2_g219(.A (add_23_2_n_44), .B (add_23_2_n_52), .Y
       (add_23_2_n_53));
  NOR2X4 add_23_2_g221(.A (add_23_2_n_4), .B (add_23_2_n_49), .Y
       (add_23_2_n_52));
  OAI21X1 add_23_2_g222(.A0 (add_23_2_n_16), .A1 (add_23_2_n_45), .B0
       (add_23_2_n_25), .Y (add_23_2_n_51));
  OAI21X1 add_23_2_g223(.A0 (add_23_2_n_41), .A1 (add_23_2_n_45), .B0
       (add_23_2_n_43), .Y (add_23_2_n_50));
  NOR2X2 add_23_2_g224(.A (add_23_2_n_1), .B (add_23_2_n_48), .Y
       (add_23_2_n_49));
  NOR2X2 add_23_2_g226(.A (add_23_2_n_21), .B (add_23_2_n_27), .Y
       (add_23_2_n_48));
  NAND2X1 add_23_2_g228(.A (add_23_2_n_40), .B (add_23_2_n_37), .Y
       (add_23_2_n_47));
  NAND2BX1 add_23_2_g229(.AN (add_23_2_n_16), .B (add_23_2_n_37), .Y
       (add_23_2_n_46));
  NOR2X1 add_23_2_g231(.A (add_23_2_n_2), .B (add_23_2_n_30), .Y
       (add_23_2_n_45));
  OAI21X1 add_23_2_g232(.A0 (add_23_2_n_24), .A1 (add_23_2_n_19), .B0
       (add_23_2_n_28), .Y (add_23_2_n_44));
  AOI2BB1X1 add_23_2_g233(.A0N (add_23_2_n_25), .A1N (add_23_2_n_20),
       .B0 (add_23_2_n_29), .Y (add_23_2_n_43));
  INVX1 add_23_2_g235(.A (add_23_2_n_40), .Y (add_23_2_n_41));
  NOR2X1 add_23_2_g239(.A (add_23_2_n_1), .B (add_23_2_n_27), .Y
       (add_23_2_n_36));
  NOR2X1 add_23_2_g240(.A (add_23_2_n_29), .B (add_23_2_n_20), .Y
       (add_23_2_n_42));
  NOR2X1 add_23_2_g241(.A (add_23_2_n_20), .B (add_23_2_n_16), .Y
       (add_23_2_n_40));
  NAND2BX1 add_23_2_g242(.AN (add_23_2_n_16), .B (add_23_2_n_25), .Y
       (add_23_2_n_39));
  NOR2X1 add_23_2_g243(.A (add_23_2_n_2), .B (add_23_2_n_26), .Y
       (add_23_2_n_38));
  NOR2X1 add_23_2_g244(.A (add_23_2_n_26), .B (add_23_2_n_17), .Y
       (add_23_2_n_37));
  INVX1 add_23_2_g246(.A (add_23_2_n_33), .Y (add_23_2_n_34));
  NOR2X1 add_23_2_g250(.A (add_23_2_n_18), .B (add_23_2_n_26), .Y
       (add_23_2_n_30));
  NAND2BX1 add_23_2_g252(.AN (add_23_2_n_17), .B (add_23_2_n_18), .Y
       (add_23_2_n_35));
  NOR2BX1 add_23_2_g253(.AN (add_23_2_n_22), .B (add_23_2_n_23), .Y
       (add_23_2_n_33));
  NOR2BX1 add_23_2_g254(.AN (add_23_2_n_28), .B (add_23_2_n_94), .Y
       (add_23_2_n_32));
  NAND2X1 add_23_2_g255(.A (add_23_2_n_24), .B (add_23_2_n_97), .Y
       (add_23_2_n_31));
  AND2X1 add_23_2_g257(.A (in2[7]), .B (in1[7]), .Y (add_23_2_n_29));
  NAND2X1 add_23_2_g258(.A (in2[3]), .B (in1[3]), .Y (add_23_2_n_28));
  NOR2X2 add_23_2_g259(.A (in2[1]), .B (in1[1]), .Y (add_23_2_n_27));
  NOR2X2 add_23_2_g261(.A (in2[5]), .B (in1[5]), .Y (add_23_2_n_26));
  NAND2X1 add_23_2_g263(.A (in2[6]), .B (in1[6]), .Y (add_23_2_n_25));
  NAND2X2 add_23_2_g264(.A (in2[2]), .B (in1[2]), .Y (add_23_2_n_24));
  NOR2X1 add_23_2_g266(.A (in2[8]), .B (in1[8]), .Y (add_23_2_n_23));
  NAND2X1 add_23_2_g267(.A (in2[8]), .B (in1[8]), .Y (add_23_2_n_22));
  NAND2X2 add_23_2_g269(.A (in2[0]), .B (in1[0]), .Y (add_23_2_n_21));
  NOR2X1 add_23_2_g270(.A (in2[7]), .B (in1[7]), .Y (add_23_2_n_20));
  NOR2X4 add_23_2_g271(.A (in2[3]), .B (in1[3]), .Y (add_23_2_n_19));
  NAND2X1 add_23_2_g272(.A (in2[4]), .B (in1[4]), .Y (add_23_2_n_18));
  NOR2X1 add_23_2_g273(.A (in2[4]), .B (in1[4]), .Y (add_23_2_n_17));
  NOR2X1 add_23_2_g274(.A (in2[6]), .B (in1[6]), .Y (add_23_2_n_16));
  INVX1 add_23_2_g282(.A (in2[9]), .Y (add_23_2_n_15));
  XNOR2X1 add_23_2_g2(.A (add_23_2_n_21), .B (add_23_2_n_36), .Y
       (out1[1]));
  NOR2BX1 add_23_2_g283(.AN (add_23_2_n_45), .B (add_23_2_n_9), .Y
       (add_23_2_n_13));
  XNOR2XL add_23_2_g284(.A (add_23_2_n_42), .B (add_23_2_n_58), .Y
       (out1[7]));
  CLKXOR2X1 add_23_2_g285(.A (add_23_2_n_39), .B (add_23_2_n_13), .Y
       (out1[6]));
  XNOR2XL add_23_2_g286(.A (add_23_2_n_38), .B (add_23_2_n_59), .Y
       (out1[5]));
  NOR2BX1 add_23_2_g287(.AN (add_23_2_n_37), .B (add_23_2_n_53), .Y
       (add_23_2_n_9));
  CLKXOR2X1 add_23_2_g288(.A (add_23_2_n_35), .B (add_23_2_n_91), .Y
       (out1[4]));
  XNOR2X1 add_23_2_g289(.A (add_23_2_n_32), .B (add_23_2_n_54), .Y
       (out1[3]));
  CLKXOR2X1 add_23_2_g290(.A (add_23_2_n_31), .B (add_23_2_n_86), .Y
       (out1[2]));
  NOR2BX1 add_23_2_g291(.AN (add_23_2_n_98), .B (add_23_2_n_87), .Y
       (add_23_2_n_5));
  NAND2BX4 add_23_2_g292(.AN (add_23_2_n_19), .B (add_23_2_n_3), .Y
       (add_23_2_n_4));
  OR2X6 add_23_2_g293(.A (in2[2]), .B (in1[2]), .Y (add_23_2_n_3));
  AND2X1 add_23_2_g294(.A (in2[5]), .B (in1[5]), .Y (add_23_2_n_2));
  CLKAND2X3 add_23_2_g295(.A (in2[1]), .B (in1[1]), .Y (add_23_2_n_1));
  CLKXOR2X1 add_23_2_g296(.A (in2[0]), .B (in1[0]), .Y (out1[0]));
  BUFX2 add_23_2_fopt(.A (add_23_2_n_60), .Y (add_23_2_n_84));
  INVXL add_23_2_fopt297(.A (add_23_2_n_88), .Y (add_23_2_n_86));
  INVXL add_23_2_fopt298(.A (add_23_2_n_88), .Y (add_23_2_n_87));
  INVXL add_23_2_fopt299(.A (add_23_2_n_49), .Y (add_23_2_n_88));
  BUFX2 add_23_2_fopt300(.A (add_23_2_n_53), .Y (add_23_2_n_91));
  BUFX2 add_23_2_fopt301(.A (add_23_2_n_19), .Y (add_23_2_n_94));
  INVXL add_23_2_fopt302(.A (add_23_2_n_99), .Y (add_23_2_n_97));
  INVXL add_23_2_fopt303(.A (add_23_2_n_99), .Y (add_23_2_n_98));
  INVXL add_23_2_fopt304(.A (add_23_2_n_3), .Y (add_23_2_n_99));
endmodule


