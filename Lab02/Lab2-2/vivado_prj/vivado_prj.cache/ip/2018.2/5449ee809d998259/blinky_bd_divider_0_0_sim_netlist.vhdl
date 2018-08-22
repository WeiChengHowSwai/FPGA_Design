-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Aug 22 21:31:35 2018
-- Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blinky_bd_divider_0_0_sim_netlist.vhdl
-- Design      : blinky_bd_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider is
  signal clk_div_i_2_n_0 : STD_LOGIC;
  signal clk_div_i_3_n_0 : STD_LOGIC;
  signal clk_div_i_4_n_0 : STD_LOGIC;
  signal clk_div_i_5_n_0 : STD_LOGIC;
  signal clk_div_i_6_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal \NLW_cnt_reg[25]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[25]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
clk_div_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => \cnt_reg_n_0_[25]\,
      I1 => clk_div_i_2_n_0,
      I2 => \cnt_reg_n_0_[23]\,
      I3 => \cnt_reg_n_0_[22]\,
      I4 => \cnt_reg_n_0_[24]\,
      O => p_0_in
    );
clk_div_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA02AAAAAA"
    )
        port map (
      I0 => clk_div_i_3_n_0,
      I1 => clk_div_i_4_n_0,
      I2 => clk_div_i_5_n_0,
      I3 => \cnt_reg_n_0_[14]\,
      I4 => \cnt_reg_n_0_[18]\,
      I5 => clk_div_i_6_n_0,
      O => clk_div_i_2_n_0
    );
clk_div_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515555515555555"
    )
        port map (
      I0 => \cnt_reg_n_0_[21]\,
      I1 => \cnt_reg_n_0_[20]\,
      I2 => \cnt_reg_n_0_[19]\,
      I3 => \cnt_reg_n_0_[16]\,
      I4 => \cnt_reg_n_0_[18]\,
      I5 => \cnt_reg_n_0_[17]\,
      O => clk_div_i_3_n_0
    );
clk_div_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
        port map (
      I0 => \cnt_reg_n_0_[13]\,
      I1 => \cnt_reg_n_0_[11]\,
      I2 => \cnt_reg_n_0_[10]\,
      I3 => \cnt_reg_n_0_[8]\,
      I4 => \cnt_reg_n_0_[9]\,
      O => clk_div_i_4_n_0
    );
clk_div_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC8000088880000"
    )
        port map (
      I0 => \cnt_reg_n_0_[7]\,
      I1 => \cnt_reg_n_0_[9]\,
      I2 => \cnt_reg_n_0_[5]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[10]\,
      I5 => \cnt_reg_n_0_[6]\,
      O => clk_div_i_5_n_0
    );
clk_div_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777FFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[19]\,
      I1 => \cnt_reg_n_0_[15]\,
      I2 => \cnt_reg_n_0_[13]\,
      I3 => \cnt_reg_n_0_[12]\,
      I4 => \cnt_reg_n_0_[20]\,
      O => clk_div_i_6_n_0
    );
clk_div_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in,
      Q => clk_div
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFEFFF"
    )
        port map (
      I0 => \cnt[25]_i_3_n_0\,
      I1 => \cnt[25]_i_4_n_0\,
      I2 => \cnt_reg_n_0_[25]\,
      I3 => \cnt_reg_n_0_[24]\,
      I4 => \cnt[25]_i_5_n_0\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(10),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(11),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(12),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(13),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(14),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(15),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(16),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(17),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(18),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(19),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(1),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(20),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(21),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(22),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(23),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(23)
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(24),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(24)
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(25),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(25)
    );
\cnt[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[22]\,
      I1 => \cnt_reg_n_0_[13]\,
      I2 => \cnt_reg_n_0_[15]\,
      I3 => \cnt_reg_n_0_[10]\,
      I4 => \cnt[25]_i_6_n_0\,
      O => \cnt[25]_i_3_n_0\
    );
\cnt[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[18]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[17]\,
      I3 => \cnt_reg_n_0_[6]\,
      I4 => \cnt[25]_i_7_n_0\,
      O => \cnt[25]_i_4_n_0\
    );
\cnt[25]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[21]\,
      I1 => \cnt_reg_n_0_[20]\,
      I2 => \cnt_reg_n_0_[23]\,
      I3 => \cnt_reg_n_0_[11]\,
      I4 => \cnt[25]_i_8_n_0\,
      O => \cnt[25]_i_5_n_0\
    );
\cnt[25]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[14]\,
      I1 => \cnt_reg_n_0_[12]\,
      I2 => \cnt_reg_n_0_[8]\,
      I3 => \cnt_reg_n_0_[9]\,
      O => \cnt[25]_i_6_n_0\
    );
\cnt[25]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      O => \cnt[25]_i_7_n_0\
    );
\cnt[25]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => \cnt_reg_n_0_[19]\,
      I2 => \cnt_reg_n_0_[16]\,
      I3 => \cnt_reg_n_0_[7]\,
      O => \cnt[25]_i_8_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(2),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(3),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(4),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(5),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(6),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(7),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(8),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => data0(9),
      I1 => \cnt[25]_i_3_n_0\,
      I2 => \cnt[25]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[25]\,
      I4 => \cnt_reg_n_0_[24]\,
      I5 => \cnt[25]_i_5_n_0\,
      O => cnt(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(10),
      Q => \cnt_reg_n_0_[10]\
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(11),
      Q => \cnt_reg_n_0_[11]\
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(12),
      Q => \cnt_reg_n_0_[12]\
    );
\cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_2_n_0\,
      CO(3) => \cnt_reg[12]_i_2_n_0\,
      CO(2) => \cnt_reg[12]_i_2_n_1\,
      CO(1) => \cnt_reg[12]_i_2_n_2\,
      CO(0) => \cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \cnt_reg_n_0_[12]\,
      S(2) => \cnt_reg_n_0_[11]\,
      S(1) => \cnt_reg_n_0_[10]\,
      S(0) => \cnt_reg_n_0_[9]\
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(13),
      Q => \cnt_reg_n_0_[13]\
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(14),
      Q => \cnt_reg_n_0_[14]\
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(15),
      Q => \cnt_reg_n_0_[15]\
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(16),
      Q => \cnt_reg_n_0_[16]\
    );
\cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_2_n_0\,
      CO(3) => \cnt_reg[16]_i_2_n_0\,
      CO(2) => \cnt_reg[16]_i_2_n_1\,
      CO(1) => \cnt_reg[16]_i_2_n_2\,
      CO(0) => \cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \cnt_reg_n_0_[16]\,
      S(2) => \cnt_reg_n_0_[15]\,
      S(1) => \cnt_reg_n_0_[14]\,
      S(0) => \cnt_reg_n_0_[13]\
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(17),
      Q => \cnt_reg_n_0_[17]\
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(18),
      Q => \cnt_reg_n_0_[18]\
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(19),
      Q => \cnt_reg_n_0_[19]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(20),
      Q => \cnt_reg_n_0_[20]\
    );
\cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_2_n_0\,
      CO(3) => \cnt_reg[20]_i_2_n_0\,
      CO(2) => \cnt_reg[20]_i_2_n_1\,
      CO(1) => \cnt_reg[20]_i_2_n_2\,
      CO(0) => \cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \cnt_reg_n_0_[20]\,
      S(2) => \cnt_reg_n_0_[19]\,
      S(1) => \cnt_reg_n_0_[18]\,
      S(0) => \cnt_reg_n_0_[17]\
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(21),
      Q => \cnt_reg_n_0_[21]\
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(22),
      Q => \cnt_reg_n_0_[22]\
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(23),
      Q => \cnt_reg_n_0_[23]\
    );
\cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(24),
      Q => \cnt_reg_n_0_[24]\
    );
\cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_2_n_0\,
      CO(3) => \cnt_reg[24]_i_2_n_0\,
      CO(2) => \cnt_reg[24]_i_2_n_1\,
      CO(1) => \cnt_reg[24]_i_2_n_2\,
      CO(0) => \cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \cnt_reg_n_0_[24]\,
      S(2) => \cnt_reg_n_0_[23]\,
      S(1) => \cnt_reg_n_0_[22]\,
      S(0) => \cnt_reg_n_0_[21]\
    );
\cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(25),
      Q => \cnt_reg_n_0_[25]\
    );
\cnt_reg[25]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_2_n_0\,
      CO(3 downto 0) => \NLW_cnt_reg[25]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt_reg[25]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(25),
      S(3 downto 1) => B"000",
      S(0) => \cnt_reg_n_0_[25]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\
    );
\cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[4]_i_2_n_0\,
      CO(2) => \cnt_reg[4]_i_2_n_1\,
      CO(1) => \cnt_reg[4]_i_2_n_2\,
      CO(0) => \cnt_reg[4]_i_2_n_3\,
      CYINIT => \cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \cnt_reg_n_0_[4]\,
      S(2) => \cnt_reg_n_0_[3]\,
      S(1) => \cnt_reg_n_0_[2]\,
      S(0) => \cnt_reg_n_0_[1]\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(6),
      Q => \cnt_reg_n_0_[6]\
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(7),
      Q => \cnt_reg_n_0_[7]\
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(8),
      Q => \cnt_reg_n_0_[8]\
    );
\cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_2_n_0\,
      CO(3) => \cnt_reg[8]_i_2_n_0\,
      CO(2) => \cnt_reg[8]_i_2_n_1\,
      CO(1) => \cnt_reg[8]_i_2_n_2\,
      CO(0) => \cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \cnt_reg_n_0_[8]\,
      S(2) => \cnt_reg_n_0_[7]\,
      S(1) => \cnt_reg_n_0_[6]\,
      S(0) => \cnt_reg_n_0_[5]\
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cnt(9),
      Q => \cnt_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blinky_bd_divider_0_0,divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "divider,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN blinky_bd_clk";
  attribute X_INTERFACE_INFO of clk_div : signal is "xilinx.com:signal:clock:1.0 clk_div CLK";
  attribute X_INTERFACE_PARAMETER of clk_div : signal is "XIL_INTERFACENAME clk_div, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN blinky_bd_divider_0_0_clk_div";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider
     port map (
      clk => clk,
      clk_div => clk_div,
      rst => rst
    );
end STRUCTURE;
