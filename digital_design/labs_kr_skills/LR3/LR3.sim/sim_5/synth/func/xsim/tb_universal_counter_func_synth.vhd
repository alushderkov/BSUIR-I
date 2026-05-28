-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Apr  1 20:08:39 2026
-- Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_5/synth/func/xsim/tb_universal_counter_func_synth.vhd
-- Design      : universal_counter
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity universal_counter is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    en : in STD_LOGIC;
    mode : in STD_LOGIC_VECTOR ( 2 downto 0 );
    d_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of universal_counter : entity is true;
  attribute N : integer;
  attribute N of universal_counter : entity is 8;
end universal_counter;

architecture STRUCTURE of universal_counter is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal d_i_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal en_IBUF : STD_LOGIC;
  signal mode_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q_reg : STD_LOGIC;
  signal \q_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal rst_n_IBUF : STD_LOGIC;
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\d_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(0),
      O => d_i_IBUF(0)
    );
\d_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(1),
      O => d_i_IBUF(1)
    );
\d_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(2),
      O => d_i_IBUF(2)
    );
\d_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(3),
      O => d_i_IBUF(3)
    );
\d_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(4),
      O => d_i_IBUF(4)
    );
\d_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(5),
      O => d_i_IBUF(5)
    );
\d_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(6),
      O => d_i_IBUF(6)
    );
\d_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => d_i(7),
      O => d_i_IBUF(7)
    );
en_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => en,
      O => en_IBUF
    );
\mode_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mode(0),
      O => mode_IBUF(0)
    );
\mode_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mode(1),
      O => mode_IBUF(1)
    );
\q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(0),
      O => q(0)
    );
\q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(1),
      O => q(1)
    );
\q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(2),
      O => q(2)
    );
\q_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(3),
      O => q(3)
    );
\q_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(4),
      O => q(4)
    );
\q_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(5),
      O => q(5)
    );
\q_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(6),
      O => q(6)
    );
\q_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(7),
      O => q(7)
    );
\q_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => q_OBUF(1),
      I1 => mode_IBUF(0),
      I2 => d_i_IBUF(0),
      I3 => mode_IBUF(1),
      O => p_0_in(0)
    );
\q_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => d_i_IBUF(1),
      I1 => mode_IBUF(1),
      I2 => q_OBUF(2),
      I3 => mode_IBUF(0),
      I4 => q_OBUF(0),
      O => p_0_in(1)
    );
\q_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => d_i_IBUF(2),
      I1 => mode_IBUF(1),
      I2 => q_OBUF(3),
      I3 => mode_IBUF(0),
      I4 => q_OBUF(1),
      O => p_0_in(2)
    );
\q_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => d_i_IBUF(3),
      I1 => mode_IBUF(1),
      I2 => q_OBUF(4),
      I3 => mode_IBUF(0),
      I4 => q_OBUF(2),
      O => p_0_in(3)
    );
\q_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => d_i_IBUF(4),
      I1 => mode_IBUF(1),
      I2 => q_OBUF(5),
      I3 => mode_IBUF(0),
      I4 => q_OBUF(3),
      O => p_0_in(4)
    );
\q_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => d_i_IBUF(5),
      I1 => mode_IBUF(1),
      I2 => q_OBUF(6),
      I3 => mode_IBUF(0),
      I4 => q_OBUF(4),
      O => p_0_in(5)
    );
\q_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => d_i_IBUF(6),
      I1 => mode_IBUF(1),
      I2 => q_OBUF(7),
      I3 => mode_IBUF(0),
      I4 => q_OBUF(5),
      O => p_0_in(6)
    );
\q_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => en_IBUF,
      I1 => mode_IBUF(0),
      I2 => mode_IBUF(1),
      O => q_reg
    );
\q_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => q_OBUF(6),
      I1 => mode_IBUF(1),
      I2 => d_i_IBUF(7),
      I3 => mode_IBUF(0),
      O => p_0_in(7)
    );
\q_reg[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_IBUF,
      O => \q_reg[7]_i_3_n_0\
    );
\q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(0),
      Q => q_OBUF(0)
    );
\q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(1),
      Q => q_OBUF(1)
    );
\q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(2),
      Q => q_OBUF(2)
    );
\q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(3),
      Q => q_OBUF(3)
    );
\q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(4),
      Q => q_OBUF(4)
    );
\q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(5),
      Q => q_OBUF(5)
    );
\q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(6),
      Q => q_OBUF(6)
    );
\q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => q_reg,
      CLR => \q_reg[7]_i_3_n_0\,
      D => p_0_in(7),
      Q => q_OBUF(7)
    );
rst_n_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_n,
      O => rst_n_IBUF
    );
end STRUCTURE;
