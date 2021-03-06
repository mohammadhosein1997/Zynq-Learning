// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrix_mult_matrix_mult,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.102000,HLS_SYN_LAT=258,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=368,HLS_SYN_LUT=493,HLS_VERSION=2021_1}" *)

module matrix_mult (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0,
        prod_address0,
        prod_ce0,
        prod_we0,
        prod_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [4:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;
output  [4:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [15:0] prod_d0;

reg ap_idle;
reg a_ce0;
reg b_ce0;
reg prod_ce0;
reg prod_we0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_state6_pp0_stage1_iter2;
wire    ap_block_state8_pp0_stage1_iter3;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln10_reg_444;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
wire    ap_block_state9_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln10_fu_163_p2;
reg   [0:0] icmp_ln10_reg_444_pp0_iter1_reg;
reg   [0:0] icmp_ln10_reg_444_pp0_iter2_reg;
wire   [0:0] icmp_ln12_fu_187_p2;
reg   [0:0] icmp_ln12_reg_448;
wire   [2:0] select_ln10_1_fu_193_p3;
reg   [2:0] select_ln10_1_reg_456;
wire   [5:0] add_ln12_1_fu_204_p2;
reg   [5:0] add_ln12_1_reg_463;
wire   [4:0] add_ln16_1_fu_238_p2;
reg   [4:0] add_ln16_1_reg_468;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] or_ln12_fu_267_p2;
reg   [0:0] or_ln12_reg_474;
reg   [0:0] or_ln12_reg_474_pp0_iter1_reg;
reg   [0:0] or_ln12_reg_474_pp0_iter2_reg;
wire   [2:0] select_ln12_fu_272_p3;
reg   [2:0] select_ln12_reg_479;
wire   [2:0] select_ln12_2_fu_280_p3;
reg   [2:0] select_ln12_2_reg_486;
wire   [4:0] add_ln13_fu_306_p2;
reg   [4:0] add_ln13_reg_492;
reg   [4:0] add_ln13_reg_492_pp0_iter2_reg;
reg   [4:0] add_ln13_reg_492_pp0_iter3_reg;
wire   [4:0] add_ln16_4_fu_337_p2;
reg   [4:0] add_ln16_4_reg_502;
wire   [0:0] icmp_ln15_1_fu_348_p2;
reg   [0:0] icmp_ln15_1_reg_507;
reg   [0:0] icmp_ln15_1_reg_507_pp0_iter2_reg;
reg   [0:0] icmp_ln15_1_reg_507_pp0_iter3_reg;
reg  signed [7:0] a_load_reg_516;
reg   [4:0] prod_addr_reg_536;
wire   [15:0] grp_fu_392_p3;
reg  signed [15:0] add_ln16_reg_541;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln16_2_fu_319_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_3_fu_363_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln13_1_fu_384_p1;
reg   [15:0] empty_fu_68;
wire    ap_loop_init;
reg   [2:0] k_fu_72;
wire   [2:0] add_ln15_fu_343_p2;
reg   [2:0] j_fu_76;
reg   [5:0] indvar_flatten_fu_80;
wire   [5:0] select_ln12_3_fu_288_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load_1;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [2:0] i_fu_84;
reg   [2:0] ap_sig_allocacmp_i_load;
reg   [6:0] indvar_flatten15_fu_88;
reg   [6:0] ap_sig_allocacmp_indvar_flatten15_load;
wire   [6:0] add_ln10_1_fu_169_p2;
wire   [2:0] add_ln10_fu_181_p2;
wire   [4:0] tmp_fu_231_p3;
wire   [4:0] zext_ln16_fu_228_p1;
wire   [0:0] icmp_ln15_fu_249_p2;
wire   [0:0] xor_ln10_fu_244_p2;
wire   [2:0] select_ln10_fu_221_p3;
wire   [0:0] and_ln10_fu_255_p2;
wire   [2:0] add_ln12_fu_261_p2;
wire   [4:0] zext_ln13_fu_303_p1;
wire   [4:0] zext_ln16_1_fu_311_p1;
wire   [4:0] add_ln16_2_fu_314_p2;
wire   [4:0] tmp_1_fu_324_p3;
wire   [4:0] add_ln16_3_fu_331_p2;
wire   [15:0] grp_fu_392_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_115;
reg    ap_condition_421;
reg    ap_condition_185;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

matrix_mult_mac_muladd_8s_8s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_8s_8s_16ns_16_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_q0),
    .din1(a_load_reg_516),
    .din2(grp_fu_392_p2),
    .ce(1'b1),
    .dout(grp_fu_392_p3)
);

matrix_mult_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(1'b1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        empty_fu_68 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_fu_68 <= grp_fu_392_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_421)) begin
            i_fu_84 <= 3'd0;
        end else if ((1'b1 == ap_condition_115)) begin
            i_fu_84 <= select_ln10_1_reg_456;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_185)) begin
        if ((icmp_ln10_fu_163_p2 == 1'd0)) begin
            indvar_flatten15_fu_88 <= add_ln10_1_fu_169_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten15_fu_88 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_421)) begin
            indvar_flatten_fu_80 <= 6'd0;
        end else if ((1'b1 == ap_condition_115)) begin
            indvar_flatten_fu_80 <= select_ln12_3_fu_288_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
            j_fu_76 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_76 <= select_ln12_2_reg_486;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1))) begin
            k_fu_72 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            k_fu_72 <= add_ln15_fu_343_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_load_reg_516 <= a_q0;
        or_ln12_reg_474_pp0_iter1_reg <= or_ln12_reg_474;
        or_ln12_reg_474_pp0_iter2_reg <= or_ln12_reg_474_pp0_iter1_reg;
        prod_addr_reg_536 <= zext_ln13_1_fu_384_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_fu_163_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12_1_reg_463 <= add_ln12_1_fu_204_p2;
        icmp_ln12_reg_448 <= icmp_ln12_fu_187_p2;
        select_ln10_1_reg_456 <= select_ln10_1_fu_193_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_reg_492 <= add_ln13_fu_306_p2;
        add_ln13_reg_492_pp0_iter2_reg <= add_ln13_reg_492;
        add_ln13_reg_492_pp0_iter3_reg <= add_ln13_reg_492_pp0_iter2_reg;
        add_ln16_4_reg_502 <= add_ln16_4_fu_337_p2;
        icmp_ln10_reg_444 <= icmp_ln10_fu_163_p2;
        icmp_ln10_reg_444_pp0_iter1_reg <= icmp_ln10_reg_444;
        icmp_ln10_reg_444_pp0_iter2_reg <= icmp_ln10_reg_444_pp0_iter1_reg;
        icmp_ln15_1_reg_507 <= icmp_ln15_1_fu_348_p2;
        icmp_ln15_1_reg_507_pp0_iter2_reg <= icmp_ln15_1_reg_507;
        icmp_ln15_1_reg_507_pp0_iter3_reg <= icmp_ln15_1_reg_507_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_reg_444 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln16_1_reg_468 <= add_ln16_1_fu_238_p2;
        or_ln12_reg_474 <= or_ln12_fu_267_p2;
        select_ln12_2_reg_486 <= select_ln12_2_fu_280_p3;
        select_ln12_reg_479 <= select_ln12_fu_272_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln16_reg_541 <= grp_fu_392_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln10_reg_444 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln10_reg_444_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten15_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten15_load = indvar_flatten15_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load_1 = indvar_flatten_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_ce0 = 1'b1;
    end else begin
        prod_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_1_reg_507_pp0_iter3_reg == 1'd1))) begin
        prod_we0 = 1'b1;
    end else begin
        prod_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln16_2_fu_319_p1;

assign add_ln10_1_fu_169_p2 = (ap_sig_allocacmp_indvar_flatten15_load + 7'd1);

assign add_ln10_fu_181_p2 = (ap_sig_allocacmp_i_load + 3'd1);

assign add_ln12_1_fu_204_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);

assign add_ln12_fu_261_p2 = (select_ln10_fu_221_p3 + 3'd1);

assign add_ln13_fu_306_p2 = (add_ln16_1_reg_468 + zext_ln13_fu_303_p1);

assign add_ln15_fu_343_p2 = (select_ln12_reg_479 + 3'd1);

assign add_ln16_1_fu_238_p2 = (tmp_fu_231_p3 + zext_ln16_fu_228_p1);

assign add_ln16_2_fu_314_p2 = (add_ln16_1_reg_468 + zext_ln16_1_fu_311_p1);

assign add_ln16_3_fu_331_p2 = (zext_ln16_1_fu_311_p1 + tmp_1_fu_324_p3);

assign add_ln16_4_fu_337_p2 = (add_ln16_3_fu_331_p2 + zext_ln13_fu_303_p1);

assign and_ln10_fu_255_p2 = (xor_ln10_fu_244_p2 & icmp_ln15_fu_249_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_115 = ((icmp_ln10_reg_444 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

always @ (*) begin
    ap_condition_185 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_421 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign b_address0 = zext_ln16_3_fu_363_p1;

assign grp_fu_392_p2 = ((or_ln12_reg_474_pp0_iter2_reg[0:0] == 1'b1) ? 16'd0 : empty_fu_68);

assign icmp_ln10_fu_163_p2 = ((ap_sig_allocacmp_indvar_flatten15_load == 7'd125) ? 1'b1 : 1'b0);

assign icmp_ln12_fu_187_p2 = ((ap_sig_allocacmp_indvar_flatten_load_1 == 6'd25) ? 1'b1 : 1'b0);

assign icmp_ln15_1_fu_348_p2 = ((add_ln15_fu_343_p2 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln15_fu_249_p2 = ((k_fu_72 == 3'd5) ? 1'b1 : 1'b0);

assign or_ln12_fu_267_p2 = (icmp_ln12_reg_448 | and_ln10_fu_255_p2);

assign prod_address0 = prod_addr_reg_536;

assign prod_d0 = add_ln16_reg_541;

assign select_ln10_1_fu_193_p3 = ((icmp_ln12_fu_187_p2[0:0] == 1'b1) ? add_ln10_fu_181_p2 : ap_sig_allocacmp_i_load);

assign select_ln10_fu_221_p3 = ((icmp_ln12_reg_448[0:0] == 1'b1) ? 3'd0 : j_fu_76);

assign select_ln12_2_fu_280_p3 = ((and_ln10_fu_255_p2[0:0] == 1'b1) ? add_ln12_fu_261_p2 : select_ln10_fu_221_p3);

assign select_ln12_3_fu_288_p3 = ((icmp_ln12_reg_448[0:0] == 1'b1) ? 6'd1 : add_ln12_1_reg_463);

assign select_ln12_fu_272_p3 = ((or_ln12_fu_267_p2[0:0] == 1'b1) ? 3'd0 : k_fu_72);

assign tmp_1_fu_324_p3 = {{select_ln12_reg_479}, {2'd0}};

assign tmp_fu_231_p3 = {{select_ln10_1_reg_456}, {2'd0}};

assign xor_ln10_fu_244_p2 = (icmp_ln12_reg_448 ^ 1'd1);

assign zext_ln13_1_fu_384_p1 = add_ln13_reg_492_pp0_iter3_reg;

assign zext_ln13_fu_303_p1 = select_ln12_2_reg_486;

assign zext_ln16_1_fu_311_p1 = select_ln12_reg_479;

assign zext_ln16_2_fu_319_p1 = add_ln16_2_fu_314_p2;

assign zext_ln16_3_fu_363_p1 = add_ln16_4_reg_502;

assign zext_ln16_fu_228_p1 = select_ln10_1_reg_456;

endmodule //matrix_mult
