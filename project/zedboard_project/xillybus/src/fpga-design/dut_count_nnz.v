// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_count_nnz (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_st2_fsm_1 = 6'b10;
parameter    ap_ST_st3_fsm_2 = 6'b100;
parameter    ap_ST_st4_fsm_3 = 6'b1000;
parameter    ap_ST_st5_fsm_4 = 6'b10000;
parameter    ap_ST_st6_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv14_0 = 14'b00000000000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv14_64 = 14'b1100100;
parameter    ap_const_lv7_64 = 7'b1100100;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv23_0 = 23'b00000000000000000000000;
parameter    ap_const_lv5_1 = 5'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_23;
wire   [13:0] next_mul_fu_97_p2;
reg   [13:0] next_mul_reg_206;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_42;
wire   [6:0] i_4_fu_109_p2;
reg   [6:0] i_4_reg_214;
wire   [6:0] j_2_fu_121_p2;
reg   [6:0] j_2_reg_222;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_53;
wire   [0:0] exitcond_fu_115_p2;
reg   [31:0] input_load_reg_232;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_67;
wire   [0:0] notlhs_fu_159_p2;
reg   [0:0] notlhs_reg_238;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_76;
wire   [0:0] notrhs_fu_165_p2;
reg   [0:0] notrhs_reg_243;
wire   [0:0] tmp_9_fu_84_p2;
reg   [0:0] tmp_9_reg_248;
reg   [6:0] i_reg_50;
reg   [13:0] phi_mul_reg_61;
reg   [6:0] j_reg_73;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_100;
wire   [0:0] exitcond1_fu_103_p2;
wire   [63:0] tmp_12_cast_fu_137_p1;
reg   [31:0] counter_fu_34;
wire   [31:0] counter_2_fu_186_p3;
wire   [13:0] tmp_cast_fu_127_p1;
wire   [13:0] tmp_s_fu_131_p2;
wire   [31:0] input_load_to_int_fu_142_p1;
wire   [7:0] tmp_6_fu_145_p4;
wire   [22:0] tmp_fu_155_p1;
wire   [0:0] tmp_8_fu_171_p2;
wire   [0:0] tmp_1_fu_175_p2;
wire   [31:0] counter_3_fu_180_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
end

dut_fcmp_32ns_32ns_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
dut_fcmp_32ns_32ns_1_1_U1(
    .din0(input_load_reg_232),
    .din1(ap_const_lv32_0),
    .opcode(ap_const_lv5_1),
    .dout(tmp_9_fu_84_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        counter_fu_34 <= counter_2_fu_186_p3;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        counter_fu_34 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond_fu_115_p2 == 1'b0))) begin
        i_reg_50 <= i_4_reg_214;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_50 <= ap_const_lv7_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_fu_103_p2))) begin
        j_reg_73 <= ap_const_lv7_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        j_reg_73 <= j_2_reg_222;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond_fu_115_p2 == 1'b0))) begin
        phi_mul_reg_61 <= next_mul_reg_206;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        phi_mul_reg_61 <= ap_const_lv14_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_4_reg_214 <= i_4_fu_109_p2;
        next_mul_reg_206 <= next_mul_fu_97_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        input_load_reg_232 <= input_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        j_2_reg_222 <= j_2_fu_121_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        notlhs_reg_238 <= notlhs_fu_159_p2;
        notrhs_reg_243 <= notrhs_fu_165_p2;
        tmp_9_reg_248 <= tmp_9_fu_84_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_fu_103_p2)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_fu_103_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_42) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_53) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_67) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_76) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_100) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
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
            if (~(1'b0 == exitcond1_fu_103_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((exitcond_fu_115_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_return = counter_fu_34;

always @ (*) begin
    ap_sig_100 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_23 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_42 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_53 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_67 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_76 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

assign counter_2_fu_186_p3 = ((tmp_1_fu_175_p2[0:0] === 1'b1) ? counter_fu_34 : counter_3_fu_180_p2);

assign counter_3_fu_180_p2 = (ap_const_lv32_1 + counter_fu_34);

assign exitcond1_fu_103_p2 = ((i_reg_50 == ap_const_lv7_64) ? 1'b1 : 1'b0);

assign exitcond_fu_115_p2 = ((j_reg_73 == ap_const_lv7_64) ? 1'b1 : 1'b0);

assign i_4_fu_109_p2 = (i_reg_50 + ap_const_lv7_1);

assign input_load_to_int_fu_142_p1 = input_load_reg_232;

assign input_r_address0 = tmp_12_cast_fu_137_p1;

assign j_2_fu_121_p2 = (j_reg_73 + ap_const_lv7_1);

assign next_mul_fu_97_p2 = (phi_mul_reg_61 + ap_const_lv14_64);

assign notlhs_fu_159_p2 = ((tmp_6_fu_145_p4 != ap_const_lv8_FF) ? 1'b1 : 1'b0);

assign notrhs_fu_165_p2 = ((tmp_fu_155_p1 == ap_const_lv23_0) ? 1'b1 : 1'b0);

assign tmp_12_cast_fu_137_p1 = tmp_s_fu_131_p2;

assign tmp_1_fu_175_p2 = (tmp_8_fu_171_p2 & tmp_9_reg_248);

assign tmp_6_fu_145_p4 = {{input_load_to_int_fu_142_p1[ap_const_lv32_1E : ap_const_lv32_17]}};

assign tmp_8_fu_171_p2 = (notrhs_reg_243 | notlhs_reg_238);

assign tmp_cast_fu_127_p1 = j_reg_73;

assign tmp_fu_155_p1 = input_load_to_int_fu_142_p1[22:0];

assign tmp_s_fu_131_p2 = (phi_mul_reg_61 + tmp_cast_fu_127_p1);

endmodule //dut_count_nnz
