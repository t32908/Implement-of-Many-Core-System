`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:29:00 CST (May  5 2021 21:29:00 UTC)

module Gaussian_Blur_Equal_1Ux1U_1U_1(in2, in1, out1);
  input in2, in1;
  output out1;
  wire in2, in1;
  wire out1;
  wire n_0;
  MXI2X1 g10(.A (in1), .B (n_0), .S0 (in2), .Y (out1));
  CLKINVX4 g11(.A (in1), .Y (n_0));
endmodule

