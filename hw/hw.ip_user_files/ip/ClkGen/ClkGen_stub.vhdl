-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Aug  7 15:10:26 2023
-- Host        : bocos-ro running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub c:/Temp/Nexys-A7/hw/proj/hw.gen/sources_1/ip/ClkGen/ClkGen_stub.vhdl
-- Design      : ClkGen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClkGen is
  Port ( 
    clk_100MHz_o : out STD_LOGIC;
    clk_200MHz_o : out STD_LOGIC;
    reset_i : in STD_LOGIC;
    locked_o : out STD_LOGIC;
    clk_100MHz_i : in STD_LOGIC
  );

end ClkGen;

architecture stub of ClkGen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100MHz_o,clk_200MHz_o,reset_i,locked_o,clk_100MHz_i";
begin
end;
