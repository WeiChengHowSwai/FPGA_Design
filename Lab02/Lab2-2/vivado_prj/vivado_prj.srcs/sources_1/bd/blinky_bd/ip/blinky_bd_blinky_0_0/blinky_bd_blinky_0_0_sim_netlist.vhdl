-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Aug 22 21:31:34 2018
-- Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/VLSILAB/Documents/GitHub/FPGA_Design/Lab02/Lab2-2/vivado_prj/vivado_prj.srcs/sources_1/bd/blinky_bd/ip/blinky_bd_blinky_0_0/blinky_bd_blinky_0_0_sim_netlist.vhdl
-- Design      : blinky_bd_blinky_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blinky_bd_blinky_0_0_blinky is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blinky_bd_blinky_0_0_blinky : entity is "blinky";
end blinky_bd_blinky_0_0_blinky;

architecture STRUCTURE of blinky_bd_blinky_0_0_blinky is
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \led[0]_i_1_n_0\ : STD_LOGIC;
  signal \led[1]_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
begin
  led(3 downto 0) <= \^led\(3 downto 0);
\led[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202020202020202D"
    )
        port map (
      I0 => sw(1),
      I1 => sw(0),
      I2 => \^led\(1),
      I3 => \^led\(0),
      I4 => \^led\(2),
      I5 => \^led\(3),
      O => \led[0]_i_1_n_0\
    );
\led[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F2D0"
    )
        port map (
      I0 => sw(1),
      I1 => sw(0),
      I2 => \^led\(0),
      I3 => \^led\(2),
      O => \led[1]_i_1_n_0\
    );
\led[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F2D0"
    )
        port map (
      I0 => sw(1),
      I1 => sw(0),
      I2 => \^led\(1),
      I3 => \^led\(3),
      O => \led[2]_i_1_n_0\
    );
\led[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD0000DDDD0002"
    )
        port map (
      I0 => sw(1),
      I1 => sw(0),
      I2 => \^led\(1),
      I3 => \^led\(0),
      I4 => \^led\(2),
      I5 => \^led\(3),
      O => \led[3]_i_1_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \led[0]_i_1_n_0\,
      Q => \^led\(0)
    );
\led_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \led[1]_i_1_n_0\,
      Q => \^led\(1)
    );
\led_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \led[2]_i_1_n_0\,
      Q => \^led\(2)
    );
\led_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \led[3]_i_1_n_0\,
      Q => \^led\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blinky_bd_blinky_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of blinky_bd_blinky_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blinky_bd_blinky_0_0 : entity is "blinky_bd_blinky_0_0,blinky,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of blinky_bd_blinky_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of blinky_bd_blinky_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of blinky_bd_blinky_0_0 : entity is "blinky,Vivado 2018.2";
end blinky_bd_blinky_0_0;

architecture STRUCTURE of blinky_bd_blinky_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN blinky_bd_divider_0_0_clk_div";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
begin
inst: entity work.blinky_bd_blinky_0_0_blinky
     port map (
      clk => clk,
      led(3 downto 0) => led(3 downto 0),
      rst => rst,
      sw(1 downto 0) => sw(1 downto 0)
    );
end STRUCTURE;
