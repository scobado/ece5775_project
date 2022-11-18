; ModuleID = '/home/ak2425/ece5775/ece5775_project/project/COO_SpMV.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@COO_SpMV_str = internal unnamed_addr constant [9 x i8] c"COO_SpMV\00" ; [#uses=1 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [7 x i8] c"LOOP_B\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str = private unnamed_addr constant [7 x i8] c"LOOP_A\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare void @_ssdm_SpecDependence(...) nounwind

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=0]
define void @COO_SpMV([10000 x i32]* %row, [10000 x i32]* %col, [10000 x float]* %val, [100 x float]* %vector, [100 x float]* %output, i32 %nnz) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %row) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %col) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %val) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap([100 x float]* %vector) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap([100 x float]* %output) nounwind, !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %nnz) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @COO_SpMV_str) nounwind
  %nnz_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %nnz) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %nnz_read}, i64 0, metadata !62), !dbg !75 ; [debug line = 69:133] [debug variable = nnz]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %row}, i64 0, metadata !76), !dbg !80 ; [debug line = 69:19] [debug variable = row]
  call void @llvm.dbg.value(metadata !{[10000 x i32]* %col}, i64 0, metadata !81), !dbg !82 ; [debug line = 69:41] [debug variable = col]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %val}, i64 0, metadata !83), !dbg !85 ; [debug line = 69:65] [debug variable = val]
  call void @llvm.dbg.value(metadata !{[100 x float]* %vector}, i64 0, metadata !86), !dbg !90 ; [debug line = 69:95] [debug variable = vector]
  call void @llvm.dbg.value(metadata !{[100 x float]* %output}, i64 0, metadata !91), !dbg !93 ; [debug line = 69:115] [debug variable = output]
  call void @llvm.dbg.value(metadata !{i32 %nnz}, i64 0, metadata !62), !dbg !75 ; [debug line = 69:133] [debug variable = nnz]
  br label %1, !dbg !94                           ; [debug line = 70:26]

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i7]
  %exitcond1 = icmp eq i7 %i, -28, !dbg !94       ; [#uses=1 type=i1] [debug line = 70:26]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !97                   ; [#uses=1 type=i7] [debug line = 70:38]
  br i1 %exitcond1, label %.preheader, label %2, !dbg !94 ; [debug line = 70:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str) nounwind, !dbg !98 ; [debug line = 70:44]
  %tmp = zext i7 %i to i64, !dbg !100             ; [#uses=1 type=i64] [debug line = 71:9]
  %output_addr = getelementptr [100 x float]* %output, i64 0, i64 %tmp, !dbg !100 ; [#uses=1 type=float*] [debug line = 71:9]
  store float 0.000000e+00, float* %output_addr, align 4, !dbg !100 ; [debug line = 71:9]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !101), !dbg !97 ; [debug line = 70:38] [debug variable = i]
  br label %1, !dbg !97                           ; [debug line = 70:38]

.preheader:                                       ; preds = %._crit_edge, %1
  %i1 = phi i14 [ %i_2, %._crit_edge ], [ 0, %1 ] ; [#uses=4 type=i14]
  %exitcond = icmp eq i14 %i1, -6384, !dbg !102   ; [#uses=1 type=i1] [debug line = 73:26]
  %i_2 = add i14 %i1, 1, !dbg !104                ; [#uses=1 type=i14] [debug line = 73:45]
  br i1 %exitcond, label %5, label %3, !dbg !102  ; [debug line = 73:26]

; <label>:3                                       ; preds = %.preheader
  %i1_cast1 = zext i14 %i1 to i32, !dbg !102      ; [#uses=1 type=i32] [debug line = 73:26]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10000, i64 10000, i64 10000) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str1) nounwind, !dbg !105 ; [debug line = 73:51]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str1) nounwind, !dbg !105 ; [#uses=1 type=i32] [debug line = 73:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !107 ; [debug line = 74:1]
  %tmp_2 = icmp slt i32 %i1_cast1, %nnz_read, !dbg !108 ; [#uses=1 type=i1] [debug line = 76:2]
  br i1 %tmp_2, label %4, label %._crit_edge, !dbg !108 ; [debug line = 76:2]

; <label>:4                                       ; preds = %3
  %tmp_3 = zext i14 %i1 to i64, !dbg !109         ; [#uses=3 type=i64] [debug line = 77:11]
  %val_addr = getelementptr [10000 x float]* %val, i64 0, i64 %tmp_3, !dbg !109 ; [#uses=1 type=float*] [debug line = 77:11]
  %val_load = load float* %val_addr, align 4, !dbg !109 ; [#uses=1 type=float] [debug line = 77:11]
  %col_addr = getelementptr [10000 x i32]* %col, i64 0, i64 %tmp_3, !dbg !109 ; [#uses=1 type=i32*] [debug line = 77:11]
  %col_load = load i32* %col_addr, align 4, !dbg !109 ; [#uses=1 type=i32] [debug line = 77:11]
  %tmp_4 = sext i32 %col_load to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 77:11]
  %vector_addr = getelementptr [100 x float]* %vector, i64 0, i64 %tmp_4, !dbg !109 ; [#uses=1 type=float*] [debug line = 77:11]
  %vector_load = load float* %vector_addr, align 4, !dbg !109 ; [#uses=1 type=float] [debug line = 77:11]
  %tmp_5 = fmul float %val_load, %vector_load, !dbg !109 ; [#uses=1 type=float] [debug line = 77:11]
  %row_addr = getelementptr [10000 x i32]* %row, i64 0, i64 %tmp_3, !dbg !109 ; [#uses=1 type=i32*] [debug line = 77:11]
  %row_load = load i32* %row_addr, align 4, !dbg !109 ; [#uses=1 type=i32] [debug line = 77:11]
  %tmp_6 = sext i32 %row_load to i64, !dbg !109   ; [#uses=1 type=i64] [debug line = 77:11]
  %output_addr_1 = getelementptr [100 x float]* %output, i64 0, i64 %tmp_6, !dbg !109 ; [#uses=2 type=float*] [debug line = 77:11]
  %output_load = load float* %output_addr_1, align 4, !dbg !109 ; [#uses=1 type=float] [debug line = 77:11]
  %tmp_7 = fadd float %output_load, %tmp_5, !dbg !109 ; [#uses=1 type=float] [debug line = 77:11]
  store float %tmp_7, float* %output_addr_1, align 4, !dbg !109 ; [debug line = 77:11]
  br label %._crit_edge, !dbg !109                ; [debug line = 77:11]

._crit_edge:                                      ; preds = %4, %3
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str1, i32 %tmp_8) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 78:5]
  call void @llvm.dbg.value(metadata !{i14 %i_2}, i64 0, metadata !111), !dbg !104 ; [debug line = 73:45] [debug variable = i]
  br label %.preheader, !dbg !104                 ; [debug line = 73:45]

; <label>:5                                       ; preds = %.preheader
  ret void, !dbg !112                             ; [debug line = 79:1]
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
!62 = metadata !{i32 786689, metadata !63, metadata !"nnz", metadata !64, i32 100663365, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 786478, i32 0, metadata !64, metadata !"COO_SpMV", metadata !"COO_SpMV", metadata !"_Z8COO_SpMVPiS_PfPKfS0_i", metadata !64, i32 69, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !73, i32 69} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786473, metadata !"COO_SpMV.cpp", metadata !"/home/ak2425/ece5775/ece5775_project/project", null} ; [ DW_TAG_file_type ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !67, metadata !67, metadata !69, metadata !71, metadata !69, metadata !68}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!75 = metadata !{i32 69, i32 133, metadata !63, null}
!76 = metadata !{i32 786689, metadata !63, metadata !"row", null, i32 69, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !68, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 9999}     ; [ DW_TAG_subrange_type ]
!80 = metadata !{i32 69, i32 19, metadata !63, null}
!81 = metadata !{i32 786689, metadata !63, metadata !"col", null, i32 69, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 69, i32 41, metadata !63, null}
!83 = metadata !{i32 786689, metadata !63, metadata !"val", null, i32 69, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !70, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ]
!85 = metadata !{i32 69, i32 65, metadata !63, null}
!86 = metadata !{i32 786689, metadata !63, metadata !"vector", null, i32 69, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !72, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!90 = metadata !{i32 69, i32 95, metadata !63, null}
!91 = metadata !{i32 786689, metadata !63, metadata !"output", null, i32 69, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !70, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ]
!93 = metadata !{i32 69, i32 115, metadata !63, null}
!94 = metadata !{i32 70, i32 26, metadata !95, null}
!95 = metadata !{i32 786443, metadata !96, i32 70, i32 13, metadata !64, i32 1} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !63, i32 69, i32 138, metadata !64, i32 0} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 70, i32 38, metadata !95, null}
!98 = metadata !{i32 70, i32 44, metadata !99, null}
!99 = metadata !{i32 786443, metadata !95, i32 70, i32 43, metadata !64, i32 2} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 71, i32 9, metadata !99, null}
!101 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !64, i32 70, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 73, i32 26, metadata !103, null}
!103 = metadata !{i32 786443, metadata !96, i32 73, i32 13, metadata !64, i32 3} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 73, i32 45, metadata !103, null}
!105 = metadata !{i32 73, i32 51, metadata !106, null}
!106 = metadata !{i32 786443, metadata !103, i32 73, i32 50, metadata !64, i32 4} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 74, i32 1, metadata !106, null}
!108 = metadata !{i32 76, i32 2, metadata !106, null}
!109 = metadata !{i32 77, i32 11, metadata !106, null}
!110 = metadata !{i32 78, i32 5, metadata !106, null}
!111 = metadata !{i32 786688, metadata !103, metadata !"i", metadata !64, i32 73, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 79, i32 1, metadata !96, null}
