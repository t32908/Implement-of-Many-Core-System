`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:33:02 CST (May  5 2021 21:33:02 UTC)

module Gaussian_Blur_Add_10U_1_4(in1, out1);
  input [9:0] in1;
  output [9:0] out1;
  wire [9:0] in1;
  wire [9:0] out1;
  wire add_21_2_n_0, add_21_2_n_2, add_21_2_n_4, add_21_2_n_6,
       add_21_2_n_8, add_21_2_n_10, add_21_2_n_13, add_21_2_n_14;
  INVX1 g7(.A (in1[0]), .Y (out1[0]));
  XNOR2X1 add_21_2_g214(.A (in1[9]), .B (add_21_2_n_14), .Y (out1[9]));
  AO21XL add_21_2_g215(.A0 (in1[8]), .A1 (add_21_2_n_13), .B0
       (add_21_2_n_14), .Y (out1[8]));
  NOR2X1 add_21_2_g216(.A (in1[8]), .B (add_21_2_n_13), .Y
       (add_21_2_n_14));
  ADDHX1 add_21_2_g217(.A (in1[7]), .B (add_21_2_n_10), .CO
       (add_21_2_n_13), .S (out1[7]));
  ADDHX1 add_21_2_g218(.A (in1[6]), .B (add_21_2_n_8), .CO
       (add_21_2_n_10), .S (out1[6]));
  ADDHX1 add_21_2_g219(.A (in1[5]), .B (add_21_2_n_6), .CO
       (add_21_2_n_8), .S (out1[5]));
  ADDHX1 add_21_2_g220(.A (in1[4]), .B (add_21_2_n_4), .CO
       (add_21_2_n_6), .S (out1[4]));
  ADDHX1 add_21_2_g221(.A (in1[3]), .B (add_21_2_n_2), .CO
       (add_21_2_n_4), .S (out1[3]));
  ADDHX1 add_21_2_g222(.A (in1[2]), .B (add_21_2_n_0), .CO
       (add_21_2_n_2), .S (out1[2]));
  ADDHX1 add_21_2_g223(.A (in1[1]), .B (in1[0]), .CO (add_21_2_n_0), .S
       (out1[1]));
endmodule

