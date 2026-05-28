// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Mar  6 12:21:10 2026
// Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR2/LR2.sim/sim_3/impl/timing/xsim/translator_structural_time_impl.v
// Design      : bistable_ctl
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "652967d0" *) 
(* NotValidForBitStream *)
module bistable_ctl
   (data,
    we,
    re,
    q);
  input data;
  input we;
  input re;
  output q;

  wire I0;
  wire data;
  wire data_IBUF;
  (* RTL_KEEP = "true" *) wire nq_int;
  wire q;
  wire q_OBUF;
  (* RTL_KEEP = "true" *) wire q_int;
  wire re;
  wire re_IBUF;
  wire we;
  wire we_IBUF;

initial begin
 $sdf_annotate("translator_structural_time_impl.sdf",,,,"tool_control");
end
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inv1
       (.I0(I0),
        .O(q_int));
  LUT3 #(
    .INIT(8'hAC)) 
    LUT1_inv1_i_1
       (.I0(data_IBUF),
        .I1(nq_int),
        .I2(we_IBUF),
        .O(I0));
  (* DONT_TOUCH *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    LUT1_inv2
       (.I0(q_int),
        .O(nq_int));
  IBUF data_IBUF_inst
       (.I(data),
        .O(data_IBUF));
  OBUF q_OBUF_inst
       (.I(q_OBUF),
        .O(q));
  LUT2 #(
    .INIT(4'h8)) 
    q_OBUF_inst_i_1
       (.I0(re_IBUF),
        .I1(q_int),
        .O(q_OBUF));
  IBUF re_IBUF_inst
       (.I(re),
        .O(re_IBUF));
  IBUF we_IBUF_inst
       (.I(we),
        .O(we_IBUF));
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
