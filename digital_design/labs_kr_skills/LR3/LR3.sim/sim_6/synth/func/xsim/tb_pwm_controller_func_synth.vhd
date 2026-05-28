-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Apr  1 20:30:48 2026
-- Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_6/synth/func/xsim/tb_pwm_controller_func_synth.vhd
-- Design      : pwm_controller
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    en : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller : entity is true;
  attribute COUNTER_WIDTH : integer;
  attribute COUNTER_WIDTH of pwm_controller : entity is 8;
end pwm_controller;

architecture STRUCTURE of pwm_controller is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal duty_cycle_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal en_IBUF : STD_LOGIC;
  signal pwm_out_OBUF : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_1_n_1 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_1_n_2 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_1_n_3 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal pwm_out_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal rst_n_IBUF : STD_LOGIC;
  signal NLW_pwm_out_OBUF_inst_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[7]_i_3\ : label is "soft_lutpair0";
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
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => counter(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      O => counter(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      O => counter(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[3]\,
      O => counter(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[4]\,
      O => counter(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \counter_reg_n_0_[2]\,
      I5 => \counter_reg_n_0_[4]\,
      O => counter(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \counter[7]_i_3_n_0\,
      I1 => \counter_reg_n_0_[5]\,
      I2 => \counter_reg_n_0_[6]\,
      O => counter(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C6CC"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => \counter_reg_n_0_[7]\,
      I2 => \counter[7]_i_3_n_0\,
      I3 => \counter_reg_n_0_[5]\,
      O => counter(7)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_IBUF,
      O => \counter[7]_i_2_n_0\
    );
\counter[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[4]\,
      O => \counter[7]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(0),
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(1),
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(2),
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(3),
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(4),
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(5),
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(6),
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_IBUF,
      CLR => \counter[7]_i_2_n_0\,
      D => counter(7),
      Q => \counter_reg_n_0_[7]\
    );
\duty_cycle_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(0),
      O => duty_cycle_IBUF(0)
    );
\duty_cycle_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(1),
      O => duty_cycle_IBUF(1)
    );
\duty_cycle_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(2),
      O => duty_cycle_IBUF(2)
    );
\duty_cycle_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(3),
      O => duty_cycle_IBUF(3)
    );
\duty_cycle_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(4),
      O => duty_cycle_IBUF(4)
    );
\duty_cycle_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(5),
      O => duty_cycle_IBUF(5)
    );
\duty_cycle_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(6),
      O => duty_cycle_IBUF(6)
    );
\duty_cycle_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => duty_cycle(7),
      O => duty_cycle_IBUF(7)
    );
en_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => en,
      O => en_IBUF
    );
pwm_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pwm_out_OBUF,
      O => pwm_out
    );
pwm_out_OBUF_inst_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_out_OBUF,
      CO(2) => pwm_out_OBUF_inst_i_1_n_1,
      CO(1) => pwm_out_OBUF_inst_i_1_n_2,
      CO(0) => pwm_out_OBUF_inst_i_1_n_3,
      CYINIT => '0',
      DI(3) => pwm_out_OBUF_inst_i_2_n_0,
      DI(2) => pwm_out_OBUF_inst_i_3_n_0,
      DI(1) => pwm_out_OBUF_inst_i_4_n_0,
      DI(0) => pwm_out_OBUF_inst_i_5_n_0,
      O(3 downto 0) => NLW_pwm_out_OBUF_inst_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_out_OBUF_inst_i_6_n_0,
      S(2) => pwm_out_OBUF_inst_i_7_n_0,
      S(1) => pwm_out_OBUF_inst_i_8_n_0,
      S(0) => pwm_out_OBUF_inst_i_9_n_0
    );
pwm_out_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => duty_cycle_IBUF(7),
      I1 => \counter_reg_n_0_[7]\,
      I2 => duty_cycle_IBUF(6),
      I3 => \counter_reg_n_0_[6]\,
      O => pwm_out_OBUF_inst_i_2_n_0
    );
pwm_out_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle_IBUF(4),
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[5]\,
      I3 => duty_cycle_IBUF(5),
      O => pwm_out_OBUF_inst_i_3_n_0
    );
pwm_out_OBUF_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle_IBUF(2),
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => duty_cycle_IBUF(3),
      O => pwm_out_OBUF_inst_i_4_n_0
    );
pwm_out_OBUF_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle_IBUF(0),
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => duty_cycle_IBUF(1),
      O => pwm_out_OBUF_inst_i_5_n_0
    );
pwm_out_OBUF_inst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle_IBUF(6),
      I1 => \counter_reg_n_0_[6]\,
      I2 => \counter_reg_n_0_[7]\,
      I3 => duty_cycle_IBUF(7),
      O => pwm_out_OBUF_inst_i_6_n_0
    );
pwm_out_OBUF_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => duty_cycle_IBUF(4),
      I2 => \counter_reg_n_0_[5]\,
      I3 => duty_cycle_IBUF(5),
      O => pwm_out_OBUF_inst_i_7_n_0
    );
pwm_out_OBUF_inst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => duty_cycle_IBUF(2),
      I2 => \counter_reg_n_0_[3]\,
      I3 => duty_cycle_IBUF(3),
      O => pwm_out_OBUF_inst_i_8_n_0
    );
pwm_out_OBUF_inst_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => duty_cycle_IBUF(1),
      I3 => duty_cycle_IBUF(0),
      O => pwm_out_OBUF_inst_i_9_n_0
    );
rst_n_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_n,
      O => rst_n_IBUF
    );
end STRUCTURE;
