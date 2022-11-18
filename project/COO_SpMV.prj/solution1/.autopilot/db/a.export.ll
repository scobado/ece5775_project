; ModuleID = '/home/ak2425/ece5775/ece5775_project/project/COO_SpMV.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@COO_SpMV_str = internal unnamed_addr constant [9 x i8] c"COO_SpMV\00"
@p_str1 = private unnamed_addr constant [7 x i8] c"LOOP_B\00", align 1
@p_str = private unnamed_addr constant [7 x i8] c"LOOP_A\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define void @COO_SpMV([10000 x i32]* %row, [10000 x i32]* %col, [10000 x float]* %val_r, [100 x float]* %vector, [100 x float]* %output_r, i32 %nnz) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %row) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %col) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %val_r) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap([100 x float]* %vector) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap([100 x float]* %output_r) nounwind, !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %nnz) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @COO_SpMV_str) nounwind
  %nnz_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %nnz) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond2 = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_1 = add i7 %i, 1
  br i1 %exitcond2, label %.preheader3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str) nounwind
  %tmp = zext i7 %i to i64
  %output_addr = getelementptr [100 x float]* %output_r, i64 0, i64 %tmp
  store float 0.000000e+00, float* %output_addr, align 4
  br label %1

.preheader3:                                      ; preds = %1, %._crit_edge
  %i1 = phi i14 [ %i_2, %._crit_edge ], [ 0, %1 ]
  %i1_cast1 = zext i14 %i1 to i32
  %exitcond1 = icmp eq i14 %i1, -6384
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10000, i64 10000, i64 10000) nounwind
  %i_2 = add i14 %i1, 1
  br i1 %exitcond1, label %.preheader.preheader, label %3

; <label>:3                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str1) nounwind
  %tmp_2 = icmp slt i32 %i1_cast1, %nnz_read
  br i1 %tmp_2, label %4, label %._crit_edge

; <label>:4                                       ; preds = %3
  %tmp_3 = zext i14 %i1 to i64
  %val_addr = getelementptr [10000 x float]* %val_r, i64 0, i64 %tmp_3
  %val_load = load float* %val_addr, align 4
  %col_addr = getelementptr [10000 x i32]* %col, i64 0, i64 %tmp_3
  %col_load = load i32* %col_addr, align 4
  %tmp_4 = sext i32 %col_load to i64
  %vector_addr = getelementptr [100 x float]* %vector, i64 0, i64 %tmp_4
  %vector_load = load float* %vector_addr, align 4
  %tmp_5 = fmul float %val_load, %vector_load
  %row_addr = getelementptr [10000 x i32]* %row, i64 0, i64 %tmp_3
  %row_load = load i32* %row_addr, align 4
  %tmp_6 = sext i32 %row_load to i64
  %output_addr_1 = getelementptr [100 x float]* %output_r, i64 0, i64 %tmp_6
  %output_load = load float* %output_addr_1, align 4
  %tmp_7 = fadd float %output_load, %tmp_5
  store float %tmp_7, float* %output_addr_1, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  br label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!25}

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
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{metadata !26, [1 x i32]* @llvm_global_ctors_0}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"llvm.global_ctors.0", metadata !30, metadata !"", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 0, i32 1}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"row", metadata !36, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 9999, i32 1}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"col", metadata !36, metadata !"int", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"val", metadata !36, metadata !"float", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"vector", metadata !50, metadata !"float", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 99, i32 1}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"output", metadata !50, metadata !"float", i32 0, i32 31}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 31, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"nnz", metadata !60, metadata !"int", i32 0, i32 31}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, i32 0}
