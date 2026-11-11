; ModuleID = '/home/pulp1/originals_measuring/FFT_opt/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.hs_is_t = type { i1, i1, %"struct.ap_int<32>", %"struct.ap_int<4>" }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_int<4>" = type { %"struct.ap_int_base<4, true>" }
%"struct.ap_int_base<4, true>" = type { %"struct.ssdm_int<4, true>" }
%"struct.ssdm_int<4, true>" = type { i4 }
%"struct.ap_uint<5>" = type { %"struct.ap_int_base<5, false>" }
%"struct.ap_int_base<5, false>" = type { %"struct.ssdm_int<5, false>" }
%"struct.ssdm_int<5, false>" = type { i5 }
%"struct.ap_uint<11>" = type { %"struct.ap_int_base<11, false>" }
%"struct.ap_int_base<11, false>" = type { %"struct.ssdm_int<11, false>" }
%"struct.ssdm_int<11, false>" = type { i11 }

; Function Attrs: noinline
define void @apatb_cont_ir(%struct.hs_is_t* noalias nocapture nonnull %a_i, %struct.hs_is_t* noalias nocapture nonnull %b_i, %struct.hs_is_t* noalias nocapture nonnull %c_i, %struct.hs_is_t* noalias nocapture nonnull %d_o, i1 zeroext %clear, i1 zeroext %enable, i1 zeroext %function, i1 zeroext %start, %"struct.ap_uint<5>"* nocapture readonly %shift, %"struct.ap_uint<11>"* nocapture readonly %len, %"struct.ap_uint<11>"* noalias nocapture nonnull %f_cnt, i1* noalias nocapture nonnull %f_valid) local_unnamed_addr #0 {
entry:
  %a_i_copy.0 = alloca i1, align 512
  %a_i_copy.1 = alloca i1, align 512
  %a_i_copy.2 = alloca i32, align 512
  %a_i_copy.3 = alloca i4, align 512
  %b_i_copy.0 = alloca i1, align 512
  %b_i_copy.1 = alloca i1, align 512
  %b_i_copy.2 = alloca i32, align 512
  %b_i_copy.3 = alloca i4, align 512
  %c_i_copy.0 = alloca i1, align 512
  %c_i_copy.1 = alloca i1, align 512
  %c_i_copy.2 = alloca i32, align 512
  %c_i_copy.3 = alloca i4, align 512
  %d_o_copy.0 = alloca i1, align 512
  %d_o_copy.1 = alloca i1, align 512
  %d_o_copy.2 = alloca i32, align 512
  %d_o_copy.3 = alloca i4, align 512
  %f_cnt_copy = alloca i11, align 512
  %f_valid_copy = alloca i1, align 512
  call fastcc void @copy_in(%struct.hs_is_t* nonnull %a_i, i1* nonnull align 512 %a_i_copy.0, i1* nonnull align 512 %a_i_copy.1, i32* nonnull align 512 %a_i_copy.2, i4* nonnull align 512 %a_i_copy.3, %struct.hs_is_t* nonnull %b_i, i1* nonnull align 512 %b_i_copy.0, i1* nonnull align 512 %b_i_copy.1, i32* nonnull align 512 %b_i_copy.2, i4* nonnull align 512 %b_i_copy.3, %struct.hs_is_t* nonnull %c_i, i1* nonnull align 512 %c_i_copy.0, i1* nonnull align 512 %c_i_copy.1, i32* nonnull align 512 %c_i_copy.2, i4* nonnull align 512 %c_i_copy.3, %struct.hs_is_t* nonnull %d_o, i1* nonnull align 512 %d_o_copy.0, i1* nonnull align 512 %d_o_copy.1, i32* nonnull align 512 %d_o_copy.2, i4* nonnull align 512 %d_o_copy.3, %"struct.ap_uint<11>"* nonnull %f_cnt, i11* nonnull align 512 %f_cnt_copy, i1* nonnull %f_valid, i1* nonnull align 512 %f_valid_copy)
  call void @apatb_cont_hw(i1* %a_i_copy.0, i1* %a_i_copy.1, i32* %a_i_copy.2, i4* %a_i_copy.3, i1* %b_i_copy.0, i1* %b_i_copy.1, i32* %b_i_copy.2, i4* %b_i_copy.3, i1* %c_i_copy.0, i1* %c_i_copy.1, i32* %c_i_copy.2, i4* %c_i_copy.3, i1* %d_o_copy.0, i1* %d_o_copy.1, i32* %d_o_copy.2, i4* %d_o_copy.3, i1 %clear, i1 %enable, i1 %function, i1 %start, %"struct.ap_uint<5>"* %shift, %"struct.ap_uint<11>"* %len, i11* %f_cnt_copy, i1* %f_valid_copy)
  call void @copy_back(%struct.hs_is_t* %a_i, i1* %a_i_copy.0, i1* %a_i_copy.1, i32* %a_i_copy.2, i4* %a_i_copy.3, %struct.hs_is_t* %b_i, i1* %b_i_copy.0, i1* %b_i_copy.1, i32* %b_i_copy.2, i4* %b_i_copy.3, %struct.hs_is_t* %c_i, i1* %c_i_copy.0, i1* %c_i_copy.1, i32* %c_i_copy.2, i4* %c_i_copy.3, %struct.hs_is_t* %d_o, i1* %d_o_copy.0, i1* %d_o_copy.1, i32* %d_o_copy.2, i4* %d_o_copy.3, %"struct.ap_uint<11>"* %f_cnt, i11* %f_cnt_copy, i1* %f_valid, i1* %f_valid_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%struct.hs_is_t* noalias readonly "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0" %.0, i1* noalias nocapture align 512 "unpacked"="1.1" %.1, i32* noalias nocapture align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture align 512 "unpacked"="1.3.0.0.0" %.3, %struct.hs_is_t* noalias readonly "unpacked"="2", i1* noalias nocapture align 512 "unpacked"="3.0" %.01, i1* noalias nocapture align 512 "unpacked"="3.1" %.12, i32* noalias nocapture align 512 "unpacked"="3.2.0.0.0" %.23, i4* noalias nocapture align 512 "unpacked"="3.3.0.0.0" %.34, %struct.hs_is_t* noalias readonly "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0" %.02, i1* noalias nocapture align 512 "unpacked"="5.1" %.13, i32* noalias nocapture align 512 "unpacked"="5.2.0.0.0" %.24, i4* noalias nocapture align 512 "unpacked"="5.3.0.0.0" %.35, %struct.hs_is_t* noalias readonly "unpacked"="6", i1* noalias nocapture align 512 "unpacked"="7.0" %.03, i1* noalias nocapture align 512 "unpacked"="7.1" %.14, i32* noalias nocapture align 512 "unpacked"="7.2.0.0.0" %.25, i4* noalias nocapture align 512 "unpacked"="7.3.0.0.0" %.36, %"struct.ap_uint<11>"* noalias readonly "unpacked"="8", i11* noalias nocapture align 512 "unpacked"="9.0.0.0", i1* noalias readonly "unpacked"="10", i1* noalias align 512 "unpacked"="11") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.114(i1* align 512 %.0, i1* align 512 %.1, i32* align 512 %.2, i4* align 512 %.3, %struct.hs_is_t* %0)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.114(i1* align 512 %.01, i1* align 512 %.12, i32* align 512 %.23, i4* align 512 %.34, %struct.hs_is_t* %1)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.114(i1* align 512 %.02, i1* align 512 %.13, i32* align 512 %.24, i4* align 512 %.35, %struct.hs_is_t* %2)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t.114(i1* align 512 %.03, i1* align 512 %.14, i32* align 512 %.25, i4* align 512 %.36, %struct.hs_is_t* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>"(i11* align 512 %5, %"struct.ap_uint<11>"* %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %7, i1* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%struct.hs_is_t* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i1* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture readonly align 512 "unpacked"="1.3.0.0.0" %.3, %struct.hs_is_t* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i1* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, i32* noalias nocapture readonly align 512 "unpacked"="3.2.0.0.0" %.23, i4* noalias nocapture readonly align 512 "unpacked"="3.3.0.0.0" %.34, %struct.hs_is_t* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i1* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2.0.0.0" %.24, i4* noalias nocapture readonly align 512 "unpacked"="5.3.0.0.0" %.35, %struct.hs_is_t* noalias "unpacked"="6", i1* noalias nocapture readonly align 512 "unpacked"="7.0" %.03, i1* noalias nocapture readonly align 512 "unpacked"="7.1" %.14, i32* noalias nocapture readonly align 512 "unpacked"="7.2.0.0.0" %.25, i4* noalias nocapture readonly align 512 "unpacked"="7.3.0.0.0" %.36, %"struct.ap_uint<11>"* noalias "unpacked"="8", i11* noalias nocapture readonly align 512 "unpacked"="9.0.0.0", i1* noalias "unpacked"="10", i1* noalias readonly align 512 "unpacked"="11") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %0, i1* align 512 %.0, i1* align 512 %.1, i32* align 512 %.2, i4* align 512 %.3)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %1, i1* align 512 %.01, i1* align 512 %.12, i32* align 512 %.23, i4* align 512 %.34)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %2, i1* align 512 %.02, i1* align 512 %.13, i32* align 512 %.24, i4* align 512 %.35)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %3, i1* align 512 %.03, i1* align 512 %.14, i32* align 512 %.25, i4* align 512 %.36)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>.128"(%"struct.ap_uint<11>"* %4, i11* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>.128"(%"struct.ap_uint<11>"* noalias "unpacked"="0", i11* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_uint<11>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<11>", %"struct.ap_uint<11>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i11* %1 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i11
  store i11 %5, i11* %.01.0.05, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>"(i11* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_uint<11>"* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_uint<11>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<11>", %"struct.ap_uint<11>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i11* %.0.0.04 to i16*
  %4 = load i16, i16* %3
  %5 = trunc i16 %4 to i11
  store i11 %5, i11* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0" %.02, i1* noalias nocapture readonly align 512 "unpacked"="1.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture readonly align 512 "unpacked"="1.3.0.0.0" %.3) unnamed_addr #2 {
entry:
  %1 = icmp eq %struct.hs_is_t* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 0
  %2 = bitcast i1* %.02 to i8*
  %3 = load i8, i8* %2
  %4 = trunc i8 %3 to i1
  store i1 %4, i1* %.01, align 1
  %.12 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 1
  %5 = bitcast i1* %.13 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %.12, align 1
  %.23.0.0.010 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %8 = load i32, i32* %.2, align 512
  store i32 %8, i32* %.23.0.0.010, align 4
  %.34.0.0.016 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %9 = bitcast i4* %.3 to i8*
  %10 = load i8, i8* %9
  %11 = trunc i8 %10 to i4
  store i4 %11, i4* %.34.0.0.016, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.hs_is_t.114(i1* noalias nocapture align 512 "unpacked"="0.0" %.02, i1* noalias nocapture align 512 "unpacked"="0.1" %.13, i32* noalias nocapture align 512 "unpacked"="0.2.0.0.0" %.2, i4* noalias nocapture align 512 "unpacked"="0.3.0.0.0" %.3, %struct.hs_is_t* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %1 = icmp eq %struct.hs_is_t* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 0
  %2 = bitcast i1* %.0 to i8*
  %3 = load i8, i8* %2
  %4 = trunc i8 %3 to i1
  store i1 %4, i1* %.02, align 512
  %.1 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 1
  %5 = bitcast i1* %.1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %.13, align 512
  %.2.0.0.09 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %8 = load i32, i32* %.2.0.0.09, align 4
  store i32 %8, i32* %.2, align 512
  %.3.0.0.015 = getelementptr %struct.hs_is_t, %struct.hs_is_t* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %9 = bitcast i4* %.3.0.0.015 to i8*
  %10 = load i8, i8* %9
  %11 = trunc i8 %10 to i4
  store i4 %11, i4* %.3, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_cont_hw(i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1, i1, i1, i1, %"struct.ap_uint<5>"*, %"struct.ap_uint<11>"*, i11*, i1*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%struct.hs_is_t* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i1* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2.0.0.0" %.2, i4* noalias nocapture readonly align 512 "unpacked"="1.3.0.0.0" %.3, %struct.hs_is_t* noalias "unpacked"="2", i1* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i1* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, i32* noalias nocapture readonly align 512 "unpacked"="3.2.0.0.0" %.23, i4* noalias nocapture readonly align 512 "unpacked"="3.3.0.0.0" %.34, %struct.hs_is_t* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i1* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2.0.0.0" %.24, i4* noalias nocapture readonly align 512 "unpacked"="5.3.0.0.0" %.35, %struct.hs_is_t* noalias "unpacked"="6", i1* noalias nocapture readonly align 512 "unpacked"="7.0" %.03, i1* noalias nocapture readonly align 512 "unpacked"="7.1" %.14, i32* noalias nocapture readonly align 512 "unpacked"="7.2.0.0.0" %.25, i4* noalias nocapture readonly align 512 "unpacked"="7.3.0.0.0" %.36, %"struct.ap_uint<11>"* noalias "unpacked"="8", i11* noalias nocapture readonly align 512 "unpacked"="9.0.0.0", i1* noalias "unpacked"="10", i1* noalias readonly align 512 "unpacked"="11") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %0, i1* align 512 %.0, i1* align 512 %.1, i32* align 512 %.2, i4* align 512 %.3)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %1, i1* align 512 %.01, i1* align 512 %.12, i32* align 512 %.23, i4* align 512 %.34)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %2, i1* align 512 %.02, i1* align 512 %.13, i32* align 512 %.24, i4* align 512 %.35)
  call fastcc void @onebyonecpy_hls.p0struct.hs_is_t(%struct.hs_is_t* %3, i1* align 512 %.03, i1* align 512 %.14, i32* align 512 %.25, i4* align 512 %.36)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<11>.128"(%"struct.ap_uint<11>"* %4, i11* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  ret void
}

define void @cont_hw_stub_wrapper(i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1*, i1*, i32*, i4*, i1, i1, i1, i1, %"struct.ap_uint<5>"*, %"struct.ap_uint<11>"*, i11*, i1*) #4 {
entry:
  %24 = alloca %struct.hs_is_t
  %25 = alloca %struct.hs_is_t
  %26 = alloca %struct.hs_is_t
  %27 = alloca %struct.hs_is_t
  %28 = alloca %"struct.ap_uint<11>"
  call void @copy_out(%struct.hs_is_t* %24, i1* %0, i1* %1, i32* %2, i4* %3, %struct.hs_is_t* %25, i1* %4, i1* %5, i32* %6, i4* %7, %struct.hs_is_t* %26, i1* %8, i1* %9, i32* %10, i4* %11, %struct.hs_is_t* %27, i1* %12, i1* %13, i32* %14, i4* %15, %"struct.ap_uint<11>"* %28, i11* %22, i1* null, i1* %23)
  call void @cont_hw_stub(%struct.hs_is_t* %24, %struct.hs_is_t* %25, %struct.hs_is_t* %26, %struct.hs_is_t* %27, i1 %16, i1 %17, i1 %18, i1 %19, %"struct.ap_uint<5>"* %20, %"struct.ap_uint<11>"* %21, %"struct.ap_uint<11>"* %28, i1* %23)
  call void @copy_in(%struct.hs_is_t* %24, i1* %0, i1* %1, i32* %2, i4* %3, %struct.hs_is_t* %25, i1* %4, i1* %5, i32* %6, i4* %7, %struct.hs_is_t* %26, i1* %8, i1* %9, i32* %10, i4* %11, %struct.hs_is_t* %27, i1* %12, i1* %13, i32* %14, i4* %15, %"struct.ap_uint<11>"* %28, i11* %22, i1* null, i1* %23)
  ret void
}

declare void @cont_hw_stub(%struct.hs_is_t*, %struct.hs_is_t*, %struct.hs_is_t*, %struct.hs_is_t*, i1, i1, i1, i1, %"struct.ap_uint<5>"*, %"struct.ap_uint<11>"*, %"struct.ap_uint<11>"*, i1*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
