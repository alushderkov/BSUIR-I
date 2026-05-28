// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Apr  1 16:44:43 2026
// Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_1/synth/timing/xsim/tb_RS_LATCH_NAND_time_synth.v
// Design      : RS_LATCH_NAND
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* dont_touch = "true" *) 
(* NotValidForBitStream *)
module RS_LATCH_NAND
   (S,
    R,
    Q,
    nQ);
  input S;
  input R;
  output Q;
  output nQ;

  wire Q;
  wire Q_OBUF;
  wire R;
  wire R_IBUF;
  wire S;
  wire S_IBUF;
  wire nQ;
  wire nQ_OBUF;

initial begin
 $sdf_annotate("tb_RS_LATCH_NAND_time_synth.sdf",,,,"tool_control");
end
  (* DONT_TOUCH *) 
  (* INIT = "4'b0111" *) 
  xil_defaultlib_LUT2__2 G1
       (.I0(S_IBUF),
        .I1(nQ_OBUF),
        .O(Q_OBUF));
  (* DONT_TOUCH *) 
  (* INIT = "4'b0111" *) 
  xil_defaultlib_LUT2 G2
       (.I0(R_IBUF),
        .I1(Q_OBUF),
        .O(nQ_OBUF));
  OBUF Q_OBUF_inst
       (.I(Q_OBUF),
        .O(Q));
  IBUF R_IBUF_inst
       (.I(R),
        .O(R_IBUF));
  IBUF S_IBUF_inst
       (.I(S),
        .O(S_IBUF));
  OBUF nQ_OBUF_inst
       (.I(nQ_OBUF),
        .O(nQ));
endmodule

(* INIT = "4'b0111" *) (* dont_touch = "true" *) 
module xil_defaultlib_LUT2
   (I0,
    I1,
    O);
  input I0;
  input I1;
  output O;

  wire I0;
  wire I1;
  wire O;

  LUT2 #(
    .INIT(4'h7)) 
    O_INST_0
       (.I0(I0),
        .I1(I1),
        .O(O));
endmodule

(* INIT = "4'b0111" *) (* ORIG_REF_NAME = "xil_defaultlib_LUT2" *) (* dont_touch = "true" *) 
module xil_defaultlib_LUT2__2
   (I0,
    I1,
    O);
  input I0;
  input I1;
  output O;

  wire I0;
  wire I1;
  wire O;

  LUT2 #(
    .INIT(4'h7)) 
    O_INST_0
       (.I0(I0),
        .I1(I1),
        .O(O));
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
