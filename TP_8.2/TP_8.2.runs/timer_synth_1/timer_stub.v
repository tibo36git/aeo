// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Nov 22 13:57:19 2018
// Host        : tibo36-Inspiron-5567 running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_8.1/Basys3V6/Basys3V6.runs/timer_synth_1/timer_stub.v
// Design      : timer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module timer(clk_out1, clk_out2, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input clk_in1;
endmodule