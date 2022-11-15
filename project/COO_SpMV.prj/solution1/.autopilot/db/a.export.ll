; ModuleID = '/home/sec322/ece5775/ece5775_project/project/COO_SpMV.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@hls_KD_KD_LineBuffer_MD_20_MC = internal unnamed_addr constant [56 x i8] c"hls::LineBuffer<20, 100, float, 0>::LineBuffer.1.region\00"
@COO_SpMV_str = internal unnamed_addr constant [9 x i8] c"COO_SpMV\00"

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i8
  ret i8 %empty_5
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_ssdm_SpecDependence(...) nounwind

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define void @COO_SpMV([10000 x i32]* %row, [10000 x i32]* %col, [10000 x float]* %val_r, [100 x float]* %vector, [100 x float]* %output_r, i32 %nnz) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %row) nounwind, !map !99
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %col) nounwind, !map !105
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %val_r) nounwind, !map !109
  call void (...)* @_ssdm_op_SpecBitsMap([100 x float]* %vector) nounwind, !map !113
  call void (...)* @_ssdm_op_SpecBitsMap([100 x float]* %output_r) nounwind, !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %nnz) nounwind, !map !123
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @COO_SpMV_str) nounwind
  %nnz_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %nnz) nounwind
  %temp1_val_0 = alloca [100 x float], align 4
  %temp1_val_1 = alloca [100 x float], align 4
  %temp1_val_2 = alloca [100 x float], align 4
  %temp1_val_3 = alloca [100 x float], align 4
  %temp1_val_4 = alloca [100 x float], align 4
  %temp1_val_5 = alloca [100 x float], align 4
  %temp1_val_6 = alloca [100 x float], align 4
  %temp1_val_7 = alloca [100 x float], align 4
  %temp1_val_8 = alloca [100 x float], align 4
  %temp1_val_9 = alloca [100 x float], align 4
  %temp1_val_10 = alloca [100 x float], align 4
  %temp1_val_11 = alloca [100 x float], align 4
  %temp1_val_12 = alloca [100 x float], align 4
  %temp1_val_13 = alloca [100 x float], align 4
  %temp1_val_14 = alloca [100 x float], align 4
  %temp1_val_15 = alloca [100 x float], align 4
  %temp1_val_16 = alloca [100 x float], align 4
  %temp1_val_17 = alloca [100 x float], align 4
  %temp1_val_18 = alloca [100 x float], align 4
  %temp1_val_19 = alloca [100 x float], align 4
  %temp2_val_0 = alloca [100 x float], align 4
  %temp2_val_1 = alloca [100 x float], align 4
  %temp2_val_2 = alloca [100 x float], align 4
  %temp2_val_3 = alloca [100 x float], align 4
  %temp2_val_4 = alloca [100 x float], align 4
  %temp2_val_5 = alloca [100 x float], align 4
  %temp2_val_6 = alloca [100 x float], align 4
  %temp2_val_7 = alloca [100 x float], align 4
  %temp2_val_8 = alloca [100 x float], align 4
  %temp2_val_9 = alloca [100 x float], align 4
  %temp2_val_10 = alloca [100 x float], align 4
  %temp2_val_11 = alloca [100 x float], align 4
  %temp2_val_12 = alloca [100 x float], align 4
  %temp2_val_13 = alloca [100 x float], align 4
  %temp2_val_14 = alloca [100 x float], align 4
  %temp2_val_15 = alloca [100 x float], align 4
  %temp2_val_16 = alloca [100 x float], align 4
  %temp2_val_17 = alloca [100 x float], align 4
  %temp2_val_18 = alloca [100 x float], align 4
  %temp2_val_19 = alloca [100 x float], align 4
  %rbegin_i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([56 x i8]* @hls_KD_KD_LineBuffer_MD_20_MC) nounwind
  %rend_i18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([56 x i8]* @hls_KD_KD_LineBuffer_MD_20_MC, i32 %rbegin_i1) nounwind
  %rbegin_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([56 x i8]* @hls_KD_KD_LineBuffer_MD_20_MC) nounwind
  %rend_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([56 x i8]* @hls_KD_KD_LineBuffer_MD_20_MC, i32 %rbegin_i) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %2, %0
  %col_assign = phi i7 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond8 = icmp eq i7 %col_assign, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_1 = add i7 %col_assign, 1
  br i1 %exitcond8, label %.preheader14, label %1

; <label>:1                                       ; preds = %.loopexit
  %tmp = zext i7 %col_assign to i64
  %output_addr = getelementptr [100 x float]* %output_r, i64 0, i64 %tmp
  store float 0.000000e+00, float* %output_addr, align 4
  %temp1_val_18_addr_1 = getelementptr [100 x float]* %temp1_val_18, i64 0, i64 %tmp
  %temp1_val_19_addr_1 = getelementptr [100 x float]* %temp1_val_19, i64 0, i64 %tmp
  %temp1_val_17_addr_1 = getelementptr [100 x float]* %temp1_val_17, i64 0, i64 %tmp
  %temp1_val_16_addr_1 = getelementptr [100 x float]* %temp1_val_16, i64 0, i64 %tmp
  %temp1_val_15_addr_1 = getelementptr [100 x float]* %temp1_val_15, i64 0, i64 %tmp
  %temp1_val_14_addr_1 = getelementptr [100 x float]* %temp1_val_14, i64 0, i64 %tmp
  %temp1_val_13_addr_1 = getelementptr [100 x float]* %temp1_val_13, i64 0, i64 %tmp
  %temp1_val_12_addr_1 = getelementptr [100 x float]* %temp1_val_12, i64 0, i64 %tmp
  %temp1_val_11_addr_1 = getelementptr [100 x float]* %temp1_val_11, i64 0, i64 %tmp
  %temp1_val_10_addr_1 = getelementptr [100 x float]* %temp1_val_10, i64 0, i64 %tmp
  %temp1_val_9_addr_1 = getelementptr [100 x float]* %temp1_val_9, i64 0, i64 %tmp
  %temp1_val_8_addr_1 = getelementptr [100 x float]* %temp1_val_8, i64 0, i64 %tmp
  %temp1_val_7_addr_1 = getelementptr [100 x float]* %temp1_val_7, i64 0, i64 %tmp
  %temp1_val_6_addr_1 = getelementptr [100 x float]* %temp1_val_6, i64 0, i64 %tmp
  %temp1_val_5_addr_1 = getelementptr [100 x float]* %temp1_val_5, i64 0, i64 %tmp
  %temp1_val_4_addr_1 = getelementptr [100 x float]* %temp1_val_4, i64 0, i64 %tmp
  %temp1_val_3_addr_1 = getelementptr [100 x float]* %temp1_val_3, i64 0, i64 %tmp
  %temp1_val_2_addr_1 = getelementptr [100 x float]* %temp1_val_2, i64 0, i64 %tmp
  %temp1_val_1_addr_1 = getelementptr [100 x float]* %temp1_val_1, i64 0, i64 %tmp
  %temp1_val_0_addr_1 = getelementptr [100 x float]* %temp1_val_0, i64 0, i64 %tmp
  %temp2_val_18_addr = getelementptr [100 x float]* %temp2_val_18, i64 0, i64 %tmp
  %temp2_val_19_addr = getelementptr [100 x float]* %temp2_val_19, i64 0, i64 %tmp
  %temp2_val_17_addr = getelementptr [100 x float]* %temp2_val_17, i64 0, i64 %tmp
  %temp2_val_16_addr = getelementptr [100 x float]* %temp2_val_16, i64 0, i64 %tmp
  %temp2_val_15_addr = getelementptr [100 x float]* %temp2_val_15, i64 0, i64 %tmp
  %temp2_val_14_addr = getelementptr [100 x float]* %temp2_val_14, i64 0, i64 %tmp
  %temp2_val_13_addr = getelementptr [100 x float]* %temp2_val_13, i64 0, i64 %tmp
  %temp2_val_12_addr = getelementptr [100 x float]* %temp2_val_12, i64 0, i64 %tmp
  %temp2_val_11_addr = getelementptr [100 x float]* %temp2_val_11, i64 0, i64 %tmp
  %temp2_val_10_addr = getelementptr [100 x float]* %temp2_val_10, i64 0, i64 %tmp
  %temp2_val_9_addr = getelementptr [100 x float]* %temp2_val_9, i64 0, i64 %tmp
  %temp2_val_8_addr = getelementptr [100 x float]* %temp2_val_8, i64 0, i64 %tmp
  %temp2_val_7_addr = getelementptr [100 x float]* %temp2_val_7, i64 0, i64 %tmp
  %temp2_val_6_addr = getelementptr [100 x float]* %temp2_val_6, i64 0, i64 %tmp
  %temp2_val_5_addr = getelementptr [100 x float]* %temp2_val_5, i64 0, i64 %tmp
  %temp2_val_4_addr = getelementptr [100 x float]* %temp2_val_4, i64 0, i64 %tmp
  %temp2_val_3_addr = getelementptr [100 x float]* %temp2_val_3, i64 0, i64 %tmp
  %temp2_val_2_addr = getelementptr [100 x float]* %temp2_val_2, i64 0, i64 %tmp
  %temp2_val_1_addr = getelementptr [100 x float]* %temp2_val_1, i64 0, i64 %tmp
  %temp2_val_0_addr = getelementptr [100 x float]* %temp2_val_0, i64 0, i64 %tmp
  br label %2

; <label>:2                                       ; preds = %.preheader.i45.0, %1
  %j = phi i5 [ 0, %1 ], [ %j_1, %.preheader.i45.0 ]
  %exitcond7 = icmp eq i5 %j, -12
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20) nounwind
  %j_1 = add i5 %j, 1
  br i1 %exitcond7, label %.loopexit, label %.preheader.i45.0

.preheader.i45.0:                                 ; preds = %2
  %temp1_val_18_load_1 = load float* %temp1_val_18_addr_1, align 4
  store float %temp1_val_18_load_1, float* %temp1_val_19_addr_1, align 4
  %temp1_val_17_load_1 = load float* %temp1_val_17_addr_1, align 4
  store float %temp1_val_17_load_1, float* %temp1_val_18_addr_1, align 4
  %temp1_val_16_load_1 = load float* %temp1_val_16_addr_1, align 4
  store float %temp1_val_16_load_1, float* %temp1_val_17_addr_1, align 4
  %temp1_val_15_load_1 = load float* %temp1_val_15_addr_1, align 4
  store float %temp1_val_15_load_1, float* %temp1_val_16_addr_1, align 4
  %temp1_val_14_load_1 = load float* %temp1_val_14_addr_1, align 4
  store float %temp1_val_14_load_1, float* %temp1_val_15_addr_1, align 4
  %temp1_val_13_load_1 = load float* %temp1_val_13_addr_1, align 4
  store float %temp1_val_13_load_1, float* %temp1_val_14_addr_1, align 4
  %temp1_val_12_load_1 = load float* %temp1_val_12_addr_1, align 4
  store float %temp1_val_12_load_1, float* %temp1_val_13_addr_1, align 4
  %temp1_val_11_load_1 = load float* %temp1_val_11_addr_1, align 4
  store float %temp1_val_11_load_1, float* %temp1_val_12_addr_1, align 4
  %temp1_val_10_load_1 = load float* %temp1_val_10_addr_1, align 4
  store float %temp1_val_10_load_1, float* %temp1_val_11_addr_1, align 4
  %temp1_val_9_load_1 = load float* %temp1_val_9_addr_1, align 4
  store float %temp1_val_9_load_1, float* %temp1_val_10_addr_1, align 4
  %temp1_val_8_load_1 = load float* %temp1_val_8_addr_1, align 4
  store float %temp1_val_8_load_1, float* %temp1_val_9_addr_1, align 4
  %temp1_val_7_load_1 = load float* %temp1_val_7_addr_1, align 4
  store float %temp1_val_7_load_1, float* %temp1_val_8_addr_1, align 4
  %temp1_val_6_load_1 = load float* %temp1_val_6_addr_1, align 4
  store float %temp1_val_6_load_1, float* %temp1_val_7_addr_1, align 4
  %temp1_val_5_load_1 = load float* %temp1_val_5_addr_1, align 4
  store float %temp1_val_5_load_1, float* %temp1_val_6_addr_1, align 4
  %temp1_val_4_load_1 = load float* %temp1_val_4_addr_1, align 4
  store float %temp1_val_4_load_1, float* %temp1_val_5_addr_1, align 4
  %temp1_val_3_load_1 = load float* %temp1_val_3_addr_1, align 4
  store float %temp1_val_3_load_1, float* %temp1_val_4_addr_1, align 4
  %temp1_val_2_load_1 = load float* %temp1_val_2_addr_1, align 4
  store float %temp1_val_2_load_1, float* %temp1_val_3_addr_1, align 4
  %temp1_val_1_load_1 = load float* %temp1_val_1_addr_1, align 4
  store float %temp1_val_1_load_1, float* %temp1_val_2_addr_1, align 4
  %temp1_val_0_load_1 = load float* %temp1_val_0_addr_1, align 4
  store float %temp1_val_0_load_1, float* %temp1_val_1_addr_1, align 4
  store float 0.000000e+00, float* %temp1_val_0_addr_1, align 4
  %temp2_val_18_load = load float* %temp2_val_18_addr, align 4
  store float %temp2_val_18_load, float* %temp2_val_19_addr, align 4
  %temp2_val_17_load = load float* %temp2_val_17_addr, align 4
  store float %temp2_val_17_load, float* %temp2_val_18_addr, align 4
  %temp2_val_16_load = load float* %temp2_val_16_addr, align 4
  store float %temp2_val_16_load, float* %temp2_val_17_addr, align 4
  %temp2_val_15_load = load float* %temp2_val_15_addr, align 4
  store float %temp2_val_15_load, float* %temp2_val_16_addr, align 4
  %temp2_val_14_load = load float* %temp2_val_14_addr, align 4
  store float %temp2_val_14_load, float* %temp2_val_15_addr, align 4
  %temp2_val_13_load = load float* %temp2_val_13_addr, align 4
  store float %temp2_val_13_load, float* %temp2_val_14_addr, align 4
  %temp2_val_12_load = load float* %temp2_val_12_addr, align 4
  store float %temp2_val_12_load, float* %temp2_val_13_addr, align 4
  %temp2_val_11_load = load float* %temp2_val_11_addr, align 4
  store float %temp2_val_11_load, float* %temp2_val_12_addr, align 4
  %temp2_val_10_load = load float* %temp2_val_10_addr, align 4
  store float %temp2_val_10_load, float* %temp2_val_11_addr, align 4
  %temp2_val_9_load = load float* %temp2_val_9_addr, align 4
  store float %temp2_val_9_load, float* %temp2_val_10_addr, align 4
  %temp2_val_8_load = load float* %temp2_val_8_addr, align 4
  store float %temp2_val_8_load, float* %temp2_val_9_addr, align 4
  %temp2_val_7_load = load float* %temp2_val_7_addr, align 4
  store float %temp2_val_7_load, float* %temp2_val_8_addr, align 4
  %temp2_val_6_load = load float* %temp2_val_6_addr, align 4
  store float %temp2_val_6_load, float* %temp2_val_7_addr, align 4
  %temp2_val_5_load = load float* %temp2_val_5_addr, align 4
  store float %temp2_val_5_load, float* %temp2_val_6_addr, align 4
  %temp2_val_4_load = load float* %temp2_val_4_addr, align 4
  store float %temp2_val_4_load, float* %temp2_val_5_addr, align 4
  %temp2_val_3_load = load float* %temp2_val_3_addr, align 4
  store float %temp2_val_3_load, float* %temp2_val_4_addr, align 4
  %temp2_val_2_load = load float* %temp2_val_2_addr, align 4
  store float %temp2_val_2_load, float* %temp2_val_3_addr, align 4
  %temp2_val_1_load = load float* %temp2_val_1_addr, align 4
  store float %temp2_val_1_load, float* %temp2_val_2_addr, align 4
  %temp2_val_0_load = load float* %temp2_val_0_addr, align 4
  store float %temp2_val_0_load, float* %temp2_val_1_addr, align 4
  store float 0.000000e+00, float* %temp2_val_0_addr, align 4
  br label %2

.preheader14:                                     ; preds = %.loopexit, %._crit_edge
  %i1 = phi i14 [ %i_2, %._crit_edge ], [ 0, %.loopexit ]
  %i1_cast4 = zext i14 %i1 to i32
  %exitcond6 = icmp eq i14 %i1, -6384
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10000, i64 10000, i64 10000) nounwind
  %i_2 = add i14 %i1, 1
  br i1 %exitcond6, label %.preheader13, label %3

; <label>:3                                       ; preds = %.preheader14
  %tmp_1 = icmp slt i32 %i1_cast4, %nnz_read
  br i1 %tmp_1, label %.preheader.preheader.i29, label %._crit_edge

.preheader.preheader.i29:                         ; preds = %3
  %tmp_5 = zext i14 %i1 to i64
  %row_addr = getelementptr [10000 x i32]* %row, i64 0, i64 %tmp_5
  %row_load = load i32* %row_addr, align 4
  %tmp_8 = zext i32 %row_load to i64
  %temp1_val_18_addr = getelementptr [100 x float]* %temp1_val_18, i64 0, i64 %tmp_8
  %temp1_val_18_load = load float* %temp1_val_18_addr, align 4
  %temp1_val_19_addr = getelementptr [100 x float]* %temp1_val_19, i64 0, i64 %tmp_8
  store float %temp1_val_18_load, float* %temp1_val_19_addr, align 4
  %temp1_val_17_addr = getelementptr [100 x float]* %temp1_val_17, i64 0, i64 %tmp_8
  %temp1_val_17_load = load float* %temp1_val_17_addr, align 4
  store float %temp1_val_17_load, float* %temp1_val_18_addr, align 4
  %temp1_val_16_addr = getelementptr [100 x float]* %temp1_val_16, i64 0, i64 %tmp_8
  %temp1_val_16_load = load float* %temp1_val_16_addr, align 4
  store float %temp1_val_16_load, float* %temp1_val_17_addr, align 4
  %temp1_val_15_addr = getelementptr [100 x float]* %temp1_val_15, i64 0, i64 %tmp_8
  %temp1_val_15_load = load float* %temp1_val_15_addr, align 4
  store float %temp1_val_15_load, float* %temp1_val_16_addr, align 4
  %temp1_val_14_addr = getelementptr [100 x float]* %temp1_val_14, i64 0, i64 %tmp_8
  %temp1_val_14_load = load float* %temp1_val_14_addr, align 4
  store float %temp1_val_14_load, float* %temp1_val_15_addr, align 4
  %temp1_val_13_addr = getelementptr [100 x float]* %temp1_val_13, i64 0, i64 %tmp_8
  %temp1_val_13_load = load float* %temp1_val_13_addr, align 4
  store float %temp1_val_13_load, float* %temp1_val_14_addr, align 4
  %temp1_val_12_addr = getelementptr [100 x float]* %temp1_val_12, i64 0, i64 %tmp_8
  %temp1_val_12_load = load float* %temp1_val_12_addr, align 4
  store float %temp1_val_12_load, float* %temp1_val_13_addr, align 4
  %temp1_val_11_addr = getelementptr [100 x float]* %temp1_val_11, i64 0, i64 %tmp_8
  %temp1_val_11_load = load float* %temp1_val_11_addr, align 4
  store float %temp1_val_11_load, float* %temp1_val_12_addr, align 4
  %temp1_val_10_addr = getelementptr [100 x float]* %temp1_val_10, i64 0, i64 %tmp_8
  %temp1_val_10_load = load float* %temp1_val_10_addr, align 4
  store float %temp1_val_10_load, float* %temp1_val_11_addr, align 4
  %temp1_val_9_addr = getelementptr [100 x float]* %temp1_val_9, i64 0, i64 %tmp_8
  %temp1_val_9_load = load float* %temp1_val_9_addr, align 4
  store float %temp1_val_9_load, float* %temp1_val_10_addr, align 4
  %temp1_val_8_addr = getelementptr [100 x float]* %temp1_val_8, i64 0, i64 %tmp_8
  %temp1_val_8_load = load float* %temp1_val_8_addr, align 4
  store float %temp1_val_8_load, float* %temp1_val_9_addr, align 4
  %temp1_val_7_addr = getelementptr [100 x float]* %temp1_val_7, i64 0, i64 %tmp_8
  %temp1_val_7_load = load float* %temp1_val_7_addr, align 4
  store float %temp1_val_7_load, float* %temp1_val_8_addr, align 4
  %temp1_val_6_addr = getelementptr [100 x float]* %temp1_val_6, i64 0, i64 %tmp_8
  %temp1_val_6_load = load float* %temp1_val_6_addr, align 4
  store float %temp1_val_6_load, float* %temp1_val_7_addr, align 4
  %temp1_val_5_addr = getelementptr [100 x float]* %temp1_val_5, i64 0, i64 %tmp_8
  %temp1_val_5_load = load float* %temp1_val_5_addr, align 4
  store float %temp1_val_5_load, float* %temp1_val_6_addr, align 4
  %temp1_val_4_addr = getelementptr [100 x float]* %temp1_val_4, i64 0, i64 %tmp_8
  %temp1_val_4_load = load float* %temp1_val_4_addr, align 4
  store float %temp1_val_4_load, float* %temp1_val_5_addr, align 4
  %temp1_val_3_addr = getelementptr [100 x float]* %temp1_val_3, i64 0, i64 %tmp_8
  %temp1_val_3_load = load float* %temp1_val_3_addr, align 4
  store float %temp1_val_3_load, float* %temp1_val_4_addr, align 4
  %temp1_val_2_addr = getelementptr [100 x float]* %temp1_val_2, i64 0, i64 %tmp_8
  %temp1_val_2_load = load float* %temp1_val_2_addr, align 4
  store float %temp1_val_2_load, float* %temp1_val_3_addr, align 4
  %temp1_val_1_addr = getelementptr [100 x float]* %temp1_val_1, i64 0, i64 %tmp_8
  %temp1_val_1_load = load float* %temp1_val_1_addr, align 4
  store float %temp1_val_1_load, float* %temp1_val_2_addr, align 4
  %temp1_val_0_addr = getelementptr [100 x float]* %temp1_val_0, i64 0, i64 %tmp_8
  %temp1_val_0_load = load float* %temp1_val_0_addr, align 4
  store float %temp1_val_0_load, float* %temp1_val_1_addr, align 4
  %val_addr = getelementptr [10000 x float]* %val_r, i64 0, i64 %tmp_5
  %val_load = load float* %val_addr, align 4
  %col_addr = getelementptr [10000 x i32]* %col, i64 0, i64 %tmp_5
  %col_load = load i32* %col_addr, align 4
  %tmp_s = sext i32 %col_load to i64
  %vector_addr = getelementptr [100 x float]* %vector, i64 0, i64 %tmp_s
  %vector_load = load float* %vector_addr, align 4
  %value_assign = fmul float %val_load, %vector_load
  store float %value_assign, float* %temp1_val_0_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.preheader.i29, %3
  br label %.preheader14

.preheader13:                                     ; preds = %.preheader10, %.preheader14
  %k = phi i3 [ 0, %.preheader14 ], [ %k_1, %.preheader10 ]
  %exitcond5 = icmp eq i3 %k, -3
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %k_1 = add i3 %k, 1
  br i1 %exitcond5, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %.preheader11, %.preheader13
  %col_assign_2 = phi i7 [ 0, %.preheader13 ], [ %i_3, %.preheader11 ]
  %exitcond4 = icmp eq i7 %col_assign_2, -28
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_3 = add i7 %col_assign_2, 1
  br i1 %exitcond4, label %.preheader10, label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %.preheader12
  %tmp_3 = zext i7 %col_assign_2 to i64
  %temp1_val_0_addr_3 = getelementptr [100 x float]* %temp1_val_0, i64 0, i64 %tmp_3
  %temp1_val_1_addr_2 = getelementptr [100 x float]* %temp1_val_1, i64 0, i64 %tmp_3
  %temp2_val_18_addr_1 = getelementptr [100 x float]* %temp2_val_18, i64 0, i64 %tmp_3
  %temp2_val_19_addr_1 = getelementptr [100 x float]* %temp2_val_19, i64 0, i64 %tmp_3
  %temp2_val_17_addr_1 = getelementptr [100 x float]* %temp2_val_17, i64 0, i64 %tmp_3
  %temp2_val_16_addr_1 = getelementptr [100 x float]* %temp2_val_16, i64 0, i64 %tmp_3
  %temp2_val_15_addr_1 = getelementptr [100 x float]* %temp2_val_15, i64 0, i64 %tmp_3
  %temp2_val_14_addr_1 = getelementptr [100 x float]* %temp2_val_14, i64 0, i64 %tmp_3
  %temp2_val_13_addr_1 = getelementptr [100 x float]* %temp2_val_13, i64 0, i64 %tmp_3
  %temp2_val_12_addr_1 = getelementptr [100 x float]* %temp2_val_12, i64 0, i64 %tmp_3
  %temp2_val_11_addr_1 = getelementptr [100 x float]* %temp2_val_11, i64 0, i64 %tmp_3
  %temp2_val_10_addr_1 = getelementptr [100 x float]* %temp2_val_10, i64 0, i64 %tmp_3
  %temp2_val_9_addr_1 = getelementptr [100 x float]* %temp2_val_9, i64 0, i64 %tmp_3
  %temp2_val_8_addr_1 = getelementptr [100 x float]* %temp2_val_8, i64 0, i64 %tmp_3
  %temp2_val_7_addr_1 = getelementptr [100 x float]* %temp2_val_7, i64 0, i64 %tmp_3
  %temp2_val_6_addr_1 = getelementptr [100 x float]* %temp2_val_6, i64 0, i64 %tmp_3
  %temp2_val_5_addr_1 = getelementptr [100 x float]* %temp2_val_5, i64 0, i64 %tmp_3
  %temp2_val_4_addr_1 = getelementptr [100 x float]* %temp2_val_4, i64 0, i64 %tmp_3
  %temp2_val_3_addr_1 = getelementptr [100 x float]* %temp2_val_3, i64 0, i64 %tmp_3
  %temp2_val_2_addr_1 = getelementptr [100 x float]* %temp2_val_2, i64 0, i64 %tmp_3
  %temp2_val_1_addr_2 = getelementptr [100 x float]* %temp2_val_1, i64 0, i64 %tmp_3
  %temp2_val_0_addr_2 = getelementptr [100 x float]* %temp2_val_0, i64 0, i64 %tmp_3
  %temp1_val_2_addr_2 = getelementptr [100 x float]* %temp1_val_2, i64 0, i64 %tmp_3
  %temp1_val_3_addr_2 = getelementptr [100 x float]* %temp1_val_3, i64 0, i64 %tmp_3
  %temp1_val_4_addr_2 = getelementptr [100 x float]* %temp1_val_4, i64 0, i64 %tmp_3
  %temp1_val_5_addr_2 = getelementptr [100 x float]* %temp1_val_5, i64 0, i64 %tmp_3
  %temp1_val_6_addr_2 = getelementptr [100 x float]* %temp1_val_6, i64 0, i64 %tmp_3
  %temp1_val_7_addr_2 = getelementptr [100 x float]* %temp1_val_7, i64 0, i64 %tmp_3
  %temp1_val_8_addr_2 = getelementptr [100 x float]* %temp1_val_8, i64 0, i64 %tmp_3
  %temp1_val_9_addr_2 = getelementptr [100 x float]* %temp1_val_9, i64 0, i64 %tmp_3
  %temp1_val_10_addr_2 = getelementptr [100 x float]* %temp1_val_10, i64 0, i64 %tmp_3
  %temp1_val_11_addr_2 = getelementptr [100 x float]* %temp1_val_11, i64 0, i64 %tmp_3
  %temp1_val_12_addr_2 = getelementptr [100 x float]* %temp1_val_12, i64 0, i64 %tmp_3
  %temp1_val_13_addr_2 = getelementptr [100 x float]* %temp1_val_13, i64 0, i64 %tmp_3
  %temp1_val_14_addr_2 = getelementptr [100 x float]* %temp1_val_14, i64 0, i64 %tmp_3
  %temp1_val_15_addr_2 = getelementptr [100 x float]* %temp1_val_15, i64 0, i64 %tmp_3
  %temp1_val_16_addr_2 = getelementptr [100 x float]* %temp1_val_16, i64 0, i64 %tmp_3
  %temp1_val_17_addr_2 = getelementptr [100 x float]* %temp1_val_17, i64 0, i64 %tmp_3
  %temp1_val_18_addr_2 = getelementptr [100 x float]* %temp1_val_18, i64 0, i64 %tmp_3
  %temp1_val_19_addr_2 = getelementptr [100 x float]* %temp1_val_19, i64 0, i64 %tmp_3
  %temp1_val_19_load = load float* %temp1_val_19_addr_2, align 4
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader.i92.0, %.preheader11.preheader
  %j3 = phi i5 [ %j_2, %.preheader.i92.0 ], [ 0, %.preheader11.preheader ]
  %exitcond3 = icmp eq i5 %j3, -12
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20) nounwind
  %j_2 = add i5 %j3, 1
  br i1 %exitcond3, label %.preheader12, label %getval.exit65

getval.exit65:                                    ; preds = %.preheader11
  %temp1_val_0_load_3 = load float* %temp1_val_0_addr_3, align 4
  %temp1_val_1_load_2 = load float* %temp1_val_1_addr_2, align 4
  %sum = fadd float %temp1_val_0_load_3, %temp1_val_1_load_2
  %sum_to_int = bitcast float %sum to i32
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_to_int, i32 23, i32 30)
  %tmp_7 = trunc i32 %sum_to_int to i23
  %notlhs = icmp ne i8 %tmp_6, -1
  %notrhs = icmp eq i23 %tmp_7, 0
  %tmp_9 = or i1 %notrhs, %notlhs
  %tmp_10 = fcmp oeq float %sum, 0.000000e+00
  %tmp_11 = and i1 %tmp_9, %tmp_10
  br i1 %tmp_11, label %.preheader.i92.0, label %.preheader.i24.0

.preheader.i24.0:                                 ; preds = %getval.exit65
  %temp2_val_18_load_1 = load float* %temp2_val_18_addr_1, align 4
  store float %temp2_val_18_load_1, float* %temp2_val_19_addr_1, align 4
  %temp2_val_17_load_1 = load float* %temp2_val_17_addr_1, align 4
  store float %temp2_val_17_load_1, float* %temp2_val_18_addr_1, align 4
  %temp2_val_16_load_1 = load float* %temp2_val_16_addr_1, align 4
  store float %temp2_val_16_load_1, float* %temp2_val_17_addr_1, align 4
  %temp2_val_15_load_1 = load float* %temp2_val_15_addr_1, align 4
  store float %temp2_val_15_load_1, float* %temp2_val_16_addr_1, align 4
  %temp2_val_14_load_1 = load float* %temp2_val_14_addr_1, align 4
  store float %temp2_val_14_load_1, float* %temp2_val_15_addr_1, align 4
  %temp2_val_13_load_1 = load float* %temp2_val_13_addr_1, align 4
  store float %temp2_val_13_load_1, float* %temp2_val_14_addr_1, align 4
  %temp2_val_12_load_1 = load float* %temp2_val_12_addr_1, align 4
  store float %temp2_val_12_load_1, float* %temp2_val_13_addr_1, align 4
  %temp2_val_11_load_1 = load float* %temp2_val_11_addr_1, align 4
  store float %temp2_val_11_load_1, float* %temp2_val_12_addr_1, align 4
  %temp2_val_10_load_1 = load float* %temp2_val_10_addr_1, align 4
  store float %temp2_val_10_load_1, float* %temp2_val_11_addr_1, align 4
  %temp2_val_9_load_1 = load float* %temp2_val_9_addr_1, align 4
  store float %temp2_val_9_load_1, float* %temp2_val_10_addr_1, align 4
  %temp2_val_8_load_1 = load float* %temp2_val_8_addr_1, align 4
  store float %temp2_val_8_load_1, float* %temp2_val_9_addr_1, align 4
  %temp2_val_7_load_1 = load float* %temp2_val_7_addr_1, align 4
  store float %temp2_val_7_load_1, float* %temp2_val_8_addr_1, align 4
  %temp2_val_6_load_1 = load float* %temp2_val_6_addr_1, align 4
  store float %temp2_val_6_load_1, float* %temp2_val_7_addr_1, align 4
  %temp2_val_5_load_1 = load float* %temp2_val_5_addr_1, align 4
  store float %temp2_val_5_load_1, float* %temp2_val_6_addr_1, align 4
  %temp2_val_4_load_1 = load float* %temp2_val_4_addr_1, align 4
  store float %temp2_val_4_load_1, float* %temp2_val_5_addr_1, align 4
  %temp2_val_3_load_1 = load float* %temp2_val_3_addr_1, align 4
  store float %temp2_val_3_load_1, float* %temp2_val_4_addr_1, align 4
  %temp2_val_2_load_1 = load float* %temp2_val_2_addr_1, align 4
  store float %temp2_val_2_load_1, float* %temp2_val_3_addr_1, align 4
  %temp2_val_1_load_2 = load float* %temp2_val_1_addr_2, align 4
  store float %temp2_val_1_load_2, float* %temp2_val_2_addr_1, align 4
  %temp2_val_0_load_2 = load float* %temp2_val_0_addr_2, align 4
  store float %temp2_val_0_load_2, float* %temp2_val_1_addr_2, align 4
  store float %sum, float* %temp2_val_0_addr_2, align 4
  br label %.preheader.i92.0

.preheader.i92.0:                                 ; preds = %.preheader.i24.0, %getval.exit65
  %temp1_val_2_load_2 = load float* %temp1_val_2_addr_2, align 4
  %temp1_val_3_load_2 = load float* %temp1_val_3_addr_2, align 4
  %temp1_val_4_load_2 = load float* %temp1_val_4_addr_2, align 4
  %temp1_val_5_load_2 = load float* %temp1_val_5_addr_2, align 4
  %temp1_val_6_load_2 = load float* %temp1_val_6_addr_2, align 4
  %temp1_val_7_load_2 = load float* %temp1_val_7_addr_2, align 4
  %temp1_val_8_load_2 = load float* %temp1_val_8_addr_2, align 4
  %temp1_val_9_load_2 = load float* %temp1_val_9_addr_2, align 4
  %temp1_val_10_load_2 = load float* %temp1_val_10_addr_2, align 4
  %temp1_val_11_load_2 = load float* %temp1_val_11_addr_2, align 4
  %temp1_val_12_load_2 = load float* %temp1_val_12_addr_2, align 4
  %temp1_val_13_load_2 = load float* %temp1_val_13_addr_2, align 4
  %temp1_val_14_load_2 = load float* %temp1_val_14_addr_2, align 4
  %temp1_val_15_load_2 = load float* %temp1_val_15_addr_2, align 4
  %temp1_val_16_load_2 = load float* %temp1_val_16_addr_2, align 4
  %temp1_val_17_load_2 = load float* %temp1_val_17_addr_2, align 4
  %temp1_val_18_load_2 = load float* %temp1_val_18_addr_2, align 4
  store float %temp1_val_2_load_2, float* %temp1_val_0_addr_3, align 4
  store float %temp1_val_3_load_2, float* %temp1_val_1_addr_2, align 4
  store float %temp1_val_4_load_2, float* %temp1_val_2_addr_2, align 4
  store float %temp1_val_5_load_2, float* %temp1_val_3_addr_2, align 4
  store float %temp1_val_6_load_2, float* %temp1_val_4_addr_2, align 4
  store float %temp1_val_7_load_2, float* %temp1_val_5_addr_2, align 4
  store float %temp1_val_8_load_2, float* %temp1_val_6_addr_2, align 4
  store float %temp1_val_9_load_2, float* %temp1_val_7_addr_2, align 4
  store float %temp1_val_10_load_2, float* %temp1_val_8_addr_2, align 4
  store float %temp1_val_11_load_2, float* %temp1_val_9_addr_2, align 4
  store float %temp1_val_12_load_2, float* %temp1_val_10_addr_2, align 4
  store float %temp1_val_13_load_2, float* %temp1_val_11_addr_2, align 4
  store float %temp1_val_14_load_2, float* %temp1_val_12_addr_2, align 4
  store float %temp1_val_15_load_2, float* %temp1_val_13_addr_2, align 4
  store float %temp1_val_16_load_2, float* %temp1_val_14_addr_2, align 4
  store float %temp1_val_17_load_2, float* %temp1_val_15_addr_2, align 4
  store float %temp1_val_18_load_2, float* %temp1_val_16_addr_2, align 4
  store float %temp1_val_19_load, float* %temp1_val_17_addr_2, align 4
  store float %temp1_val_19_load, float* %temp1_val_18_addr_2, align 4
  br label %.preheader11

.preheader10:                                     ; preds = %.preheader9, %.preheader12
  %col_assign_4 = phi i7 [ 0, %.preheader12 ], [ %i_4, %.preheader9 ]
  %exitcond2 = icmp eq i7 %col_assign_4, -28
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_4 = add i7 %col_assign_4, 1
  br i1 %exitcond2, label %.preheader13, label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %.preheader10
  %tmp_4 = zext i7 %col_assign_4 to i64
  %temp2_val_0_addr_1 = getelementptr [100 x float]* %temp2_val_0, i64 0, i64 %tmp_4
  %temp2_val_1_addr_1 = getelementptr [100 x float]* %temp2_val_1, i64 0, i64 %tmp_4
  %temp1_val_18_addr_3 = getelementptr [100 x float]* %temp1_val_18, i64 0, i64 %tmp_4
  %temp1_val_19_addr_3 = getelementptr [100 x float]* %temp1_val_19, i64 0, i64 %tmp_4
  %temp1_val_17_addr_3 = getelementptr [100 x float]* %temp1_val_17, i64 0, i64 %tmp_4
  %temp1_val_16_addr_3 = getelementptr [100 x float]* %temp1_val_16, i64 0, i64 %tmp_4
  %temp1_val_15_addr_3 = getelementptr [100 x float]* %temp1_val_15, i64 0, i64 %tmp_4
  %temp1_val_14_addr_3 = getelementptr [100 x float]* %temp1_val_14, i64 0, i64 %tmp_4
  %temp1_val_13_addr_3 = getelementptr [100 x float]* %temp1_val_13, i64 0, i64 %tmp_4
  %temp1_val_12_addr_3 = getelementptr [100 x float]* %temp1_val_12, i64 0, i64 %tmp_4
  %temp1_val_11_addr_3 = getelementptr [100 x float]* %temp1_val_11, i64 0, i64 %tmp_4
  %temp1_val_10_addr_3 = getelementptr [100 x float]* %temp1_val_10, i64 0, i64 %tmp_4
  %temp1_val_9_addr_3 = getelementptr [100 x float]* %temp1_val_9, i64 0, i64 %tmp_4
  %temp1_val_8_addr_3 = getelementptr [100 x float]* %temp1_val_8, i64 0, i64 %tmp_4
  %temp1_val_7_addr_3 = getelementptr [100 x float]* %temp1_val_7, i64 0, i64 %tmp_4
  %temp1_val_6_addr_3 = getelementptr [100 x float]* %temp1_val_6, i64 0, i64 %tmp_4
  %temp1_val_5_addr_3 = getelementptr [100 x float]* %temp1_val_5, i64 0, i64 %tmp_4
  %temp1_val_4_addr_3 = getelementptr [100 x float]* %temp1_val_4, i64 0, i64 %tmp_4
  %temp1_val_3_addr_3 = getelementptr [100 x float]* %temp1_val_3, i64 0, i64 %tmp_4
  %temp1_val_2_addr_3 = getelementptr [100 x float]* %temp1_val_2, i64 0, i64 %tmp_4
  %temp1_val_1_addr_3 = getelementptr [100 x float]* %temp1_val_1, i64 0, i64 %tmp_4
  %temp1_val_0_addr_4 = getelementptr [100 x float]* %temp1_val_0, i64 0, i64 %tmp_4
  %temp2_val_2_addr_2 = getelementptr [100 x float]* %temp2_val_2, i64 0, i64 %tmp_4
  %temp2_val_3_addr_2 = getelementptr [100 x float]* %temp2_val_3, i64 0, i64 %tmp_4
  %temp2_val_4_addr_2 = getelementptr [100 x float]* %temp2_val_4, i64 0, i64 %tmp_4
  %temp2_val_5_addr_2 = getelementptr [100 x float]* %temp2_val_5, i64 0, i64 %tmp_4
  %temp2_val_6_addr_2 = getelementptr [100 x float]* %temp2_val_6, i64 0, i64 %tmp_4
  %temp2_val_7_addr_2 = getelementptr [100 x float]* %temp2_val_7, i64 0, i64 %tmp_4
  %temp2_val_8_addr_2 = getelementptr [100 x float]* %temp2_val_8, i64 0, i64 %tmp_4
  %temp2_val_9_addr_2 = getelementptr [100 x float]* %temp2_val_9, i64 0, i64 %tmp_4
  %temp2_val_10_addr_2 = getelementptr [100 x float]* %temp2_val_10, i64 0, i64 %tmp_4
  %temp2_val_11_addr_2 = getelementptr [100 x float]* %temp2_val_11, i64 0, i64 %tmp_4
  %temp2_val_12_addr_2 = getelementptr [100 x float]* %temp2_val_12, i64 0, i64 %tmp_4
  %temp2_val_13_addr_2 = getelementptr [100 x float]* %temp2_val_13, i64 0, i64 %tmp_4
  %temp2_val_14_addr_2 = getelementptr [100 x float]* %temp2_val_14, i64 0, i64 %tmp_4
  %temp2_val_15_addr_2 = getelementptr [100 x float]* %temp2_val_15, i64 0, i64 %tmp_4
  %temp2_val_16_addr_2 = getelementptr [100 x float]* %temp2_val_16, i64 0, i64 %tmp_4
  %temp2_val_17_addr_2 = getelementptr [100 x float]* %temp2_val_17, i64 0, i64 %tmp_4
  %temp2_val_18_addr_2 = getelementptr [100 x float]* %temp2_val_18, i64 0, i64 %tmp_4
  %temp2_val_19_addr_2 = getelementptr [100 x float]* %temp2_val_19, i64 0, i64 %tmp_4
  %temp2_val_19_load = load float* %temp2_val_19_addr_2, align 4
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader.i76.0, %.preheader9.preheader
  %j5 = phi i5 [ %j_3, %.preheader.i76.0 ], [ 0, %.preheader9.preheader ]
  %exitcond1 = icmp eq i5 %j5, -12
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20) nounwind
  %j_3 = add i5 %j5, 1
  br i1 %exitcond1, label %.preheader10, label %getval.exit61

getval.exit61:                                    ; preds = %.preheader9
  %temp2_val_0_load_1 = load float* %temp2_val_0_addr_1, align 4
  %temp2_val_1_load_1 = load float* %temp2_val_1_addr_1, align 4
  %sum_1 = fadd float %temp2_val_0_load_1, %temp2_val_1_load_1
  %sum_1_to_int = bitcast float %sum_1 to i32
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_1_to_int, i32 23, i32 30)
  %tmp_13 = trunc i32 %sum_1_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_12, -1
  %notrhs8 = icmp eq i23 %tmp_13, 0
  %tmp_14 = or i1 %notrhs8, %notlhs7
  %tmp_15 = fcmp oeq float %sum_1, 0.000000e+00
  %tmp_16 = and i1 %tmp_14, %tmp_15
  br i1 %tmp_16, label %.preheader.i76.0, label %.preheader.i.0

.preheader.i.0:                                   ; preds = %getval.exit61
  %temp1_val_18_load_3 = load float* %temp1_val_18_addr_3, align 4
  store float %temp1_val_18_load_3, float* %temp1_val_19_addr_3, align 4
  %temp1_val_17_load_3 = load float* %temp1_val_17_addr_3, align 4
  store float %temp1_val_17_load_3, float* %temp1_val_18_addr_3, align 4
  %temp1_val_16_load_3 = load float* %temp1_val_16_addr_3, align 4
  store float %temp1_val_16_load_3, float* %temp1_val_17_addr_3, align 4
  %temp1_val_15_load_3 = load float* %temp1_val_15_addr_3, align 4
  store float %temp1_val_15_load_3, float* %temp1_val_16_addr_3, align 4
  %temp1_val_14_load_3 = load float* %temp1_val_14_addr_3, align 4
  store float %temp1_val_14_load_3, float* %temp1_val_15_addr_3, align 4
  %temp1_val_13_load_3 = load float* %temp1_val_13_addr_3, align 4
  store float %temp1_val_13_load_3, float* %temp1_val_14_addr_3, align 4
  %temp1_val_12_load_3 = load float* %temp1_val_12_addr_3, align 4
  store float %temp1_val_12_load_3, float* %temp1_val_13_addr_3, align 4
  %temp1_val_11_load_3 = load float* %temp1_val_11_addr_3, align 4
  store float %temp1_val_11_load_3, float* %temp1_val_12_addr_3, align 4
  %temp1_val_10_load_3 = load float* %temp1_val_10_addr_3, align 4
  store float %temp1_val_10_load_3, float* %temp1_val_11_addr_3, align 4
  %temp1_val_9_load_3 = load float* %temp1_val_9_addr_3, align 4
  store float %temp1_val_9_load_3, float* %temp1_val_10_addr_3, align 4
  %temp1_val_8_load_3 = load float* %temp1_val_8_addr_3, align 4
  store float %temp1_val_8_load_3, float* %temp1_val_9_addr_3, align 4
  %temp1_val_7_load_3 = load float* %temp1_val_7_addr_3, align 4
  store float %temp1_val_7_load_3, float* %temp1_val_8_addr_3, align 4
  %temp1_val_6_load_3 = load float* %temp1_val_6_addr_3, align 4
  store float %temp1_val_6_load_3, float* %temp1_val_7_addr_3, align 4
  %temp1_val_5_load_3 = load float* %temp1_val_5_addr_3, align 4
  store float %temp1_val_5_load_3, float* %temp1_val_6_addr_3, align 4
  %temp1_val_4_load_3 = load float* %temp1_val_4_addr_3, align 4
  store float %temp1_val_4_load_3, float* %temp1_val_5_addr_3, align 4
  %temp1_val_3_load_3 = load float* %temp1_val_3_addr_3, align 4
  store float %temp1_val_3_load_3, float* %temp1_val_4_addr_3, align 4
  %temp1_val_2_load_3 = load float* %temp1_val_2_addr_3, align 4
  store float %temp1_val_2_load_3, float* %temp1_val_3_addr_3, align 4
  %temp1_val_1_load_3 = load float* %temp1_val_1_addr_3, align 4
  store float %temp1_val_1_load_3, float* %temp1_val_2_addr_3, align 4
  %temp1_val_0_load_4 = load float* %temp1_val_0_addr_4, align 4
  store float %temp1_val_0_load_4, float* %temp1_val_1_addr_3, align 4
  store float %sum_1, float* %temp1_val_0_addr_4, align 4
  br label %.preheader.i76.0

.preheader.i76.0:                                 ; preds = %.preheader.i.0, %getval.exit61
  %temp2_val_2_load_2 = load float* %temp2_val_2_addr_2, align 4
  %temp2_val_3_load_2 = load float* %temp2_val_3_addr_2, align 4
  %temp2_val_4_load_2 = load float* %temp2_val_4_addr_2, align 4
  %temp2_val_5_load_2 = load float* %temp2_val_5_addr_2, align 4
  %temp2_val_6_load_2 = load float* %temp2_val_6_addr_2, align 4
  %temp2_val_7_load_2 = load float* %temp2_val_7_addr_2, align 4
  %temp2_val_8_load_2 = load float* %temp2_val_8_addr_2, align 4
  %temp2_val_9_load_2 = load float* %temp2_val_9_addr_2, align 4
  %temp2_val_10_load_2 = load float* %temp2_val_10_addr_2, align 4
  %temp2_val_11_load_2 = load float* %temp2_val_11_addr_2, align 4
  %temp2_val_12_load_2 = load float* %temp2_val_12_addr_2, align 4
  %temp2_val_13_load_2 = load float* %temp2_val_13_addr_2, align 4
  %temp2_val_14_load_2 = load float* %temp2_val_14_addr_2, align 4
  %temp2_val_15_load_2 = load float* %temp2_val_15_addr_2, align 4
  %temp2_val_16_load_2 = load float* %temp2_val_16_addr_2, align 4
  %temp2_val_17_load_2 = load float* %temp2_val_17_addr_2, align 4
  %temp2_val_18_load_2 = load float* %temp2_val_18_addr_2, align 4
  store float %temp2_val_2_load_2, float* %temp2_val_0_addr_1, align 4
  store float %temp2_val_3_load_2, float* %temp2_val_1_addr_1, align 4
  store float %temp2_val_4_load_2, float* %temp2_val_2_addr_2, align 4
  store float %temp2_val_5_load_2, float* %temp2_val_3_addr_2, align 4
  store float %temp2_val_6_load_2, float* %temp2_val_4_addr_2, align 4
  store float %temp2_val_7_load_2, float* %temp2_val_5_addr_2, align 4
  store float %temp2_val_8_load_2, float* %temp2_val_6_addr_2, align 4
  store float %temp2_val_9_load_2, float* %temp2_val_7_addr_2, align 4
  store float %temp2_val_10_load_2, float* %temp2_val_8_addr_2, align 4
  store float %temp2_val_11_load_2, float* %temp2_val_9_addr_2, align 4
  store float %temp2_val_12_load_2, float* %temp2_val_10_addr_2, align 4
  store float %temp2_val_13_load_2, float* %temp2_val_11_addr_2, align 4
  store float %temp2_val_14_load_2, float* %temp2_val_12_addr_2, align 4
  store float %temp2_val_15_load_2, float* %temp2_val_13_addr_2, align 4
  store float %temp2_val_16_load_2, float* %temp2_val_14_addr_2, align 4
  store float %temp2_val_17_load_2, float* %temp2_val_15_addr_2, align 4
  store float %temp2_val_18_load_2, float* %temp2_val_16_addr_2, align 4
  store float %temp2_val_19_load, float* %temp2_val_17_addr_2, align 4
  store float %temp2_val_19_load, float* %temp2_val_18_addr_2, align 4
  br label %.preheader9

.preheader:                                       ; preds = %.preheader13, %getval.exit
  %col_assign_3 = phi i7 [ %i, %getval.exit ], [ 0, %.preheader13 ]
  %exitcond = icmp eq i7 %col_assign_3, -28
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i = add i7 %col_assign_3, 1
  br i1 %exitcond, label %4, label %getval.exit

getval.exit:                                      ; preds = %.preheader
  %tmp_2 = zext i7 %col_assign_3 to i64
  %temp1_val_0_addr_2 = getelementptr [100 x float]* %temp1_val_0, i64 0, i64 %tmp_2
  %temp1_val_0_load_2 = load float* %temp1_val_0_addr_2, align 4
  %output_addr_1 = getelementptr [100 x float]* %output_r, i64 0, i64 %tmp_2
  store float %temp1_val_0_load_2, float* %output_addr_1, align 4
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !24, !26, !26, !28, !34, !28, !28, !37, !26, !26, !28, !43, !28, !28, !28, !46, !46, !48, !48, !50, !51, !52, !52, !28, !28, !54, !28, !28, !56, !59, !19, !24, !34, !37, !43, !50, !51, !28, !28, !62, !62, !65, !28, !67, !28, !28, !28, !69, !69, !71, !71, !72, !28, !28, !28, !74, !76, !78, !78, !80, !28, !28, !28, !28, !28, !28, !82, !28, !28, !28, !28, !62, !62, !65, !82, !28, !62, !62, !65, !82, !28, !84, !84, !84, !28, !84, !84, !84, !28, !84, !84, !84, !28, !84, !84, !84, !84, !84, !84, !84, !84, !84, !28, !84, !84, !84, !28, !84, !84, !84, !28, !84, !84, !84, !28, !84, !84, !84, !28, !84, !84, !84, !84, !84, !84, !87, !87, !87, !28, !84, !84, !84, !28, !84, !84, !84, !28, !84, !84, !84, !28, !87, !87, !87, !28, !87, !87, !87, !28, !28, !28, !28, !28, !28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!92}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"float*", metadata !"float*", metadata !"float*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"row", metadata !"col", metadata !"val", metadata !"vector", metadata !"output", metadata !"nnz"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float [100]*", metadata !"int*", metadata !"int*", metadata !"float*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"row", metadata !"col", metadata !"val"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const float [100]*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"input"}
!19 = metadata !{null, metadata !20, metadata !15, metadata !21, metadata !22, metadata !23, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"col"}
!24 = metadata !{null, metadata !20, metadata !15, metadata !21, metadata !22, metadata !25, metadata !6}
!25 = metadata !{metadata !"kernel_arg_name", metadata !""}
!26 = metadata !{null, metadata !20, metadata !15, metadata !21, metadata !22, metadata !27, metadata !6}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space"}
!30 = metadata !{metadata !"kernel_arg_access_qual"}
!31 = metadata !{metadata !"kernel_arg_type"}
!32 = metadata !{metadata !"kernel_arg_type_qual"}
!33 = metadata !{metadata !"kernel_arg_name"}
!34 = metadata !{null, metadata !20, metadata !15, metadata !35, metadata !22, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!37 = metadata !{null, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !6}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"int"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!43 = metadata !{null, metadata !38, metadata !39, metadata !44, metadata !41, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"const ap_int_base<32, true> &"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!46 = metadata !{null, metadata !20, metadata !15, metadata !47, metadata !22, metadata !27, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!48 = metadata !{null, metadata !20, metadata !15, metadata !49, metadata !22, metadata !27, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &"}
!50 = metadata !{null, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !6}
!51 = metadata !{null, metadata !20, metadata !15, metadata !47, metadata !22, metadata !36, metadata !6}
!52 = metadata !{null, metadata !20, metadata !15, metadata !21, metadata !22, metadata !53, metadata !6}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!54 = metadata !{null, metadata !20, metadata !15, metadata !55, metadata !22, metadata !36, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<12> &"}
!56 = metadata !{null, metadata !38, metadata !39, metadata !57, metadata !41, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"row", metadata !"col"}
!59 = metadata !{null, metadata !38, metadata !39, metadata !60, metadata !41, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"value", metadata !"col"}
!62 = metadata !{null, metadata !20, metadata !15, metadata !63, metadata !22, metadata !64, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!65 = metadata !{null, metadata !20, metadata !15, metadata !63, metadata !22, metadata !66, metadata !6}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!67 = metadata !{null, metadata !38, metadata !39, metadata !68, metadata !41, metadata !45, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!69 = metadata !{null, metadata !20, metadata !15, metadata !70, metadata !22, metadata !27, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!71 = metadata !{null, metadata !20, metadata !15, metadata !35, metadata !22, metadata !27, metadata !6}
!72 = metadata !{null, metadata !20, metadata !15, metadata !73, metadata !22, metadata !36, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!74 = metadata !{null, metadata !38, metadata !39, metadata !75, metadata !41, metadata !42, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!76 = metadata !{null, metadata !38, metadata !39, metadata !77, metadata !41, metadata !45, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!78 = metadata !{null, metadata !20, metadata !15, metadata !79, metadata !22, metadata !27, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!80 = metadata !{null, metadata !20, metadata !15, metadata !81, metadata !22, metadata !36, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!82 = metadata !{null, metadata !20, metadata !15, metadata !63, metadata !22, metadata !83, metadata !6}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!84 = metadata !{null, metadata !14, metadata !15, metadata !85, metadata !17, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!87 = metadata !{null, metadata !88, metadata !39, metadata !89, metadata !90, metadata !91, metadata !6}
!88 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!90 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!92 = metadata !{metadata !93, [1 x i32]* @llvm_global_ctors_0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"llvm.global_ctors.0", metadata !97, metadata !"", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 0, i32 1}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 31, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"row", metadata !103, metadata !"int", i32 0, i32 31}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 9999, i32 1}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 31, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"col", metadata !103, metadata !"int", i32 0, i32 31}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 31, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"val", metadata !103, metadata !"float", i32 0, i32 31}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"vector", metadata !117, metadata !"float", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 99, i32 1}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 31, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"output", metadata !117, metadata !"float", i32 0, i32 31}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 31, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"nnz", metadata !127, metadata !"int", i32 0, i32 31}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 0, i32 0}
