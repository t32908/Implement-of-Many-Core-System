`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:33:25 CST (May  5 2021 21:33:25 UTC)

module Gaussian_Blur_Nei254s32_4(in1, out1);
  input [31:0] in1;
  output out1;
  wire [31:0] in1;
  wire out1;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9;
  NAND3BXL g103(.AN (n_3), .B (n_9), .C (n_4), .Y (out1));
  NOR4X1 g104(.A (n_7), .B (n_8), .C (in1[30]), .D (in1[29]), .Y (n_9));
  NAND3BXL g105(.AN (in1[31]), .B (in1[7]), .C (n_1), .Y (n_8));
  NAND4XL g106(.A (n_5), .B (n_0), .C (n_2), .D (n_6), .Y (n_7));
  NOR4X1 g113(.A (in1[12]), .B (in1[11]), .C (in1[10]), .D (in1[9]), .Y
       (n_6));
  NOR4X1 g109(.A (in1[24]), .B (in1[23]), .C (in1[22]), .D (in1[21]),
       .Y (n_5));
  NOR4BBX1 g107(.AN (in1[2]), .BN (in1[1]), .C (in1[8]), .D (in1[0]),
       .Y (n_4));
  NAND4XL g108(.A (in1[6]), .B (in1[5]), .C (in1[4]), .D (in1[3]), .Y
       (n_3));
  NOR4X1 g111(.A (in1[16]), .B (in1[15]), .C (in1[14]), .D (in1[13]),
       .Y (n_2));
  NOR4X1 g110(.A (in1[28]), .B (in1[27]), .C (in1[26]), .D (in1[25]),
       .Y (n_1));
  NOR4X1 g112(.A (in1[20]), .B (in1[19]), .C (in1[18]), .D (in1[17]),
       .Y (n_0));
endmodule

