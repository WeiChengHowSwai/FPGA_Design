// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 22 21:31:35 2018
// Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/VLSILAB/Documents/GitHub/FPGA_Design/Lab02/Lab2-2/vivado_prj/vivado_prj.srcs/sources_1/bd/blinky_bd/ip/blinky_bd_divider_0_0/blinky_bd_divider_0_0_sim_netlist.v
// Design      : blinky_bd_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blinky_bd_divider_0_0,divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "divider,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module blinky_bd_divider_0_0
   (clk,
    rst,
    clk_div);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN blinky_bd_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_div CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_div, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN blinky_bd_divider_0_0_clk_div" *) output clk_div;

  wire clk;
  wire clk_div;
  wire rst;

  blinky_bd_divider_0_0_divider inst
       (.clk(clk),
        .clk_div(clk_div),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "divider" *) 
module blinky_bd_divider_0_0_divider
   (clk,
    rst,
    clk_div);
  input clk;
  input rst;
  output clk_div;

  wire clk;
  wire clk_div;
  wire clk_div_i_2_n_0;
  wire clk_div_i_3_n_0;
  wire clk_div_i_4_n_0;
  wire clk_div_i_5_n_0;
  wire clk_div_i_6_n_0;
  wire [25:1]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[25]_i_3_n_0 ;
  wire \cnt[25]_i_4_n_0 ;
  wire \cnt[25]_i_5_n_0 ;
  wire \cnt[25]_i_6_n_0 ;
  wire \cnt[25]_i_7_n_0 ;
  wire \cnt[25]_i_8_n_0 ;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_1 ;
  wire \cnt_reg[12]_i_2_n_2 ;
  wire \cnt_reg[12]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_1 ;
  wire \cnt_reg[20]_i_2_n_2 ;
  wire \cnt_reg[20]_i_2_n_3 ;
  wire \cnt_reg[24]_i_2_n_0 ;
  wire \cnt_reg[24]_i_2_n_1 ;
  wire \cnt_reg[24]_i_2_n_2 ;
  wire \cnt_reg[24]_i_2_n_3 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_1 ;
  wire \cnt_reg[4]_i_2_n_2 ;
  wire \cnt_reg[4]_i_2_n_3 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [25:1]data0;
  wire p_0_in;
  wire rst;
  wire [3:0]\NLW_cnt_reg[25]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[25]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    clk_div_i_1
       (.I0(\cnt_reg_n_0_[25] ),
        .I1(clk_div_i_2_n_0),
        .I2(\cnt_reg_n_0_[23] ),
        .I3(\cnt_reg_n_0_[22] ),
        .I4(\cnt_reg_n_0_[24] ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAAAAAAAA02AAAAAA)) 
    clk_div_i_2
       (.I0(clk_div_i_3_n_0),
        .I1(clk_div_i_4_n_0),
        .I2(clk_div_i_5_n_0),
        .I3(\cnt_reg_n_0_[14] ),
        .I4(\cnt_reg_n_0_[18] ),
        .I5(clk_div_i_6_n_0),
        .O(clk_div_i_2_n_0));
  LUT6 #(
    .INIT(64'h1515555515555555)) 
    clk_div_i_3
       (.I0(\cnt_reg_n_0_[21] ),
        .I1(\cnt_reg_n_0_[20] ),
        .I2(\cnt_reg_n_0_[19] ),
        .I3(\cnt_reg_n_0_[16] ),
        .I4(\cnt_reg_n_0_[18] ),
        .I5(\cnt_reg_n_0_[17] ),
        .O(clk_div_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    clk_div_i_4
       (.I0(\cnt_reg_n_0_[13] ),
        .I1(\cnt_reg_n_0_[11] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\cnt_reg_n_0_[8] ),
        .I4(\cnt_reg_n_0_[9] ),
        .O(clk_div_i_4_n_0));
  LUT6 #(
    .INIT(64'hCCC8000088880000)) 
    clk_div_i_5
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[9] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[10] ),
        .I5(\cnt_reg_n_0_[6] ),
        .O(clk_div_i_5_n_0));
  LUT5 #(
    .INIT(32'h777FFFFF)) 
    clk_div_i_6
       (.I0(\cnt_reg_n_0_[19] ),
        .I1(\cnt_reg_n_0_[15] ),
        .I2(\cnt_reg_n_0_[13] ),
        .I3(\cnt_reg_n_0_[12] ),
        .I4(\cnt_reg_n_0_[20] ),
        .O(clk_div_i_6_n_0));
  FDCE clk_div_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in),
        .Q(clk_div));
  LUT6 #(
    .INIT(64'h00000000FFFFEFFF)) 
    \cnt[0]_i_1 
       (.I0(\cnt[25]_i_3_n_0 ),
        .I1(\cnt[25]_i_4_n_0 ),
        .I2(\cnt_reg_n_0_[25] ),
        .I3(\cnt_reg_n_0_[24] ),
        .I4(\cnt[25]_i_5_n_0 ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[12]_i_1 
       (.I0(data0[12]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[13]_i_1 
       (.I0(data0[13]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[14]_i_1 
       (.I0(data0[14]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[15]_i_1 
       (.I0(data0[15]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[16]_i_1 
       (.I0(data0[16]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[17]_i_1 
       (.I0(data0[17]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[18]_i_1 
       (.I0(data0[18]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[19]_i_1 
       (.I0(data0[19]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[20]_i_1 
       (.I0(data0[20]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[20]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[21]_i_1 
       (.I0(data0[21]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[21]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[22]_i_1 
       (.I0(data0[22]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[23]_i_1 
       (.I0(data0[23]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[24]_i_1 
       (.I0(data0[24]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[24]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[25]_i_1 
       (.I0(data0[25]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[25]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \cnt[25]_i_3 
       (.I0(\cnt_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[13] ),
        .I2(\cnt_reg_n_0_[15] ),
        .I3(\cnt_reg_n_0_[10] ),
        .I4(\cnt[25]_i_6_n_0 ),
        .O(\cnt[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[25]_i_4 
       (.I0(\cnt_reg_n_0_[18] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[17] ),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(\cnt[25]_i_7_n_0 ),
        .O(\cnt[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \cnt[25]_i_5 
       (.I0(\cnt_reg_n_0_[21] ),
        .I1(\cnt_reg_n_0_[20] ),
        .I2(\cnt_reg_n_0_[23] ),
        .I3(\cnt_reg_n_0_[11] ),
        .I4(\cnt[25]_i_8_n_0 ),
        .O(\cnt[25]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[25]_i_6 
       (.I0(\cnt_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[12] ),
        .I2(\cnt_reg_n_0_[8] ),
        .I3(\cnt_reg_n_0_[9] ),
        .O(\cnt[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[25]_i_7 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .O(\cnt[25]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[25]_i_8 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[19] ),
        .I2(\cnt_reg_n_0_[16] ),
        .I3(\cnt_reg_n_0_[7] ),
        .O(\cnt[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\cnt[25]_i_3_n_0 ),
        .I2(\cnt[25]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[25] ),
        .I4(\cnt_reg_n_0_[24] ),
        .I5(\cnt[25]_i_5_n_0 ),
        .O(cnt[9]));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[10]),
        .Q(\cnt_reg_n_0_[10] ));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[11]),
        .Q(\cnt_reg_n_0_[11] ));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[12]),
        .Q(\cnt_reg_n_0_[12] ));
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\cnt_reg[12]_i_2_n_1 ,\cnt_reg[12]_i_2_n_2 ,\cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[13]),
        .Q(\cnt_reg_n_0_[13] ));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[14]),
        .Q(\cnt_reg_n_0_[14] ));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[15]),
        .Q(\cnt_reg_n_0_[15] ));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[16]),
        .Q(\cnt_reg_n_0_[16] ));
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[17]),
        .Q(\cnt_reg_n_0_[17] ));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[18]),
        .Q(\cnt_reg_n_0_[18] ));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[19]),
        .Q(\cnt_reg_n_0_[19] ));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[20]),
        .Q(\cnt_reg_n_0_[20] ));
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\cnt_reg[20]_i_2_n_1 ,\cnt_reg[20]_i_2_n_2 ,\cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  FDCE \cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[21]),
        .Q(\cnt_reg_n_0_[21] ));
  FDCE \cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[22]),
        .Q(\cnt_reg_n_0_[22] ));
  FDCE \cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[23]),
        .Q(\cnt_reg_n_0_[23] ));
  FDCE \cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[24]),
        .Q(\cnt_reg_n_0_[24] ));
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO({\cnt_reg[24]_i_2_n_0 ,\cnt_reg[24]_i_2_n_1 ,\cnt_reg[24]_i_2_n_2 ,\cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  FDCE \cnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[25]),
        .Q(\cnt_reg_n_0_[25] ));
  CARRY4 \cnt_reg[25]_i_2 
       (.CI(\cnt_reg[24]_i_2_n_0 ),
        .CO(\NLW_cnt_reg[25]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[25]_i_2_O_UNCONNECTED [3:1],data0[25]}),
        .S({1'b0,1'b0,1'b0,\cnt_reg_n_0_[25] }));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\cnt_reg[4]_i_2_n_1 ,\cnt_reg[4]_i_2_n_2 ,\cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ));
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[9]),
        .Q(\cnt_reg_n_0_[9] ));
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
