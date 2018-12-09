// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Dec  8 20:35:56 2018
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Matrix_Processor_3X3_0_0_sim_netlist.v
// Design      : design_1_Matrix_Processor_3X3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Matrix_Processor
   (clk,
    rst,
    d_in,
    d_in_valid,
    cmd_in,
    cmd_valid,
    addr,
    d_out);
  input clk;
  input rst;
  input [7:0]d_in;
  input d_in_valid;
  input [7:0]cmd_in;
  input cmd_valid;
  input [7:0]addr;
  output [7:0]d_out;

  wire \<const0> ;

  assign d_out[7] = \<const0> ;
  assign d_out[6] = \<const0> ;
  assign d_out[5] = \<const0> ;
  assign d_out[4] = \<const0> ;
  assign d_out[3] = \<const0> ;
  assign d_out[2] = \<const0> ;
  assign d_out[1] = \<const0> ;
  assign d_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Matrix_Processor_3X3_v1_0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Matrix_Processor_3X3_v1_0_S00_AXI Matrix_Processor_3X3_v1_0_S00_AXI_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Matrix_Processor_3X3_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
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
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
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
  wire [0:0]slv_reg0;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire [7:0]slv_reg1;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire top_ctrl1_n_0;

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
        .S(top_ctrl1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
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
        .R(top_ctrl1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(top_ctrl1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
        .R(top_ctrl1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(top_ctrl1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(top_ctrl1_n_0));
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
        .R(top_ctrl1_n_0));
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
        .R(top_ctrl1_n_0));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg2[0]),
        .I1(slv_reg3[0]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[0]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg2[10]),
        .I1(slv_reg3[10]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[10]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg2[11]),
        .I1(slv_reg3[11]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[11]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg2[12]),
        .I1(slv_reg3[12]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg2[13]),
        .I1(slv_reg3[13]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[13]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(slv_reg3[14]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(slv_reg3[15]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(slv_reg3[16]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(slv_reg3[17]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(slv_reg3[18]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(slv_reg3[19]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg2[1]),
        .I1(slv_reg3[1]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg2[20]),
        .I1(slv_reg3[20]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg2[21]),
        .I1(slv_reg3[21]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg2[22]),
        .I1(slv_reg3[22]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg2[23]),
        .I1(slv_reg3[23]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg2[24]),
        .I1(slv_reg3[24]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg2[25]),
        .I1(slv_reg3[25]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg2[26]),
        .I1(slv_reg3[26]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(slv_reg3[27]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg2[28]),
        .I1(slv_reg3[28]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg2[29]),
        .I1(slv_reg3[29]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg2[2]),
        .I1(slv_reg3[2]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg2[30]),
        .I1(slv_reg3[30]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg2[31]),
        .I1(slv_reg3[31]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg2[3]),
        .I1(slv_reg3[3]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[3]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg2[4]),
        .I1(slv_reg3[4]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[4]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg2[5]),
        .I1(slv_reg3[5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[5]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(slv_reg3[6]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[6]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg2[7]),
        .I1(slv_reg3[7]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg2[8]),
        .I1(slv_reg3[8]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[8]));
  LUT4 #(
    .INIT(16'hCA00)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg2[9]),
        .I1(slv_reg3[9]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(top_ctrl1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(top_ctrl1_n_0));
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
        .R(top_ctrl1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .R(top_ctrl1_n_0));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__0),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(slv_reg0),
        .O(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(slv_reg0),
        .R(top_ctrl1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(top_ctrl1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(top_ctrl1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(top_ctrl1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(top_ctrl1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ctrl top_ctrl1
       (.\FSM_sequential_state_reg[2]_0 (top_ctrl1_n_0),
        .Q(slv_reg2[7:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_reg0(slv_reg0),
        .slv_reg1(slv_reg1),
        .\slv_reg3_reg[7] (slv_reg3[7:0]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Matrix_Processor_3X3_0_0,Matrix_Processor_3X3_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Matrix_Processor_3X3_v1_0,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0" *) input s00_axi_aclk;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Matrix_Processor_3X3_v1_0 inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory8X256
   (clk,
    write_enable,
    d_in,
    addr,
    d_out);
  input clk;
  input write_enable;
  input [7:0]d_in;
  input [7:0]addr;
  output [7:0]d_out;

  wire [7:0]addr;
  wire clk;
  wire [7:0]d_in;
  wire [7:0]d_out;
  wire write_enable;
  wire [15:8]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,addr,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d_in}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_mem_reg_DOADO_UNCONNECTED[15:8],d_out}),
        .DOBDO(NLW_mem_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({write_enable,write_enable}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_ctrl
   (\FSM_sequential_state_reg[2]_0 ,
    s00_axi_aclk,
    Q,
    slv_reg1,
    slv_reg0,
    \slv_reg3_reg[7] ,
    s00_axi_aresetn);
  output \FSM_sequential_state_reg[2]_0 ;
  input s00_axi_aclk;
  input [7:0]Q;
  input [7:0]slv_reg1;
  input [0:0]slv_reg0;
  input [7:0]\slv_reg3_reg[7] ;
  input s00_axi_aresetn;

  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [7:0]Q;
  wire ari_element;
  wire \ari_element[7]_i_2_n_0 ;
  wire \ari_element_reg_n_0_[0] ;
  wire \ari_element_reg_n_0_[1] ;
  wire \ari_element_reg_n_0_[2] ;
  wire \ari_element_reg_n_0_[3] ;
  wire \ari_element_reg_n_0_[4] ;
  wire \ari_element_reg_n_0_[5] ;
  wire \ari_element_reg_n_0_[6] ;
  wire \ari_element_reg_n_0_[7] ;
  wire [7:5]in14;
  wire [7:3]in15;
  wire matrix_proi_i_3_n_0;
  wire matrix_proi_i_4_n_0;
  wire [7:0]mem_addr;
  wire \mem_addr[1]__0_i_1_n_0 ;
  wire \mem_addr[2]__0_i_1_n_0 ;
  wire \mem_addr[2]__0_i_2_n_0 ;
  wire \mem_addr[3]__0_i_1_n_0 ;
  wire \mem_addr[4]__0_i_3_n_0 ;
  wire \mem_addr[5]__0_i_1_n_0 ;
  wire \mem_addr[5]__0_i_2_n_0 ;
  wire \mem_addr[5]__0_i_3_n_0 ;
  wire \mem_addr[6]__0_i_1_n_0 ;
  wire \mem_addr[6]__0_i_2_n_0 ;
  wire \mem_addr[7]__0_i_1_n_0 ;
  wire \mem_addr[7]__0_i_2_n_0 ;
  wire [7:0]mem_addr_in;
  wire \mem_addr_reg[4]__0_i_1_n_0 ;
  wire [7:0]mem_d_in;
  wire mem_w_enable;
  wire [2:0]n_state;
  wire [7:0]pro_addr;
  wire \pro_addr[0]__0_i_1_n_0 ;
  wire \pro_addr[1]__0_i_1_n_0 ;
  wire \pro_addr[2]__0_i_1_n_0 ;
  wire \pro_addr[2]__0_i_2_n_0 ;
  wire \pro_addr[3]__0_i_1_n_0 ;
  wire \pro_addr[3]__0_i_2_n_0 ;
  wire \pro_addr[4]__0_i_1_n_0 ;
  wire \pro_addr[4]__0_i_2_n_0 ;
  wire \pro_addr[5]__0_i_2_n_0 ;
  wire \pro_addr[6]__0_i_1_n_0 ;
  wire \pro_addr[6]__0_i_2_n_0 ;
  wire \pro_addr[6]__0_i_3_n_0 ;
  wire \pro_addr[7]__0_i_1_n_0 ;
  wire \pro_addr[7]__0_i_3_n_0 ;
  wire \pro_addr_reg[5]__0_i_1_n_0 ;
  wire \pro_addr_reg[7]__0_i_2_n_0 ;
  wire pro_cmd_valid;
  wire pro_d_in_valid;
  wire [7:0]pro_d_out;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]slv_reg0;
  wire [7:0]slv_reg1;
  wire [7:0]\slv_reg3_reg[7] ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire [7:0]NLW_mem_i_d_out_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0FEC00EC00EC00EC)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(n_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF397)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(\ari_element_reg_n_0_[0] ),
        .I1(mem_addr[3]),
        .I2(\ari_element_reg_n_0_[2] ),
        .I3(\ari_element_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8A8AA)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(mem_addr[1]),
        .I4(mem_addr[0]),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFEAEFFAE)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[0]_i_6_n_0 ),
        .I1(\FSM_sequential_state[0]_i_7_n_0 ),
        .I2(\FSM_sequential_state[2]_i_10_n_0 ),
        .I3(\FSM_sequential_state[0]_i_8_n_0 ),
        .I4(slv_reg1[0]),
        .I5(\FSM_sequential_state[0]_i_9_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(mem_addr[1]),
        .I3(mem_addr[0]),
        .I4(mem_addr[4]),
        .I5(\FSM_sequential_state[0]_i_10_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDBFFDFFFDBFFF)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(mem_addr[4]),
        .I1(\ari_element_reg_n_0_[2] ),
        .I2(mem_addr[3]),
        .I3(mem_addr[0]),
        .I4(\ari_element_reg_n_0_[1] ),
        .I5(\ari_element_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(slv_reg0),
        .I1(state[1]),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0014)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(slv_reg1[0]),
        .I1(slv_reg1[1]),
        .I2(slv_reg1[2]),
        .I3(state[1]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(slv_reg1[1]),
        .I1(slv_reg1[2]),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFACAFAFA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state[0]),
        .O(n_state[1]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCEEECC)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(slv_reg0),
        .I1(state[1]),
        .I2(slv_reg1[2]),
        .I3(slv_reg1[0]),
        .I4(slv_reg1[1]),
        .I5(\FSM_sequential_state[2]_i_10_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(\mem_addr[5]__0_i_2_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3640)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\ari_element_reg_n_0_[1] ),
        .I1(\ari_element_reg_n_0_[2] ),
        .I2(\ari_element_reg_n_0_[0] ),
        .I3(mem_addr[3]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFFF0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .O(n_state[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(slv_reg1[3]),
        .I1(slv_reg1[6]),
        .I2(slv_reg1[7]),
        .I3(slv_reg1[5]),
        .I4(slv_reg1[4]),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00080008000F0008)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(\FSM_sequential_state[2]_i_7_n_0 ),
        .I4(\FSM_sequential_state[2]_i_8_n_0 ),
        .I5(\FSM_sequential_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000045000000000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_state[2]_i_10_n_0 ),
        .I1(slv_reg1[0]),
        .I2(slv_reg1[2]),
        .I3(slv_reg1[1]),
        .I4(state[1]),
        .I5(slv_reg0),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(mem_addr[0]),
        .I1(mem_addr[1]),
        .I2(mem_addr[4]),
        .I3(mem_addr[3]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\ari_element_reg_n_0_[2] ),
        .I1(\ari_element_reg_n_0_[0] ),
        .I2(\ari_element_reg_n_0_[1] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\ari_element_reg_n_0_[3] ),
        .I1(\ari_element_reg_n_0_[6] ),
        .I2(\ari_element_reg_n_0_[7] ),
        .I3(\ari_element_reg_n_0_[5] ),
        .I4(\ari_element_reg_n_0_[4] ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(mem_addr[6]),
        .I1(mem_addr[2]),
        .I2(mem_addr[5]),
        .I3(mem_addr[7]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00080408)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\ari_element_reg_n_0_[2] ),
        .I1(mem_addr[0]),
        .I2(mem_addr[1]),
        .I3(\ari_element_reg_n_0_[1] ),
        .I4(\ari_element_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(mem_addr[3]),
        .I1(\ari_element_reg_n_0_[2] ),
        .I2(mem_addr[4]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:100,iSTATE2:010,iSTATE3:011,iSTATE4:101,iSTATE5:110" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[2]_0 ),
        .D(n_state[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:100,iSTATE2:010,iSTATE3:011,iSTATE4:101,iSTATE5:110" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[2]_0 ),
        .D(n_state[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:100,iSTATE2:010,iSTATE3:011,iSTATE4:101,iSTATE5:110" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[2]_0 ),
        .D(n_state[2]),
        .Q(state[2]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \ari_element[7]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\slv_reg3_reg[7] [2]),
        .I3(\slv_reg3_reg[7] [1]),
        .I4(\slv_reg3_reg[7] [0]),
        .I5(\ari_element[7]_i_2_n_0 ),
        .O(ari_element));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ari_element[7]_i_2 
       (.I0(\slv_reg3_reg[7] [5]),
        .I1(\slv_reg3_reg[7] [6]),
        .I2(\slv_reg3_reg[7] [3]),
        .I3(\slv_reg3_reg[7] [4]),
        .I4(state[0]),
        .I5(\slv_reg3_reg[7] [7]),
        .O(\ari_element[7]_i_2_n_0 ));
  FDRE \ari_element_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[0]),
        .Q(\ari_element_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ari_element_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[1]),
        .Q(\ari_element_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ari_element_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[2]),
        .Q(\ari_element_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ari_element_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[3]),
        .Q(\ari_element_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ari_element_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[4]),
        .Q(\ari_element_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ari_element_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[5]),
        .Q(\ari_element_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ari_element_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[6]),
        .Q(\ari_element_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ari_element_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ari_element),
        .D(Q[7]),
        .Q(\ari_element_reg_n_0_[7] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(\FSM_sequential_state_reg[2]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Matrix_Processor matrix_proi
       (.addr(pro_addr),
        .clk(s00_axi_aclk),
        .cmd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cmd_valid(pro_cmd_valid),
        .d_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .d_in_valid(pro_d_in_valid),
        .d_out(pro_d_out),
        .rst(\FSM_sequential_state_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    matrix_proi_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(matrix_proi_i_3_n_0),
        .O(pro_d_in_valid));
  LUT4 #(
    .INIT(16'h0008)) 
    matrix_proi_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(matrix_proi_i_3_n_0),
        .O(pro_cmd_valid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    matrix_proi_i_3
       (.I0(matrix_proi_i_4_n_0),
        .I1(mem_addr[7]),
        .I2(mem_addr[5]),
        .I3(mem_addr[2]),
        .I4(mem_addr[6]),
        .O(matrix_proi_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    matrix_proi_i_4
       (.I0(mem_addr[3]),
        .I1(mem_addr[0]),
        .I2(mem_addr[1]),
        .I3(mem_addr[4]),
        .O(matrix_proi_i_4_n_0));
  LUT5 #(
    .INIT(32'h909F9F90)) 
    \mem_addr[1]__0_i_1 
       (.I0(pro_addr[0]),
        .I1(pro_addr[1]),
        .I2(state[2]),
        .I3(mem_addr[0]),
        .I4(mem_addr[1]),
        .O(\mem_addr[1]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1EFF1E001E001EFF)) 
    \mem_addr[2]__0_i_1 
       (.I0(pro_addr[1]),
        .I1(pro_addr[0]),
        .I2(pro_addr[2]),
        .I3(state[2]),
        .I4(\mem_addr[2]__0_i_2_n_0 ),
        .I5(mem_addr[2]),
        .O(\mem_addr[2]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_addr[2]__0_i_2 
       (.I0(mem_addr[0]),
        .I1(mem_addr[1]),
        .O(\mem_addr[2]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h57A8FFFF57A80000)) 
    \mem_addr[3]__0_i_1 
       (.I0(pro_addr[2]),
        .I1(pro_addr[0]),
        .I2(pro_addr[1]),
        .I3(pro_addr[3]),
        .I4(state[2]),
        .I5(in15[3]),
        .O(\mem_addr[3]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mem_addr[3]__0_i_2 
       (.I0(mem_addr[0]),
        .I1(mem_addr[1]),
        .I2(mem_addr[2]),
        .I3(mem_addr[3]),
        .O(in15[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mem_addr[4]__0_i_2 
       (.I0(mem_addr[0]),
        .I1(mem_addr[1]),
        .I2(mem_addr[2]),
        .I3(mem_addr[3]),
        .I4(mem_addr[4]),
        .O(in15[4]));
  LUT5 #(
    .INIT(32'hE0001FFF)) 
    \mem_addr[4]__0_i_3 
       (.I0(pro_addr[0]),
        .I1(pro_addr[1]),
        .I2(pro_addr[2]),
        .I3(pro_addr[3]),
        .I4(pro_addr[4]),
        .O(\mem_addr[4]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F606F6060)) 
    \mem_addr[5]__0_i_1 
       (.I0(\mem_addr[7]__0_i_2_n_0 ),
        .I1(pro_addr[5]),
        .I2(state[2]),
        .I3(\mem_addr[5]__0_i_2_n_0 ),
        .I4(\mem_addr[5]__0_i_3_n_0 ),
        .I5(mem_addr[5]),
        .O(\mem_addr[5]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \mem_addr[5]__0_i_2 
       (.I0(mem_addr[1]),
        .I1(mem_addr[0]),
        .I2(mem_addr[4]),
        .O(\mem_addr[5]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr[5]__0_i_3 
       (.I0(mem_addr[2]),
        .I1(mem_addr[3]),
        .O(\mem_addr[5]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h780078FF78FF7800)) 
    \mem_addr[6]__0_i_1 
       (.I0(pro_addr[5]),
        .I1(\mem_addr[7]__0_i_2_n_0 ),
        .I2(pro_addr[6]),
        .I3(state[2]),
        .I4(\mem_addr[6]__0_i_2_n_0 ),
        .I5(mem_addr[6]),
        .O(\mem_addr[6]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mem_addr[6]__0_i_2 
       (.I0(mem_addr[5]),
        .I1(mem_addr[2]),
        .I2(mem_addr[3]),
        .I3(mem_addr[4]),
        .I4(mem_addr[0]),
        .I5(mem_addr[1]),
        .O(\mem_addr[6]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \mem_addr[7]__0_i_1 
       (.I0(\mem_addr[7]__0_i_2_n_0 ),
        .I1(pro_addr[5]),
        .I2(pro_addr[6]),
        .I3(pro_addr[7]),
        .I4(state[2]),
        .I5(in15[7]),
        .O(\mem_addr[7]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \mem_addr[7]__0_i_2 
       (.I0(pro_addr[0]),
        .I1(pro_addr[1]),
        .I2(pro_addr[2]),
        .I3(pro_addr[3]),
        .I4(pro_addr[4]),
        .O(\mem_addr[7]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \mem_addr[7]__0_i_3 
       (.I0(\mem_addr[5]__0_i_2_n_0 ),
        .I1(mem_addr[6]),
        .I2(mem_addr[5]),
        .I3(mem_addr[3]),
        .I4(mem_addr[2]),
        .I5(mem_addr[7]),
        .O(in15[7]));
  FDRE \mem_addr_reg[0]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr[0]__0_i_1_n_0 ),
        .Q(mem_addr[0]),
        .R(1'b0));
  FDRE \mem_addr_reg[1]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\mem_addr[1]__0_i_1_n_0 ),
        .Q(mem_addr[1]),
        .R(1'b0));
  FDRE \mem_addr_reg[2]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\mem_addr[2]__0_i_1_n_0 ),
        .Q(mem_addr[2]),
        .R(1'b0));
  FDRE \mem_addr_reg[3]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\mem_addr[3]__0_i_1_n_0 ),
        .Q(mem_addr[3]),
        .R(1'b0));
  FDRE \mem_addr_reg[4]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\mem_addr_reg[4]__0_i_1_n_0 ),
        .Q(mem_addr[4]),
        .R(1'b0));
  MUXF7 \mem_addr_reg[4]__0_i_1 
       (.I0(in15[4]),
        .I1(\mem_addr[4]__0_i_3_n_0 ),
        .O(\mem_addr_reg[4]__0_i_1_n_0 ),
        .S(state[2]));
  FDRE \mem_addr_reg[5]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\mem_addr[5]__0_i_1_n_0 ),
        .Q(mem_addr[5]),
        .R(1'b0));
  FDRE \mem_addr_reg[6]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\mem_addr[6]__0_i_1_n_0 ),
        .Q(mem_addr[6]),
        .R(1'b0));
  FDRE \mem_addr_reg[7]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\mem_addr[7]__0_i_1_n_0 ),
        .Q(mem_addr[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory8X256 mem_i
       (.addr(mem_addr_in),
        .clk(s00_axi_aclk),
        .d_in(mem_d_in),
        .d_out(NLW_mem_i_d_out_UNCONNECTED[7:0]),
        .write_enable(mem_w_enable));
  LUT3 #(
    .INIT(8'h04)) 
    mem_i_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(mem_w_enable));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_10
       (.I0(\slv_reg3_reg[7] [7]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[7]),
        .O(mem_addr_in[7]));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_11
       (.I0(\slv_reg3_reg[7] [6]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[6]),
        .O(mem_addr_in[6]));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_12
       (.I0(\slv_reg3_reg[7] [5]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[5]),
        .O(mem_addr_in[5]));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_13
       (.I0(\slv_reg3_reg[7] [4]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[4]),
        .O(mem_addr_in[4]));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_14
       (.I0(\slv_reg3_reg[7] [3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[3]),
        .O(mem_addr_in[3]));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_15
       (.I0(\slv_reg3_reg[7] [2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[2]),
        .O(mem_addr_in[2]));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_16
       (.I0(\slv_reg3_reg[7] [1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[1]),
        .O(mem_addr_in[1]));
  LUT5 #(
    .INIT(32'hBEAA82AA)) 
    mem_i_i_17
       (.I0(\slv_reg3_reg[7] [0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(mem_addr[0]),
        .O(mem_addr_in[0]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_2
       (.I0(Q[7]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[7]),
        .O(mem_d_in[7]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_3
       (.I0(Q[6]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[6]),
        .O(mem_d_in[6]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_4
       (.I0(Q[5]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[5]),
        .O(mem_d_in[5]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_5
       (.I0(Q[4]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[4]),
        .O(mem_d_in[4]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_6
       (.I0(Q[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[3]),
        .O(mem_d_in[3]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_7
       (.I0(Q[2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[2]),
        .O(mem_d_in[2]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_8
       (.I0(Q[1]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[1]),
        .O(mem_d_in[1]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    mem_i_i_9
       (.I0(Q[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(pro_d_out[0]),
        .O(mem_d_in[0]));
  LUT3 #(
    .INIT(8'h47)) 
    \pro_addr[0]__0_i_1 
       (.I0(pro_addr[0]),
        .I1(state[2]),
        .I2(mem_addr[0]),
        .O(\pro_addr[0]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6F60606F)) 
    \pro_addr[1]__0_i_1 
       (.I0(pro_addr[0]),
        .I1(pro_addr[1]),
        .I2(state[2]),
        .I3(mem_addr[0]),
        .I4(mem_addr[1]),
        .O(\pro_addr[1]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78FF7800780078FF)) 
    \pro_addr[2]__0_i_1 
       (.I0(pro_addr[1]),
        .I1(pro_addr[0]),
        .I2(pro_addr[2]),
        .I3(state[2]),
        .I4(\pro_addr[2]__0_i_2_n_0 ),
        .I5(mem_addr[2]),
        .O(\pro_addr[2]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pro_addr[2]__0_i_2 
       (.I0(mem_addr[0]),
        .I1(mem_addr[1]),
        .O(\pro_addr[2]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \pro_addr[3]__0_i_1 
       (.I0(pro_addr[2]),
        .I1(pro_addr[0]),
        .I2(pro_addr[1]),
        .I3(pro_addr[3]),
        .I4(state[2]),
        .I5(\pro_addr[3]__0_i_2_n_0 ),
        .O(\pro_addr[3]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \pro_addr[3]__0_i_2 
       (.I0(mem_addr[2]),
        .I1(mem_addr[0]),
        .I2(mem_addr[1]),
        .I3(mem_addr[3]),
        .O(\pro_addr[3]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F6F6F606060606F)) 
    \pro_addr[4]__0_i_1 
       (.I0(\pro_addr[6]__0_i_2_n_0 ),
        .I1(pro_addr[4]),
        .I2(state[2]),
        .I3(mem_addr[2]),
        .I4(\pro_addr[4]__0_i_2_n_0 ),
        .I5(mem_addr[4]),
        .O(\pro_addr[4]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pro_addr[4]__0_i_2 
       (.I0(mem_addr[1]),
        .I1(mem_addr[0]),
        .I2(mem_addr[3]),
        .O(\pro_addr[4]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \pro_addr[5]__0_i_2 
       (.I0(mem_addr[2]),
        .I1(mem_addr[3]),
        .I2(mem_addr[0]),
        .I3(mem_addr[1]),
        .I4(mem_addr[4]),
        .I5(mem_addr[5]),
        .O(\pro_addr[5]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pro_addr[5]__0_i_3 
       (.I0(pro_addr[4]),
        .I1(pro_addr[3]),
        .I2(pro_addr[2]),
        .I3(pro_addr[1]),
        .I4(pro_addr[0]),
        .I5(pro_addr[5]),
        .O(in14[5]));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \pro_addr[6]__0_i_1 
       (.I0(\pro_addr[6]__0_i_2_n_0 ),
        .I1(pro_addr[4]),
        .I2(pro_addr[5]),
        .I3(pro_addr[6]),
        .I4(state[2]),
        .I5(\pro_addr[6]__0_i_3_n_0 ),
        .O(\pro_addr[6]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pro_addr[6]__0_i_2 
       (.I0(pro_addr[3]),
        .I1(pro_addr[2]),
        .I2(pro_addr[1]),
        .I3(pro_addr[0]),
        .O(\pro_addr[6]__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \pro_addr[6]__0_i_3 
       (.I0(mem_addr[2]),
        .I1(mem_addr[5]),
        .I2(matrix_proi_i_4_n_0),
        .I3(mem_addr[6]),
        .O(\pro_addr[6]__0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \pro_addr[7]__0_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\pro_addr[7]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \pro_addr[7]__0_i_3 
       (.I0(mem_addr[5]),
        .I1(mem_addr[2]),
        .I2(mem_addr[6]),
        .I3(matrix_proi_i_4_n_0),
        .I4(mem_addr[7]),
        .O(\pro_addr[7]__0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pro_addr[7]__0_i_4 
       (.I0(\pro_addr[6]__0_i_2_n_0 ),
        .I1(pro_addr[6]),
        .I2(pro_addr[5]),
        .I3(pro_addr[4]),
        .I4(pro_addr[7]),
        .O(in14[7]));
  FDRE \pro_addr_reg[0]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr[0]__0_i_1_n_0 ),
        .Q(pro_addr[0]),
        .R(1'b0));
  FDRE \pro_addr_reg[1]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr[1]__0_i_1_n_0 ),
        .Q(pro_addr[1]),
        .R(1'b0));
  FDRE \pro_addr_reg[2]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr[2]__0_i_1_n_0 ),
        .Q(pro_addr[2]),
        .R(1'b0));
  FDRE \pro_addr_reg[3]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr[3]__0_i_1_n_0 ),
        .Q(pro_addr[3]),
        .R(1'b0));
  FDRE \pro_addr_reg[4]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr[4]__0_i_1_n_0 ),
        .Q(pro_addr[4]),
        .R(1'b0));
  FDRE \pro_addr_reg[5]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr_reg[5]__0_i_1_n_0 ),
        .Q(pro_addr[5]),
        .R(1'b0));
  MUXF7 \pro_addr_reg[5]__0_i_1 
       (.I0(\pro_addr[5]__0_i_2_n_0 ),
        .I1(in14[5]),
        .O(\pro_addr_reg[5]__0_i_1_n_0 ),
        .S(state[2]));
  FDRE \pro_addr_reg[6]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr[6]__0_i_1_n_0 ),
        .Q(pro_addr[6]),
        .R(1'b0));
  FDRE \pro_addr_reg[7]__0 
       (.C(s00_axi_aclk),
        .CE(\pro_addr[7]__0_i_1_n_0 ),
        .D(\pro_addr_reg[7]__0_i_2_n_0 ),
        .Q(pro_addr[7]),
        .R(1'b0));
  MUXF7 \pro_addr_reg[7]__0_i_2 
       (.I0(\pro_addr[7]__0_i_3_n_0 ),
        .I1(in14[7]),
        .O(\pro_addr_reg[7]__0_i_2_n_0 ),
        .S(state[2]));
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
