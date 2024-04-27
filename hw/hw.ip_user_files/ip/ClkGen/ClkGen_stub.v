// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Aug  7 15:10:26 2023
// Host        : bocos-ro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub c:/Temp/Nexys-A7/hw/proj/hw.gen/sources_1/ip/ClkGen/ClkGen_stub.v
// Design      : ClkGen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ClkGen(clk_100MHz_o, clk_200MHz_o, reset_i, locked_o, 
  clk_100MHz_i)
/* synthesis syn_black_box black_box_pad_pin="reset_i,locked_o,clk_100MHz_i" */
/* synthesis syn_force_seq_prim="clk_100MHz_o" */
/* synthesis syn_force_seq_prim="clk_200MHz_o" */;
  output clk_100MHz_o /* synthesis syn_isclock = 1 */;
  output clk_200MHz_o /* synthesis syn_isclock = 1 */;
  input reset_i;
  output locked_o;
  input clk_100MHz_i;
endmodule
