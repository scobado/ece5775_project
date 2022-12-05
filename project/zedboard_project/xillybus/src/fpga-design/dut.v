// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dut,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.159000,HLS_SYN_LAT=110608,HLS_SYN_TPT=none,HLS_SYN_MEM=112,HLS_SYN_DSP=5,HLS_SYN_FF=989,HLS_SYN_LUT=1775}" *)

module dut (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        strm_in_V_V_dout,
        strm_in_V_V_empty_n,
        strm_in_V_V_read,
        strm_out_V_V_din,
        strm_out_V_V_full_n,
        strm_out_V_V_write
);

parameter    ap_ST_st1_fsm_0 = 7'b1;
parameter    ap_ST_st2_fsm_1 = 7'b10;
parameter    ap_ST_st3_fsm_2 = 7'b100;
parameter    ap_ST_st4_fsm_3 = 7'b1000;
parameter    ap_ST_st5_fsm_4 = 7'b10000;
parameter    ap_ST_st6_fsm_5 = 7'b100000;
parameter    ap_ST_st7_fsm_6 = 7'b1000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv7_64 = 7'b1100100;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv14_0 = 14'b00000000000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] strm_in_V_V_dout;
input   strm_in_V_V_empty_n;
output   strm_in_V_V_read;
output  [31:0] strm_out_V_V_din;
input   strm_out_V_V_full_n;
output   strm_out_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg strm_in_V_V_read;
reg strm_out_V_V_write;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
reg   [13:0] matrix_10_dense_address0;
reg    matrix_10_dense_ce0;
wire   [31:0] matrix_10_dense_q0;
reg    strm_in_V_V_blk_n;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_51;
wire   [0:0] exitcond1_fu_145_p2;
reg    strm_out_V_V_blk_n;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_63;
wire   [6:0] i_1_fu_151_p2;
reg    ap_sig_69;
wire   [31:0] grp_dut_count_nnz_fu_130_ap_return;
reg   [31:0] nnz_reg_197;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_79;
wire    grp_dut_count_nnz_fu_130_ap_done;
wire    grp_dut_create_COO_fu_136_ap_done;
wire   [6:0] i_2_fu_173_p2;
reg   [6:0] i_2_reg_205;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_95;
wire   [0:0] exitcond_fu_167_p2;
reg   [13:0] row_1_address0;
reg    row_1_ce0;
wire   [6:0] row_1_q0;
reg   [13:0] col_1_address0;
reg    col_1_ce0;
wire   [6:0] col_1_q0;
reg   [13:0] val_1_address0;
reg    val_1_ce0;
wire   [31:0] val_1_q0;
reg   [6:0] dest_address0;
reg    dest_ce0;
reg    dest_we0;
reg   [31:0] dest_d0;
wire   [31:0] dest_q0;
wire    grp_dut_COO_SpMV_fu_119_ap_start;
wire    grp_dut_COO_SpMV_fu_119_ap_done;
wire    grp_dut_COO_SpMV_fu_119_ap_idle;
wire    grp_dut_COO_SpMV_fu_119_ap_ready;
wire   [13:0] grp_dut_COO_SpMV_fu_119_row_address0;
wire    grp_dut_COO_SpMV_fu_119_row_ce0;
wire   [13:0] grp_dut_COO_SpMV_fu_119_col_address0;
wire    grp_dut_COO_SpMV_fu_119_col_ce0;
wire   [13:0] grp_dut_COO_SpMV_fu_119_val_r_address0;
wire    grp_dut_COO_SpMV_fu_119_val_r_ce0;
wire   [6:0] grp_dut_COO_SpMV_fu_119_output_r_address0;
wire    grp_dut_COO_SpMV_fu_119_output_r_ce0;
wire    grp_dut_COO_SpMV_fu_119_output_r_we0;
wire   [31:0] grp_dut_COO_SpMV_fu_119_output_r_d0;
wire    grp_dut_count_nnz_fu_130_ap_start;
wire    grp_dut_count_nnz_fu_130_ap_idle;
wire    grp_dut_count_nnz_fu_130_ap_ready;
wire   [13:0] grp_dut_count_nnz_fu_130_input_r_address0;
wire    grp_dut_count_nnz_fu_130_input_r_ce0;
wire    grp_dut_create_COO_fu_136_ap_start;
wire    grp_dut_create_COO_fu_136_ap_idle;
wire    grp_dut_create_COO_fu_136_ap_ready;
wire   [13:0] grp_dut_create_COO_fu_136_row_address0;
wire    grp_dut_create_COO_fu_136_row_ce0;
wire    grp_dut_create_COO_fu_136_row_we0;
wire   [6:0] grp_dut_create_COO_fu_136_row_d0;
wire   [13:0] grp_dut_create_COO_fu_136_col_address0;
wire    grp_dut_create_COO_fu_136_col_ce0;
wire    grp_dut_create_COO_fu_136_col_we0;
wire   [6:0] grp_dut_create_COO_fu_136_col_d0;
wire   [13:0] grp_dut_create_COO_fu_136_val_r_address0;
wire    grp_dut_create_COO_fu_136_val_r_ce0;
wire    grp_dut_create_COO_fu_136_val_r_we0;
wire   [31:0] grp_dut_create_COO_fu_136_val_r_d0;
reg   [6:0] i_reg_97;
reg   [6:0] i2_reg_108;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_201;
reg    ap_reg_grp_dut_COO_SpMV_fu_119_ap_start;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_216;
reg    ap_reg_grp_dut_count_nnz_fu_130_ap_start;
reg    ap_reg_grp_dut_create_COO_fu_136_ap_start;
wire   [63:0] tmp_fu_157_p1;
wire   [63:0] tmp_3_fu_179_p1;
wire   [31:0] u1_fu_162_p1;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'b1;
#0 ap_reg_grp_dut_COO_SpMV_fu_119_ap_start = 1'b0;
#0 ap_reg_grp_dut_count_nnz_fu_130_ap_start = 1'b0;
#0 ap_reg_grp_dut_create_COO_fu_136_ap_start = 1'b0;
end

dut_matrix_10_dense #(
    .DataWidth( 32 ),
    .AddressRange( 10000 ),
    .AddressWidth( 14 ))
matrix_10_dense_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(matrix_10_dense_address0),
    .ce0(matrix_10_dense_ce0),
    .q0(matrix_10_dense_q0)
);

dut_row_1 #(
    .DataWidth( 7 ),
    .AddressRange( 10000 ),
    .AddressWidth( 14 ))
row_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(row_1_address0),
    .ce0(row_1_ce0),
    .we0(grp_dut_create_COO_fu_136_row_we0),
    .d0(grp_dut_create_COO_fu_136_row_d0),
    .q0(row_1_q0)
);

dut_row_1 #(
    .DataWidth( 7 ),
    .AddressRange( 10000 ),
    .AddressWidth( 14 ))
col_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col_1_address0),
    .ce0(col_1_ce0),
    .we0(grp_dut_create_COO_fu_136_col_we0),
    .d0(grp_dut_create_COO_fu_136_col_d0),
    .q0(col_1_q0)
);

dut_val_1 #(
    .DataWidth( 32 ),
    .AddressRange( 10000 ),
    .AddressWidth( 14 ))
val_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(val_1_address0),
    .ce0(val_1_ce0),
    .we0(grp_dut_create_COO_fu_136_val_r_we0),
    .d0(grp_dut_create_COO_fu_136_val_r_d0),
    .q0(val_1_q0)
);

dut_dest #(
    .DataWidth( 32 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
dest_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dest_address0),
    .ce0(dest_ce0),
    .we0(dest_we0),
    .d0(dest_d0),
    .q0(dest_q0)
);

dut_COO_SpMV grp_dut_COO_SpMV_fu_119(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dut_COO_SpMV_fu_119_ap_start),
    .ap_done(grp_dut_COO_SpMV_fu_119_ap_done),
    .ap_idle(grp_dut_COO_SpMV_fu_119_ap_idle),
    .ap_ready(grp_dut_COO_SpMV_fu_119_ap_ready),
    .row_address0(grp_dut_COO_SpMV_fu_119_row_address0),
    .row_ce0(grp_dut_COO_SpMV_fu_119_row_ce0),
    .row_q0(row_1_q0),
    .col_address0(grp_dut_COO_SpMV_fu_119_col_address0),
    .col_ce0(grp_dut_COO_SpMV_fu_119_col_ce0),
    .col_q0(col_1_q0),
    .val_r_address0(grp_dut_COO_SpMV_fu_119_val_r_address0),
    .val_r_ce0(grp_dut_COO_SpMV_fu_119_val_r_ce0),
    .val_r_q0(val_1_q0),
    .output_r_address0(grp_dut_COO_SpMV_fu_119_output_r_address0),
    .output_r_ce0(grp_dut_COO_SpMV_fu_119_output_r_ce0),
    .output_r_we0(grp_dut_COO_SpMV_fu_119_output_r_we0),
    .output_r_d0(grp_dut_COO_SpMV_fu_119_output_r_d0),
    .output_r_q0(dest_q0),
    .nnz(nnz_reg_197)
);

dut_count_nnz grp_dut_count_nnz_fu_130(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dut_count_nnz_fu_130_ap_start),
    .ap_done(grp_dut_count_nnz_fu_130_ap_done),
    .ap_idle(grp_dut_count_nnz_fu_130_ap_idle),
    .ap_ready(grp_dut_count_nnz_fu_130_ap_ready),
    .input_r_address0(grp_dut_count_nnz_fu_130_input_r_address0),
    .input_r_ce0(grp_dut_count_nnz_fu_130_input_r_ce0),
    .input_r_q0(matrix_10_dense_q0),
    .ap_return(grp_dut_count_nnz_fu_130_ap_return)
);

dut_create_COO grp_dut_create_COO_fu_136(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dut_create_COO_fu_136_ap_start),
    .ap_done(grp_dut_create_COO_fu_136_ap_done),
    .ap_idle(grp_dut_create_COO_fu_136_ap_idle),
    .ap_ready(grp_dut_create_COO_fu_136_ap_ready),
    .row_address0(grp_dut_create_COO_fu_136_row_address0),
    .row_ce0(grp_dut_create_COO_fu_136_row_ce0),
    .row_we0(grp_dut_create_COO_fu_136_row_we0),
    .row_d0(grp_dut_create_COO_fu_136_row_d0),
    .col_address0(grp_dut_create_COO_fu_136_col_address0),
    .col_ce0(grp_dut_create_COO_fu_136_col_ce0),
    .col_we0(grp_dut_create_COO_fu_136_col_we0),
    .col_d0(grp_dut_create_COO_fu_136_col_d0),
    .val_r_address0(grp_dut_create_COO_fu_136_val_r_address0),
    .val_r_ce0(grp_dut_create_COO_fu_136_val_r_ce0),
    .val_r_we0(grp_dut_create_COO_fu_136_val_r_we0),
    .val_r_d0(grp_dut_create_COO_fu_136_val_r_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dut_COO_SpMV_fu_119_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
            ap_reg_grp_dut_COO_SpMV_fu_119_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dut_COO_SpMV_fu_119_ap_ready)) begin
            ap_reg_grp_dut_COO_SpMV_fu_119_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dut_count_nnz_fu_130_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_69 & ~(exitcond1_fu_145_p2 == 1'b0))) begin
            ap_reg_grp_dut_count_nnz_fu_130_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dut_count_nnz_fu_130_ap_ready)) begin
            ap_reg_grp_dut_count_nnz_fu_130_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dut_create_COO_fu_136_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_69 & ~(exitcond1_fu_145_p2 == 1'b0))) begin
            ap_reg_grp_dut_create_COO_fu_136_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dut_create_COO_fu_136_ap_ready)) begin
            ap_reg_grp_dut_create_COO_fu_136_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(strm_out_V_V_full_n == 1'b0))) begin
        i2_reg_108 <= i_2_reg_205;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_dut_COO_SpMV_fu_119_ap_done))) begin
        i2_reg_108 <= ap_const_lv7_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_97 <= ap_const_lv7_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_145_p2 == 1'b0) & ~ap_sig_69)) begin
        i_reg_97 <= i_1_fu_151_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        i_2_reg_205 <= i_2_fu_173_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~((1'b0 == grp_dut_count_nnz_fu_130_ap_done) | (1'b0 == grp_dut_create_COO_fu_136_ap_done)))) begin
        nnz_reg_197 <= grp_dut_count_nnz_fu_130_ap_return;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == exitcond_fu_167_p2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == exitcond_fu_167_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_51) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_79) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_216) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_201) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_95) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_63) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        col_1_address0 = grp_dut_create_COO_fu_136_col_address0;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        col_1_address0 = grp_dut_COO_SpMV_fu_119_col_address0;
    end else begin
        col_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        col_1_ce0 = grp_dut_create_COO_fu_136_col_ce0;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        col_1_ce0 = grp_dut_COO_SpMV_fu_119_col_ce0;
    end else begin
        col_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        dest_address0 = tmp_fu_157_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        dest_address0 = tmp_3_fu_179_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        dest_address0 = grp_dut_COO_SpMV_fu_119_output_r_address0;
    end else begin
        dest_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_69) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        dest_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        dest_ce0 = grp_dut_COO_SpMV_fu_119_output_r_ce0;
    end else begin
        dest_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        dest_d0 = u1_fu_162_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        dest_d0 = grp_dut_COO_SpMV_fu_119_output_r_d0;
    end else begin
        dest_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_145_p2 == 1'b0) & ~ap_sig_69)) begin
        dest_we0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        dest_we0 = grp_dut_COO_SpMV_fu_119_output_r_we0;
    end else begin
        dest_we0 = 1'b0;
    end
end

always @ (*) begin
    matrix_10_dense_address0 = ap_const_lv14_0;
end

always @ (*) begin
    matrix_10_dense_ce0 = 1'b0;
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_1_address0 = grp_dut_create_COO_fu_136_row_address0;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        row_1_address0 = grp_dut_COO_SpMV_fu_119_row_address0;
    end else begin
        row_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_1_ce0 = grp_dut_create_COO_fu_136_row_ce0;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        row_1_ce0 = grp_dut_COO_SpMV_fu_119_row_ce0;
    end else begin
        row_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_145_p2 == 1'b0))) begin
        strm_in_V_V_blk_n = strm_in_V_V_empty_n;
    end else begin
        strm_in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_145_p2 == 1'b0) & ~ap_sig_69)) begin
        strm_in_V_V_read = 1'b1;
    end else begin
        strm_in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        strm_out_V_V_blk_n = strm_out_V_V_full_n;
    end else begin
        strm_out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(strm_out_V_V_full_n == 1'b0))) begin
        strm_out_V_V_write = 1'b1;
    end else begin
        strm_out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        val_1_address0 = grp_dut_create_COO_fu_136_val_r_address0;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        val_1_address0 = grp_dut_COO_SpMV_fu_119_val_r_address0;
    end else begin
        val_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        val_1_ce0 = grp_dut_create_COO_fu_136_val_r_ce0;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        val_1_ce0 = grp_dut_COO_SpMV_fu_119_val_r_ce0;
    end else begin
        val_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (((exitcond1_fu_145_p2 == 1'b0) & ~ap_sig_69)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else if ((~ap_sig_69 & ~(exitcond1_fu_145_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~((1'b0 == grp_dut_count_nnz_fu_130_ap_done) | (1'b0 == grp_dut_create_COO_fu_136_ap_done))) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == grp_dut_COO_SpMV_fu_119_ap_done)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st6_fsm_5 : begin
            if (~(1'b0 == exitcond_fu_167_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        ap_ST_st7_fsm_6 : begin
            if (~(strm_out_V_V_full_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_201 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_216 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_51 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_63 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_69 = ((exitcond1_fu_145_p2 == 1'b0) & (strm_in_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_79 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_95 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

assign exitcond1_fu_145_p2 = ((i_reg_97 == ap_const_lv7_64) ? 1'b1 : 1'b0);

assign exitcond_fu_167_p2 = ((i2_reg_108 == ap_const_lv7_64) ? 1'b1 : 1'b0);

assign grp_dut_COO_SpMV_fu_119_ap_start = ap_reg_grp_dut_COO_SpMV_fu_119_ap_start;

assign grp_dut_count_nnz_fu_130_ap_start = ap_reg_grp_dut_count_nnz_fu_130_ap_start;

assign grp_dut_create_COO_fu_136_ap_start = ap_reg_grp_dut_create_COO_fu_136_ap_start;

assign i_1_fu_151_p2 = (i_reg_97 + ap_const_lv7_1);

assign i_2_fu_173_p2 = (i2_reg_108 + ap_const_lv7_1);

assign strm_out_V_V_din = dest_q0;

assign tmp_3_fu_179_p1 = i2_reg_108;

assign tmp_fu_157_p1 = i_reg_97;

assign u1_fu_162_p1 = strm_in_V_V_dout;

endmodule //dut
