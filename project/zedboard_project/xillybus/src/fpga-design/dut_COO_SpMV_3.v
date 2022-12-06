// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_COO_SpMV_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        vector_0_read,
        vector_1_read,
        vector_2_read,
        vector_3_read,
        vector_4_read,
        vector_5_read,
        vector_6_read,
        vector_7_read,
        vector_8_read,
        vector_9_read,
        vector_10_read,
        vector_11_read,
        vector_12_read,
        vector_13_read,
        vector_14_read,
        vector_15_read,
        vector_16_read,
        vector_17_read,
        vector_18_read,
        vector_19_read,
        vector_20_read,
        vector_21_read,
        vector_22_read,
        vector_23_read,
        vector_24_read,
        vector_25_read,
        vector_26_read,
        vector_27_read,
        vector_28_read,
        vector_29_read,
        vector_30_read,
        vector_31_read,
        vector_32_read,
        vector_33_read,
        vector_34_read,
        vector_35_read,
        vector_36_read,
        vector_37_read,
        vector_38_read,
        vector_39_read,
        vector_40_read,
        vector_41_read,
        vector_42_read,
        vector_43_read,
        vector_44_read,
        vector_45_read,
        vector_46_read,
        vector_47_read,
        vector_48_read,
        vector_49_read,
        vector_50_read,
        vector_51_read,
        vector_52_read,
        vector_53_read,
        vector_54_read,
        vector_55_read,
        vector_56_read,
        vector_57_read,
        vector_58_read,
        vector_59_read,
        vector_60_read,
        vector_61_read,
        vector_62_read,
        vector_63_read,
        vector_64_read,
        vector_65_read,
        vector_66_read,
        vector_67_read,
        vector_68_read,
        vector_69_read,
        vector_70_read,
        vector_71_read,
        vector_72_read,
        vector_73_read,
        vector_74_read,
        vector_75_read,
        vector_76_read,
        vector_77_read,
        vector_78_read,
        vector_79_read,
        vector_80_read,
        vector_81_read,
        vector_82_read,
        vector_83_read,
        vector_84_read,
        vector_85_read,
        vector_86_read,
        vector_87_read,
        vector_88_read,
        vector_89_read,
        vector_90_read,
        vector_91_read,
        vector_92_read,
        vector_93_read,
        vector_94_read,
        vector_95_read,
        vector_96_read,
        vector_97_read,
        vector_98_read,
        vector_99_read,
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
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv9_14D = 9'b101001101;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_2 = 32'b10;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] vector_0_read;
input  [31:0] vector_1_read;
input  [31:0] vector_2_read;
input  [31:0] vector_3_read;
input  [31:0] vector_4_read;
input  [31:0] vector_5_read;
input  [31:0] vector_6_read;
input  [31:0] vector_7_read;
input  [31:0] vector_8_read;
input  [31:0] vector_9_read;
input  [31:0] vector_10_read;
input  [31:0] vector_11_read;
input  [31:0] vector_12_read;
input  [31:0] vector_13_read;
input  [31:0] vector_14_read;
input  [31:0] vector_15_read;
input  [31:0] vector_16_read;
input  [31:0] vector_17_read;
input  [31:0] vector_18_read;
input  [31:0] vector_19_read;
input  [31:0] vector_20_read;
input  [31:0] vector_21_read;
input  [31:0] vector_22_read;
input  [31:0] vector_23_read;
input  [31:0] vector_24_read;
input  [31:0] vector_25_read;
input  [31:0] vector_26_read;
input  [31:0] vector_27_read;
input  [31:0] vector_28_read;
input  [31:0] vector_29_read;
input  [31:0] vector_30_read;
input  [31:0] vector_31_read;
input  [31:0] vector_32_read;
input  [31:0] vector_33_read;
input  [31:0] vector_34_read;
input  [31:0] vector_35_read;
input  [31:0] vector_36_read;
input  [31:0] vector_37_read;
input  [31:0] vector_38_read;
input  [31:0] vector_39_read;
input  [31:0] vector_40_read;
input  [31:0] vector_41_read;
input  [31:0] vector_42_read;
input  [31:0] vector_43_read;
input  [31:0] vector_44_read;
input  [31:0] vector_45_read;
input  [31:0] vector_46_read;
input  [31:0] vector_47_read;
input  [31:0] vector_48_read;
input  [31:0] vector_49_read;
input  [31:0] vector_50_read;
input  [31:0] vector_51_read;
input  [31:0] vector_52_read;
input  [31:0] vector_53_read;
input  [31:0] vector_54_read;
input  [31:0] vector_55_read;
input  [31:0] vector_56_read;
input  [31:0] vector_57_read;
input  [31:0] vector_58_read;
input  [31:0] vector_59_read;
input  [31:0] vector_60_read;
input  [31:0] vector_61_read;
input  [31:0] vector_62_read;
input  [31:0] vector_63_read;
input  [31:0] vector_64_read;
input  [31:0] vector_65_read;
input  [31:0] vector_66_read;
input  [31:0] vector_67_read;
input  [31:0] vector_68_read;
input  [31:0] vector_69_read;
input  [31:0] vector_70_read;
input  [31:0] vector_71_read;
input  [31:0] vector_72_read;
input  [31:0] vector_73_read;
input  [31:0] vector_74_read;
input  [31:0] vector_75_read;
input  [31:0] vector_76_read;
input  [31:0] vector_77_read;
input  [31:0] vector_78_read;
input  [31:0] vector_79_read;
input  [31:0] vector_80_read;
input  [31:0] vector_81_read;
input  [31:0] vector_82_read;
input  [31:0] vector_83_read;
input  [31:0] vector_84_read;
input  [31:0] vector_85_read;
input  [31:0] vector_86_read;
input  [31:0] vector_87_read;
input  [31:0] vector_88_read;
input  [31:0] vector_89_read;
input  [31:0] vector_90_read;
input  [31:0] vector_91_read;
input  [31:0] vector_92_read;
input  [31:0] vector_93_read;
input  [31:0] vector_94_read;
input  [31:0] vector_95_read;
input  [31:0] vector_96_read;
input  [31:0] vector_97_read;
input  [31:0] vector_98_read;
input  [31:0] vector_99_read;
output  [3:0] output_r_address0;
output   output_r_ce0;
input  [31:0] output_r_q0;
output  [3:0] output_r_address1;
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
wire   [8:0] row10_10_6_address0;
reg    row10_10_6_ce0;
wire   [4:0] row10_10_6_q0;
wire   [8:0] val10_10_6_address0;
reg    val10_10_6_ce0;
wire   [31:0] val10_10_6_q0;
wire   [8:0] col10_10_6_address0;
reg    col10_10_6_ce0;
wire   [7:0] col10_10_6_q0;
reg   [8:0] i_reg_894;
wire   [0:0] exitcond_fu_913_p2;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_368;
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
wire   [8:0] i_7_fu_919_p2;
wire   [63:0] tmp4_fu_925_p1;
reg   [63:0] tmp4_reg_1566;
wire   [0:0] tmp_17_fu_934_p3;
reg   [0:0] tmp_17_reg_1577;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter2;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter3;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter4;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter5;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter6;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter7;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter8;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter9;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter10;
reg   [0:0] ap_reg_ppstg_tmp_17_reg_1577_pp0_iter11;
reg   [3:0] output_addr_reg_1591;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter2;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter3;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter4;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter5;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter6;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter7;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter8;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter9;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter10;
reg   [3:0] ap_reg_ppstg_output_addr_reg_1591_pp0_iter11;
reg   [31:0] val10_10_6_load_reg_1597;
wire   [31:0] tmp_s_fu_951_p102;
reg   [31:0] tmp_s_reg_1602;
wire   [31:0] grp_fu_909_p2;
reg   [31:0] tmp_6_reg_1607;
reg   [31:0] output_load_reg_1612;
wire   [31:0] grp_fu_905_p2;
reg   [31:0] tmp_8_reg_1617;
wire   [63:0] tmp_7_fu_942_p1;
wire  signed [31:0] row_load_cast_fu_930_p1;
wire   [6:0] tmp_s_fu_951_p101;
reg    ap_sig_cseq_ST_st15_fsm_2;
reg    ap_sig_632;
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

dut_COO_SpMV_3_row10_10_6 #(
    .DataWidth( 5 ),
    .AddressRange( 333 ),
    .AddressWidth( 9 ))
row10_10_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(row10_10_6_address0),
    .ce0(row10_10_6_ce0),
    .q0(row10_10_6_q0)
);

dut_COO_SpMV_3_val10_10_6 #(
    .DataWidth( 32 ),
    .AddressRange( 333 ),
    .AddressWidth( 9 ))
val10_10_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(val10_10_6_address0),
    .ce0(val10_10_6_ce0),
    .q0(val10_10_6_q0)
);

dut_COO_SpMV_3_col10_10_6 #(
    .DataWidth( 8 ),
    .AddressRange( 333 ),
    .AddressWidth( 9 ))
col10_10_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col10_10_6_address0),
    .ce0(col10_10_6_ce0),
    .q0(col10_10_6_q0)
);

dut_fadd_32ns_32ns_32_5_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fadd_32ns_32ns_32_5_full_dsp_U643(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(output_load_reg_1612),
    .din1(tmp_6_reg_1607),
    .ce(1'b1),
    .dout(grp_fu_905_p2)
);

dut_fmul_32ns_32ns_32_4_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fmul_32ns_32ns_32_4_max_dsp_U644(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(val10_10_6_load_reg_1597),
    .din1(tmp_s_reg_1602),
    .ce(1'b1),
    .dout(grp_fu_909_p2)
);

dut_mux_100to1_sel7_32_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 32 ),
    .din11_WIDTH( 32 ),
    .din12_WIDTH( 32 ),
    .din13_WIDTH( 32 ),
    .din14_WIDTH( 32 ),
    .din15_WIDTH( 32 ),
    .din16_WIDTH( 32 ),
    .din17_WIDTH( 32 ),
    .din18_WIDTH( 32 ),
    .din19_WIDTH( 32 ),
    .din20_WIDTH( 32 ),
    .din21_WIDTH( 32 ),
    .din22_WIDTH( 32 ),
    .din23_WIDTH( 32 ),
    .din24_WIDTH( 32 ),
    .din25_WIDTH( 32 ),
    .din26_WIDTH( 32 ),
    .din27_WIDTH( 32 ),
    .din28_WIDTH( 32 ),
    .din29_WIDTH( 32 ),
    .din30_WIDTH( 32 ),
    .din31_WIDTH( 32 ),
    .din32_WIDTH( 32 ),
    .din33_WIDTH( 32 ),
    .din34_WIDTH( 32 ),
    .din35_WIDTH( 32 ),
    .din36_WIDTH( 32 ),
    .din37_WIDTH( 32 ),
    .din38_WIDTH( 32 ),
    .din39_WIDTH( 32 ),
    .din40_WIDTH( 32 ),
    .din41_WIDTH( 32 ),
    .din42_WIDTH( 32 ),
    .din43_WIDTH( 32 ),
    .din44_WIDTH( 32 ),
    .din45_WIDTH( 32 ),
    .din46_WIDTH( 32 ),
    .din47_WIDTH( 32 ),
    .din48_WIDTH( 32 ),
    .din49_WIDTH( 32 ),
    .din50_WIDTH( 32 ),
    .din51_WIDTH( 32 ),
    .din52_WIDTH( 32 ),
    .din53_WIDTH( 32 ),
    .din54_WIDTH( 32 ),
    .din55_WIDTH( 32 ),
    .din56_WIDTH( 32 ),
    .din57_WIDTH( 32 ),
    .din58_WIDTH( 32 ),
    .din59_WIDTH( 32 ),
    .din60_WIDTH( 32 ),
    .din61_WIDTH( 32 ),
    .din62_WIDTH( 32 ),
    .din63_WIDTH( 32 ),
    .din64_WIDTH( 32 ),
    .din65_WIDTH( 32 ),
    .din66_WIDTH( 32 ),
    .din67_WIDTH( 32 ),
    .din68_WIDTH( 32 ),
    .din69_WIDTH( 32 ),
    .din70_WIDTH( 32 ),
    .din71_WIDTH( 32 ),
    .din72_WIDTH( 32 ),
    .din73_WIDTH( 32 ),
    .din74_WIDTH( 32 ),
    .din75_WIDTH( 32 ),
    .din76_WIDTH( 32 ),
    .din77_WIDTH( 32 ),
    .din78_WIDTH( 32 ),
    .din79_WIDTH( 32 ),
    .din80_WIDTH( 32 ),
    .din81_WIDTH( 32 ),
    .din82_WIDTH( 32 ),
    .din83_WIDTH( 32 ),
    .din84_WIDTH( 32 ),
    .din85_WIDTH( 32 ),
    .din86_WIDTH( 32 ),
    .din87_WIDTH( 32 ),
    .din88_WIDTH( 32 ),
    .din89_WIDTH( 32 ),
    .din90_WIDTH( 32 ),
    .din91_WIDTH( 32 ),
    .din92_WIDTH( 32 ),
    .din93_WIDTH( 32 ),
    .din94_WIDTH( 32 ),
    .din95_WIDTH( 32 ),
    .din96_WIDTH( 32 ),
    .din97_WIDTH( 32 ),
    .din98_WIDTH( 32 ),
    .din99_WIDTH( 32 ),
    .din100_WIDTH( 32 ),
    .din101_WIDTH( 7 ),
    .dout_WIDTH( 32 ))
dut_mux_100to1_sel7_32_1_U645(
    .din1(vector_0_read),
    .din2(vector_1_read),
    .din3(vector_2_read),
    .din4(vector_3_read),
    .din5(vector_4_read),
    .din6(vector_5_read),
    .din7(vector_6_read),
    .din8(vector_7_read),
    .din9(vector_8_read),
    .din10(vector_9_read),
    .din11(vector_10_read),
    .din12(vector_11_read),
    .din13(vector_12_read),
    .din14(vector_13_read),
    .din15(vector_14_read),
    .din16(vector_15_read),
    .din17(vector_16_read),
    .din18(vector_17_read),
    .din19(vector_18_read),
    .din20(vector_19_read),
    .din21(vector_20_read),
    .din22(vector_21_read),
    .din23(vector_22_read),
    .din24(vector_23_read),
    .din25(vector_24_read),
    .din26(vector_25_read),
    .din27(vector_26_read),
    .din28(vector_27_read),
    .din29(vector_28_read),
    .din30(vector_29_read),
    .din31(vector_30_read),
    .din32(vector_31_read),
    .din33(vector_32_read),
    .din34(vector_33_read),
    .din35(vector_34_read),
    .din36(vector_35_read),
    .din37(vector_36_read),
    .din38(vector_37_read),
    .din39(vector_38_read),
    .din40(vector_39_read),
    .din41(vector_40_read),
    .din42(vector_41_read),
    .din43(vector_42_read),
    .din44(vector_43_read),
    .din45(vector_44_read),
    .din46(vector_45_read),
    .din47(vector_46_read),
    .din48(vector_47_read),
    .din49(vector_48_read),
    .din50(vector_49_read),
    .din51(vector_50_read),
    .din52(vector_51_read),
    .din53(vector_52_read),
    .din54(vector_53_read),
    .din55(vector_54_read),
    .din56(vector_55_read),
    .din57(vector_56_read),
    .din58(vector_57_read),
    .din59(vector_58_read),
    .din60(vector_59_read),
    .din61(vector_60_read),
    .din62(vector_61_read),
    .din63(vector_62_read),
    .din64(vector_63_read),
    .din65(vector_64_read),
    .din66(vector_65_read),
    .din67(vector_66_read),
    .din68(vector_67_read),
    .din69(vector_68_read),
    .din70(vector_69_read),
    .din71(vector_70_read),
    .din72(vector_71_read),
    .din73(vector_72_read),
    .din74(vector_73_read),
    .din75(vector_74_read),
    .din76(vector_75_read),
    .din77(vector_76_read),
    .din78(vector_77_read),
    .din79(vector_78_read),
    .din80(vector_79_read),
    .din81(vector_80_read),
    .din82(vector_81_read),
    .din83(vector_82_read),
    .din84(vector_83_read),
    .din85(vector_84_read),
    .din86(vector_85_read),
    .din87(vector_86_read),
    .din88(vector_87_read),
    .din89(vector_88_read),
    .din90(vector_89_read),
    .din91(vector_90_read),
    .din92(vector_91_read),
    .din93(vector_92_read),
    .din94(vector_93_read),
    .din95(vector_94_read),
    .din96(vector_95_read),
    .din97(vector_96_read),
    .din98(vector_97_read),
    .din99(vector_98_read),
    .din100(vector_99_read),
    .din101(tmp_s_fu_951_p101),
    .dout(tmp_s_fu_951_p102)
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
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_fu_913_p2 == 1'b0))) begin
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
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_fu_913_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_fu_913_p2 == 1'b0)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_fu_913_p2 == 1'b0))) begin
        i_reg_894 <= i_7_fu_919_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_894 <= ap_const_lv9_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == 1'b1)) begin
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter10 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter9;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter11 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter10;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter2 <= output_addr_reg_1591;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter3 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter2;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter4 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter3;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter5 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter4;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter6 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter5;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter7 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter6;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter8 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter7;
        ap_reg_ppstg_output_addr_reg_1591_pp0_iter9 <= ap_reg_ppstg_output_addr_reg_1591_pp0_iter8;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter10 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter9;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter11 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter10;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter2 <= tmp_17_reg_1577;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter3 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter2;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter4 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter3;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter5 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter4;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter6 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter5;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter7 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter6;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter8 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter7;
        ap_reg_ppstg_tmp_17_reg_1577_pp0_iter9 <= ap_reg_ppstg_tmp_17_reg_1577_pp0_iter8;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b0 == tmp_17_fu_934_p3))) begin
        output_addr_reg_1591 <= tmp_7_fu_942_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it6) & (1'b0 == ap_reg_ppstg_tmp_17_reg_1577_pp0_iter5))) begin
        output_load_reg_1612 <= output_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_fu_913_p2 == 1'b0))) begin
        tmp4_reg_1566[8 : 0] <= tmp4_fu_925_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
        tmp_17_reg_1577 <= row10_10_6_q0[ap_const_lv32_4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_reg_ppstg_tmp_17_reg_1577_pp0_iter5)) begin
        tmp_6_reg_1607 <= grp_fu_909_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_reg_ppstg_tmp_17_reg_1577_pp0_iter10)) begin
        tmp_8_reg_1617 <= grp_fu_905_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == tmp_17_reg_1577)) begin
        tmp_s_reg_1602 <= tmp_s_fu_951_p102;
        val10_10_6_load_reg_1597 <= val10_10_6_q0;
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
    if (ap_sig_368) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_632) begin
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
        col10_10_6_ce0 = 1'b1;
    end else begin
        col10_10_6_ce0 = 1'b0;
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
    if (((1'b1 == ap_reg_ppiten_pp0_it12) & (1'b0 == ap_reg_ppstg_tmp_17_reg_1577_pp0_iter11))) begin
        output_r_we1 = 1'b1;
    end else begin
        output_r_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        row10_10_6_ce0 = 1'b1;
    end else begin
        row10_10_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        val10_10_6_ce0 = 1'b1;
    end else begin
        val10_10_6_ce0 = 1'b0;
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
            if ((~((1'b1 == ap_reg_ppiten_pp0_it12) & ~(1'b1 == ap_reg_ppiten_pp0_it11)) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_fu_913_p2 == 1'b0) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if (((1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_fu_913_p2 == 1'b0) & ~(1'b1 == ap_reg_ppiten_pp0_it1))) begin
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
    ap_sig_368 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_632 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

assign col10_10_6_address0 = tmp4_reg_1566;

assign exitcond_fu_913_p2 = ((i_reg_894 == ap_const_lv9_14D) ? 1'b1 : 1'b0);

assign i_7_fu_919_p2 = (i_reg_894 + ap_const_lv9_1);

assign output_r_address0 = ap_reg_ppstg_output_addr_reg_1591_pp0_iter4;

assign output_r_address1 = ap_reg_ppstg_output_addr_reg_1591_pp0_iter11;

assign output_r_d1 = tmp_8_reg_1617;

assign row10_10_6_address0 = tmp4_fu_925_p1;

assign row_load_cast_fu_930_p1 = $signed(row10_10_6_q0);

assign tmp4_fu_925_p1 = i_reg_894;

assign tmp_17_fu_934_p3 = row10_10_6_q0[ap_const_lv32_4];

assign tmp_7_fu_942_p1 = $unsigned(row_load_cast_fu_930_p1);

assign tmp_s_fu_951_p101 = col10_10_6_q0[6:0];

assign val10_10_6_address0 = tmp4_reg_1566;

always @ (posedge ap_clk) begin
    tmp4_reg_1566[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end

endmodule //dut_COO_SpMV_3
