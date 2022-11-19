	.file	"MergeSort.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 8
.LC0:
	.string	"int* SorTestHelper::generateRandomArray(int, int, int)"
.LC1:
	.string	"SortTestHelper.h"
.LC2:
	.string	"rangeL <= rangeR"
	.text
	.globl	_ZN13SorTestHelper19generateRandomArrayEiii
	.type	_ZN13SorTestHelper19generateRandomArrayEiii, @function
_ZN13SorTestHelper19generateRandomArrayEiii:
.LFB1988:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L2
	leaq	.LC0(%rip), %rcx
	movl	$15, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L2:
	movl	-20(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L3
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -12(%rbp)
	jmp	.L6
.L3:
	call	__cxa_throw_bad_array_new_length@PLT
.L6:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L5
	call	rand@PLT
	movl	-28(%rbp), %edx
	subl	-24(%rbp), %edx
	leal	1(%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1988:
	.size	_ZN13SorTestHelper19generateRandomArrayEiii, .-_ZN13SorTestHelper19generateRandomArrayEiii
	.globl	_ZN13SorTestHelper24generateNearlyOrderArrayEii
	.type	_ZN13SorTestHelper24generateNearlyOrderArrayEii, @function
_ZN13SorTestHelper24generateNearlyOrderArrayEii:
.LFB1989:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L9
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L12
.L9:
	call	__cxa_throw_bad_array_new_length@PLT
.L12:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L11
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	jmp	.L12
.L11:
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -20(%rbp)
.L14:
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.L13
	call	rand@PLT
	cltd
	idivl	-36(%rbp)
	movl	%edx, -16(%rbp)
	call	rand@PLT
	cltd
	idivl	-36(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	addl	$1, -20(%rbp)
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1989:
	.size	_ZN13SorTestHelper24generateNearlyOrderArrayEii, .-_ZN13SorTestHelper24generateNearlyOrderArrayEii
	.globl	_ZN13SorTestHelper12copyIntArrayEPii
	.type	_ZN13SorTestHelper12copyIntArrayEPii, @function
_ZN13SorTestHelper12copyIntArrayEPii:
.LFB1993:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L17
	salq	$2, %rax
	jmp	.L20
.L17:
	call	__cxa_throw_bad_array_new_length@PLT
.L20:
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1993:
	.size	_ZN13SorTestHelper12copyIntArrayEPii, .-_ZN13SorTestHelper12copyIntArrayEPii
	.section	.rodata
.LC3:
	.string	"mergeSortBU"
.LC4:
	.string	"MergeSort"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2000:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2000
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$100000, -84(%rbp)
	movl	-84(%rbp), %edx
	movl	-84(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
.LEHB0:
	call	_ZN13SorTestHelper19generateRandomArrayEiii
	movq	%rax, -80(%rbp)
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN13SorTestHelper12copyIntArrayEPii
.LEHE0:
	movq	%rax, -72(%rbp)
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-85(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE1:
	movl	-84(%rbp), %ecx
	movq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	_Z11mergeSortBUIiEvPT_i(%rip), %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i
.LEHE2:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-85(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE3:
	movl	-84(%rbp), %ecx
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	_Z9mergeSortIiEvPT_i(%rip), %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i
.LEHE4:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	cmpq	$0, -80(%rbp)
	je	.L22
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L22:
	cmpq	$0, -72(%rbp)
	je	.L23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L23:
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L29
	jmp	.L34
.L31:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L26
.L30:
	endbr64
	movq	%rax, %rbx
.L26:
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L33:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L28
.L32:
	endbr64
	movq	%rax, %rbx
.L28:
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L34:
	call	__stack_chk_fail@PLT
.L29:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2000:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2000:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2000-.LLSDACSB2000
.LLSDACSB2000:
	.uleb128 .LEHB0-.LFB2000
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2000
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L30-.LFB2000
	.uleb128 0
	.uleb128 .LEHB2-.LFB2000
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L31-.LFB2000
	.uleb128 0
	.uleb128 .LEHB3-.LFB2000
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L32-.LFB2000
	.uleb128 0
	.uleb128 .LEHB4-.LFB2000
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L33-.LFB2000
	.uleb128 0
	.uleb128 .LEHB5-.LFB2000
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2000:
	.text
	.size	main, .-main
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2238:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2238:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2237:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4copyIPiS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt4copyIPiS0_ET0_T_S2_S1_,comdat
	.weak	_ZSt4copyIPiS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPiS0_ET0_T_S2_S1_, @function
_ZSt4copyIPiS0_ET0_T_S2_S1_:
.LFB2239:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPiET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPiET_S1_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2239:
	.size	_ZSt4copyIPiS0_ET0_T_S2_S1_, .-_ZSt4copyIPiS0_ET0_T_S2_S1_
	.section	.text._Z11mergeSortBUIiEvPT_i,"axG",@progbits,_Z11mergeSortBUIiEvPT_i,comdat
	.weak	_Z11mergeSortBUIiEvPT_i
	.type	_Z11mergeSortBUIiEvPT_i, @function
_Z11mergeSortBUIiEvPT_i:
.LFB2243:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -16(%rbp)
.L45:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.L47
	movl	$0, -12(%rbp)
.L44:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -44(%rbp)
	jle	.L43
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minIiERKT_S2_S2_
	movl	(%rax), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %eax
	addl	%ecx, %eax
	leal	-1(%rax), %edi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	_Z7__mergeIiEvPT_iii
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	addl	%eax, -12(%rbp)
	jmp	.L44
.L43:
	sall	-16(%rbp)
	jmp	.L45
.L47:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2243:
	.size	_Z11mergeSortBUIiEvPT_i, .-_Z11mergeSortBUIiEvPT_i
	.section	.rodata
	.align 8
.LC5:
	.string	"void SorTestHelper::testSort(std::string, void (*)(T*, int), T*, int) [with T = int; std::string = std::__cxx11::basic_string<char>]"
.LC6:
	.string	"isSorted(arr,n)"
.LC7:
	.string	" : "
.LC9:
	.string	"s"
	.section	.text._ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i,"axG",@progbits,_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i,comdat
	.weak	_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i
	.type	_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i, @function
_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i:
.LFB2244:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	call	clock@PLT
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN13SorTestHelper8isSortedIiEEbPT_i
	testb	%al, %al
	jne	.L49
	leaq	.LC5(%rip), %rcx
	movl	$70, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	__assert_fail@PLT
.L49:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i, .-_ZN13SorTestHelper8testSortIiEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvPT_iES8_i
	.section	.text._Z9mergeSortIiEvPT_i,"axG",@progbits,_Z9mergeSortIiEvPT_i,comdat
	.weak	_Z9mergeSortIiEvPT_i
	.type	_Z9mergeSortIiEvPT_i, @function
_Z9mergeSortIiEvPT_i:
.LFB2245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z11__mergeSortIiEvPT_ii
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2245:
	.size	_Z9mergeSortIiEvPT_i, .-_Z9mergeSortIiEvPT_i
	.section	.text._ZSt12__miter_baseIPiET_S1_,"axG",@progbits,_ZSt12__miter_baseIPiET_S1_,comdat
	.weak	_ZSt12__miter_baseIPiET_S1_
	.type	_ZSt12__miter_baseIPiET_S1_, @function
_ZSt12__miter_baseIPiET_S1_:
.LFB2354:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2354:
	.size	_ZSt12__miter_baseIPiET_S1_, .-_ZSt12__miter_baseIPiET_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_:
.LFB2355:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPiET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2355:
	.size	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, @function
_ZSt3minIiERKT_S2_S2_:
.LFB2356:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L57
	movq	-16(%rbp), %rax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
.L58:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2356:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.section	.text._Z7__mergeIiEvPT_iii,"axG",@progbits,_Z7__mergeIiEvPT_iii,comdat
	.weak	_Z7__mergeIiEvPT_iii
	.type	_Z7__mergeIiEvPT_iii, @function
_Z7__mergeIiEvPT_iii:
.LFB2357:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rsi
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %r8
	movl	$0, %r9d
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
.L60:
	cmpq	%rdx, %rsp
	je	.L61
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L60
.L61:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L62
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L62:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -32(%rbp)
.L64:
	movl	-32(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.L63
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -32(%rbp)
	jmp	.L64
.L63:
	movl	-60(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -28(%rbp)
.L70:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.L65
	movl	-36(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.L66
	movl	-40(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	addl	$1, -40(%rbp)
	jmp	.L67
.L66:
	movl	-40(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.L68
	movl	-36(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	addl	$1, -36(%rbp)
	jmp	.L67
.L68:
	movl	-36(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movl	-40(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, %ecx
	jge	.L69
	movl	-36(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	addl	$1, -36(%rbp)
	jmp	.L67
.L69:
	movl	-40(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	addl	$1, -40(%rbp)
.L67:
	addl	$1, -28(%rbp)
	jmp	.L70
.L65:
	movq	%rsi, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L71
	call	__stack_chk_fail@PLT
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2357:
	.size	_Z7__mergeIiEvPT_iii, .-_Z7__mergeIiEvPT_iii
	.section	.text._ZN13SorTestHelper8isSortedIiEEbPT_i,"axG",@progbits,_ZN13SorTestHelper8isSortedIiEEbPT_i,comdat
	.weak	_ZN13SorTestHelper8isSortedIiEEbPT_i
	.type	_ZN13SorTestHelper8isSortedIiEEbPT_i, @function
_ZN13SorTestHelper8isSortedIiEEbPT_i:
.LFB2358:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
.L76:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L73
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	addl	$1, -4(%rbp)
	jmp	.L76
.L73:
	movl	$1, %eax
.L75:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2358:
	.size	_ZN13SorTestHelper8isSortedIiEEbPT_i, .-_ZN13SorTestHelper8isSortedIiEEbPT_i
	.section	.text._Z11__mergeSortIiEvPT_ii,"axG",@progbits,_Z11__mergeSortIiEvPT_ii,comdat
	.weak	_Z11__mergeSortIiEvPT_ii
	.type	_Z11__mergeSortIiEvPT_ii, @function
_Z11__mergeSortIiEvPT_ii:
.LFB2364:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	cmpl	$15, %eax
	jg	.L78
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z13insertionSortIiEvPT_ii
	jmp	.L77
.L78:
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z11__mergeSortIiEvPT_ii
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z11__mergeSortIiEvPT_ii
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L77
	movl	-32(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z7__mergeIiEvPT_iii
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2364:
	.size	_Z11__mergeSortIiEvPT_ii, .-_Z11__mergeSortIiEvPT_ii
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB2399:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2399:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_:
.LFB2400:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2400:
	.size	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_wrapIPiET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPiET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPiET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPiET_RKS1_S1_, @function
_ZSt12__niter_wrapIPiET_RKS1_S1_:
.LFB2401:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2401:
	.size	_ZSt12__niter_wrapIPiET_RKS1_S1_, .-_ZSt12__niter_wrapIPiET_RKS1_S1_
	.section	.text._Z13insertionSortIiEvPT_ii,"axG",@progbits,_Z13insertionSortIiEvPT_ii,comdat
	.weak	_Z13insertionSortIiEvPT_ii
	.type	_Z13insertionSortIiEvPT_ii, @function
_Z13insertionSortIiEvPT_ii:
.LFB2405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L90:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.L91
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.L89:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L88
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L88
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	subl	$1, -8(%rbp)
	jmp	.L89
.L88:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -12(%rbp)
	jmp	.L90
.L91:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2405:
	.size	_Z13insertionSortIiEvPT_ii, .-_Z13insertionSortIiEvPT_ii
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_:
.LFB2440:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L93
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L93:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2440:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2511:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L97
	cmpl	$65535, -8(%rbp)
	jne	.L97
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L97:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2511:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN13SorTestHelper19generateRandomArrayEiii, @function
_GLOBAL__sub_I__ZN13SorTestHelper19generateRandomArrayEiii:
.LFB2512:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2512:
	.size	_GLOBAL__sub_I__ZN13SorTestHelper19generateRandomArrayEiii, .-_GLOBAL__sub_I__ZN13SorTestHelper19generateRandomArrayEiii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN13SorTestHelper19generateRandomArrayEiii
	.section	.rodata
	.align 8
.LC8:
	.long	0
	.long	1093567616
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
