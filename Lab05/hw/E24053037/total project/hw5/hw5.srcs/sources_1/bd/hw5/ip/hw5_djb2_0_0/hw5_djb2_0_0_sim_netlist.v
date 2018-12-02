// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Dec  2 20:44:54 2018
// Host        : LAPTOP-BJA1B3DR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Leo/Desktop/FPGA/hw5/hw5.srcs/sources_1/bd/hw5/ip/hw5_djb2_0_0/hw5_djb2_0_0_sim_netlist.v
// Design      : hw5_djb2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hw5_djb2_0_0,djb2_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "djb2_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module hw5_djb2_0_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN hw5_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hw5_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire [2:0]s00_axi_arprot;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire [2:0]s00_axi_awprot;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [1:0]s00_axi_bresp;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  hw5_djb2_0_0_djb2_v1_0 inst
       (.s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot(s00_axi_arprot),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awprot(s00_axi_awprot),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(s00_axi_bresp),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "djb2" *) 
module hw5_djb2_0_0_djb2
   (O,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[23] ,
    CO,
    \axi_rdata_reg[24] ,
    Q);
  output [3:0]O;
  output [3:0]\axi_rdata_reg[7] ;
  output [3:0]\axi_rdata_reg[11] ;
  output [3:0]\axi_rdata_reg[15] ;
  output [3:0]\axi_rdata_reg[19] ;
  output [3:0]\axi_rdata_reg[23] ;
  output [0:0]CO;
  output [0:0]\axi_rdata_reg[24] ;
  input [31:0]Q;

  wire [0:0]CO;
  wire [3:0]O;
  wire [31:0]Q;
  wire [3:0]\axi_rdata_reg[11] ;
  wire [3:0]\axi_rdata_reg[15] ;
  wire [3:0]\axi_rdata_reg[19] ;
  wire [3:0]\axi_rdata_reg[23] ;
  wire [0:0]\axi_rdata_reg[24] ;
  wire [3:0]\axi_rdata_reg[7] ;
  wire data_out0__1_carry__0_i_1_n_0;
  wire data_out0__1_carry__0_i_2_n_0;
  wire data_out0__1_carry__0_i_3_n_0;
  wire data_out0__1_carry__0_i_4_n_0;
  wire data_out0__1_carry__0_i_5_n_0;
  wire data_out0__1_carry__0_i_6_n_0;
  wire data_out0__1_carry__0_n_0;
  wire data_out0__1_carry__0_n_1;
  wire data_out0__1_carry__0_n_2;
  wire data_out0__1_carry__0_n_3;
  wire data_out0__1_carry__1_i_1_n_0;
  wire data_out0__1_carry__1_i_2_n_0;
  wire data_out0__1_carry__1_i_3_n_0;
  wire data_out0__1_carry__1_i_4_n_0;
  wire data_out0__1_carry__1_i_5_n_0;
  wire data_out0__1_carry__1_i_6_n_0;
  wire data_out0__1_carry__1_i_7_n_0;
  wire data_out0__1_carry__1_i_8_n_0;
  wire data_out0__1_carry__1_n_0;
  wire data_out0__1_carry__1_n_1;
  wire data_out0__1_carry__1_n_2;
  wire data_out0__1_carry__1_n_3;
  wire data_out0__1_carry__2_i_1_n_0;
  wire data_out0__1_carry__2_i_2_n_0;
  wire data_out0__1_carry__2_i_3_n_0;
  wire data_out0__1_carry__2_i_4_n_0;
  wire data_out0__1_carry__2_i_5_n_0;
  wire data_out0__1_carry__2_i_6_n_0;
  wire data_out0__1_carry__2_i_7_n_0;
  wire data_out0__1_carry__2_i_8_n_0;
  wire data_out0__1_carry__2_n_0;
  wire data_out0__1_carry__2_n_1;
  wire data_out0__1_carry__2_n_2;
  wire data_out0__1_carry__2_n_3;
  wire data_out0__1_carry__3_i_1_n_0;
  wire data_out0__1_carry__3_i_2_n_0;
  wire data_out0__1_carry__3_i_3_n_0;
  wire data_out0__1_carry__3_i_4_n_0;
  wire data_out0__1_carry__3_i_5_n_0;
  wire data_out0__1_carry__3_i_6_n_0;
  wire data_out0__1_carry__3_i_7_n_0;
  wire data_out0__1_carry__3_i_8_n_0;
  wire data_out0__1_carry__3_n_0;
  wire data_out0__1_carry__3_n_1;
  wire data_out0__1_carry__3_n_2;
  wire data_out0__1_carry__3_n_3;
  wire data_out0__1_carry__4_i_1_n_0;
  wire data_out0__1_carry__4_n_0;
  wire data_out0__1_carry__4_n_1;
  wire data_out0__1_carry__4_n_2;
  wire data_out0__1_carry__4_n_3;
  wire data_out0__1_carry_i_1_n_0;
  wire data_out0__1_carry_i_2_n_0;
  wire data_out0__1_carry_i_3_n_0;
  wire data_out0__1_carry_i_4_n_0;
  wire data_out0__1_carry_n_0;
  wire data_out0__1_carry_n_1;
  wire data_out0__1_carry_n_2;
  wire data_out0__1_carry_n_3;
  wire [19:0]data_out3;
  wire data_out3__1_carry__0_i_1_n_0;
  wire data_out3__1_carry__0_i_2_n_0;
  wire data_out3__1_carry__0_i_3_n_0;
  wire data_out3__1_carry__0_i_4_n_0;
  wire data_out3__1_carry__0_i_5_n_0;
  wire data_out3__1_carry__0_i_6_n_0;
  wire data_out3__1_carry__0_n_0;
  wire data_out3__1_carry__0_n_1;
  wire data_out3__1_carry__0_n_2;
  wire data_out3__1_carry__0_n_3;
  wire data_out3__1_carry__1_i_1_n_0;
  wire data_out3__1_carry__1_i_2_n_0;
  wire data_out3__1_carry__1_i_3_n_0;
  wire data_out3__1_carry__1_i_4_n_0;
  wire data_out3__1_carry__1_i_5_n_0;
  wire data_out3__1_carry__1_i_6_n_0;
  wire data_out3__1_carry__1_i_7_n_0;
  wire data_out3__1_carry__1_i_8_n_0;
  wire data_out3__1_carry__1_n_0;
  wire data_out3__1_carry__1_n_1;
  wire data_out3__1_carry__1_n_2;
  wire data_out3__1_carry__1_n_3;
  wire data_out3__1_carry__2_i_1_n_0;
  wire data_out3__1_carry__2_i_2_n_0;
  wire data_out3__1_carry__2_i_3_n_0;
  wire data_out3__1_carry__2_i_4_n_0;
  wire data_out3__1_carry__2_i_5_n_0;
  wire data_out3__1_carry__2_n_0;
  wire data_out3__1_carry__2_n_1;
  wire data_out3__1_carry__2_n_2;
  wire data_out3__1_carry__2_n_3;
  wire data_out3__1_carry__3_n_2;
  wire data_out3__1_carry__3_n_3;
  wire data_out3__1_carry_i_1_n_0;
  wire data_out3__1_carry_i_2_n_0;
  wire data_out3__1_carry_i_3_n_0;
  wire data_out3__1_carry_i_4_n_0;
  wire data_out3__1_carry_n_0;
  wire data_out3__1_carry_n_1;
  wire data_out3__1_carry_n_2;
  wire data_out3__1_carry_n_3;
  wire [13:0]data_out6;
  wire data_out6__1_carry__0_i_1_n_0;
  wire data_out6__1_carry__0_i_2_n_0;
  wire data_out6__1_carry__0_i_3_n_0;
  wire data_out6__1_carry__0_i_4_n_0;
  wire data_out6__1_carry__0_i_5_n_0;
  wire data_out6__1_carry__0_i_6_n_0;
  wire data_out6__1_carry__0_n_0;
  wire data_out6__1_carry__0_n_1;
  wire data_out6__1_carry__0_n_2;
  wire data_out6__1_carry__0_n_3;
  wire data_out6__1_carry__1_i_1_n_0;
  wire data_out6__1_carry__1_n_0;
  wire data_out6__1_carry__1_n_1;
  wire data_out6__1_carry__1_n_2;
  wire data_out6__1_carry__1_n_3;
  wire data_out6__1_carry_i_1_n_0;
  wire data_out6__1_carry_i_2_n_0;
  wire data_out6__1_carry_i_3_n_0;
  wire data_out6__1_carry_i_4_n_0;
  wire data_out6__1_carry_n_0;
  wire data_out6__1_carry_n_1;
  wire data_out6__1_carry_n_2;
  wire data_out6__1_carry_n_3;
  wire [3:0]NLW_data_out0__1_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_data_out0__1_carry__5_O_UNCONNECTED;
  wire [2:2]NLW_data_out3__1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_data_out3__1_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_data_out6__1_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_data_out6__1_carry__2_O_UNCONNECTED;

  CARRY4 data_out0__1_carry
       (.CI(1'b0),
        .CO({data_out0__1_carry_n_0,data_out0__1_carry_n_1,data_out0__1_carry_n_2,data_out0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(O),
        .S({data_out0__1_carry_i_1_n_0,data_out0__1_carry_i_2_n_0,data_out0__1_carry_i_3_n_0,data_out0__1_carry_i_4_n_0}));
  CARRY4 data_out0__1_carry__0
       (.CI(data_out0__1_carry_n_0),
        .CO({data_out0__1_carry__0_n_0,data_out0__1_carry__0_n_1,data_out0__1_carry__0_n_2,data_out0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({data_out0__1_carry__0_i_1_n_0,data_out0__1_carry__0_i_2_n_0,data_out3[0],Q[28]}),
        .O(\axi_rdata_reg[7] ),
        .S({data_out0__1_carry__0_i_3_n_0,data_out0__1_carry__0_i_4_n_0,data_out0__1_carry__0_i_5_n_0,data_out0__1_carry__0_i_6_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    data_out0__1_carry__0_i_1
       (.I0(data_out3[6]),
        .I1(Q[30]),
        .I2(data_out3[1]),
        .O(data_out0__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    data_out0__1_carry__0_i_2
       (.I0(data_out3[1]),
        .I1(data_out3[6]),
        .I2(Q[30]),
        .O(data_out0__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    data_out0__1_carry__0_i_3
       (.I0(data_out0__1_carry__0_i_1_n_0),
        .I1(Q[31]),
        .I2(data_out3[7]),
        .I3(data_out3[2]),
        .O(data_out0__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    data_out0__1_carry__0_i_4
       (.I0(data_out3[6]),
        .I1(Q[30]),
        .I2(data_out3[1]),
        .I3(Q[29]),
        .I4(data_out3[5]),
        .O(data_out0__1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    data_out0__1_carry__0_i_5
       (.I0(data_out3[5]),
        .I1(Q[29]),
        .I2(data_out3[0]),
        .O(data_out0__1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__1_carry__0_i_6
       (.I0(Q[28]),
        .I1(data_out3[4]),
        .O(data_out0__1_carry__0_i_6_n_0));
  CARRY4 data_out0__1_carry__1
       (.CI(data_out0__1_carry__0_n_0),
        .CO({data_out0__1_carry__1_n_0,data_out0__1_carry__1_n_1,data_out0__1_carry__1_n_2,data_out0__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({data_out0__1_carry__1_i_1_n_0,data_out0__1_carry__1_i_2_n_0,data_out0__1_carry__1_i_3_n_0,data_out0__1_carry__1_i_4_n_0}),
        .O(\axi_rdata_reg[11] ),
        .S({data_out0__1_carry__1_i_5_n_0,data_out0__1_carry__1_i_6_n_0,data_out0__1_carry__1_i_7_n_0,data_out0__1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__1_i_1
       (.I0(data_out3[10]),
        .I1(data_out3[5]),
        .O(data_out0__1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__1_i_2
       (.I0(data_out3[9]),
        .I1(data_out3[4]),
        .O(data_out0__1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__1_i_3
       (.I0(data_out3[8]),
        .I1(data_out3[3]),
        .O(data_out0__1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    data_out0__1_carry__1_i_4
       (.I0(data_out3[7]),
        .I1(Q[31]),
        .I2(data_out3[2]),
        .O(data_out0__1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__1_i_5
       (.I0(data_out3[5]),
        .I1(data_out3[10]),
        .I2(data_out3[11]),
        .I3(data_out3[6]),
        .O(data_out0__1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__1_i_6
       (.I0(data_out3[4]),
        .I1(data_out3[9]),
        .I2(data_out3[10]),
        .I3(data_out3[5]),
        .O(data_out0__1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__1_i_7
       (.I0(data_out3[3]),
        .I1(data_out3[8]),
        .I2(data_out3[9]),
        .I3(data_out3[4]),
        .O(data_out0__1_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    data_out0__1_carry__1_i_8
       (.I0(data_out3[2]),
        .I1(Q[31]),
        .I2(data_out3[7]),
        .I3(data_out3[8]),
        .I4(data_out3[3]),
        .O(data_out0__1_carry__1_i_8_n_0));
  CARRY4 data_out0__1_carry__2
       (.CI(data_out0__1_carry__1_n_0),
        .CO({data_out0__1_carry__2_n_0,data_out0__1_carry__2_n_1,data_out0__1_carry__2_n_2,data_out0__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({data_out0__1_carry__2_i_1_n_0,data_out0__1_carry__2_i_2_n_0,data_out0__1_carry__2_i_3_n_0,data_out0__1_carry__2_i_4_n_0}),
        .O(\axi_rdata_reg[15] ),
        .S({data_out0__1_carry__2_i_5_n_0,data_out0__1_carry__2_i_6_n_0,data_out0__1_carry__2_i_7_n_0,data_out0__1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__2_i_1
       (.I0(data_out3[14]),
        .I1(data_out3[9]),
        .O(data_out0__1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__2_i_2
       (.I0(data_out3[13]),
        .I1(data_out3[8]),
        .O(data_out0__1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__2_i_3
       (.I0(data_out3[12]),
        .I1(data_out3[7]),
        .O(data_out0__1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__2_i_4
       (.I0(data_out3[11]),
        .I1(data_out3[6]),
        .O(data_out0__1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__2_i_5
       (.I0(data_out3[9]),
        .I1(data_out3[14]),
        .I2(data_out3[15]),
        .I3(data_out3[10]),
        .O(data_out0__1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__2_i_6
       (.I0(data_out3[8]),
        .I1(data_out3[13]),
        .I2(data_out3[14]),
        .I3(data_out3[9]),
        .O(data_out0__1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__2_i_7
       (.I0(data_out3[7]),
        .I1(data_out3[12]),
        .I2(data_out3[13]),
        .I3(data_out3[8]),
        .O(data_out0__1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__2_i_8
       (.I0(data_out3[6]),
        .I1(data_out3[11]),
        .I2(data_out3[12]),
        .I3(data_out3[7]),
        .O(data_out0__1_carry__2_i_8_n_0));
  CARRY4 data_out0__1_carry__3
       (.CI(data_out0__1_carry__2_n_0),
        .CO({data_out0__1_carry__3_n_0,data_out0__1_carry__3_n_1,data_out0__1_carry__3_n_2,data_out0__1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({data_out0__1_carry__3_i_1_n_0,data_out0__1_carry__3_i_2_n_0,data_out0__1_carry__3_i_3_n_0,data_out0__1_carry__3_i_4_n_0}),
        .O(\axi_rdata_reg[19] ),
        .S({data_out0__1_carry__3_i_5_n_0,data_out0__1_carry__3_i_6_n_0,data_out0__1_carry__3_i_7_n_0,data_out0__1_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__3_i_1
       (.I0(data_out3[18]),
        .I1(data_out3[13]),
        .O(data_out0__1_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__3_i_2
       (.I0(data_out3[17]),
        .I1(data_out3[12]),
        .O(data_out0__1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__3_i_3
       (.I0(data_out3[16]),
        .I1(data_out3[11]),
        .O(data_out0__1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out0__1_carry__3_i_4
       (.I0(data_out3[15]),
        .I1(data_out3[10]),
        .O(data_out0__1_carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__3_i_5
       (.I0(data_out3[13]),
        .I1(data_out3[18]),
        .I2(data_out3[19]),
        .I3(data_out3[14]),
        .O(data_out0__1_carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__3_i_6
       (.I0(data_out3[12]),
        .I1(data_out3[17]),
        .I2(data_out3[18]),
        .I3(data_out3[13]),
        .O(data_out0__1_carry__3_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__3_i_7
       (.I0(data_out3[11]),
        .I1(data_out3[16]),
        .I2(data_out3[17]),
        .I3(data_out3[12]),
        .O(data_out0__1_carry__3_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out0__1_carry__3_i_8
       (.I0(data_out3[10]),
        .I1(data_out3[15]),
        .I2(data_out3[16]),
        .I3(data_out3[11]),
        .O(data_out0__1_carry__3_i_8_n_0));
  CARRY4 data_out0__1_carry__4
       (.CI(data_out0__1_carry__3_n_0),
        .CO({data_out0__1_carry__4_n_0,data_out0__1_carry__4_n_1,data_out0__1_carry__4_n_2,data_out0__1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_out3[15]}),
        .O(\axi_rdata_reg[23] ),
        .S({data_out3[18:16],data_out0__1_carry__4_i_1_n_0}));
  LUT3 #(
    .INIT(8'h78)) 
    data_out0__1_carry__4_i_1
       (.I0(data_out3[14]),
        .I1(data_out3[19]),
        .I2(data_out3[15]),
        .O(data_out0__1_carry__4_i_1_n_0));
  CARRY4 data_out0__1_carry__5
       (.CI(data_out0__1_carry__4_n_0),
        .CO({NLW_data_out0__1_carry__5_CO_UNCONNECTED[3:2],CO,NLW_data_out0__1_carry__5_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_out0__1_carry__5_O_UNCONNECTED[3:1],\axi_rdata_reg[24] }),
        .S({1'b0,1'b0,1'b1,data_out3[19]}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__1_carry_i_1
       (.I0(Q[27]),
        .I1(data_out3[3]),
        .O(data_out0__1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__1_carry_i_2
       (.I0(Q[26]),
        .I1(data_out3[2]),
        .O(data_out0__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__1_carry_i_3
       (.I0(Q[25]),
        .I1(data_out3[1]),
        .O(data_out0__1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__1_carry_i_4
       (.I0(Q[24]),
        .I1(data_out3[0]),
        .O(data_out0__1_carry_i_4_n_0));
  CARRY4 data_out3__1_carry
       (.CI(1'b0),
        .CO({data_out3__1_carry_n_0,data_out3__1_carry_n_1,data_out3__1_carry_n_2,data_out3__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(data_out3[3:0]),
        .S({data_out3__1_carry_i_1_n_0,data_out3__1_carry_i_2_n_0,data_out3__1_carry_i_3_n_0,data_out3__1_carry_i_4_n_0}));
  CARRY4 data_out3__1_carry__0
       (.CI(data_out3__1_carry_n_0),
        .CO({data_out3__1_carry__0_n_0,data_out3__1_carry__0_n_1,data_out3__1_carry__0_n_2,data_out3__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({data_out3__1_carry__0_i_1_n_0,data_out3__1_carry__0_i_2_n_0,data_out6[0],Q[20]}),
        .O(data_out3[7:4]),
        .S({data_out3__1_carry__0_i_3_n_0,data_out3__1_carry__0_i_4_n_0,data_out3__1_carry__0_i_5_n_0,data_out3__1_carry__0_i_6_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    data_out3__1_carry__0_i_1
       (.I0(data_out6[6]),
        .I1(Q[22]),
        .I2(data_out6[1]),
        .O(data_out3__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    data_out3__1_carry__0_i_2
       (.I0(data_out6[1]),
        .I1(data_out6[6]),
        .I2(Q[22]),
        .O(data_out3__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    data_out3__1_carry__0_i_3
       (.I0(data_out3__1_carry__0_i_1_n_0),
        .I1(Q[23]),
        .I2(data_out6[7]),
        .I3(data_out6[2]),
        .O(data_out3__1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    data_out3__1_carry__0_i_4
       (.I0(data_out6[6]),
        .I1(Q[22]),
        .I2(data_out6[1]),
        .I3(Q[21]),
        .I4(data_out6[5]),
        .O(data_out3__1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    data_out3__1_carry__0_i_5
       (.I0(data_out6[5]),
        .I1(Q[21]),
        .I2(data_out6[0]),
        .O(data_out3__1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out3__1_carry__0_i_6
       (.I0(Q[20]),
        .I1(data_out6[4]),
        .O(data_out3__1_carry__0_i_6_n_0));
  CARRY4 data_out3__1_carry__1
       (.CI(data_out3__1_carry__0_n_0),
        .CO({data_out3__1_carry__1_n_0,data_out3__1_carry__1_n_1,data_out3__1_carry__1_n_2,data_out3__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({data_out3__1_carry__1_i_1_n_0,data_out3__1_carry__1_i_2_n_0,data_out3__1_carry__1_i_3_n_0,data_out3__1_carry__1_i_4_n_0}),
        .O(data_out3[11:8]),
        .S({data_out3__1_carry__1_i_5_n_0,data_out3__1_carry__1_i_6_n_0,data_out3__1_carry__1_i_7_n_0,data_out3__1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    data_out3__1_carry__1_i_1
       (.I0(data_out6[10]),
        .I1(data_out6[5]),
        .O(data_out3__1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out3__1_carry__1_i_2
       (.I0(data_out6[9]),
        .I1(data_out6[4]),
        .O(data_out3__1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out3__1_carry__1_i_3
       (.I0(data_out6[8]),
        .I1(data_out6[3]),
        .O(data_out3__1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    data_out3__1_carry__1_i_4
       (.I0(data_out6[7]),
        .I1(Q[23]),
        .I2(data_out6[2]),
        .O(data_out3__1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out3__1_carry__1_i_5
       (.I0(data_out6[5]),
        .I1(data_out6[10]),
        .I2(data_out6[11]),
        .I3(data_out6[6]),
        .O(data_out3__1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out3__1_carry__1_i_6
       (.I0(data_out6[4]),
        .I1(data_out6[9]),
        .I2(data_out6[10]),
        .I3(data_out6[5]),
        .O(data_out3__1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out3__1_carry__1_i_7
       (.I0(data_out6[3]),
        .I1(data_out6[8]),
        .I2(data_out6[9]),
        .I3(data_out6[4]),
        .O(data_out3__1_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    data_out3__1_carry__1_i_8
       (.I0(data_out6[2]),
        .I1(Q[23]),
        .I2(data_out6[7]),
        .I3(data_out6[8]),
        .I4(data_out6[3]),
        .O(data_out3__1_carry__1_i_8_n_0));
  CARRY4 data_out3__1_carry__2
       (.CI(data_out3__1_carry__1_n_0),
        .CO({data_out3__1_carry__2_n_0,data_out3__1_carry__2_n_1,data_out3__1_carry__2_n_2,data_out3__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,data_out6[9],data_out3__1_carry__2_i_1_n_0,data_out3__1_carry__2_i_2_n_0}),
        .O(data_out3[15:12]),
        .S({data_out6[10],data_out3__1_carry__2_i_3_n_0,data_out3__1_carry__2_i_4_n_0,data_out3__1_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    data_out3__1_carry__2_i_1
       (.I0(data_out6[12]),
        .I1(data_out6[7]),
        .O(data_out3__1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out3__1_carry__2_i_2
       (.I0(data_out6[11]),
        .I1(data_out6[6]),
        .O(data_out3__1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    data_out3__1_carry__2_i_3
       (.I0(data_out6[8]),
        .I1(data_out6[13]),
        .I2(data_out6[9]),
        .O(data_out3__1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out3__1_carry__2_i_4
       (.I0(data_out6[7]),
        .I1(data_out6[12]),
        .I2(data_out6[13]),
        .I3(data_out6[8]),
        .O(data_out3__1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    data_out3__1_carry__2_i_5
       (.I0(data_out6[6]),
        .I1(data_out6[11]),
        .I2(data_out6[12]),
        .I3(data_out6[7]),
        .O(data_out3__1_carry__2_i_5_n_0));
  CARRY4 data_out3__1_carry__3
       (.CI(data_out3__1_carry__2_n_0),
        .CO({data_out3[19],NLW_data_out3__1_carry__3_CO_UNCONNECTED[2],data_out3__1_carry__3_n_2,data_out3__1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_out3__1_carry__3_O_UNCONNECTED[3],data_out3[18:16]}),
        .S({1'b1,data_out6[13:11]}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out3__1_carry_i_1
       (.I0(Q[19]),
        .I1(data_out6[3]),
        .O(data_out3__1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out3__1_carry_i_2
       (.I0(Q[18]),
        .I1(data_out6[2]),
        .O(data_out3__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out3__1_carry_i_3
       (.I0(Q[17]),
        .I1(data_out6[1]),
        .O(data_out3__1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out3__1_carry_i_4
       (.I0(Q[16]),
        .I1(data_out6[0]),
        .O(data_out3__1_carry_i_4_n_0));
  CARRY4 data_out6__1_carry
       (.CI(1'b0),
        .CO({data_out6__1_carry_n_0,data_out6__1_carry_n_1,data_out6__1_carry_n_2,data_out6__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(data_out6[3:0]),
        .S({data_out6__1_carry_i_1_n_0,data_out6__1_carry_i_2_n_0,data_out6__1_carry_i_3_n_0,data_out6__1_carry_i_4_n_0}));
  CARRY4 data_out6__1_carry__0
       (.CI(data_out6__1_carry_n_0),
        .CO({data_out6__1_carry__0_n_0,data_out6__1_carry__0_n_1,data_out6__1_carry__0_n_2,data_out6__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({data_out6__1_carry__0_i_1_n_0,data_out6__1_carry__0_i_2_n_0,Q[0],Q[12]}),
        .O(data_out6[7:4]),
        .S({data_out6__1_carry__0_i_3_n_0,data_out6__1_carry__0_i_4_n_0,data_out6__1_carry__0_i_5_n_0,data_out6__1_carry__0_i_6_n_0}));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    data_out6__1_carry__0_i_1
       (.I0(Q[6]),
        .I1(Q[14]),
        .I2(Q[1]),
        .O(data_out6__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    data_out6__1_carry__0_i_2
       (.I0(Q[1]),
        .I1(Q[6]),
        .I2(Q[14]),
        .O(data_out6__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    data_out6__1_carry__0_i_3
       (.I0(data_out6__1_carry__0_i_1_n_0),
        .I1(Q[15]),
        .I2(Q[7]),
        .I3(Q[2]),
        .O(data_out6__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    data_out6__1_carry__0_i_4
       (.I0(Q[6]),
        .I1(Q[14]),
        .I2(Q[1]),
        .I3(Q[13]),
        .I4(Q[5]),
        .O(data_out6__1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    data_out6__1_carry__0_i_5
       (.I0(Q[5]),
        .I1(Q[13]),
        .I2(Q[0]),
        .O(data_out6__1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out6__1_carry__0_i_6
       (.I0(Q[12]),
        .I1(Q[4]),
        .O(data_out6__1_carry__0_i_6_n_0));
  CARRY4 data_out6__1_carry__1
       (.CI(data_out6__1_carry__0_n_0),
        .CO({data_out6__1_carry__1_n_0,data_out6__1_carry__1_n_1,data_out6__1_carry__1_n_2,data_out6__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[3]}),
        .O(data_out6[11:8]),
        .S({Q[6:4],data_out6__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    data_out6__1_carry__1_i_1
       (.I0(Q[2]),
        .I1(Q[15]),
        .I2(Q[7]),
        .I3(Q[3]),
        .O(data_out6__1_carry__1_i_1_n_0));
  CARRY4 data_out6__1_carry__2
       (.CI(data_out6__1_carry__1_n_0),
        .CO({NLW_data_out6__1_carry__2_CO_UNCONNECTED[3:2],data_out6[13],NLW_data_out6__1_carry__2_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_out6__1_carry__2_O_UNCONNECTED[3:1],data_out6[12]}),
        .S({1'b0,1'b0,1'b1,Q[7]}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out6__1_carry_i_1
       (.I0(Q[11]),
        .I1(Q[3]),
        .O(data_out6__1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out6__1_carry_i_2
       (.I0(Q[10]),
        .I1(Q[2]),
        .O(data_out6__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out6__1_carry_i_3
       (.I0(Q[9]),
        .I1(Q[1]),
        .O(data_out6__1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out6__1_carry_i_4
       (.I0(Q[8]),
        .I1(Q[0]),
        .O(data_out6__1_carry_i_4_n_0));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "djb2_v1_0" *) 
module hw5_djb2_0_0_djb2_v1_0
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  hw5_djb2_0_0_djb2_v1_0_S00_AXI djb2_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "djb2_v1_0_S00_AXI" *) 
module hw5_djb2_0_0_djb2_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [12:5]data_out8;
  wire hash_n_0;
  wire hash_n_1;
  wire hash_n_10;
  wire hash_n_11;
  wire hash_n_12;
  wire hash_n_13;
  wire hash_n_14;
  wire hash_n_15;
  wire hash_n_16;
  wire hash_n_17;
  wire hash_n_18;
  wire hash_n_19;
  wire hash_n_2;
  wire hash_n_20;
  wire hash_n_21;
  wire hash_n_22;
  wire hash_n_23;
  wire hash_n_24;
  wire hash_n_25;
  wire hash_n_3;
  wire hash_n_4;
  wire hash_n_5;
  wire hash_n_6;
  wire hash_n_7;
  wire hash_n_8;
  wire hash_n_9;
  wire [7:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(hash_n_3),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(data_out8[5]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(hash_n_9),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[10]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[2]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(hash_n_8),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[11]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[3]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(hash_n_15),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[12]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[4]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(hash_n_14),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[13]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[5]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(hash_n_13),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[14]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[6]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(hash_n_12),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[15]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[7]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(hash_n_19),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[16]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(hash_n_18),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[17]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(hash_n_17),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[18]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(hash_n_16),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[19]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(hash_n_2),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[1]),
        .I4(axi_araddr[3]),
        .I5(data_out8[6]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(hash_n_23),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[20]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(hash_n_22),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[21]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(hash_n_21),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[22]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(hash_n_20),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[23]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(hash_n_25),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[24]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(hash_n_24),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[25]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(hash_n_1),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[2]),
        .I4(axi_araddr[3]),
        .I5(data_out8[7]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(hash_n_0),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[3]),
        .I4(axi_araddr[3]),
        .I5(data_out8[8]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(hash_n_7),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[4]),
        .I4(axi_araddr[3]),
        .I5(data_out8[9]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(hash_n_6),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[5]),
        .I4(axi_araddr[3]),
        .I5(data_out8[10]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(hash_n_5),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[6]),
        .I4(axi_araddr[3]),
        .I5(data_out8[11]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(hash_n_4),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[7]),
        .I4(axi_araddr[3]),
        .I5(data_out8[12]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(hash_n_11),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[8]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[0]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(hash_n_10),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[9]),
        .I4(axi_araddr[3]),
        .I5(p_0_in[1]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  hw5_djb2_0_0_djb2 hash
       (.CO(hash_n_24),
        .O({hash_n_0,hash_n_1,hash_n_2,hash_n_3}),
        .Q({\slv_reg0_reg_n_0_[31] ,\slv_reg0_reg_n_0_[30] ,\slv_reg0_reg_n_0_[29] ,\slv_reg0_reg_n_0_[28] ,\slv_reg0_reg_n_0_[27] ,\slv_reg0_reg_n_0_[26] ,\slv_reg0_reg_n_0_[25] ,\slv_reg0_reg_n_0_[24] ,\slv_reg0_reg_n_0_[23] ,\slv_reg0_reg_n_0_[22] ,\slv_reg0_reg_n_0_[21] ,\slv_reg0_reg_n_0_[20] ,\slv_reg0_reg_n_0_[19] ,\slv_reg0_reg_n_0_[18] ,\slv_reg0_reg_n_0_[17] ,\slv_reg0_reg_n_0_[16] ,p_0_in,data_out8}),
        .\axi_rdata_reg[11] ({hash_n_8,hash_n_9,hash_n_10,hash_n_11}),
        .\axi_rdata_reg[15] ({hash_n_12,hash_n_13,hash_n_14,hash_n_15}),
        .\axi_rdata_reg[19] ({hash_n_16,hash_n_17,hash_n_18,hash_n_19}),
        .\axi_rdata_reg[23] ({hash_n_20,hash_n_21,hash_n_22,hash_n_23}),
        .\axi_rdata_reg[24] (hash_n_25),
        .\axi_rdata_reg[7] ({hash_n_4,hash_n_5,hash_n_6,hash_n_7}));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(data_out8[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(p_0_in[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(p_0_in[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(p_0_in[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(p_0_in[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(p_0_in[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(data_out8[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(data_out8[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(data_out8[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(data_out8[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(data_out8[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(data_out8[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(data_out8[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
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
