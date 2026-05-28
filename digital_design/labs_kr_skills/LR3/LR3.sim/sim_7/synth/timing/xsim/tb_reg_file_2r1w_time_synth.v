// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Apr  1 20:50:59 2026
// Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_7/synth/timing/xsim/tb_reg_file_2r1w_time_synth.v
// Design      : reg_file_2r1w
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ADDR_WIDTH = "5" *) (* DATA_WIDTH = "16" *) 
(* NotValidForBitStream *)
module reg_file_2r1w
   (clk,
    rst_n,
    w_en,
    w_addr,
    w_data,
    r_en_1,
    r_addr_1,
    r_data_1,
    r_en_2,
    r_addr_2,
    r_data_2);
  input clk;
  input rst_n;
  input w_en;
  input [4:0]w_addr;
  input [15:0]w_data;
  input r_en_1;
  input [4:0]r_addr_1;
  output [15:0]r_data_1;
  input r_en_2;
  input [4:0]r_addr_2;
  output [15:0]r_data_2;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]r_addr_1;
  wire [4:0]r_addr_1_IBUF;
  wire [4:0]r_addr_2;
  wire [4:0]r_addr_2_IBUF;
  wire [15:0]r_data_1;
  wire r_data_12;
  wire [15:0]r_data_1_OBUF;
  wire \r_data_1_OBUF[0]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[0]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[10]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[11]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[12]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[13]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[14]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_15_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_16_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_17_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_3_n_3 ;
  wire \r_data_1_OBUF[15]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[15]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[1]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[2]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[3]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[4]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[5]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[6]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[7]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[8]_inst_i_9_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_10_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_11_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_12_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_13_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_14_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_3_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_4_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_5_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_6_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_7_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_8_n_0 ;
  wire \r_data_1_OBUF[9]_inst_i_9_n_0 ;
  wire [15:0]r_data_2;
  wire r_data_22;
  wire [15:0]r_data_2_OBUF;
  wire \r_data_2_OBUF[0]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[0]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[10]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[11]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[12]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[13]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[14]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_15_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_16_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_17_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_3_n_3 ;
  wire \r_data_2_OBUF[15]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[15]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[1]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[2]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[3]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[4]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[5]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[6]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[7]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[8]_inst_i_9_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_10_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_11_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_12_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_13_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_14_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_2_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_3_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_4_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_5_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_6_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_7_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_8_n_0 ;
  wire \r_data_2_OBUF[9]_inst_i_9_n_0 ;
  wire r_en_1;
  wire r_en_1_IBUF;
  wire r_en_2;
  wire r_en_2_IBUF;
  wire [15:0]\registers[0] ;
  wire \registers[0][10]_i_1_n_0 ;
  wire \registers[0][14]_i_1_n_0 ;
  wire \registers[0][15]_i_1_n_0 ;
  wire \registers[0][15]_i_2_n_0 ;
  wire \registers[0][6]_i_1_n_0 ;
  wire \registers[10] ;
  wire \registers[11] ;
  wire \registers[12] ;
  wire \registers[13] ;
  wire \registers[14] ;
  wire \registers[15] ;
  wire \registers[16] ;
  wire \registers[17] ;
  wire \registers[18] ;
  wire \registers[19] ;
  wire \registers[1] ;
  wire \registers[20] ;
  wire \registers[21] ;
  wire \registers[22] ;
  wire \registers[23] ;
  wire \registers[24] ;
  wire \registers[25] ;
  wire \registers[26] ;
  wire \registers[27] ;
  wire \registers[28] ;
  wire \registers[29] ;
  wire \registers[2] ;
  wire \registers[30] ;
  wire \registers[31] ;
  wire \registers[3] ;
  wire \registers[4] ;
  wire \registers[5] ;
  wire \registers[6] ;
  wire \registers[7] ;
  wire \registers[8] ;
  wire \registers[9] ;
  wire [15:0]\registers_reg[0]__0 ;
  wire [15:0]\registers_reg[10]__0 ;
  wire [15:0]\registers_reg[11]__0 ;
  wire [15:0]\registers_reg[12]__0 ;
  wire [15:0]\registers_reg[13]__0 ;
  wire [15:0]\registers_reg[14]__0 ;
  wire [15:0]\registers_reg[15]__0 ;
  wire [15:0]\registers_reg[16]__0 ;
  wire [15:0]\registers_reg[17]__0 ;
  wire [15:0]\registers_reg[18]__0 ;
  wire [15:0]\registers_reg[19]__0 ;
  wire [15:0]\registers_reg[1]__0 ;
  wire [15:0]\registers_reg[20]__0 ;
  wire [15:0]\registers_reg[21]__0 ;
  wire [15:0]\registers_reg[22]__0 ;
  wire [15:0]\registers_reg[23]__0 ;
  wire [15:0]\registers_reg[24]__0 ;
  wire [15:0]\registers_reg[25]__0 ;
  wire [15:0]\registers_reg[26]__0 ;
  wire [15:0]\registers_reg[27]__0 ;
  wire [15:0]\registers_reg[28]__0 ;
  wire [15:0]\registers_reg[29]__0 ;
  wire [15:0]\registers_reg[2]__0 ;
  wire [15:0]\registers_reg[30]__0 ;
  wire [15:0]\registers_reg[31]__0 ;
  wire [15:0]\registers_reg[3]__0 ;
  wire [15:0]\registers_reg[4]__0 ;
  wire [15:0]\registers_reg[5]__0 ;
  wire [15:0]\registers_reg[6]__0 ;
  wire [15:0]\registers_reg[7]__0 ;
  wire [15:0]\registers_reg[8]__0 ;
  wire [15:0]\registers_reg[9]__0 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire [4:0]w_addr;
  wire [4:0]w_addr_IBUF;
  wire [15:0]w_data;
  wire [15:0]w_data_IBUF;
  wire w_en;
  wire w_en_IBUF;
  wire [3:2]\NLW_r_data_1_OBUF[15]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_data_1_OBUF[15]_inst_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_r_data_2_OBUF[15]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_data_2_OBUF[15]_inst_i_3_O_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_reg_file_2r1w_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \r_addr_1_IBUF[0]_inst 
       (.I(r_addr_1[0]),
        .O(r_addr_1_IBUF[0]));
  IBUF \r_addr_1_IBUF[1]_inst 
       (.I(r_addr_1[1]),
        .O(r_addr_1_IBUF[1]));
  IBUF \r_addr_1_IBUF[2]_inst 
       (.I(r_addr_1[2]),
        .O(r_addr_1_IBUF[2]));
  IBUF \r_addr_1_IBUF[3]_inst 
       (.I(r_addr_1[3]),
        .O(r_addr_1_IBUF[3]));
  IBUF \r_addr_1_IBUF[4]_inst 
       (.I(r_addr_1[4]),
        .O(r_addr_1_IBUF[4]));
  IBUF \r_addr_2_IBUF[0]_inst 
       (.I(r_addr_2[0]),
        .O(r_addr_2_IBUF[0]));
  IBUF \r_addr_2_IBUF[1]_inst 
       (.I(r_addr_2[1]),
        .O(r_addr_2_IBUF[1]));
  IBUF \r_addr_2_IBUF[2]_inst 
       (.I(r_addr_2[2]),
        .O(r_addr_2_IBUF[2]));
  IBUF \r_addr_2_IBUF[3]_inst 
       (.I(r_addr_2[3]),
        .O(r_addr_2_IBUF[3]));
  IBUF \r_addr_2_IBUF[4]_inst 
       (.I(r_addr_2[4]),
        .O(r_addr_2_IBUF[4]));
  OBUF \r_data_1_OBUF[0]_inst 
       (.I(r_data_1_OBUF[0]),
        .O(r_data_1[0]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[0]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [0]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[0]),
        .O(r_data_1_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_10 
       (.I0(\registers_reg[23]__0 [0]),
        .I1(\registers_reg[22]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_11 
       (.I0(\registers_reg[11]__0 [0]),
        .I1(\registers_reg[10]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_12 
       (.I0(\registers_reg[15]__0 [0]),
        .I1(\registers_reg[14]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_13 
       (.I0(\registers_reg[3]__0 [0]),
        .I1(\registers_reg[2]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_14 
       (.I0(\registers_reg[7]__0 [0]),
        .I1(\registers_reg[6]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_2 
       (.I0(\r_data_1_OBUF[0]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[0]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[0]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[0]_inst_i_6_n_0 ),
        .O(\registers[0] [0]));
  MUXF7 \r_data_1_OBUF[0]_inst_i_3 
       (.I0(\r_data_1_OBUF[0]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[0]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[0]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[0]_inst_i_4 
       (.I0(\r_data_1_OBUF[0]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[0]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[0]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[0]_inst_i_5 
       (.I0(\r_data_1_OBUF[0]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[0]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[0]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[0]_inst_i_6 
       (.I0(\r_data_1_OBUF[0]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[0]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[0]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_7 
       (.I0(\registers_reg[27]__0 [0]),
        .I1(\registers_reg[26]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_8 
       (.I0(\registers_reg[31]__0 [0]),
        .I1(\registers_reg[30]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[0]_inst_i_9 
       (.I0(\registers_reg[19]__0 [0]),
        .I1(\registers_reg[18]__0 [0]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [0]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [0]),
        .O(\r_data_1_OBUF[0]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[10]_inst 
       (.I(r_data_1_OBUF[10]),
        .O(r_data_1[10]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[10]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [10]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[10]),
        .O(r_data_1_OBUF[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_10 
       (.I0(\registers_reg[23]__0 [10]),
        .I1(\registers_reg[22]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_11 
       (.I0(\registers_reg[11]__0 [10]),
        .I1(\registers_reg[10]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_12 
       (.I0(\registers_reg[15]__0 [10]),
        .I1(\registers_reg[14]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_13 
       (.I0(\registers_reg[3]__0 [10]),
        .I1(\registers_reg[2]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_14 
       (.I0(\registers_reg[7]__0 [10]),
        .I1(\registers_reg[6]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_2 
       (.I0(\r_data_1_OBUF[10]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[10]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[10]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[10]_inst_i_6_n_0 ),
        .O(\registers[0] [10]));
  MUXF7 \r_data_1_OBUF[10]_inst_i_3 
       (.I0(\r_data_1_OBUF[10]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[10]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[10]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[10]_inst_i_4 
       (.I0(\r_data_1_OBUF[10]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[10]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[10]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[10]_inst_i_5 
       (.I0(\r_data_1_OBUF[10]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[10]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[10]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[10]_inst_i_6 
       (.I0(\r_data_1_OBUF[10]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[10]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[10]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_7 
       (.I0(\registers_reg[27]__0 [10]),
        .I1(\registers_reg[26]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_8 
       (.I0(\registers_reg[31]__0 [10]),
        .I1(\registers_reg[30]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[10]_inst_i_9 
       (.I0(\registers_reg[19]__0 [10]),
        .I1(\registers_reg[18]__0 [10]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [10]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [10]),
        .O(\r_data_1_OBUF[10]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[11]_inst 
       (.I(r_data_1_OBUF[11]),
        .O(r_data_1[11]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[11]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [11]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[11]),
        .O(r_data_1_OBUF[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_10 
       (.I0(\registers_reg[23]__0 [11]),
        .I1(\registers_reg[22]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_11 
       (.I0(\registers_reg[11]__0 [11]),
        .I1(\registers_reg[10]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_12 
       (.I0(\registers_reg[15]__0 [11]),
        .I1(\registers_reg[14]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_13 
       (.I0(\registers_reg[3]__0 [11]),
        .I1(\registers_reg[2]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_14 
       (.I0(\registers_reg[7]__0 [11]),
        .I1(\registers_reg[6]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_2 
       (.I0(\r_data_1_OBUF[11]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[11]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[11]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[11]_inst_i_6_n_0 ),
        .O(\registers[0] [11]));
  MUXF7 \r_data_1_OBUF[11]_inst_i_3 
       (.I0(\r_data_1_OBUF[11]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[11]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[11]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[11]_inst_i_4 
       (.I0(\r_data_1_OBUF[11]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[11]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[11]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[11]_inst_i_5 
       (.I0(\r_data_1_OBUF[11]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[11]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[11]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[11]_inst_i_6 
       (.I0(\r_data_1_OBUF[11]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[11]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[11]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_7 
       (.I0(\registers_reg[27]__0 [11]),
        .I1(\registers_reg[26]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_8 
       (.I0(\registers_reg[31]__0 [11]),
        .I1(\registers_reg[30]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[11]_inst_i_9 
       (.I0(\registers_reg[19]__0 [11]),
        .I1(\registers_reg[18]__0 [11]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [11]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [11]),
        .O(\r_data_1_OBUF[11]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[12]_inst 
       (.I(r_data_1_OBUF[12]),
        .O(r_data_1[12]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[12]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [12]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[12]),
        .O(r_data_1_OBUF[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_10 
       (.I0(\registers_reg[23]__0 [12]),
        .I1(\registers_reg[22]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_11 
       (.I0(\registers_reg[11]__0 [12]),
        .I1(\registers_reg[10]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_12 
       (.I0(\registers_reg[15]__0 [12]),
        .I1(\registers_reg[14]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_13 
       (.I0(\registers_reg[3]__0 [12]),
        .I1(\registers_reg[2]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_14 
       (.I0(\registers_reg[7]__0 [12]),
        .I1(\registers_reg[6]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_2 
       (.I0(\r_data_1_OBUF[12]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[12]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[12]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[12]_inst_i_6_n_0 ),
        .O(\registers[0] [12]));
  MUXF7 \r_data_1_OBUF[12]_inst_i_3 
       (.I0(\r_data_1_OBUF[12]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[12]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[12]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[12]_inst_i_4 
       (.I0(\r_data_1_OBUF[12]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[12]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[12]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[12]_inst_i_5 
       (.I0(\r_data_1_OBUF[12]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[12]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[12]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[12]_inst_i_6 
       (.I0(\r_data_1_OBUF[12]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[12]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[12]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_7 
       (.I0(\registers_reg[27]__0 [12]),
        .I1(\registers_reg[26]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_8 
       (.I0(\registers_reg[31]__0 [12]),
        .I1(\registers_reg[30]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[12]_inst_i_9 
       (.I0(\registers_reg[19]__0 [12]),
        .I1(\registers_reg[18]__0 [12]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [12]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [12]),
        .O(\r_data_1_OBUF[12]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[13]_inst 
       (.I(r_data_1_OBUF[13]),
        .O(r_data_1[13]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[13]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [13]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[13]),
        .O(r_data_1_OBUF[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_10 
       (.I0(\registers_reg[23]__0 [13]),
        .I1(\registers_reg[22]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_11 
       (.I0(\registers_reg[11]__0 [13]),
        .I1(\registers_reg[10]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_12 
       (.I0(\registers_reg[15]__0 [13]),
        .I1(\registers_reg[14]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_13 
       (.I0(\registers_reg[3]__0 [13]),
        .I1(\registers_reg[2]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_14 
       (.I0(\registers_reg[7]__0 [13]),
        .I1(\registers_reg[6]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_2 
       (.I0(\r_data_1_OBUF[13]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[13]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[13]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[13]_inst_i_6_n_0 ),
        .O(\registers[0] [13]));
  MUXF7 \r_data_1_OBUF[13]_inst_i_3 
       (.I0(\r_data_1_OBUF[13]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[13]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[13]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[13]_inst_i_4 
       (.I0(\r_data_1_OBUF[13]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[13]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[13]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[13]_inst_i_5 
       (.I0(\r_data_1_OBUF[13]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[13]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[13]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[13]_inst_i_6 
       (.I0(\r_data_1_OBUF[13]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[13]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[13]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_7 
       (.I0(\registers_reg[27]__0 [13]),
        .I1(\registers_reg[26]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_8 
       (.I0(\registers_reg[31]__0 [13]),
        .I1(\registers_reg[30]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[13]_inst_i_9 
       (.I0(\registers_reg[19]__0 [13]),
        .I1(\registers_reg[18]__0 [13]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [13]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [13]),
        .O(\r_data_1_OBUF[13]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[14]_inst 
       (.I(r_data_1_OBUF[14]),
        .O(r_data_1[14]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[14]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [14]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[14]),
        .O(r_data_1_OBUF[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_10 
       (.I0(\registers_reg[23]__0 [14]),
        .I1(\registers_reg[22]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_11 
       (.I0(\registers_reg[11]__0 [14]),
        .I1(\registers_reg[10]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_12 
       (.I0(\registers_reg[15]__0 [14]),
        .I1(\registers_reg[14]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_13 
       (.I0(\registers_reg[3]__0 [14]),
        .I1(\registers_reg[2]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_14 
       (.I0(\registers_reg[7]__0 [14]),
        .I1(\registers_reg[6]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_2 
       (.I0(\r_data_1_OBUF[14]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[14]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[14]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[14]_inst_i_6_n_0 ),
        .O(\registers[0] [14]));
  MUXF7 \r_data_1_OBUF[14]_inst_i_3 
       (.I0(\r_data_1_OBUF[14]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[14]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[14]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[14]_inst_i_4 
       (.I0(\r_data_1_OBUF[14]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[14]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[14]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[14]_inst_i_5 
       (.I0(\r_data_1_OBUF[14]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[14]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[14]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[14]_inst_i_6 
       (.I0(\r_data_1_OBUF[14]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[14]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[14]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_7 
       (.I0(\registers_reg[27]__0 [14]),
        .I1(\registers_reg[26]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_8 
       (.I0(\registers_reg[31]__0 [14]),
        .I1(\registers_reg[30]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[14]_inst_i_9 
       (.I0(\registers_reg[19]__0 [14]),
        .I1(\registers_reg[18]__0 [14]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [14]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [14]),
        .O(\r_data_1_OBUF[14]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[15]_inst 
       (.I(r_data_1_OBUF[15]),
        .O(r_data_1[15]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[15]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [15]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[15]),
        .O(r_data_1_OBUF[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_10 
       (.I0(\registers_reg[27]__0 [15]),
        .I1(\registers_reg[26]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_11 
       (.I0(\registers_reg[31]__0 [15]),
        .I1(\registers_reg[30]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_12 
       (.I0(\registers_reg[19]__0 [15]),
        .I1(\registers_reg[18]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_13 
       (.I0(\registers_reg[23]__0 [15]),
        .I1(\registers_reg[22]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_14 
       (.I0(\registers_reg[11]__0 [15]),
        .I1(\registers_reg[10]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_15 
       (.I0(\registers_reg[15]__0 [15]),
        .I1(\registers_reg[14]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_16 
       (.I0(\registers_reg[3]__0 [15]),
        .I1(\registers_reg[2]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_17 
       (.I0(\registers_reg[7]__0 [15]),
        .I1(\registers_reg[6]__0 [15]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [15]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [15]),
        .O(\r_data_1_OBUF[15]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[15]_inst_i_2 
       (.I0(\r_data_1_OBUF[15]_inst_i_4_n_0 ),
        .I1(\r_data_1_OBUF[15]_inst_i_5_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[15]_inst_i_6_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[15]_inst_i_7_n_0 ),
        .O(\registers[0] [15]));
  CARRY4 \r_data_1_OBUF[15]_inst_i_3 
       (.CI(1'b0),
        .CO({\NLW_r_data_1_OBUF[15]_inst_i_3_CO_UNCONNECTED [3:2],r_data_12,\r_data_1_OBUF[15]_inst_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r_data_1_OBUF[15]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\r_data_1_OBUF[15]_inst_i_8_n_0 ,\r_data_1_OBUF[15]_inst_i_9_n_0 }));
  MUXF7 \r_data_1_OBUF[15]_inst_i_4 
       (.I0(\r_data_1_OBUF[15]_inst_i_10_n_0 ),
        .I1(\r_data_1_OBUF[15]_inst_i_11_n_0 ),
        .O(\r_data_1_OBUF[15]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[15]_inst_i_5 
       (.I0(\r_data_1_OBUF[15]_inst_i_12_n_0 ),
        .I1(\r_data_1_OBUF[15]_inst_i_13_n_0 ),
        .O(\r_data_1_OBUF[15]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[15]_inst_i_6 
       (.I0(\r_data_1_OBUF[15]_inst_i_14_n_0 ),
        .I1(\r_data_1_OBUF[15]_inst_i_15_n_0 ),
        .O(\r_data_1_OBUF[15]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[15]_inst_i_7 
       (.I0(\r_data_1_OBUF[15]_inst_i_16_n_0 ),
        .I1(\r_data_1_OBUF[15]_inst_i_17_n_0 ),
        .O(\r_data_1_OBUF[15]_inst_i_7_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \r_data_1_OBUF[15]_inst_i_8 
       (.I0(r_addr_1_IBUF[3]),
        .I1(w_addr_IBUF[3]),
        .I2(r_addr_1_IBUF[4]),
        .I3(w_addr_IBUF[4]),
        .O(\r_data_1_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_data_1_OBUF[15]_inst_i_9 
       (.I0(r_addr_1_IBUF[0]),
        .I1(w_addr_IBUF[0]),
        .I2(w_addr_IBUF[2]),
        .I3(r_addr_1_IBUF[2]),
        .I4(w_addr_IBUF[1]),
        .I5(r_addr_1_IBUF[1]),
        .O(\r_data_1_OBUF[15]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[1]_inst 
       (.I(r_data_1_OBUF[1]),
        .O(r_data_1[1]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[1]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [1]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[1]),
        .O(r_data_1_OBUF[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_10 
       (.I0(\registers_reg[23]__0 [1]),
        .I1(\registers_reg[22]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_11 
       (.I0(\registers_reg[11]__0 [1]),
        .I1(\registers_reg[10]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_12 
       (.I0(\registers_reg[15]__0 [1]),
        .I1(\registers_reg[14]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_13 
       (.I0(\registers_reg[3]__0 [1]),
        .I1(\registers_reg[2]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_14 
       (.I0(\registers_reg[7]__0 [1]),
        .I1(\registers_reg[6]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_2 
       (.I0(\r_data_1_OBUF[1]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[1]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[1]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[1]_inst_i_6_n_0 ),
        .O(\registers[0] [1]));
  MUXF7 \r_data_1_OBUF[1]_inst_i_3 
       (.I0(\r_data_1_OBUF[1]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[1]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[1]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[1]_inst_i_4 
       (.I0(\r_data_1_OBUF[1]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[1]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[1]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[1]_inst_i_5 
       (.I0(\r_data_1_OBUF[1]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[1]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[1]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[1]_inst_i_6 
       (.I0(\r_data_1_OBUF[1]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[1]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[1]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_7 
       (.I0(\registers_reg[27]__0 [1]),
        .I1(\registers_reg[26]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_8 
       (.I0(\registers_reg[31]__0 [1]),
        .I1(\registers_reg[30]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[1]_inst_i_9 
       (.I0(\registers_reg[19]__0 [1]),
        .I1(\registers_reg[18]__0 [1]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [1]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [1]),
        .O(\r_data_1_OBUF[1]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[2]_inst 
       (.I(r_data_1_OBUF[2]),
        .O(r_data_1[2]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[2]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [2]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[2]),
        .O(r_data_1_OBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_10 
       (.I0(\registers_reg[23]__0 [2]),
        .I1(\registers_reg[22]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_11 
       (.I0(\registers_reg[11]__0 [2]),
        .I1(\registers_reg[10]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_12 
       (.I0(\registers_reg[15]__0 [2]),
        .I1(\registers_reg[14]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_13 
       (.I0(\registers_reg[3]__0 [2]),
        .I1(\registers_reg[2]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_14 
       (.I0(\registers_reg[7]__0 [2]),
        .I1(\registers_reg[6]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_2 
       (.I0(\r_data_1_OBUF[2]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[2]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[2]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[2]_inst_i_6_n_0 ),
        .O(\registers[0] [2]));
  MUXF7 \r_data_1_OBUF[2]_inst_i_3 
       (.I0(\r_data_1_OBUF[2]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[2]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[2]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[2]_inst_i_4 
       (.I0(\r_data_1_OBUF[2]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[2]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[2]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[2]_inst_i_5 
       (.I0(\r_data_1_OBUF[2]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[2]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[2]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[2]_inst_i_6 
       (.I0(\r_data_1_OBUF[2]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[2]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[2]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_7 
       (.I0(\registers_reg[27]__0 [2]),
        .I1(\registers_reg[26]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_8 
       (.I0(\registers_reg[31]__0 [2]),
        .I1(\registers_reg[30]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[2]_inst_i_9 
       (.I0(\registers_reg[19]__0 [2]),
        .I1(\registers_reg[18]__0 [2]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [2]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [2]),
        .O(\r_data_1_OBUF[2]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[3]_inst 
       (.I(r_data_1_OBUF[3]),
        .O(r_data_1[3]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[3]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [3]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[3]),
        .O(r_data_1_OBUF[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_10 
       (.I0(\registers_reg[23]__0 [3]),
        .I1(\registers_reg[22]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_11 
       (.I0(\registers_reg[11]__0 [3]),
        .I1(\registers_reg[10]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_12 
       (.I0(\registers_reg[15]__0 [3]),
        .I1(\registers_reg[14]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_13 
       (.I0(\registers_reg[3]__0 [3]),
        .I1(\registers_reg[2]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_14 
       (.I0(\registers_reg[7]__0 [3]),
        .I1(\registers_reg[6]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_2 
       (.I0(\r_data_1_OBUF[3]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[3]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[3]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[3]_inst_i_6_n_0 ),
        .O(\registers[0] [3]));
  MUXF7 \r_data_1_OBUF[3]_inst_i_3 
       (.I0(\r_data_1_OBUF[3]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[3]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[3]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[3]_inst_i_4 
       (.I0(\r_data_1_OBUF[3]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[3]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[3]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[3]_inst_i_5 
       (.I0(\r_data_1_OBUF[3]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[3]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[3]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[3]_inst_i_6 
       (.I0(\r_data_1_OBUF[3]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[3]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[3]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_7 
       (.I0(\registers_reg[27]__0 [3]),
        .I1(\registers_reg[26]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_8 
       (.I0(\registers_reg[31]__0 [3]),
        .I1(\registers_reg[30]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[3]_inst_i_9 
       (.I0(\registers_reg[19]__0 [3]),
        .I1(\registers_reg[18]__0 [3]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [3]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [3]),
        .O(\r_data_1_OBUF[3]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[4]_inst 
       (.I(r_data_1_OBUF[4]),
        .O(r_data_1[4]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[4]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [4]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[4]),
        .O(r_data_1_OBUF[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_10 
       (.I0(\registers_reg[23]__0 [4]),
        .I1(\registers_reg[22]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_11 
       (.I0(\registers_reg[11]__0 [4]),
        .I1(\registers_reg[10]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_12 
       (.I0(\registers_reg[15]__0 [4]),
        .I1(\registers_reg[14]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_13 
       (.I0(\registers_reg[3]__0 [4]),
        .I1(\registers_reg[2]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_14 
       (.I0(\registers_reg[7]__0 [4]),
        .I1(\registers_reg[6]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_2 
       (.I0(\r_data_1_OBUF[4]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[4]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[4]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[4]_inst_i_6_n_0 ),
        .O(\registers[0] [4]));
  MUXF7 \r_data_1_OBUF[4]_inst_i_3 
       (.I0(\r_data_1_OBUF[4]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[4]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[4]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[4]_inst_i_4 
       (.I0(\r_data_1_OBUF[4]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[4]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[4]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[4]_inst_i_5 
       (.I0(\r_data_1_OBUF[4]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[4]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[4]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[4]_inst_i_6 
       (.I0(\r_data_1_OBUF[4]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[4]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[4]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_7 
       (.I0(\registers_reg[27]__0 [4]),
        .I1(\registers_reg[26]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_8 
       (.I0(\registers_reg[31]__0 [4]),
        .I1(\registers_reg[30]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[4]_inst_i_9 
       (.I0(\registers_reg[19]__0 [4]),
        .I1(\registers_reg[18]__0 [4]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [4]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [4]),
        .O(\r_data_1_OBUF[4]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[5]_inst 
       (.I(r_data_1_OBUF[5]),
        .O(r_data_1[5]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[5]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [5]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[5]),
        .O(r_data_1_OBUF[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_10 
       (.I0(\registers_reg[23]__0 [5]),
        .I1(\registers_reg[22]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_11 
       (.I0(\registers_reg[11]__0 [5]),
        .I1(\registers_reg[10]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_12 
       (.I0(\registers_reg[15]__0 [5]),
        .I1(\registers_reg[14]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_13 
       (.I0(\registers_reg[3]__0 [5]),
        .I1(\registers_reg[2]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_14 
       (.I0(\registers_reg[7]__0 [5]),
        .I1(\registers_reg[6]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_2 
       (.I0(\r_data_1_OBUF[5]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[5]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[5]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[5]_inst_i_6_n_0 ),
        .O(\registers[0] [5]));
  MUXF7 \r_data_1_OBUF[5]_inst_i_3 
       (.I0(\r_data_1_OBUF[5]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[5]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[5]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[5]_inst_i_4 
       (.I0(\r_data_1_OBUF[5]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[5]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[5]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[5]_inst_i_5 
       (.I0(\r_data_1_OBUF[5]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[5]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[5]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[5]_inst_i_6 
       (.I0(\r_data_1_OBUF[5]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[5]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[5]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_7 
       (.I0(\registers_reg[27]__0 [5]),
        .I1(\registers_reg[26]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_8 
       (.I0(\registers_reg[31]__0 [5]),
        .I1(\registers_reg[30]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[5]_inst_i_9 
       (.I0(\registers_reg[19]__0 [5]),
        .I1(\registers_reg[18]__0 [5]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [5]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [5]),
        .O(\r_data_1_OBUF[5]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[6]_inst 
       (.I(r_data_1_OBUF[6]),
        .O(r_data_1[6]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[6]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [6]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[6]),
        .O(r_data_1_OBUF[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_10 
       (.I0(\registers_reg[23]__0 [6]),
        .I1(\registers_reg[22]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_11 
       (.I0(\registers_reg[11]__0 [6]),
        .I1(\registers_reg[10]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_12 
       (.I0(\registers_reg[15]__0 [6]),
        .I1(\registers_reg[14]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_13 
       (.I0(\registers_reg[3]__0 [6]),
        .I1(\registers_reg[2]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_14 
       (.I0(\registers_reg[7]__0 [6]),
        .I1(\registers_reg[6]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_2 
       (.I0(\r_data_1_OBUF[6]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[6]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[6]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[6]_inst_i_6_n_0 ),
        .O(\registers[0] [6]));
  MUXF7 \r_data_1_OBUF[6]_inst_i_3 
       (.I0(\r_data_1_OBUF[6]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[6]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[6]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[6]_inst_i_4 
       (.I0(\r_data_1_OBUF[6]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[6]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[6]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[6]_inst_i_5 
       (.I0(\r_data_1_OBUF[6]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[6]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[6]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[6]_inst_i_6 
       (.I0(\r_data_1_OBUF[6]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[6]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[6]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_7 
       (.I0(\registers_reg[27]__0 [6]),
        .I1(\registers_reg[26]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_8 
       (.I0(\registers_reg[31]__0 [6]),
        .I1(\registers_reg[30]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[6]_inst_i_9 
       (.I0(\registers_reg[19]__0 [6]),
        .I1(\registers_reg[18]__0 [6]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [6]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [6]),
        .O(\r_data_1_OBUF[6]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[7]_inst 
       (.I(r_data_1_OBUF[7]),
        .O(r_data_1[7]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[7]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [7]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[7]),
        .O(r_data_1_OBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_10 
       (.I0(\registers_reg[23]__0 [7]),
        .I1(\registers_reg[22]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_11 
       (.I0(\registers_reg[11]__0 [7]),
        .I1(\registers_reg[10]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_12 
       (.I0(\registers_reg[15]__0 [7]),
        .I1(\registers_reg[14]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_13 
       (.I0(\registers_reg[3]__0 [7]),
        .I1(\registers_reg[2]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_14 
       (.I0(\registers_reg[7]__0 [7]),
        .I1(\registers_reg[6]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_2 
       (.I0(\r_data_1_OBUF[7]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[7]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[7]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[7]_inst_i_6_n_0 ),
        .O(\registers[0] [7]));
  MUXF7 \r_data_1_OBUF[7]_inst_i_3 
       (.I0(\r_data_1_OBUF[7]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[7]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[7]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[7]_inst_i_4 
       (.I0(\r_data_1_OBUF[7]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[7]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[7]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[7]_inst_i_5 
       (.I0(\r_data_1_OBUF[7]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[7]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[7]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[7]_inst_i_6 
       (.I0(\r_data_1_OBUF[7]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[7]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[7]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_7 
       (.I0(\registers_reg[27]__0 [7]),
        .I1(\registers_reg[26]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_8 
       (.I0(\registers_reg[31]__0 [7]),
        .I1(\registers_reg[30]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[7]_inst_i_9 
       (.I0(\registers_reg[19]__0 [7]),
        .I1(\registers_reg[18]__0 [7]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [7]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [7]),
        .O(\r_data_1_OBUF[7]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[8]_inst 
       (.I(r_data_1_OBUF[8]),
        .O(r_data_1[8]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[8]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [8]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[8]),
        .O(r_data_1_OBUF[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_10 
       (.I0(\registers_reg[23]__0 [8]),
        .I1(\registers_reg[22]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_11 
       (.I0(\registers_reg[11]__0 [8]),
        .I1(\registers_reg[10]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_12 
       (.I0(\registers_reg[15]__0 [8]),
        .I1(\registers_reg[14]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_13 
       (.I0(\registers_reg[3]__0 [8]),
        .I1(\registers_reg[2]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_14 
       (.I0(\registers_reg[7]__0 [8]),
        .I1(\registers_reg[6]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_2 
       (.I0(\r_data_1_OBUF[8]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[8]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[8]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[8]_inst_i_6_n_0 ),
        .O(\registers[0] [8]));
  MUXF7 \r_data_1_OBUF[8]_inst_i_3 
       (.I0(\r_data_1_OBUF[8]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[8]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[8]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[8]_inst_i_4 
       (.I0(\r_data_1_OBUF[8]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[8]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[8]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[8]_inst_i_5 
       (.I0(\r_data_1_OBUF[8]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[8]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[8]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[8]_inst_i_6 
       (.I0(\r_data_1_OBUF[8]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[8]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[8]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_7 
       (.I0(\registers_reg[27]__0 [8]),
        .I1(\registers_reg[26]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_8 
       (.I0(\registers_reg[31]__0 [8]),
        .I1(\registers_reg[30]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[8]_inst_i_9 
       (.I0(\registers_reg[19]__0 [8]),
        .I1(\registers_reg[18]__0 [8]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [8]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [8]),
        .O(\r_data_1_OBUF[8]_inst_i_9_n_0 ));
  OBUF \r_data_1_OBUF[9]_inst 
       (.I(r_data_1_OBUF[9]),
        .O(r_data_1[9]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_1_OBUF[9]_inst_i_1 
       (.I0(r_en_1_IBUF),
        .I1(\registers[0] [9]),
        .I2(r_data_12),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[9]),
        .O(r_data_1_OBUF[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_10 
       (.I0(\registers_reg[23]__0 [9]),
        .I1(\registers_reg[22]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[21]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[20]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_11 
       (.I0(\registers_reg[11]__0 [9]),
        .I1(\registers_reg[10]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[9]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[8]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_12 
       (.I0(\registers_reg[15]__0 [9]),
        .I1(\registers_reg[14]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[13]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[12]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_13 
       (.I0(\registers_reg[3]__0 [9]),
        .I1(\registers_reg[2]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[1]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[0]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_14 
       (.I0(\registers_reg[7]__0 [9]),
        .I1(\registers_reg[6]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[5]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[4]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_2 
       (.I0(\r_data_1_OBUF[9]_inst_i_3_n_0 ),
        .I1(\r_data_1_OBUF[9]_inst_i_4_n_0 ),
        .I2(r_addr_1_IBUF[4]),
        .I3(\r_data_1_OBUF[9]_inst_i_5_n_0 ),
        .I4(r_addr_1_IBUF[3]),
        .I5(\r_data_1_OBUF[9]_inst_i_6_n_0 ),
        .O(\registers[0] [9]));
  MUXF7 \r_data_1_OBUF[9]_inst_i_3 
       (.I0(\r_data_1_OBUF[9]_inst_i_7_n_0 ),
        .I1(\r_data_1_OBUF[9]_inst_i_8_n_0 ),
        .O(\r_data_1_OBUF[9]_inst_i_3_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[9]_inst_i_4 
       (.I0(\r_data_1_OBUF[9]_inst_i_9_n_0 ),
        .I1(\r_data_1_OBUF[9]_inst_i_10_n_0 ),
        .O(\r_data_1_OBUF[9]_inst_i_4_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[9]_inst_i_5 
       (.I0(\r_data_1_OBUF[9]_inst_i_11_n_0 ),
        .I1(\r_data_1_OBUF[9]_inst_i_12_n_0 ),
        .O(\r_data_1_OBUF[9]_inst_i_5_n_0 ),
        .S(r_addr_1_IBUF[2]));
  MUXF7 \r_data_1_OBUF[9]_inst_i_6 
       (.I0(\r_data_1_OBUF[9]_inst_i_13_n_0 ),
        .I1(\r_data_1_OBUF[9]_inst_i_14_n_0 ),
        .O(\r_data_1_OBUF[9]_inst_i_6_n_0 ),
        .S(r_addr_1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_7 
       (.I0(\registers_reg[27]__0 [9]),
        .I1(\registers_reg[26]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[25]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[24]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_8 
       (.I0(\registers_reg[31]__0 [9]),
        .I1(\registers_reg[30]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[29]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[28]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_1_OBUF[9]_inst_i_9 
       (.I0(\registers_reg[19]__0 [9]),
        .I1(\registers_reg[18]__0 [9]),
        .I2(r_addr_1_IBUF[1]),
        .I3(\registers_reg[17]__0 [9]),
        .I4(r_addr_1_IBUF[0]),
        .I5(\registers_reg[16]__0 [9]),
        .O(\r_data_1_OBUF[9]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[0]_inst 
       (.I(r_data_2_OBUF[0]),
        .O(r_data_2[0]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[0]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[0]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[0]),
        .O(r_data_2_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_10 
       (.I0(\registers_reg[23]__0 [0]),
        .I1(\registers_reg[22]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_11 
       (.I0(\registers_reg[11]__0 [0]),
        .I1(\registers_reg[10]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_12 
       (.I0(\registers_reg[15]__0 [0]),
        .I1(\registers_reg[14]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_13 
       (.I0(\registers_reg[3]__0 [0]),
        .I1(\registers_reg[2]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_14 
       (.I0(\registers_reg[7]__0 [0]),
        .I1(\registers_reg[6]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_2 
       (.I0(\r_data_2_OBUF[0]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[0]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[0]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[0]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[0]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[0]_inst_i_3 
       (.I0(\r_data_2_OBUF[0]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[0]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[0]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[0]_inst_i_4 
       (.I0(\r_data_2_OBUF[0]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[0]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[0]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[0]_inst_i_5 
       (.I0(\r_data_2_OBUF[0]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[0]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[0]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[0]_inst_i_6 
       (.I0(\r_data_2_OBUF[0]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[0]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[0]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_7 
       (.I0(\registers_reg[27]__0 [0]),
        .I1(\registers_reg[26]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_8 
       (.I0(\registers_reg[31]__0 [0]),
        .I1(\registers_reg[30]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[0]_inst_i_9 
       (.I0(\registers_reg[19]__0 [0]),
        .I1(\registers_reg[18]__0 [0]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [0]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [0]),
        .O(\r_data_2_OBUF[0]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[10]_inst 
       (.I(r_data_2_OBUF[10]),
        .O(r_data_2[10]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[10]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[10]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[10]),
        .O(r_data_2_OBUF[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_10 
       (.I0(\registers_reg[23]__0 [10]),
        .I1(\registers_reg[22]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_11 
       (.I0(\registers_reg[11]__0 [10]),
        .I1(\registers_reg[10]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_12 
       (.I0(\registers_reg[15]__0 [10]),
        .I1(\registers_reg[14]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_13 
       (.I0(\registers_reg[3]__0 [10]),
        .I1(\registers_reg[2]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_14 
       (.I0(\registers_reg[7]__0 [10]),
        .I1(\registers_reg[6]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_2 
       (.I0(\r_data_2_OBUF[10]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[10]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[10]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[10]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[10]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[10]_inst_i_3 
       (.I0(\r_data_2_OBUF[10]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[10]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[10]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[10]_inst_i_4 
       (.I0(\r_data_2_OBUF[10]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[10]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[10]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[10]_inst_i_5 
       (.I0(\r_data_2_OBUF[10]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[10]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[10]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[10]_inst_i_6 
       (.I0(\r_data_2_OBUF[10]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[10]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[10]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_7 
       (.I0(\registers_reg[27]__0 [10]),
        .I1(\registers_reg[26]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_8 
       (.I0(\registers_reg[31]__0 [10]),
        .I1(\registers_reg[30]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[10]_inst_i_9 
       (.I0(\registers_reg[19]__0 [10]),
        .I1(\registers_reg[18]__0 [10]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [10]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [10]),
        .O(\r_data_2_OBUF[10]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[11]_inst 
       (.I(r_data_2_OBUF[11]),
        .O(r_data_2[11]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[11]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[11]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[11]),
        .O(r_data_2_OBUF[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_10 
       (.I0(\registers_reg[23]__0 [11]),
        .I1(\registers_reg[22]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_11 
       (.I0(\registers_reg[11]__0 [11]),
        .I1(\registers_reg[10]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_12 
       (.I0(\registers_reg[15]__0 [11]),
        .I1(\registers_reg[14]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_13 
       (.I0(\registers_reg[3]__0 [11]),
        .I1(\registers_reg[2]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_14 
       (.I0(\registers_reg[7]__0 [11]),
        .I1(\registers_reg[6]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_2 
       (.I0(\r_data_2_OBUF[11]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[11]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[11]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[11]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[11]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[11]_inst_i_3 
       (.I0(\r_data_2_OBUF[11]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[11]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[11]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[11]_inst_i_4 
       (.I0(\r_data_2_OBUF[11]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[11]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[11]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[11]_inst_i_5 
       (.I0(\r_data_2_OBUF[11]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[11]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[11]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[11]_inst_i_6 
       (.I0(\r_data_2_OBUF[11]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[11]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[11]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_7 
       (.I0(\registers_reg[27]__0 [11]),
        .I1(\registers_reg[26]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_8 
       (.I0(\registers_reg[31]__0 [11]),
        .I1(\registers_reg[30]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[11]_inst_i_9 
       (.I0(\registers_reg[19]__0 [11]),
        .I1(\registers_reg[18]__0 [11]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [11]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [11]),
        .O(\r_data_2_OBUF[11]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[12]_inst 
       (.I(r_data_2_OBUF[12]),
        .O(r_data_2[12]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[12]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[12]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[12]),
        .O(r_data_2_OBUF[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_10 
       (.I0(\registers_reg[23]__0 [12]),
        .I1(\registers_reg[22]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_11 
       (.I0(\registers_reg[11]__0 [12]),
        .I1(\registers_reg[10]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_12 
       (.I0(\registers_reg[15]__0 [12]),
        .I1(\registers_reg[14]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_13 
       (.I0(\registers_reg[3]__0 [12]),
        .I1(\registers_reg[2]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_14 
       (.I0(\registers_reg[7]__0 [12]),
        .I1(\registers_reg[6]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_2 
       (.I0(\r_data_2_OBUF[12]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[12]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[12]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[12]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[12]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[12]_inst_i_3 
       (.I0(\r_data_2_OBUF[12]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[12]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[12]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[12]_inst_i_4 
       (.I0(\r_data_2_OBUF[12]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[12]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[12]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[12]_inst_i_5 
       (.I0(\r_data_2_OBUF[12]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[12]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[12]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[12]_inst_i_6 
       (.I0(\r_data_2_OBUF[12]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[12]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[12]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_7 
       (.I0(\registers_reg[27]__0 [12]),
        .I1(\registers_reg[26]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_8 
       (.I0(\registers_reg[31]__0 [12]),
        .I1(\registers_reg[30]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[12]_inst_i_9 
       (.I0(\registers_reg[19]__0 [12]),
        .I1(\registers_reg[18]__0 [12]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [12]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [12]),
        .O(\r_data_2_OBUF[12]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[13]_inst 
       (.I(r_data_2_OBUF[13]),
        .O(r_data_2[13]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[13]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[13]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[13]),
        .O(r_data_2_OBUF[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_10 
       (.I0(\registers_reg[23]__0 [13]),
        .I1(\registers_reg[22]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_11 
       (.I0(\registers_reg[11]__0 [13]),
        .I1(\registers_reg[10]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_12 
       (.I0(\registers_reg[15]__0 [13]),
        .I1(\registers_reg[14]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_13 
       (.I0(\registers_reg[3]__0 [13]),
        .I1(\registers_reg[2]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_14 
       (.I0(\registers_reg[7]__0 [13]),
        .I1(\registers_reg[6]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_2 
       (.I0(\r_data_2_OBUF[13]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[13]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[13]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[13]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[13]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[13]_inst_i_3 
       (.I0(\r_data_2_OBUF[13]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[13]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[13]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[13]_inst_i_4 
       (.I0(\r_data_2_OBUF[13]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[13]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[13]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[13]_inst_i_5 
       (.I0(\r_data_2_OBUF[13]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[13]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[13]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[13]_inst_i_6 
       (.I0(\r_data_2_OBUF[13]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[13]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[13]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_7 
       (.I0(\registers_reg[27]__0 [13]),
        .I1(\registers_reg[26]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_8 
       (.I0(\registers_reg[31]__0 [13]),
        .I1(\registers_reg[30]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[13]_inst_i_9 
       (.I0(\registers_reg[19]__0 [13]),
        .I1(\registers_reg[18]__0 [13]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [13]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [13]),
        .O(\r_data_2_OBUF[13]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[14]_inst 
       (.I(r_data_2_OBUF[14]),
        .O(r_data_2[14]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[14]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[14]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[14]),
        .O(r_data_2_OBUF[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_10 
       (.I0(\registers_reg[23]__0 [14]),
        .I1(\registers_reg[22]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_11 
       (.I0(\registers_reg[11]__0 [14]),
        .I1(\registers_reg[10]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_12 
       (.I0(\registers_reg[15]__0 [14]),
        .I1(\registers_reg[14]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_13 
       (.I0(\registers_reg[3]__0 [14]),
        .I1(\registers_reg[2]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_14 
       (.I0(\registers_reg[7]__0 [14]),
        .I1(\registers_reg[6]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_2 
       (.I0(\r_data_2_OBUF[14]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[14]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[14]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[14]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[14]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[14]_inst_i_3 
       (.I0(\r_data_2_OBUF[14]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[14]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[14]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[14]_inst_i_4 
       (.I0(\r_data_2_OBUF[14]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[14]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[14]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[14]_inst_i_5 
       (.I0(\r_data_2_OBUF[14]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[14]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[14]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[14]_inst_i_6 
       (.I0(\r_data_2_OBUF[14]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[14]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[14]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_7 
       (.I0(\registers_reg[27]__0 [14]),
        .I1(\registers_reg[26]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_8 
       (.I0(\registers_reg[31]__0 [14]),
        .I1(\registers_reg[30]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[14]_inst_i_9 
       (.I0(\registers_reg[19]__0 [14]),
        .I1(\registers_reg[18]__0 [14]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [14]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [14]),
        .O(\r_data_2_OBUF[14]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[15]_inst 
       (.I(r_data_2_OBUF[15]),
        .O(r_data_2[15]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[15]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[15]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[15]),
        .O(r_data_2_OBUF[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_10 
       (.I0(\registers_reg[27]__0 [15]),
        .I1(\registers_reg[26]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_11 
       (.I0(\registers_reg[31]__0 [15]),
        .I1(\registers_reg[30]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_12 
       (.I0(\registers_reg[19]__0 [15]),
        .I1(\registers_reg[18]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_13 
       (.I0(\registers_reg[23]__0 [15]),
        .I1(\registers_reg[22]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_14 
       (.I0(\registers_reg[11]__0 [15]),
        .I1(\registers_reg[10]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_15 
       (.I0(\registers_reg[15]__0 [15]),
        .I1(\registers_reg[14]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_16 
       (.I0(\registers_reg[3]__0 [15]),
        .I1(\registers_reg[2]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_17 
       (.I0(\registers_reg[7]__0 [15]),
        .I1(\registers_reg[6]__0 [15]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [15]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [15]),
        .O(\r_data_2_OBUF[15]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[15]_inst_i_2 
       (.I0(\r_data_2_OBUF[15]_inst_i_4_n_0 ),
        .I1(\r_data_2_OBUF[15]_inst_i_5_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[15]_inst_i_6_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[15]_inst_i_7_n_0 ),
        .O(\r_data_2_OBUF[15]_inst_i_2_n_0 ));
  CARRY4 \r_data_2_OBUF[15]_inst_i_3 
       (.CI(1'b0),
        .CO({\NLW_r_data_2_OBUF[15]_inst_i_3_CO_UNCONNECTED [3:2],r_data_22,\r_data_2_OBUF[15]_inst_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_r_data_2_OBUF[15]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\r_data_2_OBUF[15]_inst_i_8_n_0 ,\r_data_2_OBUF[15]_inst_i_9_n_0 }));
  MUXF7 \r_data_2_OBUF[15]_inst_i_4 
       (.I0(\r_data_2_OBUF[15]_inst_i_10_n_0 ),
        .I1(\r_data_2_OBUF[15]_inst_i_11_n_0 ),
        .O(\r_data_2_OBUF[15]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[15]_inst_i_5 
       (.I0(\r_data_2_OBUF[15]_inst_i_12_n_0 ),
        .I1(\r_data_2_OBUF[15]_inst_i_13_n_0 ),
        .O(\r_data_2_OBUF[15]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[15]_inst_i_6 
       (.I0(\r_data_2_OBUF[15]_inst_i_14_n_0 ),
        .I1(\r_data_2_OBUF[15]_inst_i_15_n_0 ),
        .O(\r_data_2_OBUF[15]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[15]_inst_i_7 
       (.I0(\r_data_2_OBUF[15]_inst_i_16_n_0 ),
        .I1(\r_data_2_OBUF[15]_inst_i_17_n_0 ),
        .O(\r_data_2_OBUF[15]_inst_i_7_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \r_data_2_OBUF[15]_inst_i_8 
       (.I0(r_addr_2_IBUF[3]),
        .I1(w_addr_IBUF[3]),
        .I2(r_addr_2_IBUF[4]),
        .I3(w_addr_IBUF[4]),
        .O(\r_data_2_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_data_2_OBUF[15]_inst_i_9 
       (.I0(r_addr_2_IBUF[0]),
        .I1(w_addr_IBUF[0]),
        .I2(w_addr_IBUF[2]),
        .I3(r_addr_2_IBUF[2]),
        .I4(w_addr_IBUF[1]),
        .I5(r_addr_2_IBUF[1]),
        .O(\r_data_2_OBUF[15]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[1]_inst 
       (.I(r_data_2_OBUF[1]),
        .O(r_data_2[1]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[1]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[1]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[1]),
        .O(r_data_2_OBUF[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_10 
       (.I0(\registers_reg[23]__0 [1]),
        .I1(\registers_reg[22]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_11 
       (.I0(\registers_reg[11]__0 [1]),
        .I1(\registers_reg[10]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_12 
       (.I0(\registers_reg[15]__0 [1]),
        .I1(\registers_reg[14]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_13 
       (.I0(\registers_reg[3]__0 [1]),
        .I1(\registers_reg[2]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_14 
       (.I0(\registers_reg[7]__0 [1]),
        .I1(\registers_reg[6]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_2 
       (.I0(\r_data_2_OBUF[1]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[1]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[1]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[1]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[1]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[1]_inst_i_3 
       (.I0(\r_data_2_OBUF[1]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[1]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[1]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[1]_inst_i_4 
       (.I0(\r_data_2_OBUF[1]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[1]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[1]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[1]_inst_i_5 
       (.I0(\r_data_2_OBUF[1]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[1]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[1]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[1]_inst_i_6 
       (.I0(\r_data_2_OBUF[1]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[1]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[1]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_7 
       (.I0(\registers_reg[27]__0 [1]),
        .I1(\registers_reg[26]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_8 
       (.I0(\registers_reg[31]__0 [1]),
        .I1(\registers_reg[30]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[1]_inst_i_9 
       (.I0(\registers_reg[19]__0 [1]),
        .I1(\registers_reg[18]__0 [1]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [1]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [1]),
        .O(\r_data_2_OBUF[1]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[2]_inst 
       (.I(r_data_2_OBUF[2]),
        .O(r_data_2[2]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[2]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[2]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[2]),
        .O(r_data_2_OBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_10 
       (.I0(\registers_reg[23]__0 [2]),
        .I1(\registers_reg[22]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_11 
       (.I0(\registers_reg[11]__0 [2]),
        .I1(\registers_reg[10]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_12 
       (.I0(\registers_reg[15]__0 [2]),
        .I1(\registers_reg[14]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_13 
       (.I0(\registers_reg[3]__0 [2]),
        .I1(\registers_reg[2]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_14 
       (.I0(\registers_reg[7]__0 [2]),
        .I1(\registers_reg[6]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_2 
       (.I0(\r_data_2_OBUF[2]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[2]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[2]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[2]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[2]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[2]_inst_i_3 
       (.I0(\r_data_2_OBUF[2]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[2]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[2]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[2]_inst_i_4 
       (.I0(\r_data_2_OBUF[2]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[2]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[2]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[2]_inst_i_5 
       (.I0(\r_data_2_OBUF[2]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[2]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[2]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[2]_inst_i_6 
       (.I0(\r_data_2_OBUF[2]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[2]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[2]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_7 
       (.I0(\registers_reg[27]__0 [2]),
        .I1(\registers_reg[26]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_8 
       (.I0(\registers_reg[31]__0 [2]),
        .I1(\registers_reg[30]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[2]_inst_i_9 
       (.I0(\registers_reg[19]__0 [2]),
        .I1(\registers_reg[18]__0 [2]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [2]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [2]),
        .O(\r_data_2_OBUF[2]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[3]_inst 
       (.I(r_data_2_OBUF[3]),
        .O(r_data_2[3]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[3]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[3]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[3]),
        .O(r_data_2_OBUF[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_10 
       (.I0(\registers_reg[23]__0 [3]),
        .I1(\registers_reg[22]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_11 
       (.I0(\registers_reg[11]__0 [3]),
        .I1(\registers_reg[10]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_12 
       (.I0(\registers_reg[15]__0 [3]),
        .I1(\registers_reg[14]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_13 
       (.I0(\registers_reg[3]__0 [3]),
        .I1(\registers_reg[2]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_14 
       (.I0(\registers_reg[7]__0 [3]),
        .I1(\registers_reg[6]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_2 
       (.I0(\r_data_2_OBUF[3]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[3]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[3]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[3]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[3]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[3]_inst_i_3 
       (.I0(\r_data_2_OBUF[3]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[3]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[3]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[3]_inst_i_4 
       (.I0(\r_data_2_OBUF[3]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[3]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[3]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[3]_inst_i_5 
       (.I0(\r_data_2_OBUF[3]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[3]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[3]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[3]_inst_i_6 
       (.I0(\r_data_2_OBUF[3]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[3]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[3]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_7 
       (.I0(\registers_reg[27]__0 [3]),
        .I1(\registers_reg[26]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_8 
       (.I0(\registers_reg[31]__0 [3]),
        .I1(\registers_reg[30]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[3]_inst_i_9 
       (.I0(\registers_reg[19]__0 [3]),
        .I1(\registers_reg[18]__0 [3]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [3]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [3]),
        .O(\r_data_2_OBUF[3]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[4]_inst 
       (.I(r_data_2_OBUF[4]),
        .O(r_data_2[4]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[4]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[4]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[4]),
        .O(r_data_2_OBUF[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_10 
       (.I0(\registers_reg[23]__0 [4]),
        .I1(\registers_reg[22]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_11 
       (.I0(\registers_reg[11]__0 [4]),
        .I1(\registers_reg[10]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_12 
       (.I0(\registers_reg[15]__0 [4]),
        .I1(\registers_reg[14]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_13 
       (.I0(\registers_reg[3]__0 [4]),
        .I1(\registers_reg[2]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_14 
       (.I0(\registers_reg[7]__0 [4]),
        .I1(\registers_reg[6]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_2 
       (.I0(\r_data_2_OBUF[4]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[4]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[4]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[4]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[4]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[4]_inst_i_3 
       (.I0(\r_data_2_OBUF[4]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[4]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[4]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[4]_inst_i_4 
       (.I0(\r_data_2_OBUF[4]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[4]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[4]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[4]_inst_i_5 
       (.I0(\r_data_2_OBUF[4]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[4]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[4]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[4]_inst_i_6 
       (.I0(\r_data_2_OBUF[4]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[4]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[4]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_7 
       (.I0(\registers_reg[27]__0 [4]),
        .I1(\registers_reg[26]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_8 
       (.I0(\registers_reg[31]__0 [4]),
        .I1(\registers_reg[30]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[4]_inst_i_9 
       (.I0(\registers_reg[19]__0 [4]),
        .I1(\registers_reg[18]__0 [4]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [4]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [4]),
        .O(\r_data_2_OBUF[4]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[5]_inst 
       (.I(r_data_2_OBUF[5]),
        .O(r_data_2[5]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[5]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[5]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[5]),
        .O(r_data_2_OBUF[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_10 
       (.I0(\registers_reg[23]__0 [5]),
        .I1(\registers_reg[22]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_11 
       (.I0(\registers_reg[11]__0 [5]),
        .I1(\registers_reg[10]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_12 
       (.I0(\registers_reg[15]__0 [5]),
        .I1(\registers_reg[14]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_13 
       (.I0(\registers_reg[3]__0 [5]),
        .I1(\registers_reg[2]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_14 
       (.I0(\registers_reg[7]__0 [5]),
        .I1(\registers_reg[6]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_2 
       (.I0(\r_data_2_OBUF[5]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[5]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[5]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[5]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[5]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[5]_inst_i_3 
       (.I0(\r_data_2_OBUF[5]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[5]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[5]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[5]_inst_i_4 
       (.I0(\r_data_2_OBUF[5]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[5]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[5]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[5]_inst_i_5 
       (.I0(\r_data_2_OBUF[5]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[5]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[5]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[5]_inst_i_6 
       (.I0(\r_data_2_OBUF[5]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[5]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[5]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_7 
       (.I0(\registers_reg[27]__0 [5]),
        .I1(\registers_reg[26]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_8 
       (.I0(\registers_reg[31]__0 [5]),
        .I1(\registers_reg[30]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[5]_inst_i_9 
       (.I0(\registers_reg[19]__0 [5]),
        .I1(\registers_reg[18]__0 [5]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [5]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [5]),
        .O(\r_data_2_OBUF[5]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[6]_inst 
       (.I(r_data_2_OBUF[6]),
        .O(r_data_2[6]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[6]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[6]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[6]),
        .O(r_data_2_OBUF[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_10 
       (.I0(\registers_reg[23]__0 [6]),
        .I1(\registers_reg[22]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_11 
       (.I0(\registers_reg[11]__0 [6]),
        .I1(\registers_reg[10]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_12 
       (.I0(\registers_reg[15]__0 [6]),
        .I1(\registers_reg[14]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_13 
       (.I0(\registers_reg[3]__0 [6]),
        .I1(\registers_reg[2]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_14 
       (.I0(\registers_reg[7]__0 [6]),
        .I1(\registers_reg[6]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_2 
       (.I0(\r_data_2_OBUF[6]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[6]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[6]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[6]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[6]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[6]_inst_i_3 
       (.I0(\r_data_2_OBUF[6]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[6]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[6]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[6]_inst_i_4 
       (.I0(\r_data_2_OBUF[6]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[6]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[6]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[6]_inst_i_5 
       (.I0(\r_data_2_OBUF[6]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[6]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[6]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[6]_inst_i_6 
       (.I0(\r_data_2_OBUF[6]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[6]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[6]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_7 
       (.I0(\registers_reg[27]__0 [6]),
        .I1(\registers_reg[26]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_8 
       (.I0(\registers_reg[31]__0 [6]),
        .I1(\registers_reg[30]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[6]_inst_i_9 
       (.I0(\registers_reg[19]__0 [6]),
        .I1(\registers_reg[18]__0 [6]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [6]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [6]),
        .O(\r_data_2_OBUF[6]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[7]_inst 
       (.I(r_data_2_OBUF[7]),
        .O(r_data_2[7]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[7]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[7]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[7]),
        .O(r_data_2_OBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_10 
       (.I0(\registers_reg[23]__0 [7]),
        .I1(\registers_reg[22]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_11 
       (.I0(\registers_reg[11]__0 [7]),
        .I1(\registers_reg[10]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_12 
       (.I0(\registers_reg[15]__0 [7]),
        .I1(\registers_reg[14]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_13 
       (.I0(\registers_reg[3]__0 [7]),
        .I1(\registers_reg[2]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_14 
       (.I0(\registers_reg[7]__0 [7]),
        .I1(\registers_reg[6]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_2 
       (.I0(\r_data_2_OBUF[7]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[7]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[7]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[7]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[7]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[7]_inst_i_3 
       (.I0(\r_data_2_OBUF[7]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[7]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[7]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[7]_inst_i_4 
       (.I0(\r_data_2_OBUF[7]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[7]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[7]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[7]_inst_i_5 
       (.I0(\r_data_2_OBUF[7]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[7]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[7]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[7]_inst_i_6 
       (.I0(\r_data_2_OBUF[7]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[7]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[7]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_7 
       (.I0(\registers_reg[27]__0 [7]),
        .I1(\registers_reg[26]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_8 
       (.I0(\registers_reg[31]__0 [7]),
        .I1(\registers_reg[30]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[7]_inst_i_9 
       (.I0(\registers_reg[19]__0 [7]),
        .I1(\registers_reg[18]__0 [7]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [7]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [7]),
        .O(\r_data_2_OBUF[7]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[8]_inst 
       (.I(r_data_2_OBUF[8]),
        .O(r_data_2[8]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[8]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[8]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[8]),
        .O(r_data_2_OBUF[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_10 
       (.I0(\registers_reg[23]__0 [8]),
        .I1(\registers_reg[22]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_11 
       (.I0(\registers_reg[11]__0 [8]),
        .I1(\registers_reg[10]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_12 
       (.I0(\registers_reg[15]__0 [8]),
        .I1(\registers_reg[14]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_13 
       (.I0(\registers_reg[3]__0 [8]),
        .I1(\registers_reg[2]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_14 
       (.I0(\registers_reg[7]__0 [8]),
        .I1(\registers_reg[6]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_2 
       (.I0(\r_data_2_OBUF[8]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[8]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[8]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[8]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[8]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[8]_inst_i_3 
       (.I0(\r_data_2_OBUF[8]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[8]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[8]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[8]_inst_i_4 
       (.I0(\r_data_2_OBUF[8]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[8]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[8]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[8]_inst_i_5 
       (.I0(\r_data_2_OBUF[8]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[8]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[8]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[8]_inst_i_6 
       (.I0(\r_data_2_OBUF[8]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[8]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[8]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_7 
       (.I0(\registers_reg[27]__0 [8]),
        .I1(\registers_reg[26]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_8 
       (.I0(\registers_reg[31]__0 [8]),
        .I1(\registers_reg[30]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[8]_inst_i_9 
       (.I0(\registers_reg[19]__0 [8]),
        .I1(\registers_reg[18]__0 [8]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [8]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [8]),
        .O(\r_data_2_OBUF[8]_inst_i_9_n_0 ));
  OBUF \r_data_2_OBUF[9]_inst 
       (.I(r_data_2_OBUF[9]),
        .O(r_data_2[9]));
  LUT5 #(
    .INIT(32'hA8880888)) 
    \r_data_2_OBUF[9]_inst_i_1 
       (.I0(r_en_2_IBUF),
        .I1(\r_data_2_OBUF[9]_inst_i_2_n_0 ),
        .I2(r_data_22),
        .I3(w_en_IBUF),
        .I4(w_data_IBUF[9]),
        .O(r_data_2_OBUF[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_10 
       (.I0(\registers_reg[23]__0 [9]),
        .I1(\registers_reg[22]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[21]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[20]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_11 
       (.I0(\registers_reg[11]__0 [9]),
        .I1(\registers_reg[10]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[9]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[8]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_12 
       (.I0(\registers_reg[15]__0 [9]),
        .I1(\registers_reg[14]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[13]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[12]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_13 
       (.I0(\registers_reg[3]__0 [9]),
        .I1(\registers_reg[2]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[1]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[0]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_14 
       (.I0(\registers_reg[7]__0 [9]),
        .I1(\registers_reg[6]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[5]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[4]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_2 
       (.I0(\r_data_2_OBUF[9]_inst_i_3_n_0 ),
        .I1(\r_data_2_OBUF[9]_inst_i_4_n_0 ),
        .I2(r_addr_2_IBUF[4]),
        .I3(\r_data_2_OBUF[9]_inst_i_5_n_0 ),
        .I4(r_addr_2_IBUF[3]),
        .I5(\r_data_2_OBUF[9]_inst_i_6_n_0 ),
        .O(\r_data_2_OBUF[9]_inst_i_2_n_0 ));
  MUXF7 \r_data_2_OBUF[9]_inst_i_3 
       (.I0(\r_data_2_OBUF[9]_inst_i_7_n_0 ),
        .I1(\r_data_2_OBUF[9]_inst_i_8_n_0 ),
        .O(\r_data_2_OBUF[9]_inst_i_3_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[9]_inst_i_4 
       (.I0(\r_data_2_OBUF[9]_inst_i_9_n_0 ),
        .I1(\r_data_2_OBUF[9]_inst_i_10_n_0 ),
        .O(\r_data_2_OBUF[9]_inst_i_4_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[9]_inst_i_5 
       (.I0(\r_data_2_OBUF[9]_inst_i_11_n_0 ),
        .I1(\r_data_2_OBUF[9]_inst_i_12_n_0 ),
        .O(\r_data_2_OBUF[9]_inst_i_5_n_0 ),
        .S(r_addr_2_IBUF[2]));
  MUXF7 \r_data_2_OBUF[9]_inst_i_6 
       (.I0(\r_data_2_OBUF[9]_inst_i_13_n_0 ),
        .I1(\r_data_2_OBUF[9]_inst_i_14_n_0 ),
        .O(\r_data_2_OBUF[9]_inst_i_6_n_0 ),
        .S(r_addr_2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_7 
       (.I0(\registers_reg[27]__0 [9]),
        .I1(\registers_reg[26]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[25]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[24]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_8 
       (.I0(\registers_reg[31]__0 [9]),
        .I1(\registers_reg[30]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[29]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[28]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_data_2_OBUF[9]_inst_i_9 
       (.I0(\registers_reg[19]__0 [9]),
        .I1(\registers_reg[18]__0 [9]),
        .I2(r_addr_2_IBUF[1]),
        .I3(\registers_reg[17]__0 [9]),
        .I4(r_addr_2_IBUF[0]),
        .I5(\registers_reg[16]__0 [9]),
        .O(\r_data_2_OBUF[9]_inst_i_9_n_0 ));
  IBUF r_en_1_IBUF_inst
       (.I(r_en_1),
        .O(r_en_1_IBUF));
  IBUF r_en_2_IBUF_inst
       (.I(r_en_2),
        .O(r_en_2_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \registers[0][10]_i_1 
       (.I0(rst_n_IBUF),
        .O(\registers[0][10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \registers[0][14]_i_1 
       (.I0(rst_n_IBUF),
        .O(\registers[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \registers[0][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[2]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[1]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[0][15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \registers[0][15]_i_2 
       (.I0(rst_n_IBUF),
        .O(\registers[0][15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \registers[0][6]_i_1 
       (.I0(rst_n_IBUF),
        .O(\registers[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[10][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[10] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[11][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[11] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[12][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[2]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[1]),
        .O(\registers[12] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[13][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[2]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[1]),
        .O(\registers[13] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[14][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[2]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[0]),
        .O(\registers[14] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[15][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[3]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[1]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[15] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \registers[16][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[4]),
        .I4(w_addr_IBUF[0]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[16] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[17][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[4]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[17] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[18][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[4]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[18] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[19][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[4]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[19] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \registers[1][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[2]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[1]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[1] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[20][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[2]),
        .I4(w_addr_IBUF[4]),
        .I5(w_addr_IBUF[1]),
        .O(\registers[20] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[21][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[2]),
        .I4(w_addr_IBUF[4]),
        .I5(w_addr_IBUF[1]),
        .O(\registers[21] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[22][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[2]),
        .I4(w_addr_IBUF[4]),
        .I5(w_addr_IBUF[0]),
        .O(\registers[22] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[23][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[4]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[1]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[23] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[24][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[2]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[4]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[1]),
        .O(\registers[24] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[25][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[2]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[4]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[1]),
        .O(\registers[25] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[26][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[2]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[4]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[0]),
        .O(\registers[26] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[27][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[2]),
        .I2(w_addr_IBUF[3]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[1]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[27] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[28][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[1]),
        .I2(w_addr_IBUF[2]),
        .I3(w_addr_IBUF[4]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[0]),
        .O(\registers[28] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[29][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[1]),
        .I2(w_addr_IBUF[3]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[2]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[29] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \registers[2][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[2]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[0]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[2] ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \registers[30][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[0]),
        .I2(w_addr_IBUF[3]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[2]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[30] ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \registers[31][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[2]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[4]),
        .I5(w_addr_IBUF[3]),
        .O(\registers[31] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[3][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[2]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[1]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[3] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \registers[4][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[2]),
        .I4(w_addr_IBUF[0]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[4] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[5][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[2]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[5] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[6][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[2]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[6] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \registers[7][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[3]),
        .I2(w_addr_IBUF[0]),
        .I3(w_addr_IBUF[1]),
        .I4(w_addr_IBUF[2]),
        .I5(w_addr_IBUF[4]),
        .O(\registers[7] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \registers[8][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[3]),
        .I4(w_addr_IBUF[0]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[8] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \registers[9][15]_i_1 
       (.I0(w_en_IBUF),
        .I1(w_addr_IBUF[4]),
        .I2(w_addr_IBUF[1]),
        .I3(w_addr_IBUF[0]),
        .I4(w_addr_IBUF[3]),
        .I5(w_addr_IBUF[2]),
        .O(\registers[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[0]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[0]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[0]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[0]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[0]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[0]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[0]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[0]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[0]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[0]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[0]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[0]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[0]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[0]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[0]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][15]_i_1_n_0 ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[0]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[10]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[10]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[10]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[10]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[10]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[10]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[10]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[10]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[10]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[10]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[10]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[10]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[10]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[10]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[10]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[10][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[10] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[10]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[11]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[11]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[11]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[11]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[11]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[11]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[11]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[11]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[11]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[11]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[11]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[11]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[11]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[11]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[11]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[11][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[11] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[11]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[12]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[12]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[12]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[12]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[12]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[12]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[12]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[12]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[12]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[12]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[12]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[12]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[12]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[12]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[12]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[12][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[12] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[12]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[13]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[13]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[13]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[13]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[13]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[13]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[13]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[13]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[13]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[13]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[13]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[13]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[13]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[13]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[13]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[13][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[13] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[13]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[14]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[14]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[14]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[14]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[14]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[14]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[14]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[14]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[14]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[14]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[14]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[14]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[14]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[14]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[14]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[14][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[14] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[14]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[15]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[15]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[15]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[15]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[15]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[15]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[15]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[15]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[15]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[15]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[15]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[15]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[15]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[15]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[15]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[15][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[15] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[15]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[16]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[16]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[16]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[16]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[16]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[16]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[16]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[16]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[16]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[16]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[16]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[16]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[16]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[16]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[16]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[16][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[16] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[16]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[17]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[17]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[17]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[17]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[17]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[17]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[17]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[17]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[17]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[17]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[17]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[17]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[17]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[17]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[17]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[17][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[17] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[17]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[18]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[18]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[18]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[18]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[18]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[18]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[18]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[18]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[18]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[18]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[18]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[18]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[18]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[18]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[18]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[18][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[18] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[18]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[19]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[19]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[19]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[19]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[19]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[19]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[19]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[19]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[19]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[19]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[19]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[19]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[19]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[19]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[19]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[19][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[19] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[19]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[1]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[1]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[1]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[1]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[1]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[1]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[1]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[1]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[1]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[1]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[1]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[1]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[1]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[1]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[1]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[1]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[20]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[20]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[20]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[20]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[20]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[20]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[20]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[20]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[20]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[20]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[20]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[20]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[20]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[20]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[20]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[20][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[20] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[20]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[21]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[21]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[21]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[21]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[21]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[21]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[21]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[21]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[21]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[21]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[21]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[21]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[21]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[21]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[21]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[21][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[21] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[21]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[22]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[22]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[22]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[22]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[22]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[22]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[22]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[22]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[22]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[22]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[22]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[22]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[22]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[22]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[22]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[22][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[22] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[22]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[23]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[23]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[23]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[23]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[23]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[23]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[23]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[23]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[23]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[23]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[23]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[23]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[23]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[23]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[23]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[23][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[23] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[23]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[24]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[24]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[24]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[24]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[24]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[24]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[24]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[24]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[24]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[24]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[24]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[24]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[24]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[24]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[24]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[24][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[24] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[24]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[25]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[25]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[25]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[25]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[25]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[25]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[25]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[25]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[25]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[25]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[25]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[25]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[25]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[25]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[25]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[25][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[25] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[25]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[26]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[26]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[26]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[26]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[26]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[26]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[26]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[26]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[26]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[26]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[26]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[26]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[26]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[26]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[26]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[26][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[26] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[26]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[27]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[27]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[27]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[27]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[27]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[27]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[27]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[27]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[27]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[27]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[27]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[27]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[27]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[27]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[27]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[27][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[27] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[27]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[28]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[28]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[28]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[28]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[28]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[28]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[28]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[28]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[28]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[28]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[28]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[28]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[28]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[28]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[28]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[28][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[28] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[28]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[29]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[29]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[29]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[29]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[29]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[29]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[29]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[29]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[29]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[29]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[29]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[29]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[29]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[29]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[29]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[29][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[29] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[29]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[2]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[2]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[2]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[2]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[2]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[2]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[2]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[2]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[2]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[2]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[2]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[2]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[2]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[2]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[2]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[2][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[2] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[2]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[30]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[30]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[30]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[30]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[30]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[30]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[30]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[30]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[30]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[30]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[30]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[30]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[30]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[30]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[30]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[30][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[30] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[30]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[31]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[31]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[31]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[31]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[31]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[31]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[31]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[31]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[31]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[31]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[31]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[31]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[31]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[31]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[31]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[31][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[31] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[31]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[3]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[3]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[3]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[3]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[3]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[3]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[3]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[3]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[3]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[3]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[3]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[3]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[3]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[3]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[3]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[3][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[3] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[3]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[4]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[4]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[4]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[4]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[4]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[4]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[4]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[4]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[4]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[4]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[4]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[4]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[4]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[4]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[4]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[4][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[4] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[4]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[5]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[5]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[5]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[5]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[5]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[5]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[5]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[5]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[5]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[5]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[5]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[5]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[5]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[5]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[5]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[5][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[5] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[5]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[6]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[6]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[6]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[6]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[6]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[6]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[6]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[6]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[6]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[6]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[6]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[6]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[6]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[6]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[6]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[6][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[6] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[6]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[7]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[7]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[7]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[7]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[7]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[7]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[7]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[7]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[7]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[7]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[7]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[7]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[7]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[7]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[7]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[7][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[7] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[7]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[8]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[8]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[8]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[8]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[8]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[8]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[8]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[8]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[8]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[8]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[8]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[8]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[8]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[8]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[8]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[8][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[8] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[8]__0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[0]),
        .Q(\registers_reg[9]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][10] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[10]),
        .Q(\registers_reg[9]__0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][11] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[11]),
        .Q(\registers_reg[9]__0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][12] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[12]),
        .Q(\registers_reg[9]__0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][13] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[13]),
        .Q(\registers_reg[9]__0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][14] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][14]_i_1_n_0 ),
        .D(w_data_IBUF[14]),
        .Q(\registers_reg[9]__0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][15] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[15]),
        .Q(\registers_reg[9]__0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[1]),
        .Q(\registers_reg[9]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][15]_i_2_n_0 ),
        .D(w_data_IBUF[2]),
        .Q(\registers_reg[9]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[3]),
        .Q(\registers_reg[9]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[4]),
        .Q(\registers_reg[9]__0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[5]),
        .Q(\registers_reg[9]__0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][6]_i_1_n_0 ),
        .D(w_data_IBUF[6]),
        .Q(\registers_reg[9]__0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][7] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[7]),
        .Q(\registers_reg[9]__0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][8] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[8]),
        .Q(\registers_reg[9]__0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[9][9] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[9] ),
        .CLR(\registers[0][10]_i_1_n_0 ),
        .D(w_data_IBUF[9]),
        .Q(\registers_reg[9]__0 [9]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF \w_addr_IBUF[0]_inst 
       (.I(w_addr[0]),
        .O(w_addr_IBUF[0]));
  IBUF \w_addr_IBUF[1]_inst 
       (.I(w_addr[1]),
        .O(w_addr_IBUF[1]));
  IBUF \w_addr_IBUF[2]_inst 
       (.I(w_addr[2]),
        .O(w_addr_IBUF[2]));
  IBUF \w_addr_IBUF[3]_inst 
       (.I(w_addr[3]),
        .O(w_addr_IBUF[3]));
  IBUF \w_addr_IBUF[4]_inst 
       (.I(w_addr[4]),
        .O(w_addr_IBUF[4]));
  IBUF \w_data_IBUF[0]_inst 
       (.I(w_data[0]),
        .O(w_data_IBUF[0]));
  IBUF \w_data_IBUF[10]_inst 
       (.I(w_data[10]),
        .O(w_data_IBUF[10]));
  IBUF \w_data_IBUF[11]_inst 
       (.I(w_data[11]),
        .O(w_data_IBUF[11]));
  IBUF \w_data_IBUF[12]_inst 
       (.I(w_data[12]),
        .O(w_data_IBUF[12]));
  IBUF \w_data_IBUF[13]_inst 
       (.I(w_data[13]),
        .O(w_data_IBUF[13]));
  IBUF \w_data_IBUF[14]_inst 
       (.I(w_data[14]),
        .O(w_data_IBUF[14]));
  IBUF \w_data_IBUF[15]_inst 
       (.I(w_data[15]),
        .O(w_data_IBUF[15]));
  IBUF \w_data_IBUF[1]_inst 
       (.I(w_data[1]),
        .O(w_data_IBUF[1]));
  IBUF \w_data_IBUF[2]_inst 
       (.I(w_data[2]),
        .O(w_data_IBUF[2]));
  IBUF \w_data_IBUF[3]_inst 
       (.I(w_data[3]),
        .O(w_data_IBUF[3]));
  IBUF \w_data_IBUF[4]_inst 
       (.I(w_data[4]),
        .O(w_data_IBUF[4]));
  IBUF \w_data_IBUF[5]_inst 
       (.I(w_data[5]),
        .O(w_data_IBUF[5]));
  IBUF \w_data_IBUF[6]_inst 
       (.I(w_data[6]),
        .O(w_data_IBUF[6]));
  IBUF \w_data_IBUF[7]_inst 
       (.I(w_data[7]),
        .O(w_data_IBUF[7]));
  IBUF \w_data_IBUF[8]_inst 
       (.I(w_data[8]),
        .O(w_data_IBUF[8]));
  IBUF \w_data_IBUF[9]_inst 
       (.I(w_data[9]),
        .O(w_data_IBUF[9]));
  IBUF w_en_IBUF_inst
       (.I(w_en),
        .O(w_en_IBUF));
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
