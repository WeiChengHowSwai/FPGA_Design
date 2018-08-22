// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 22 21:31:34 2018
// Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blinky_bd_blinky_0_0_sim_netlist.v
// Design      : blinky_bd_blinky_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blinky
   (clk,
    rst,
    sw,
    led);
  input clk;
  input rst;
  input [1:0]sw;
  output [3:0]led;

  wire clk;
  wire [3:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire rst;
  wire [1:0]sw;

  LUT6 #(
    .INIT(64'h202020202020202D)) 
    \led[0]_i_1 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(led[1]),
        .I3(led[0]),
        .I4(led[2]),
        .I5(led[3]),
        .O(\led[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF2D0)) 
    \led[1]_i_1 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(led[0]),
        .I3(led[2]),
        .O(\led[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF2D0)) 
    \led[2]_i_1 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(led[1]),
        .I3(led[3]),
        .O(\led[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD0000DDDD0002)) 
    \led[3]_i_1 
       (.I0(sw[1]),
        .I1(sw[0]),
        .I2(led[1]),
        .I3(led[0]),
        .I4(led[2]),
        .I5(led[3]),
        .O(\led[3]_i_1_n_0 ));
  FDCE \led_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]));
  FDCE \led_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]));
  FDCE \led_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]));
  FDCE \led_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\led[3]_i_1_n_0 ),
        .Q(led[3]));
endmodule

(* CHECK_LICENSE_TYPE = "blinky_bd_blinky_0_0,blinky,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "blinky,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    sw,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN blinky_bd_divider_0_0_clk_div" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;
  input [1:0]sw;
  output [3:0]led;

  wire clk;
  wire [3:0]led;
  wire rst;
  wire [1:0]sw;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blinky inst
       (.clk(clk),
        .led(led),
        .rst(rst),
        .sw(sw));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
