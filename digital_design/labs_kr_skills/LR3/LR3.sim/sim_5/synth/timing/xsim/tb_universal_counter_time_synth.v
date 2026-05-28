// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Apr  1 20:08:51 2026
// Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_5/synth/timing/xsim/tb_universal_counter_time_synth.v
// Design      : universal_counter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* N = "8" *) 
(* NotValidForBitStream *)
module universal_counter
   (clk,
    rst_n,
    en,
    mode,
    d_i,
    q);
  input clk;
  input rst_n;
  input en;
  input [2:0]mode;
  input [7:0]d_i;
  output [7:0]q;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]d_i;
  wire [7:0]d_i_IBUF;
  wire en;
  wire en_IBUF;
  wire [2:0]mode;
  wire [1:0]mode_IBUF;
  wire [7:0]p_0_in;
  wire [7:0]q;
  wire [7:0]q_OBUF;
  wire q_reg;
  wire \q_reg[7]_i_3_n_0 ;
  wire rst_n;
  wire rst_n_IBUF;

initial begin
 $sdf_annotate("tb_universal_counter_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \d_i_IBUF[0]_inst 
       (.I(d_i[0]),
        .O(d_i_IBUF[0]));
  IBUF \d_i_IBUF[1]_inst 
       (.I(d_i[1]),
        .O(d_i_IBUF[1]));
  IBUF \d_i_IBUF[2]_inst 
       (.I(d_i[2]),
        .O(d_i_IBUF[2]));
  IBUF \d_i_IBUF[3]_inst 
       (.I(d_i[3]),
        .O(d_i_IBUF[3]));
  IBUF \d_i_IBUF[4]_inst 
       (.I(d_i[4]),
        .O(d_i_IBUF[4]));
  IBUF \d_i_IBUF[5]_inst 
       (.I(d_i[5]),
        .O(d_i_IBUF[5]));
  IBUF \d_i_IBUF[6]_inst 
       (.I(d_i[6]),
        .O(d_i_IBUF[6]));
  IBUF \d_i_IBUF[7]_inst 
       (.I(d_i[7]),
        .O(d_i_IBUF[7]));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  IBUF \mode_IBUF[0]_inst 
       (.I(mode[0]),
        .O(mode_IBUF[0]));
  IBUF \mode_IBUF[1]_inst 
       (.I(mode[1]),
        .O(mode_IBUF[1]));
  OBUF \q_OBUF[0]_inst 
       (.I(q_OBUF[0]),
        .O(q[0]));
  OBUF \q_OBUF[1]_inst 
       (.I(q_OBUF[1]),
        .O(q[1]));
  OBUF \q_OBUF[2]_inst 
       (.I(q_OBUF[2]),
        .O(q[2]));
  OBUF \q_OBUF[3]_inst 
       (.I(q_OBUF[3]),
        .O(q[3]));
  OBUF \q_OBUF[4]_inst 
       (.I(q_OBUF[4]),
        .O(q[4]));
  OBUF \q_OBUF[5]_inst 
       (.I(q_OBUF[5]),
        .O(q[5]));
  OBUF \q_OBUF[6]_inst 
       (.I(q_OBUF[6]),
        .O(q[6]));
  OBUF \q_OBUF[7]_inst 
       (.I(q_OBUF[7]),
        .O(q[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \q_reg[0]_i_1 
       (.I0(q_OBUF[1]),
        .I1(mode_IBUF[0]),
        .I2(d_i_IBUF[0]),
        .I3(mode_IBUF[1]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q_reg[1]_i_1 
       (.I0(d_i_IBUF[1]),
        .I1(mode_IBUF[1]),
        .I2(q_OBUF[2]),
        .I3(mode_IBUF[0]),
        .I4(q_OBUF[0]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q_reg[2]_i_1 
       (.I0(d_i_IBUF[2]),
        .I1(mode_IBUF[1]),
        .I2(q_OBUF[3]),
        .I3(mode_IBUF[0]),
        .I4(q_OBUF[1]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q_reg[3]_i_1 
       (.I0(d_i_IBUF[3]),
        .I1(mode_IBUF[1]),
        .I2(q_OBUF[4]),
        .I3(mode_IBUF[0]),
        .I4(q_OBUF[2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q_reg[4]_i_1 
       (.I0(d_i_IBUF[4]),
        .I1(mode_IBUF[1]),
        .I2(q_OBUF[5]),
        .I3(mode_IBUF[0]),
        .I4(q_OBUF[3]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q_reg[5]_i_1 
       (.I0(d_i_IBUF[5]),
        .I1(mode_IBUF[1]),
        .I2(q_OBUF[6]),
        .I3(mode_IBUF[0]),
        .I4(q_OBUF[4]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q_reg[6]_i_1 
       (.I0(d_i_IBUF[6]),
        .I1(mode_IBUF[1]),
        .I2(q_OBUF[7]),
        .I3(mode_IBUF[0]),
        .I4(q_OBUF[5]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h2A)) 
    \q_reg[7]_i_1 
       (.I0(en_IBUF),
        .I1(mode_IBUF[0]),
        .I2(mode_IBUF[1]),
        .O(q_reg));
  LUT4 #(
    .INIT(16'h00E2)) 
    \q_reg[7]_i_2 
       (.I0(q_OBUF[6]),
        .I1(mode_IBUF[1]),
        .I2(d_i_IBUF[7]),
        .I3(mode_IBUF[0]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \q_reg[7]_i_3 
       (.I0(rst_n_IBUF),
        .O(\q_reg[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[0]),
        .Q(q_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[1]),
        .Q(q_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[2]),
        .Q(q_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[3]),
        .Q(q_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[4]),
        .Q(q_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[5]),
        .Q(q_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[6]),
        .Q(q_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(q_reg),
        .CLR(\q_reg[7]_i_3_n_0 ),
        .D(p_0_in[7]),
        .Q(q_OBUF[7]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
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
