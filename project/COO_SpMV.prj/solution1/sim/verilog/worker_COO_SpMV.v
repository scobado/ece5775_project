// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module worker_COO_SpMV (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        row_address0,
        row_ce0,
        row_q0,
        col_address0,
        col_ce0,
        col_q0,
        val_r_address0,
        val_r_ce0,
        val_r_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        output_r_q0,
        nnz
);

parameter    ap_ST_st1_fsm_0 = 14'b1;
parameter    ap_ST_st2_fsm_1 = 14'b10;
parameter    ap_ST_st3_fsm_2 = 14'b100;
parameter    ap_ST_st4_fsm_3 = 14'b1000;
parameter    ap_ST_st5_fsm_4 = 14'b10000;
parameter    ap_ST_st6_fsm_5 = 14'b100000;
parameter    ap_ST_st7_fsm_6 = 14'b1000000;
parameter    ap_ST_st8_fsm_7 = 14'b10000000;
parameter    ap_ST_st9_fsm_8 = 14'b100000000;
parameter    ap_ST_st10_fsm_9 = 14'b1000000000;
parameter    ap_ST_st11_fsm_10 = 14'b10000000000;
parameter    ap_ST_st12_fsm_11 = 14'b100000000000;
parameter    ap_ST_st13_fsm_12 = 14'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 14'b10000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv12_9C4 = 12'b100111000100;
parameter    ap_const_lv12_1 = 12'b1;
parameter    ap_const_lv32_5 = 32'b101;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] row_address0;
output   row_ce0;
input  [5:0] row_q0;
output  [11:0] col_address0;
output   col_ce0;
input  [7:0] col_q0;
output  [11:0] val_r_address0;
output   val_r_ce0;
input  [31:0] val_r_q0;
output  [4:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;
input  [31:0] output_r_q0;
input  [31:0] nnz;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg row_ce0;
reg col_ce0;
reg val_r_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_31;
wire   [6:0] vector_address0;
reg    vector_ce0;
wire   [31:0] vector_q0;
wire   [11:0] i_4_fu_125_p2;
reg   [11:0] i_4_reg_171;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_82;
wire   [0:0] tmp_fu_131_p2;
reg   [0:0] tmp_reg_176;
wire   [0:0] exitcond_fu_119_p2;
wire   [63:0] tmp_s_fu_136_p1;
reg   [63:0] tmp_s_reg_180;
wire   [0:0] tmp_12_fu_145_p3;
reg   [0:0] tmp_12_reg_191;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_105;
reg   [4:0] output_addr_reg_205;
reg   [31:0] val_load_reg_210;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_121;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_131;
wire   [31:0] grp_fu_110_p2;
reg   [31:0] tmp_7_reg_225;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_140;
reg   [31:0] output_load_reg_230;
wire   [31:0] grp_fu_106_p2;
reg   [31:0] tmp_9_reg_235;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_150;
reg   [11:0] i_reg_95;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_160;
wire   [63:0] tmp_8_fu_153_p1;
wire  signed [63:0] tmp_6_fu_158_p1;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_169;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_185;
wire   [31:0] i_cast1_fu_115_p1;
wire  signed [31:0] extLd_fu_141_p1;
reg   [13:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'b1;
end

worker_COO_SpMV_vector #(
    .DataWidth( 32 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
vector_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(vector_address0),
    .ce0(vector_ce0),
    .q0(vector_q0)
);

worker_fadd_32ns_32ns_32_5_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
worker_fadd_32ns_32ns_32_5_full_dsp_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(output_load_reg_230),
    .din1(tmp_7_reg_225),
    .ce(1'b1),
    .dout(grp_fu_106_p2)
);

worker_fmul_32ns_32ns_32_4_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
worker_fmul_32ns_32ns_32_4_max_dsp_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(val_load_reg_210),
    .din1(vector_q0),
    .ce(1'b1),
    .dout(grp_fu_110_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        i_reg_95 <= i_4_reg_171;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_95 <= ap_const_lv12_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_4_reg_171 <= i_4_fu_125_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_12_fu_145_p3))) begin
        output_addr_reg_205 <= tmp_8_fu_153_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        output_load_reg_230 <= output_r_q0;
        tmp_7_reg_225 <= grp_fu_110_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        tmp_12_reg_191 <= row_q0[ap_const_lv32_5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        tmp_9_reg_235 <= grp_fu_106_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_119_p2 == 1'b0))) begin
        tmp_reg_176 <= tmp_fu_131_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_119_p2 == 1'b0) & ~(tmp_fu_131_p2 == 1'b0))) begin
        tmp_s_reg_180[11 : 0] <= tmp_s_fu_136_p1[11 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        val_load_reg_210 <= val_r_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_119_p2 == 1'b0)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_119_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_150) begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_160) begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_31) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_82) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_105) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_121) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_131) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_169) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_140) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_185) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        col_ce0 = 1'b1;
    end else begin
        col_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st14_fsm_13) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st14_fsm_13) & ~(tmp_reg_176 == 1'b0) & (1'b0 == tmp_12_reg_191))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        row_ce0 = 1'b1;
    end else begin
        row_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        val_r_ce0 = 1'b1;
    end else begin
        val_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        vector_ce0 = 1'b1;
    end else begin
        vector_ce0 = 1'b0;
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
            if (~(exitcond_fu_119_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else if (((exitcond_fu_119_p2 == 1'b0) & (tmp_fu_131_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st14_fsm_13;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == tmp_12_fu_145_p3)) begin
                ap_NS_fsm = ap_ST_st14_fsm_13;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_105 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_121 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_131 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_140 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_150 = (1'b1 == ap_CS_fsm[ap_const_lv32_C]);
end

always @ (*) begin
    ap_sig_160 = (1'b1 == ap_CS_fsm[ap_const_lv32_D]);
end

always @ (*) begin
    ap_sig_169 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_185 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_31 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_82 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign col_address0 = tmp_s_reg_180;

assign exitcond_fu_119_p2 = ((i_reg_95 == ap_const_lv12_9C4) ? 1'b1 : 1'b0);

assign extLd_fu_141_p1 = $signed(row_q0);

assign i_4_fu_125_p2 = (i_reg_95 + ap_const_lv12_1);

assign i_cast1_fu_115_p1 = i_reg_95;

assign output_r_address0 = output_addr_reg_205;

assign output_r_d0 = tmp_9_reg_235;

assign row_address0 = tmp_s_fu_136_p1;

assign tmp_12_fu_145_p3 = row_q0[ap_const_lv32_5];

assign tmp_6_fu_158_p1 = $signed(col_q0);

assign tmp_8_fu_153_p1 = $unsigned(extLd_fu_141_p1);

assign tmp_fu_131_p2 = (($signed(i_cast1_fu_115_p1) < $signed(nnz)) ? 1'b1 : 1'b0);

assign tmp_s_fu_136_p1 = i_reg_95;

assign val_r_address0 = tmp_s_reg_180;

assign vector_address0 = tmp_6_fu_158_p1;

always @ (posedge ap_clk) begin
    tmp_s_reg_180[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end

endmodule //worker_COO_SpMV
