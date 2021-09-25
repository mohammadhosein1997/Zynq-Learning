// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrix_mult_matrix_mult,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.967000,HLS_SYN_LAT=78,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=102,HLS_SYN_LUT=516,HLS_VERSION=2021_1}" *)

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
        prod_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [4:0] a_address1;
output   a_ce1;
input  [7:0] a_q1;
output  [4:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;
output  [4:0] b_address1;
output   b_ce1;
input  [7:0] b_q1;
output  [4:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [15:0] prod_d0;

reg ap_idle;
reg[4:0] a_address0;
reg a_ce0;
reg[4:0] a_address1;
reg a_ce1;
reg[4:0] b_address0;
reg b_ce0;
reg[4:0] b_address1;
reg b_ce1;
reg prod_ce0;
reg prod_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln10_reg_598;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_subdone;
reg   [7:0] reg_193;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln10_fu_237_p2;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] select_ln10_fu_264_p3;
reg   [2:0] select_ln10_reg_602;
wire   [2:0] select_ln10_1_fu_290_p3;
reg   [2:0] select_ln10_1_reg_607;
wire   [4:0] select_ln10_2_fu_298_p3;
reg   [4:0] select_ln10_2_reg_613;
wire   [4:0] zext_ln16_7_fu_376_p1;
reg   [4:0] zext_ln16_7_reg_646;
wire   [8:0] add_ln16_fu_405_p2;
reg   [8:0] add_ln16_reg_662;
wire   [4:0] add_ln13_1_fu_465_p2;
reg   [4:0] add_ln13_1_reg_682;
reg   [7:0] b_load_3_reg_687;
wire   [9:0] add_ln16_2_fu_484_p2;
reg   [9:0] add_ln16_2_reg_692;
wire   [10:0] add_ln16_3_fu_515_p2;
reg   [10:0] add_ln16_3_reg_697;
wire   [8:0] add_ln16_4_fu_521_p2;
reg   [8:0] add_ln16_4_reg_702;
wire   [9:0] add_ln16_6_fu_537_p2;
reg   [9:0] add_ln16_6_reg_707;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln16_2_fu_306_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] j_cast_fu_311_p1;
wire   [63:0] zext_ln16_9_fu_326_p1;
wire   [63:0] zext_ln16_3_fu_361_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_4_fu_371_p1;
wire   [63:0] zext_ln16_10_fu_385_p1;
wire   [63:0] zext_ln16_11_fu_396_p1;
wire   [63:0] zext_ln16_5_fu_440_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_6_fu_450_p1;
wire   [63:0] zext_ln16_12_fu_460_p1;
wire   [63:0] zext_ln13_1_fu_543_p1;
reg   [2:0] j_fu_70;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_j_load;
wire   [2:0] add_ln12_fu_331_p2;
reg   [2:0] i_fu_74;
reg   [2:0] ap_sig_allocacmp_i_1;
reg   [4:0] indvar_flatten_fu_78;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [4:0] add_ln10_5_fu_243_p2;
wire   [4:0] tmp_fu_223_p3;
wire   [4:0] zext_ln16_fu_219_p1;
wire   [0:0] icmp_ln12_fu_258_p2;
wire   [2:0] add_ln10_fu_252_p2;
wire   [4:0] tmp_1_fu_276_p3;
wire   [4:0] zext_ln16_1_fu_272_p1;
wire   [4:0] add_ln16_10_fu_284_p2;
wire   [4:0] add_ln16_9_fu_231_p2;
wire   [3:0] zext_ln16_8_fu_316_p1;
wire   [3:0] add_ln16_11_fu_320_p2;
wire   [4:0] add_ln10_1_fu_356_p2;
wire   [4:0] add_ln10_2_fu_366_p2;
wire   [4:0] add_ln16_12_fu_379_p2;
wire   [4:0] add_ln16_13_fu_390_p2;
wire  signed [8:0] sext_ln10_fu_352_p1;
wire  signed [8:0] sext_ln16_fu_401_p1;
wire   [4:0] p_shl5_cast_fu_414_p3;
wire   [4:0] zext_ln13_fu_411_p1;
wire   [4:0] add_ln10_3_fu_435_p2;
wire   [4:0] add_ln10_4_fu_445_p2;
wire   [4:0] add_ln16_14_fu_455_p2;
wire   [4:0] add_ln13_fu_421_p2;
wire  signed [8:0] sext_ln16_1_fu_470_p1;
wire  signed [8:0] sext_ln10_2_fu_431_p1;
wire   [8:0] add_ln16_1_fu_474_p2;
wire  signed [9:0] sext_ln16_6_fu_480_p1;
wire  signed [9:0] sext_ln10_1_fu_427_p1;
wire  signed [10:0] sext_ln16_7_fu_512_p1;
wire  signed [10:0] sext_ln16_5_fu_509_p1;
wire  signed [8:0] sext_ln16_2_fu_498_p1;
wire  signed [8:0] sext_ln10_3_fu_490_p1;
wire  signed [8:0] sext_ln10_4_fu_494_p1;
wire  signed [8:0] sext_ln16_4_fu_505_p1;
wire   [8:0] add_ln16_5_fu_527_p2;
wire  signed [9:0] sext_ln16_10_fu_533_p1;
wire  signed [9:0] sext_ln16_3_fu_502_p1;
wire  signed [10:0] sext_ln16_11_fu_553_p1;
wire  signed [10:0] sext_ln16_9_fu_550_p1;
wire   [10:0] add_ln16_7_fu_556_p2;
wire  signed [11:0] sext_ln16_12_fu_562_p1;
wire  signed [11:0] sext_ln16_8_fu_547_p1;
wire   [11:0] add_ln16_8_fu_566_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_197;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_197)) begin
        if ((icmp_ln10_fu_237_p2 == 1'd0)) begin
            i_fu_74 <= select_ln10_1_fu_290_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_74 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_197)) begin
        if ((icmp_ln10_fu_237_p2 == 1'd0)) begin
            indvar_flatten_fu_78 <= add_ln10_5_fu_243_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_78 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_197)) begin
        if ((icmp_ln10_fu_237_p2 == 1'd0)) begin
            j_fu_70 <= add_ln12_fu_331_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_70 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_reg_598 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_193 <= b_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_193 <= b_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_reg_598 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_1_reg_682 <= add_ln13_1_fu_465_p2;
        add_ln16_2_reg_692 <= add_ln16_2_fu_484_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16_3_reg_697 <= add_ln16_3_fu_515_p2;
        add_ln16_4_reg_702 <= add_ln16_4_fu_521_p2;
        add_ln16_6_reg_707 <= add_ln16_6_fu_537_p2;
        icmp_ln10_reg_598 <= icmp_ln10_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_reg_598 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln16_reg_662 <= add_ln16_fu_405_p2;
        zext_ln16_7_reg_646[2 : 0] <= zext_ln16_7_fu_376_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_reg_598 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_load_3_reg_687 <= b_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln10_fu_237_p2 == 1'd0))) begin
        select_ln10_1_reg_607 <= select_ln10_1_fu_290_p3;
        select_ln10_2_reg_613 <= select_ln10_2_fu_298_p3;
        select_ln10_reg_602 <= select_ln10_fu_264_p3;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address0 = zext_ln16_5_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address0 = zext_ln16_4_fu_371_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address0 = zext_ln16_2_fu_306_p1;
        end else begin
            a_address0 = 'bx;
        end
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address1 = zext_ln16_6_fu_450_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address1 = zext_ln16_3_fu_361_p1;
        end else begin
            a_address1 = 'bx;
        end
    end else begin
        a_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln10_reg_598 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_78;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 3'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_70;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_address0 = zext_ln16_12_fu_460_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address0 = zext_ln16_11_fu_396_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address0 = zext_ln16_9_fu_326_p1;
        end else begin
            b_address0 = 'bx;
        end
    end else begin
        b_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address1 = zext_ln16_10_fu_385_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address1 = j_cast_fu_311_p1;
        end else begin
            b_address1 = 'bx;
        end
    end else begin
        b_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        b_ce1 = 1'b1;
    end else begin
        b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_ce0 = 1'b1;
    end else begin
        prod_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_we0 = 1'b1;
    end else begin
        prod_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln10_1_fu_356_p2 = (select_ln10_2_reg_613 + 5'd1);

assign add_ln10_2_fu_366_p2 = (select_ln10_2_reg_613 + 5'd2);

assign add_ln10_3_fu_435_p2 = (select_ln10_2_reg_613 + 5'd3);

assign add_ln10_4_fu_445_p2 = (select_ln10_2_reg_613 + 5'd4);

assign add_ln10_5_fu_243_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);

assign add_ln10_fu_252_p2 = (ap_sig_allocacmp_i_1 + 3'd1);

assign add_ln12_fu_331_p2 = (select_ln10_fu_264_p3 + 3'd1);

assign add_ln13_1_fu_465_p2 = (add_ln13_fu_421_p2 + zext_ln16_7_reg_646);

assign add_ln13_fu_421_p2 = (p_shl5_cast_fu_414_p3 + zext_ln13_fu_411_p1);

assign add_ln16_10_fu_284_p2 = (tmp_1_fu_276_p3 + zext_ln16_1_fu_272_p1);

assign add_ln16_11_fu_320_p2 = (zext_ln16_8_fu_316_p1 + 4'd5);

assign add_ln16_12_fu_379_p2 = (zext_ln16_7_fu_376_p1 + 5'd10);

assign add_ln16_13_fu_390_p2 = (zext_ln16_7_fu_376_p1 + 5'd15);

assign add_ln16_14_fu_455_p2 = ($signed(zext_ln16_7_reg_646) + $signed(5'd20));

assign add_ln16_1_fu_474_p2 = ($signed(sext_ln16_1_fu_470_p1) + $signed(sext_ln10_2_fu_431_p1));

assign add_ln16_2_fu_484_p2 = ($signed(sext_ln16_6_fu_480_p1) + $signed(sext_ln10_1_fu_427_p1));

assign add_ln16_3_fu_515_p2 = ($signed(sext_ln16_7_fu_512_p1) + $signed(sext_ln16_5_fu_509_p1));

assign add_ln16_4_fu_521_p2 = ($signed(sext_ln16_2_fu_498_p1) + $signed(sext_ln10_3_fu_490_p1));

assign add_ln16_5_fu_527_p2 = ($signed(sext_ln10_4_fu_494_p1) + $signed(sext_ln16_4_fu_505_p1));

assign add_ln16_6_fu_537_p2 = ($signed(sext_ln16_10_fu_533_p1) + $signed(sext_ln16_3_fu_502_p1));

assign add_ln16_7_fu_556_p2 = ($signed(sext_ln16_11_fu_553_p1) + $signed(sext_ln16_9_fu_550_p1));

assign add_ln16_8_fu_566_p2 = ($signed(sext_ln16_12_fu_562_p1) + $signed(sext_ln16_8_fu_547_p1));

assign add_ln16_9_fu_231_p2 = (tmp_fu_223_p3 + zext_ln16_fu_219_p1);

assign add_ln16_fu_405_p2 = ($signed(sext_ln10_fu_352_p1) + $signed(sext_ln16_fu_401_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_197 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign icmp_ln10_fu_237_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln12_fu_258_p2 = ((ap_sig_allocacmp_j_load == 3'd5) ? 1'b1 : 1'b0);

assign j_cast_fu_311_p1 = select_ln10_fu_264_p3;

assign p_shl5_cast_fu_414_p3 = {{select_ln10_1_reg_607}, {2'd0}};

assign prod_address0 = zext_ln13_1_fu_543_p1;

assign prod_d0 = $signed(add_ln16_8_fu_566_p2);

assign select_ln10_1_fu_290_p3 = ((icmp_ln12_fu_258_p2[0:0] == 1'b1) ? add_ln10_fu_252_p2 : ap_sig_allocacmp_i_1);

assign select_ln10_2_fu_298_p3 = ((icmp_ln12_fu_258_p2[0:0] == 1'b1) ? add_ln16_10_fu_284_p2 : add_ln16_9_fu_231_p2);

assign select_ln10_fu_264_p3 = ((icmp_ln12_fu_258_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_j_load);

assign sext_ln10_1_fu_427_p1 = $signed(a_q1);

assign sext_ln10_2_fu_431_p1 = $signed(a_q0);

assign sext_ln10_3_fu_490_p1 = $signed(a_q0);

assign sext_ln10_4_fu_494_p1 = $signed(a_q1);

assign sext_ln10_fu_352_p1 = $signed(a_q0);

assign sext_ln16_10_fu_533_p1 = $signed(add_ln16_5_fu_527_p2);

assign sext_ln16_11_fu_553_p1 = $signed(add_ln16_6_reg_707);

assign sext_ln16_12_fu_562_p1 = $signed(add_ln16_7_fu_556_p2);

assign sext_ln16_1_fu_470_p1 = $signed(reg_193);

assign sext_ln16_2_fu_498_p1 = $signed(reg_193);

assign sext_ln16_3_fu_502_p1 = $signed(b_load_3_reg_687);

assign sext_ln16_4_fu_505_p1 = $signed(b_q0);

assign sext_ln16_5_fu_509_p1 = $signed(add_ln16_reg_662);

assign sext_ln16_6_fu_480_p1 = $signed(add_ln16_1_fu_474_p2);

assign sext_ln16_7_fu_512_p1 = $signed(add_ln16_2_reg_692);

assign sext_ln16_8_fu_547_p1 = $signed(add_ln16_3_reg_697);

assign sext_ln16_9_fu_550_p1 = $signed(add_ln16_4_reg_702);

assign sext_ln16_fu_401_p1 = $signed(b_q1);

assign tmp_1_fu_276_p3 = {{add_ln10_fu_252_p2}, {2'd0}};

assign tmp_fu_223_p3 = {{ap_sig_allocacmp_i_1}, {2'd0}};

assign zext_ln13_1_fu_543_p1 = add_ln13_1_reg_682;

assign zext_ln13_fu_411_p1 = select_ln10_1_reg_607;

assign zext_ln16_10_fu_385_p1 = add_ln16_12_fu_379_p2;

assign zext_ln16_11_fu_396_p1 = add_ln16_13_fu_390_p2;

assign zext_ln16_12_fu_460_p1 = add_ln16_14_fu_455_p2;

assign zext_ln16_1_fu_272_p1 = add_ln10_fu_252_p2;

assign zext_ln16_2_fu_306_p1 = select_ln10_2_fu_298_p3;

assign zext_ln16_3_fu_361_p1 = add_ln10_1_fu_356_p2;

assign zext_ln16_4_fu_371_p1 = add_ln10_2_fu_366_p2;

assign zext_ln16_5_fu_440_p1 = add_ln10_3_fu_435_p2;

assign zext_ln16_6_fu_450_p1 = add_ln10_4_fu_445_p2;

assign zext_ln16_7_fu_376_p1 = select_ln10_reg_602;

assign zext_ln16_8_fu_316_p1 = select_ln10_fu_264_p3;

assign zext_ln16_9_fu_326_p1 = add_ln16_11_fu_320_p2;

assign zext_ln16_fu_219_p1 = ap_sig_allocacmp_i_1;

always @ (posedge ap_clk) begin
    zext_ln16_7_reg_646[4:3] <= 2'b00;
end

endmodule //matrix_mult