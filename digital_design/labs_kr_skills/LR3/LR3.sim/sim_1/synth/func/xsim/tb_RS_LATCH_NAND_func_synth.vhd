-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Apr  3 12:03:47 2026
-- Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_1/synth/func/xsim/tb_RS_LATCH_NAND_func_synth.vhd
-- Design      : RS_LATCH_NAND
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xil_defaultlib_LUT2 is
  port (
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute INIT : string;
  attribute INIT of xil_defaultlib_LUT2 : entity is "4'b0111";
  attribute dont_touch : string;
  attribute dont_touch of xil_defaultlib_LUT2 : entity is "true";
end xil_defaultlib_LUT2;

architecture STRUCTURE of xil_defaultlib_LUT2 is
begin
O_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => I0,
      I1 => I1,
      O => O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xil_defaultlib_LUT2__2\ is
  port (
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute INIT : string;
  attribute INIT of \xil_defaultlib_LUT2__2\ : entity is "4'b0111";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xil_defaultlib_LUT2__2\ : entity is "xil_defaultlib_LUT2";
  attribute dont_touch : string;
  attribute dont_touch of \xil_defaultlib_LUT2__2\ : entity is "true";
end \xil_defaultlib_LUT2__2\;

architecture STRUCTURE of \xil_defaultlib_LUT2__2\ is
begin
O_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => I0,
      I1 => I1,
      O => O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RS_LATCH_NAND is
  port (
    S : in STD_LOGIC;
    R : in STD_LOGIC;
    Q : out STD_LOGIC;
    nQ : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RS_LATCH_NAND : entity is true;
  attribute dont_touch : string;
  attribute dont_touch of RS_LATCH_NAND : entity is "true";
end RS_LATCH_NAND;

architecture STRUCTURE of RS_LATCH_NAND is
  signal Q_OBUF : STD_LOGIC;
  signal R_IBUF : STD_LOGIC;
  signal S_IBUF : STD_LOGIC;
  signal nQ_OBUF : STD_LOGIC;
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of G1 : label is std.standard.true;
  attribute INIT : string;
  attribute INIT of G1 : label is "4'b0111";
  attribute DONT_TOUCH_boolean of G2 : label is std.standard.true;
  attribute INIT of G2 : label is "4'b0111";
begin
G1: entity work.\xil_defaultlib_LUT2__2\
     port map (
      I0 => S_IBUF,
      I1 => nQ_OBUF,
      O => Q_OBUF
    );
G2: entity work.xil_defaultlib_LUT2
     port map (
      I0 => R_IBUF,
      I1 => Q_OBUF,
      O => nQ_OBUF
    );
Q_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF,
      O => Q
    );
R_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => R,
      O => R_IBUF
    );
S_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S,
      O => S_IBUF
    );
nQ_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => nQ_OBUF,
      O => nQ
    );
end STRUCTURE;
