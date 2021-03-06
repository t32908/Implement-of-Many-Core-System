`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:27:00 CST (May  5 2021 21:27:00 UTC)

module Gaussian_Blur_Add_10Sx9S_11S_4(in2, in1, out1);
  input [9:0] in2;
  input [8:0] in1;
  output [10:0] out1;
  wire [9:0] in2;
  wire [8:0] in1;
  wire [10:0] out1;
  wire add_23_2_n_0, add_23_2_n_1, add_23_2_n_2, add_23_2_n_3,
       add_23_2_n_4, add_23_2_n_5, add_23_2_n_6, add_23_2_n_7;
  wire add_23_2_n_8, add_23_2_n_9, add_23_2_n_10, add_23_2_n_11,
       add_23_2_n_12, add_23_2_n_13, add_23_2_n_14, add_23_2_n_15;
  wire add_23_2_n_16, add_23_2_n_17, add_23_2_n_19, add_23_2_n_20,
       add_23_2_n_22, add_23_2_n_25, add_23_2_n_26, add_23_2_n_28;
  wire add_23_2_n_29, add_23_2_n_30, add_23_2_n_32, add_23_2_n_34,
       add_23_2_n_35, add_23_2_n_38;
  AOI21X1 add_23_2_g317(.A0 (add_23_2_n_0), .A1 (add_23_2_n_38), .B0
       (add_23_2_n_5), .Y (out1[10]));
  XNOR2X1 add_23_2_g318(.A (add_23_2_n_10), .B (add_23_2_n_38), .Y
       (out1[9]));
  ADDFX1 add_23_2_g319(.A (add_23_2_n_34), .B (in1[8]), .CI (in2[8]),
       .CO (add_23_2_n_38), .S (out1[8]));
  XNOR2X1 add_23_2_g320(.A (add_23_2_n_14), .B (add_23_2_n_35), .Y
       (out1[7]));
  OAI21X1 add_23_2_g321(.A0 (add_23_2_n_9), .A1 (add_23_2_n_30), .B0
       (add_23_2_n_2), .Y (add_23_2_n_35));
  OAI211X1 add_23_2_g322(.A0 (add_23_2_n_2), .A1 (add_23_2_n_4), .B0
       (add_23_2_n_32), .C0 (add_23_2_n_19), .Y (add_23_2_n_34));
  XNOR2X1 add_23_2_g323(.A (add_23_2_n_13), .B (add_23_2_n_30), .Y
       (out1[6]));
  AOI21X1 add_23_2_g324(.A0 (add_23_2_n_12), .A1 (add_23_2_n_29), .B0
       (add_23_2_n_8), .Y (add_23_2_n_32));
  XNOR2X1 add_23_2_g325(.A (add_23_2_n_11), .B (add_23_2_n_28), .Y
       (out1[5]));
  NOR2X1 add_23_2_g326(.A (add_23_2_n_16), .B (add_23_2_n_29), .Y
       (add_23_2_n_30));
  NOR2X1 add_23_2_g327(.A (add_23_2_n_6), .B (add_23_2_n_26), .Y
       (add_23_2_n_29));
  NAND2X1 add_23_2_g328(.A (add_23_2_n_1), .B (add_23_2_n_26), .Y
       (add_23_2_n_28));
  XNOR2X1 add_23_2_g329(.A (add_23_2_n_15), .B (add_23_2_n_25), .Y
       (out1[4]));
  NAND2BX1 add_23_2_g330(.AN (add_23_2_n_3), .B (add_23_2_n_25), .Y
       (add_23_2_n_26));
  ADDFX1 add_23_2_g331(.A (add_23_2_n_22), .B (in1[3]), .CI (in2[3]),
       .CO (add_23_2_n_25), .S (out1[3]));
  ADDFX1 add_23_2_g332(.A (add_23_2_n_20), .B (in1[2]), .CI (in2[2]),
       .CO (add_23_2_n_22), .S (out1[2]));
  ADDFX1 add_23_2_g333(.A (add_23_2_n_17), .B (in1[1]), .CI (in2[1]),
       .CO (add_23_2_n_20), .S (out1[1]));
  NAND2XL add_23_2_g334(.A (add_23_2_n_12), .B (add_23_2_n_16), .Y
       (add_23_2_n_19));
  ADDHX1 add_23_2_g335(.A (in2[0]), .B (in1[0]), .CO (add_23_2_n_17),
       .S (out1[0]));
  OAI21X1 add_23_2_g336(.A0 (add_23_2_n_1), .A1 (add_23_2_n_6), .B0
       (add_23_2_n_7), .Y (add_23_2_n_16));
  NAND2BX1 add_23_2_g337(.AN (add_23_2_n_3), .B (add_23_2_n_1), .Y
       (add_23_2_n_15));
  OR2XL add_23_2_g338(.A (add_23_2_n_8), .B (add_23_2_n_4), .Y
       (add_23_2_n_14));
  NOR2BX1 add_23_2_g339(.AN (add_23_2_n_2), .B (add_23_2_n_9), .Y
       (add_23_2_n_13));
  NOR2X1 add_23_2_g340(.A (add_23_2_n_4), .B (add_23_2_n_9), .Y
       (add_23_2_n_12));
  NAND2BX1 add_23_2_g341(.AN (add_23_2_n_6), .B (add_23_2_n_7), .Y
       (add_23_2_n_11));
  NAND2BX1 add_23_2_g342(.AN (add_23_2_n_5), .B (add_23_2_n_0), .Y
       (add_23_2_n_10));
  NOR2X1 add_23_2_g343(.A (in2[6]), .B (in1[6]), .Y (add_23_2_n_9));
  AND2X1 add_23_2_g344(.A (in2[7]), .B (in1[7]), .Y (add_23_2_n_8));
  NAND2X1 add_23_2_g345(.A (in2[5]), .B (in1[5]), .Y (add_23_2_n_7));
  NOR2X1 add_23_2_g346(.A (in2[5]), .B (in1[5]), .Y (add_23_2_n_6));
  NOR2X1 add_23_2_g347(.A (in2[9]), .B (in1[8]), .Y (add_23_2_n_5));
  NOR2X1 add_23_2_g348(.A (in2[7]), .B (in1[7]), .Y (add_23_2_n_4));
  NOR2X1 add_23_2_g349(.A (in2[4]), .B (in1[4]), .Y (add_23_2_n_3));
  NAND2X1 add_23_2_g350(.A (in2[6]), .B (in1[6]), .Y (add_23_2_n_2));
  NAND2X1 add_23_2_g351(.A (in2[4]), .B (in1[4]), .Y (add_23_2_n_1));
  NAND2X1 add_23_2_g352(.A (in2[9]), .B (in1[8]), .Y (add_23_2_n_0));
endmodule

