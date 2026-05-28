-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Apr  1 20:49:59 2026
-- Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_7/synth/func/xsim/tb_reg_file_2r1w_func_synth.vhd
-- Design      : reg_file_2r1w
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_file_2r1w is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    w_en : in STD_LOGIC;
    w_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    w_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    r_en_1 : in STD_LOGIC;
    r_addr_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    r_data_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    r_en_2 : in STD_LOGIC;
    r_addr_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    r_data_2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of reg_file_2r1w : entity is true;
  attribute ADDR_WIDTH : integer;
  attribute ADDR_WIDTH of reg_file_2r1w : entity is 5;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of reg_file_2r1w : entity is 16;
end reg_file_2r1w;

architecture STRUCTURE of reg_file_2r1w is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal r_addr_1_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_addr_2_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_data_12 : STD_LOGIC;
  signal r_data_1_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_data_1_OBUF[0]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[0]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[10]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[11]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[12]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[13]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_15_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_16_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_17_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_3_n_3\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[15]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[1]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[2]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[4]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[5]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[8]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_1_OBUF[9]_inst_i_9_n_0\ : STD_LOGIC;
  signal r_data_22 : STD_LOGIC;
  signal r_data_2_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_data_2_OBUF[0]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[0]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[10]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[11]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[12]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[13]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_15_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_16_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_17_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_3_n_3\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[15]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[1]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[2]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[4]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[5]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[8]_inst_i_9_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_10_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_11_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_12_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_13_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_14_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_6_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_7_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_8_n_0\ : STD_LOGIC;
  signal \r_data_2_OBUF[9]_inst_i_9_n_0\ : STD_LOGIC;
  signal r_en_1_IBUF : STD_LOGIC;
  signal r_en_2_IBUF : STD_LOGIC;
  signal \registers[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \registers[0][14]_i_1_n_0\ : STD_LOGIC;
  signal \registers[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \registers[0][15]_i_2_n_0\ : STD_LOGIC;
  signal \registers[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \registers[10]\ : STD_LOGIC;
  signal \registers[11]\ : STD_LOGIC;
  signal \registers[12]\ : STD_LOGIC;
  signal \registers[13]\ : STD_LOGIC;
  signal \registers[14]\ : STD_LOGIC;
  signal \registers[15]\ : STD_LOGIC;
  signal \registers[16]\ : STD_LOGIC;
  signal \registers[17]\ : STD_LOGIC;
  signal \registers[18]\ : STD_LOGIC;
  signal \registers[19]\ : STD_LOGIC;
  signal \registers[1]\ : STD_LOGIC;
  signal \registers[20]\ : STD_LOGIC;
  signal \registers[21]\ : STD_LOGIC;
  signal \registers[22]\ : STD_LOGIC;
  signal \registers[23]\ : STD_LOGIC;
  signal \registers[24]\ : STD_LOGIC;
  signal \registers[25]\ : STD_LOGIC;
  signal \registers[26]\ : STD_LOGIC;
  signal \registers[27]\ : STD_LOGIC;
  signal \registers[28]\ : STD_LOGIC;
  signal \registers[29]\ : STD_LOGIC;
  signal \registers[2]\ : STD_LOGIC;
  signal \registers[30]\ : STD_LOGIC;
  signal \registers[31]\ : STD_LOGIC;
  signal \registers[3]\ : STD_LOGIC;
  signal \registers[4]\ : STD_LOGIC;
  signal \registers[5]\ : STD_LOGIC;
  signal \registers[6]\ : STD_LOGIC;
  signal \registers[7]\ : STD_LOGIC;
  signal \registers[8]\ : STD_LOGIC;
  signal \registers[9]\ : STD_LOGIC;
  signal \registers_reg[0]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[10]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[11]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[12]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[13]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[14]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[15]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[16]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[17]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[18]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[19]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[1]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[20]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[21]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[22]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[23]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[24]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[25]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[26]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[27]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[28]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[29]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[2]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[30]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[31]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[3]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[4]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[5]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[6]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[7]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[8]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \registers_reg[9]__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rst_n_IBUF : STD_LOGIC;
  signal w_addr_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal w_data_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal w_en_IBUF : STD_LOGIC;
  signal \NLW_r_data_1_OBUF[15]_inst_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_data_1_OBUF[15]_inst_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_data_2_OBUF[15]_inst_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_data_2_OBUF[15]_inst_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
\r_addr_1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_1(0),
      O => r_addr_1_IBUF(0)
    );
\r_addr_1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_1(1),
      O => r_addr_1_IBUF(1)
    );
\r_addr_1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_1(2),
      O => r_addr_1_IBUF(2)
    );
\r_addr_1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_1(3),
      O => r_addr_1_IBUF(3)
    );
\r_addr_1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_1(4),
      O => r_addr_1_IBUF(4)
    );
\r_addr_2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_2(0),
      O => r_addr_2_IBUF(0)
    );
\r_addr_2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_2(1),
      O => r_addr_2_IBUF(1)
    );
\r_addr_2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_2(2),
      O => r_addr_2_IBUF(2)
    );
\r_addr_2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_2(3),
      O => r_addr_2_IBUF(3)
    );
\r_addr_2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => r_addr_2(4),
      O => r_addr_2_IBUF(4)
    );
\r_data_1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(0),
      O => r_data_1(0)
    );
\r_data_1_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(0),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(0),
      O => r_data_1_OBUF(0)
    );
\r_data_1_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(0),
      I1 => \registers_reg[22]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_10_n_0\
    );
\r_data_1_OBUF[0]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(0),
      I1 => \registers_reg[10]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_11_n_0\
    );
\r_data_1_OBUF[0]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(0),
      I1 => \registers_reg[14]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_12_n_0\
    );
\r_data_1_OBUF[0]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(0),
      I1 => \registers_reg[2]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_13_n_0\
    );
\r_data_1_OBUF[0]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(0),
      I1 => \registers_reg[6]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_14_n_0\
    );
\r_data_1_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[0]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[0]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[0]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[0]_inst_i_6_n_0\,
      O => \registers[0]\(0)
    );
\r_data_1_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[0]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[0]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[0]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[0]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[0]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[0]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[0]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[0]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[0]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[0]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[0]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[0]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[0]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[0]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[0]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(0),
      I1 => \registers_reg[26]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_7_n_0\
    );
\r_data_1_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(0),
      I1 => \registers_reg[30]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_8_n_0\
    );
\r_data_1_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(0),
      I1 => \registers_reg[18]__0\(0),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(0),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(0),
      O => \r_data_1_OBUF[0]_inst_i_9_n_0\
    );
\r_data_1_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(10),
      O => r_data_1(10)
    );
\r_data_1_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(10),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(10),
      O => r_data_1_OBUF(10)
    );
\r_data_1_OBUF[10]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(10),
      I1 => \registers_reg[22]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_10_n_0\
    );
\r_data_1_OBUF[10]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(10),
      I1 => \registers_reg[10]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_11_n_0\
    );
\r_data_1_OBUF[10]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(10),
      I1 => \registers_reg[14]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_12_n_0\
    );
\r_data_1_OBUF[10]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(10),
      I1 => \registers_reg[2]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_13_n_0\
    );
\r_data_1_OBUF[10]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(10),
      I1 => \registers_reg[6]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_14_n_0\
    );
\r_data_1_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[10]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[10]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[10]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[10]_inst_i_6_n_0\,
      O => \registers[0]\(10)
    );
\r_data_1_OBUF[10]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[10]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[10]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[10]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[10]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[10]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[10]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[10]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[10]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[10]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[10]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[10]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[10]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[10]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[10]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[10]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(10),
      I1 => \registers_reg[26]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_7_n_0\
    );
\r_data_1_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(10),
      I1 => \registers_reg[30]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_8_n_0\
    );
\r_data_1_OBUF[10]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(10),
      I1 => \registers_reg[18]__0\(10),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(10),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(10),
      O => \r_data_1_OBUF[10]_inst_i_9_n_0\
    );
\r_data_1_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(11),
      O => r_data_1(11)
    );
\r_data_1_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(11),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(11),
      O => r_data_1_OBUF(11)
    );
\r_data_1_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(11),
      I1 => \registers_reg[22]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_10_n_0\
    );
\r_data_1_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(11),
      I1 => \registers_reg[10]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_11_n_0\
    );
\r_data_1_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(11),
      I1 => \registers_reg[14]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_12_n_0\
    );
\r_data_1_OBUF[11]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(11),
      I1 => \registers_reg[2]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_13_n_0\
    );
\r_data_1_OBUF[11]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(11),
      I1 => \registers_reg[6]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_14_n_0\
    );
\r_data_1_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[11]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[11]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[11]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[11]_inst_i_6_n_0\,
      O => \registers[0]\(11)
    );
\r_data_1_OBUF[11]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[11]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[11]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[11]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[11]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[11]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[11]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[11]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[11]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[11]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[11]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[11]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[11]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[11]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[11]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[11]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(11),
      I1 => \registers_reg[26]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_7_n_0\
    );
\r_data_1_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(11),
      I1 => \registers_reg[30]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_8_n_0\
    );
\r_data_1_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(11),
      I1 => \registers_reg[18]__0\(11),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(11),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(11),
      O => \r_data_1_OBUF[11]_inst_i_9_n_0\
    );
\r_data_1_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(12),
      O => r_data_1(12)
    );
\r_data_1_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(12),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(12),
      O => r_data_1_OBUF(12)
    );
\r_data_1_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(12),
      I1 => \registers_reg[22]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_10_n_0\
    );
\r_data_1_OBUF[12]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(12),
      I1 => \registers_reg[10]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_11_n_0\
    );
\r_data_1_OBUF[12]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(12),
      I1 => \registers_reg[14]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_12_n_0\
    );
\r_data_1_OBUF[12]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(12),
      I1 => \registers_reg[2]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_13_n_0\
    );
\r_data_1_OBUF[12]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(12),
      I1 => \registers_reg[6]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_14_n_0\
    );
\r_data_1_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[12]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[12]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[12]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[12]_inst_i_6_n_0\,
      O => \registers[0]\(12)
    );
\r_data_1_OBUF[12]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[12]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[12]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[12]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[12]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[12]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[12]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[12]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[12]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[12]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[12]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[12]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[12]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[12]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[12]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[12]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(12),
      I1 => \registers_reg[26]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_7_n_0\
    );
\r_data_1_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(12),
      I1 => \registers_reg[30]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_8_n_0\
    );
\r_data_1_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(12),
      I1 => \registers_reg[18]__0\(12),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(12),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(12),
      O => \r_data_1_OBUF[12]_inst_i_9_n_0\
    );
\r_data_1_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(13),
      O => r_data_1(13)
    );
\r_data_1_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(13),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(13),
      O => r_data_1_OBUF(13)
    );
\r_data_1_OBUF[13]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(13),
      I1 => \registers_reg[22]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_10_n_0\
    );
\r_data_1_OBUF[13]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(13),
      I1 => \registers_reg[10]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_11_n_0\
    );
\r_data_1_OBUF[13]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(13),
      I1 => \registers_reg[14]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_12_n_0\
    );
\r_data_1_OBUF[13]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(13),
      I1 => \registers_reg[2]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_13_n_0\
    );
\r_data_1_OBUF[13]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(13),
      I1 => \registers_reg[6]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_14_n_0\
    );
\r_data_1_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[13]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[13]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[13]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[13]_inst_i_6_n_0\,
      O => \registers[0]\(13)
    );
\r_data_1_OBUF[13]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[13]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[13]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[13]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[13]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[13]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[13]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[13]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[13]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[13]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[13]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[13]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[13]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[13]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[13]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[13]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(13),
      I1 => \registers_reg[26]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_7_n_0\
    );
\r_data_1_OBUF[13]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(13),
      I1 => \registers_reg[30]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_8_n_0\
    );
\r_data_1_OBUF[13]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(13),
      I1 => \registers_reg[18]__0\(13),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(13),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(13),
      O => \r_data_1_OBUF[13]_inst_i_9_n_0\
    );
\r_data_1_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(14),
      O => r_data_1(14)
    );
\r_data_1_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(14),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(14),
      O => r_data_1_OBUF(14)
    );
\r_data_1_OBUF[14]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(14),
      I1 => \registers_reg[22]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_10_n_0\
    );
\r_data_1_OBUF[14]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(14),
      I1 => \registers_reg[10]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_11_n_0\
    );
\r_data_1_OBUF[14]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(14),
      I1 => \registers_reg[14]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_12_n_0\
    );
\r_data_1_OBUF[14]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(14),
      I1 => \registers_reg[2]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_13_n_0\
    );
\r_data_1_OBUF[14]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(14),
      I1 => \registers_reg[6]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_14_n_0\
    );
\r_data_1_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[14]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[14]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[14]_inst_i_6_n_0\,
      O => \registers[0]\(14)
    );
\r_data_1_OBUF[14]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[14]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[14]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[14]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[14]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[14]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[14]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[14]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[14]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[14]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[14]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[14]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[14]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[14]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[14]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[14]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(14),
      I1 => \registers_reg[26]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_7_n_0\
    );
\r_data_1_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(14),
      I1 => \registers_reg[30]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_8_n_0\
    );
\r_data_1_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(14),
      I1 => \registers_reg[18]__0\(14),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(14),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(14),
      O => \r_data_1_OBUF[14]_inst_i_9_n_0\
    );
\r_data_1_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(15),
      O => r_data_1(15)
    );
\r_data_1_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(15),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(15),
      O => r_data_1_OBUF(15)
    );
\r_data_1_OBUF[15]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(15),
      I1 => \registers_reg[26]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_10_n_0\
    );
\r_data_1_OBUF[15]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(15),
      I1 => \registers_reg[30]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_11_n_0\
    );
\r_data_1_OBUF[15]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(15),
      I1 => \registers_reg[18]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_12_n_0\
    );
\r_data_1_OBUF[15]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(15),
      I1 => \registers_reg[22]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_13_n_0\
    );
\r_data_1_OBUF[15]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(15),
      I1 => \registers_reg[10]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_14_n_0\
    );
\r_data_1_OBUF[15]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(15),
      I1 => \registers_reg[14]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_15_n_0\
    );
\r_data_1_OBUF[15]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(15),
      I1 => \registers_reg[2]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_16_n_0\
    );
\r_data_1_OBUF[15]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(15),
      I1 => \registers_reg[6]__0\(15),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(15),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(15),
      O => \r_data_1_OBUF[15]_inst_i_17_n_0\
    );
\r_data_1_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[15]_inst_i_4_n_0\,
      I1 => \r_data_1_OBUF[15]_inst_i_5_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[15]_inst_i_6_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[15]_inst_i_7_n_0\,
      O => \registers[0]\(15)
    );
\r_data_1_OBUF[15]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_r_data_1_OBUF[15]_inst_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => r_data_12,
      CO(0) => \r_data_1_OBUF[15]_inst_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_data_1_OBUF[15]_inst_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \r_data_1_OBUF[15]_inst_i_8_n_0\,
      S(0) => \r_data_1_OBUF[15]_inst_i_9_n_0\
    );
\r_data_1_OBUF[15]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[15]_inst_i_10_n_0\,
      I1 => \r_data_1_OBUF[15]_inst_i_11_n_0\,
      O => \r_data_1_OBUF[15]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[15]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[15]_inst_i_12_n_0\,
      I1 => \r_data_1_OBUF[15]_inst_i_13_n_0\,
      O => \r_data_1_OBUF[15]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[15]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[15]_inst_i_14_n_0\,
      I1 => \r_data_1_OBUF[15]_inst_i_15_n_0\,
      O => \r_data_1_OBUF[15]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[15]_inst_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[15]_inst_i_16_n_0\,
      I1 => \r_data_1_OBUF[15]_inst_i_17_n_0\,
      O => \r_data_1_OBUF[15]_inst_i_7_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_addr_1_IBUF(3),
      I1 => w_addr_IBUF(3),
      I2 => r_addr_1_IBUF(4),
      I3 => w_addr_IBUF(4),
      O => \r_data_1_OBUF[15]_inst_i_8_n_0\
    );
\r_data_1_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_addr_1_IBUF(0),
      I1 => w_addr_IBUF(0),
      I2 => w_addr_IBUF(2),
      I3 => r_addr_1_IBUF(2),
      I4 => w_addr_IBUF(1),
      I5 => r_addr_1_IBUF(1),
      O => \r_data_1_OBUF[15]_inst_i_9_n_0\
    );
\r_data_1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(1),
      O => r_data_1(1)
    );
\r_data_1_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(1),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(1),
      O => r_data_1_OBUF(1)
    );
\r_data_1_OBUF[1]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(1),
      I1 => \registers_reg[22]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_10_n_0\
    );
\r_data_1_OBUF[1]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(1),
      I1 => \registers_reg[10]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_11_n_0\
    );
\r_data_1_OBUF[1]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(1),
      I1 => \registers_reg[14]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_12_n_0\
    );
\r_data_1_OBUF[1]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(1),
      I1 => \registers_reg[2]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_13_n_0\
    );
\r_data_1_OBUF[1]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(1),
      I1 => \registers_reg[6]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_14_n_0\
    );
\r_data_1_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[1]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[1]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[1]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[1]_inst_i_6_n_0\,
      O => \registers[0]\(1)
    );
\r_data_1_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[1]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[1]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[1]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[1]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[1]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[1]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[1]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[1]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[1]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[1]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[1]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[1]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[1]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[1]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[1]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(1),
      I1 => \registers_reg[26]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_7_n_0\
    );
\r_data_1_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(1),
      I1 => \registers_reg[30]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_8_n_0\
    );
\r_data_1_OBUF[1]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(1),
      I1 => \registers_reg[18]__0\(1),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(1),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(1),
      O => \r_data_1_OBUF[1]_inst_i_9_n_0\
    );
\r_data_1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(2),
      O => r_data_1(2)
    );
\r_data_1_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(2),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(2),
      O => r_data_1_OBUF(2)
    );
\r_data_1_OBUF[2]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(2),
      I1 => \registers_reg[22]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_10_n_0\
    );
\r_data_1_OBUF[2]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(2),
      I1 => \registers_reg[10]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_11_n_0\
    );
\r_data_1_OBUF[2]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(2),
      I1 => \registers_reg[14]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_12_n_0\
    );
\r_data_1_OBUF[2]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(2),
      I1 => \registers_reg[2]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_13_n_0\
    );
\r_data_1_OBUF[2]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(2),
      I1 => \registers_reg[6]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_14_n_0\
    );
\r_data_1_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[2]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[2]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[2]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[2]_inst_i_6_n_0\,
      O => \registers[0]\(2)
    );
\r_data_1_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[2]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[2]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[2]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[2]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[2]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[2]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[2]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[2]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[2]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[2]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[2]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[2]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[2]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[2]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[2]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(2),
      I1 => \registers_reg[26]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_7_n_0\
    );
\r_data_1_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(2),
      I1 => \registers_reg[30]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_8_n_0\
    );
\r_data_1_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(2),
      I1 => \registers_reg[18]__0\(2),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(2),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(2),
      O => \r_data_1_OBUF[2]_inst_i_9_n_0\
    );
\r_data_1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(3),
      O => r_data_1(3)
    );
\r_data_1_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(3),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(3),
      O => r_data_1_OBUF(3)
    );
\r_data_1_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(3),
      I1 => \registers_reg[22]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_10_n_0\
    );
\r_data_1_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(3),
      I1 => \registers_reg[10]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_11_n_0\
    );
\r_data_1_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(3),
      I1 => \registers_reg[14]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_12_n_0\
    );
\r_data_1_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(3),
      I1 => \registers_reg[2]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_13_n_0\
    );
\r_data_1_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(3),
      I1 => \registers_reg[6]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_14_n_0\
    );
\r_data_1_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[3]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[3]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[3]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[3]_inst_i_6_n_0\,
      O => \registers[0]\(3)
    );
\r_data_1_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[3]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[3]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[3]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[3]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[3]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[3]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[3]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[3]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[3]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[3]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[3]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[3]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[3]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[3]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[3]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(3),
      I1 => \registers_reg[26]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_7_n_0\
    );
\r_data_1_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(3),
      I1 => \registers_reg[30]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_8_n_0\
    );
\r_data_1_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(3),
      I1 => \registers_reg[18]__0\(3),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(3),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(3),
      O => \r_data_1_OBUF[3]_inst_i_9_n_0\
    );
\r_data_1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(4),
      O => r_data_1(4)
    );
\r_data_1_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(4),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(4),
      O => r_data_1_OBUF(4)
    );
\r_data_1_OBUF[4]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(4),
      I1 => \registers_reg[22]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_10_n_0\
    );
\r_data_1_OBUF[4]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(4),
      I1 => \registers_reg[10]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_11_n_0\
    );
\r_data_1_OBUF[4]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(4),
      I1 => \registers_reg[14]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_12_n_0\
    );
\r_data_1_OBUF[4]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(4),
      I1 => \registers_reg[2]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_13_n_0\
    );
\r_data_1_OBUF[4]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(4),
      I1 => \registers_reg[6]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_14_n_0\
    );
\r_data_1_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[4]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[4]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[4]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[4]_inst_i_6_n_0\,
      O => \registers[0]\(4)
    );
\r_data_1_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[4]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[4]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[4]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[4]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[4]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[4]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[4]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[4]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[4]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[4]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[4]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[4]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[4]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[4]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[4]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(4),
      I1 => \registers_reg[26]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_7_n_0\
    );
\r_data_1_OBUF[4]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(4),
      I1 => \registers_reg[30]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_8_n_0\
    );
\r_data_1_OBUF[4]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(4),
      I1 => \registers_reg[18]__0\(4),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(4),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(4),
      O => \r_data_1_OBUF[4]_inst_i_9_n_0\
    );
\r_data_1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(5),
      O => r_data_1(5)
    );
\r_data_1_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(5),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(5),
      O => r_data_1_OBUF(5)
    );
\r_data_1_OBUF[5]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(5),
      I1 => \registers_reg[22]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_10_n_0\
    );
\r_data_1_OBUF[5]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(5),
      I1 => \registers_reg[10]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_11_n_0\
    );
\r_data_1_OBUF[5]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(5),
      I1 => \registers_reg[14]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_12_n_0\
    );
\r_data_1_OBUF[5]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(5),
      I1 => \registers_reg[2]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_13_n_0\
    );
\r_data_1_OBUF[5]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(5),
      I1 => \registers_reg[6]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_14_n_0\
    );
\r_data_1_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[5]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[5]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[5]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[5]_inst_i_6_n_0\,
      O => \registers[0]\(5)
    );
\r_data_1_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[5]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[5]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[5]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[5]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[5]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[5]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[5]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[5]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[5]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[5]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[5]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[5]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[5]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[5]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[5]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(5),
      I1 => \registers_reg[26]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_7_n_0\
    );
\r_data_1_OBUF[5]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(5),
      I1 => \registers_reg[30]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_8_n_0\
    );
\r_data_1_OBUF[5]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(5),
      I1 => \registers_reg[18]__0\(5),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(5),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(5),
      O => \r_data_1_OBUF[5]_inst_i_9_n_0\
    );
\r_data_1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(6),
      O => r_data_1(6)
    );
\r_data_1_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(6),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(6),
      O => r_data_1_OBUF(6)
    );
\r_data_1_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(6),
      I1 => \registers_reg[22]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_10_n_0\
    );
\r_data_1_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(6),
      I1 => \registers_reg[10]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_11_n_0\
    );
\r_data_1_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(6),
      I1 => \registers_reg[14]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_12_n_0\
    );
\r_data_1_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(6),
      I1 => \registers_reg[2]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_13_n_0\
    );
\r_data_1_OBUF[6]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(6),
      I1 => \registers_reg[6]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_14_n_0\
    );
\r_data_1_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[6]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[6]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[6]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[6]_inst_i_6_n_0\,
      O => \registers[0]\(6)
    );
\r_data_1_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[6]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[6]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[6]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[6]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[6]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[6]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[6]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[6]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[6]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[6]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[6]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[6]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[6]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[6]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[6]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(6),
      I1 => \registers_reg[26]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_7_n_0\
    );
\r_data_1_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(6),
      I1 => \registers_reg[30]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_8_n_0\
    );
\r_data_1_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(6),
      I1 => \registers_reg[18]__0\(6),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(6),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(6),
      O => \r_data_1_OBUF[6]_inst_i_9_n_0\
    );
\r_data_1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(7),
      O => r_data_1(7)
    );
\r_data_1_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(7),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(7),
      O => r_data_1_OBUF(7)
    );
\r_data_1_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(7),
      I1 => \registers_reg[22]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_10_n_0\
    );
\r_data_1_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(7),
      I1 => \registers_reg[10]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_11_n_0\
    );
\r_data_1_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(7),
      I1 => \registers_reg[14]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_12_n_0\
    );
\r_data_1_OBUF[7]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(7),
      I1 => \registers_reg[2]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_13_n_0\
    );
\r_data_1_OBUF[7]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(7),
      I1 => \registers_reg[6]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_14_n_0\
    );
\r_data_1_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[7]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[7]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[7]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[7]_inst_i_6_n_0\,
      O => \registers[0]\(7)
    );
\r_data_1_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[7]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[7]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[7]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[7]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[7]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[7]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[7]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[7]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[7]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[7]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[7]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[7]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[7]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[7]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[7]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(7),
      I1 => \registers_reg[26]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_7_n_0\
    );
\r_data_1_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(7),
      I1 => \registers_reg[30]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_8_n_0\
    );
\r_data_1_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(7),
      I1 => \registers_reg[18]__0\(7),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(7),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(7),
      O => \r_data_1_OBUF[7]_inst_i_9_n_0\
    );
\r_data_1_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(8),
      O => r_data_1(8)
    );
\r_data_1_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(8),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(8),
      O => r_data_1_OBUF(8)
    );
\r_data_1_OBUF[8]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(8),
      I1 => \registers_reg[22]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_10_n_0\
    );
\r_data_1_OBUF[8]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(8),
      I1 => \registers_reg[10]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_11_n_0\
    );
\r_data_1_OBUF[8]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(8),
      I1 => \registers_reg[14]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_12_n_0\
    );
\r_data_1_OBUF[8]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(8),
      I1 => \registers_reg[2]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_13_n_0\
    );
\r_data_1_OBUF[8]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(8),
      I1 => \registers_reg[6]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_14_n_0\
    );
\r_data_1_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[8]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[8]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[8]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[8]_inst_i_6_n_0\,
      O => \registers[0]\(8)
    );
\r_data_1_OBUF[8]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[8]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[8]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[8]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[8]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[8]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[8]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[8]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[8]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[8]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[8]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[8]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[8]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[8]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[8]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[8]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(8),
      I1 => \registers_reg[26]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_7_n_0\
    );
\r_data_1_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(8),
      I1 => \registers_reg[30]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_8_n_0\
    );
\r_data_1_OBUF[8]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(8),
      I1 => \registers_reg[18]__0\(8),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(8),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(8),
      O => \r_data_1_OBUF[8]_inst_i_9_n_0\
    );
\r_data_1_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_1_OBUF(9),
      O => r_data_1(9)
    );
\r_data_1_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_1_IBUF,
      I1 => \registers[0]\(9),
      I2 => r_data_12,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(9),
      O => r_data_1_OBUF(9)
    );
\r_data_1_OBUF[9]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(9),
      I1 => \registers_reg[22]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[21]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[20]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_10_n_0\
    );
\r_data_1_OBUF[9]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(9),
      I1 => \registers_reg[10]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[9]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[8]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_11_n_0\
    );
\r_data_1_OBUF[9]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(9),
      I1 => \registers_reg[14]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[13]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[12]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_12_n_0\
    );
\r_data_1_OBUF[9]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(9),
      I1 => \registers_reg[2]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[1]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[0]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_13_n_0\
    );
\r_data_1_OBUF[9]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(9),
      I1 => \registers_reg[6]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[5]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[4]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_14_n_0\
    );
\r_data_1_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_1_OBUF[9]_inst_i_3_n_0\,
      I1 => \r_data_1_OBUF[9]_inst_i_4_n_0\,
      I2 => r_addr_1_IBUF(4),
      I3 => \r_data_1_OBUF[9]_inst_i_5_n_0\,
      I4 => r_addr_1_IBUF(3),
      I5 => \r_data_1_OBUF[9]_inst_i_6_n_0\,
      O => \registers[0]\(9)
    );
\r_data_1_OBUF[9]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[9]_inst_i_7_n_0\,
      I1 => \r_data_1_OBUF[9]_inst_i_8_n_0\,
      O => \r_data_1_OBUF[9]_inst_i_3_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[9]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[9]_inst_i_9_n_0\,
      I1 => \r_data_1_OBUF[9]_inst_i_10_n_0\,
      O => \r_data_1_OBUF[9]_inst_i_4_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[9]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[9]_inst_i_11_n_0\,
      I1 => \r_data_1_OBUF[9]_inst_i_12_n_0\,
      O => \r_data_1_OBUF[9]_inst_i_5_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[9]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_1_OBUF[9]_inst_i_13_n_0\,
      I1 => \r_data_1_OBUF[9]_inst_i_14_n_0\,
      O => \r_data_1_OBUF[9]_inst_i_6_n_0\,
      S => r_addr_1_IBUF(2)
    );
\r_data_1_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(9),
      I1 => \registers_reg[26]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[25]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[24]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_7_n_0\
    );
\r_data_1_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(9),
      I1 => \registers_reg[30]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[29]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[28]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_8_n_0\
    );
\r_data_1_OBUF[9]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(9),
      I1 => \registers_reg[18]__0\(9),
      I2 => r_addr_1_IBUF(1),
      I3 => \registers_reg[17]__0\(9),
      I4 => r_addr_1_IBUF(0),
      I5 => \registers_reg[16]__0\(9),
      O => \r_data_1_OBUF[9]_inst_i_9_n_0\
    );
\r_data_2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(0),
      O => r_data_2(0)
    );
\r_data_2_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[0]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(0),
      O => r_data_2_OBUF(0)
    );
\r_data_2_OBUF[0]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(0),
      I1 => \registers_reg[22]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_10_n_0\
    );
\r_data_2_OBUF[0]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(0),
      I1 => \registers_reg[10]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_11_n_0\
    );
\r_data_2_OBUF[0]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(0),
      I1 => \registers_reg[14]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_12_n_0\
    );
\r_data_2_OBUF[0]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(0),
      I1 => \registers_reg[2]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_13_n_0\
    );
\r_data_2_OBUF[0]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(0),
      I1 => \registers_reg[6]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_14_n_0\
    );
\r_data_2_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[0]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[0]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[0]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[0]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[0]_inst_i_2_n_0\
    );
\r_data_2_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[0]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[0]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[0]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[0]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[0]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[0]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[0]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[0]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[0]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[0]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[0]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[0]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[0]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[0]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[0]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(0),
      I1 => \registers_reg[26]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_7_n_0\
    );
\r_data_2_OBUF[0]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(0),
      I1 => \registers_reg[30]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_8_n_0\
    );
\r_data_2_OBUF[0]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(0),
      I1 => \registers_reg[18]__0\(0),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(0),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(0),
      O => \r_data_2_OBUF[0]_inst_i_9_n_0\
    );
\r_data_2_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(10),
      O => r_data_2(10)
    );
\r_data_2_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[10]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(10),
      O => r_data_2_OBUF(10)
    );
\r_data_2_OBUF[10]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(10),
      I1 => \registers_reg[22]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_10_n_0\
    );
\r_data_2_OBUF[10]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(10),
      I1 => \registers_reg[10]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_11_n_0\
    );
\r_data_2_OBUF[10]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(10),
      I1 => \registers_reg[14]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_12_n_0\
    );
\r_data_2_OBUF[10]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(10),
      I1 => \registers_reg[2]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_13_n_0\
    );
\r_data_2_OBUF[10]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(10),
      I1 => \registers_reg[6]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_14_n_0\
    );
\r_data_2_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[10]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[10]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[10]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[10]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[10]_inst_i_2_n_0\
    );
\r_data_2_OBUF[10]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[10]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[10]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[10]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[10]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[10]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[10]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[10]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[10]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[10]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[10]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[10]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[10]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[10]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[10]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[10]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(10),
      I1 => \registers_reg[26]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_7_n_0\
    );
\r_data_2_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(10),
      I1 => \registers_reg[30]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_8_n_0\
    );
\r_data_2_OBUF[10]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(10),
      I1 => \registers_reg[18]__0\(10),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(10),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(10),
      O => \r_data_2_OBUF[10]_inst_i_9_n_0\
    );
\r_data_2_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(11),
      O => r_data_2(11)
    );
\r_data_2_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[11]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(11),
      O => r_data_2_OBUF(11)
    );
\r_data_2_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(11),
      I1 => \registers_reg[22]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_10_n_0\
    );
\r_data_2_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(11),
      I1 => \registers_reg[10]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_11_n_0\
    );
\r_data_2_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(11),
      I1 => \registers_reg[14]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_12_n_0\
    );
\r_data_2_OBUF[11]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(11),
      I1 => \registers_reg[2]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_13_n_0\
    );
\r_data_2_OBUF[11]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(11),
      I1 => \registers_reg[6]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_14_n_0\
    );
\r_data_2_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[11]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[11]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[11]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[11]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[11]_inst_i_2_n_0\
    );
\r_data_2_OBUF[11]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[11]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[11]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[11]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[11]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[11]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[11]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[11]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[11]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[11]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[11]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[11]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[11]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[11]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[11]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[11]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(11),
      I1 => \registers_reg[26]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_7_n_0\
    );
\r_data_2_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(11),
      I1 => \registers_reg[30]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_8_n_0\
    );
\r_data_2_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(11),
      I1 => \registers_reg[18]__0\(11),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(11),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(11),
      O => \r_data_2_OBUF[11]_inst_i_9_n_0\
    );
\r_data_2_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(12),
      O => r_data_2(12)
    );
\r_data_2_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[12]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(12),
      O => r_data_2_OBUF(12)
    );
\r_data_2_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(12),
      I1 => \registers_reg[22]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_10_n_0\
    );
\r_data_2_OBUF[12]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(12),
      I1 => \registers_reg[10]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_11_n_0\
    );
\r_data_2_OBUF[12]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(12),
      I1 => \registers_reg[14]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_12_n_0\
    );
\r_data_2_OBUF[12]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(12),
      I1 => \registers_reg[2]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_13_n_0\
    );
\r_data_2_OBUF[12]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(12),
      I1 => \registers_reg[6]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_14_n_0\
    );
\r_data_2_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[12]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[12]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[12]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[12]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[12]_inst_i_2_n_0\
    );
\r_data_2_OBUF[12]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[12]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[12]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[12]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[12]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[12]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[12]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[12]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[12]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[12]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[12]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[12]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[12]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[12]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[12]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[12]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(12),
      I1 => \registers_reg[26]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_7_n_0\
    );
\r_data_2_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(12),
      I1 => \registers_reg[30]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_8_n_0\
    );
\r_data_2_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(12),
      I1 => \registers_reg[18]__0\(12),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(12),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(12),
      O => \r_data_2_OBUF[12]_inst_i_9_n_0\
    );
\r_data_2_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(13),
      O => r_data_2(13)
    );
\r_data_2_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[13]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(13),
      O => r_data_2_OBUF(13)
    );
\r_data_2_OBUF[13]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(13),
      I1 => \registers_reg[22]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_10_n_0\
    );
\r_data_2_OBUF[13]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(13),
      I1 => \registers_reg[10]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_11_n_0\
    );
\r_data_2_OBUF[13]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(13),
      I1 => \registers_reg[14]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_12_n_0\
    );
\r_data_2_OBUF[13]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(13),
      I1 => \registers_reg[2]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_13_n_0\
    );
\r_data_2_OBUF[13]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(13),
      I1 => \registers_reg[6]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_14_n_0\
    );
\r_data_2_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[13]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[13]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[13]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[13]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[13]_inst_i_2_n_0\
    );
\r_data_2_OBUF[13]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[13]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[13]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[13]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[13]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[13]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[13]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[13]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[13]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[13]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[13]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[13]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[13]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[13]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[13]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[13]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[13]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(13),
      I1 => \registers_reg[26]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_7_n_0\
    );
\r_data_2_OBUF[13]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(13),
      I1 => \registers_reg[30]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_8_n_0\
    );
\r_data_2_OBUF[13]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(13),
      I1 => \registers_reg[18]__0\(13),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(13),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(13),
      O => \r_data_2_OBUF[13]_inst_i_9_n_0\
    );
\r_data_2_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(14),
      O => r_data_2(14)
    );
\r_data_2_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[14]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(14),
      O => r_data_2_OBUF(14)
    );
\r_data_2_OBUF[14]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(14),
      I1 => \registers_reg[22]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_10_n_0\
    );
\r_data_2_OBUF[14]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(14),
      I1 => \registers_reg[10]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_11_n_0\
    );
\r_data_2_OBUF[14]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(14),
      I1 => \registers_reg[14]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_12_n_0\
    );
\r_data_2_OBUF[14]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(14),
      I1 => \registers_reg[2]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_13_n_0\
    );
\r_data_2_OBUF[14]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(14),
      I1 => \registers_reg[6]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_14_n_0\
    );
\r_data_2_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[14]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[14]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[14]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[14]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[14]_inst_i_2_n_0\
    );
\r_data_2_OBUF[14]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[14]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[14]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[14]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[14]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[14]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[14]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[14]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[14]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[14]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[14]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[14]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[14]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[14]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[14]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[14]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(14),
      I1 => \registers_reg[26]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_7_n_0\
    );
\r_data_2_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(14),
      I1 => \registers_reg[30]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_8_n_0\
    );
\r_data_2_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(14),
      I1 => \registers_reg[18]__0\(14),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(14),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(14),
      O => \r_data_2_OBUF[14]_inst_i_9_n_0\
    );
\r_data_2_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(15),
      O => r_data_2(15)
    );
\r_data_2_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[15]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(15),
      O => r_data_2_OBUF(15)
    );
\r_data_2_OBUF[15]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(15),
      I1 => \registers_reg[26]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_10_n_0\
    );
\r_data_2_OBUF[15]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(15),
      I1 => \registers_reg[30]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_11_n_0\
    );
\r_data_2_OBUF[15]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(15),
      I1 => \registers_reg[18]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_12_n_0\
    );
\r_data_2_OBUF[15]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(15),
      I1 => \registers_reg[22]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_13_n_0\
    );
\r_data_2_OBUF[15]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(15),
      I1 => \registers_reg[10]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_14_n_0\
    );
\r_data_2_OBUF[15]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(15),
      I1 => \registers_reg[14]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_15_n_0\
    );
\r_data_2_OBUF[15]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(15),
      I1 => \registers_reg[2]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_16_n_0\
    );
\r_data_2_OBUF[15]_inst_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(15),
      I1 => \registers_reg[6]__0\(15),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(15),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(15),
      O => \r_data_2_OBUF[15]_inst_i_17_n_0\
    );
\r_data_2_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[15]_inst_i_4_n_0\,
      I1 => \r_data_2_OBUF[15]_inst_i_5_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[15]_inst_i_6_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[15]_inst_i_7_n_0\,
      O => \r_data_2_OBUF[15]_inst_i_2_n_0\
    );
\r_data_2_OBUF[15]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_r_data_2_OBUF[15]_inst_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => r_data_22,
      CO(0) => \r_data_2_OBUF[15]_inst_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_data_2_OBUF[15]_inst_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \r_data_2_OBUF[15]_inst_i_8_n_0\,
      S(0) => \r_data_2_OBUF[15]_inst_i_9_n_0\
    );
\r_data_2_OBUF[15]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[15]_inst_i_10_n_0\,
      I1 => \r_data_2_OBUF[15]_inst_i_11_n_0\,
      O => \r_data_2_OBUF[15]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[15]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[15]_inst_i_12_n_0\,
      I1 => \r_data_2_OBUF[15]_inst_i_13_n_0\,
      O => \r_data_2_OBUF[15]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[15]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[15]_inst_i_14_n_0\,
      I1 => \r_data_2_OBUF[15]_inst_i_15_n_0\,
      O => \r_data_2_OBUF[15]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[15]_inst_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[15]_inst_i_16_n_0\,
      I1 => \r_data_2_OBUF[15]_inst_i_17_n_0\,
      O => \r_data_2_OBUF[15]_inst_i_7_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_addr_2_IBUF(3),
      I1 => w_addr_IBUF(3),
      I2 => r_addr_2_IBUF(4),
      I3 => w_addr_IBUF(4),
      O => \r_data_2_OBUF[15]_inst_i_8_n_0\
    );
\r_data_2_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_addr_2_IBUF(0),
      I1 => w_addr_IBUF(0),
      I2 => w_addr_IBUF(2),
      I3 => r_addr_2_IBUF(2),
      I4 => w_addr_IBUF(1),
      I5 => r_addr_2_IBUF(1),
      O => \r_data_2_OBUF[15]_inst_i_9_n_0\
    );
\r_data_2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(1),
      O => r_data_2(1)
    );
\r_data_2_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[1]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(1),
      O => r_data_2_OBUF(1)
    );
\r_data_2_OBUF[1]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(1),
      I1 => \registers_reg[22]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_10_n_0\
    );
\r_data_2_OBUF[1]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(1),
      I1 => \registers_reg[10]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_11_n_0\
    );
\r_data_2_OBUF[1]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(1),
      I1 => \registers_reg[14]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_12_n_0\
    );
\r_data_2_OBUF[1]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(1),
      I1 => \registers_reg[2]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_13_n_0\
    );
\r_data_2_OBUF[1]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(1),
      I1 => \registers_reg[6]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_14_n_0\
    );
\r_data_2_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[1]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[1]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[1]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[1]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[1]_inst_i_2_n_0\
    );
\r_data_2_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[1]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[1]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[1]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[1]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[1]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[1]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[1]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[1]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[1]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[1]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[1]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[1]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[1]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[1]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[1]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(1),
      I1 => \registers_reg[26]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_7_n_0\
    );
\r_data_2_OBUF[1]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(1),
      I1 => \registers_reg[30]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_8_n_0\
    );
\r_data_2_OBUF[1]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(1),
      I1 => \registers_reg[18]__0\(1),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(1),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(1),
      O => \r_data_2_OBUF[1]_inst_i_9_n_0\
    );
\r_data_2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(2),
      O => r_data_2(2)
    );
\r_data_2_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[2]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(2),
      O => r_data_2_OBUF(2)
    );
\r_data_2_OBUF[2]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(2),
      I1 => \registers_reg[22]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_10_n_0\
    );
\r_data_2_OBUF[2]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(2),
      I1 => \registers_reg[10]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_11_n_0\
    );
\r_data_2_OBUF[2]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(2),
      I1 => \registers_reg[14]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_12_n_0\
    );
\r_data_2_OBUF[2]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(2),
      I1 => \registers_reg[2]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_13_n_0\
    );
\r_data_2_OBUF[2]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(2),
      I1 => \registers_reg[6]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_14_n_0\
    );
\r_data_2_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[2]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[2]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[2]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[2]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[2]_inst_i_2_n_0\
    );
\r_data_2_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[2]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[2]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[2]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[2]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[2]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[2]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[2]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[2]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[2]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[2]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[2]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[2]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[2]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[2]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[2]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(2),
      I1 => \registers_reg[26]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_7_n_0\
    );
\r_data_2_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(2),
      I1 => \registers_reg[30]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_8_n_0\
    );
\r_data_2_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(2),
      I1 => \registers_reg[18]__0\(2),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(2),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(2),
      O => \r_data_2_OBUF[2]_inst_i_9_n_0\
    );
\r_data_2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(3),
      O => r_data_2(3)
    );
\r_data_2_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[3]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(3),
      O => r_data_2_OBUF(3)
    );
\r_data_2_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(3),
      I1 => \registers_reg[22]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_10_n_0\
    );
\r_data_2_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(3),
      I1 => \registers_reg[10]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_11_n_0\
    );
\r_data_2_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(3),
      I1 => \registers_reg[14]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_12_n_0\
    );
\r_data_2_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(3),
      I1 => \registers_reg[2]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_13_n_0\
    );
\r_data_2_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(3),
      I1 => \registers_reg[6]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_14_n_0\
    );
\r_data_2_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[3]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[3]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[3]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[3]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[3]_inst_i_2_n_0\
    );
\r_data_2_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[3]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[3]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[3]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[3]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[3]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[3]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[3]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[3]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[3]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[3]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[3]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[3]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[3]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[3]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[3]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(3),
      I1 => \registers_reg[26]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_7_n_0\
    );
\r_data_2_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(3),
      I1 => \registers_reg[30]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_8_n_0\
    );
\r_data_2_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(3),
      I1 => \registers_reg[18]__0\(3),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(3),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(3),
      O => \r_data_2_OBUF[3]_inst_i_9_n_0\
    );
\r_data_2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(4),
      O => r_data_2(4)
    );
\r_data_2_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[4]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(4),
      O => r_data_2_OBUF(4)
    );
\r_data_2_OBUF[4]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(4),
      I1 => \registers_reg[22]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_10_n_0\
    );
\r_data_2_OBUF[4]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(4),
      I1 => \registers_reg[10]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_11_n_0\
    );
\r_data_2_OBUF[4]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(4),
      I1 => \registers_reg[14]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_12_n_0\
    );
\r_data_2_OBUF[4]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(4),
      I1 => \registers_reg[2]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_13_n_0\
    );
\r_data_2_OBUF[4]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(4),
      I1 => \registers_reg[6]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_14_n_0\
    );
\r_data_2_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[4]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[4]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[4]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[4]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[4]_inst_i_2_n_0\
    );
\r_data_2_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[4]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[4]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[4]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[4]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[4]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[4]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[4]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[4]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[4]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[4]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[4]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[4]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[4]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[4]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[4]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(4),
      I1 => \registers_reg[26]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_7_n_0\
    );
\r_data_2_OBUF[4]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(4),
      I1 => \registers_reg[30]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_8_n_0\
    );
\r_data_2_OBUF[4]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(4),
      I1 => \registers_reg[18]__0\(4),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(4),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(4),
      O => \r_data_2_OBUF[4]_inst_i_9_n_0\
    );
\r_data_2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(5),
      O => r_data_2(5)
    );
\r_data_2_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[5]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(5),
      O => r_data_2_OBUF(5)
    );
\r_data_2_OBUF[5]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(5),
      I1 => \registers_reg[22]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_10_n_0\
    );
\r_data_2_OBUF[5]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(5),
      I1 => \registers_reg[10]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_11_n_0\
    );
\r_data_2_OBUF[5]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(5),
      I1 => \registers_reg[14]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_12_n_0\
    );
\r_data_2_OBUF[5]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(5),
      I1 => \registers_reg[2]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_13_n_0\
    );
\r_data_2_OBUF[5]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(5),
      I1 => \registers_reg[6]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_14_n_0\
    );
\r_data_2_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[5]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[5]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[5]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[5]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[5]_inst_i_2_n_0\
    );
\r_data_2_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[5]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[5]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[5]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[5]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[5]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[5]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[5]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[5]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[5]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[5]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[5]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[5]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[5]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[5]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[5]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(5),
      I1 => \registers_reg[26]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_7_n_0\
    );
\r_data_2_OBUF[5]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(5),
      I1 => \registers_reg[30]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_8_n_0\
    );
\r_data_2_OBUF[5]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(5),
      I1 => \registers_reg[18]__0\(5),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(5),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(5),
      O => \r_data_2_OBUF[5]_inst_i_9_n_0\
    );
\r_data_2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(6),
      O => r_data_2(6)
    );
\r_data_2_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[6]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(6),
      O => r_data_2_OBUF(6)
    );
\r_data_2_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(6),
      I1 => \registers_reg[22]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_10_n_0\
    );
\r_data_2_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(6),
      I1 => \registers_reg[10]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_11_n_0\
    );
\r_data_2_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(6),
      I1 => \registers_reg[14]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_12_n_0\
    );
\r_data_2_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(6),
      I1 => \registers_reg[2]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_13_n_0\
    );
\r_data_2_OBUF[6]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(6),
      I1 => \registers_reg[6]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_14_n_0\
    );
\r_data_2_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[6]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[6]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[6]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[6]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[6]_inst_i_2_n_0\
    );
\r_data_2_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[6]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[6]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[6]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[6]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[6]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[6]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[6]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[6]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[6]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[6]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[6]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[6]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[6]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[6]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[6]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(6),
      I1 => \registers_reg[26]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_7_n_0\
    );
\r_data_2_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(6),
      I1 => \registers_reg[30]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_8_n_0\
    );
\r_data_2_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(6),
      I1 => \registers_reg[18]__0\(6),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(6),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(6),
      O => \r_data_2_OBUF[6]_inst_i_9_n_0\
    );
\r_data_2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(7),
      O => r_data_2(7)
    );
\r_data_2_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[7]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(7),
      O => r_data_2_OBUF(7)
    );
\r_data_2_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(7),
      I1 => \registers_reg[22]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_10_n_0\
    );
\r_data_2_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(7),
      I1 => \registers_reg[10]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_11_n_0\
    );
\r_data_2_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(7),
      I1 => \registers_reg[14]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_12_n_0\
    );
\r_data_2_OBUF[7]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(7),
      I1 => \registers_reg[2]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_13_n_0\
    );
\r_data_2_OBUF[7]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(7),
      I1 => \registers_reg[6]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_14_n_0\
    );
\r_data_2_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[7]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[7]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[7]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[7]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[7]_inst_i_2_n_0\
    );
\r_data_2_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[7]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[7]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[7]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[7]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[7]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[7]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[7]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[7]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[7]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[7]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[7]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[7]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[7]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[7]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[7]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(7),
      I1 => \registers_reg[26]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_7_n_0\
    );
\r_data_2_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(7),
      I1 => \registers_reg[30]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_8_n_0\
    );
\r_data_2_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(7),
      I1 => \registers_reg[18]__0\(7),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(7),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(7),
      O => \r_data_2_OBUF[7]_inst_i_9_n_0\
    );
\r_data_2_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(8),
      O => r_data_2(8)
    );
\r_data_2_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[8]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(8),
      O => r_data_2_OBUF(8)
    );
\r_data_2_OBUF[8]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(8),
      I1 => \registers_reg[22]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_10_n_0\
    );
\r_data_2_OBUF[8]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(8),
      I1 => \registers_reg[10]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_11_n_0\
    );
\r_data_2_OBUF[8]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(8),
      I1 => \registers_reg[14]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_12_n_0\
    );
\r_data_2_OBUF[8]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(8),
      I1 => \registers_reg[2]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_13_n_0\
    );
\r_data_2_OBUF[8]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(8),
      I1 => \registers_reg[6]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_14_n_0\
    );
\r_data_2_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[8]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[8]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[8]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[8]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[8]_inst_i_2_n_0\
    );
\r_data_2_OBUF[8]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[8]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[8]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[8]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[8]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[8]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[8]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[8]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[8]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[8]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[8]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[8]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[8]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[8]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[8]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[8]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(8),
      I1 => \registers_reg[26]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_7_n_0\
    );
\r_data_2_OBUF[8]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(8),
      I1 => \registers_reg[30]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_8_n_0\
    );
\r_data_2_OBUF[8]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(8),
      I1 => \registers_reg[18]__0\(8),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(8),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(8),
      O => \r_data_2_OBUF[8]_inst_i_9_n_0\
    );
\r_data_2_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => r_data_2_OBUF(9),
      O => r_data_2(9)
    );
\r_data_2_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880888"
    )
        port map (
      I0 => r_en_2_IBUF,
      I1 => \r_data_2_OBUF[9]_inst_i_2_n_0\,
      I2 => r_data_22,
      I3 => w_en_IBUF,
      I4 => w_data_IBUF(9),
      O => r_data_2_OBUF(9)
    );
\r_data_2_OBUF[9]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[23]__0\(9),
      I1 => \registers_reg[22]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[21]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[20]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_10_n_0\
    );
\r_data_2_OBUF[9]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[11]__0\(9),
      I1 => \registers_reg[10]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[9]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[8]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_11_n_0\
    );
\r_data_2_OBUF[9]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[15]__0\(9),
      I1 => \registers_reg[14]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[13]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[12]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_12_n_0\
    );
\r_data_2_OBUF[9]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[3]__0\(9),
      I1 => \registers_reg[2]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[1]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[0]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_13_n_0\
    );
\r_data_2_OBUF[9]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[7]__0\(9),
      I1 => \registers_reg[6]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[5]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[4]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_14_n_0\
    );
\r_data_2_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_data_2_OBUF[9]_inst_i_3_n_0\,
      I1 => \r_data_2_OBUF[9]_inst_i_4_n_0\,
      I2 => r_addr_2_IBUF(4),
      I3 => \r_data_2_OBUF[9]_inst_i_5_n_0\,
      I4 => r_addr_2_IBUF(3),
      I5 => \r_data_2_OBUF[9]_inst_i_6_n_0\,
      O => \r_data_2_OBUF[9]_inst_i_2_n_0\
    );
\r_data_2_OBUF[9]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[9]_inst_i_7_n_0\,
      I1 => \r_data_2_OBUF[9]_inst_i_8_n_0\,
      O => \r_data_2_OBUF[9]_inst_i_3_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[9]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[9]_inst_i_9_n_0\,
      I1 => \r_data_2_OBUF[9]_inst_i_10_n_0\,
      O => \r_data_2_OBUF[9]_inst_i_4_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[9]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[9]_inst_i_11_n_0\,
      I1 => \r_data_2_OBUF[9]_inst_i_12_n_0\,
      O => \r_data_2_OBUF[9]_inst_i_5_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[9]_inst_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_data_2_OBUF[9]_inst_i_13_n_0\,
      I1 => \r_data_2_OBUF[9]_inst_i_14_n_0\,
      O => \r_data_2_OBUF[9]_inst_i_6_n_0\,
      S => r_addr_2_IBUF(2)
    );
\r_data_2_OBUF[9]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[27]__0\(9),
      I1 => \registers_reg[26]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[25]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[24]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_7_n_0\
    );
\r_data_2_OBUF[9]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[31]__0\(9),
      I1 => \registers_reg[30]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[29]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[28]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_8_n_0\
    );
\r_data_2_OBUF[9]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \registers_reg[19]__0\(9),
      I1 => \registers_reg[18]__0\(9),
      I2 => r_addr_2_IBUF(1),
      I3 => \registers_reg[17]__0\(9),
      I4 => r_addr_2_IBUF(0),
      I5 => \registers_reg[16]__0\(9),
      O => \r_data_2_OBUF[9]_inst_i_9_n_0\
    );
r_en_1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => r_en_1,
      O => r_en_1_IBUF
    );
r_en_2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => r_en_2,
      O => r_en_2_IBUF
    );
\registers[0][10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_IBUF,
      O => \registers[0][10]_i_1_n_0\
    );
\registers[0][14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_IBUF,
      O => \registers[0][14]_i_1_n_0\
    );
\registers[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(2),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(1),
      I5 => w_addr_IBUF(4),
      O => \registers[0][15]_i_1_n_0\
    );
\registers[0][15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_IBUF,
      O => \registers[0][15]_i_2_n_0\
    );
\registers[0][6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_IBUF,
      O => \registers[0][6]_i_1_n_0\
    );
\registers[10][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(2),
      O => \registers[10]\
    );
\registers[11][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(2),
      O => \registers[11]\
    );
\registers[12][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(2),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(1),
      O => \registers[12]\
    );
\registers[13][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(2),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(1),
      O => \registers[13]\
    );
\registers[14][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(2),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(0),
      O => \registers[14]\
    );
\registers[15][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(3),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(1),
      I5 => w_addr_IBUF(2),
      O => \registers[15]\
    );
\registers[16][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(4),
      I4 => w_addr_IBUF(0),
      I5 => w_addr_IBUF(2),
      O => \registers[16]\
    );
\registers[17][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(4),
      I5 => w_addr_IBUF(2),
      O => \registers[17]\
    );
\registers[18][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(4),
      I5 => w_addr_IBUF(2),
      O => \registers[18]\
    );
\registers[19][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(4),
      I5 => w_addr_IBUF(2),
      O => \registers[19]\
    );
\registers[1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(2),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(1),
      I5 => w_addr_IBUF(4),
      O => \registers[1]\
    );
\registers[20][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(2),
      I4 => w_addr_IBUF(4),
      I5 => w_addr_IBUF(1),
      O => \registers[20]\
    );
\registers[21][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(2),
      I4 => w_addr_IBUF(4),
      I5 => w_addr_IBUF(1),
      O => \registers[21]\
    );
\registers[22][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(2),
      I4 => w_addr_IBUF(4),
      I5 => w_addr_IBUF(0),
      O => \registers[22]\
    );
\registers[23][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(4),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(1),
      I5 => w_addr_IBUF(2),
      O => \registers[23]\
    );
\registers[24][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(2),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(4),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(1),
      O => \registers[24]\
    );
\registers[25][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(2),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(4),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(1),
      O => \registers[25]\
    );
\registers[26][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(2),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(4),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(0),
      O => \registers[26]\
    );
\registers[27][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(2),
      I2 => w_addr_IBUF(3),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(1),
      I5 => w_addr_IBUF(4),
      O => \registers[27]\
    );
\registers[28][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(1),
      I2 => w_addr_IBUF(2),
      I3 => w_addr_IBUF(4),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(0),
      O => \registers[28]\
    );
\registers[29][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(1),
      I2 => w_addr_IBUF(3),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(2),
      I5 => w_addr_IBUF(4),
      O => \registers[29]\
    );
\registers[2][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(2),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(0),
      I5 => w_addr_IBUF(4),
      O => \registers[2]\
    );
\registers[30][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(0),
      I2 => w_addr_IBUF(3),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(2),
      I5 => w_addr_IBUF(4),
      O => \registers[30]\
    );
\registers[31][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(2),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(4),
      I5 => w_addr_IBUF(3),
      O => \registers[31]\
    );
\registers[3][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(2),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(1),
      I5 => w_addr_IBUF(4),
      O => \registers[3]\
    );
\registers[4][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(2),
      I4 => w_addr_IBUF(0),
      I5 => w_addr_IBUF(4),
      O => \registers[4]\
    );
\registers[5][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(2),
      I5 => w_addr_IBUF(4),
      O => \registers[5]\
    );
\registers[6][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(2),
      I5 => w_addr_IBUF(4),
      O => \registers[6]\
    );
\registers[7][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(3),
      I2 => w_addr_IBUF(0),
      I3 => w_addr_IBUF(1),
      I4 => w_addr_IBUF(2),
      I5 => w_addr_IBUF(4),
      O => \registers[7]\
    );
\registers[8][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(3),
      I4 => w_addr_IBUF(0),
      I5 => w_addr_IBUF(2),
      O => \registers[8]\
    );
\registers[9][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => w_en_IBUF,
      I1 => w_addr_IBUF(4),
      I2 => w_addr_IBUF(1),
      I3 => w_addr_IBUF(0),
      I4 => w_addr_IBUF(3),
      I5 => w_addr_IBUF(2),
      O => \registers[9]\
    );
\registers_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[0]__0\(0)
    );
\registers_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[0]__0\(10)
    );
\registers_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[0]__0\(11)
    );
\registers_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[0]__0\(12)
    );
\registers_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[0]__0\(13)
    );
\registers_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[0]__0\(14)
    );
\registers_reg[0][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[0]__0\(15)
    );
\registers_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[0]__0\(1)
    );
\registers_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[0]__0\(2)
    );
\registers_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[0]__0\(3)
    );
\registers_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[0]__0\(4)
    );
\registers_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[0]__0\(5)
    );
\registers_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[0]__0\(6)
    );
\registers_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[0]__0\(7)
    );
\registers_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[0]__0\(8)
    );
\registers_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[0][15]_i_1_n_0\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[0]__0\(9)
    );
\registers_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[10]__0\(0)
    );
\registers_reg[10][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[10]__0\(10)
    );
\registers_reg[10][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[10]__0\(11)
    );
\registers_reg[10][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[10]__0\(12)
    );
\registers_reg[10][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[10]__0\(13)
    );
\registers_reg[10][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[10]__0\(14)
    );
\registers_reg[10][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[10]__0\(15)
    );
\registers_reg[10][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[10]__0\(1)
    );
\registers_reg[10][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[10]__0\(2)
    );
\registers_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[10]__0\(3)
    );
\registers_reg[10][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[10]__0\(4)
    );
\registers_reg[10][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[10]__0\(5)
    );
\registers_reg[10][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[10]__0\(6)
    );
\registers_reg[10][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[10]__0\(7)
    );
\registers_reg[10][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[10]__0\(8)
    );
\registers_reg[10][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[10]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[10]__0\(9)
    );
\registers_reg[11][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[11]__0\(0)
    );
\registers_reg[11][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[11]__0\(10)
    );
\registers_reg[11][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[11]__0\(11)
    );
\registers_reg[11][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[11]__0\(12)
    );
\registers_reg[11][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[11]__0\(13)
    );
\registers_reg[11][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[11]__0\(14)
    );
\registers_reg[11][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[11]__0\(15)
    );
\registers_reg[11][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[11]__0\(1)
    );
\registers_reg[11][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[11]__0\(2)
    );
\registers_reg[11][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[11]__0\(3)
    );
\registers_reg[11][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[11]__0\(4)
    );
\registers_reg[11][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[11]__0\(5)
    );
\registers_reg[11][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[11]__0\(6)
    );
\registers_reg[11][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[11]__0\(7)
    );
\registers_reg[11][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[11]__0\(8)
    );
\registers_reg[11][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[11]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[11]__0\(9)
    );
\registers_reg[12][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[12]__0\(0)
    );
\registers_reg[12][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[12]__0\(10)
    );
\registers_reg[12][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[12]__0\(11)
    );
\registers_reg[12][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[12]__0\(12)
    );
\registers_reg[12][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[12]__0\(13)
    );
\registers_reg[12][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[12]__0\(14)
    );
\registers_reg[12][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[12]__0\(15)
    );
\registers_reg[12][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[12]__0\(1)
    );
\registers_reg[12][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[12]__0\(2)
    );
\registers_reg[12][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[12]__0\(3)
    );
\registers_reg[12][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[12]__0\(4)
    );
\registers_reg[12][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[12]__0\(5)
    );
\registers_reg[12][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[12]__0\(6)
    );
\registers_reg[12][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[12]__0\(7)
    );
\registers_reg[12][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[12]__0\(8)
    );
\registers_reg[12][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[12]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[12]__0\(9)
    );
\registers_reg[13][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[13]__0\(0)
    );
\registers_reg[13][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[13]__0\(10)
    );
\registers_reg[13][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[13]__0\(11)
    );
\registers_reg[13][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[13]__0\(12)
    );
\registers_reg[13][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[13]__0\(13)
    );
\registers_reg[13][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[13]__0\(14)
    );
\registers_reg[13][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[13]__0\(15)
    );
\registers_reg[13][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[13]__0\(1)
    );
\registers_reg[13][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[13]__0\(2)
    );
\registers_reg[13][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[13]__0\(3)
    );
\registers_reg[13][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[13]__0\(4)
    );
\registers_reg[13][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[13]__0\(5)
    );
\registers_reg[13][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[13]__0\(6)
    );
\registers_reg[13][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[13]__0\(7)
    );
\registers_reg[13][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[13]__0\(8)
    );
\registers_reg[13][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[13]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[13]__0\(9)
    );
\registers_reg[14][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[14]__0\(0)
    );
\registers_reg[14][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[14]__0\(10)
    );
\registers_reg[14][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[14]__0\(11)
    );
\registers_reg[14][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[14]__0\(12)
    );
\registers_reg[14][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[14]__0\(13)
    );
\registers_reg[14][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[14]__0\(14)
    );
\registers_reg[14][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[14]__0\(15)
    );
\registers_reg[14][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[14]__0\(1)
    );
\registers_reg[14][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[14]__0\(2)
    );
\registers_reg[14][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[14]__0\(3)
    );
\registers_reg[14][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[14]__0\(4)
    );
\registers_reg[14][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[14]__0\(5)
    );
\registers_reg[14][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[14]__0\(6)
    );
\registers_reg[14][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[14]__0\(7)
    );
\registers_reg[14][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[14]__0\(8)
    );
\registers_reg[14][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[14]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[14]__0\(9)
    );
\registers_reg[15][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[15]__0\(0)
    );
\registers_reg[15][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[15]__0\(10)
    );
\registers_reg[15][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[15]__0\(11)
    );
\registers_reg[15][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[15]__0\(12)
    );
\registers_reg[15][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[15]__0\(13)
    );
\registers_reg[15][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[15]__0\(14)
    );
\registers_reg[15][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[15]__0\(15)
    );
\registers_reg[15][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[15]__0\(1)
    );
\registers_reg[15][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[15]__0\(2)
    );
\registers_reg[15][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[15]__0\(3)
    );
\registers_reg[15][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[15]__0\(4)
    );
\registers_reg[15][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[15]__0\(5)
    );
\registers_reg[15][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[15]__0\(6)
    );
\registers_reg[15][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[15]__0\(7)
    );
\registers_reg[15][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[15]__0\(8)
    );
\registers_reg[15][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[15]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[15]__0\(9)
    );
\registers_reg[16][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[16]__0\(0)
    );
\registers_reg[16][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[16]__0\(10)
    );
\registers_reg[16][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[16]__0\(11)
    );
\registers_reg[16][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[16]__0\(12)
    );
\registers_reg[16][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[16]__0\(13)
    );
\registers_reg[16][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[16]__0\(14)
    );
\registers_reg[16][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[16]__0\(15)
    );
\registers_reg[16][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[16]__0\(1)
    );
\registers_reg[16][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[16]__0\(2)
    );
\registers_reg[16][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[16]__0\(3)
    );
\registers_reg[16][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[16]__0\(4)
    );
\registers_reg[16][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[16]__0\(5)
    );
\registers_reg[16][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[16]__0\(6)
    );
\registers_reg[16][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[16]__0\(7)
    );
\registers_reg[16][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[16]__0\(8)
    );
\registers_reg[16][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[16]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[16]__0\(9)
    );
\registers_reg[17][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[17]__0\(0)
    );
\registers_reg[17][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[17]__0\(10)
    );
\registers_reg[17][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[17]__0\(11)
    );
\registers_reg[17][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[17]__0\(12)
    );
\registers_reg[17][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[17]__0\(13)
    );
\registers_reg[17][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[17]__0\(14)
    );
\registers_reg[17][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[17]__0\(15)
    );
\registers_reg[17][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[17]__0\(1)
    );
\registers_reg[17][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[17]__0\(2)
    );
\registers_reg[17][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[17]__0\(3)
    );
\registers_reg[17][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[17]__0\(4)
    );
\registers_reg[17][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[17]__0\(5)
    );
\registers_reg[17][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[17]__0\(6)
    );
\registers_reg[17][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[17]__0\(7)
    );
\registers_reg[17][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[17]__0\(8)
    );
\registers_reg[17][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[17]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[17]__0\(9)
    );
\registers_reg[18][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[18]__0\(0)
    );
\registers_reg[18][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[18]__0\(10)
    );
\registers_reg[18][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[18]__0\(11)
    );
\registers_reg[18][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[18]__0\(12)
    );
\registers_reg[18][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[18]__0\(13)
    );
\registers_reg[18][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[18]__0\(14)
    );
\registers_reg[18][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[18]__0\(15)
    );
\registers_reg[18][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[18]__0\(1)
    );
\registers_reg[18][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[18]__0\(2)
    );
\registers_reg[18][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[18]__0\(3)
    );
\registers_reg[18][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[18]__0\(4)
    );
\registers_reg[18][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[18]__0\(5)
    );
\registers_reg[18][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[18]__0\(6)
    );
\registers_reg[18][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[18]__0\(7)
    );
\registers_reg[18][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[18]__0\(8)
    );
\registers_reg[18][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[18]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[18]__0\(9)
    );
\registers_reg[19][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[19]__0\(0)
    );
\registers_reg[19][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[19]__0\(10)
    );
\registers_reg[19][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[19]__0\(11)
    );
\registers_reg[19][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[19]__0\(12)
    );
\registers_reg[19][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[19]__0\(13)
    );
\registers_reg[19][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[19]__0\(14)
    );
\registers_reg[19][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[19]__0\(15)
    );
\registers_reg[19][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[19]__0\(1)
    );
\registers_reg[19][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[19]__0\(2)
    );
\registers_reg[19][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[19]__0\(3)
    );
\registers_reg[19][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[19]__0\(4)
    );
\registers_reg[19][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[19]__0\(5)
    );
\registers_reg[19][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[19]__0\(6)
    );
\registers_reg[19][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[19]__0\(7)
    );
\registers_reg[19][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[19]__0\(8)
    );
\registers_reg[19][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[19]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[19]__0\(9)
    );
\registers_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[1]__0\(0)
    );
\registers_reg[1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[1]__0\(10)
    );
\registers_reg[1][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[1]__0\(11)
    );
\registers_reg[1][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[1]__0\(12)
    );
\registers_reg[1][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[1]__0\(13)
    );
\registers_reg[1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[1]__0\(14)
    );
\registers_reg[1][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[1]__0\(15)
    );
\registers_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[1]__0\(1)
    );
\registers_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[1]__0\(2)
    );
\registers_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[1]__0\(3)
    );
\registers_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[1]__0\(4)
    );
\registers_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[1]__0\(5)
    );
\registers_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[1]__0\(6)
    );
\registers_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[1]__0\(7)
    );
\registers_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[1]__0\(8)
    );
\registers_reg[1][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[1]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[1]__0\(9)
    );
\registers_reg[20][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[20]__0\(0)
    );
\registers_reg[20][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[20]__0\(10)
    );
\registers_reg[20][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[20]__0\(11)
    );
\registers_reg[20][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[20]__0\(12)
    );
\registers_reg[20][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[20]__0\(13)
    );
\registers_reg[20][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[20]__0\(14)
    );
\registers_reg[20][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[20]__0\(15)
    );
\registers_reg[20][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[20]__0\(1)
    );
\registers_reg[20][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[20]__0\(2)
    );
\registers_reg[20][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[20]__0\(3)
    );
\registers_reg[20][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[20]__0\(4)
    );
\registers_reg[20][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[20]__0\(5)
    );
\registers_reg[20][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[20]__0\(6)
    );
\registers_reg[20][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[20]__0\(7)
    );
\registers_reg[20][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[20]__0\(8)
    );
\registers_reg[20][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[20]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[20]__0\(9)
    );
\registers_reg[21][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[21]__0\(0)
    );
\registers_reg[21][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[21]__0\(10)
    );
\registers_reg[21][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[21]__0\(11)
    );
\registers_reg[21][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[21]__0\(12)
    );
\registers_reg[21][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[21]__0\(13)
    );
\registers_reg[21][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[21]__0\(14)
    );
\registers_reg[21][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[21]__0\(15)
    );
\registers_reg[21][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[21]__0\(1)
    );
\registers_reg[21][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[21]__0\(2)
    );
\registers_reg[21][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[21]__0\(3)
    );
\registers_reg[21][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[21]__0\(4)
    );
\registers_reg[21][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[21]__0\(5)
    );
\registers_reg[21][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[21]__0\(6)
    );
\registers_reg[21][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[21]__0\(7)
    );
\registers_reg[21][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[21]__0\(8)
    );
\registers_reg[21][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[21]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[21]__0\(9)
    );
\registers_reg[22][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[22]__0\(0)
    );
\registers_reg[22][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[22]__0\(10)
    );
\registers_reg[22][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[22]__0\(11)
    );
\registers_reg[22][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[22]__0\(12)
    );
\registers_reg[22][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[22]__0\(13)
    );
\registers_reg[22][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[22]__0\(14)
    );
\registers_reg[22][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[22]__0\(15)
    );
\registers_reg[22][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[22]__0\(1)
    );
\registers_reg[22][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[22]__0\(2)
    );
\registers_reg[22][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[22]__0\(3)
    );
\registers_reg[22][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[22]__0\(4)
    );
\registers_reg[22][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[22]__0\(5)
    );
\registers_reg[22][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[22]__0\(6)
    );
\registers_reg[22][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[22]__0\(7)
    );
\registers_reg[22][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[22]__0\(8)
    );
\registers_reg[22][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[22]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[22]__0\(9)
    );
\registers_reg[23][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[23]__0\(0)
    );
\registers_reg[23][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[23]__0\(10)
    );
\registers_reg[23][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[23]__0\(11)
    );
\registers_reg[23][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[23]__0\(12)
    );
\registers_reg[23][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[23]__0\(13)
    );
\registers_reg[23][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[23]__0\(14)
    );
\registers_reg[23][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[23]__0\(15)
    );
\registers_reg[23][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[23]__0\(1)
    );
\registers_reg[23][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[23]__0\(2)
    );
\registers_reg[23][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[23]__0\(3)
    );
\registers_reg[23][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[23]__0\(4)
    );
\registers_reg[23][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[23]__0\(5)
    );
\registers_reg[23][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[23]__0\(6)
    );
\registers_reg[23][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[23]__0\(7)
    );
\registers_reg[23][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[23]__0\(8)
    );
\registers_reg[23][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[23]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[23]__0\(9)
    );
\registers_reg[24][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[24]__0\(0)
    );
\registers_reg[24][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[24]__0\(10)
    );
\registers_reg[24][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[24]__0\(11)
    );
\registers_reg[24][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[24]__0\(12)
    );
\registers_reg[24][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[24]__0\(13)
    );
\registers_reg[24][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[24]__0\(14)
    );
\registers_reg[24][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[24]__0\(15)
    );
\registers_reg[24][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[24]__0\(1)
    );
\registers_reg[24][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[24]__0\(2)
    );
\registers_reg[24][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[24]__0\(3)
    );
\registers_reg[24][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[24]__0\(4)
    );
\registers_reg[24][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[24]__0\(5)
    );
\registers_reg[24][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[24]__0\(6)
    );
\registers_reg[24][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[24]__0\(7)
    );
\registers_reg[24][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[24]__0\(8)
    );
\registers_reg[24][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[24]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[24]__0\(9)
    );
\registers_reg[25][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[25]__0\(0)
    );
\registers_reg[25][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[25]__0\(10)
    );
\registers_reg[25][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[25]__0\(11)
    );
\registers_reg[25][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[25]__0\(12)
    );
\registers_reg[25][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[25]__0\(13)
    );
\registers_reg[25][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[25]__0\(14)
    );
\registers_reg[25][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[25]__0\(15)
    );
\registers_reg[25][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[25]__0\(1)
    );
\registers_reg[25][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[25]__0\(2)
    );
\registers_reg[25][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[25]__0\(3)
    );
\registers_reg[25][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[25]__0\(4)
    );
\registers_reg[25][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[25]__0\(5)
    );
\registers_reg[25][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[25]__0\(6)
    );
\registers_reg[25][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[25]__0\(7)
    );
\registers_reg[25][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[25]__0\(8)
    );
\registers_reg[25][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[25]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[25]__0\(9)
    );
\registers_reg[26][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[26]__0\(0)
    );
\registers_reg[26][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[26]__0\(10)
    );
\registers_reg[26][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[26]__0\(11)
    );
\registers_reg[26][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[26]__0\(12)
    );
\registers_reg[26][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[26]__0\(13)
    );
\registers_reg[26][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[26]__0\(14)
    );
\registers_reg[26][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[26]__0\(15)
    );
\registers_reg[26][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[26]__0\(1)
    );
\registers_reg[26][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[26]__0\(2)
    );
\registers_reg[26][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[26]__0\(3)
    );
\registers_reg[26][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[26]__0\(4)
    );
\registers_reg[26][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[26]__0\(5)
    );
\registers_reg[26][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[26]__0\(6)
    );
\registers_reg[26][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[26]__0\(7)
    );
\registers_reg[26][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[26]__0\(8)
    );
\registers_reg[26][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[26]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[26]__0\(9)
    );
\registers_reg[27][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[27]__0\(0)
    );
\registers_reg[27][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[27]__0\(10)
    );
\registers_reg[27][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[27]__0\(11)
    );
\registers_reg[27][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[27]__0\(12)
    );
\registers_reg[27][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[27]__0\(13)
    );
\registers_reg[27][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[27]__0\(14)
    );
\registers_reg[27][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[27]__0\(15)
    );
\registers_reg[27][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[27]__0\(1)
    );
\registers_reg[27][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[27]__0\(2)
    );
\registers_reg[27][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[27]__0\(3)
    );
\registers_reg[27][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[27]__0\(4)
    );
\registers_reg[27][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[27]__0\(5)
    );
\registers_reg[27][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[27]__0\(6)
    );
\registers_reg[27][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[27]__0\(7)
    );
\registers_reg[27][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[27]__0\(8)
    );
\registers_reg[27][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[27]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[27]__0\(9)
    );
\registers_reg[28][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[28]__0\(0)
    );
\registers_reg[28][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[28]__0\(10)
    );
\registers_reg[28][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[28]__0\(11)
    );
\registers_reg[28][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[28]__0\(12)
    );
\registers_reg[28][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[28]__0\(13)
    );
\registers_reg[28][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[28]__0\(14)
    );
\registers_reg[28][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[28]__0\(15)
    );
\registers_reg[28][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[28]__0\(1)
    );
\registers_reg[28][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[28]__0\(2)
    );
\registers_reg[28][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[28]__0\(3)
    );
\registers_reg[28][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[28]__0\(4)
    );
\registers_reg[28][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[28]__0\(5)
    );
\registers_reg[28][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[28]__0\(6)
    );
\registers_reg[28][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[28]__0\(7)
    );
\registers_reg[28][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[28]__0\(8)
    );
\registers_reg[28][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[28]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[28]__0\(9)
    );
\registers_reg[29][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[29]__0\(0)
    );
\registers_reg[29][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[29]__0\(10)
    );
\registers_reg[29][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[29]__0\(11)
    );
\registers_reg[29][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[29]__0\(12)
    );
\registers_reg[29][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[29]__0\(13)
    );
\registers_reg[29][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[29]__0\(14)
    );
\registers_reg[29][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[29]__0\(15)
    );
\registers_reg[29][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[29]__0\(1)
    );
\registers_reg[29][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[29]__0\(2)
    );
\registers_reg[29][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[29]__0\(3)
    );
\registers_reg[29][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[29]__0\(4)
    );
\registers_reg[29][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[29]__0\(5)
    );
\registers_reg[29][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[29]__0\(6)
    );
\registers_reg[29][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[29]__0\(7)
    );
\registers_reg[29][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[29]__0\(8)
    );
\registers_reg[29][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[29]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[29]__0\(9)
    );
\registers_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[2]__0\(0)
    );
\registers_reg[2][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[2]__0\(10)
    );
\registers_reg[2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[2]__0\(11)
    );
\registers_reg[2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[2]__0\(12)
    );
\registers_reg[2][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[2]__0\(13)
    );
\registers_reg[2][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[2]__0\(14)
    );
\registers_reg[2][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[2]__0\(15)
    );
\registers_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[2]__0\(1)
    );
\registers_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[2]__0\(2)
    );
\registers_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[2]__0\(3)
    );
\registers_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[2]__0\(4)
    );
\registers_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[2]__0\(5)
    );
\registers_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[2]__0\(6)
    );
\registers_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[2]__0\(7)
    );
\registers_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[2]__0\(8)
    );
\registers_reg[2][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[2]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[2]__0\(9)
    );
\registers_reg[30][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[30]__0\(0)
    );
\registers_reg[30][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[30]__0\(10)
    );
\registers_reg[30][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[30]__0\(11)
    );
\registers_reg[30][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[30]__0\(12)
    );
\registers_reg[30][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[30]__0\(13)
    );
\registers_reg[30][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[30]__0\(14)
    );
\registers_reg[30][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[30]__0\(15)
    );
\registers_reg[30][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[30]__0\(1)
    );
\registers_reg[30][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[30]__0\(2)
    );
\registers_reg[30][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[30]__0\(3)
    );
\registers_reg[30][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[30]__0\(4)
    );
\registers_reg[30][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[30]__0\(5)
    );
\registers_reg[30][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[30]__0\(6)
    );
\registers_reg[30][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[30]__0\(7)
    );
\registers_reg[30][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[30]__0\(8)
    );
\registers_reg[30][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[30]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[30]__0\(9)
    );
\registers_reg[31][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[31]__0\(0)
    );
\registers_reg[31][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[31]__0\(10)
    );
\registers_reg[31][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[31]__0\(11)
    );
\registers_reg[31][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[31]__0\(12)
    );
\registers_reg[31][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[31]__0\(13)
    );
\registers_reg[31][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[31]__0\(14)
    );
\registers_reg[31][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[31]__0\(15)
    );
\registers_reg[31][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[31]__0\(1)
    );
\registers_reg[31][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[31]__0\(2)
    );
\registers_reg[31][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[31]__0\(3)
    );
\registers_reg[31][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[31]__0\(4)
    );
\registers_reg[31][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[31]__0\(5)
    );
\registers_reg[31][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[31]__0\(6)
    );
\registers_reg[31][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[31]__0\(7)
    );
\registers_reg[31][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[31]__0\(8)
    );
\registers_reg[31][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[31]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[31]__0\(9)
    );
\registers_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[3]__0\(0)
    );
\registers_reg[3][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[3]__0\(10)
    );
\registers_reg[3][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[3]__0\(11)
    );
\registers_reg[3][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[3]__0\(12)
    );
\registers_reg[3][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[3]__0\(13)
    );
\registers_reg[3][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[3]__0\(14)
    );
\registers_reg[3][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[3]__0\(15)
    );
\registers_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[3]__0\(1)
    );
\registers_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[3]__0\(2)
    );
\registers_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[3]__0\(3)
    );
\registers_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[3]__0\(4)
    );
\registers_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[3]__0\(5)
    );
\registers_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[3]__0\(6)
    );
\registers_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[3]__0\(7)
    );
\registers_reg[3][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[3]__0\(8)
    );
\registers_reg[3][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[3]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[3]__0\(9)
    );
\registers_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[4]__0\(0)
    );
\registers_reg[4][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[4]__0\(10)
    );
\registers_reg[4][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[4]__0\(11)
    );
\registers_reg[4][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[4]__0\(12)
    );
\registers_reg[4][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[4]__0\(13)
    );
\registers_reg[4][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[4]__0\(14)
    );
\registers_reg[4][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[4]__0\(15)
    );
\registers_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[4]__0\(1)
    );
\registers_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[4]__0\(2)
    );
\registers_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[4]__0\(3)
    );
\registers_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[4]__0\(4)
    );
\registers_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[4]__0\(5)
    );
\registers_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[4]__0\(6)
    );
\registers_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[4]__0\(7)
    );
\registers_reg[4][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[4]__0\(8)
    );
\registers_reg[4][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[4]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[4]__0\(9)
    );
\registers_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[5]__0\(0)
    );
\registers_reg[5][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[5]__0\(10)
    );
\registers_reg[5][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[5]__0\(11)
    );
\registers_reg[5][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[5]__0\(12)
    );
\registers_reg[5][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[5]__0\(13)
    );
\registers_reg[5][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[5]__0\(14)
    );
\registers_reg[5][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[5]__0\(15)
    );
\registers_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[5]__0\(1)
    );
\registers_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[5]__0\(2)
    );
\registers_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[5]__0\(3)
    );
\registers_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[5]__0\(4)
    );
\registers_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[5]__0\(5)
    );
\registers_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[5]__0\(6)
    );
\registers_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[5]__0\(7)
    );
\registers_reg[5][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[5]__0\(8)
    );
\registers_reg[5][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[5]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[5]__0\(9)
    );
\registers_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[6]__0\(0)
    );
\registers_reg[6][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[6]__0\(10)
    );
\registers_reg[6][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[6]__0\(11)
    );
\registers_reg[6][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[6]__0\(12)
    );
\registers_reg[6][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[6]__0\(13)
    );
\registers_reg[6][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[6]__0\(14)
    );
\registers_reg[6][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[6]__0\(15)
    );
\registers_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[6]__0\(1)
    );
\registers_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[6]__0\(2)
    );
\registers_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[6]__0\(3)
    );
\registers_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[6]__0\(4)
    );
\registers_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[6]__0\(5)
    );
\registers_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[6]__0\(6)
    );
\registers_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[6]__0\(7)
    );
\registers_reg[6][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[6]__0\(8)
    );
\registers_reg[6][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[6]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[6]__0\(9)
    );
\registers_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[7]__0\(0)
    );
\registers_reg[7][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[7]__0\(10)
    );
\registers_reg[7][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[7]__0\(11)
    );
\registers_reg[7][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[7]__0\(12)
    );
\registers_reg[7][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[7]__0\(13)
    );
\registers_reg[7][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[7]__0\(14)
    );
\registers_reg[7][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[7]__0\(15)
    );
\registers_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[7]__0\(1)
    );
\registers_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[7]__0\(2)
    );
\registers_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[7]__0\(3)
    );
\registers_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[7]__0\(4)
    );
\registers_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[7]__0\(5)
    );
\registers_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[7]__0\(6)
    );
\registers_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[7]__0\(7)
    );
\registers_reg[7][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[7]__0\(8)
    );
\registers_reg[7][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[7]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[7]__0\(9)
    );
\registers_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[8]__0\(0)
    );
\registers_reg[8][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[8]__0\(10)
    );
\registers_reg[8][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[8]__0\(11)
    );
\registers_reg[8][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[8]__0\(12)
    );
\registers_reg[8][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[8]__0\(13)
    );
\registers_reg[8][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[8]__0\(14)
    );
\registers_reg[8][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[8]__0\(15)
    );
\registers_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[8]__0\(1)
    );
\registers_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[8]__0\(2)
    );
\registers_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[8]__0\(3)
    );
\registers_reg[8][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[8]__0\(4)
    );
\registers_reg[8][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[8]__0\(5)
    );
\registers_reg[8][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[8]__0\(6)
    );
\registers_reg[8][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[8]__0\(7)
    );
\registers_reg[8][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[8]__0\(8)
    );
\registers_reg[8][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[8]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[8]__0\(9)
    );
\registers_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(0),
      Q => \registers_reg[9]__0\(0)
    );
\registers_reg[9][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(10),
      Q => \registers_reg[9]__0\(10)
    );
\registers_reg[9][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(11),
      Q => \registers_reg[9]__0\(11)
    );
\registers_reg[9][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(12),
      Q => \registers_reg[9]__0\(12)
    );
\registers_reg[9][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(13),
      Q => \registers_reg[9]__0\(13)
    );
\registers_reg[9][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][14]_i_1_n_0\,
      D => w_data_IBUF(14),
      Q => \registers_reg[9]__0\(14)
    );
\registers_reg[9][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(15),
      Q => \registers_reg[9]__0\(15)
    );
\registers_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(1),
      Q => \registers_reg[9]__0\(1)
    );
\registers_reg[9][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][15]_i_2_n_0\,
      D => w_data_IBUF(2),
      Q => \registers_reg[9]__0\(2)
    );
\registers_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(3),
      Q => \registers_reg[9]__0\(3)
    );
\registers_reg[9][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(4),
      Q => \registers_reg[9]__0\(4)
    );
\registers_reg[9][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(5),
      Q => \registers_reg[9]__0\(5)
    );
\registers_reg[9][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][6]_i_1_n_0\,
      D => w_data_IBUF(6),
      Q => \registers_reg[9]__0\(6)
    );
\registers_reg[9][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(7),
      Q => \registers_reg[9]__0\(7)
    );
\registers_reg[9][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(8),
      Q => \registers_reg[9]__0\(8)
    );
\registers_reg[9][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \registers[9]\,
      CLR => \registers[0][10]_i_1_n_0\,
      D => w_data_IBUF(9),
      Q => \registers_reg[9]__0\(9)
    );
rst_n_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_n,
      O => rst_n_IBUF
    );
\w_addr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_addr(0),
      O => w_addr_IBUF(0)
    );
\w_addr_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_addr(1),
      O => w_addr_IBUF(1)
    );
\w_addr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_addr(2),
      O => w_addr_IBUF(2)
    );
\w_addr_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_addr(3),
      O => w_addr_IBUF(3)
    );
\w_addr_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_addr(4),
      O => w_addr_IBUF(4)
    );
\w_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(0),
      O => w_data_IBUF(0)
    );
\w_data_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(10),
      O => w_data_IBUF(10)
    );
\w_data_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(11),
      O => w_data_IBUF(11)
    );
\w_data_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(12),
      O => w_data_IBUF(12)
    );
\w_data_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(13),
      O => w_data_IBUF(13)
    );
\w_data_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(14),
      O => w_data_IBUF(14)
    );
\w_data_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(15),
      O => w_data_IBUF(15)
    );
\w_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(1),
      O => w_data_IBUF(1)
    );
\w_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(2),
      O => w_data_IBUF(2)
    );
\w_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(3),
      O => w_data_IBUF(3)
    );
\w_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(4),
      O => w_data_IBUF(4)
    );
\w_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(5),
      O => w_data_IBUF(5)
    );
\w_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(6),
      O => w_data_IBUF(6)
    );
\w_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(7),
      O => w_data_IBUF(7)
    );
\w_data_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(8),
      O => w_data_IBUF(8)
    );
\w_data_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => w_data(9),
      O => w_data_IBUF(9)
    );
w_en_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => w_en,
      O => w_en_IBUF
    );
end STRUCTURE;
