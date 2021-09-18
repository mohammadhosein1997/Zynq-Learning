-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Sep 17 19:43:52 2021
-- Host        : zynquser-PC running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/zynq-user/Industri-University_Course/PL_PS_nand/PL_PS_nand.gen/sources_1/bd/design_1/ip/design_1_and_gate_0_0/design_1_and_gate_0_0_stub.vhdl
-- Design      : design_1_and_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_and_gate_0_0 is
  Port ( 
    din0 : in STD_LOGIC;
    din1 : in STD_LOGIC;
    dout : out STD_LOGIC
  );

end design_1_and_gate_0_0;

architecture stub of design_1_and_gate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "din0,din1,dout";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "and_gate,Vivado 2021.1";
begin
end;
