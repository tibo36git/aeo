// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Sep 22 09:47:14 2018
// Host        : tibo36-Inspiron-5567 running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_2/TP_2.sim/sim_1/synth/func/xsim/calc_func_synth.v
// Design      : calc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module calc
   (sw,
    led,
    seg,
    an);
  input [15:0]sw;
  output [15:0]led;
  output [6:0]seg;
  output [3:0]an;

  wire [3:0]an;
  wire [15:0]led;
  wire [4:0]led_OBUF;
  wire \led_OBUF[4]_inst_i_2_n_0 ;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;

  OBUF \an_OBUF[0]_inst 
       (.I(1'b0),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(1'b0),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(1'b0),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b0),
        .O(an[3]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[12]),
        .O(led_OBUF[0]));
  OBUFT \led_OBUF[10]_inst 
       (.I(1'b0),
        .O(led[10]),
        .T(1'b1));
  OBUFT \led_OBUF[11]_inst 
       (.I(1'b0),
        .O(led[11]),
        .T(1'b1));
  OBUFT \led_OBUF[12]_inst 
       (.I(1'b0),
        .O(led[12]),
        .T(1'b1));
  OBUFT \led_OBUF[13]_inst 
       (.I(1'b0),
        .O(led[13]),
        .T(1'b1));
  OBUFT \led_OBUF[14]_inst 
       (.I(1'b0),
        .O(led[14]),
        .T(1'b1));
  OBUFT \led_OBUF[15]_inst 
       (.I(1'b0),
        .O(led[15]),
        .T(1'b1));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[13]),
        .I3(sw_IBUF[1]),
        .O(led_OBUF[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(sw_IBUF[12]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[2]),
        .O(led_OBUF[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .O(led_OBUF[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[4]_inst_i_2_n_0 ),
        .O(led_OBUF[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \led_OBUF[4]_inst_i_2 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[13]),
        .O(\led_OBUF[4]_inst_i_2_n_0 ));
  OBUFT \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]),
        .T(1'b1));
  OBUFT \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]),
        .T(1'b1));
  OBUFT \led_OBUF[7]_inst 
       (.I(1'b0),
        .O(led[7]),
        .T(1'b1));
  OBUFT \led_OBUF[8]_inst 
       (.I(1'b0),
        .O(led[8]),
        .T(1'b1));
  OBUFT \led_OBUF[9]_inst 
       (.I(1'b0),
        .O(led[9]),
        .T(1'b1));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  LUT6 #(
    .INIT(64'h0096000096696900)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .I3(led_OBUF[2]),
        .I4(led_OBUF[0]),
        .I5(led_OBUF[1]),
        .O(seg_OBUF[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  LUT6 #(
    .INIT(64'h96966900FF009600)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .I3(led_OBUF[2]),
        .I4(led_OBUF[1]),
        .I5(led_OBUF[0]),
        .O(seg_OBUF[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  LUT6 #(
    .INIT(64'h9696009600690000)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .I3(led_OBUF[0]),
        .I4(led_OBUF[1]),
        .I5(led_OBUF[2]),
        .O(seg_OBUF[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  LUT6 #(
    .INIT(64'hFF00009600696900)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .I3(led_OBUF[2]),
        .I4(led_OBUF[0]),
        .I5(led_OBUF[1]),
        .O(seg_OBUF[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  LUT6 #(
    .INIT(64'h696969FF00690000)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .I3(led_OBUF[1]),
        .I4(led_OBUF[2]),
        .I5(led_OBUF[0]),
        .O(seg_OBUF[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  LUT6 #(
    .INIT(64'h6969006996690000)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .I3(led_OBUF[2]),
        .I4(led_OBUF[0]),
        .I5(led_OBUF[1]),
        .O(seg_OBUF[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  LUT6 #(
    .INIT(64'h6900000000966969)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[3]),
        .I3(led_OBUF[0]),
        .I4(led_OBUF[2]),
        .I5(led_OBUF[1]),
        .O(seg_OBUF[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
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
