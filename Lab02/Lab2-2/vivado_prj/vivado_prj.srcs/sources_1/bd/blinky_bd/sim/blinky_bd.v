//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Aug 22 21:30:59 2018
//Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
//Command     : generate_target blinky_bd.bd
//Design      : blinky_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "blinky_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=blinky_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "blinky_bd.hwdef" *) 
module blinky_bd
   (clk,
    led,
    rst,
    sw);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN blinky_bd_clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED, LAYERED_METADATA undef" *) output [3:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_HIGH" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SW DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SW, LAYERED_METADATA undef" *) input [1:0]sw;

  wire [3:0]blinky_0_led;
  wire clk_1;
  wire divider_0_clk_div;
  wire rst_1;
  wire [1:0]sw_1;

  assign clk_1 = clk;
  assign led[3:0] = blinky_0_led;
  assign rst_1 = rst;
  assign sw_1 = sw[1:0];
  blinky_bd_blinky_0_0 blinky_0
       (.clk(divider_0_clk_div),
        .led(blinky_0_led),
        .rst(rst_1),
        .sw(sw_1));
  blinky_bd_divider_0_0 divider_0
       (.clk(clk_1),
        .clk_div(divider_0_clk_div),
        .rst(rst_1));
endmodule
