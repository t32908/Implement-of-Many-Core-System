`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:28:27 CST (May  5 2021 21:28:27 UTC)

module Gaussian_Blur_Minus_2U_2S_1(in1, out1);
  input [1:0] in1;
  output [1:0] out1;
  wire [1:0] in1;
  wire [1:0] out1;
  wire minus_20_2_n_0;
  assign out1[0] = in1[0];
  MXI2X1 minus_20_2_g22(.A (minus_20_2_n_0), .B (in1[1]), .S0 (in1[0]),
       .Y (out1[1]));
  CLKINVX4 minus_20_2_g23(.A (in1[1]), .Y (minus_20_2_n_0));
endmodule

