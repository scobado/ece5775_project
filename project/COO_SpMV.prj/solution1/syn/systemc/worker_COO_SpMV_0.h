// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _worker_COO_SpMV_0_HH_
#define _worker_COO_SpMV_0_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "worker_fadd_32ns_32ns_32_5_full_dsp.h"
#include "worker_fmul_32ns_32ns_32_4_max_dsp.h"
#include "worker_COO_SpMV_0_row10_1_0.h"
#include "worker_COO_SpMV_0_val10_1_0.h"
#include "worker_COO_SpMV_0_col10_1_0.h"
#include "worker_COO_SpMV_0_vector.h"

namespace ap_rtl {

struct worker_COO_SpMV_0 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_in< sc_lv<32> > output_r_q0;
    sc_out< sc_lv<7> > output_r_address1;
    sc_out< sc_logic > output_r_ce1;
    sc_out< sc_logic > output_r_we1;
    sc_out< sc_lv<32> > output_r_d1;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    worker_COO_SpMV_0(sc_module_name name);
    SC_HAS_PROCESS(worker_COO_SpMV_0);

    ~worker_COO_SpMV_0();

    sc_trace_file* mVcdFile;

    worker_COO_SpMV_0_row10_1_0* row10_1_0_U;
    worker_COO_SpMV_0_val10_1_0* val10_1_0_U;
    worker_COO_SpMV_0_col10_1_0* col10_1_0_U;
    worker_COO_SpMV_0_vector* vector_U;
    worker_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* worker_fadd_32ns_32ns_32_5_full_dsp_U1;
    worker_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* worker_fmul_32ns_32ns_32_4_max_dsp_U2;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_20;
    sc_signal< sc_lv<12> > row10_1_0_address0;
    sc_signal< sc_logic > row10_1_0_ce0;
    sc_signal< sc_lv<8> > row10_1_0_q0;
    sc_signal< sc_lv<12> > val10_1_0_address0;
    sc_signal< sc_logic > val10_1_0_ce0;
    sc_signal< sc_lv<32> > val10_1_0_q0;
    sc_signal< sc_lv<12> > col10_1_0_address0;
    sc_signal< sc_logic > col10_1_0_ce0;
    sc_signal< sc_lv<8> > col10_1_0_q0;
    sc_signal< sc_lv<7> > vector_address0;
    sc_signal< sc_logic > vector_ce0;
    sc_signal< sc_lv<32> > vector_q0;
    sc_signal< sc_lv<12> > i_reg_104;
    sc_signal< sc_lv<1> > exitcond_fu_124_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_72;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it9;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it10;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it11;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it12;
    sc_signal< sc_lv<12> > i_1_fu_130_p2;
    sc_signal< sc_lv<64> > tmp_fu_136_p1;
    sc_signal< sc_lv<64> > tmp_reg_172;
    sc_signal< sc_lv<1> > tmp_4_fu_145_p3;
    sc_signal< sc_lv<1> > tmp_4_reg_183;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_reg_183_pp0_iter11;
    sc_signal< sc_lv<7> > output_addr_reg_197;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter2;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter3;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter4;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter5;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter6;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter7;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter8;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter9;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter10;
    sc_signal< sc_lv<7> > ap_reg_ppstg_output_addr_reg_197_pp0_iter11;
    sc_signal< sc_lv<32> > val10_1_0_load_reg_203;
    sc_signal< sc_lv<32> > grp_fu_119_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_218;
    sc_signal< sc_lv<32> > output_load_reg_223;
    sc_signal< sc_lv<32> > grp_fu_115_p2;
    sc_signal< sc_lv<32> > tmp_2_reg_228;
    sc_signal< sc_lv<64> > tmp_1_fu_153_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_158_p1;
    sc_signal< sc_lv<32> > row10_1_0_load_cast_fu_141_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_2;
    sc_signal< bool > ap_sig_238;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<3> ap_ST_st15_fsm_2;
    static const bool ap_true;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<12> ap_const_lv12_D05;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_20();
    void thread_ap_sig_238();
    void thread_ap_sig_72();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_st15_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_col10_1_0_address0();
    void thread_col10_1_0_ce0();
    void thread_exitcond_fu_124_p2();
    void thread_i_1_fu_130_p2();
    void thread_output_r_address0();
    void thread_output_r_address1();
    void thread_output_r_ce0();
    void thread_output_r_ce1();
    void thread_output_r_d1();
    void thread_output_r_we1();
    void thread_row10_1_0_address0();
    void thread_row10_1_0_ce0();
    void thread_row10_1_0_load_cast_fu_141_p1();
    void thread_tmp_1_fu_153_p1();
    void thread_tmp_4_fu_145_p3();
    void thread_tmp_9_fu_158_p1();
    void thread_tmp_fu_136_p1();
    void thread_val10_1_0_address0();
    void thread_val10_1_0_ce0();
    void thread_vector_address0();
    void thread_vector_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
