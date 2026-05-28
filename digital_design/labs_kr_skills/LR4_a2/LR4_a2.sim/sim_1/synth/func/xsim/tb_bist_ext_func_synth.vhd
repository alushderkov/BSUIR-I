-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Apr  7 15:16:53 2026
-- Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR4_a2/LR4_a2.sim/sim_1/synth/func/xsim/tb_bist_ext_func_synth.vhd
-- Design      : bist_ext
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lfsr_ext_gen is
  port (
    dout : out STD_LOGIC;
    en : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end lfsr_ext_gen;

architecture STRUCTURE of lfsr_ext_gen is
  signal \^dout\ : STD_LOGIC;
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal q : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \q_reg[16]_srl15_gen_inst_q_reg_c_13_n_0\ : STD_LOGIC;
  signal \q_reg[17]_gen_inst_q_reg_c_14_n_0\ : STD_LOGIC;
  signal \q_reg[37]_srl17_gen_inst_q_reg_c_15_n_0\ : STD_LOGIC;
  signal \q_reg[38]_gen_inst_q_reg_c_16_n_0\ : STD_LOGIC;
  signal q_reg_c_0_n_0 : STD_LOGIC;
  signal q_reg_c_10_n_0 : STD_LOGIC;
  signal q_reg_c_11_n_0 : STD_LOGIC;
  signal q_reg_c_12_n_0 : STD_LOGIC;
  signal q_reg_c_13_n_0 : STD_LOGIC;
  signal q_reg_c_14_n_0 : STD_LOGIC;
  signal q_reg_c_15_n_0 : STD_LOGIC;
  signal q_reg_c_16_n_0 : STD_LOGIC;
  signal q_reg_c_1_n_0 : STD_LOGIC;
  signal q_reg_c_2_n_0 : STD_LOGIC;
  signal q_reg_c_3_n_0 : STD_LOGIC;
  signal q_reg_c_4_n_0 : STD_LOGIC;
  signal q_reg_c_5_n_0 : STD_LOGIC;
  signal q_reg_c_6_n_0 : STD_LOGIC;
  signal q_reg_c_7_n_0 : STD_LOGIC;
  signal q_reg_c_8_n_0 : STD_LOGIC;
  signal q_reg_c_9_n_0 : STD_LOGIC;
  signal q_reg_c_n_0 : STD_LOGIC;
  signal \q_reg_gate__0_n_0\ : STD_LOGIC;
  signal q_reg_gate_n_0 : STD_LOGIC;
  signal \NLW_q_reg[37]_srl17_gen_inst_q_reg_c_15_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \q_reg[16]_srl15_gen_inst_q_reg_c_13\ : label is "\gen_inst/q_reg ";
  attribute srl_name : string;
  attribute srl_name of \q_reg[16]_srl15_gen_inst_q_reg_c_13\ : label is "\gen_inst/q_reg[16]_srl15_gen_inst_q_reg_c_13 ";
  attribute srl_bus_name of \q_reg[37]_srl17_gen_inst_q_reg_c_15\ : label is "\gen_inst/q_reg ";
  attribute srl_name of \q_reg[37]_srl17_gen_inst_q_reg_c_15\ : label is "\gen_inst/q_reg[37]_srl17_gen_inst_q_reg_c_15 ";
begin
  dout <= \^dout\;
p_0_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => q(18),
      I1 => q(20),
      I2 => \^dout\,
      I3 => q(1),
      O => \p_0_out__0\(0)
    );
\q_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      D => \p_0_out__0\(0),
      PRE => rst_IBUF,
      Q => q(0)
    );
\q_reg[16]_srl15_gen_inst_q_reg_c_13\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => en,
      CLK => clk_IBUF_BUFG,
      D => q(1),
      Q => \q_reg[16]_srl15_gen_inst_q_reg_c_13_n_0\
    );
\q_reg[17]_gen_inst_q_reg_c_14\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      D => \q_reg[16]_srl15_gen_inst_q_reg_c_13_n_0\,
      Q => \q_reg[17]_gen_inst_q_reg_c_14_n_0\,
      R => '0'
    );
\q_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \q_reg_gate__0_n_0\,
      Q => q(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q(18),
      Q => q(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q(0),
      Q => q(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q(19),
      Q => q(20)
    );
\q_reg[37]_srl17_gen_inst_q_reg_c_15\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"10000",
      CE => en,
      CLK => clk_IBUF_BUFG,
      D => q(20),
      Q => \q_reg[37]_srl17_gen_inst_q_reg_c_15_n_0\,
      Q31 => \NLW_q_reg[37]_srl17_gen_inst_q_reg_c_15_Q31_UNCONNECTED\
    );
\q_reg[38]_gen_inst_q_reg_c_16\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      D => \q_reg[37]_srl17_gen_inst_q_reg_c_15_n_0\,
      Q => \q_reg[38]_gen_inst_q_reg_c_16_n_0\,
      R => '0'
    );
\q_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_gate_n_0,
      Q => \^dout\
    );
q_reg_c: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => '1',
      Q => q_reg_c_n_0
    );
q_reg_c_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_n_0,
      Q => q_reg_c_0_n_0
    );
q_reg_c_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_0_n_0,
      Q => q_reg_c_1_n_0
    );
q_reg_c_10: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_9_n_0,
      Q => q_reg_c_10_n_0
    );
q_reg_c_11: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_10_n_0,
      Q => q_reg_c_11_n_0
    );
q_reg_c_12: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_11_n_0,
      Q => q_reg_c_12_n_0
    );
q_reg_c_13: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_12_n_0,
      Q => q_reg_c_13_n_0
    );
q_reg_c_14: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_13_n_0,
      Q => q_reg_c_14_n_0
    );
q_reg_c_15: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_14_n_0,
      Q => q_reg_c_15_n_0
    );
q_reg_c_16: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_15_n_0,
      Q => q_reg_c_16_n_0
    );
q_reg_c_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_1_n_0,
      Q => q_reg_c_2_n_0
    );
q_reg_c_3: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_2_n_0,
      Q => q_reg_c_3_n_0
    );
q_reg_c_4: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_3_n_0,
      Q => q_reg_c_4_n_0
    );
q_reg_c_5: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_4_n_0,
      Q => q_reg_c_5_n_0
    );
q_reg_c_6: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_5_n_0,
      Q => q_reg_c_6_n_0
    );
q_reg_c_7: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_6_n_0,
      Q => q_reg_c_7_n_0
    );
q_reg_c_8: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_7_n_0,
      Q => q_reg_c_8_n_0
    );
q_reg_c_9: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => q_reg_c_8_n_0,
      Q => q_reg_c_9_n_0
    );
q_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q_reg[38]_gen_inst_q_reg_c_16_n_0\,
      I1 => q_reg_c_16_n_0,
      O => q_reg_gate_n_0
    );
\q_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q_reg[17]_gen_inst_q_reg_c_14_n_0\,
      I1 => q_reg_c_14_n_0,
      O => \q_reg_gate__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sa_ext is
  port (
    Q : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dout : in STD_LOGIC;
    en : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end sa_ext;

architecture STRUCTURE of sa_ext is
  signal \^q\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Q(39 downto 0) <= \^q\(39 downto 0);
p_0_out: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \^q\(20),
      I1 => dout,
      I2 => \^q\(39),
      I3 => \^q\(18),
      I4 => \^q\(1),
      O => \p_0_out__0\(0)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \p_0_out__0\(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(9),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(10),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(11),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(12),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(13),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(14),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(15),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(16),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(17),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(18),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(0),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(19),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(20),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(21),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(22),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(23),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(24),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(25),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(26),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(27),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(28),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(1),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(29),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(30),
      Q => \^q\(31)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(31),
      Q => \^q\(32)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(32),
      Q => \^q\(33)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(33),
      Q => \^q\(34)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(34),
      Q => \^q\(35)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(35),
      Q => \^q\(36)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(36),
      Q => \^q\(37)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(37),
      Q => \^q\(38)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(38),
      Q => \^q\(39)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(2),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(3),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(4),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(5),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(6),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(7),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en,
      CLR => rst_IBUF,
      D => \^q\(8),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bist_ext is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    done : out STD_LOGIC;
    signature : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bist_ext : entity is true;
end bist_ext;

architecture STRUCTURE of bist_ext is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal \count[9]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal done_OBUF : STD_LOGIC;
  signal dout : STD_LOGIC;
  signal en : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal rst_IBUF : STD_LOGIC;
  signal s_done_i_1_n_0 : STD_LOGIC;
  signal signature_OBUF : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal start_IBUF : STD_LOGIC;
  signal test_en_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[8]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[9]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_done_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of test_en_i_1 : label is "soft_lutpair2";
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
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(2),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(3),
      O => plusOp(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(2),
      I4 => \count_reg__0\(4),
      O => plusOp(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(2),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(1),
      I4 => \count_reg__0\(4),
      I5 => \count_reg__0\(5),
      O => plusOp(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(5),
      I2 => \count[8]_i_2_n_0\,
      I3 => \count_reg__0\(6),
      O => plusOp(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \count_reg__0\(5),
      I1 => \count_reg__0\(3),
      I2 => \count_reg__0\(6),
      I3 => \count[8]_i_2_n_0\,
      I4 => \count_reg__0\(7),
      O => plusOp(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \count[8]_i_2_n_0\,
      I1 => \count_reg__0\(6),
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(5),
      I4 => \count_reg__0\(7),
      I5 => \count_reg__0\(8),
      O => plusOp(8)
    );
\count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(4),
      O => \count[8]_i_2_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \count[9]_i_3_n_0\,
      I1 => \count[9]_i_4_n_0\,
      I2 => en,
      O => \count[9]_i_1_n_0\
    );
\count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(4),
      I4 => \count[9]_i_3_n_0\,
      I5 => \count_reg__0\(9),
      O => plusOp(9)
    );
\count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \count_reg__0\(7),
      I1 => \count_reg__0\(5),
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(6),
      I4 => \count_reg__0\(8),
      O => \count[9]_i_3_n_0\
    );
\count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(4),
      I2 => \count_reg__0\(9),
      I3 => \count_reg__0\(2),
      I4 => \count_reg__0\(1),
      O => \count[9]_i_4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg__0\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(1),
      Q => \count_reg__0\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(2),
      Q => \count_reg__0\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(3),
      Q => \count_reg__0\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(4),
      Q => \count_reg__0\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(5),
      Q => \count_reg__0\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(6),
      Q => \count_reg__0\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(7),
      Q => \count_reg__0\(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(8),
      Q => \count_reg__0\(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[9]_i_1_n_0\,
      CLR => rst_IBUF,
      D => plusOp(9),
      Q => \count_reg__0\(9)
    );
done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => done_OBUF,
      O => done
    );
gen_inst: entity work.lfsr_ext_gen
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dout => dout,
      en => en,
      rst_IBUF => rst_IBUF
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
s_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => done_OBUF,
      I1 => \count[9]_i_3_n_0\,
      I2 => \count[9]_i_4_n_0\,
      I3 => en,
      O => s_done_i_1_n_0
    );
s_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => s_done_i_1_n_0,
      Q => done_OBUF
    );
sa_inst: entity work.sa_ext
     port map (
      Q(39 downto 0) => signature_OBUF(39 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dout => dout,
      en => en,
      rst_IBUF => rst_IBUF
    );
\signature_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(0),
      O => signature(0)
    );
\signature_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(10),
      O => signature(10)
    );
\signature_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(11),
      O => signature(11)
    );
\signature_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(12),
      O => signature(12)
    );
\signature_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(13),
      O => signature(13)
    );
\signature_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(14),
      O => signature(14)
    );
\signature_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(15),
      O => signature(15)
    );
\signature_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(16),
      O => signature(16)
    );
\signature_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(17),
      O => signature(17)
    );
\signature_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(18),
      O => signature(18)
    );
\signature_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(19),
      O => signature(19)
    );
\signature_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(1),
      O => signature(1)
    );
\signature_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(20),
      O => signature(20)
    );
\signature_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(21),
      O => signature(21)
    );
\signature_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(22),
      O => signature(22)
    );
\signature_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(23),
      O => signature(23)
    );
\signature_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(24),
      O => signature(24)
    );
\signature_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(25),
      O => signature(25)
    );
\signature_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(26),
      O => signature(26)
    );
\signature_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(27),
      O => signature(27)
    );
\signature_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(28),
      O => signature(28)
    );
\signature_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(29),
      O => signature(29)
    );
\signature_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(2),
      O => signature(2)
    );
\signature_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(30),
      O => signature(30)
    );
\signature_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(31),
      O => signature(31)
    );
\signature_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(32),
      O => signature(32)
    );
\signature_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(33),
      O => signature(33)
    );
\signature_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(34),
      O => signature(34)
    );
\signature_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(35),
      O => signature(35)
    );
\signature_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(36),
      O => signature(36)
    );
\signature_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(37),
      O => signature(37)
    );
\signature_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(38),
      O => signature(38)
    );
\signature_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(39),
      O => signature(39)
    );
\signature_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(3),
      O => signature(3)
    );
\signature_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(4),
      O => signature(4)
    );
\signature_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(5),
      O => signature(5)
    );
\signature_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(6),
      O => signature(6)
    );
\signature_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(7),
      O => signature(7)
    );
\signature_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(8),
      O => signature(8)
    );
\signature_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => signature_OBUF(9),
      O => signature(9)
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
test_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4F404"
    )
        port map (
      I0 => done_OBUF,
      I1 => start_IBUF,
      I2 => en,
      I3 => \count[9]_i_4_n_0\,
      I4 => \count[9]_i_3_n_0\,
      O => test_en_i_1_n_0
    );
test_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => test_en_i_1_n_0,
      Q => en
    );
end STRUCTURE;
