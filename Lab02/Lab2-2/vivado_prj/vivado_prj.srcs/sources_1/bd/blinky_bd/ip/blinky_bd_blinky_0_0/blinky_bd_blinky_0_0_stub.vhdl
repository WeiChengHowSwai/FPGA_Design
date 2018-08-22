-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Aug 22 21:31:34 2018
-- Host        : DESKTOP-IRIBVUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/VLSILAB/Documents/GitHub/FPGA_Design/Lab02/Lab2-2/vivado_prj/vivado_prj.srcs/sources_1/bd/blinky_bd/ip/blinky_bd_blinky_0_0/blinky_bd_blinky_0_0_stub.vhdl
-- Design      : blinky_bd_blinky_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blinky_bd_blinky_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end blinky_bd_blinky_0_0;

architecture stub of blinky_bd_blinky_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,sw[1:0],led[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "blinky,Vivado 2018.2";
begin
end;
