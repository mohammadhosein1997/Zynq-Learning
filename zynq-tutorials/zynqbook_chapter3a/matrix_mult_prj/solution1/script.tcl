############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_mult_prj
set_top matrix_mult
add_files ./src/matrix_mult.h
add_files ./src/matrix_mult.cpp
add_files -tb src/matrix_mult_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter3a/matrix_mult.zip -rtl verilog -vivado_clock 10
source "./matrix_mult_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -flow syn -rtl verilog -format ip_catalog -output /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter3a/matrix_mult.zip
