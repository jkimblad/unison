	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	arm1156t2f-s
	.eabi_attribute	6, 8	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv2
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"gcc.expmed.ceil_log2.ll"
	.globl	ceil_log2
	.align	1
	.type	ceil_log2,%function
	.code	16                      @ @ceil_log2
	.thumb_func
ceil_log2:
	.fnstart
@ BB#0:
	.save	{r7, lr}
	push	{r7, lr}
	.setfp	r7, sp
	mov	r7, sp
	subs	r0, #1
	bl	floor_log2_wide
	adds	r0, #1
	pop	{r7, pc}
.Lfunc_end0:
	.size	ceil_log2, .Lfunc_end0-ceil_log2
	.cantunwind
	.fnend


	.ident	"clang version 3.8.0 (http://llvm.org/git/clang.git 2d49f0a0ae8366964a93e3b7b26e29679bee7160) (http://llvm.org/git/llvm.git 60bc66b44837125843b58ed3e0fd2e6bb948d839)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
