; ModuleID = '/home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter3b/matrix_mult_prj/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_matrix_mult_ir([5 x i8]* %a, [5 x i8]* %b, [5 x i16]* %prod) local_unnamed_addr #0 {
entry:
  %a_copy = alloca [5 x [5 x i8]], align 512
  %b_copy = alloca [5 x [5 x i8]], align 512
  %prod_copy = alloca [5 x [5 x i16]], align 512
  %0 = bitcast [5 x i8]* %a to [5 x [5 x i8]]*
  %1 = bitcast [5 x i8]* %b to [5 x [5 x i8]]*
  %2 = bitcast [5 x i16]* %prod to [5 x [5 x i16]]*
  call fastcc void @copy_in([5 x [5 x i8]]* %0, [5 x [5 x i8]]* nonnull align 512 %a_copy, [5 x [5 x i8]]* %1, [5 x [5 x i8]]* nonnull align 512 %b_copy, [5 x [5 x i16]]* %2, [5 x [5 x i16]]* nonnull align 512 %prod_copy)
  %3 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %a_copy, i32 0, i32 0
  %4 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %b_copy, i32 0, i32 0
  %5 = getelementptr inbounds [5 x [5 x i16]], [5 x [5 x i16]]* %prod_copy, i32 0, i32 0
  call void @apatb_matrix_mult_hw([5 x i8]* %3, [5 x i8]* %4, [5 x i16]* %5)
  call fastcc void @copy_out([5 x [5 x i8]]* %0, [5 x [5 x i8]]* nonnull align 512 %a_copy, [5 x [5 x i8]]* %1, [5 x [5 x i8]]* nonnull align 512 %b_copy, [5 x [5 x i16]]* %2, [5 x [5 x i16]]* nonnull align 512 %prod_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([5 x [5 x i8]]* readonly, [5 x [5 x i8]]* noalias align 512, [5 x [5 x i8]]* readonly, [5 x [5 x i8]]* noalias align 512, [5 x [5 x i16]]* readonly, [5 x [5 x i16]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a5a5i8([5 x [5 x i8]]* align 512 %1, [5 x [5 x i8]]* %0)
  call fastcc void @onebyonecpy_hls.p0a5a5i8([5 x [5 x i8]]* align 512 %3, [5 x [5 x i8]]* %2)
  call fastcc void @onebyonecpy_hls.p0a5a5i16([5 x [5 x i16]]* align 512 %5, [5 x [5 x i16]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a5a5i8([5 x [5 x i8]]* noalias align 512, [5 x [5 x i8]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [5 x [5 x i8]]* %0, null
  %3 = icmp eq [5 x [5 x i8]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [5 x [5 x i8]], [5 x [5 x i8]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr57, i8* align 1 %src.addr68, i64 1, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 5
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a5a5i16([5 x [5 x i16]]* noalias align 512, [5 x [5 x i16]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [5 x [5 x i16]]* %0, null
  %3 = icmp eq [5 x [5 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57.gep9 = getelementptr [5 x [5 x i16]], [5 x [5 x i16]]* %0, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %5 = bitcast i16* %dst.addr57.gep9 to i8*
  %src.addr68.gep10 = getelementptr [5 x [5 x i16]], [5 x [5 x i16]]* %1, i64 0, i64 %for.loop.idx12, i64 %for.loop.idx311
  %6 = bitcast i16* %src.addr68.gep10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 2, i1 false)
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 5
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([5 x [5 x i8]]*, [5 x [5 x i8]]* noalias readonly align 512, [5 x [5 x i8]]*, [5 x [5 x i8]]* noalias readonly align 512, [5 x [5 x i16]]*, [5 x [5 x i16]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a5a5i8([5 x [5 x i8]]* %0, [5 x [5 x i8]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a5a5i8([5 x [5 x i8]]* %2, [5 x [5 x i8]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a5a5i16([5 x [5 x i16]]* %4, [5 x [5 x i16]]* align 512 %5)
  ret void
}

declare void @apatb_matrix_mult_hw([5 x i8]*, [5 x i8]*, [5 x i16]*)

define void @matrix_mult_hw_stub_wrapper([5 x i8]*, [5 x i8]*, [5 x i16]*) #5 {
entry:
  %3 = bitcast [5 x i8]* %0 to [5 x [5 x i8]]*
  %4 = bitcast [5 x i8]* %1 to [5 x [5 x i8]]*
  %5 = bitcast [5 x i16]* %2 to [5 x [5 x i16]]*
  call void @copy_out([5 x [5 x i8]]* null, [5 x [5 x i8]]* %3, [5 x [5 x i8]]* null, [5 x [5 x i8]]* %4, [5 x [5 x i16]]* null, [5 x [5 x i16]]* %5)
  %6 = bitcast [5 x [5 x i8]]* %3 to [5 x i8]*
  %7 = bitcast [5 x [5 x i8]]* %4 to [5 x i8]*
  %8 = bitcast [5 x [5 x i16]]* %5 to [5 x i16]*
  call void @matrix_mult_hw_stub([5 x i8]* %6, [5 x i8]* %7, [5 x i16]* %8)
  call void @copy_in([5 x [5 x i8]]* null, [5 x [5 x i8]]* %3, [5 x [5 x i8]]* null, [5 x [5 x i8]]* %4, [5 x [5 x i16]]* null, [5 x [5 x i16]]* %5)
  ret void
}

declare void @matrix_mult_hw_stub([5 x i8]*, [5 x i8]*, [5 x i16]*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
