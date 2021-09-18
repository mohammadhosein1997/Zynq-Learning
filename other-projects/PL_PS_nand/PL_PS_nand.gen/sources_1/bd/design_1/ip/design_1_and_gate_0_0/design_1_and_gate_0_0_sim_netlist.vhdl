-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Sep 17 19:43:52 2021
-- Host        : zynquser-PC running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/zynq-user/Industri-University_Course/PL_PS_nand/PL_PS_nand.gen/sources_1/bd/design_1/ip/design_1_and_gate_0_0/design_1_and_gate_0_0_sim_netlist.vhdl
-- Design      : design_1_and_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_and_gate_0_0 is
  port (
    din0 : in STD_LOGIC;
    din1 : in STD_LOGIC;
    dout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_and_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_and_gate_0_0 : entity is "design_1_and_gate_0_0,and_gate,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_and_gate_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_and_gate_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_and_gate_0_0 : entity is "and_gate,Vivado 2021.1";
end design_1_and_gate_0_0;

architecture STRUCTURE of design_1_and_gate_0_0 is
begin
dout_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => din0,
      I1 => din1,
      O => dout
    );
end STRUCTURE;
