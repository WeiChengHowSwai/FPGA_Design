// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 22 21:31:35 2018
// Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/VLSILAB/Documents/GitHub/FPGA_Design/Lab02/Lab2-2/vivado_prj/vivado_prj.srcs/sources_1/bd/blinky_bd/ip/blinky_bd_divider_0_0/blinky_bd_divider_0_0_stub.v
// Design      : blinky_bd_divider_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "divider,Vivado 2018.2" *)
module blinky_bd_divider_0_0(clk, rst, clk_div)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,clk_div" */;
  input clk;
  input rst;
  output clk_div;
endmodule
