// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Apr  1 20:31:21 2026
// Host        : DESKTOP-5P1AISK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/renuxela/my-files/bsuir/6sem/POCP/LR3/LR3.sim/sim_6/synth/timing/xsim/tb_pwm_controller_time_synth.v
// Design      : pwm_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* COUNTER_WIDTH = "8" *) 
(* NotValidForBitStream *)
module pwm_controller
   (clk,
    rst_n,
    en,
    duty_cycle,
    pwm_out);
  input clk;
  input rst_n;
  input en;
  input [7:0]duty_cycle;
  output pwm_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]counter;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire [7:0]duty_cycle;
  wire [7:0]duty_cycle_IBUF;
  wire en;
  wire en_IBUF;
  wire pwm_out;
  wire pwm_out_OBUF;
  wire pwm_out_OBUF_inst_i_1_n_1;
  wire pwm_out_OBUF_inst_i_1_n_2;
  wire pwm_out_OBUF_inst_i_1_n_3;
  wire pwm_out_OBUF_inst_i_2_n_0;
  wire pwm_out_OBUF_inst_i_3_n_0;
  wire pwm_out_OBUF_inst_i_4_n_0;
  wire pwm_out_OBUF_inst_i_5_n_0;
  wire pwm_out_OBUF_inst_i_6_n_0;
  wire pwm_out_OBUF_inst_i_7_n_0;
  wire pwm_out_OBUF_inst_i_8_n_0;
  wire pwm_out_OBUF_inst_i_9_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire [3:0]NLW_pwm_out_OBUF_inst_i_1_O_UNCONNECTED;

initial begin
 $sdf_annotate("tb_pwm_controller_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .O(counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[4] ),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \counter[6]_i_1 
       (.I0(\counter[7]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[6] ),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC6CC)) 
    \counter[7]_i_1 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter[7]_i_3_n_0 ),
        .I3(\counter_reg_n_0_[5] ),
        .O(counter[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[7]_i_2 
       (.I0(rst_n_IBUF),
        .O(\counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter[7]_i_3 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .O(\counter[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .CLR(\counter[7]_i_2_n_0 ),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  IBUF \duty_cycle_IBUF[0]_inst 
       (.I(duty_cycle[0]),
        .O(duty_cycle_IBUF[0]));
  IBUF \duty_cycle_IBUF[1]_inst 
       (.I(duty_cycle[1]),
        .O(duty_cycle_IBUF[1]));
  IBUF \duty_cycle_IBUF[2]_inst 
       (.I(duty_cycle[2]),
        .O(duty_cycle_IBUF[2]));
  IBUF \duty_cycle_IBUF[3]_inst 
       (.I(duty_cycle[3]),
        .O(duty_cycle_IBUF[3]));
  IBUF \duty_cycle_IBUF[4]_inst 
       (.I(duty_cycle[4]),
        .O(duty_cycle_IBUF[4]));
  IBUF \duty_cycle_IBUF[5]_inst 
       (.I(duty_cycle[5]),
        .O(duty_cycle_IBUF[5]));
  IBUF \duty_cycle_IBUF[6]_inst 
       (.I(duty_cycle[6]),
        .O(duty_cycle_IBUF[6]));
  IBUF \duty_cycle_IBUF[7]_inst 
       (.I(duty_cycle[7]),
        .O(duty_cycle_IBUF[7]));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  OBUF pwm_out_OBUF_inst
       (.I(pwm_out_OBUF),
        .O(pwm_out));
  CARRY4 pwm_out_OBUF_inst_i_1
       (.CI(1'b0),
        .CO({pwm_out_OBUF,pwm_out_OBUF_inst_i_1_n_1,pwm_out_OBUF_inst_i_1_n_2,pwm_out_OBUF_inst_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out_OBUF_inst_i_2_n_0,pwm_out_OBUF_inst_i_3_n_0,pwm_out_OBUF_inst_i_4_n_0,pwm_out_OBUF_inst_i_5_n_0}),
        .O(NLW_pwm_out_OBUF_inst_i_1_O_UNCONNECTED[3:0]),
        .S({pwm_out_OBUF_inst_i_6_n_0,pwm_out_OBUF_inst_i_7_n_0,pwm_out_OBUF_inst_i_8_n_0,pwm_out_OBUF_inst_i_9_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_out_OBUF_inst_i_2
       (.I0(duty_cycle_IBUF[7]),
        .I1(\counter_reg_n_0_[7] ),
        .I2(duty_cycle_IBUF[6]),
        .I3(\counter_reg_n_0_[6] ),
        .O(pwm_out_OBUF_inst_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out_OBUF_inst_i_3
       (.I0(duty_cycle_IBUF[4]),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(duty_cycle_IBUF[5]),
        .O(pwm_out_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out_OBUF_inst_i_4
       (.I0(duty_cycle_IBUF[2]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(duty_cycle_IBUF[3]),
        .O(pwm_out_OBUF_inst_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out_OBUF_inst_i_5
       (.I0(duty_cycle_IBUF[0]),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(duty_cycle_IBUF[1]),
        .O(pwm_out_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out_OBUF_inst_i_6
       (.I0(duty_cycle_IBUF[6]),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(duty_cycle_IBUF[7]),
        .O(pwm_out_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out_OBUF_inst_i_7
       (.I0(\counter_reg_n_0_[4] ),
        .I1(duty_cycle_IBUF[4]),
        .I2(\counter_reg_n_0_[5] ),
        .I3(duty_cycle_IBUF[5]),
        .O(pwm_out_OBUF_inst_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out_OBUF_inst_i_8
       (.I0(\counter_reg_n_0_[2] ),
        .I1(duty_cycle_IBUF[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(duty_cycle_IBUF[3]),
        .O(pwm_out_OBUF_inst_i_8_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_out_OBUF_inst_i_9
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(duty_cycle_IBUF[1]),
        .I3(duty_cycle_IBUF[0]),
        .O(pwm_out_OBUF_inst_i_9_n_0));
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
