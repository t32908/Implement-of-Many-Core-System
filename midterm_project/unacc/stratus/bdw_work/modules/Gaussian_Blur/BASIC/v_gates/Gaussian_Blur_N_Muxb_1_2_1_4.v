`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:52:58 CST (May  5 2021 21:52:58 UTC)

module Gaussian_Blur_N_Muxb_1_2_1_4(in3, in2, ctrl1, out1);
  input in3, in2, ctrl1;
  output out1;
  wire in3, in2, ctrl1;
  wire out1;
  MX2XL g11(.A (in3), .B (in2), .S0 (ctrl1), .Y (out1));
endmodule

