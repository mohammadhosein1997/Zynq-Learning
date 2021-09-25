// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Sep 19 17:28:38 2021
// Host        : zynquser-PC running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter3a/matrix_mult_prj/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,matrix_mult,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "matrix_mult,Vivado 2021.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (a_ce0,
    a_ce1,
    b_ce0,
    b_ce1,
    prod_ce0,
    prod_we0,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_address0,
    a_q0,
    a_address1,
    a_q1,
    b_address0,
    b_q0,
    b_address1,
    b_q1,
    prod_address0,
    prod_d0);
  output a_ce0;
  output a_ce1;
  output b_ce0;
  output b_ce1;
  output prod_ce0;
  output prod_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef" *) output [4:0]a_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef" *) input [7:0]a_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address1, LAYERED_METADATA undef" *) output [4:0]a_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q1, LAYERED_METADATA undef" *) input [7:0]a_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef" *) output [4:0]b_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef" *) input [7:0]b_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address1, LAYERED_METADATA undef" *) output [4:0]b_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q1, LAYERED_METADATA undef" *) input [7:0]b_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 prod_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME prod_address0, LAYERED_METADATA undef" *) output [4:0]prod_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 prod_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME prod_d0, LAYERED_METADATA undef" *) output [15:0]prod_d0;

  wire [4:0]a_address0;
  wire [4:0]a_address1;
  wire a_ce0;
  wire a_ce1;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [4:0]b_address0;
  wire [4:0]b_address1;
  wire b_ce0;
  wire b_ce1;
  wire [7:0]b_q0;
  wire [7:0]b_q1;
  wire [4:0]prod_address0;
  wire prod_ce0;
  wire [15:0]prod_d0;
  wire prod_we0;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "3'b001" *) 
  (* ap_ST_fsm_pp0_stage1 = "3'b010" *) 
  (* ap_ST_fsm_pp0_stage2 = "3'b100" *) 
  bd_0_hls_inst_0_matrix_mult inst
       (.a_address0(a_address0),
        .a_address1(a_address1),
        .a_ce0(a_ce0),
        .a_ce1(a_ce1),
        .a_q0(a_q0),
        .a_q1(a_q1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_address0(b_address0),
        .b_address1(b_address1),
        .b_ce0(b_ce0),
        .b_ce1(b_ce1),
        .b_q0(b_q0),
        .b_q1(b_q1),
        .prod_address0(prod_address0),
        .prod_ce0(prod_ce0),
        .prod_d0(prod_d0),
        .prod_we0(prod_we0));
endmodule

(* ORIG_REF_NAME = "matrix_mult" *) (* ap_ST_fsm_pp0_stage0 = "3'b001" *) (* ap_ST_fsm_pp0_stage1 = "3'b010" *) 
(* ap_ST_fsm_pp0_stage2 = "3'b100" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0_matrix_mult
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_address0,
    a_ce0,
    a_q0,
    a_address1,
    a_ce1,
    a_q1,
    b_address0,
    b_ce0,
    b_q0,
    b_address1,
    b_ce1,
    b_q1,
    prod_address0,
    prod_ce0,
    prod_we0,
    prod_d0);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [4:0]a_address0;
  output a_ce0;
  input [7:0]a_q0;
  output [4:0]a_address1;
  output a_ce1;
  input [7:0]a_q1;
  output [4:0]b_address0;
  output b_ce0;
  input [7:0]b_q0;
  output [4:0]b_address1;
  output b_ce1;
  input [7:0]b_q1;
  output [4:0]prod_address0;
  output prod_ce0;
  output prod_we0;
  output [15:0]prod_d0;

  wire [4:0]a_address0;
  wire \a_address0[0]_INST_0_i_1_n_0 ;
  wire \a_address0[1]_INST_0_i_1_n_0 ;
  wire \a_address0[2]_INST_0_i_1_n_0 ;
  wire \a_address0[2]_INST_0_i_2_n_0 ;
  wire \a_address0[3]_INST_0_i_1_n_0 ;
  wire \a_address0[4]_INST_0_i_2_n_0 ;
  wire \a_address0[4]_INST_0_i_3_n_0 ;
  wire \a_address0[4]_INST_0_i_4_n_0 ;
  wire [4:0]a_address1;
  wire a_ce0;
  wire a_ce1;
  wire [7:0]a_q0;
  wire [7:0]a_q1;
  wire [2:1]add_ln12_fu_331_p2;
  wire [4:0]add_ln13_1_fu_465_p2;
  wire add_ln13_1_reg_6820;
  wire [9:0]add_ln16_2_fu_484_p2;
  wire [9:0]add_ln16_2_reg_692;
  wire \add_ln16_2_reg_692[3]_i_2_n_0 ;
  wire \add_ln16_2_reg_692[3]_i_3_n_0 ;
  wire \add_ln16_2_reg_692[3]_i_4_n_0 ;
  wire \add_ln16_2_reg_692[3]_i_5_n_0 ;
  wire \add_ln16_2_reg_692[7]_i_2_n_0 ;
  wire \add_ln16_2_reg_692[7]_i_3_n_0 ;
  wire \add_ln16_2_reg_692[7]_i_4_n_0 ;
  wire \add_ln16_2_reg_692[7]_i_5_n_0 ;
  wire \add_ln16_2_reg_692[9]_i_2_n_0 ;
  wire \add_ln16_2_reg_692_reg[3]_i_1_n_0 ;
  wire \add_ln16_2_reg_692_reg[3]_i_1_n_1 ;
  wire \add_ln16_2_reg_692_reg[3]_i_1_n_2 ;
  wire \add_ln16_2_reg_692_reg[3]_i_1_n_3 ;
  wire \add_ln16_2_reg_692_reg[7]_i_1_n_0 ;
  wire \add_ln16_2_reg_692_reg[7]_i_1_n_1 ;
  wire \add_ln16_2_reg_692_reg[7]_i_1_n_2 ;
  wire \add_ln16_2_reg_692_reg[7]_i_1_n_3 ;
  wire \add_ln16_2_reg_692_reg[9]_i_1_n_3 ;
  wire [10:0]add_ln16_3_fu_515_p2;
  wire [10:0]add_ln16_3_reg_697;
  wire \add_ln16_3_reg_697[10]_i_2_n_0 ;
  wire \add_ln16_3_reg_697[10]_i_3_n_0 ;
  wire \add_ln16_3_reg_697[10]_i_4_n_0 ;
  wire \add_ln16_3_reg_697[3]_i_2_n_0 ;
  wire \add_ln16_3_reg_697[3]_i_3_n_0 ;
  wire \add_ln16_3_reg_697[3]_i_4_n_0 ;
  wire \add_ln16_3_reg_697[3]_i_5_n_0 ;
  wire \add_ln16_3_reg_697[7]_i_2_n_0 ;
  wire \add_ln16_3_reg_697[7]_i_3_n_0 ;
  wire \add_ln16_3_reg_697[7]_i_4_n_0 ;
  wire \add_ln16_3_reg_697[7]_i_5_n_0 ;
  wire \add_ln16_3_reg_697_reg[10]_i_1_n_2 ;
  wire \add_ln16_3_reg_697_reg[10]_i_1_n_3 ;
  wire \add_ln16_3_reg_697_reg[3]_i_1_n_0 ;
  wire \add_ln16_3_reg_697_reg[3]_i_1_n_1 ;
  wire \add_ln16_3_reg_697_reg[3]_i_1_n_2 ;
  wire \add_ln16_3_reg_697_reg[3]_i_1_n_3 ;
  wire \add_ln16_3_reg_697_reg[7]_i_1_n_0 ;
  wire \add_ln16_3_reg_697_reg[7]_i_1_n_1 ;
  wire \add_ln16_3_reg_697_reg[7]_i_1_n_2 ;
  wire \add_ln16_3_reg_697_reg[7]_i_1_n_3 ;
  wire [8:0]add_ln16_4_reg_702;
  wire \add_ln16_4_reg_702[3]_i_2_n_0 ;
  wire \add_ln16_4_reg_702[3]_i_3_n_0 ;
  wire \add_ln16_4_reg_702[3]_i_4_n_0 ;
  wire \add_ln16_4_reg_702[3]_i_5_n_0 ;
  wire \add_ln16_4_reg_702[7]_i_2_n_0 ;
  wire \add_ln16_4_reg_702[7]_i_3_n_0 ;
  wire \add_ln16_4_reg_702[7]_i_4_n_0 ;
  wire \add_ln16_4_reg_702[7]_i_5_n_0 ;
  wire \add_ln16_4_reg_702[7]_i_6_n_0 ;
  wire \add_ln16_4_reg_702_reg[3]_i_1_n_0 ;
  wire \add_ln16_4_reg_702_reg[3]_i_1_n_1 ;
  wire \add_ln16_4_reg_702_reg[3]_i_1_n_2 ;
  wire \add_ln16_4_reg_702_reg[3]_i_1_n_3 ;
  wire \add_ln16_4_reg_702_reg[7]_i_1_n_0 ;
  wire \add_ln16_4_reg_702_reg[7]_i_1_n_1 ;
  wire \add_ln16_4_reg_702_reg[7]_i_1_n_2 ;
  wire \add_ln16_4_reg_702_reg[7]_i_1_n_3 ;
  wire \add_ln16_4_reg_702_reg[8]_i_2_n_3 ;
  wire [9:0]add_ln16_6_fu_537_p2;
  wire [9:0]add_ln16_6_reg_707;
  wire \add_ln16_6_reg_707[3]_i_10_n_0 ;
  wire \add_ln16_6_reg_707[3]_i_3_n_0 ;
  wire \add_ln16_6_reg_707[3]_i_4_n_0 ;
  wire \add_ln16_6_reg_707[3]_i_5_n_0 ;
  wire \add_ln16_6_reg_707[3]_i_6_n_0 ;
  wire \add_ln16_6_reg_707[3]_i_7_n_0 ;
  wire \add_ln16_6_reg_707[3]_i_8_n_0 ;
  wire \add_ln16_6_reg_707[3]_i_9_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_10_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_11_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_3_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_4_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_5_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_6_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_7_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_8_n_0 ;
  wire \add_ln16_6_reg_707[7]_i_9_n_0 ;
  wire \add_ln16_6_reg_707[9]_i_3_n_0 ;
  wire \add_ln16_6_reg_707_reg[3]_i_1_n_0 ;
  wire \add_ln16_6_reg_707_reg[3]_i_1_n_1 ;
  wire \add_ln16_6_reg_707_reg[3]_i_1_n_2 ;
  wire \add_ln16_6_reg_707_reg[3]_i_1_n_3 ;
  wire \add_ln16_6_reg_707_reg[3]_i_2_n_0 ;
  wire \add_ln16_6_reg_707_reg[3]_i_2_n_1 ;
  wire \add_ln16_6_reg_707_reg[3]_i_2_n_2 ;
  wire \add_ln16_6_reg_707_reg[3]_i_2_n_3 ;
  wire \add_ln16_6_reg_707_reg[7]_i_1_n_0 ;
  wire \add_ln16_6_reg_707_reg[7]_i_1_n_1 ;
  wire \add_ln16_6_reg_707_reg[7]_i_1_n_2 ;
  wire \add_ln16_6_reg_707_reg[7]_i_1_n_3 ;
  wire \add_ln16_6_reg_707_reg[7]_i_2_n_0 ;
  wire \add_ln16_6_reg_707_reg[7]_i_2_n_1 ;
  wire \add_ln16_6_reg_707_reg[7]_i_2_n_2 ;
  wire \add_ln16_6_reg_707_reg[7]_i_2_n_3 ;
  wire \add_ln16_6_reg_707_reg[9]_i_1_n_3 ;
  wire \add_ln16_6_reg_707_reg[9]_i_2_n_3 ;
  wire [8:0]add_ln16_fu_405_p2;
  wire [8:0]add_ln16_reg_662;
  wire add_ln16_reg_6620;
  wire \add_ln16_reg_662[3]_i_2_n_0 ;
  wire \add_ln16_reg_662[3]_i_3_n_0 ;
  wire \add_ln16_reg_662[3]_i_4_n_0 ;
  wire \add_ln16_reg_662[3]_i_5_n_0 ;
  wire \add_ln16_reg_662[7]_i_2_n_0 ;
  wire \add_ln16_reg_662[7]_i_3_n_0 ;
  wire \add_ln16_reg_662[7]_i_4_n_0 ;
  wire \add_ln16_reg_662[7]_i_5_n_0 ;
  wire \add_ln16_reg_662[7]_i_6_n_0 ;
  wire \add_ln16_reg_662_reg[3]_i_1_n_0 ;
  wire \add_ln16_reg_662_reg[3]_i_1_n_1 ;
  wire \add_ln16_reg_662_reg[3]_i_1_n_2 ;
  wire \add_ln16_reg_662_reg[3]_i_1_n_3 ;
  wire \add_ln16_reg_662_reg[7]_i_1_n_0 ;
  wire \add_ln16_reg_662_reg[7]_i_1_n_1 ;
  wire \add_ln16_reg_662_reg[7]_i_1_n_2 ;
  wire \add_ln16_reg_662_reg[7]_i_1_n_3 ;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm[2]_i_1_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [4:0]b_address0;
  wire \b_address0[2]_INST_0_i_2_n_0 ;
  wire \b_address0[3]_INST_0_i_2_n_0 ;
  wire [4:0]b_address1;
  wire b_ce1;
  wire [7:0]b_load_3_reg_687;
  wire b_load_3_reg_6870;
  wire [7:0]b_q0;
  wire [7:0]b_q1;
  wire flow_control_loop_pipe_U_n_0;
  wire flow_control_loop_pipe_U_n_1;
  wire flow_control_loop_pipe_U_n_2;
  wire flow_control_loop_pipe_U_n_24;
  wire flow_control_loop_pipe_U_n_25;
  wire flow_control_loop_pipe_U_n_26;
  wire flow_control_loop_pipe_U_n_3;
  wire flow_control_loop_pipe_U_n_30;
  wire flow_control_loop_pipe_U_n_32;
  wire flow_control_loop_pipe_U_n_4;
  wire flow_control_loop_pipe_U_n_5;
  wire flow_control_loop_pipe_U_n_6;
  wire flow_control_loop_pipe_U_n_7;
  wire flow_control_loop_pipe_U_n_8;
  wire flow_control_loop_pipe_U_n_9;
  wire i_fu_74;
  wire \i_fu_74[2]_i_2_n_0 ;
  wire \i_fu_74_reg_n_0_[0] ;
  wire \i_fu_74_reg_n_0_[1] ;
  wire \i_fu_74_reg_n_0_[2] ;
  wire icmp_ln10_fu_237_p2;
  wire \icmp_ln10_reg_598_reg_n_0_[0] ;
  wire \indvar_flatten_fu_78[4]_i_3_n_0 ;
  wire \indvar_flatten_fu_78_reg_n_0_[0] ;
  wire \indvar_flatten_fu_78_reg_n_0_[1] ;
  wire \indvar_flatten_fu_78_reg_n_0_[2] ;
  wire \indvar_flatten_fu_78_reg_n_0_[3] ;
  wire \indvar_flatten_fu_78_reg_n_0_[4] ;
  wire \j_fu_70_reg_n_0_[0] ;
  wire \j_fu_70_reg_n_0_[1] ;
  wire \j_fu_70_reg_n_0_[2] ;
  wire [4:4]p_shl5_cast_fu_414_p3;
  wire [4:0]prod_address0;
  wire prod_ce0;
  wire [15:0]\^prod_d0 ;
  wire \prod_d0[0]_INST_0_i_1_n_0 ;
  wire \prod_d0[0]_INST_0_i_1_n_1 ;
  wire \prod_d0[0]_INST_0_i_1_n_2 ;
  wire \prod_d0[0]_INST_0_i_1_n_3 ;
  wire \prod_d0[0]_INST_0_i_2_n_0 ;
  wire \prod_d0[0]_INST_0_i_3_n_0 ;
  wire \prod_d0[0]_INST_0_i_4_n_0 ;
  wire \prod_d0[0]_INST_0_i_5_n_0 ;
  wire \prod_d0[0]_INST_0_i_6_n_0 ;
  wire \prod_d0[0]_INST_0_i_7_n_0 ;
  wire \prod_d0[0]_INST_0_i_8_n_0 ;
  wire \prod_d0[0]_INST_0_i_9_n_0 ;
  wire \prod_d0[0]_INST_0_n_0 ;
  wire \prod_d0[0]_INST_0_n_1 ;
  wire \prod_d0[0]_INST_0_n_2 ;
  wire \prod_d0[0]_INST_0_n_3 ;
  wire \prod_d0[4]_INST_0_i_1_n_0 ;
  wire \prod_d0[4]_INST_0_i_1_n_1 ;
  wire \prod_d0[4]_INST_0_i_1_n_2 ;
  wire \prod_d0[4]_INST_0_i_1_n_3 ;
  wire \prod_d0[4]_INST_0_i_2_n_0 ;
  wire \prod_d0[4]_INST_0_i_3_n_0 ;
  wire \prod_d0[4]_INST_0_i_4_n_0 ;
  wire \prod_d0[4]_INST_0_i_5_n_0 ;
  wire \prod_d0[4]_INST_0_i_6_n_0 ;
  wire \prod_d0[4]_INST_0_i_7_n_0 ;
  wire \prod_d0[4]_INST_0_i_8_n_0 ;
  wire \prod_d0[4]_INST_0_i_9_n_0 ;
  wire \prod_d0[4]_INST_0_n_0 ;
  wire \prod_d0[4]_INST_0_n_1 ;
  wire \prod_d0[4]_INST_0_n_2 ;
  wire \prod_d0[4]_INST_0_n_3 ;
  wire \prod_d0[8]_INST_0_i_1_n_1 ;
  wire \prod_d0[8]_INST_0_i_1_n_3 ;
  wire \prod_d0[8]_INST_0_i_2_n_0 ;
  wire \prod_d0[8]_INST_0_i_3_n_0 ;
  wire \prod_d0[8]_INST_0_i_4_n_0 ;
  wire \prod_d0[8]_INST_0_i_5_n_0 ;
  wire \prod_d0[8]_INST_0_i_6_n_0 ;
  wire \prod_d0[8]_INST_0_i_7_n_0 ;
  wire \prod_d0[8]_INST_0_n_1 ;
  wire \prod_d0[8]_INST_0_n_2 ;
  wire \prod_d0[8]_INST_0_n_3 ;
  wire reg_193;
  wire \reg_193[0]_i_1_n_0 ;
  wire \reg_193[1]_i_1_n_0 ;
  wire \reg_193[2]_i_1_n_0 ;
  wire \reg_193[3]_i_1_n_0 ;
  wire \reg_193[4]_i_1_n_0 ;
  wire \reg_193[5]_i_1_n_0 ;
  wire \reg_193[6]_i_1_n_0 ;
  wire \reg_193[7]_i_2_n_0 ;
  wire \reg_193_reg_n_0_[0] ;
  wire \reg_193_reg_n_0_[1] ;
  wire \reg_193_reg_n_0_[2] ;
  wire \reg_193_reg_n_0_[3] ;
  wire \reg_193_reg_n_0_[4] ;
  wire \reg_193_reg_n_0_[5] ;
  wire \reg_193_reg_n_0_[6] ;
  wire \reg_193_reg_n_0_[7] ;
  wire [1:1]select_ln10_1_fu_290_p3;
  wire select_ln10_1_reg_6070;
  wire \select_ln10_1_reg_607[2]_i_1_n_0 ;
  wire [4:0]select_ln10_2_reg_613;
  wire [2:0]select_ln10_reg_602;
  wire [7:0]sext_ln16_10_fu_533_p1;
  wire [9:0]sext_ln16_12_fu_562_p1;
  wire [8:0]sext_ln16_6_fu_480_p1;
  wire [2:0]zext_ln16_7_reg_646;
  wire [3:1]\NLW_add_ln16_2_reg_692_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_2_reg_692_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_3_reg_697_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_add_ln16_3_reg_697_reg[10]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_add_ln16_4_reg_702_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln16_4_reg_702_reg[8]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_add_ln16_6_reg_707_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_add_ln16_6_reg_707_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_add_ln16_6_reg_707_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_add_ln16_6_reg_707_reg[9]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_add_ln16_reg_662_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_add_ln16_reg_662_reg[8]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_prod_d0[8]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_prod_d0[8]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_prod_d0[8]_INST_0_i_1_O_UNCONNECTED ;

  assign ap_ready = ap_done;
  assign b_ce0 = a_ce0;
  assign prod_d0[15] = \^prod_d0 [15];
  assign prod_d0[14] = \^prod_d0 [15];
  assign prod_d0[13] = \^prod_d0 [15];
  assign prod_d0[12] = \^prod_d0 [15];
  assign prod_d0[11] = \^prod_d0 [15];
  assign prod_d0[10:0] = \^prod_d0 [10:0];
  assign prod_we0 = prod_ce0;
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \a_address0[0]_INST_0_i_1 
       (.I0(\j_fu_70_reg_n_0_[2] ),
        .I1(\j_fu_70_reg_n_0_[1] ),
        .I2(\j_fu_70_reg_n_0_[0] ),
        .O(\a_address0[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \a_address0[1]_INST_0_i_1 
       (.I0(\i_fu_74_reg_n_0_[1] ),
        .I1(\j_fu_70_reg_n_0_[2] ),
        .I2(\j_fu_70_reg_n_0_[1] ),
        .I3(\j_fu_70_reg_n_0_[0] ),
        .I4(\i_fu_74_reg_n_0_[0] ),
        .O(\a_address0[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6656666666966666)) 
    \a_address0[2]_INST_0_i_1 
       (.I0(\i_fu_74_reg_n_0_[2] ),
        .I1(\i_fu_74_reg_n_0_[0] ),
        .I2(\j_fu_70_reg_n_0_[0] ),
        .I3(\j_fu_70_reg_n_0_[1] ),
        .I4(\j_fu_70_reg_n_0_[2] ),
        .I5(\i_fu_74_reg_n_0_[1] ),
        .O(\a_address0[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \a_address0[2]_INST_0_i_2 
       (.I0(select_ln10_2_reg_613[1]),
        .I1(select_ln10_2_reg_613[0]),
        .I2(ap_CS_fsm_pp0_stage2),
        .O(\a_address0[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7717777788E88888)) 
    \a_address0[3]_INST_0_i_1 
       (.I0(\i_fu_74_reg_n_0_[2] ),
        .I1(\i_fu_74_reg_n_0_[0] ),
        .I2(\j_fu_70_reg_n_0_[2] ),
        .I3(\j_fu_70_reg_n_0_[1] ),
        .I4(\j_fu_70_reg_n_0_[0] ),
        .I5(\i_fu_74_reg_n_0_[1] ),
        .O(\a_address0[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400A2AAAAAAAAAA)) 
    \a_address0[4]_INST_0_i_2 
       (.I0(\i_fu_74_reg_n_0_[2] ),
        .I1(\j_fu_70_reg_n_0_[2] ),
        .I2(\j_fu_70_reg_n_0_[1] ),
        .I3(\j_fu_70_reg_n_0_[0] ),
        .I4(\i_fu_74_reg_n_0_[0] ),
        .I5(\i_fu_74_reg_n_0_[1] ),
        .O(\a_address0[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \a_address0[4]_INST_0_i_3 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(select_ln10_2_reg_613[0]),
        .I2(select_ln10_2_reg_613[1]),
        .I3(select_ln10_2_reg_613[2]),
        .O(\a_address0[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a_address0[4]_INST_0_i_4 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_CS_fsm_pp0_stage2),
        .O(\a_address0[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \a_address1[0]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(select_ln10_2_reg_613[0]),
        .O(a_address1[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \a_address1[1]_INST_0 
       (.I0(select_ln10_2_reg_613[1]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(select_ln10_2_reg_613[0]),
        .O(a_address1[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h556A)) 
    \a_address1[2]_INST_0 
       (.I0(select_ln10_2_reg_613[2]),
        .I1(select_ln10_2_reg_613[0]),
        .I2(select_ln10_2_reg_613[1]),
        .I3(ap_CS_fsm_pp0_stage2),
        .O(a_address1[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h5666AAAA)) 
    \a_address1[3]_INST_0 
       (.I0(select_ln10_2_reg_613[3]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(select_ln10_2_reg_613[1]),
        .I3(select_ln10_2_reg_613[0]),
        .I4(select_ln10_2_reg_613[2]),
        .O(a_address1[3]));
  LUT6 #(
    .INIT(64'h6A6A6A6A6AAAAAAA)) 
    \a_address1[4]_INST_0 
       (.I0(select_ln10_2_reg_613[4]),
        .I1(select_ln10_2_reg_613[3]),
        .I2(select_ln10_2_reg_613[2]),
        .I3(select_ln10_2_reg_613[0]),
        .I4(select_ln10_2_reg_613[1]),
        .I5(ap_CS_fsm_pp0_stage2),
        .O(a_address1[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    a_ce1_INST_0
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .O(a_ce1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln13_1_reg_682[0]_i_1 
       (.I0(select_ln10_2_reg_613[0]),
        .I1(zext_ln16_7_reg_646[0]),
        .O(add_ln13_1_fu_465_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \add_ln13_1_reg_682[1]_i_1 
       (.I0(zext_ln16_7_reg_646[1]),
        .I1(select_ln10_2_reg_613[0]),
        .I2(zext_ln16_7_reg_646[0]),
        .I3(select_ln10_2_reg_613[1]),
        .O(add_ln13_1_fu_465_p2[1]));
  LUT6 #(
    .INIT(64'h344CCBB3CBB3344C)) 
    \add_ln13_1_reg_682[2]_i_1 
       (.I0(zext_ln16_7_reg_646[0]),
        .I1(select_ln10_2_reg_613[0]),
        .I2(zext_ln16_7_reg_646[1]),
        .I3(select_ln10_2_reg_613[1]),
        .I4(p_shl5_cast_fu_414_p3),
        .I5(zext_ln16_7_reg_646[2]),
        .O(add_ln13_1_fu_465_p2[2]));
  LUT6 #(
    .INIT(64'hBD555522552242AA)) 
    \add_ln13_1_reg_682[3]_i_1 
       (.I0(select_ln10_2_reg_613[1]),
        .I1(zext_ln16_7_reg_646[1]),
        .I2(zext_ln16_7_reg_646[0]),
        .I3(select_ln10_2_reg_613[0]),
        .I4(zext_ln16_7_reg_646[2]),
        .I5(p_shl5_cast_fu_414_p3),
        .O(add_ln13_1_fu_465_p2[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln13_1_reg_682[4]_i_1 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .O(add_ln13_1_reg_6820));
  LUT6 #(
    .INIT(64'h4666626262626A2A)) 
    \add_ln13_1_reg_682[4]_i_2 
       (.I0(p_shl5_cast_fu_414_p3),
        .I1(select_ln10_2_reg_613[1]),
        .I2(select_ln10_2_reg_613[0]),
        .I3(zext_ln16_7_reg_646[0]),
        .I4(zext_ln16_7_reg_646[2]),
        .I5(zext_ln16_7_reg_646[1]),
        .O(add_ln13_1_fu_465_p2[4]));
  FDRE \add_ln13_1_reg_682_reg[0] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln13_1_fu_465_p2[0]),
        .Q(prod_address0[0]),
        .R(1'b0));
  FDRE \add_ln13_1_reg_682_reg[1] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln13_1_fu_465_p2[1]),
        .Q(prod_address0[1]),
        .R(1'b0));
  FDRE \add_ln13_1_reg_682_reg[2] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln13_1_fu_465_p2[2]),
        .Q(prod_address0[2]),
        .R(1'b0));
  FDRE \add_ln13_1_reg_682_reg[3] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln13_1_fu_465_p2[3]),
        .Q(prod_address0[3]),
        .R(1'b0));
  FDRE \add_ln13_1_reg_682_reg[4] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln13_1_fu_465_p2[4]),
        .Q(prod_address0[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[3]_i_2 
       (.I0(sext_ln16_6_fu_480_p1[3]),
        .I1(a_q1[3]),
        .O(\add_ln16_2_reg_692[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[3]_i_3 
       (.I0(sext_ln16_6_fu_480_p1[2]),
        .I1(a_q1[2]),
        .O(\add_ln16_2_reg_692[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[3]_i_4 
       (.I0(sext_ln16_6_fu_480_p1[1]),
        .I1(a_q1[1]),
        .O(\add_ln16_2_reg_692[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[3]_i_5 
       (.I0(sext_ln16_6_fu_480_p1[0]),
        .I1(a_q1[0]),
        .O(\add_ln16_2_reg_692[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[7]_i_2 
       (.I0(a_q1[7]),
        .I1(sext_ln16_6_fu_480_p1[7]),
        .O(\add_ln16_2_reg_692[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[7]_i_3 
       (.I0(sext_ln16_6_fu_480_p1[6]),
        .I1(a_q1[6]),
        .O(\add_ln16_2_reg_692[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[7]_i_4 
       (.I0(sext_ln16_6_fu_480_p1[5]),
        .I1(a_q1[5]),
        .O(\add_ln16_2_reg_692[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_2_reg_692[7]_i_5 
       (.I0(sext_ln16_6_fu_480_p1[4]),
        .I1(a_q1[4]),
        .O(\add_ln16_2_reg_692[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln16_2_reg_692[9]_i_2 
       (.I0(a_q1[7]),
        .I1(\add_ln16_4_reg_702_reg[8]_i_2_n_3 ),
        .O(\add_ln16_2_reg_692[9]_i_2_n_0 ));
  FDRE \add_ln16_2_reg_692_reg[0] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[0]),
        .Q(add_ln16_2_reg_692[0]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_692_reg[1] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[1]),
        .Q(add_ln16_2_reg_692[1]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_692_reg[2] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[2]),
        .Q(add_ln16_2_reg_692[2]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_692_reg[3] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[3]),
        .Q(add_ln16_2_reg_692[3]),
        .R(1'b0));
  CARRY4 \add_ln16_2_reg_692_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_2_reg_692_reg[3]_i_1_n_0 ,\add_ln16_2_reg_692_reg[3]_i_1_n_1 ,\add_ln16_2_reg_692_reg[3]_i_1_n_2 ,\add_ln16_2_reg_692_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_6_fu_480_p1[3:0]),
        .O(add_ln16_2_fu_484_p2[3:0]),
        .S({\add_ln16_2_reg_692[3]_i_2_n_0 ,\add_ln16_2_reg_692[3]_i_3_n_0 ,\add_ln16_2_reg_692[3]_i_4_n_0 ,\add_ln16_2_reg_692[3]_i_5_n_0 }));
  FDRE \add_ln16_2_reg_692_reg[4] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[4]),
        .Q(add_ln16_2_reg_692[4]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_692_reg[5] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[5]),
        .Q(add_ln16_2_reg_692[5]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_692_reg[6] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[6]),
        .Q(add_ln16_2_reg_692[6]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_692_reg[7] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[7]),
        .Q(add_ln16_2_reg_692[7]),
        .R(1'b0));
  CARRY4 \add_ln16_2_reg_692_reg[7]_i_1 
       (.CI(\add_ln16_2_reg_692_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_2_reg_692_reg[7]_i_1_n_0 ,\add_ln16_2_reg_692_reg[7]_i_1_n_1 ,\add_ln16_2_reg_692_reg[7]_i_1_n_2 ,\add_ln16_2_reg_692_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({a_q1[7],sext_ln16_6_fu_480_p1[6:4]}),
        .O(add_ln16_2_fu_484_p2[7:4]),
        .S({\add_ln16_2_reg_692[7]_i_2_n_0 ,\add_ln16_2_reg_692[7]_i_3_n_0 ,\add_ln16_2_reg_692[7]_i_4_n_0 ,\add_ln16_2_reg_692[7]_i_5_n_0 }));
  FDRE \add_ln16_2_reg_692_reg[8] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[8]),
        .Q(add_ln16_2_reg_692[8]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_692_reg[9] 
       (.C(ap_clk),
        .CE(add_ln13_1_reg_6820),
        .D(add_ln16_2_fu_484_p2[9]),
        .Q(add_ln16_2_reg_692[9]),
        .R(1'b0));
  CARRY4 \add_ln16_2_reg_692_reg[9]_i_1 
       (.CI(\add_ln16_2_reg_692_reg[7]_i_1_n_0 ),
        .CO({\NLW_add_ln16_2_reg_692_reg[9]_i_1_CO_UNCONNECTED [3:1],\add_ln16_2_reg_692_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\add_ln16_4_reg_702_reg[8]_i_2_n_3 }),
        .O({\NLW_add_ln16_2_reg_692_reg[9]_i_1_O_UNCONNECTED [3:2],add_ln16_2_fu_484_p2[9:8]}),
        .S({1'b0,1'b0,1'b1,\add_ln16_2_reg_692[9]_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_3_reg_697[10]_i_2 
       (.I0(add_ln16_reg_662[8]),
        .O(\add_ln16_3_reg_697[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[10]_i_3 
       (.I0(add_ln16_reg_662[8]),
        .I1(add_ln16_2_reg_692[9]),
        .O(\add_ln16_3_reg_697[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[10]_i_4 
       (.I0(add_ln16_reg_662[8]),
        .I1(add_ln16_2_reg_692[8]),
        .O(\add_ln16_3_reg_697[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[3]_i_2 
       (.I0(add_ln16_2_reg_692[3]),
        .I1(add_ln16_reg_662[3]),
        .O(\add_ln16_3_reg_697[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[3]_i_3 
       (.I0(add_ln16_2_reg_692[2]),
        .I1(add_ln16_reg_662[2]),
        .O(\add_ln16_3_reg_697[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[3]_i_4 
       (.I0(add_ln16_2_reg_692[1]),
        .I1(add_ln16_reg_662[1]),
        .O(\add_ln16_3_reg_697[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[3]_i_5 
       (.I0(add_ln16_2_reg_692[0]),
        .I1(add_ln16_reg_662[0]),
        .O(\add_ln16_3_reg_697[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[7]_i_2 
       (.I0(add_ln16_2_reg_692[7]),
        .I1(add_ln16_reg_662[7]),
        .O(\add_ln16_3_reg_697[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[7]_i_3 
       (.I0(add_ln16_2_reg_692[6]),
        .I1(add_ln16_reg_662[6]),
        .O(\add_ln16_3_reg_697[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[7]_i_4 
       (.I0(add_ln16_2_reg_692[5]),
        .I1(add_ln16_reg_662[5]),
        .O(\add_ln16_3_reg_697[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_3_reg_697[7]_i_5 
       (.I0(add_ln16_2_reg_692[4]),
        .I1(add_ln16_reg_662[4]),
        .O(\add_ln16_3_reg_697[7]_i_5_n_0 ));
  FDRE \add_ln16_3_reg_697_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[0]),
        .Q(add_ln16_3_reg_697[0]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_697_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[10]),
        .Q(add_ln16_3_reg_697[10]),
        .R(1'b0));
  CARRY4 \add_ln16_3_reg_697_reg[10]_i_1 
       (.CI(\add_ln16_3_reg_697_reg[7]_i_1_n_0 ),
        .CO({\NLW_add_ln16_3_reg_697_reg[10]_i_1_CO_UNCONNECTED [3:2],\add_ln16_3_reg_697_reg[10]_i_1_n_2 ,\add_ln16_3_reg_697_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\add_ln16_3_reg_697[10]_i_2_n_0 ,add_ln16_reg_662[8]}),
        .O({\NLW_add_ln16_3_reg_697_reg[10]_i_1_O_UNCONNECTED [3],add_ln16_3_fu_515_p2[10:8]}),
        .S({1'b0,1'b1,\add_ln16_3_reg_697[10]_i_3_n_0 ,\add_ln16_3_reg_697[10]_i_4_n_0 }));
  FDRE \add_ln16_3_reg_697_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[1]),
        .Q(add_ln16_3_reg_697[1]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_697_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[2]),
        .Q(add_ln16_3_reg_697[2]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_697_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[3]),
        .Q(add_ln16_3_reg_697[3]),
        .R(1'b0));
  CARRY4 \add_ln16_3_reg_697_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_3_reg_697_reg[3]_i_1_n_0 ,\add_ln16_3_reg_697_reg[3]_i_1_n_1 ,\add_ln16_3_reg_697_reg[3]_i_1_n_2 ,\add_ln16_3_reg_697_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_2_reg_692[3:0]),
        .O(add_ln16_3_fu_515_p2[3:0]),
        .S({\add_ln16_3_reg_697[3]_i_2_n_0 ,\add_ln16_3_reg_697[3]_i_3_n_0 ,\add_ln16_3_reg_697[3]_i_4_n_0 ,\add_ln16_3_reg_697[3]_i_5_n_0 }));
  FDRE \add_ln16_3_reg_697_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[4]),
        .Q(add_ln16_3_reg_697[4]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_697_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[5]),
        .Q(add_ln16_3_reg_697[5]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_697_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[6]),
        .Q(add_ln16_3_reg_697[6]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_697_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[7]),
        .Q(add_ln16_3_reg_697[7]),
        .R(1'b0));
  CARRY4 \add_ln16_3_reg_697_reg[7]_i_1 
       (.CI(\add_ln16_3_reg_697_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_3_reg_697_reg[7]_i_1_n_0 ,\add_ln16_3_reg_697_reg[7]_i_1_n_1 ,\add_ln16_3_reg_697_reg[7]_i_1_n_2 ,\add_ln16_3_reg_697_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_2_reg_692[7:4]),
        .O(add_ln16_3_fu_515_p2[7:4]),
        .S({\add_ln16_3_reg_697[7]_i_2_n_0 ,\add_ln16_3_reg_697[7]_i_3_n_0 ,\add_ln16_3_reg_697[7]_i_4_n_0 ,\add_ln16_3_reg_697[7]_i_5_n_0 }));
  FDRE \add_ln16_3_reg_697_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[8]),
        .Q(add_ln16_3_reg_697[8]),
        .R(1'b0));
  FDRE \add_ln16_3_reg_697_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_3_fu_515_p2[9]),
        .Q(add_ln16_3_reg_697[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[3]_i_2 
       (.I0(\reg_193_reg_n_0_[3] ),
        .I1(a_q0[3]),
        .O(\add_ln16_4_reg_702[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[3]_i_3 
       (.I0(\reg_193_reg_n_0_[2] ),
        .I1(a_q0[2]),
        .O(\add_ln16_4_reg_702[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[3]_i_4 
       (.I0(\reg_193_reg_n_0_[1] ),
        .I1(a_q0[1]),
        .O(\add_ln16_4_reg_702[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[3]_i_5 
       (.I0(\reg_193_reg_n_0_[0] ),
        .I1(a_q0[0]),
        .O(\add_ln16_4_reg_702[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_4_reg_702[7]_i_2 
       (.I0(\reg_193_reg_n_0_[7] ),
        .O(\add_ln16_4_reg_702[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[7]_i_3 
       (.I0(\reg_193_reg_n_0_[7] ),
        .I1(a_q0[7]),
        .O(\add_ln16_4_reg_702[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[7]_i_4 
       (.I0(\reg_193_reg_n_0_[6] ),
        .I1(a_q0[6]),
        .O(\add_ln16_4_reg_702[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[7]_i_5 
       (.I0(\reg_193_reg_n_0_[5] ),
        .I1(a_q0[5]),
        .O(\add_ln16_4_reg_702[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_4_reg_702[7]_i_6 
       (.I0(\reg_193_reg_n_0_[4] ),
        .I1(a_q0[4]),
        .O(\add_ln16_4_reg_702[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_4_reg_702[8]_i_1 
       (.I0(\add_ln16_4_reg_702_reg[8]_i_2_n_3 ),
        .O(sext_ln16_6_fu_480_p1[8]));
  FDRE \add_ln16_4_reg_702_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[0]),
        .Q(add_ln16_4_reg_702[0]),
        .R(1'b0));
  FDRE \add_ln16_4_reg_702_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[1]),
        .Q(add_ln16_4_reg_702[1]),
        .R(1'b0));
  FDRE \add_ln16_4_reg_702_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[2]),
        .Q(add_ln16_4_reg_702[2]),
        .R(1'b0));
  FDRE \add_ln16_4_reg_702_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[3]),
        .Q(add_ln16_4_reg_702[3]),
        .R(1'b0));
  CARRY4 \add_ln16_4_reg_702_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_4_reg_702_reg[3]_i_1_n_0 ,\add_ln16_4_reg_702_reg[3]_i_1_n_1 ,\add_ln16_4_reg_702_reg[3]_i_1_n_2 ,\add_ln16_4_reg_702_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_193_reg_n_0_[3] ,\reg_193_reg_n_0_[2] ,\reg_193_reg_n_0_[1] ,\reg_193_reg_n_0_[0] }),
        .O(sext_ln16_6_fu_480_p1[3:0]),
        .S({\add_ln16_4_reg_702[3]_i_2_n_0 ,\add_ln16_4_reg_702[3]_i_3_n_0 ,\add_ln16_4_reg_702[3]_i_4_n_0 ,\add_ln16_4_reg_702[3]_i_5_n_0 }));
  FDRE \add_ln16_4_reg_702_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[4]),
        .Q(add_ln16_4_reg_702[4]),
        .R(1'b0));
  FDRE \add_ln16_4_reg_702_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[5]),
        .Q(add_ln16_4_reg_702[5]),
        .R(1'b0));
  FDRE \add_ln16_4_reg_702_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[6]),
        .Q(add_ln16_4_reg_702[6]),
        .R(1'b0));
  FDRE \add_ln16_4_reg_702_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[7]),
        .Q(add_ln16_4_reg_702[7]),
        .R(1'b0));
  CARRY4 \add_ln16_4_reg_702_reg[7]_i_1 
       (.CI(\add_ln16_4_reg_702_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_4_reg_702_reg[7]_i_1_n_0 ,\add_ln16_4_reg_702_reg[7]_i_1_n_1 ,\add_ln16_4_reg_702_reg[7]_i_1_n_2 ,\add_ln16_4_reg_702_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_4_reg_702[7]_i_2_n_0 ,\reg_193_reg_n_0_[6] ,\reg_193_reg_n_0_[5] ,\reg_193_reg_n_0_[4] }),
        .O(sext_ln16_6_fu_480_p1[7:4]),
        .S({\add_ln16_4_reg_702[7]_i_3_n_0 ,\add_ln16_4_reg_702[7]_i_4_n_0 ,\add_ln16_4_reg_702[7]_i_5_n_0 ,\add_ln16_4_reg_702[7]_i_6_n_0 }));
  FDRE \add_ln16_4_reg_702_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(sext_ln16_6_fu_480_p1[8]),
        .Q(add_ln16_4_reg_702[8]),
        .R(1'b0));
  CARRY4 \add_ln16_4_reg_702_reg[8]_i_2 
       (.CI(\add_ln16_4_reg_702_reg[7]_i_1_n_0 ),
        .CO({\NLW_add_ln16_4_reg_702_reg[8]_i_2_CO_UNCONNECTED [3:1],\add_ln16_4_reg_702_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_add_ln16_4_reg_702_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_10 
       (.I0(a_q1[0]),
        .I1(b_q0[0]),
        .O(\add_ln16_6_reg_707[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_3 
       (.I0(sext_ln16_10_fu_533_p1[3]),
        .I1(b_load_3_reg_687[3]),
        .O(\add_ln16_6_reg_707[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_4 
       (.I0(sext_ln16_10_fu_533_p1[2]),
        .I1(b_load_3_reg_687[2]),
        .O(\add_ln16_6_reg_707[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_5 
       (.I0(sext_ln16_10_fu_533_p1[1]),
        .I1(b_load_3_reg_687[1]),
        .O(\add_ln16_6_reg_707[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_6 
       (.I0(sext_ln16_10_fu_533_p1[0]),
        .I1(b_load_3_reg_687[0]),
        .O(\add_ln16_6_reg_707[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_7 
       (.I0(a_q1[3]),
        .I1(b_q0[3]),
        .O(\add_ln16_6_reg_707[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_8 
       (.I0(a_q1[2]),
        .I1(b_q0[2]),
        .O(\add_ln16_6_reg_707[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[3]_i_9 
       (.I0(a_q1[1]),
        .I1(b_q0[1]),
        .O(\add_ln16_6_reg_707[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_10 
       (.I0(a_q1[5]),
        .I1(b_q0[5]),
        .O(\add_ln16_6_reg_707[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_11 
       (.I0(a_q1[4]),
        .I1(b_q0[4]),
        .O(\add_ln16_6_reg_707[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_3 
       (.I0(b_load_3_reg_687[7]),
        .I1(sext_ln16_10_fu_533_p1[7]),
        .O(\add_ln16_6_reg_707[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_4 
       (.I0(sext_ln16_10_fu_533_p1[6]),
        .I1(b_load_3_reg_687[6]),
        .O(\add_ln16_6_reg_707[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_5 
       (.I0(sext_ln16_10_fu_533_p1[5]),
        .I1(b_load_3_reg_687[5]),
        .O(\add_ln16_6_reg_707[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_6 
       (.I0(sext_ln16_10_fu_533_p1[4]),
        .I1(b_load_3_reg_687[4]),
        .O(\add_ln16_6_reg_707[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_6_reg_707[7]_i_7 
       (.I0(a_q1[7]),
        .O(\add_ln16_6_reg_707[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_8 
       (.I0(a_q1[7]),
        .I1(b_q0[7]),
        .O(\add_ln16_6_reg_707[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_6_reg_707[7]_i_9 
       (.I0(a_q1[6]),
        .I1(b_q0[6]),
        .O(\add_ln16_6_reg_707[7]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln16_6_reg_707[9]_i_3 
       (.I0(b_load_3_reg_687[7]),
        .I1(\add_ln16_6_reg_707_reg[9]_i_2_n_3 ),
        .O(\add_ln16_6_reg_707[9]_i_3_n_0 ));
  FDRE \add_ln16_6_reg_707_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[0]),
        .Q(add_ln16_6_reg_707[0]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_707_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[1]),
        .Q(add_ln16_6_reg_707[1]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_707_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[2]),
        .Q(add_ln16_6_reg_707[2]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_707_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[3]),
        .Q(add_ln16_6_reg_707[3]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_707_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_6_reg_707_reg[3]_i_1_n_0 ,\add_ln16_6_reg_707_reg[3]_i_1_n_1 ,\add_ln16_6_reg_707_reg[3]_i_1_n_2 ,\add_ln16_6_reg_707_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_10_fu_533_p1[3:0]),
        .O(add_ln16_6_fu_537_p2[3:0]),
        .S({\add_ln16_6_reg_707[3]_i_3_n_0 ,\add_ln16_6_reg_707[3]_i_4_n_0 ,\add_ln16_6_reg_707[3]_i_5_n_0 ,\add_ln16_6_reg_707[3]_i_6_n_0 }));
  CARRY4 \add_ln16_6_reg_707_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\add_ln16_6_reg_707_reg[3]_i_2_n_0 ,\add_ln16_6_reg_707_reg[3]_i_2_n_1 ,\add_ln16_6_reg_707_reg[3]_i_2_n_2 ,\add_ln16_6_reg_707_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(a_q1[3:0]),
        .O(sext_ln16_10_fu_533_p1[3:0]),
        .S({\add_ln16_6_reg_707[3]_i_7_n_0 ,\add_ln16_6_reg_707[3]_i_8_n_0 ,\add_ln16_6_reg_707[3]_i_9_n_0 ,\add_ln16_6_reg_707[3]_i_10_n_0 }));
  FDRE \add_ln16_6_reg_707_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[4]),
        .Q(add_ln16_6_reg_707[4]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_707_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[5]),
        .Q(add_ln16_6_reg_707[5]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_707_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[6]),
        .Q(add_ln16_6_reg_707[6]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_707_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[7]),
        .Q(add_ln16_6_reg_707[7]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_707_reg[7]_i_1 
       (.CI(\add_ln16_6_reg_707_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_6_reg_707_reg[7]_i_1_n_0 ,\add_ln16_6_reg_707_reg[7]_i_1_n_1 ,\add_ln16_6_reg_707_reg[7]_i_1_n_2 ,\add_ln16_6_reg_707_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({b_load_3_reg_687[7],sext_ln16_10_fu_533_p1[6:4]}),
        .O(add_ln16_6_fu_537_p2[7:4]),
        .S({\add_ln16_6_reg_707[7]_i_3_n_0 ,\add_ln16_6_reg_707[7]_i_4_n_0 ,\add_ln16_6_reg_707[7]_i_5_n_0 ,\add_ln16_6_reg_707[7]_i_6_n_0 }));
  CARRY4 \add_ln16_6_reg_707_reg[7]_i_2 
       (.CI(\add_ln16_6_reg_707_reg[3]_i_2_n_0 ),
        .CO({\add_ln16_6_reg_707_reg[7]_i_2_n_0 ,\add_ln16_6_reg_707_reg[7]_i_2_n_1 ,\add_ln16_6_reg_707_reg[7]_i_2_n_2 ,\add_ln16_6_reg_707_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_6_reg_707[7]_i_7_n_0 ,a_q1[6:4]}),
        .O(sext_ln16_10_fu_533_p1[7:4]),
        .S({\add_ln16_6_reg_707[7]_i_8_n_0 ,\add_ln16_6_reg_707[7]_i_9_n_0 ,\add_ln16_6_reg_707[7]_i_10_n_0 ,\add_ln16_6_reg_707[7]_i_11_n_0 }));
  FDRE \add_ln16_6_reg_707_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[8]),
        .Q(add_ln16_6_reg_707[8]),
        .R(1'b0));
  FDRE \add_ln16_6_reg_707_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln16_6_fu_537_p2[9]),
        .Q(add_ln16_6_reg_707[9]),
        .R(1'b0));
  CARRY4 \add_ln16_6_reg_707_reg[9]_i_1 
       (.CI(\add_ln16_6_reg_707_reg[7]_i_1_n_0 ),
        .CO({\NLW_add_ln16_6_reg_707_reg[9]_i_1_CO_UNCONNECTED [3:1],\add_ln16_6_reg_707_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\add_ln16_6_reg_707_reg[9]_i_2_n_3 }),
        .O({\NLW_add_ln16_6_reg_707_reg[9]_i_1_O_UNCONNECTED [3:2],add_ln16_6_fu_537_p2[9:8]}),
        .S({1'b0,1'b0,1'b1,\add_ln16_6_reg_707[9]_i_3_n_0 }));
  CARRY4 \add_ln16_6_reg_707_reg[9]_i_2 
       (.CI(\add_ln16_6_reg_707_reg[7]_i_2_n_0 ),
        .CO({\NLW_add_ln16_6_reg_707_reg[9]_i_2_CO_UNCONNECTED [3:1],\add_ln16_6_reg_707_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_add_ln16_6_reg_707_reg[9]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[3]_i_2 
       (.I0(a_q0[3]),
        .I1(b_q1[3]),
        .O(\add_ln16_reg_662[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[3]_i_3 
       (.I0(a_q0[2]),
        .I1(b_q1[2]),
        .O(\add_ln16_reg_662[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[3]_i_4 
       (.I0(a_q0[1]),
        .I1(b_q1[1]),
        .O(\add_ln16_reg_662[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[3]_i_5 
       (.I0(a_q0[0]),
        .I1(b_q1[0]),
        .O(\add_ln16_reg_662[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln16_reg_662[7]_i_2 
       (.I0(a_q0[7]),
        .O(\add_ln16_reg_662[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[7]_i_3 
       (.I0(a_q0[7]),
        .I1(b_q1[7]),
        .O(\add_ln16_reg_662[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[7]_i_4 
       (.I0(a_q0[6]),
        .I1(b_q1[6]),
        .O(\add_ln16_reg_662[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[7]_i_5 
       (.I0(a_q0[5]),
        .I1(b_q1[5]),
        .O(\add_ln16_reg_662[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_662[7]_i_6 
       (.I0(a_q0[4]),
        .I1(b_q1[4]),
        .O(\add_ln16_reg_662[7]_i_6_n_0 ));
  FDRE \add_ln16_reg_662_reg[0] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[0]),
        .Q(add_ln16_reg_662[0]),
        .R(1'b0));
  FDRE \add_ln16_reg_662_reg[1] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[1]),
        .Q(add_ln16_reg_662[1]),
        .R(1'b0));
  FDRE \add_ln16_reg_662_reg[2] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[2]),
        .Q(add_ln16_reg_662[2]),
        .R(1'b0));
  FDRE \add_ln16_reg_662_reg[3] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[3]),
        .Q(add_ln16_reg_662[3]),
        .R(1'b0));
  CARRY4 \add_ln16_reg_662_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln16_reg_662_reg[3]_i_1_n_0 ,\add_ln16_reg_662_reg[3]_i_1_n_1 ,\add_ln16_reg_662_reg[3]_i_1_n_2 ,\add_ln16_reg_662_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(a_q0[3:0]),
        .O(add_ln16_fu_405_p2[3:0]),
        .S({\add_ln16_reg_662[3]_i_2_n_0 ,\add_ln16_reg_662[3]_i_3_n_0 ,\add_ln16_reg_662[3]_i_4_n_0 ,\add_ln16_reg_662[3]_i_5_n_0 }));
  FDRE \add_ln16_reg_662_reg[4] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[4]),
        .Q(add_ln16_reg_662[4]),
        .R(1'b0));
  FDRE \add_ln16_reg_662_reg[5] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[5]),
        .Q(add_ln16_reg_662[5]),
        .R(1'b0));
  FDRE \add_ln16_reg_662_reg[6] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[6]),
        .Q(add_ln16_reg_662[6]),
        .R(1'b0));
  FDRE \add_ln16_reg_662_reg[7] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[7]),
        .Q(add_ln16_reg_662[7]),
        .R(1'b0));
  CARRY4 \add_ln16_reg_662_reg[7]_i_1 
       (.CI(\add_ln16_reg_662_reg[3]_i_1_n_0 ),
        .CO({\add_ln16_reg_662_reg[7]_i_1_n_0 ,\add_ln16_reg_662_reg[7]_i_1_n_1 ,\add_ln16_reg_662_reg[7]_i_1_n_2 ,\add_ln16_reg_662_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_ln16_reg_662[7]_i_2_n_0 ,a_q0[6:4]}),
        .O(add_ln16_fu_405_p2[7:4]),
        .S({\add_ln16_reg_662[7]_i_3_n_0 ,\add_ln16_reg_662[7]_i_4_n_0 ,\add_ln16_reg_662[7]_i_5_n_0 ,\add_ln16_reg_662[7]_i_6_n_0 }));
  FDRE \add_ln16_reg_662_reg[8] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(add_ln16_fu_405_p2[8]),
        .Q(add_ln16_reg_662[8]),
        .R(1'b0));
  CARRY4 \add_ln16_reg_662_reg[8]_i_1 
       (.CI(\add_ln16_reg_662_reg[7]_i_1_n_0 ),
        .CO(\NLW_add_ln16_reg_662_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_add_ln16_reg_662_reg[8]_i_1_O_UNCONNECTED [3:1],add_ln16_fu_405_p2[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'hFFFFFFFF4F454545)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(\ap_CS_fsm[0]_i_2_n_0 ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(ap_rst),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000000E)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(ap_rst),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000057F70000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_start),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_rst),
        .O(\ap_CS_fsm[2]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_0 ),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0707070000000700)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .I2(ap_rst),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(ap_start),
        .O(ap_enable_reg_pp0_iter0_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_reg_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00101510)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst),
        .I1(flow_control_loop_pipe_U_n_0),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    ap_idle_INST_0
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h88800080)) 
    ap_ready_INST_0
       (.I0(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .O(ap_done));
  LUT2 #(
    .INIT(4'hE)) 
    \b_address0[2]_INST_0_i_2 
       (.I0(select_ln10_reg_602[1]),
        .I1(select_ln10_reg_602[0]),
        .O(\b_address0[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \b_address0[3]_INST_0_i_2 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(select_ln10_reg_602[1]),
        .I3(select_ln10_reg_602[0]),
        .I4(select_ln10_reg_602[2]),
        .O(\b_address0[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \b_address0[4]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(select_ln10_reg_602[2]),
        .I2(select_ln10_reg_602[0]),
        .I3(select_ln10_reg_602[1]),
        .I4(ap_CS_fsm_pp0_stage2),
        .O(b_address0[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \b_address1[3]_INST_0 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(select_ln10_reg_602[1]),
        .I2(select_ln10_reg_602[2]),
        .O(b_address1[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \b_address1[4]_INST_0 
       (.I0(select_ln10_reg_602[2]),
        .I1(select_ln10_reg_602[1]),
        .I2(ap_CS_fsm_pp0_stage1),
        .O(b_address1[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    b_ce0_INST_0
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .O(a_ce0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    b_ce1_INST_0
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_start),
        .O(b_ce1));
  LUT5 #(
    .INIT(32'h44400040)) 
    \b_load_3_reg_687[7]_i_1 
       (.I0(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_start),
        .O(b_load_3_reg_6870));
  FDRE \b_load_3_reg_687_reg[0] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[0]),
        .Q(b_load_3_reg_687[0]),
        .R(1'b0));
  FDRE \b_load_3_reg_687_reg[1] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[1]),
        .Q(b_load_3_reg_687[1]),
        .R(1'b0));
  FDRE \b_load_3_reg_687_reg[2] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[2]),
        .Q(b_load_3_reg_687[2]),
        .R(1'b0));
  FDRE \b_load_3_reg_687_reg[3] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[3]),
        .Q(b_load_3_reg_687[3]),
        .R(1'b0));
  FDRE \b_load_3_reg_687_reg[4] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[4]),
        .Q(b_load_3_reg_687[4]),
        .R(1'b0));
  FDRE \b_load_3_reg_687_reg[5] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[5]),
        .Q(b_load_3_reg_687[5]),
        .R(1'b0));
  FDRE \b_load_3_reg_687_reg[6] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[6]),
        .Q(b_load_3_reg_687[6]),
        .R(1'b0));
  FDRE \b_load_3_reg_687_reg[7] 
       (.C(ap_clk),
        .CE(b_load_3_reg_6870),
        .D(b_q0[7]),
        .Q(b_load_3_reg_687[7]),
        .R(1'b0));
  bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D({flow_control_loop_pipe_U_n_1,flow_control_loop_pipe_U_n_2,flow_control_loop_pipe_U_n_3,flow_control_loop_pipe_U_n_4,flow_control_loop_pipe_U_n_5}),
        .Q({\indvar_flatten_fu_78_reg_n_0_[4] ,\indvar_flatten_fu_78_reg_n_0_[3] ,\indvar_flatten_fu_78_reg_n_0_[2] ,\indvar_flatten_fu_78_reg_n_0_[1] ,\indvar_flatten_fu_78_reg_n_0_[0] }),
        .a_address0(a_address0),
        .\a_address0[2]_0 (\a_address0[2]_INST_0_i_2_n_0 ),
        .\a_address0[4]_0 (\a_address0[4]_INST_0_i_3_n_0 ),
        .\a_address0[4]_1 (\a_address0[4]_INST_0_i_4_n_0 ),
        .a_address0_1_sp_1(\a_address0[1]_INST_0_i_1_n_0 ),
        .a_address0_2_sp_1(\a_address0[2]_INST_0_i_1_n_0 ),
        .a_address0_3_sp_1(\a_address0[3]_INST_0_i_1_n_0 ),
        .a_address0_4_sp_1(\a_address0[4]_INST_0_i_2_n_0 ),
        .add_ln12_fu_331_p2(add_ln12_fu_331_p2),
        .ap_CS_fsm_pp0_stage0(ap_CS_fsm_pp0_stage0),
        .ap_CS_fsm_pp0_stage1(ap_CS_fsm_pp0_stage1),
        .ap_CS_fsm_pp0_stage2(ap_CS_fsm_pp0_stage2),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_U_n_32),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_loop_init_reg_0(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .ap_start_0(flow_control_loop_pipe_U_n_0),
        .b_address0(b_address0[3:0]),
        .\b_address0[2] (select_ln10_reg_602),
        .\b_address0[2]_0 (zext_ln16_7_reg_646),
        .\b_address0[2]_1 (\b_address0[2]_INST_0_i_2_n_0 ),
        .b_address0_3_sp_1(\b_address0[3]_INST_0_i_2_n_0 ),
        .b_address1(b_address1[2:0]),
        .i_fu_74(i_fu_74),
        .\i_fu_74_reg[0] ({flow_control_loop_pipe_U_n_6,flow_control_loop_pipe_U_n_7,flow_control_loop_pipe_U_n_8}),
        .\i_fu_74_reg[2] (\a_address0[0]_INST_0_i_1_n_0 ),
        .\i_fu_74_reg[2]_0 ({\i_fu_74_reg_n_0_[2] ,\i_fu_74_reg_n_0_[1] ,\i_fu_74_reg_n_0_[0] }),
        .\i_fu_74_reg[2]_1 (\i_fu_74[2]_i_2_n_0 ),
        .icmp_ln10_fu_237_p2(icmp_ln10_fu_237_p2),
        .\j_fu_70_reg[0] (flow_control_loop_pipe_U_n_30),
        .\j_fu_70_reg[2] (flow_control_loop_pipe_U_n_9),
        .\j_fu_70_reg[2]_0 ({flow_control_loop_pipe_U_n_24,flow_control_loop_pipe_U_n_25,flow_control_loop_pipe_U_n_26}),
        .select_ln10_1_fu_290_p3(select_ln10_1_fu_290_p3),
        .select_ln10_1_reg_6070(select_ln10_1_reg_6070),
        .\select_ln10_1_reg_607_reg[2] (\indvar_flatten_fu_78[4]_i_3_n_0 ),
        .select_ln10_2_reg_613(select_ln10_2_reg_613),
        .\select_ln10_2_reg_613_reg[0] (\j_fu_70_reg_n_0_[2] ),
        .\select_ln10_2_reg_613_reg[0]_0 (\j_fu_70_reg_n_0_[1] ),
        .\select_ln10_2_reg_613_reg[0]_1 (\j_fu_70_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \i_fu_74[2]_i_2 
       (.I0(\indvar_flatten_fu_78_reg_n_0_[0] ),
        .I1(\indvar_flatten_fu_78_reg_n_0_[3] ),
        .I2(\indvar_flatten_fu_78_reg_n_0_[1] ),
        .I3(\indvar_flatten_fu_78_reg_n_0_[4] ),
        .I4(\indvar_flatten_fu_78_reg_n_0_[2] ),
        .O(\i_fu_74[2]_i_2_n_0 ));
  FDRE \i_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_8),
        .Q(\i_fu_74_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_7),
        .Q(\i_fu_74_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \i_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_6),
        .Q(\i_fu_74_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \icmp_ln10_reg_598_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(icmp_ln10_fu_237_p2),
        .Q(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \indvar_flatten_fu_78[4]_i_3 
       (.I0(\indvar_flatten_fu_78_reg_n_0_[2] ),
        .I1(\indvar_flatten_fu_78_reg_n_0_[4] ),
        .I2(\indvar_flatten_fu_78_reg_n_0_[1] ),
        .I3(\indvar_flatten_fu_78_reg_n_0_[3] ),
        .O(\indvar_flatten_fu_78[4]_i_3_n_0 ));
  FDRE \indvar_flatten_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_5),
        .Q(\indvar_flatten_fu_78_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_4),
        .Q(\indvar_flatten_fu_78_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_3),
        .Q(\indvar_flatten_fu_78_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_2),
        .Q(\indvar_flatten_fu_78_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_1),
        .Q(\indvar_flatten_fu_78_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \j_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(flow_control_loop_pipe_U_n_30),
        .Q(\j_fu_70_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \j_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(add_ln12_fu_331_p2[1]),
        .Q(\j_fu_70_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \j_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_74),
        .D(add_ln12_fu_331_p2[2]),
        .Q(\j_fu_70_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 \prod_d0[0]_INST_0 
       (.CI(1'b0),
        .CO({\prod_d0[0]_INST_0_n_0 ,\prod_d0[0]_INST_0_n_1 ,\prod_d0[0]_INST_0_n_2 ,\prod_d0[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_12_fu_562_p1[3:0]),
        .O(\^prod_d0 [3:0]),
        .S({\prod_d0[0]_INST_0_i_2_n_0 ,\prod_d0[0]_INST_0_i_3_n_0 ,\prod_d0[0]_INST_0_i_4_n_0 ,\prod_d0[0]_INST_0_i_5_n_0 }));
  CARRY4 \prod_d0[0]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\prod_d0[0]_INST_0_i_1_n_0 ,\prod_d0[0]_INST_0_i_1_n_1 ,\prod_d0[0]_INST_0_i_1_n_2 ,\prod_d0[0]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_6_reg_707[3:0]),
        .O(sext_ln16_12_fu_562_p1[3:0]),
        .S({\prod_d0[0]_INST_0_i_6_n_0 ,\prod_d0[0]_INST_0_i_7_n_0 ,\prod_d0[0]_INST_0_i_8_n_0 ,\prod_d0[0]_INST_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_2 
       (.I0(sext_ln16_12_fu_562_p1[3]),
        .I1(add_ln16_3_reg_697[3]),
        .O(\prod_d0[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_3 
       (.I0(sext_ln16_12_fu_562_p1[2]),
        .I1(add_ln16_3_reg_697[2]),
        .O(\prod_d0[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_4 
       (.I0(sext_ln16_12_fu_562_p1[1]),
        .I1(add_ln16_3_reg_697[1]),
        .O(\prod_d0[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_5 
       (.I0(sext_ln16_12_fu_562_p1[0]),
        .I1(add_ln16_3_reg_697[0]),
        .O(\prod_d0[0]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_6 
       (.I0(add_ln16_6_reg_707[3]),
        .I1(add_ln16_4_reg_702[3]),
        .O(\prod_d0[0]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_7 
       (.I0(add_ln16_6_reg_707[2]),
        .I1(add_ln16_4_reg_702[2]),
        .O(\prod_d0[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_8 
       (.I0(add_ln16_6_reg_707[1]),
        .I1(add_ln16_4_reg_702[1]),
        .O(\prod_d0[0]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[0]_INST_0_i_9 
       (.I0(add_ln16_6_reg_707[0]),
        .I1(add_ln16_4_reg_702[0]),
        .O(\prod_d0[0]_INST_0_i_9_n_0 ));
  CARRY4 \prod_d0[4]_INST_0 
       (.CI(\prod_d0[0]_INST_0_n_0 ),
        .CO({\prod_d0[4]_INST_0_n_0 ,\prod_d0[4]_INST_0_n_1 ,\prod_d0[4]_INST_0_n_2 ,\prod_d0[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(sext_ln16_12_fu_562_p1[7:4]),
        .O(\^prod_d0 [7:4]),
        .S({\prod_d0[4]_INST_0_i_2_n_0 ,\prod_d0[4]_INST_0_i_3_n_0 ,\prod_d0[4]_INST_0_i_4_n_0 ,\prod_d0[4]_INST_0_i_5_n_0 }));
  CARRY4 \prod_d0[4]_INST_0_i_1 
       (.CI(\prod_d0[0]_INST_0_i_1_n_0 ),
        .CO({\prod_d0[4]_INST_0_i_1_n_0 ,\prod_d0[4]_INST_0_i_1_n_1 ,\prod_d0[4]_INST_0_i_1_n_2 ,\prod_d0[4]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(add_ln16_6_reg_707[7:4]),
        .O(sext_ln16_12_fu_562_p1[7:4]),
        .S({\prod_d0[4]_INST_0_i_6_n_0 ,\prod_d0[4]_INST_0_i_7_n_0 ,\prod_d0[4]_INST_0_i_8_n_0 ,\prod_d0[4]_INST_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_2 
       (.I0(sext_ln16_12_fu_562_p1[7]),
        .I1(add_ln16_3_reg_697[7]),
        .O(\prod_d0[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_3 
       (.I0(sext_ln16_12_fu_562_p1[6]),
        .I1(add_ln16_3_reg_697[6]),
        .O(\prod_d0[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_4 
       (.I0(sext_ln16_12_fu_562_p1[5]),
        .I1(add_ln16_3_reg_697[5]),
        .O(\prod_d0[4]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_5 
       (.I0(sext_ln16_12_fu_562_p1[4]),
        .I1(add_ln16_3_reg_697[4]),
        .O(\prod_d0[4]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_6 
       (.I0(add_ln16_6_reg_707[7]),
        .I1(add_ln16_4_reg_702[7]),
        .O(\prod_d0[4]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_7 
       (.I0(add_ln16_6_reg_707[6]),
        .I1(add_ln16_4_reg_702[6]),
        .O(\prod_d0[4]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_8 
       (.I0(add_ln16_6_reg_707[5]),
        .I1(add_ln16_4_reg_702[5]),
        .O(\prod_d0[4]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[4]_INST_0_i_9 
       (.I0(add_ln16_6_reg_707[4]),
        .I1(add_ln16_4_reg_702[4]),
        .O(\prod_d0[4]_INST_0_i_9_n_0 ));
  CARRY4 \prod_d0[8]_INST_0 
       (.CI(\prod_d0[4]_INST_0_n_0 ),
        .CO({\NLW_prod_d0[8]_INST_0_CO_UNCONNECTED [3],\prod_d0[8]_INST_0_n_1 ,\prod_d0[8]_INST_0_n_2 ,\prod_d0[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\prod_d0[8]_INST_0_i_1_n_1 ,sext_ln16_12_fu_562_p1[9:8]}),
        .O({\^prod_d0 [15],\^prod_d0 [10:8]}),
        .S({1'b1,\prod_d0[8]_INST_0_i_2_n_0 ,\prod_d0[8]_INST_0_i_3_n_0 ,\prod_d0[8]_INST_0_i_4_n_0 }));
  CARRY4 \prod_d0[8]_INST_0_i_1 
       (.CI(\prod_d0[4]_INST_0_i_1_n_0 ),
        .CO({\NLW_prod_d0[8]_INST_0_i_1_CO_UNCONNECTED [3],\prod_d0[8]_INST_0_i_1_n_1 ,\NLW_prod_d0[8]_INST_0_i_1_CO_UNCONNECTED [1],\prod_d0[8]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\prod_d0[8]_INST_0_i_5_n_0 ,add_ln16_4_reg_702[8]}),
        .O({\NLW_prod_d0[8]_INST_0_i_1_O_UNCONNECTED [3:2],sext_ln16_12_fu_562_p1[9:8]}),
        .S({1'b0,1'b1,\prod_d0[8]_INST_0_i_6_n_0 ,\prod_d0[8]_INST_0_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \prod_d0[8]_INST_0_i_2 
       (.I0(\prod_d0[8]_INST_0_i_1_n_1 ),
        .I1(add_ln16_3_reg_697[10]),
        .O(\prod_d0[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_3 
       (.I0(sext_ln16_12_fu_562_p1[9]),
        .I1(add_ln16_3_reg_697[9]),
        .O(\prod_d0[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_4 
       (.I0(sext_ln16_12_fu_562_p1[8]),
        .I1(add_ln16_3_reg_697[8]),
        .O(\prod_d0[8]_INST_0_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \prod_d0[8]_INST_0_i_5 
       (.I0(add_ln16_4_reg_702[8]),
        .O(\prod_d0[8]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_6 
       (.I0(add_ln16_4_reg_702[8]),
        .I1(add_ln16_6_reg_707[9]),
        .O(\prod_d0[8]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \prod_d0[8]_INST_0_i_7 
       (.I0(add_ln16_4_reg_702[8]),
        .I1(add_ln16_6_reg_707[8]),
        .O(\prod_d0[8]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    prod_we0_INST_0
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter1),
        .O(prod_ce0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[0]_i_1 
       (.I0(b_q1[0]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[0]),
        .O(\reg_193[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[1]_i_1 
       (.I0(b_q1[1]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[1]),
        .O(\reg_193[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[2]_i_1 
       (.I0(b_q1[2]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[2]),
        .O(\reg_193[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[3]_i_1 
       (.I0(b_q1[3]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[3]),
        .O(\reg_193[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[4]_i_1 
       (.I0(b_q1[4]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[4]),
        .O(\reg_193[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[5]_i_1 
       (.I0(b_q1[5]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[5]),
        .O(\reg_193[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[6]_i_1 
       (.I0(b_q1[6]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[6]),
        .O(\reg_193[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8B800)) 
    \reg_193[7]_i_1 
       (.I0(ap_start),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .O(reg_193));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_193[7]_i_2 
       (.I0(b_q1[7]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(b_q0[7]),
        .O(\reg_193[7]_i_2_n_0 ));
  FDRE \reg_193_reg[0] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[0]_i_1_n_0 ),
        .Q(\reg_193_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_193_reg[1] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[1]_i_1_n_0 ),
        .Q(\reg_193_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_193_reg[2] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[2]_i_1_n_0 ),
        .Q(\reg_193_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_193_reg[3] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[3]_i_1_n_0 ),
        .Q(\reg_193_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg_193_reg[4] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[4]_i_1_n_0 ),
        .Q(\reg_193_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \reg_193_reg[5] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[5]_i_1_n_0 ),
        .Q(\reg_193_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reg_193_reg[6] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[6]_i_1_n_0 ),
        .Q(\reg_193_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reg_193_reg[7] 
       (.C(ap_clk),
        .CE(reg_193),
        .D(\reg_193[7]_i_2_n_0 ),
        .Q(\reg_193_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \select_ln10_1_reg_607[2]_i_1 
       (.I0(\i_fu_74_reg_n_0_[2] ),
        .I1(\i_fu_74_reg_n_0_[1] ),
        .I2(\i_fu_74_reg_n_0_[0] ),
        .I3(\j_fu_70_reg_n_0_[0] ),
        .I4(\j_fu_70_reg_n_0_[1] ),
        .I5(\j_fu_70_reg_n_0_[2] ),
        .O(\select_ln10_1_reg_607[2]_i_1_n_0 ));
  FDRE \select_ln10_1_reg_607_reg[2] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(\select_ln10_1_reg_607[2]_i_1_n_0 ),
        .Q(p_shl5_cast_fu_414_p3),
        .R(flow_control_loop_pipe_U_n_32));
  FDRE \select_ln10_2_reg_613_reg[0] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(flow_control_loop_pipe_U_n_9),
        .Q(select_ln10_2_reg_613[0]),
        .R(1'b0));
  FDRE \select_ln10_2_reg_613_reg[1] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(select_ln10_1_fu_290_p3),
        .Q(select_ln10_2_reg_613[1]),
        .R(1'b0));
  FDRE \select_ln10_2_reg_613_reg[2] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(\a_address0[2]_INST_0_i_1_n_0 ),
        .Q(select_ln10_2_reg_613[2]),
        .R(flow_control_loop_pipe_U_n_32));
  FDRE \select_ln10_2_reg_613_reg[3] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(\a_address0[3]_INST_0_i_1_n_0 ),
        .Q(select_ln10_2_reg_613[3]),
        .R(flow_control_loop_pipe_U_n_32));
  FDRE \select_ln10_2_reg_613_reg[4] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(\a_address0[4]_INST_0_i_2_n_0 ),
        .Q(select_ln10_2_reg_613[4]),
        .R(flow_control_loop_pipe_U_n_32));
  FDRE \select_ln10_reg_602_reg[0] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(flow_control_loop_pipe_U_n_26),
        .Q(select_ln10_reg_602[0]),
        .R(1'b0));
  FDRE \select_ln10_reg_602_reg[1] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(flow_control_loop_pipe_U_n_25),
        .Q(select_ln10_reg_602[1]),
        .R(1'b0));
  FDRE \select_ln10_reg_602_reg[2] 
       (.C(ap_clk),
        .CE(select_ln10_1_reg_6070),
        .D(flow_control_loop_pipe_U_n_24),
        .Q(select_ln10_reg_602[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \zext_ln16_7_reg_646[2]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(\icmp_ln10_reg_598_reg_n_0_[0] ),
        .O(add_ln16_reg_6620));
  FDRE \zext_ln16_7_reg_646_reg[0] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(select_ln10_reg_602[0]),
        .Q(zext_ln16_7_reg_646[0]),
        .R(1'b0));
  FDRE \zext_ln16_7_reg_646_reg[1] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(select_ln10_reg_602[1]),
        .Q(zext_ln16_7_reg_646[1]),
        .R(1'b0));
  FDRE \zext_ln16_7_reg_646_reg[2] 
       (.C(ap_clk),
        .CE(add_ln16_reg_6620),
        .D(select_ln10_reg_602[2]),
        .Q(zext_ln16_7_reg_646[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "matrix_mult_flow_control_loop_pipe" *) 
module bd_0_hls_inst_0_matrix_mult_flow_control_loop_pipe
   (ap_start_0,
    D,
    \i_fu_74_reg[0] ,
    \j_fu_70_reg[2] ,
    a_address0,
    b_address0,
    select_ln10_1_reg_6070,
    icmp_ln10_fu_237_p2,
    select_ln10_1_fu_290_p3,
    add_ln12_fu_331_p2,
    \j_fu_70_reg[2]_0 ,
    b_address1,
    \j_fu_70_reg[0] ,
    i_fu_74,
    \ap_CS_fsm_reg[0] ,
    ap_clk,
    ap_CS_fsm_pp0_stage1,
    ap_loop_init_reg_0,
    ap_CS_fsm_pp0_stage2,
    ap_rst,
    ap_start,
    ap_CS_fsm_pp0_stage0,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    \i_fu_74_reg[2] ,
    \i_fu_74_reg[2]_0 ,
    \i_fu_74_reg[2]_1 ,
    select_ln10_2_reg_613,
    a_address0_4_sp_1,
    \a_address0[4]_0 ,
    \a_address0[4]_1 ,
    a_address0_3_sp_1,
    a_address0_2_sp_1,
    \a_address0[2]_0 ,
    a_address0_1_sp_1,
    \b_address0[2] ,
    \b_address0[2]_0 ,
    \select_ln10_2_reg_613_reg[0] ,
    \select_ln10_2_reg_613_reg[0]_0 ,
    \select_ln10_2_reg_613_reg[0]_1 ,
    \select_ln10_1_reg_607_reg[2] ,
    \b_address0[2]_1 ,
    b_address0_3_sp_1);
  output ap_start_0;
  output [4:0]D;
  output [2:0]\i_fu_74_reg[0] ;
  output \j_fu_70_reg[2] ;
  output [4:0]a_address0;
  output [3:0]b_address0;
  output select_ln10_1_reg_6070;
  output icmp_ln10_fu_237_p2;
  output [0:0]select_ln10_1_fu_290_p3;
  output [1:0]add_ln12_fu_331_p2;
  output [2:0]\j_fu_70_reg[2]_0 ;
  output [2:0]b_address1;
  output \j_fu_70_reg[0] ;
  output i_fu_74;
  output \ap_CS_fsm_reg[0] ;
  input ap_clk;
  input ap_CS_fsm_pp0_stage1;
  input ap_loop_init_reg_0;
  input ap_CS_fsm_pp0_stage2;
  input ap_rst;
  input ap_start;
  input ap_CS_fsm_pp0_stage0;
  input ap_enable_reg_pp0_iter0_reg;
  input [4:0]Q;
  input \i_fu_74_reg[2] ;
  input [2:0]\i_fu_74_reg[2]_0 ;
  input \i_fu_74_reg[2]_1 ;
  input [4:0]select_ln10_2_reg_613;
  input a_address0_4_sp_1;
  input \a_address0[4]_0 ;
  input \a_address0[4]_1 ;
  input a_address0_3_sp_1;
  input a_address0_2_sp_1;
  input \a_address0[2]_0 ;
  input a_address0_1_sp_1;
  input [2:0]\b_address0[2] ;
  input [2:0]\b_address0[2]_0 ;
  input \select_ln10_2_reg_613_reg[0] ;
  input \select_ln10_2_reg_613_reg[0]_0 ;
  input \select_ln10_2_reg_613_reg[0]_1 ;
  input \select_ln10_1_reg_607_reg[2] ;
  input \b_address0[2]_1 ;
  input b_address0_3_sp_1;

  wire [4:0]D;
  wire [4:0]Q;
  wire [4:0]a_address0;
  wire \a_address0[2]_0 ;
  wire \a_address0[4]_0 ;
  wire \a_address0[4]_1 ;
  wire \a_address0[4]_INST_0_i_1_n_0 ;
  wire a_address0_1_sn_1;
  wire a_address0_2_sn_1;
  wire a_address0_3_sn_1;
  wire a_address0_4_sn_1;
  wire [1:0]add_ln12_fu_331_p2;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_loop_init_reg_0;
  wire ap_rst;
  wire ap_start;
  wire ap_start_0;
  wire [3:0]b_address0;
  wire \b_address0[1]_INST_0_i_1_n_0 ;
  wire [2:0]\b_address0[2] ;
  wire [2:0]\b_address0[2]_0 ;
  wire \b_address0[2]_1 ;
  wire \b_address0[3]_INST_0_i_1_n_0 ;
  wire b_address0_3_sn_1;
  wire [2:0]b_address1;
  wire i_fu_74;
  wire [2:0]\i_fu_74_reg[0] ;
  wire \i_fu_74_reg[2] ;
  wire [2:0]\i_fu_74_reg[2]_0 ;
  wire \i_fu_74_reg[2]_1 ;
  wire icmp_ln10_fu_237_p2;
  wire \j_fu_70_reg[0] ;
  wire \j_fu_70_reg[2] ;
  wire [2:0]\j_fu_70_reg[2]_0 ;
  wire [0:0]select_ln10_1_fu_290_p3;
  wire select_ln10_1_reg_6070;
  wire \select_ln10_1_reg_607_reg[2] ;
  wire [4:0]select_ln10_2_reg_613;
  wire \select_ln10_2_reg_613_reg[0] ;
  wire \select_ln10_2_reg_613_reg[0]_0 ;
  wire \select_ln10_2_reg_613_reg[0]_1 ;

  assign a_address0_1_sn_1 = a_address0_1_sp_1;
  assign a_address0_2_sn_1 = a_address0_2_sp_1;
  assign a_address0_3_sn_1 = a_address0_3_sp_1;
  assign a_address0_4_sn_1 = a_address0_4_sp_1;
  assign b_address0_3_sn_1 = b_address0_3_sp_1;
  LUT6 #(
    .INIT(64'h00FF0041FF00FF41)) 
    \a_address0[0]_INST_0 
       (.I0(\a_address0[4]_INST_0_i_1_n_0 ),
        .I1(\i_fu_74_reg[2] ),
        .I2(\i_fu_74_reg[2]_0 [0]),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(select_ln10_2_reg_613[0]),
        .O(a_address0[0]));
  LUT6 #(
    .INIT(64'hF0000FFFF0440F44)) 
    \a_address0[1]_INST_0 
       (.I0(\a_address0[4]_INST_0_i_1_n_0 ),
        .I1(a_address0_1_sn_1),
        .I2(select_ln10_2_reg_613[0]),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(select_ln10_2_reg_613[1]),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(a_address0[1]));
  LUT6 #(
    .INIT(64'hFFF400040004FFF4)) 
    \a_address0[2]_INST_0 
       (.I0(\a_address0[4]_INST_0_i_1_n_0 ),
        .I1(a_address0_2_sn_1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(select_ln10_2_reg_613[2]),
        .I5(\a_address0[2]_0 ),
        .O(a_address0[2]));
  LUT6 #(
    .INIT(64'hF00FF00FF00F4444)) 
    \a_address0[3]_INST_0 
       (.I0(\a_address0[4]_INST_0_i_1_n_0 ),
        .I1(a_address0_3_sn_1),
        .I2(select_ln10_2_reg_613[3]),
        .I3(\a_address0[4]_0 ),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_CS_fsm_pp0_stage2),
        .O(a_address0[3]));
  LUT6 #(
    .INIT(64'h44444444F0F00FF0)) 
    \a_address0[4]_INST_0 
       (.I0(\a_address0[4]_INST_0_i_1_n_0 ),
        .I1(a_address0_4_sn_1),
        .I2(select_ln10_2_reg_613[4]),
        .I3(select_ln10_2_reg_613[3]),
        .I4(\a_address0[4]_0 ),
        .I5(\a_address0[4]_1 ),
        .O(a_address0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \a_address0[4]_INST_0_i_1 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(ap_CS_fsm_pp0_stage0),
        .O(\a_address0[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF088F0F8)) 
    ap_loop_init_i_1
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_loop_init_reg_0),
        .I2(ap_loop_init),
        .I3(ap_start_0),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(ap_rst),
        .O(ap_loop_init_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h47)) 
    ap_loop_init_i_2
       (.I0(ap_start),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_start_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAA303F)) 
    \b_address0[0]_INST_0 
       (.I0(\b_address0[2]_0 [0]),
        .I1(\b_address0[2] [0]),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(\j_fu_70_reg[2]_0 [0]),
        .I4(ap_CS_fsm_pp0_stage2),
        .O(b_address0[0]));
  LUT6 #(
    .INIT(64'h0DDDDDDD00000000)) 
    \b_address0[0]_INST_0_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0] ),
        .I1(\select_ln10_2_reg_613_reg[0]_0 ),
        .I2(ap_loop_init),
        .I3(ap_start),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(\select_ln10_2_reg_613_reg[0]_1 ),
        .O(\j_fu_70_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hFEEEEEFEBAAAAABA)) 
    \b_address0[1]_INST_0 
       (.I0(\b_address0[1]_INST_0_i_1_n_0 ),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(\b_address0[2] [0]),
        .I4(\b_address0[2] [1]),
        .I5(\b_address0[2]_0 [1]),
        .O(b_address0[1]));
  LUT6 #(
    .INIT(64'h000000000000001C)) 
    \b_address0[1]_INST_0_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0] ),
        .I1(\select_ln10_2_reg_613_reg[0]_0 ),
        .I2(\select_ln10_2_reg_613_reg[0]_1 ),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(\a_address0[4]_INST_0_i_1_n_0 ),
        .O(\b_address0[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33F03355330F3355)) 
    \b_address0[2]_INST_0 
       (.I0(add_ln12_fu_331_p2[1]),
        .I1(\b_address0[2]_0 [2]),
        .I2(\b_address0[2] [2]),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(\b_address0[2]_1 ),
        .O(b_address0[2]));
  LUT6 #(
    .INIT(64'h00002AAA3FFF0000)) 
    \b_address0[2]_INST_0_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0]_0 ),
        .I1(ap_loop_init),
        .I2(ap_start),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\select_ln10_2_reg_613_reg[0] ),
        .I5(\select_ln10_2_reg_613_reg[0]_1 ),
        .O(add_ln12_fu_331_p2[1]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \b_address0[3]_INST_0 
       (.I0(\b_address0[2]_0 [2]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(\b_address0[3]_INST_0_i_1_n_0 ),
        .I3(b_address0_3_sn_1),
        .O(b_address0[3]));
  LUT6 #(
    .INIT(64'h0000000003020002)) 
    \b_address0[3]_INST_0_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0] ),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(\select_ln10_2_reg_613_reg[0]_1 ),
        .I4(\select_ln10_2_reg_613_reg[0]_0 ),
        .I5(\a_address0[4]_INST_0_i_1_n_0 ),
        .O(\b_address0[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888BB8B88888888)) 
    \b_address1[0]_INST_0 
       (.I0(\b_address0[2] [0]),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(\select_ln10_2_reg_613_reg[0] ),
        .I3(\select_ln10_2_reg_613_reg[0]_0 ),
        .I4(\a_address0[4]_INST_0_i_1_n_0 ),
        .I5(\select_ln10_2_reg_613_reg[0]_1 ),
        .O(b_address1[0]));
  LUT6 #(
    .INIT(64'h0000FFFF2AAA2AAA)) 
    \b_address1[1]_INST_0 
       (.I0(\select_ln10_2_reg_613_reg[0]_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_start),
        .I3(ap_loop_init),
        .I4(\b_address0[2] [1]),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(b_address1[1]));
  LUT4 #(
    .INIT(16'h3CAA)) 
    \b_address1[2]_INST_0 
       (.I0(\j_fu_70_reg[2]_0 [2]),
        .I1(\b_address0[2] [2]),
        .I2(\b_address0[2] [1]),
        .I3(ap_CS_fsm_pp0_stage1),
        .O(b_address1[2]));
  LUT6 #(
    .INIT(64'h00A2A2A2A2A2A2A2)) 
    \b_address1[2]_INST_0_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0] ),
        .I1(\select_ln10_2_reg_613_reg[0]_1 ),
        .I2(\select_ln10_2_reg_613_reg[0]_0 ),
        .I3(ap_loop_init),
        .I4(ap_start),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(\j_fu_70_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hAA8AAAAAAAAAAAAA)) 
    \i_fu_74[0]_i_1 
       (.I0(\j_fu_70_reg[2] ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\i_fu_74_reg[0] [0]));
  LUT6 #(
    .INIT(64'hAA8AAAAAAAAAAAAA)) 
    \i_fu_74[1]_i_1 
       (.I0(select_ln10_1_fu_290_p3),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\i_fu_74_reg[0] [1]));
  LUT6 #(
    .INIT(64'h000000000000BF40)) 
    \i_fu_74[2]_i_1 
       (.I0(\i_fu_74_reg[2] ),
        .I1(\i_fu_74_reg[2]_0 [0]),
        .I2(\i_fu_74_reg[2]_0 [1]),
        .I3(\i_fu_74_reg[2]_0 [2]),
        .I4(\i_fu_74_reg[2]_1 ),
        .I5(\a_address0[4]_INST_0_i_1_n_0 ),
        .O(\i_fu_74_reg[0] [2]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \icmp_ln10_reg_598[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\a_address0[4]_INST_0_i_1_n_0 ),
        .O(icmp_ln10_fu_237_p2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \indvar_flatten_fu_78[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_loop_init),
        .I2(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000FFF700)) 
    \indvar_flatten_fu_78[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\a_address0[4]_INST_0_i_1_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00787878)) 
    \indvar_flatten_fu_78[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(ap_loop_init),
        .I4(ap_CS_fsm_pp0_stage0),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0333313330000000)) 
    \indvar_flatten_fu_78[3]_i_1 
       (.I0(Q[4]),
        .I1(\a_address0[4]_INST_0_i_1_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88888088)) 
    \indvar_flatten_fu_78[4]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .I4(\select_ln10_1_reg_607_reg[2] ),
        .O(i_fu_74));
  LUT6 #(
    .INIT(64'h000000006A8AAAAA)) 
    \indvar_flatten_fu_78[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\a_address0[4]_INST_0_i_1_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD5FFD5D5)) 
    \j_fu_70[0]_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0]_1 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_loop_init),
        .I3(\select_ln10_2_reg_613_reg[0]_0 ),
        .I4(\select_ln10_2_reg_613_reg[0] ),
        .O(\j_fu_70_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h001C1C1C)) 
    \j_fu_70[1]_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0] ),
        .I1(\select_ln10_2_reg_613_reg[0]_0 ),
        .I2(\select_ln10_2_reg_613_reg[0]_1 ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(ap_loop_init),
        .O(add_ln12_fu_331_p2[0]));
  LUT5 #(
    .INIT(32'h51550400)) 
    \select_ln10_2_reg_613[0]_i_1 
       (.I0(\a_address0[4]_INST_0_i_1_n_0 ),
        .I1(\select_ln10_2_reg_613_reg[0] ),
        .I2(\select_ln10_2_reg_613_reg[0]_0 ),
        .I3(\select_ln10_2_reg_613_reg[0]_1 ),
        .I4(\i_fu_74_reg[2]_0 [0]),
        .O(\j_fu_70_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \select_ln10_2_reg_613[1]_i_1 
       (.I0(\i_fu_74_reg[2]_0 [0]),
        .I1(\select_ln10_2_reg_613_reg[0]_1 ),
        .I2(\select_ln10_2_reg_613_reg[0]_0 ),
        .I3(\select_ln10_2_reg_613_reg[0] ),
        .I4(\i_fu_74_reg[2]_0 [1]),
        .I5(\a_address0[4]_INST_0_i_1_n_0 ),
        .O(select_ln10_1_fu_290_p3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \select_ln10_2_reg_613[4]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA80AA)) 
    \select_ln10_2_reg_613[4]_i_2 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .I4(\select_ln10_1_reg_607_reg[2] ),
        .O(select_ln10_1_reg_6070));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \select_ln10_reg_602[1]_i_1 
       (.I0(\select_ln10_2_reg_613_reg[0]_0 ),
        .I1(ap_start),
        .I2(ap_loop_init),
        .O(\j_fu_70_reg[2]_0 [1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
