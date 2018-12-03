// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Dec  2 16:30:48 2018
// Host        : LAPTOP-BJA1B3DR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hw5_calculator_0_0_sim_netlist.v
// Design      : hw5_calculator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator
   (D,
    Q,
    \slv_reg1_reg[31] ,
    \slv_reg2_reg[31] ,
    axi_araddr);
  output [31:0]D;
  input [31:0]Q;
  input [31:0]\slv_reg1_reg[31] ;
  input [31:0]\slv_reg2_reg[31] ;
  input [1:0]axi_araddr;

  wire C0__0_n_100;
  wire C0__0_n_101;
  wire C0__0_n_102;
  wire C0__0_n_103;
  wire C0__0_n_104;
  wire C0__0_n_105;
  wire C0__0_n_106;
  wire C0__0_n_107;
  wire C0__0_n_108;
  wire C0__0_n_109;
  wire C0__0_n_110;
  wire C0__0_n_111;
  wire C0__0_n_112;
  wire C0__0_n_113;
  wire C0__0_n_114;
  wire C0__0_n_115;
  wire C0__0_n_116;
  wire C0__0_n_117;
  wire C0__0_n_118;
  wire C0__0_n_119;
  wire C0__0_n_120;
  wire C0__0_n_121;
  wire C0__0_n_122;
  wire C0__0_n_123;
  wire C0__0_n_124;
  wire C0__0_n_125;
  wire C0__0_n_126;
  wire C0__0_n_127;
  wire C0__0_n_128;
  wire C0__0_n_129;
  wire C0__0_n_130;
  wire C0__0_n_131;
  wire C0__0_n_132;
  wire C0__0_n_133;
  wire C0__0_n_134;
  wire C0__0_n_135;
  wire C0__0_n_136;
  wire C0__0_n_137;
  wire C0__0_n_138;
  wire C0__0_n_139;
  wire C0__0_n_140;
  wire C0__0_n_141;
  wire C0__0_n_142;
  wire C0__0_n_143;
  wire C0__0_n_144;
  wire C0__0_n_145;
  wire C0__0_n_146;
  wire C0__0_n_147;
  wire C0__0_n_148;
  wire C0__0_n_149;
  wire C0__0_n_150;
  wire C0__0_n_151;
  wire C0__0_n_152;
  wire C0__0_n_153;
  wire C0__0_n_58;
  wire C0__0_n_59;
  wire C0__0_n_60;
  wire C0__0_n_61;
  wire C0__0_n_62;
  wire C0__0_n_63;
  wire C0__0_n_64;
  wire C0__0_n_65;
  wire C0__0_n_66;
  wire C0__0_n_67;
  wire C0__0_n_68;
  wire C0__0_n_69;
  wire C0__0_n_70;
  wire C0__0_n_71;
  wire C0__0_n_72;
  wire C0__0_n_73;
  wire C0__0_n_74;
  wire C0__0_n_75;
  wire C0__0_n_76;
  wire C0__0_n_77;
  wire C0__0_n_78;
  wire C0__0_n_79;
  wire C0__0_n_80;
  wire C0__0_n_81;
  wire C0__0_n_82;
  wire C0__0_n_83;
  wire C0__0_n_84;
  wire C0__0_n_85;
  wire C0__0_n_86;
  wire C0__0_n_87;
  wire C0__0_n_88;
  wire C0__0_n_89;
  wire C0__0_n_90;
  wire C0__0_n_91;
  wire C0__0_n_92;
  wire C0__0_n_93;
  wire C0__0_n_94;
  wire C0__0_n_95;
  wire C0__0_n_96;
  wire C0__0_n_97;
  wire C0__0_n_98;
  wire C0__0_n_99;
  wire C0__1_n_100;
  wire C0__1_n_101;
  wire C0__1_n_102;
  wire C0__1_n_103;
  wire C0__1_n_104;
  wire C0__1_n_105;
  wire C0__1_n_58;
  wire C0__1_n_59;
  wire C0__1_n_60;
  wire C0__1_n_61;
  wire C0__1_n_62;
  wire C0__1_n_63;
  wire C0__1_n_64;
  wire C0__1_n_65;
  wire C0__1_n_66;
  wire C0__1_n_67;
  wire C0__1_n_68;
  wire C0__1_n_69;
  wire C0__1_n_70;
  wire C0__1_n_71;
  wire C0__1_n_72;
  wire C0__1_n_73;
  wire C0__1_n_74;
  wire C0__1_n_75;
  wire C0__1_n_76;
  wire C0__1_n_77;
  wire C0__1_n_78;
  wire C0__1_n_79;
  wire C0__1_n_80;
  wire C0__1_n_81;
  wire C0__1_n_82;
  wire C0__1_n_83;
  wire C0__1_n_84;
  wire C0__1_n_85;
  wire C0__1_n_86;
  wire C0__1_n_87;
  wire C0__1_n_88;
  wire C0__1_n_89;
  wire C0__1_n_90;
  wire C0__1_n_91;
  wire C0__1_n_92;
  wire C0__1_n_93;
  wire C0__1_n_94;
  wire C0__1_n_95;
  wire C0__1_n_96;
  wire C0__1_n_97;
  wire C0__1_n_98;
  wire C0__1_n_99;
  wire C0_carry__0_i_1_n_0;
  wire C0_carry__0_i_2_n_0;
  wire C0_carry__0_i_3_n_0;
  wire C0_carry__0_i_4_n_0;
  wire C0_carry__0_n_0;
  wire C0_carry__0_n_1;
  wire C0_carry__0_n_2;
  wire C0_carry__0_n_3;
  wire C0_carry__0_n_4;
  wire C0_carry__0_n_5;
  wire C0_carry__0_n_6;
  wire C0_carry__0_n_7;
  wire C0_carry__1_i_1_n_0;
  wire C0_carry__1_i_2_n_0;
  wire C0_carry__1_i_3_n_0;
  wire C0_carry__1_i_4_n_0;
  wire C0_carry__1_n_0;
  wire C0_carry__1_n_1;
  wire C0_carry__1_n_2;
  wire C0_carry__1_n_3;
  wire C0_carry__1_n_4;
  wire C0_carry__1_n_5;
  wire C0_carry__1_n_6;
  wire C0_carry__1_n_7;
  wire C0_carry__2_i_1_n_0;
  wire C0_carry__2_i_2_n_0;
  wire C0_carry__2_i_3_n_0;
  wire C0_carry__2_i_4_n_0;
  wire C0_carry__2_n_1;
  wire C0_carry__2_n_2;
  wire C0_carry__2_n_3;
  wire C0_carry__2_n_4;
  wire C0_carry__2_n_5;
  wire C0_carry__2_n_6;
  wire C0_carry__2_n_7;
  wire C0_carry_i_1_n_0;
  wire C0_carry_i_2_n_0;
  wire C0_carry_i_3_n_0;
  wire C0_carry_n_0;
  wire C0_carry_n_1;
  wire C0_carry_n_2;
  wire C0_carry_n_3;
  wire C0_carry_n_4;
  wire C0_carry_n_5;
  wire C0_carry_n_6;
  wire C0_carry_n_7;
  wire C0_n_100;
  wire C0_n_101;
  wire C0_n_102;
  wire C0_n_103;
  wire C0_n_104;
  wire C0_n_105;
  wire C0_n_106;
  wire C0_n_107;
  wire C0_n_108;
  wire C0_n_109;
  wire C0_n_110;
  wire C0_n_111;
  wire C0_n_112;
  wire C0_n_113;
  wire C0_n_114;
  wire C0_n_115;
  wire C0_n_116;
  wire C0_n_117;
  wire C0_n_118;
  wire C0_n_119;
  wire C0_n_120;
  wire C0_n_121;
  wire C0_n_122;
  wire C0_n_123;
  wire C0_n_124;
  wire C0_n_125;
  wire C0_n_126;
  wire C0_n_127;
  wire C0_n_128;
  wire C0_n_129;
  wire C0_n_130;
  wire C0_n_131;
  wire C0_n_132;
  wire C0_n_133;
  wire C0_n_134;
  wire C0_n_135;
  wire C0_n_136;
  wire C0_n_137;
  wire C0_n_138;
  wire C0_n_139;
  wire C0_n_140;
  wire C0_n_141;
  wire C0_n_142;
  wire C0_n_143;
  wire C0_n_144;
  wire C0_n_145;
  wire C0_n_146;
  wire C0_n_147;
  wire C0_n_148;
  wire C0_n_149;
  wire C0_n_150;
  wire C0_n_151;
  wire C0_n_152;
  wire C0_n_153;
  wire C0_n_58;
  wire C0_n_59;
  wire C0_n_60;
  wire C0_n_61;
  wire C0_n_62;
  wire C0_n_63;
  wire C0_n_64;
  wire C0_n_65;
  wire C0_n_66;
  wire C0_n_67;
  wire C0_n_68;
  wire C0_n_69;
  wire C0_n_70;
  wire C0_n_71;
  wire C0_n_72;
  wire C0_n_73;
  wire C0_n_74;
  wire C0_n_75;
  wire C0_n_76;
  wire C0_n_77;
  wire C0_n_78;
  wire C0_n_79;
  wire C0_n_80;
  wire C0_n_81;
  wire C0_n_82;
  wire C0_n_83;
  wire C0_n_84;
  wire C0_n_85;
  wire C0_n_86;
  wire C0_n_87;
  wire C0_n_88;
  wire C0_n_89;
  wire C0_n_90;
  wire C0_n_91;
  wire C0_n_92;
  wire C0_n_93;
  wire C0_n_94;
  wire C0_n_95;
  wire C0_n_96;
  wire C0_n_97;
  wire C0_n_98;
  wire C0_n_99;
  wire [31:0]D;
  wire [31:0]Q;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__0_n_4 ;
  wire \_inferred__0/i__carry__0_n_5 ;
  wire \_inferred__0/i__carry__0_n_6 ;
  wire \_inferred__0/i__carry__0_n_7 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__1_n_4 ;
  wire \_inferred__0/i__carry__1_n_5 ;
  wire \_inferred__0/i__carry__1_n_6 ;
  wire \_inferred__0/i__carry__1_n_7 ;
  wire \_inferred__0/i__carry__2_n_0 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry__2_n_4 ;
  wire \_inferred__0/i__carry__2_n_5 ;
  wire \_inferred__0/i__carry__2_n_6 ;
  wire \_inferred__0/i__carry__2_n_7 ;
  wire \_inferred__0/i__carry__3_n_0 ;
  wire \_inferred__0/i__carry__3_n_1 ;
  wire \_inferred__0/i__carry__3_n_2 ;
  wire \_inferred__0/i__carry__3_n_3 ;
  wire \_inferred__0/i__carry__3_n_4 ;
  wire \_inferred__0/i__carry__3_n_5 ;
  wire \_inferred__0/i__carry__3_n_6 ;
  wire \_inferred__0/i__carry__3_n_7 ;
  wire \_inferred__0/i__carry__4_n_0 ;
  wire \_inferred__0/i__carry__4_n_1 ;
  wire \_inferred__0/i__carry__4_n_2 ;
  wire \_inferred__0/i__carry__4_n_3 ;
  wire \_inferred__0/i__carry__4_n_4 ;
  wire \_inferred__0/i__carry__4_n_5 ;
  wire \_inferred__0/i__carry__4_n_6 ;
  wire \_inferred__0/i__carry__4_n_7 ;
  wire \_inferred__0/i__carry__5_n_0 ;
  wire \_inferred__0/i__carry__5_n_1 ;
  wire \_inferred__0/i__carry__5_n_2 ;
  wire \_inferred__0/i__carry__5_n_3 ;
  wire \_inferred__0/i__carry__5_n_4 ;
  wire \_inferred__0/i__carry__5_n_5 ;
  wire \_inferred__0/i__carry__5_n_6 ;
  wire \_inferred__0/i__carry__5_n_7 ;
  wire \_inferred__0/i__carry__6_n_1 ;
  wire \_inferred__0/i__carry__6_n_2 ;
  wire \_inferred__0/i__carry__6_n_3 ;
  wire \_inferred__0/i__carry__6_n_4 ;
  wire \_inferred__0/i__carry__6_n_5 ;
  wire \_inferred__0/i__carry__6_n_6 ;
  wire \_inferred__0/i__carry__6_n_7 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__0/i__carry_n_4 ;
  wire \_inferred__0/i__carry_n_5 ;
  wire \_inferred__0/i__carry_n_6 ;
  wire \_inferred__0/i__carry_n_7 ;
  wire [1:0]axi_araddr;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [31:0]\slv_reg1_reg[31] ;
  wire [31:0]\slv_reg2_reg[31] ;
  wire NLW_C0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_C0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_C0_OVERFLOW_UNCONNECTED;
  wire NLW_C0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_C0_PATTERNDETECT_UNCONNECTED;
  wire NLW_C0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_C0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_C0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_C0_CARRYOUT_UNCONNECTED;
  wire NLW_C0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_C0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_C0__0_OVERFLOW_UNCONNECTED;
  wire NLW_C0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_C0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_C0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_C0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_C0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_C0__0_CARRYOUT_UNCONNECTED;
  wire NLW_C0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_C0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_C0__1_OVERFLOW_UNCONNECTED;
  wire NLW_C0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_C0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_C0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_C0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_C0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_C0__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_C0__1_PCOUT_UNCONNECTED;
  wire [3:3]NLW_C0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW__inferred__0/i__carry__6_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    C0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\slv_reg1_reg[31] [16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_C0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_C0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_C0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_C0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_C0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_C0_OVERFLOW_UNCONNECTED),
        .P({C0_n_58,C0_n_59,C0_n_60,C0_n_61,C0_n_62,C0_n_63,C0_n_64,C0_n_65,C0_n_66,C0_n_67,C0_n_68,C0_n_69,C0_n_70,C0_n_71,C0_n_72,C0_n_73,C0_n_74,C0_n_75,C0_n_76,C0_n_77,C0_n_78,C0_n_79,C0_n_80,C0_n_81,C0_n_82,C0_n_83,C0_n_84,C0_n_85,C0_n_86,C0_n_87,C0_n_88,C0_n_89,C0_n_90,C0_n_91,C0_n_92,C0_n_93,C0_n_94,C0_n_95,C0_n_96,C0_n_97,C0_n_98,C0_n_99,C0_n_100,C0_n_101,C0_n_102,C0_n_103,C0_n_104,C0_n_105}),
        .PATTERNBDETECT(NLW_C0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_C0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({C0_n_106,C0_n_107,C0_n_108,C0_n_109,C0_n_110,C0_n_111,C0_n_112,C0_n_113,C0_n_114,C0_n_115,C0_n_116,C0_n_117,C0_n_118,C0_n_119,C0_n_120,C0_n_121,C0_n_122,C0_n_123,C0_n_124,C0_n_125,C0_n_126,C0_n_127,C0_n_128,C0_n_129,C0_n_130,C0_n_131,C0_n_132,C0_n_133,C0_n_134,C0_n_135,C0_n_136,C0_n_137,C0_n_138,C0_n_139,C0_n_140,C0_n_141,C0_n_142,C0_n_143,C0_n_144,C0_n_145,C0_n_146,C0_n_147,C0_n_148,C0_n_149,C0_n_150,C0_n_151,C0_n_152,C0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_C0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    C0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_C0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,\slv_reg1_reg[31] [16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_C0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_C0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_C0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_C0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_C0__0_OVERFLOW_UNCONNECTED),
        .P({C0__0_n_58,C0__0_n_59,C0__0_n_60,C0__0_n_61,C0__0_n_62,C0__0_n_63,C0__0_n_64,C0__0_n_65,C0__0_n_66,C0__0_n_67,C0__0_n_68,C0__0_n_69,C0__0_n_70,C0__0_n_71,C0__0_n_72,C0__0_n_73,C0__0_n_74,C0__0_n_75,C0__0_n_76,C0__0_n_77,C0__0_n_78,C0__0_n_79,C0__0_n_80,C0__0_n_81,C0__0_n_82,C0__0_n_83,C0__0_n_84,C0__0_n_85,C0__0_n_86,C0__0_n_87,C0__0_n_88,C0__0_n_89,C0__0_n_90,C0__0_n_91,C0__0_n_92,C0__0_n_93,C0__0_n_94,C0__0_n_95,C0__0_n_96,C0__0_n_97,C0__0_n_98,C0__0_n_99,C0__0_n_100,C0__0_n_101,C0__0_n_102,C0__0_n_103,C0__0_n_104,C0__0_n_105}),
        .PATTERNBDETECT(NLW_C0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_C0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({C0__0_n_106,C0__0_n_107,C0__0_n_108,C0__0_n_109,C0__0_n_110,C0__0_n_111,C0__0_n_112,C0__0_n_113,C0__0_n_114,C0__0_n_115,C0__0_n_116,C0__0_n_117,C0__0_n_118,C0__0_n_119,C0__0_n_120,C0__0_n_121,C0__0_n_122,C0__0_n_123,C0__0_n_124,C0__0_n_125,C0__0_n_126,C0__0_n_127,C0__0_n_128,C0__0_n_129,C0__0_n_130,C0__0_n_131,C0__0_n_132,C0__0_n_133,C0__0_n_134,C0__0_n_135,C0__0_n_136,C0__0_n_137,C0__0_n_138,C0__0_n_139,C0__0_n_140,C0__0_n_141,C0__0_n_142,C0__0_n_143,C0__0_n_144,C0__0_n_145,C0__0_n_146,C0__0_n_147,C0__0_n_148,C0__0_n_149,C0__0_n_150,C0__0_n_151,C0__0_n_152,C0__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_C0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    C0__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_C0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\slv_reg1_reg[31] [31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_C0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_C0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_C0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_C0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_C0__1_OVERFLOW_UNCONNECTED),
        .P({C0__1_n_58,C0__1_n_59,C0__1_n_60,C0__1_n_61,C0__1_n_62,C0__1_n_63,C0__1_n_64,C0__1_n_65,C0__1_n_66,C0__1_n_67,C0__1_n_68,C0__1_n_69,C0__1_n_70,C0__1_n_71,C0__1_n_72,C0__1_n_73,C0__1_n_74,C0__1_n_75,C0__1_n_76,C0__1_n_77,C0__1_n_78,C0__1_n_79,C0__1_n_80,C0__1_n_81,C0__1_n_82,C0__1_n_83,C0__1_n_84,C0__1_n_85,C0__1_n_86,C0__1_n_87,C0__1_n_88,C0__1_n_89,C0__1_n_90,C0__1_n_91,C0__1_n_92,C0__1_n_93,C0__1_n_94,C0__1_n_95,C0__1_n_96,C0__1_n_97,C0__1_n_98,C0__1_n_99,C0__1_n_100,C0__1_n_101,C0__1_n_102,C0__1_n_103,C0__1_n_104,C0__1_n_105}),
        .PATTERNBDETECT(NLW_C0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_C0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({C0__0_n_106,C0__0_n_107,C0__0_n_108,C0__0_n_109,C0__0_n_110,C0__0_n_111,C0__0_n_112,C0__0_n_113,C0__0_n_114,C0__0_n_115,C0__0_n_116,C0__0_n_117,C0__0_n_118,C0__0_n_119,C0__0_n_120,C0__0_n_121,C0__0_n_122,C0__0_n_123,C0__0_n_124,C0__0_n_125,C0__0_n_126,C0__0_n_127,C0__0_n_128,C0__0_n_129,C0__0_n_130,C0__0_n_131,C0__0_n_132,C0__0_n_133,C0__0_n_134,C0__0_n_135,C0__0_n_136,C0__0_n_137,C0__0_n_138,C0__0_n_139,C0__0_n_140,C0__0_n_141,C0__0_n_142,C0__0_n_143,C0__0_n_144,C0__0_n_145,C0__0_n_146,C0__0_n_147,C0__0_n_148,C0__0_n_149,C0__0_n_150,C0__0_n_151,C0__0_n_152,C0__0_n_153}),
        .PCOUT(NLW_C0__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_C0__1_UNDERFLOW_UNCONNECTED));
  CARRY4 C0_carry
       (.CI(1'b0),
        .CO({C0_carry_n_0,C0_carry_n_1,C0_carry_n_2,C0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({C0__1_n_103,C0__1_n_104,C0__1_n_105,1'b0}),
        .O({C0_carry_n_4,C0_carry_n_5,C0_carry_n_6,C0_carry_n_7}),
        .S({C0_carry_i_1_n_0,C0_carry_i_2_n_0,C0_carry_i_3_n_0,C0__0_n_89}));
  CARRY4 C0_carry__0
       (.CI(C0_carry_n_0),
        .CO({C0_carry__0_n_0,C0_carry__0_n_1,C0_carry__0_n_2,C0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({C0__1_n_99,C0__1_n_100,C0__1_n_101,C0__1_n_102}),
        .O({C0_carry__0_n_4,C0_carry__0_n_5,C0_carry__0_n_6,C0_carry__0_n_7}),
        .S({C0_carry__0_i_1_n_0,C0_carry__0_i_2_n_0,C0_carry__0_i_3_n_0,C0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__0_i_1
       (.I0(C0__1_n_99),
        .I1(C0_n_99),
        .O(C0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__0_i_2
       (.I0(C0__1_n_100),
        .I1(C0_n_100),
        .O(C0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__0_i_3
       (.I0(C0__1_n_101),
        .I1(C0_n_101),
        .O(C0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__0_i_4
       (.I0(C0__1_n_102),
        .I1(C0_n_102),
        .O(C0_carry__0_i_4_n_0));
  CARRY4 C0_carry__1
       (.CI(C0_carry__0_n_0),
        .CO({C0_carry__1_n_0,C0_carry__1_n_1,C0_carry__1_n_2,C0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({C0__1_n_95,C0__1_n_96,C0__1_n_97,C0__1_n_98}),
        .O({C0_carry__1_n_4,C0_carry__1_n_5,C0_carry__1_n_6,C0_carry__1_n_7}),
        .S({C0_carry__1_i_1_n_0,C0_carry__1_i_2_n_0,C0_carry__1_i_3_n_0,C0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__1_i_1
       (.I0(C0__1_n_95),
        .I1(C0_n_95),
        .O(C0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__1_i_2
       (.I0(C0__1_n_96),
        .I1(C0_n_96),
        .O(C0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__1_i_3
       (.I0(C0__1_n_97),
        .I1(C0_n_97),
        .O(C0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__1_i_4
       (.I0(C0__1_n_98),
        .I1(C0_n_98),
        .O(C0_carry__1_i_4_n_0));
  CARRY4 C0_carry__2
       (.CI(C0_carry__1_n_0),
        .CO({NLW_C0_carry__2_CO_UNCONNECTED[3],C0_carry__2_n_1,C0_carry__2_n_2,C0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,C0__1_n_92,C0__1_n_93,C0__1_n_94}),
        .O({C0_carry__2_n_4,C0_carry__2_n_5,C0_carry__2_n_6,C0_carry__2_n_7}),
        .S({C0_carry__2_i_1_n_0,C0_carry__2_i_2_n_0,C0_carry__2_i_3_n_0,C0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__2_i_1
       (.I0(C0__1_n_91),
        .I1(C0_n_91),
        .O(C0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__2_i_2
       (.I0(C0__1_n_92),
        .I1(C0_n_92),
        .O(C0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__2_i_3
       (.I0(C0__1_n_93),
        .I1(C0_n_93),
        .O(C0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry__2_i_4
       (.I0(C0__1_n_94),
        .I1(C0_n_94),
        .O(C0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry_i_1
       (.I0(C0__1_n_103),
        .I1(C0_n_103),
        .O(C0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry_i_2
       (.I0(C0__1_n_104),
        .I1(C0_n_104),
        .O(C0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    C0_carry_i_3
       (.I0(C0__1_n_105),
        .I1(C0_n_105),
        .O(C0_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\slv_reg2_reg[31] [0]}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\_inferred__0/i__carry__0_n_4 ,\_inferred__0/i__carry__0_n_5 ,\_inferred__0/i__carry__0_n_6 ,\_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({\_inferred__0/i__carry__1_n_4 ,\_inferred__0/i__carry__1_n_5 ,\_inferred__0/i__carry__1_n_6 ,\_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\_inferred__0/i__carry__2_n_0 ,\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O({\_inferred__0/i__carry__2_n_4 ,\_inferred__0/i__carry__2_n_5 ,\_inferred__0/i__carry__2_n_6 ,\_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__3 
       (.CI(\_inferred__0/i__carry__2_n_0 ),
        .CO({\_inferred__0/i__carry__3_n_0 ,\_inferred__0/i__carry__3_n_1 ,\_inferred__0/i__carry__3_n_2 ,\_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O({\_inferred__0/i__carry__3_n_4 ,\_inferred__0/i__carry__3_n_5 ,\_inferred__0/i__carry__3_n_6 ,\_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__4 
       (.CI(\_inferred__0/i__carry__3_n_0 ),
        .CO({\_inferred__0/i__carry__4_n_0 ,\_inferred__0/i__carry__4_n_1 ,\_inferred__0/i__carry__4_n_2 ,\_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O({\_inferred__0/i__carry__4_n_4 ,\_inferred__0/i__carry__4_n_5 ,\_inferred__0/i__carry__4_n_6 ,\_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__5 
       (.CI(\_inferred__0/i__carry__4_n_0 ),
        .CO({\_inferred__0/i__carry__5_n_0 ,\_inferred__0/i__carry__5_n_1 ,\_inferred__0/i__carry__5_n_2 ,\_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O({\_inferred__0/i__carry__5_n_4 ,\_inferred__0/i__carry__5_n_5 ,\_inferred__0/i__carry__5_n_6 ,\_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__6 
       (.CI(\_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW__inferred__0/i__carry__6_CO_UNCONNECTED [3],\_inferred__0/i__carry__6_n_1 ,\_inferred__0/i__carry__6_n_2 ,\_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O({\_inferred__0/i__carry__6_n_4 ,\_inferred__0/i__carry__6_n_5 ,\_inferred__0/i__carry__6_n_6 ,\_inferred__0/i__carry__6_n_7 }),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  LUT5 #(
    .INIT(32'hFFFF2320)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg1_reg[31] [0]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(Q[0]),
        .I4(\axi_rdata[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4480CC8844804400)) 
    \axi_rdata[0]_i_2 
       (.I0(axi_araddr[0]),
        .I1(axi_araddr[1]),
        .I2(C0__0_n_105),
        .I3(\slv_reg2_reg[31] [0]),
        .I4(\slv_reg2_reg[31] [1]),
        .I5(\_inferred__0/i__carry_n_7 ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg[31] [10]),
        .I1(Q[10]),
        .I2(\axi_rdata[10]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [10]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[10]_i_2 
       (.I0(\_inferred__0/i__carry__1_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_95),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg[31] [11]),
        .I1(Q[11]),
        .I2(\axi_rdata[11]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [11]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[11]_i_2 
       (.I0(\_inferred__0/i__carry__1_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_94),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg[31] [12]),
        .I1(Q[12]),
        .I2(\axi_rdata[12]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [12]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[12]_i_2 
       (.I0(\_inferred__0/i__carry__2_n_7 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_93),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg[31] [13]),
        .I1(Q[13]),
        .I2(\axi_rdata[13]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [13]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[13]_i_2 
       (.I0(\_inferred__0/i__carry__2_n_6 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_92),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg[31] [14]),
        .I1(Q[14]),
        .I2(\axi_rdata[14]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [14]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[14]_i_2 
       (.I0(\_inferred__0/i__carry__2_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_91),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg[31] [15]),
        .I1(Q[15]),
        .I2(\axi_rdata[15]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [15]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[15]_i_2 
       (.I0(\_inferred__0/i__carry__2_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_90),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg[31] [16]),
        .I1(Q[16]),
        .I2(\axi_rdata[16]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [16]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[16]_i_2 
       (.I0(\_inferred__0/i__carry__3_n_7 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry_n_7),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg[31] [17]),
        .I1(Q[17]),
        .I2(\axi_rdata[17]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [17]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[17]_i_2 
       (.I0(\_inferred__0/i__carry__3_n_6 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry_n_6),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg[31] [18]),
        .I1(Q[18]),
        .I2(\axi_rdata[18]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [18]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[18]_i_2 
       (.I0(\_inferred__0/i__carry__3_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry_n_5),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg[31] [19]),
        .I1(Q[19]),
        .I2(\axi_rdata[19]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [19]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[19]_i_2 
       (.I0(\_inferred__0/i__carry__3_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry_n_4),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2320)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg[31] [1]),
        .I1(axi_araddr[1]),
        .I2(axi_araddr[0]),
        .I3(Q[1]),
        .I4(\axi_rdata[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h44C4888844C40000)) 
    \axi_rdata[1]_i_2 
       (.I0(axi_araddr[0]),
        .I1(axi_araddr[1]),
        .I2(C0__0_n_104),
        .I3(\slv_reg2_reg[31] [0]),
        .I4(\slv_reg2_reg[31] [1]),
        .I5(\_inferred__0/i__carry_n_6 ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg[31] [20]),
        .I1(Q[20]),
        .I2(\axi_rdata[20]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [20]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[20]_i_2 
       (.I0(\_inferred__0/i__carry__4_n_7 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__0_n_7),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg[31] [21]),
        .I1(Q[21]),
        .I2(\axi_rdata[21]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [21]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[21]_i_2 
       (.I0(\_inferred__0/i__carry__4_n_6 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__0_n_6),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg[31] [22]),
        .I1(Q[22]),
        .I2(\axi_rdata[22]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [22]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[22]_i_2 
       (.I0(\_inferred__0/i__carry__4_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__0_n_5),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg[31] [23]),
        .I1(Q[23]),
        .I2(\axi_rdata[23]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [23]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[23]_i_2 
       (.I0(\_inferred__0/i__carry__4_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__0_n_4),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg[31] [24]),
        .I1(Q[24]),
        .I2(\axi_rdata[24]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [24]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[24]_i_2 
       (.I0(\_inferred__0/i__carry__5_n_7 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__1_n_7),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg[31] [25]),
        .I1(Q[25]),
        .I2(\axi_rdata[25]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [25]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[25]_i_2 
       (.I0(\_inferred__0/i__carry__5_n_6 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__1_n_6),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg[31] [26]),
        .I1(Q[26]),
        .I2(\axi_rdata[26]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [26]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[26]_i_2 
       (.I0(\_inferred__0/i__carry__5_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__1_n_5),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg[31] [27]),
        .I1(Q[27]),
        .I2(\axi_rdata[27]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [27]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[27]_i_2 
       (.I0(\_inferred__0/i__carry__5_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__1_n_4),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg[31] [28]),
        .I1(Q[28]),
        .I2(\axi_rdata[28]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [28]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[28]_i_2 
       (.I0(\_inferred__0/i__carry__6_n_7 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__2_n_7),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg[31] [29]),
        .I1(Q[29]),
        .I2(\axi_rdata[29]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [29]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[29]_i_2 
       (.I0(\_inferred__0/i__carry__6_n_6 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__2_n_6),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg[31] [2]),
        .I1(Q[2]),
        .I2(\axi_rdata[2]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [2]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[2]_i_2 
       (.I0(\_inferred__0/i__carry_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_103),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg[31] [30]),
        .I1(Q[30]),
        .I2(\axi_rdata[30]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [30]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[30]_i_2 
       (.I0(\_inferred__0/i__carry__6_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__2_n_5),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg1_reg[31] [31]),
        .I1(Q[31]),
        .I2(\axi_rdata[31]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [31]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[31]_i_2 
       (.I0(\_inferred__0/i__carry__6_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0_carry__2_n_4),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg[31] [3]),
        .I1(Q[3]),
        .I2(\axi_rdata[3]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [3]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[3]_i_2 
       (.I0(\_inferred__0/i__carry_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_102),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg1_reg[31] [4]),
        .I1(Q[4]),
        .I2(\axi_rdata[4]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [4]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[4]_i_2 
       (.I0(\_inferred__0/i__carry__0_n_7 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_101),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg1_reg[31] [5]),
        .I1(Q[5]),
        .I2(\axi_rdata[5]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [5]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[5]_i_2 
       (.I0(\_inferred__0/i__carry__0_n_6 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_100),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg1_reg[31] [6]),
        .I1(Q[6]),
        .I2(\axi_rdata[6]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [6]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[6]_i_2 
       (.I0(\_inferred__0/i__carry__0_n_5 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_99),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg1_reg[31] [7]),
        .I1(Q[7]),
        .I2(\axi_rdata[7]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [7]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[7]_i_2 
       (.I0(\_inferred__0/i__carry__0_n_4 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_98),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg[31] [8]),
        .I1(Q[8]),
        .I2(\axi_rdata[8]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [8]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[8]_i_2 
       (.I0(\_inferred__0/i__carry__1_n_7 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_97),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0FAFAFCFC)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg[31] [9]),
        .I1(Q[9]),
        .I2(\axi_rdata[9]_i_2_n_0 ),
        .I3(\slv_reg2_reg[31] [9]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \axi_rdata[9]_i_2 
       (.I0(\_inferred__0/i__carry__1_n_6 ),
        .I1(\slv_reg2_reg[31] [1]),
        .I2(\slv_reg2_reg[31] [0]),
        .I3(C0__0_n_96),
        .I4(axi_araddr[1]),
        .I5(axi_araddr[0]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(\slv_reg1_reg[31] [7]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[7]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(\slv_reg1_reg[31] [6]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[6]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(\slv_reg1_reg[31] [5]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[5]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(\slv_reg1_reg[31] [4]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[4]),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_1
       (.I0(\slv_reg1_reg[31] [11]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[11]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_2
       (.I0(\slv_reg1_reg[31] [10]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[10]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_3
       (.I0(\slv_reg1_reg[31] [9]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[9]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__1_i_4
       (.I0(\slv_reg1_reg[31] [8]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[8]),
        .O(i__carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_1
       (.I0(\slv_reg1_reg[31] [15]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[15]),
        .O(i__carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_2
       (.I0(\slv_reg1_reg[31] [14]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[14]),
        .O(i__carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_3
       (.I0(\slv_reg1_reg[31] [13]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[13]),
        .O(i__carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__2_i_4
       (.I0(\slv_reg1_reg[31] [12]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[12]),
        .O(i__carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__3_i_1
       (.I0(\slv_reg1_reg[31] [19]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[19]),
        .O(i__carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__3_i_2
       (.I0(\slv_reg1_reg[31] [18]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[18]),
        .O(i__carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__3_i_3
       (.I0(\slv_reg1_reg[31] [17]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[17]),
        .O(i__carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__3_i_4
       (.I0(\slv_reg1_reg[31] [16]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[16]),
        .O(i__carry__3_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__4_i_1
       (.I0(\slv_reg1_reg[31] [23]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[23]),
        .O(i__carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__4_i_2
       (.I0(\slv_reg1_reg[31] [22]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[22]),
        .O(i__carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__4_i_3
       (.I0(\slv_reg1_reg[31] [21]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[21]),
        .O(i__carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__4_i_4
       (.I0(\slv_reg1_reg[31] [20]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[20]),
        .O(i__carry__4_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__5_i_1
       (.I0(\slv_reg1_reg[31] [27]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[27]),
        .O(i__carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__5_i_2
       (.I0(\slv_reg1_reg[31] [26]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[26]),
        .O(i__carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__5_i_3
       (.I0(\slv_reg1_reg[31] [25]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[25]),
        .O(i__carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__5_i_4
       (.I0(\slv_reg1_reg[31] [24]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[24]),
        .O(i__carry__5_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__6_i_1
       (.I0(\slv_reg1_reg[31] [31]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[31]),
        .O(i__carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__6_i_2
       (.I0(\slv_reg1_reg[31] [30]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[30]),
        .O(i__carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__6_i_3
       (.I0(\slv_reg1_reg[31] [29]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[29]),
        .O(i__carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__6_i_4
       (.I0(\slv_reg1_reg[31] [28]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[28]),
        .O(i__carry__6_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(\slv_reg1_reg[31] [3]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[3]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(\slv_reg1_reg[31] [2]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[2]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(\slv_reg1_reg[31] [1]),
        .I1(\slv_reg2_reg[31] [0]),
        .I2(Q[1]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(\slv_reg1_reg[31] [0]),
        .O(i__carry_i_4_n_0));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_v1_0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_v1_0_S00_AXI calculator_v1_0_S00_AXI_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
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
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
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
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:1]p_1_in;
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
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator C
       (.D(reg_data_out),
        .Q(slv_reg0),
        .axi_araddr(axi_araddr),
        .\slv_reg1_reg[31] (slv_reg1),
        .\slv_reg2_reg[31] (slv_reg2));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
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
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(p_1_in[1]));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "hw5_calculator_0_0,calculator_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "calculator_v1_0,Vivado 2018.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_v1_0 inst
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
