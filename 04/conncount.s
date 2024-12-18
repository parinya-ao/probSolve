	.text
	.file	"conncount.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z5printx                       # -- Begin function _Z5printx
	.p2align	4, 0x90
	.type	_Z5printx,@function
_Z5printx:                              # @_Z5printx
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEx@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z5printx, .Lfunc_end1-_Z5printx
	.cfi_endproc
                                        # -- End function
	.globl	_Z5printd                       # -- Begin function _Z5printd
	.p2align	4, 0x90
	.type	_Z5printd,@function
_Z5printd:                              # @_Z5printd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEd@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z5printd, .Lfunc_end2-_Z5printd
	.cfi_endproc
                                        # -- End function
	.globl	_Z5printc                       # -- Begin function _Z5printc
	.p2align	4, 0x90
	.type	_Z5printc,@function
_Z5printc:                              # @_Z5printc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movl	$39, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdi
	movsbl	-1(%rbp), %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdi
	movl	$39, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_Z5printc, .Lfunc_end3-_Z5printc
	.cfi_endproc
                                        # -- End function
	.globl	_Z5printRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z5printRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z5printRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z5printRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z5printRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movl	$34, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdi
	movl	$34, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_Z5printRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end4-_Z5printRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z5printb                       # -- Begin function _Z5printb
	.p2align	4, 0x90
	.type	_Z5printb,@function
_Z5printb:                              # @_Z5printb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	movb	-1(%rbp), %cl
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str(%rip), %rax
	testb	$1, %cl
	cmovneq	%rax, %rsi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_Z5printb, .Lfunc_end5-_Z5printb
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.2
	.type	__cxx_global_var_init.2,@function
__cxx_global_var_init.2:                # @__cxx_global_var_init.2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	adj(%rip), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	jmp	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi                  # 8-byte Reload
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorIxSaIxEEC2Ev
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$24, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	leaq	adj(%rip), %rcx
	addq	$2400240, %rcx                  # imm = 0x249FF0
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	jne	.LBB6_1
# %bb.2:
	leaq	__cxx_global_array_dtor(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	__cxx_global_var_init.2, .Lfunc_end6-__cxx_global_var_init.2
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEEC2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEEC2Ev,comdat
	.weak	_ZNSt6vectorIxSaIxEEC2Ev        # -- Begin function _ZNSt6vectorIxSaIxEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEEC2Ev,@function
_ZNSt6vectorIxSaIxEEC2Ev:               # @_ZNSt6vectorIxSaIxEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZNSt6vectorIxSaIxEEC2Ev, .Lfunc_end7-_ZNSt6vectorIxSaIxEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_array_dtor
	.type	__cxx_global_array_dtor,@function
__cxx_global_array_dtor:                # @__cxx_global_array_dtor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	adj(%rip), %rax
	addq	$2400240, %rax                  # imm = 0x249FF0
	movq	%rax, -16(%rbp)                 # 8-byte Spill
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	addq	$-24, %rdi
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorIxSaIxEED2Ev
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	adj(%rip), %rcx
	cmpq	%rcx, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jne	.LBB8_1
# %bb.2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	__cxx_global_array_dtor, .Lfunc_end8-__cxx_global_array_dtor
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED2Ev,comdat
	.weak	_ZNSt6vectorIxSaIxEED2Ev        # -- Begin function _ZNSt6vectorIxSaIxEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEED2Ev,@function
_ZNSt6vectorIxSaIxEED2Ev:               # @_ZNSt6vectorIxSaIxEED2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
.Ltmp0:
	callq	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
.Ltmp1:
	jmp	.LBB9_1
.LBB9_1:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIxSaIxEED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_2:
	.cfi_def_cfa %rbp, 16
.Ltmp2:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
	callq	_ZNSt12_Vector_baseIxSaIxEED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end9:
	.size	_ZNSt6vectorIxSaIxEED2Ev, .Lfunc_end9-_ZNSt6vectorIxSaIxEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIxSaIxEED2Ev,"aG",@progbits,_ZNSt6vectorIxSaIxEED2Ev,comdat
	.p2align	2
GCC_except_table9:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z3bfsx                         # -- Begin function _Z3bfsx
	.p2align	4, 0x90
	.type	_Z3bfsx,@function
_Z3bfsx:                                # @_Z3bfsx
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-88(%rbp), %rdi
	movq	%rdi, -152(%rbp)                # 8-byte Spill
	callq	_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv
	movq	-152(%rbp), %rdi                # 8-byte Reload
.Ltmp3:
	leaq	-8(%rbp), %rsi
	callq	_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx
.Ltmp4:
	jmp	.LBB10_1
.LBB10_1:
	movq	-8(%rbp), %rcx
	leaq	visited(%rip), %rax
	movb	$1, (%rax,%rcx)
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
.Ltmp5:
	leaq	-88(%rbp), %rdi
	callq	_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv
.Ltmp6:
	movb	%al, -153(%rbp)                 # 1-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_2 Depth=1
	movb	-153(%rbp), %al                 # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB10_4
	jmp	.LBB10_15
.LBB10_4:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp7:
	leaq	-88(%rbp), %rdi
	callq	_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv
.Ltmp8:
	movq	%rax, -168(%rbp)                # 8-byte Spill
	jmp	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_2 Depth=1
	movq	-168(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
.Ltmp9:
	leaq	-88(%rbp), %rdi
	callq	_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv
.Ltmp10:
	jmp	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_2 Depth=1
	leaq	adj(%rip), %rax
	imulq	$24, -112(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	_ZNSt6vectorIxSaIxEE5beginEv
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rdi
	callq	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, -136(%rbp)
.LBB10_7:                               #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	callq	_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB10_8
	jmp	.LBB10_14
.LBB10_8:                               #   in Loop: Header=BB10_7 Depth=2
	leaq	-128(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rcx
	leaq	visited(%rip), %rax
	testb	$1, (%rax,%rcx)
	jne	.LBB10_12
# %bb.9:                                #   in Loop: Header=BB10_7 Depth=2
.Ltmp11:
	leaq	-88(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx
.Ltmp12:
	jmp	.LBB10_10
.LBB10_10:                              #   in Loop: Header=BB10_7 Depth=2
	movq	-144(%rbp), %rcx
	leaq	visited(%rip), %rax
	movb	$1, (%rax,%rcx)
	jmp	.LBB10_12
.LBB10_11:
.Ltmp13:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -96(%rbp)
	movl	%eax, -100(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev
	jmp	.LBB10_16
.LBB10_12:                              #   in Loop: Header=BB10_7 Depth=2
	jmp	.LBB10_13
.LBB10_13:                              #   in Loop: Header=BB10_7 Depth=2
	leaq	-128(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv
	jmp	.LBB10_7
.LBB10_14:                              #   in Loop: Header=BB10_2 Depth=1
	jmp	.LBB10_2
.LBB10_15:
	leaq	-88(%rbp), %rdi
	callq	_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_16:
	.cfi_def_cfa %rbp, 16
	movq	-96(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end10:
	.size	_Z3bfsx, .Lfunc_end10-_Z3bfsx
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table10:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp12           #   Call between .Ltmp12 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv,"axG",@progbits,_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv,comdat
	.weak	_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv # -- Begin function _ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.p2align	4, 0x90
	.type	_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv,@function
_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv: # @_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	xorl	%esi, %esi
	movl	$80, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt5dequeIxSaIxEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv, .Lfunc_end11-_ZNSt5queueIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx,"axG",@progbits,_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx,comdat
	.weak	_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx # -- Begin function _ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx
	.p2align	4, 0x90
	.type	_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx,@function
_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx: # @_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt5dequeIxSaIxEE9push_backERKx
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx, .Lfunc_end12-_ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv,"axG",@progbits,_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv,comdat
	.weak	_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv # -- Begin function _ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv
	.p2align	4, 0x90
	.type	_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv,@function
_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv: # @_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt5dequeIxSaIxEE5emptyEv
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv, .Lfunc_end13-_ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv,"axG",@progbits,_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv,comdat
	.weak	_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv # -- Begin function _ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv
	.p2align	4, 0x90
	.type	_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv,@function
_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv: # @_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt5dequeIxSaIxEE5frontEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv, .Lfunc_end14-_ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5queueIxSt5dequeIxSaIxEEE3popEv,"axG",@progbits,_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv,comdat
	.weak	_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv # -- Begin function _ZNSt5queueIxSt5dequeIxSaIxEEE3popEv
	.p2align	4, 0x90
	.type	_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv,@function
_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv:   # @_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt5dequeIxSaIxEE9pop_frontEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv, .Lfunc_end15-_ZNSt5queueIxSt5dequeIxSaIxEEE3popEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEE5beginEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE5beginEv,comdat
	.weak	_ZNSt6vectorIxSaIxEE5beginEv    # -- Begin function _ZNSt6vectorIxSaIxEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEE5beginEv,@function
_ZNSt6vectorIxSaIxEE5beginEv:           # @_ZNSt6vectorIxSaIxEE5beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZNSt6vectorIxSaIxEE5beginEv, .Lfunc_end16-_ZNSt6vectorIxSaIxEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEE3endEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE3endEv,comdat
	.weak	_ZNSt6vectorIxSaIxEE3endEv      # -- Begin function _ZNSt6vectorIxSaIxEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEE3endEv,@function
_ZNSt6vectorIxSaIxEE3endEv:             # @_ZNSt6vectorIxSaIxEE3endEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	leaq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZNSt6vectorIxSaIxEE3endEv, .Lfunc_end17-_ZNSt6vectorIxSaIxEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ # -- Begin function _ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,@function
_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_: # @_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	(%rcx), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .Lfunc_end18-_ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv, .Lfunc_end19-_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv,@function
_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv: # @_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv, .Lfunc_end20-_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5queueIxSt5dequeIxSaIxEEED2Ev,"axG",@progbits,_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev,comdat
	.weak	_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev # -- Begin function _ZNSt5queueIxSt5dequeIxSaIxEEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev,@function
_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev:     # @_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt5dequeIxSaIxEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev, .Lfunc_end21-_ZNSt5queueIxSt5dequeIxSaIxEEED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	xorl	%edi, %edi
	callq	_ZNSt8ios_base15sync_with_stdioEb@PLT
	movq	_ZSt3cin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	addq	-24(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSirsERx@PLT
	movq	%rax, %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZNSirsERx@PLT
	leaq	visited(%rip), %rdi
	xorl	%esi, %esi
	movl	$100010, %edx                   # imm = 0x186AA
	callq	memset@PLT
	movq	$0, -32(%rbp)
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB22_4
# %bb.2:                                #   in Loop: Header=BB22_1 Depth=1
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZNSirsERx@PLT
	movq	%rax, %rdi
	leaq	-48(%rbp), %rsi
	callq	_ZNSirsERx@PLT
	leaq	adj(%rip), %rdi
	imulq	$24, -40(%rbp), %rax
	addq	%rax, %rdi
	leaq	-48(%rbp), %rsi
	callq	_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_
	leaq	adj(%rip), %rdi
	imulq	$24, -48(%rbp), %rax
	addq	%rax, %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_
# %bb.3:                                #   in Loop: Header=BB22_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB22_1
.LBB22_4:
	movq	$0, -56(%rbp)
	movq	$1, -64(%rbp)
.LBB22_5:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB22_10
# %bb.6:                                #   in Loop: Header=BB22_5 Depth=1
	movq	-64(%rbp), %rcx
	leaq	visited(%rip), %rax
	testb	$1, (%rax,%rcx)
	jne	.LBB22_8
# %bb.7:                                #   in Loop: Header=BB22_5 Depth=1
	movq	-64(%rbp), %rdi
	callq	_Z3bfsx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB22_8:                               #   in Loop: Header=BB22_5 Depth=1
	jmp	.LBB22_9
.LBB22_9:                               #   in Loop: Header=BB22_5 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB22_5
.LBB22_10:
	movq	-56(%rbp), %rsi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEx@PLT
	movq	%rax, %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	main, .Lfunc_end22-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_,comdat
	.weak	_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_ # -- Begin function _ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_,@function
_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_: # @_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	movq	8(%rcx), %rax
	cmpq	16(%rcx), %rax
	je	.LBB23_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB23_3
.LBB23_2:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-24(%rbp), %rsi
	callq	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
.LBB23_3:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_, .Lfunc_end23-_ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEEC2Ev # -- Begin function _ZNSt12_Vector_baseIxSaIxEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEEC2Ev,@function
_ZNSt12_Vector_baseIxSaIxEEC2Ev:        # @_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_ZNSt12_Vector_baseIxSaIxEEC2Ev, .Lfunc_end24-_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSaIxEC2Ev
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev, .Lfunc_end25-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC2Ev,comdat
	.weak	_ZNSaIxEC2Ev                    # -- Begin function _ZNSaIxEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIxEC2Ev,@function
_ZNSaIxEC2Ev:                           # @_ZNSaIxEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNSaIxEC2Ev, .Lfunc_end26-_ZNSaIxEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev, .Lfunc_end27-_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:    # @_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .Lfunc_end28-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED2Ev,comdat
	.weak	_ZNSt5dequeIxSaIxEED2Ev         # -- Begin function _ZNSt5dequeIxSaIxEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEED2Ev,@function
_ZNSt5dequeIxSaIxEED2Ev:                # @_ZNSt5dequeIxSaIxEED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -112(%rbp)                # 8-byte Spill
	leaq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)                # 8-byte Spill
	callq	_ZNSt5dequeIxSaIxEE5beginEv
	movq	-112(%rbp), %rsi                # 8-byte Reload
	leaq	-72(%rbp), %rdi
	movq	%rdi, -96(%rbp)                 # 8-byte Spill
	callq	_ZNSt5dequeIxSaIxEE3endEv
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
.Ltmp14:
	callq	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
.Ltmp15:
	jmp	.LBB29_1
.LBB29_1:
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_ZNSt11_Deque_baseIxSaIxEED2Ev
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB29_2:
	.cfi_def_cfa %rbp, 16
.Ltmp16:
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movl	%eax, -84(%rbp)
	callq	_ZNSt11_Deque_baseIxSaIxEED2Ev
# %bb.3:
	movq	-80(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end29:
	.size	_ZNSt5dequeIxSaIxEED2Ev, .Lfunc_end29-_ZNSt5dequeIxSaIxEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIxSaIxEED2Ev,"aG",@progbits,_ZNSt5dequeIxSaIxEED2Ev,comdat
	.p2align	2
GCC_except_table29:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin2          #     jumps to .Ltmp16
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,comdat
	.weak	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_ # -- Begin function _ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,@function
_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_: # @_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rcx, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, .Lfunc_end30-_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE5beginEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5beginEv,comdat
	.weak	_ZNSt5dequeIxSaIxEE5beginEv     # -- Begin function _ZNSt5dequeIxSaIxEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE5beginEv,@function
_ZNSt5dequeIxSaIxEE5beginEv:            # @_ZNSt5dequeIxSaIxEE5beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$16, %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZNSt5dequeIxSaIxEE5beginEv, .Lfunc_end31-_ZNSt5dequeIxSaIxEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE3endEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE3endEv,comdat
	.weak	_ZNSt5dequeIxSaIxEE3endEv       # -- Begin function _ZNSt5dequeIxSaIxEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE3endEv,@function
_ZNSt5dequeIxSaIxEE3endEv:              # @_ZNSt5dequeIxSaIxEE3endEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$48, %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZNSt5dequeIxSaIxEE3endEv, .Lfunc_end32-_ZNSt5dequeIxSaIxEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,@function
_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv: # @_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .Lfunc_end33-_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEED2Ev,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEED2Ev  # -- Begin function _ZNSt11_Deque_baseIxSaIxEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEED2Ev,@function
_ZNSt11_Deque_baseIxSaIxEED2Ev:         # @_ZNSt11_Deque_baseIxSaIxEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	cmpq	$0, (%rax)
	je	.LBB34_2
# %bb.1:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	40(%rdi), %rsi
	movq	72(%rdi), %rdx
	addq	$8, %rdx
	callq	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdx
	callq	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
.LBB34_2:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZNSt11_Deque_baseIxSaIxEED2Ev, .Lfunc_end34-_ZNSt11_Deque_baseIxSaIxEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end35:
	.size	__clang_call_terminate, .Lfunc_end35-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_ # -- Begin function _ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,@function
_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_:  # @_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, .Lfunc_end36-_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_ # -- Begin function _ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,@function
_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_: # @_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB37_4
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
# %bb.3:                                #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB37_1
.LBB37_4:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, .Lfunc_end37-_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm # -- Begin function _ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,@function
_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm: # @_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
.Ltmp17:
	callq	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
.Ltmp18:
	jmp	.LBB38_1
.LBB38_1:
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIPxED2Ev
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB38_2:
	.cfi_def_cfa %rbp, 16
.Ltmp19:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIPxED2Ev
# %bb.3:
	movq	-40(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end38:
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, .Lfunc_end38-_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"aG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.p2align	2
GCC_except_table38:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp17-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin3          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev # -- Begin function _ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,@function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev: # @_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaIxED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, .Lfunc_end39-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx # -- Begin function _ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,@function
_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx: # @_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
.Ltmp20:
	movl	$8, %edi
	callq	_ZSt16__deque_buf_sizem
.Ltmp21:
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB40_1
.LBB40_1:
.Ltmp22:
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
.Ltmp23:
	jmp	.LBB40_2
.LBB40_2:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB40_3:
	.cfi_def_cfa %rbp, 16
.Ltmp24:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end40:
	.size	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, .Lfunc_end40-_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"aG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.p2align	2
GCC_except_table40:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp20-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp20                #   Call between .Ltmp20 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin4          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm # -- Begin function _ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,@function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm: # @_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .Lfunc_end41-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__deque_buf_sizem,"axG",@progbits,_ZSt16__deque_buf_sizem,comdat
	.weak	_ZSt16__deque_buf_sizem         # -- Begin function _ZSt16__deque_buf_sizem
	.p2align	4, 0x90
	.type	_ZSt16__deque_buf_sizem,@function
_ZSt16__deque_buf_sizem:                # @_ZSt16__deque_buf_sizem
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	cmpq	$512, -8(%rbp)                  # imm = 0x200
	jae	.LBB42_2
# %bb.1:
	movl	$512, %eax                      # imm = 0x200
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-8(%rbp)
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jmp	.LBB42_3
.LBB42_2:
	movl	$1, %eax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jmp	.LBB42_3
.LBB42_3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZSt16__deque_buf_sizem, .Lfunc_end42-_ZSt16__deque_buf_sizem
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm # -- Begin function _ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,@function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm: # @_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .Lfunc_end43-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,comdat
	.weak	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv # -- Begin function _ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,@function
_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv: # @_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSaIPxEC2IxEERKSaIT_E
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, .Lfunc_end44-_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m # -- Begin function _ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,@function
_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m: # @_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, .Lfunc_end45-_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIPxED2Ev,"axG",@progbits,_ZNSaIPxED2Ev,comdat
	.weak	_ZNSaIPxED2Ev                   # -- Begin function _ZNSaIPxED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIPxED2Ev,@function
_ZNSaIPxED2Ev:                          # @_ZNSaIPxED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZNSaIPxED2Ev, .Lfunc_end46-_ZNSaIPxED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,@function
_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv: # @_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .Lfunc_end47-_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIPxEC2IxEERKSaIT_E,"axG",@progbits,_ZNSaIPxEC2IxEERKSaIT_E,comdat
	.weak	_ZNSaIPxEC2IxEERKSaIT_E         # -- Begin function _ZNSaIPxEC2IxEERKSaIT_E
	.p2align	4, 0x90
	.type	_ZNSaIPxEC2IxEERKSaIT_E,@function
_ZNSaIPxEC2IxEERKSaIT_E:                # @_ZNSaIPxEC2IxEERKSaIT_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZNSaIPxEC2IxEERKSaIT_E, .Lfunc_end48-_ZNSaIPxEC2IxEERKSaIT_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIPxEC2Ev:   # @_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, .Lfunc_end49-_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m # -- Begin function _ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,@function
_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m: # @_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, .Lfunc_end50-_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIPxED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIPxED2Ev:   # @_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, .Lfunc_end51-_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED2Ev,comdat
	.weak	_ZNSaIxED2Ev                    # -- Begin function _ZNSaIxED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIxED2Ev,@function
_ZNSaIxED2Ev:                           # @_ZNSaIxED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_ZNSaIxED2Ev, .Lfunc_end52-_ZNSaIxED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIxED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .Lfunc_end53-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E # -- Begin function _ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,@function
_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E:       # @_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPxEvT_S1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, .Lfunc_end54-_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .Lfunc_end55-_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEED2Ev # -- Begin function _ZNSt12_Vector_baseIxSaIxEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEED2Ev,@function
_ZNSt12_Vector_baseIxSaIxEED2Ev:        # @_ZNSt12_Vector_baseIxSaIxEED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	subq	%rsi, %rdx
	sarq	$3, %rdx
.Ltmp25:
	callq	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
.Ltmp26:
	jmp	.LBB56_1
.LBB56_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB56_2:
	.cfi_def_cfa %rbp, 16
.Ltmp27:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
	callq	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end56:
	.size	_ZNSt12_Vector_baseIxSaIxEED2Ev, .Lfunc_end56-_ZNSt12_Vector_baseIxSaIxEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt12_Vector_baseIxSaIxEED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIxSaIxEED2Ev,comdat
	.p2align	2
GCC_except_table56:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp25-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin5          #     jumps to .Ltmp27
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIPxEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPxEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPxEvT_S1_         # -- Begin function _ZSt8_DestroyIPxEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPxEvT_S1_,@function
_ZSt8_DestroyIPxEvT_S1_:                # @_ZSt8_DestroyIPxEvT_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	_ZSt8_DestroyIPxEvT_S1_, .Lfunc_end57-_ZSt8_DestroyIPxEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, .Lfunc_end58-_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm # -- Begin function _ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,@function
_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm: # @_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	cmpq	$0, -16(%rbp)
	je	.LBB59_2
# %bb.1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
.LBB59_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, .Lfunc_end59-_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaIxED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, .Lfunc_end60-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEEC2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEEC2Ev,comdat
	.weak	_ZNSt5dequeIxSaIxEEC2Ev         # -- Begin function _ZNSt5dequeIxSaIxEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEEC2Ev,@function
_ZNSt5dequeIxSaIxEEC2Ev:                # @_ZNSt5dequeIxSaIxEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZNSt5dequeIxSaIxEEC2Ev, .Lfunc_end61-_ZNSt5dequeIxSaIxEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC2Ev,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEEC2Ev  # -- Begin function _ZNSt11_Deque_baseIxSaIxEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEEC2Ev,@function
_ZNSt11_Deque_baseIxSaIxEEC2Ev:         # @_ZNSt11_Deque_baseIxSaIxEEC2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	movq	-32(%rbp), %rdi                 # 8-byte Reload
.Ltmp28:
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
.Ltmp29:
	jmp	.LBB62_1
.LBB62_1:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB62_2:
	.cfi_def_cfa %rbp, 16
.Ltmp30:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
	callq	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end62:
	.size	_ZNSt11_Deque_baseIxSaIxEEC2Ev, .Lfunc_end62-_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIxSaIxEEC2Ev,"aG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC2Ev,comdat
	.p2align	2
GCC_except_table62:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp28-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin6          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Lfunc_end62-.Ltmp29           #   Call between .Ltmp29 and .Lfunc_end62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev # -- Begin function _ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev,@function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev: # @_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSaIxEC2Ev
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, .Lfunc_end63-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm # -- Begin function _ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,@function
_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm: # @_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movl	$8, %edi
	callq	_ZSt16__deque_buf_sizem
	movq	%rax, %rcx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	$8, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%rdi)
	movq	8(%rdi), %rsi
	callq	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, (%rdi)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	andq	$-2, %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
.Ltmp31:
	callq	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
.Ltmp32:
	jmp	.LBB64_1
.LBB64_1:
	jmp	.LBB64_6
.LBB64_2:
.Ltmp33:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -64(%rbp)
	movl	%eax, -68(%rbp)
# %bb.3:
	movq	-64(%rbp), %rdi
	callq	__cxa_begin_catch@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdx
	callq	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
.Ltmp34:
	callq	__cxa_rethrow@PLT
.Ltmp35:
	jmp	.LBB64_9
.LBB64_4:
.Ltmp36:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -64(%rbp)
	movl	%eax, -68(%rbp)
.Ltmp37:
	callq	__cxa_end_catch@PLT
.Ltmp38:
	jmp	.LBB64_5
.LBB64_5:
	jmp	.LBB64_7
.LBB64_6:
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	addq	$16, %rdi
	movq	-48(%rbp), %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	addq	$48, %rdi
	movq	-56(%rbp), %rsi
	addq	$-8, %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, 16(%rax)
	movq	56(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movl	$8, %edi
	callq	_ZSt16__deque_buf_sizem
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %rsi
	movq	-96(%rbp), %rax                 # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rsi
	movq	-80(%rbp), %rax                 # 8-byte Reload
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 48(%rax)
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB64_7:
	.cfi_def_cfa %rbp, 16
	movq	-64(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB64_8:
.Ltmp39:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.LBB64_9:
.Lfunc_end64:
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, .Lfunc_end64-_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.p2align	2
GCC_except_table64:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin7          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp32-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Ltmp34-.Ltmp32                #   Call between .Ltmp32 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin7          # >> Call Site 4 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin7          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin7          # >> Call Site 5 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin7          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp38-.Lfunc_begin7          # >> Call Site 6 <<
	.uleb128 .Lfunc_end64-.Ltmp38           #   Call between .Ltmp38 and .Lfunc_end64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev # -- Begin function _ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,@function
_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev: # @_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	addq	$16, %rdi
	callq	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	addq	$48, %rdi
	callq	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, .Lfunc_end65-_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC2Ev,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2Ev # -- Begin function _ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2Ev,@function
_ZNSt15_Deque_iteratorIxRxPxEC2Ev:      # @_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, .Lfunc_end66-_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_           # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB67_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB67_3
.LBB67_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB67_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end67-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm # -- Begin function _ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,@function
_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm: # @_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
.Ltmp40:
	callq	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
.Ltmp41:
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB68_1
.LBB68_1:
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIPxED2Ev
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB68_2:
	.cfi_def_cfa %rbp, 16
.Ltmp42:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movl	%eax, -36(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIPxED2Ev
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end68:
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, .Lfunc_end68-_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.p2align	2
GCC_except_table68:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp40-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin8          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Lfunc_end68-.Ltmp41           #   Call between .Ltmp41 and .Lfunc_end68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_ # -- Begin function _ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,@function
_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_: # @_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB69_1:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB69_7
# %bb.2:                                #   in Loop: Header=BB69_1 Depth=1
.Ltmp43:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
.Ltmp44:
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB69_3
.LBB69_3:                               #   in Loop: Header=BB69_1 Depth=1
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
# %bb.4:                                #   in Loop: Header=BB69_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB69_1
.LBB69_5:
.Ltmp45:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
# %bb.6:
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
.Ltmp46:
	callq	__cxa_rethrow@PLT
.Ltmp47:
	jmp	.LBB69_13
.LBB69_7:
	jmp	.LBB69_10
.LBB69_8:
.Ltmp48:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)
.Ltmp49:
	callq	__cxa_end_catch@PLT
.Ltmp50:
	jmp	.LBB69_9
.LBB69_9:
	jmp	.LBB69_11
.LBB69_10:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB69_11:
	.cfi_def_cfa %rbp, 16
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB69_12:
.Ltmp51:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.LBB69_13:
.Lfunc_end69:
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, .Lfunc_end69-_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"aG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.p2align	2
GCC_except_table69:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp43-.Lfunc_begin9          # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin9          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp44-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin9          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin9          #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp50-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Lfunc_end69-.Ltmp50           #   Call between .Ltmp50 and .Lfunc_end69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_ # -- Begin function _ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.p2align	4, 0x90
	.type	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,@function
_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_: # @_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, .Lfunc_end70-_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m # -- Begin function _ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,@function
_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m: # @_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, .Lfunc_end71-_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB72_4
# %bb.1:
	movabsq	$2305843009213693951, %rax      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -16(%rbp)
	jbe	.LBB72_3
# %bb.2:
	callq	_ZSt28__throw_bad_array_new_lengthv@PLT
.LBB72_3:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB72_4:
	movq	-16(%rbp), %rdi
	shlq	$3, %rdi
	callq	_Znwm@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end72:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, .Lfunc_end72-_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax      # imm = 0xFFFFFFFFFFFFFFF
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end73:
	.size	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, .Lfunc_end73-_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,comdat
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv # -- Begin function _ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.p2align	4, 0x90
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,@function
_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv: # @_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	$8, %edi
	callq	_ZSt16__deque_buf_sizem
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end74:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, .Lfunc_end74-_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m # -- Begin function _ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,@function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m: # @_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end75:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .Lfunc_end75-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB76_4
# %bb.1:
	movabsq	$2305843009213693951, %rax      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -16(%rbp)
	jbe	.LBB76_3
# %bb.2:
	callq	_ZSt28__throw_bad_array_new_lengthv@PLT
.LBB76_3:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB76_4:
	movq	-16(%rbp), %rdi
	shlq	$3, %rdi
	callq	_Znwm@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end76:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .Lfunc_end76-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax      # imm = 0xFFFFFFFFFFFFFFF
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .Lfunc_end77-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv # -- Begin function _ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.p2align	4, 0x90
	.type	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,@function
_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv: # @_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$8, %edi
	callq	_ZSt16__deque_buf_sizem
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end78:
	.size	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, .Lfunc_end78-_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE9push_backERKx,"axG",@progbits,_ZNSt5dequeIxSaIxEE9push_backERKx,comdat
	.weak	_ZNSt5dequeIxSaIxEE9push_backERKx # -- Begin function _ZNSt5dequeIxSaIxEE9push_backERKx
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE9push_backERKx,@function
_ZNSt5dequeIxSaIxEE9push_backERKx:      # @_ZNSt5dequeIxSaIxEE9push_backERKx
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	movq	48(%rcx), %rax
	movq	64(%rcx), %rcx
	addq	$-8, %rcx
	cmpq	%rcx, %rax
	je	.LBB79_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	movq	48(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	48(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, 48(%rax)
	jmp	.LBB79_3
.LBB79_2:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	callq	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
.LBB79_3:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end79:
	.size	_ZNSt5dequeIxSaIxEE9push_backERKx, .Lfunc_end79-_ZNSt5dequeIxSaIxEE9push_backERKx
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_: # @_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end80:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, .Lfunc_end80-_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,comdat
	.weak	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_ # -- Begin function _ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,@function
_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_: # @_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	callq	_ZNKSt5dequeIxSaIxEE4sizeEv
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	callq	_ZNKSt5dequeIxSaIxEE8max_sizeEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB81_2
# %bb.1:
	leaq	.L.str.4(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB81_2:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	$1, %esi
	callq	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	72(%rax), %rcx
	movq	%rdx, 8(%rcx)
	movq	%rax, %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	addq	$48, %rdi
	movq	72(%rax), %rsi
	addq	$8, %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	56(%rax), %rcx
	movq	%rcx, 48(%rax)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_, .Lfunc_end81-_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end82:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, .Lfunc_end82-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE # -- Begin function _ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,@function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE: # @_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end83:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .Lfunc_end83-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt5dequeIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE4sizeEv,comdat
	.weak	_ZNKSt5dequeIxSaIxEE4sizeEv     # -- Begin function _ZNKSt5dequeIxSaIxEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt5dequeIxSaIxEE4sizeEv,@function
_ZNKSt5dequeIxSaIxEE4sizeEv:            # @_ZNKSt5dequeIxSaIxEE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$48, %rdi
	addq	$16, %rsi
	callq	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end84:
	.size	_ZNKSt5dequeIxSaIxEE4sizeEv, .Lfunc_end84-_ZNKSt5dequeIxSaIxEE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt5dequeIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE8max_sizeEv,comdat
	.weak	_ZNKSt5dequeIxSaIxEE8max_sizeEv # -- Begin function _ZNKSt5dequeIxSaIxEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt5dequeIxSaIxEE8max_sizeEv,@function
_ZNKSt5dequeIxSaIxEE8max_sizeEv:        # @_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	_ZNKSt5dequeIxSaIxEE8max_sizeEv, .Lfunc_end85-_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,comdat
	.weak	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm # -- Begin function _ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,@function
_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm: # @_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	8(%rsi), %rcx
	movq	72(%rsi), %rdx
	movq	(%rsi), %rsi
	subq	%rsi, %rdx
	sarq	$3, %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB86_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
.LBB86_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end86:
	.size	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, .Lfunc_end86-_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStmiRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_ # -- Begin function _ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.p2align	4, 0x90
	.type	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_,@function
_ZStmiRKSt15_Deque_iteratorIxRxPxES4_:  # @_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	movq	-8(%rbp), %rdx
	cmpq	$0, 24(%rdx)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
	subq	%rdx, %rcx
	imulq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	addq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_, .Lfunc_end87-_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_ # -- Begin function _ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,@function
_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_: # @_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	movq	%rax, -24(%rbp)
.Ltmp52:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
.Ltmp53:
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB88_1
.LBB88_1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB88_2:
	.cfi_def_cfa %rbp, 16
.Ltmp54:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end88:
	.size	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, .Lfunc_end88-_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,"aG",@progbits,_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,comdat
	.p2align	2
GCC_except_table88:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp52-.Lfunc_begin10         # >> Call Site 1 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin10         #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_ # -- Begin function _ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,@function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_: # @_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .Lfunc_end89-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_           # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB90_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB90_3
.LBB90_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB90_3:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end90:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end90-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end91:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .Lfunc_end91-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,comdat
	.weak	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb # -- Begin function _ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,@function
_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb: # @_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	72(%rax), %rcx
	movq	40(%rax), %rdx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB92_8
# %bb.1:
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	subq	-40(%rbp), %rcx
	shrq	$1, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	testb	$1, -17(%rbp)
	je	.LBB92_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB92_4
.LBB92_3:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB92_4
.LBB92_4:
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	40(%rcx), %rax
	jae	.LBB92_6
# %bb.5:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	40(%rax), %rdi
	movq	72(%rax), %rsi
	addq	$8, %rsi
	movq	-48(%rbp), %rdx
	callq	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	jmp	.LBB92_7
.LBB92_6:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	40(%rax), %rdi
	movq	72(%rax), %rsi
	addq	$8, %rsi
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rdx
	callq	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
.LBB92_7:
	jmp	.LBB92_12
.LBB92_8:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	8(%rdi), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	addq	$8, %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-104(%rbp), %rax                # 8-byte Reload
	addq	(%rcx), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-40(%rbp), %rcx
	shrq	$1, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	testb	$1, -17(%rbp)
	je	.LBB92_10
# %bb.9:
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB92_11
.LBB92_10:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB92_11
.LBB92_11:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	-112(%rbp), %rdx                # 8-byte Reload
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	40(%rax), %rdi
	movq	72(%rax), %rsi
	addq	$8, %rsi
	movq	-48(%rbp), %rdx
	callq	_ZSt4copyIPPxS1_ET0_T_S3_S2_
                                        # kill: def $rcx killed $rax
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	callq	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB92_12:
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	addq	$16, %rdi
	movq	-48(%rbp), %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	addq	$48, %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rsi
	addq	$-8, %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end92:
	.size	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, .Lfunc_end92-_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4copyIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIPPxS1_ET0_T_S3_S2_    # -- Begin function _ZSt4copyIPPxS1_ET0_T_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt4copyIPPxS1_ET0_T_S3_S2_,@function
_ZSt4copyIPPxS1_ET0_T_S3_S2_:           # @_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__miter_baseIPPxET_S2_
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt12__miter_baseIPPxET_S2_
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end93:
	.size	_ZSt4copyIPPxS1_ET0_T_S3_S2_, .Lfunc_end93-_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_ # -- Begin function _ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,@function
_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_: # @_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__miter_baseIPPxET_S2_
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt12__miter_baseIPPxET_S2_
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end94:
	.size	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, .Lfunc_end94-_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_ # -- Begin function _ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,@function
_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_: # @_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPPxET_S2_
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	movq	%rax, %rsi
	leaq	-24(%rbp), %rdi
	callq	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end95:
	.size	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, .Lfunc_end95-_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__miter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__miter_baseIPPxET_S2_    # -- Begin function _ZSt12__miter_baseIPPxET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__miter_baseIPPxET_S2_,@function
_ZSt12__miter_baseIPPxET_S2_:           # @_ZSt12__miter_baseIPPxET_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end96:
	.size	_ZSt12__miter_baseIPPxET_S2_, .Lfunc_end96-_ZSt12__miter_baseIPPxET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_wrapIPPxET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPxET_RKS2_S2_,comdat
	.weak	_ZSt12__niter_wrapIPPxET_RKS2_S2_ # -- Begin function _ZSt12__niter_wrapIPPxET_RKS2_S2_
	.p2align	4, 0x90
	.type	_ZSt12__niter_wrapIPPxET_RKS2_S2_,@function
_ZSt12__niter_wrapIPPxET_RKS2_S2_:      # @_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end97:
	.size	_ZSt12__niter_wrapIPPxET_RKS2_S2_, .Lfunc_end97-_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_ # -- Begin function _ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end98:
	.size	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_, .Lfunc_end98-_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__niter_baseIPPxET_S2_    # -- Begin function _ZSt12__niter_baseIPPxET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPPxET_S2_,@function
_ZSt12__niter_baseIPPxET_S2_:           # @_ZSt12__niter_baseIPPxET_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end99:
	.size	_ZSt12__niter_baseIPPxET_S2_, .Lfunc_end99-_ZSt12__niter_baseIPPxET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_ # -- Begin function _ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end100:
	.size	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, .Lfunc_end100-_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_ # -- Begin function _ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.p2align	4, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB101_2
# %bb.1:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	callq	memmove@PLT
.LBB101_2:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end101:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, .Lfunc_end101-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_ # -- Begin function _ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,@function
_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_: # @_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPPxET_S2_
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	movq	%rax, %rsi
	leaq	-24(%rbp), %rdi
	callq	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end102:
	.size	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, .Lfunc_end102-_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_ # -- Begin function _ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,@function
_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_: # @_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end103:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_, .Lfunc_end103-_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_ # -- Begin function _ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,@function
_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_: # @_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end104:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, .Lfunc_end104-_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_ # -- Begin function _ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.p2align	4, 0x90
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,@function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_: # @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB105_2
# %bb.1:
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-32(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	callq	memmove@PLT
.LBB105_2:
	movq	-24(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end105:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, .Lfunc_end105-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt5dequeIxSaIxEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE5emptyEv,comdat
	.weak	_ZNKSt5dequeIxSaIxEE5emptyEv    # -- Begin function _ZNKSt5dequeIxSaIxEE5emptyEv
	.p2align	4, 0x90
	.type	_ZNKSt5dequeIxSaIxEE5emptyEv,@function
_ZNKSt5dequeIxSaIxEE5emptyEv:           # @_ZNKSt5dequeIxSaIxEE5emptyEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$48, %rdi
	addq	$16, %rsi
	callq	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end106:
	.size	_ZNKSt5dequeIxSaIxEE5emptyEv, .Lfunc_end106-_ZNKSt5dequeIxSaIxEE5emptyEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSteqRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_ # -- Begin function _ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.p2align	4, 0x90
	.type	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_,@function
_ZSteqRKSt15_Deque_iteratorIxRxPxES4_:  # @_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end107:
	.size	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, .Lfunc_end107-_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE5frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5frontEv,comdat
	.weak	_ZNSt5dequeIxSaIxEE5frontEv     # -- Begin function _ZNSt5dequeIxSaIxEE5frontEv
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE5frontEv,@function
_ZNSt5dequeIxSaIxEE5frontEv:            # @_ZNSt5dequeIxSaIxEE5frontEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	callq	_ZNSt5dequeIxSaIxEE5beginEv
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end108:
	.size	_ZNSt5dequeIxSaIxEE5frontEv, .Lfunc_end108-_ZNSt5dequeIxSaIxEE5frontEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEdeEv,comdat
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEdeEv # -- Begin function _ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.p2align	4, 0x90
	.type	_ZNKSt15_Deque_iteratorIxRxPxEdeEv,@function
_ZNKSt15_Deque_iteratorIxRxPxEdeEv:     # @_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end109:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, .Lfunc_end109-_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE9pop_frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE9pop_frontEv,comdat
	.weak	_ZNSt5dequeIxSaIxEE9pop_frontEv # -- Begin function _ZNSt5dequeIxSaIxEE9pop_frontEv
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE9pop_frontEv,@function
_ZNSt5dequeIxSaIxEE9pop_frontEv:        # @_ZNSt5dequeIxSaIxEE9pop_frontEv
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	movq	16(%rcx), %rax
	movq	32(%rcx), %rcx
	addq	$-8, %rcx
	cmpq	%rcx, %rax
	je	.LBB110_2
# %bb.1:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rsi
	callq	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB110_4
.LBB110_2:
.Ltmp55:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
.Ltmp56:
	jmp	.LBB110_3
.LBB110_3:
	jmp	.LBB110_4
.LBB110_4:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB110_5:
	.cfi_def_cfa %rbp, 16
.Ltmp57:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end110:
	.size	_ZNSt5dequeIxSaIxEE9pop_frontEv, .Lfunc_end110-_ZNSt5dequeIxSaIxEE9pop_frontEv
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5dequeIxSaIxEE9pop_frontEv,"aG",@progbits,_ZNSt5dequeIxSaIxEE9pop_frontEv,comdat
	.p2align	2
GCC_except_table110:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp55-.Lfunc_begin11         # >> Call Site 1 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin11         #     jumps to .Ltmp57
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_ # -- Begin function _ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,@function
_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_: # @_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end111:
	.size	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, .Lfunc_end111-_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,comdat
	.weak	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv # -- Begin function _ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.p2align	4, 0x90
	.type	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,@function
_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv: # @_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rsi
	callq	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	movq	24(%rax), %rsi
	callq	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	addq	$16, %rdi
	movq	40(%rax), %rsi
	addq	$8, %rsi
	callq	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end112:
	.size	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, .Lfunc_end112-_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,@function
_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_: # @_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end113:
	.size	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, .Lfunc_end113-_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_,@function
_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_: # @_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end114:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_, .Lfunc_end114-_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end115:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv, .Lfunc_end115-_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_: # @_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end116:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_, .Lfunc_end116-_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE # -- Begin function _ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE,@function
_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE: # @_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end117:
	.size	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE, .Lfunc_end117-_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,comdat
	.weak	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_ # -- Begin function _ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,@function
_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_: # @_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	movl	$1, %esi
	leaq	.L.str.5(%rip), %rdx
	callq	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, -48(%rbp)
	callq	_ZNSt6vectorIxSaIxEE5beginEv
	movq	%rax, -64(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rsi
	callq	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	movq	%rax, %rcx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	callq	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	-128(%rbp), %rsi                # 8-byte Reload
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	leaq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	movq	%rax, %rcx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -80(%rbp)
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	callq	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-80(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end118:
	.size	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_, .Lfunc_end118-_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end119:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_, .Lfunc_end119-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc # -- Begin function _ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc: # @_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB120_2
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB120_2:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	addq	(%rcx), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB120_4
# %bb.3:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	callq	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	movq	%rax, %rcx
	movq	-80(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB120_5
.LBB120_4:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB120_6
.LBB120_5:
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB120_6:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end120:
	.size	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc, .Lfunc_end120-_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ # -- Begin function _ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,@function
_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_: # @_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end121:
	.size	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .Lfunc_end121-_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,@function
_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm: # @_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	cmpq	$0, -16(%rbp)
	je	.LBB122_2
# %bb.1:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	callq	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB122_3
.LBB122_2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB122_3
.LBB122_3:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end122:
	.size	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, .Lfunc_end122-_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_ # -- Begin function _ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,@function
_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_: # @_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end123:
	.size	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_, .Lfunc_end123-_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIxSaIxEE8max_sizeEv # -- Begin function _ZNKSt6vectorIxSaIxEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIxSaIxEE8max_sizeEv,@function
_ZNKSt6vectorIxSaIxEE8max_sizeEv:       # @_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end124:
	.size	_ZNKSt6vectorIxSaIxEE8max_sizeEv, .Lfunc_end124-_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE4sizeEv,comdat
	.weak	_ZNKSt6vectorIxSaIxEE4sizeEv    # -- Begin function _ZNKSt6vectorIxSaIxEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIxSaIxEE4sizeEv,@function
_ZNKSt6vectorIxSaIxEE4sizeEv:           # @_ZNKSt6vectorIxSaIxEE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end125:
	.size	_ZNKSt6vectorIxSaIxEE4sizeEv, .Lfunc_end125-_ZNKSt6vectorIxSaIxEE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_ # -- Begin function _ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,@function
_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_: # @_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax      # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end126:
	.size	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_, .Lfunc_end126-_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end127:
	.size	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .Lfunc_end127-_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE,@function
_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE: # @_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end128:
	.size	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE, .Lfunc_end128-_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_ # -- Begin function _ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.p2align	4, 0x90
	.type	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,@function
_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_: # @_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPxET_S1_
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_ZSt12__niter_baseIPxET_S1_
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	_ZSt12__niter_baseIPxET_S1_
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	callq	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end129:
	.size	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_, .Lfunc_end129-_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E # -- Begin function _ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,@function
_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E: # @_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.LBB130_2
# %bb.1:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	shlq	$3, %rdx
	callq	memmove@PLT
.LBB130_2:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end130:
	.size	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, .Lfunc_end130-_ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPxET_S1_,"axG",@progbits,_ZSt12__niter_baseIPxET_S1_,comdat
	.weak	_ZSt12__niter_baseIPxET_S1_     # -- Begin function _ZSt12__niter_baseIPxET_S1_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPxET_S1_,@function
_ZSt12__niter_baseIPxET_S1_:            # @_ZSt12__niter_baseIPxET_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end131:
	.size	_ZSt12__niter_baseIPxET_S1_, .Lfunc_end131-_ZSt12__niter_baseIPxET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_conncount.cpp
	.type	_GLOBAL__sub_I_conncount.cpp,@function
_GLOBAL__sub_I_conncount.cpp:           # @_GLOBAL__sub_I_conncount.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	callq	__cxx_global_var_init.2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end132:
	.size	_GLOBAL__sub_I_conncount.cpp, .Lfunc_end132-_GLOBAL__sub_I_conncount.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"true"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"false"
	.size	.L.str.1, 6

	.type	adj,@object                     # @adj
	.bss
	.globl	adj
	.p2align	4
adj:
	.zero	2400240
	.size	adj, 2400240

	.type	visited,@object                 # @visited
	.globl	visited
	.p2align	4
visited:
	.zero	100010
	.size	visited, 100010

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"cannot create std::deque larger than max_size()"
	.size	.L.str.4, 48

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.5, 26

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_conncount.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZNSolsEx
	.addrsig_sym _ZNSolsEd
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	.addrsig_sym _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym __cxx_global_var_init.2
	.addrsig_sym __cxx_global_array_dtor
	.addrsig_sym _Z3bfsx
	.addrsig_sym _ZNSt5queueIxSt5dequeIxSaIxEEE4pushERKx
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZNKSt5queueIxSt5dequeIxSaIxEEE5emptyEv
	.addrsig_sym _ZNSt5queueIxSt5dequeIxSaIxEEE5frontEv
	.addrsig_sym _ZNSt5queueIxSt5dequeIxSaIxEEE3popEv
	.addrsig_sym _ZNSt6vectorIxSaIxEE5beginEv
	.addrsig_sym _ZNSt6vectorIxSaIxEE3endEv
	.addrsig_sym _ZN9__gnu_cxxneIPxSt6vectorIxSaIxEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	.addrsig_sym _ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEppEv
	.addrsig_sym _ZNSt8ios_base15sync_with_stdioEb
	.addrsig_sym _ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	.addrsig_sym _ZNSirsERx
	.addrsig_sym _ZNSt6vectorIxSaIxEE12emplace_backIJRxEEEvDpOT_
	.addrsig_sym _ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.addrsig_sym _ZNSt5dequeIxSaIxEE5beginEv
	.addrsig_sym _ZNSt5dequeIxSaIxEE3endEv
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.addrsig_sym _ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.addrsig_sym _ZSt16__deque_buf_sizem
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.addrsig_sym _ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.addrsig_sym _ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.addrsig_sym _ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZSt8_DestroyIPxEvT_S1_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.addrsig_sym _ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.addrsig_sym __cxa_rethrow
	.addrsig_sym __cxa_end_catch
	.addrsig_sym _ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.addrsig_sym _ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.addrsig_sym _ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.addrsig_sym _ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.addrsig_sym _ZNSt5dequeIxSaIxEE9push_backERKx
	.addrsig_sym _ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.addrsig_sym _ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.addrsig_sym _ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.addrsig_sym _ZNKSt5dequeIxSaIxEE4sizeEv
	.addrsig_sym _ZNKSt5dequeIxSaIxEE8max_sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.addrsig_sym _ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.addrsig_sym _ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.addrsig_sym _ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.addrsig_sym _ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.addrsig_sym _ZSt4copyIPPxS1_ET0_T_S3_S2_
	.addrsig_sym _ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.addrsig_sym _ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.addrsig_sym _ZSt12__miter_baseIPPxET_S2_
	.addrsig_sym _ZSt12__niter_wrapIPPxET_RKS2_S2_
	.addrsig_sym _ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.addrsig_sym _ZSt12__niter_baseIPPxET_S2_
	.addrsig_sym _ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.addrsig_sym _ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.addrsig_sym _ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.addrsig_sym _ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.addrsig_sym _ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.addrsig_sym _ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.addrsig_sym _ZNKSt5dequeIxSaIxEE5emptyEv
	.addrsig_sym _ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.addrsig_sym _ZNSt5dequeIxSaIxEE5frontEv
	.addrsig_sym _ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.addrsig_sym _ZNSt5dequeIxSaIxEE9pop_frontEv
	.addrsig_sym _ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.addrsig_sym _ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.addrsig_sym _ZNSt16allocator_traitsISaIxEE9constructIxJRxEEEvRS0_PT_DpOT0_
	.addrsig_sym _ZSt7forwardIRxEOT_RNSt16remove_referenceIS1_E4typeE
	.addrsig_sym _ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIxE9constructIxJRxEEEvPT_DpOT0_
	.addrsig_sym _ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.addrsig_sym _ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.addrsig_sym _ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.addrsig_sym _ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.addrsig_sym _ZNKSt6vectorIxSaIxEE8max_sizeEv
	.addrsig_sym _ZNKSt6vectorIxSaIxEE4sizeEv
	.addrsig_sym _ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.addrsig_sym _ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.addrsig_sym _ZSt14__relocate_a_1IxxENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.addrsig_sym _ZSt12__niter_baseIPxET_S1_
	.addrsig_sym _GLOBAL__sub_I_conncount.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cerr
	.addrsig_sym adj
	.addrsig_sym visited
	.addrsig_sym _ZSt3cin
	.addrsig_sym _ZSt4cout
