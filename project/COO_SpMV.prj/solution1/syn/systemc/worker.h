// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _worker_HH_
#define _worker_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "worker_COO_SpMV.h"
#include "worker_create_COO.h"
#include "worker_mux_4to1_sel2_32_1.h"
#include "worker_matrix_1_0.h"
#include "worker_matrix_1_1.h"
#include "worker_matrix_1_2.h"
#include "worker_matrix_1_3.h"
#include "worker_dest_1_0.h"
#include "worker_create_COO_temp_row.h"
#include "worker_create_COO_temp_col.h"
#include "worker_create_COO_temp_val.h"

namespace ap_rtl {

struct worker : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > dest_address0;
    sc_out< sc_logic > dest_ce0;
    sc_out< sc_logic > dest_we0;
    sc_out< sc_lv<32> > dest_d0;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    worker(sc_module_name name);
    SC_HAS_PROCESS(worker);

    ~worker();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    worker_matrix_1_0* matrix_1_0_U;
    worker_matrix_1_1* matrix_1_1_U;
    worker_matrix_1_2* matrix_1_2_U;
    worker_matrix_1_3* matrix_1_3_U;
    worker_dest_1_0* dest_1_0_U;
    worker_dest_1_0* dest_1_1_U;
    worker_dest_1_0* dest_1_2_U;
    worker_dest_1_0* dest_1_3_U;
    worker_create_COO_temp_row* row_1_0_U;
    worker_create_COO_temp_row* row_1_1_U;
    worker_create_COO_temp_row* row_1_2_U;
    worker_create_COO_temp_row* row_1_3_U;
    worker_create_COO_temp_col* col_1_0_U;
    worker_create_COO_temp_col* col_1_1_U;
    worker_create_COO_temp_col* col_1_2_U;
    worker_create_COO_temp_col* col_1_3_U;
    worker_create_COO_temp_val* val_1_0_U;
    worker_create_COO_temp_val* val_1_1_U;
    worker_create_COO_temp_val* val_1_2_U;
    worker_create_COO_temp_val* val_1_3_U;
    worker_COO_SpMV* grp_worker_COO_SpMV_fu_1096;
    worker_COO_SpMV* grp_worker_COO_SpMV_fu_1107;
    worker_COO_SpMV* grp_worker_COO_SpMV_fu_1118;
    worker_create_COO* grp_worker_create_COO_fu_1129;
    worker_create_COO* grp_worker_create_COO_fu_1139;
    worker_create_COO* grp_worker_create_COO_fu_1148;
    worker_mux_4to1_sel2_32_1<1,1,32,32,32,32,2,32>* worker_mux_4to1_sel2_32_1_U17;
    sc_signal< sc_lv<21> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_36;
    sc_signal< sc_lv<32> > matrix_1_0_q0;
    sc_signal< sc_lv<32> > matrix_1_1_q0;
    sc_signal< sc_lv<32> > matrix_1_2_q0;
    sc_signal< sc_lv<32> > matrix_1_3_q0;
    sc_signal< sc_lv<32> > grp_worker_create_COO_fu_1129_ap_return;
    sc_signal< sc_lv<32> > reg_1157;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_89;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_ap_done;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_100;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_ap_done;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_ap_done;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_ap_done;
    sc_signal< sc_lv<7> > i_1_fu_1168_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_121;
    sc_signal< sc_lv<32> > grp_worker_create_COO_fu_1139_ap_return;
    sc_signal< sc_lv<32> > tmp_3_reg_1257;
    sc_signal< sc_lv<32> > grp_worker_create_COO_fu_1148_ap_return;
    sc_signal< sc_lv<32> > tmp_4_reg_1262;
    sc_signal< sc_lv<7> > next_mul_fu_1179_p2;
    sc_signal< sc_lv<7> > next_mul_reg_1267;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_134;
    sc_signal< sc_lv<3> > i_2_fu_1191_p2;
    sc_signal< sc_lv<3> > i_2_reg_1275;
    sc_signal< sc_lv<2> > tmp_6_fu_1197_p1;
    sc_signal< sc_lv<2> > tmp_6_reg_1280;
    sc_signal< sc_lv<1> > exitcond1_fu_1185_p2;
    sc_signal< sc_lv<5> > j_fu_1211_p2;
    sc_signal< sc_lv<5> > j_reg_1288;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_151;
    sc_signal< sc_lv<1> > exitcond_fu_1205_p2;
    sc_signal< sc_lv<7> > tmp_9_fu_1225_p2;
    sc_signal< sc_lv<7> > tmp_9_reg_1313;
    sc_signal< sc_lv<5> > dest_1_0_address0;
    sc_signal< sc_logic > dest_1_0_ce0;
    sc_signal< sc_logic > dest_1_0_we0;
    sc_signal< sc_lv<32> > dest_1_0_q0;
    sc_signal< sc_lv<5> > dest_1_0_address1;
    sc_signal< sc_logic > dest_1_0_ce1;
    sc_signal< sc_logic > dest_1_0_we1;
    sc_signal< sc_lv<32> > dest_1_0_d1;
    sc_signal< sc_lv<32> > dest_1_0_q1;
    sc_signal< sc_lv<5> > dest_1_1_address0;
    sc_signal< sc_logic > dest_1_1_ce0;
    sc_signal< sc_logic > dest_1_1_we0;
    sc_signal< sc_lv<32> > dest_1_1_q0;
    sc_signal< sc_lv<5> > dest_1_1_address1;
    sc_signal< sc_logic > dest_1_1_ce1;
    sc_signal< sc_logic > dest_1_1_we1;
    sc_signal< sc_lv<32> > dest_1_1_d1;
    sc_signal< sc_lv<32> > dest_1_1_q1;
    sc_signal< sc_lv<5> > dest_1_2_address0;
    sc_signal< sc_logic > dest_1_2_ce0;
    sc_signal< sc_logic > dest_1_2_we0;
    sc_signal< sc_lv<32> > dest_1_2_q0;
    sc_signal< sc_lv<5> > dest_1_2_address1;
    sc_signal< sc_logic > dest_1_2_ce1;
    sc_signal< sc_logic > dest_1_2_we1;
    sc_signal< sc_lv<32> > dest_1_2_d1;
    sc_signal< sc_lv<32> > dest_1_2_q1;
    sc_signal< sc_lv<5> > dest_1_3_address0;
    sc_signal< sc_logic > dest_1_3_ce0;
    sc_signal< sc_logic > dest_1_3_we0;
    sc_signal< sc_lv<32> > dest_1_3_q0;
    sc_signal< sc_lv<5> > dest_1_3_address1;
    sc_signal< sc_logic > dest_1_3_ce1;
    sc_signal< sc_logic > dest_1_3_we1;
    sc_signal< sc_lv<32> > dest_1_3_d1;
    sc_signal< sc_lv<32> > dest_1_3_q1;
    sc_signal< sc_lv<12> > row_1_0_address0;
    sc_signal< sc_logic > row_1_0_ce0;
    sc_signal< sc_lv<5> > row_1_0_q0;
    sc_signal< sc_lv<12> > row_1_1_address0;
    sc_signal< sc_logic > row_1_1_ce0;
    sc_signal< sc_lv<5> > row_1_1_q0;
    sc_signal< sc_lv<12> > row_1_2_address0;
    sc_signal< sc_logic > row_1_2_ce0;
    sc_signal< sc_lv<5> > row_1_2_q0;
    sc_signal< sc_lv<12> > row_1_3_address0;
    sc_signal< sc_logic > row_1_3_ce0;
    sc_signal< sc_lv<5> > row_1_3_q0;
    sc_signal< sc_lv<12> > col_1_0_address0;
    sc_signal< sc_logic > col_1_0_ce0;
    sc_signal< sc_lv<7> > col_1_0_q0;
    sc_signal< sc_lv<12> > col_1_1_address0;
    sc_signal< sc_logic > col_1_1_ce0;
    sc_signal< sc_lv<7> > col_1_1_q0;
    sc_signal< sc_lv<12> > col_1_2_address0;
    sc_signal< sc_logic > col_1_2_ce0;
    sc_signal< sc_lv<7> > col_1_2_q0;
    sc_signal< sc_lv<12> > col_1_3_address0;
    sc_signal< sc_logic > col_1_3_ce0;
    sc_signal< sc_lv<7> > col_1_3_q0;
    sc_signal< sc_lv<12> > val_1_0_address0;
    sc_signal< sc_logic > val_1_0_ce0;
    sc_signal< sc_lv<32> > val_1_0_q0;
    sc_signal< sc_lv<12> > val_1_1_address0;
    sc_signal< sc_logic > val_1_1_ce0;
    sc_signal< sc_lv<32> > val_1_1_q0;
    sc_signal< sc_lv<12> > val_1_2_address0;
    sc_signal< sc_logic > val_1_2_ce0;
    sc_signal< sc_lv<32> > val_1_2_q0;
    sc_signal< sc_lv<12> > val_1_3_address0;
    sc_signal< sc_logic > val_1_3_ce0;
    sc_signal< sc_lv<32> > val_1_3_q0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_ap_start;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_ap_idle;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_ap_ready;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1096_row_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_row_ce0;
    sc_signal< sc_lv<5> > grp_worker_COO_SpMV_fu_1096_row_q0;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1096_col_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_col_ce0;
    sc_signal< sc_lv<7> > grp_worker_COO_SpMV_fu_1096_col_q0;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1096_val_r_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_val_r_ce0;
    sc_signal< sc_lv<32> > grp_worker_COO_SpMV_fu_1096_val_r_q0;
    sc_signal< sc_lv<5> > grp_worker_COO_SpMV_fu_1096_output_r_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_output_r_ce0;
    sc_signal< sc_lv<32> > grp_worker_COO_SpMV_fu_1096_output_r_q0;
    sc_signal< sc_lv<5> > grp_worker_COO_SpMV_fu_1096_output_r_address1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_output_r_ce1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1096_output_r_we1;
    sc_signal< sc_lv<32> > grp_worker_COO_SpMV_fu_1096_output_r_d1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_ap_start;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_ap_done;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_ap_idle;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_ap_ready;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1107_row_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_row_ce0;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1107_col_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_col_ce0;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1107_val_r_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_val_r_ce0;
    sc_signal< sc_lv<5> > grp_worker_COO_SpMV_fu_1107_output_r_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_output_r_ce0;
    sc_signal< sc_lv<5> > grp_worker_COO_SpMV_fu_1107_output_r_address1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_output_r_ce1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1107_output_r_we1;
    sc_signal< sc_lv<32> > grp_worker_COO_SpMV_fu_1107_output_r_d1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_ap_start;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_ap_done;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_ap_idle;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_ap_ready;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1118_row_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_row_ce0;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1118_col_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_col_ce0;
    sc_signal< sc_lv<12> > grp_worker_COO_SpMV_fu_1118_val_r_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_val_r_ce0;
    sc_signal< sc_lv<5> > grp_worker_COO_SpMV_fu_1118_output_r_address0;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_output_r_ce0;
    sc_signal< sc_lv<5> > grp_worker_COO_SpMV_fu_1118_output_r_address1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_output_r_ce1;
    sc_signal< sc_logic > grp_worker_COO_SpMV_fu_1118_output_r_we1;
    sc_signal< sc_lv<32> > grp_worker_COO_SpMV_fu_1118_output_r_d1;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_ap_start;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_ap_idle;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_ap_ready;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1129_input_r_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_input_r_ce0;
    sc_signal< sc_lv<32> > grp_worker_create_COO_fu_1129_input_r_q0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1129_row_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_row_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_row_we0;
    sc_signal< sc_lv<5> > grp_worker_create_COO_fu_1129_row_d0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1129_col_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_col_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_col_we0;
    sc_signal< sc_lv<7> > grp_worker_create_COO_fu_1129_col_d0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1129_val_r_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_val_r_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1129_val_r_we0;
    sc_signal< sc_lv<32> > grp_worker_create_COO_fu_1129_val_r_d0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_ap_start;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_ap_idle;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_ap_ready;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1139_input_r_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_input_r_ce0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1139_row_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_row_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_row_we0;
    sc_signal< sc_lv<5> > grp_worker_create_COO_fu_1139_row_d0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1139_col_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_col_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_col_we0;
    sc_signal< sc_lv<7> > grp_worker_create_COO_fu_1139_col_d0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1139_val_r_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_val_r_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1139_val_r_we0;
    sc_signal< sc_lv<32> > grp_worker_create_COO_fu_1139_val_r_d0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_ap_start;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_ap_idle;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_ap_ready;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1148_input_r_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_input_r_ce0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1148_row_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_row_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_row_we0;
    sc_signal< sc_lv<5> > grp_worker_create_COO_fu_1148_row_d0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1148_col_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_col_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_col_we0;
    sc_signal< sc_lv<7> > grp_worker_create_COO_fu_1148_col_d0;
    sc_signal< sc_lv<12> > grp_worker_create_COO_fu_1148_val_r_address0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_val_r_ce0;
    sc_signal< sc_logic > grp_worker_create_COO_fu_1148_val_r_we0;
    sc_signal< sc_lv<32> > grp_worker_create_COO_fu_1148_val_r_d0;
    sc_signal< sc_lv<7> > i_reg_1051;
    sc_signal< sc_lv<1> > exitcond4_fu_1162_p2;
    sc_signal< sc_lv<3> > i2_reg_1062;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_475;
    sc_signal< sc_lv<7> > phi_mul_reg_1073;
    sc_signal< sc_lv<5> > j3_reg_1085;
    sc_signal< sc_logic > ap_sig_cseq_ST_st21_fsm_20;
    sc_signal< bool > ap_sig_495;
    sc_signal< sc_logic > ap_reg_grp_worker_COO_SpMV_fu_1096_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_504;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_511;
    sc_signal< sc_logic > ap_reg_grp_worker_COO_SpMV_fu_1107_ap_start;
    sc_signal< sc_logic > ap_reg_grp_worker_COO_SpMV_fu_1118_ap_start;
    sc_signal< sc_logic > ap_reg_grp_worker_create_COO_fu_1129_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_540;
    sc_signal< sc_logic > ap_reg_grp_worker_create_COO_fu_1139_ap_start;
    sc_signal< sc_logic > ap_reg_grp_worker_create_COO_fu_1148_ap_start;
    sc_signal< sc_lv<64> > tmp_fu_1174_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_560;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_571;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_585;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_602;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_619;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_636;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_653;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_670;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_687;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_704;
    sc_signal< sc_lv<64> > tmp_8_fu_1217_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_1245_p1;
    sc_signal< sc_lv<32> > tmp_5_fu_1231_p6;
    sc_signal< sc_lv<7> > j3_cast2_fu_1201_p1;
    sc_signal< sc_lv<21> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<21> ap_ST_st1_fsm_0;
    static const sc_lv<21> ap_ST_st2_fsm_1;
    static const sc_lv<21> ap_ST_st3_fsm_2;
    static const sc_lv<21> ap_ST_st4_fsm_3;
    static const sc_lv<21> ap_ST_st5_fsm_4;
    static const sc_lv<21> ap_ST_st6_fsm_5;
    static const sc_lv<21> ap_ST_st7_fsm_6;
    static const sc_lv<21> ap_ST_st8_fsm_7;
    static const sc_lv<21> ap_ST_st9_fsm_8;
    static const sc_lv<21> ap_ST_st10_fsm_9;
    static const sc_lv<21> ap_ST_st11_fsm_10;
    static const sc_lv<21> ap_ST_st12_fsm_11;
    static const sc_lv<21> ap_ST_st13_fsm_12;
    static const sc_lv<21> ap_ST_st14_fsm_13;
    static const sc_lv<21> ap_ST_st15_fsm_14;
    static const sc_lv<21> ap_ST_st16_fsm_15;
    static const sc_lv<21> ap_ST_st17_fsm_16;
    static const sc_lv<21> ap_ST_st18_fsm_17;
    static const sc_lv<21> ap_ST_st19_fsm_18;
    static const sc_lv<21> ap_ST_st20_fsm_19;
    static const sc_lv<21> ap_ST_st21_fsm_20;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<64> ap_const_lv64_12;
    static const sc_lv<64> ap_const_lv64_13;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<64> ap_const_lv64_14;
    static const sc_lv<64> ap_const_lv64_15;
    static const sc_lv<64> ap_const_lv64_16;
    static const sc_lv<64> ap_const_lv64_17;
    static const sc_lv<64> ap_const_lv64_18;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<7> ap_const_lv7_19;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_100();
    void thread_ap_sig_121();
    void thread_ap_sig_134();
    void thread_ap_sig_151();
    void thread_ap_sig_36();
    void thread_ap_sig_475();
    void thread_ap_sig_495();
    void thread_ap_sig_504();
    void thread_ap_sig_511();
    void thread_ap_sig_540();
    void thread_ap_sig_560();
    void thread_ap_sig_571();
    void thread_ap_sig_585();
    void thread_ap_sig_602();
    void thread_ap_sig_619();
    void thread_ap_sig_636();
    void thread_ap_sig_653();
    void thread_ap_sig_670();
    void thread_ap_sig_687();
    void thread_ap_sig_704();
    void thread_ap_sig_89();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st21_fsm_20();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_col_1_0_address0();
    void thread_col_1_0_ce0();
    void thread_col_1_1_address0();
    void thread_col_1_1_ce0();
    void thread_col_1_2_address0();
    void thread_col_1_2_ce0();
    void thread_col_1_3_address0();
    void thread_col_1_3_ce0();
    void thread_dest_1_0_address0();
    void thread_dest_1_0_address1();
    void thread_dest_1_0_ce0();
    void thread_dest_1_0_ce1();
    void thread_dest_1_0_d1();
    void thread_dest_1_0_we0();
    void thread_dest_1_0_we1();
    void thread_dest_1_1_address0();
    void thread_dest_1_1_address1();
    void thread_dest_1_1_ce0();
    void thread_dest_1_1_ce1();
    void thread_dest_1_1_d1();
    void thread_dest_1_1_we0();
    void thread_dest_1_1_we1();
    void thread_dest_1_2_address0();
    void thread_dest_1_2_address1();
    void thread_dest_1_2_ce0();
    void thread_dest_1_2_ce1();
    void thread_dest_1_2_d1();
    void thread_dest_1_2_we0();
    void thread_dest_1_2_we1();
    void thread_dest_1_3_address0();
    void thread_dest_1_3_address1();
    void thread_dest_1_3_ce0();
    void thread_dest_1_3_ce1();
    void thread_dest_1_3_d1();
    void thread_dest_1_3_we0();
    void thread_dest_1_3_we1();
    void thread_dest_address0();
    void thread_dest_ce0();
    void thread_dest_d0();
    void thread_dest_we0();
    void thread_exitcond1_fu_1185_p2();
    void thread_exitcond4_fu_1162_p2();
    void thread_exitcond_fu_1205_p2();
    void thread_grp_worker_COO_SpMV_fu_1096_ap_start();
    void thread_grp_worker_COO_SpMV_fu_1096_col_q0();
    void thread_grp_worker_COO_SpMV_fu_1096_output_r_q0();
    void thread_grp_worker_COO_SpMV_fu_1096_row_q0();
    void thread_grp_worker_COO_SpMV_fu_1096_val_r_q0();
    void thread_grp_worker_COO_SpMV_fu_1107_ap_start();
    void thread_grp_worker_COO_SpMV_fu_1118_ap_start();
    void thread_grp_worker_create_COO_fu_1129_ap_start();
    void thread_grp_worker_create_COO_fu_1129_input_r_q0();
    void thread_grp_worker_create_COO_fu_1139_ap_start();
    void thread_grp_worker_create_COO_fu_1148_ap_start();
    void thread_i_1_fu_1168_p2();
    void thread_i_2_fu_1191_p2();
    void thread_j3_cast2_fu_1201_p1();
    void thread_j_fu_1211_p2();
    void thread_next_mul_fu_1179_p2();
    void thread_row_1_0_address0();
    void thread_row_1_0_ce0();
    void thread_row_1_1_address0();
    void thread_row_1_1_ce0();
    void thread_row_1_2_address0();
    void thread_row_1_2_ce0();
    void thread_row_1_3_address0();
    void thread_row_1_3_ce0();
    void thread_tmp_6_fu_1197_p1();
    void thread_tmp_8_fu_1217_p1();
    void thread_tmp_9_fu_1225_p2();
    void thread_tmp_fu_1174_p1();
    void thread_tmp_s_fu_1245_p1();
    void thread_val_1_0_address0();
    void thread_val_1_0_ce0();
    void thread_val_1_1_address0();
    void thread_val_1_1_ce0();
    void thread_val_1_2_address0();
    void thread_val_1_2_ce0();
    void thread_val_1_3_address0();
    void thread_val_1_3_ce0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
