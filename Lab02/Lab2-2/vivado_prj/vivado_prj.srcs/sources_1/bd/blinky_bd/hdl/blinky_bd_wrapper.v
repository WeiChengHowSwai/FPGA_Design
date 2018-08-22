//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Aug 22 21:30:59 2018
//Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
//Command     : generate_target blinky_bd_wrapper.bd
//Design      : blinky_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module blinky_bd_wrapper
   (clk,
    led,
    rst,
    sw);
  input clk;
  output [3:0]led;
  input rst;
  input [1:0]sw;

  wire clk;
  wire [3:0]led;
  wire rst;
  wire [1:0]sw;

  blinky_bd blinky_bd_i
       (.clk(clk),
        .led(led),
        .rst(rst),
        .sw(sw));
endmodule
