// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_COO_SpMV_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_r_address0,
        output_r_ce0,
        output_r_q0,
        output_r_address1,
        output_r_ce1,
        output_r_we1,
        output_r_d1
);

parameter    ap_ST_st1_fsm_0 = 3'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 3'b10;
parameter    ap_ST_st15_fsm_2 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv8_85 = 8'b10000101;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv32_2 = 32'b10;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] output_r_address0;
output   output_r_ce0;
input  [31:0] output_r_q0;
output  [1:0] output_r_address1;
output   output_r_ce1;
output   output_r_we1;
output  [31:0] output_r_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ce0;
reg output_r_ce1;
reg output_r_we1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
wire   [7:0] row10_25_20_address0;
reg    row10_25_20_ce0;
wire   [2:0] row10_25_20_q0;
wire   [7:0] val10_25_20_address0;
reg    val10_25_20_ce0;
wire   [31:0] val10_25_20_q0;
wire   [7:0] col10_25_20_address0;
reg    col10_25_20_ce0;
wire   [7:0] col10_25_20_q0;
wire   [6:0] v_address0;
reg    v_ce0;
wire   [31:0] v_q0;
reg   [7:0] i_reg_104;
wire   [0:0] exitcond_fu_124_p2;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_72;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it2;
reg    ap_reg_ppiten_pp0_it3;
reg    ap_reg_ppiten_pp0_it4;
reg    ap_reg_ppiten_pp0_it5;
reg    ap_reg_ppiten_pp0_it6;
reg    ap_reg_ppiten_pp0_it7;
reg    ap_reg_ppiten_pp0_it8;
reg    ap_reg_ppiten_pp0_it9;
reg    ap_reg_ppiten_pp0_it10;
reg    ap_reg_ppiten_pp0_it11;
reg    ap_reg_ppiten_pp0_it12;
wire   [7:0] i_3_fu_130_p2;
wire   [63:0] tmp4_fu_136_p1;
reg   [63:0] tmp4_reg_172;
wire   [0:0] tmp_10_fu_145_p3;
reg   [0:0] tmp_10_reg_183;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter2;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter3;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter4;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter5;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter6;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter7;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter8;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter9;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter10;
reg   [0:0] ap_reg_ppstg_tmp_10_reg_183_pp0_iter11;
reg   [1:0] output_addr_reg_197;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter2;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter3;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter4;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter5;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter6;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter7;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter8;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter9;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter10;
reg   [1:0] ap_reg_ppstg_output_addr_reg_197_pp0_iter11;
reg   [31:0] val10_25_20_load_reg_203;
wire   [31:0] grp_fu_119_p2;
reg   [31:0] tmp_2_reg_218;
reg   [31:0] output_load_reg_223;
wire   [31:0] grp_fu_115_p2;
reg   [31:0] tmp_4_reg_228;
wire   [63:0] tmp_3_fu_153_p1;
wire  signed [63:0] tmp_1_fu_158_p1;
wire  signed [31:0] row_load_cast_fu_141_p1;
reg    ap_sig_cseq_ST_st15_fsm_2;
reg    ap_sig_237;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'b1;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
#0 ap_reg_ppiten_pp0_it3 = 1'b0;
#0 ap_reg_ppiten_pp0_it4 = 1'b0;
#0 ap_reg_ppiten_pp0_it5 = 1'b0;
#0 ap_reg_ppiten_pp0_it6 = 1'b0;
#0 ap_reg_ppiten_pp0_it7 = 1'b0;
#0 ap_reg_ppiten_pp0_it8 = 1'b0;
#0 ap_reg_ppiten_pp0_it9 = 1'b0;
#0 ap_reg_ppiten_pp0_it10 = 1'b0;
#0 ap_reg_ppiten_pp0_it11 = 1'b0;
#0 ap_reg_ppiten_pp0_it12 = 1'b0;
end

dut_COO_SpMV_4_row10_25_20 #(
    .DataWidth( 3 ),
    .AddressRange( 133 ),
    .AddressWidth( 8 ))
row10_25_20_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(row10_25_20_address0),
    .ce0(row10_25_20_ce0),
    .q0(row10_25_20_q0)
);

dut_COO_SpMV_4_val10_25_20 #(
    .DataWidth( 32 ),
    .AddressRange( 133 ),
    .AddressWidth( 8 ))
val10_25_20_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(val10_25_20_address0),
    .ce0(val10_25_20_ce0),
    .q0(val10_25_20_q0)
);

dut_COO_SpMV_4_col10_25_20 #(
    .DataWidth( 8 ),
    .AddressRange( 133 ),
    .AddressWidth( 8 ))
col10_25_20_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col10_25_20_address0),
    .ce0(col10_25_20_ce0),
    .q0(col10_25_20_q0)
);

dut_COO_SpMV_24_v #(
    .DataWidth( 32 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
v_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(v_address0),
    .ce0(v_ce0),
    .q0(v_q0)
);

dut_fadd_32ns_32ns_32_5_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fadd_32ns_32ns_32_5_full_dsp_U122(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(output_load_reg_223),
    .din1(tmp_2_reg_218),
    .ce(1'b1),
    .dout(grp_fu_115_p2)
);

dut_fmul_32ns_32ns_32_4_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fmul_32ns_32ns_32_4_max_dsp_U123(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(val10_25_20_load_reg_203),
    .din1(v_q0),
    .ce(1'b1),
    .dout(grp_fu_119_p2)
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
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_fu_124_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_fu_124_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_fu_124_p2 == 1'b0)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it10 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it10 <= ap_reg_ppiten_pp0_it9;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it11 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it11 <= ap_reg_ppiten_pp0_it10;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it12 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it12 <= ap_reg_ppiten_pp0_it11;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it5 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it6 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it6 <= ap_reg_ppiten_pp0_it5;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it7 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it7 <= ap_reg_ppiten_pp0_it6;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it8 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it8 <= ap_reg_ppiten_pp0_it7;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it9 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it9 <= ap_reg_ppiten_pp0_it8;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_fu_124_p2 == 1'b0))) begin
        i_reg_104 <= i_3_fu_130_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_104 <= ap_const_lv8_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == 1'b1)) begin
        ap_reg_ppstg_output_addr_reg_197_pp0_iter10 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter9;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter11 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter10;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter2 <= output_addr_reg_197;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter3 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter2;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter4 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter3;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter5 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter4;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter6 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter5;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter7 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter6;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter8 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter7;
        ap_reg_ppstg_output_addr_reg_197_pp0_iter9 <= ap_reg_ppstg_output_addr_reg_197_pp0_iter8;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter10 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter9;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter11 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter10;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter2 <= tmp_10_reg_183;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter3 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter2;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter4 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter3;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter5 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter4;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter6 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter5;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter7 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter6;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter8 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter7;
        ap_reg_ppstg_tmp_10_reg_183_pp0_iter9 <= ap_reg_ppstg_tmp_10_reg_183_pp0_iter8;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b0 == tmp_10_fu_145_p3))) begin
        output_addr_reg_197 <= tmp_3_fu_153_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it6) & (1'b0 == ap_reg_ppstg_tmp_10_reg_183_pp0_iter5))) begin
        output_load_reg_223 <= output_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_fu_124_p2 == 1'b0))) begin
        tmp4_reg_172[7 : 0] <= tmp4_fu_136_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
        tmp_10_reg_183 <= row10_25_20_q0[ap_const_lv32_2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_reg_ppstg_tmp_10_reg_183_pp0_iter5)) begin
        tmp_2_reg_218 <= grp_fu_119_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_reg_ppstg_tmp_10_reg_183_pp0_iter10)) begin
        tmp_4_reg_228 <= grp_fu_115_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == tmp_10_reg_183)) begin
        val10_25_20_load_reg_203 <= val10_25_20_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st15_fsm_2))) begin
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
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_72) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_237) begin
        ap_sig_cseq_ST_st15_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        col10_25_20_ce0 = 1'b1;
    end else begin
        col10_25_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it5)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it12)) begin
        output_r_ce1 = 1'b1;
    end else begin
        output_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it12) & (1'b0 == ap_reg_ppstg_tmp_10_reg_183_pp0_iter11))) begin
        output_r_we1 = 1'b1;
    end else begin
        output_r_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        row10_25_20_ce0 = 1'b1;
    end else begin
        row10_25_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it2)) begin
        v_ce0 = 1'b1;
    end else begin
        v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        val10_25_20_ce0 = 1'b1;
    end else begin
        val10_25_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : begin
            if ((~((1'b1 == ap_reg_ppiten_pp0_it12) & ~(1'b1 == ap_reg_ppiten_pp0_it11)) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_fu_124_p2 == 1'b0) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if (((1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_fu_124_p2 == 1'b0) & ~(1'b1 == ap_reg_ppiten_pp0_it1))) begin
                ap_NS_fsm = ap_ST_st15_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st15_fsm_2;
            end
        end
        ap_ST_st15_fsm_2 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_237 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_72 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign col10_25_20_address0 = tmp4_reg_172;

assign exitcond_fu_124_p2 = ((i_reg_104 == ap_const_lv8_85) ? 1'b1 : 1'b0);

assign i_3_fu_130_p2 = (i_reg_104 + ap_const_lv8_1);

assign output_r_address0 = ap_reg_ppstg_output_addr_reg_197_pp0_iter4;

assign output_r_address1 = ap_reg_ppstg_output_addr_reg_197_pp0_iter11;

assign output_r_d1 = tmp_4_reg_228;

assign row10_25_20_address0 = tmp4_fu_136_p1;

assign row_load_cast_fu_141_p1 = $signed(row10_25_20_q0);

assign tmp4_fu_136_p1 = i_reg_104;

assign tmp_10_fu_145_p3 = row10_25_20_q0[ap_const_lv32_2];

assign tmp_1_fu_158_p1 = $signed(col10_25_20_q0);

assign tmp_3_fu_153_p1 = $unsigned(row_load_cast_fu_141_p1);

assign v_address0 = tmp_1_fu_158_p1;

assign val10_25_20_address0 = tmp4_reg_172;

always @ (posedge ap_clk) begin
    tmp4_reg_172[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //dut_COO_SpMV_4
