-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Dec  2 15:11:17 2018
-- Host        : Happy running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hw5_sorting_0_0_sim_netlist.vhdl
-- Design      : hw5_sorting_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting is
  signal \FSM_onehot_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_counter_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_counter_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_counter_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_counter_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_counter_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_counter_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_counter_reg_n_0_[3]\ : signal is "yes";
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal d_out1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal d_out2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal d_out3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal d_out4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal en_w : STD_LOGIC;
  signal en_w_i_1_n_0 : STD_LOGIC;
  signal t1 : STD_LOGIC;
  signal \t1[0]_i_1_n_0\ : STD_LOGIC;
  signal \t1[0]_i_2_n_0\ : STD_LOGIC;
  signal \t1[1]_i_1_n_0\ : STD_LOGIC;
  signal \t1[1]_i_2_n_0\ : STD_LOGIC;
  signal \t1[2]_i_1_n_0\ : STD_LOGIC;
  signal \t1[2]_i_2_n_0\ : STD_LOGIC;
  signal \t1[3]_i_2_n_0\ : STD_LOGIC;
  signal \t1[3]_i_3_n_0\ : STD_LOGIC;
  signal \t1_reg_n_0_[0]\ : STD_LOGIC;
  signal \t1_reg_n_0_[1]\ : STD_LOGIC;
  signal \t1_reg_n_0_[2]\ : STD_LOGIC;
  signal \t1_reg_n_0_[3]\ : STD_LOGIC;
  signal t2 : STD_LOGIC;
  signal \t2[0]_i_1_n_0\ : STD_LOGIC;
  signal \t2[0]_i_2_n_0\ : STD_LOGIC;
  signal \t2[0]_i_3_n_0\ : STD_LOGIC;
  signal \t2[1]_i_1_n_0\ : STD_LOGIC;
  signal \t2[1]_i_2_n_0\ : STD_LOGIC;
  signal \t2[1]_i_3_n_0\ : STD_LOGIC;
  signal \t2[2]_i_1_n_0\ : STD_LOGIC;
  signal \t2[2]_i_2_n_0\ : STD_LOGIC;
  signal \t2[2]_i_3_n_0\ : STD_LOGIC;
  signal \t2[3]_i_10_n_0\ : STD_LOGIC;
  signal \t2[3]_i_11_n_0\ : STD_LOGIC;
  signal \t2[3]_i_2_n_0\ : STD_LOGIC;
  signal \t2[3]_i_3_n_0\ : STD_LOGIC;
  signal \t2[3]_i_4_n_0\ : STD_LOGIC;
  signal \t2[3]_i_5_n_0\ : STD_LOGIC;
  signal \t2[3]_i_6_n_0\ : STD_LOGIC;
  signal \t2[3]_i_7_n_0\ : STD_LOGIC;
  signal \t2[3]_i_8_n_0\ : STD_LOGIC;
  signal \t2[3]_i_9_n_0\ : STD_LOGIC;
  signal \t2_reg_n_0_[0]\ : STD_LOGIC;
  signal \t2_reg_n_0_[1]\ : STD_LOGIC;
  signal \t2_reg_n_0_[2]\ : STD_LOGIC;
  signal \t2_reg_n_0_[3]\ : STD_LOGIC;
  signal t3 : STD_LOGIC;
  signal \t3[0]_i_1_n_0\ : STD_LOGIC;
  signal \t3[0]_i_2_n_0\ : STD_LOGIC;
  signal \t3[0]_i_3_n_0\ : STD_LOGIC;
  signal \t3[1]_i_1_n_0\ : STD_LOGIC;
  signal \t3[1]_i_2_n_0\ : STD_LOGIC;
  signal \t3[1]_i_3_n_0\ : STD_LOGIC;
  signal \t3[2]_i_1_n_0\ : STD_LOGIC;
  signal \t3[2]_i_2_n_0\ : STD_LOGIC;
  signal \t3[2]_i_3_n_0\ : STD_LOGIC;
  signal \t3[3]_i_10_n_0\ : STD_LOGIC;
  signal \t3[3]_i_2_n_0\ : STD_LOGIC;
  signal \t3[3]_i_3_n_0\ : STD_LOGIC;
  signal \t3[3]_i_4_n_0\ : STD_LOGIC;
  signal \t3[3]_i_5_n_0\ : STD_LOGIC;
  signal \t3[3]_i_6_n_0\ : STD_LOGIC;
  signal \t3[3]_i_7_n_0\ : STD_LOGIC;
  signal \t3[3]_i_8_n_0\ : STD_LOGIC;
  signal \t3[3]_i_9_n_0\ : STD_LOGIC;
  signal \t3_reg_n_0_[0]\ : STD_LOGIC;
  signal \t3_reg_n_0_[1]\ : STD_LOGIC;
  signal \t3_reg_n_0_[2]\ : STD_LOGIC;
  signal \t3_reg_n_0_[3]\ : STD_LOGIC;
  signal t4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \t4[0]_i_1_n_0\ : STD_LOGIC;
  signal \t4[1]_i_1_n_0\ : STD_LOGIC;
  signal \t4[2]_i_1_n_0\ : STD_LOGIC;
  signal \t4[3]_i_2_n_0\ : STD_LOGIC;
  signal t4_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_counter_reg[0]\ : label is "iSTATE:1000,iSTATE0:0001,iSTATE1:0010,iSTATE2:0100,";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_counter_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_counter_reg[1]\ : label is "iSTATE:1000,iSTATE0:0001,iSTATE1:0010,iSTATE2:0100,";
  attribute KEEP of \FSM_onehot_counter_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_counter_reg[2]\ : label is "iSTATE:1000,iSTATE0:0001,iSTATE1:0010,iSTATE2:0100,";
  attribute KEEP of \FSM_onehot_counter_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_counter_reg[3]\ : label is "iSTATE:1000,iSTATE0:0001,iSTATE1:0010,iSTATE2:0100,";
  attribute KEEP of \FSM_onehot_counter_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \t2[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \t2[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \t3[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \t3[3]_i_5\ : label is "soft_lutpair0";
begin
\FSM_onehot_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[1]\,
      I1 => \FSM_onehot_counter_reg_n_0_[0]\,
      I2 => \FSM_onehot_counter_reg_n_0_[2]\,
      O => \FSM_onehot_counter[0]_i_1_n_0\
    );
\FSM_onehot_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_counter[0]_i_1_n_0\,
      Q => \FSM_onehot_counter_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_counter_reg_n_0_[0]\,
      Q => \FSM_onehot_counter_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_counter_reg_n_0_[1]\,
      Q => \FSM_onehot_counter_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_counter_reg_n_0_[2]\,
      Q => \FSM_onehot_counter_reg_n_0_[3]\,
      R => '0'
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => d_out4(0),
      I4 => sel0(0),
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d_out3(0),
      I1 => d_out2(0),
      I2 => sel0(1),
      I3 => d_out1(0),
      I4 => sel0(0),
      I5 => Q(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => d_out4(1),
      I4 => sel0(0),
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d_out3(1),
      I1 => d_out2(1),
      I2 => sel0(1),
      I3 => d_out1(1),
      I4 => sel0(0),
      I5 => Q(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => d_out4(2),
      I4 => sel0(0),
      O => D(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d_out3(2),
      I1 => d_out2(2),
      I2 => sel0(1),
      I3 => d_out1(2),
      I4 => sel0(0),
      I5 => Q(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => d_out4(3),
      I4 => sel0(0),
      O => D(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d_out3(3),
      I1 => d_out2(3),
      I2 => sel0(1),
      I3 => d_out1(3),
      I4 => sel0(0),
      I5 => Q(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\d_out1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t1_reg_n_0_[0]\,
      Q => d_out1(0),
      R => '0'
    );
\d_out1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t1_reg_n_0_[1]\,
      Q => d_out1(1),
      R => '0'
    );
\d_out1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t1_reg_n_0_[2]\,
      Q => d_out1(2),
      R => '0'
    );
\d_out1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t1_reg_n_0_[3]\,
      Q => d_out1(3),
      R => '0'
    );
\d_out2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t2_reg_n_0_[0]\,
      Q => d_out2(0),
      R => '0'
    );
\d_out2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t2_reg_n_0_[1]\,
      Q => d_out2(1),
      R => '0'
    );
\d_out2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t2_reg_n_0_[2]\,
      Q => d_out2(2),
      R => '0'
    );
\d_out2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t2_reg_n_0_[3]\,
      Q => d_out2(3),
      R => '0'
    );
\d_out3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t3_reg_n_0_[0]\,
      Q => d_out3(0),
      R => '0'
    );
\d_out3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t3_reg_n_0_[1]\,
      Q => d_out3(1),
      R => '0'
    );
\d_out3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t3_reg_n_0_[2]\,
      Q => d_out3(2),
      R => '0'
    );
\d_out3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => \t3_reg_n_0_[3]\,
      Q => d_out3(3),
      R => '0'
    );
\d_out4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => t4(0),
      Q => d_out4(0),
      R => '0'
    );
\d_out4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => t4(1),
      Q => d_out4(1),
      R => '0'
    );
\d_out4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => t4(2),
      Q => d_out4(2),
      R => '0'
    );
\d_out4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_counter_reg_n_0_[3]\,
      D => t4(3),
      Q => d_out4(3),
      R => '0'
    );
en_w_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => en_w,
      I1 => \FSM_onehot_counter_reg_n_0_[1]\,
      I2 => \FSM_onehot_counter_reg_n_0_[0]\,
      O => en_w_i_1_n_0
    );
en_w_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => en_w_i_1_n_0,
      Q => en_w,
      S => \FSM_onehot_counter_reg_n_0_[2]\
    );
\t1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(8),
      I1 => \FSM_onehot_counter_reg_n_0_[1]\,
      I2 => \t1[0]_i_2_n_0\,
      O => \t1[0]_i_1_n_0\
    );
\t1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => Q(12),
      I1 => \FSM_onehot_counter_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => \t2[3]_i_10_n_0\,
      I4 => Q(4),
      I5 => \FSM_onehot_counter_reg_n_0_[0]\,
      O => \t1[0]_i_2_n_0\
    );
\t1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(9),
      I1 => \FSM_onehot_counter_reg_n_0_[1]\,
      I2 => \t1[1]_i_2_n_0\,
      O => \t1[1]_i_1_n_0\
    );
\t1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => Q(13),
      I1 => \FSM_onehot_counter_reg_n_0_[2]\,
      I2 => Q(1),
      I3 => \t2[3]_i_10_n_0\,
      I4 => Q(5),
      I5 => \FSM_onehot_counter_reg_n_0_[0]\,
      O => \t1[1]_i_2_n_0\
    );
\t1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(10),
      I1 => \FSM_onehot_counter_reg_n_0_[1]\,
      I2 => \t1[2]_i_2_n_0\,
      O => \t1[2]_i_1_n_0\
    );
\t1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => Q(14),
      I1 => \FSM_onehot_counter_reg_n_0_[2]\,
      I2 => Q(2),
      I3 => \t2[3]_i_10_n_0\,
      I4 => Q(6),
      I5 => \FSM_onehot_counter_reg_n_0_[0]\,
      O => \t1[2]_i_2_n_0\
    );
\t1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFECEF"
    )
        port map (
      I0 => \t2[3]_i_4_n_0\,
      I1 => \FSM_onehot_counter_reg_n_0_[0]\,
      I2 => \FSM_onehot_counter_reg_n_0_[1]\,
      I3 => \FSM_onehot_counter_reg_n_0_[2]\,
      I4 => \t3[3]_i_5_n_0\,
      O => t1
    );
\t1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(11),
      I1 => \FSM_onehot_counter_reg_n_0_[1]\,
      I2 => \t1[3]_i_3_n_0\,
      O => \t1[3]_i_2_n_0\
    );
\t1[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => Q(15),
      I1 => \FSM_onehot_counter_reg_n_0_[2]\,
      I2 => Q(3),
      I3 => \t2[3]_i_10_n_0\,
      I4 => Q(7),
      I5 => \FSM_onehot_counter_reg_n_0_[0]\,
      O => \t1[3]_i_3_n_0\
    );
\t1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t1,
      D => \t1[0]_i_1_n_0\,
      Q => \t1_reg_n_0_[0]\,
      R => en_w
    );
\t1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t1,
      D => \t1[1]_i_1_n_0\,
      Q => \t1_reg_n_0_[1]\,
      R => en_w
    );
\t1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t1,
      D => \t1[2]_i_1_n_0\,
      Q => \t1_reg_n_0_[2]\,
      R => en_w
    );
\t1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t1,
      D => \t1[3]_i_2_n_0\,
      Q => \t1_reg_n_0_[3]\,
      R => en_w
    );
\t2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => \t1_reg_n_0_[0]\,
      I1 => \t2[3]_i_4_n_0\,
      I2 => Q(8),
      I3 => \FSM_onehot_counter_reg_n_0_[1]\,
      I4 => \t2[0]_i_2_n_0\,
      I5 => \t2[0]_i_3_n_0\,
      O => \t2[0]_i_1_n_0\
    );
\t2[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \t2[3]_i_10_n_0\,
      I3 => Q(4),
      O => \t2[0]_i_2_n_0\
    );
\t2[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(12),
      I2 => \t3[3]_i_5_n_0\,
      I3 => \t1_reg_n_0_[0]\,
      O => \t2[0]_i_3_n_0\
    );
\t2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => \t1_reg_n_0_[1]\,
      I1 => \t2[3]_i_4_n_0\,
      I2 => Q(9),
      I3 => \FSM_onehot_counter_reg_n_0_[1]\,
      I4 => \t2[1]_i_2_n_0\,
      I5 => \t2[1]_i_3_n_0\,
      O => \t2[1]_i_1_n_0\
    );
\t2[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => Q(1),
      I2 => \t2[3]_i_10_n_0\,
      I3 => Q(5),
      O => \t2[1]_i_2_n_0\
    );
\t2[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(13),
      I2 => \t3[3]_i_5_n_0\,
      I3 => \t1_reg_n_0_[1]\,
      O => \t2[1]_i_3_n_0\
    );
\t2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => \t1_reg_n_0_[2]\,
      I1 => \t2[3]_i_4_n_0\,
      I2 => Q(10),
      I3 => \FSM_onehot_counter_reg_n_0_[1]\,
      I4 => \t2[2]_i_2_n_0\,
      I5 => \t2[2]_i_3_n_0\,
      O => \t2[2]_i_1_n_0\
    );
\t2[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => Q(2),
      I2 => \t2[3]_i_10_n_0\,
      I3 => Q(6),
      O => \t2[2]_i_2_n_0\
    );
\t2[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(14),
      I2 => \t3[3]_i_5_n_0\,
      I3 => \t1_reg_n_0_[2]\,
      O => \t2[2]_i_3_n_0\
    );
\t2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[1]\,
      I1 => \t2[3]_i_3_n_0\,
      I2 => \t2[3]_i_4_n_0\,
      I3 => \FSM_onehot_counter_reg_n_0_[0]\,
      I4 => \t2[3]_i_5_n_0\,
      O => t2
    );
\t2[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \t2[3]_i_11_n_0\,
      I1 => Q(3),
      I2 => Q(7),
      O => \t2[3]_i_10_n_0\
    );
\t2[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(6),
      O => \t2[3]_i_11_n_0\
    );
\t2[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB800"
    )
        port map (
      I0 => \t1_reg_n_0_[3]\,
      I1 => \t2[3]_i_4_n_0\,
      I2 => Q(11),
      I3 => \FSM_onehot_counter_reg_n_0_[1]\,
      I4 => \t2[3]_i_6_n_0\,
      I5 => \t2[3]_i_7_n_0\,
      O => \t2[3]_i_2_n_0\
    );
\t2[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \t2[3]_i_8_n_0\,
      I1 => Q(11),
      I2 => \t2_reg_n_0_[3]\,
      O => \t2[3]_i_3_n_0\
    );
\t2[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \t2[3]_i_9_n_0\,
      I1 => Q(11),
      I2 => \t1_reg_n_0_[3]\,
      O => \t2[3]_i_4_n_0\
    );
\t2[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \t3[3]_i_5_n_0\,
      I1 => \t3[3]_i_3_n_0\,
      I2 => \FSM_onehot_counter_reg_n_0_[2]\,
      I3 => \FSM_onehot_counter_reg_n_0_[1]\,
      O => \t2[3]_i_5_n_0\
    );
\t2[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => Q(3),
      I2 => \t2[3]_i_10_n_0\,
      I3 => Q(7),
      O => \t2[3]_i_6_n_0\
    );
\t2[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(15),
      I2 => \t3[3]_i_5_n_0\,
      I3 => \t1_reg_n_0_[3]\,
      O => \t2[3]_i_7_n_0\
    );
\t2[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => \t2_reg_n_0_[0]\,
      I1 => Q(8),
      I2 => Q(9),
      I3 => \t2_reg_n_0_[1]\,
      I4 => Q(10),
      I5 => \t2_reg_n_0_[2]\,
      O => \t2[3]_i_8_n_0\
    );
\t2[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => \t1_reg_n_0_[0]\,
      I1 => Q(8),
      I2 => Q(9),
      I3 => \t1_reg_n_0_[1]\,
      I4 => Q(10),
      I5 => \t1_reg_n_0_[2]\,
      O => \t2[3]_i_9_n_0\
    );
\t2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t2,
      D => \t2[0]_i_1_n_0\,
      Q => \t2_reg_n_0_[0]\,
      R => en_w
    );
\t2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t2,
      D => \t2[1]_i_1_n_0\,
      Q => \t2_reg_n_0_[1]\,
      R => en_w
    );
\t2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t2,
      D => \t2[2]_i_1_n_0\,
      Q => \t2_reg_n_0_[2]\,
      R => en_w
    );
\t2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t2,
      D => \t2[3]_i_2_n_0\,
      Q => \t2_reg_n_0_[3]\,
      R => en_w
    );
\t3[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => \t3[0]_i_2_n_0\,
      I2 => \t3[0]_i_3_n_0\,
      O => \t3[0]_i_1_n_0\
    );
\t3[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(12),
      I2 => \t3[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[0]\,
      I4 => \t3[3]_i_5_n_0\,
      O => \t3[0]_i_2_n_0\
    );
\t3[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[1]\,
      I1 => Q(8),
      I2 => \t2[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[0]\,
      I4 => \t2[3]_i_4_n_0\,
      O => \t3[0]_i_3_n_0\
    );
\t3[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => \t3[1]_i_2_n_0\,
      I2 => \t3[1]_i_3_n_0\,
      O => \t3[1]_i_1_n_0\
    );
\t3[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(13),
      I2 => \t3[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[1]\,
      I4 => \t3[3]_i_5_n_0\,
      O => \t3[1]_i_2_n_0\
    );
\t3[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[1]\,
      I1 => Q(9),
      I2 => \t2[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[1]\,
      I4 => \t2[3]_i_4_n_0\,
      O => \t3[1]_i_3_n_0\
    );
\t3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => \t3[2]_i_2_n_0\,
      I2 => \t3[2]_i_3_n_0\,
      O => \t3[2]_i_1_n_0\
    );
\t3[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(14),
      I2 => \t3[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[2]\,
      I4 => \t3[3]_i_5_n_0\,
      O => \t3[2]_i_2_n_0\
    );
\t3[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[1]\,
      I1 => Q(10),
      I2 => \t2[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[2]\,
      I4 => \t2[3]_i_4_n_0\,
      O => \t3[2]_i_3_n_0\
    );
\t3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFBAB"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[1]\,
      I1 => \FSM_onehot_counter_reg_n_0_[0]\,
      I2 => \FSM_onehot_counter_reg_n_0_[2]\,
      I3 => \t3[3]_i_3_n_0\,
      I4 => \t3[3]_i_4_n_0\,
      I5 => \t3[3]_i_5_n_0\,
      O => t3
    );
\t3[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => \t1_reg_n_0_[0]\,
      I1 => Q(12),
      I2 => Q(13),
      I3 => \t1_reg_n_0_[1]\,
      I4 => Q(14),
      I5 => \t1_reg_n_0_[2]\,
      O => \t3[3]_i_10_n_0\
    );
\t3[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[0]\,
      I1 => \t3[3]_i_6_n_0\,
      I2 => \t3[3]_i_7_n_0\,
      O => \t3[3]_i_2_n_0\
    );
\t3[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \t3[3]_i_8_n_0\,
      I1 => Q(15),
      I2 => \t2_reg_n_0_[3]\,
      O => \t3[3]_i_3_n_0\
    );
\t3[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \t3[3]_i_9_n_0\,
      I1 => Q(15),
      I2 => \t3_reg_n_0_[3]\,
      O => \t3[3]_i_4_n_0\
    );
\t3[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \t3[3]_i_10_n_0\,
      I1 => Q(15),
      I2 => \t1_reg_n_0_[3]\,
      O => \t3[3]_i_5_n_0\
    );
\t3[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(15),
      I2 => \t3[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[3]\,
      I4 => \t3[3]_i_5_n_0\,
      O => \t3[3]_i_6_n_0\
    );
\t3[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[1]\,
      I1 => Q(11),
      I2 => \t2[3]_i_3_n_0\,
      I3 => \t2_reg_n_0_[3]\,
      I4 => \t2[3]_i_4_n_0\,
      O => \t3[3]_i_7_n_0\
    );
\t3[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => \t2_reg_n_0_[0]\,
      I1 => Q(12),
      I2 => Q(13),
      I3 => \t2_reg_n_0_[1]\,
      I4 => Q(14),
      I5 => \t2_reg_n_0_[2]\,
      O => \t3[3]_i_8_n_0\
    );
\t3[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => \t3_reg_n_0_[0]\,
      I1 => Q(12),
      I2 => Q(13),
      I3 => \t3_reg_n_0_[1]\,
      I4 => Q(14),
      I5 => \t3_reg_n_0_[2]\,
      O => \t3[3]_i_9_n_0\
    );
\t3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t3,
      D => \t3[0]_i_1_n_0\,
      Q => \t3_reg_n_0_[0]\,
      R => en_w
    );
\t3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t3,
      D => \t3[1]_i_1_n_0\,
      Q => \t3_reg_n_0_[1]\,
      R => en_w
    );
\t3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t3,
      D => \t3[2]_i_1_n_0\,
      Q => \t3_reg_n_0_[2]\,
      R => en_w
    );
\t3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t3,
      D => \t3[3]_i_2_n_0\,
      Q => \t3_reg_n_0_[3]\,
      R => en_w
    );
\t4[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(12),
      I2 => \t3[3]_i_4_n_0\,
      I3 => \t3_reg_n_0_[0]\,
      I4 => \t3[3]_i_3_n_0\,
      I5 => \t3[3]_i_5_n_0\,
      O => \t4[0]_i_1_n_0\
    );
\t4[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(13),
      I2 => \t3[3]_i_4_n_0\,
      I3 => \t3_reg_n_0_[1]\,
      I4 => \t3[3]_i_3_n_0\,
      I5 => \t3[3]_i_5_n_0\,
      O => \t4[1]_i_1_n_0\
    );
\t4[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(14),
      I2 => \t3[3]_i_4_n_0\,
      I3 => \t3_reg_n_0_[2]\,
      I4 => \t3[3]_i_3_n_0\,
      I5 => \t3[3]_i_5_n_0\,
      O => \t4[2]_i_1_n_0\
    );
\t4[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => \FSM_onehot_counter_reg_n_0_[1]\,
      I2 => \FSM_onehot_counter_reg_n_0_[0]\,
      O => t4_0
    );
\t4[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AA00A808"
    )
        port map (
      I0 => \FSM_onehot_counter_reg_n_0_[2]\,
      I1 => Q(15),
      I2 => \t3[3]_i_4_n_0\,
      I3 => \t3_reg_n_0_[3]\,
      I4 => \t3[3]_i_3_n_0\,
      I5 => \t3[3]_i_5_n_0\,
      O => \t4[3]_i_2_n_0\
    );
\t4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t4_0,
      D => \t4[0]_i_1_n_0\,
      Q => t4(0),
      R => en_w
    );
\t4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t4_0,
      D => \t4[1]_i_1_n_0\,
      Q => t4(1),
      R => en_w
    );
\t4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t4_0,
      D => \t4[2]_i_1_n_0\,
      Q => t4(2),
      R => en_w
    );
\t4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => t4_0,
      D => \t4[3]_i_2_n_0\,
      Q => t4(3),
      R => en_w
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair17";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => axi_awaddr(4),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(10),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(11),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(12),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(13),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(14),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(15),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[16]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[17]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[19]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(19)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[20]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[23]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(29)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(31)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(4),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(5),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(6),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(7),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(8),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg0(9),
      I2 => sel0(1),
      I3 => sel0(2),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => p_0_in
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => p_0_in
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => p_0_in
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => p_0_in
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => p_0_in
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => p_0_in
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => p_0_in
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => p_0_in
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => p_0_in
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => p_0_in
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => p_0_in
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => p_0_in
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => p_0_in
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => p_0_in
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => p_0_in
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => p_0_in
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => p_0_in
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => p_0_in
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => p_0_in
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => p_0_in
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => p_0_in
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => p_0_in
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => p_0_in
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => p_0_in
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => p_0_in
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => p_0_in
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => p_0_in
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => p_0_in
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => p_0_in
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => p_0_in
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => p_0_in
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => p_0_in
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
sorting_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting
     port map (
      D(3 downto 0) => reg_data_out(3 downto 0),
      Q(15 downto 0) => slv_reg0(15 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0 : entity is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0 : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
sorting_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hw5_sorting_0_0,sorting_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sorting_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 5;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hw5_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN hw5_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sorting_v1_0
     port map (
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(4 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arprot(2 downto 0) => s00_axi_arprot(2 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(4 downto 0),
      s00_axi_awprot(2 downto 0) => s00_axi_awprot(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => s00_axi_bresp(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => s00_axi_rresp(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
