`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:27:15 CST (May  5 2021 21:27:15 UTC)

module Gaussian_Blur_N_Mux_2_2_0_4(in3, in2, ctrl1, out1);
  input [1:0] in3, in2;
  input ctrl1;
  output [1:0] out1;
  wire [1:0] in3, in2;
  wire ctrl1;
  wire [1:0] out1;
  MX2XL g21(.A (in3[1]), .B (in2[1]), .S0 (ctrl1), .Y (out1[1]));
  MX2XL g22(.A (in3[0]), .B (in2[0]), .S0 (ctrl1), .Y (out1[0]));
endmodule
