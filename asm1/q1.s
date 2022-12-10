	.file	".\\q1.c"
	.intel_syntax noprefix
	.text
	.globl	_a
	.bss
	.align 4
_a:
	.space 4
	.text
	.globl	_func
	.def	_func;	.scl	2;	.type	32;	.endef
_func:
	push	ebp
	mov	ebp, esp
	sub	esp, 104
	mov	DWORD PTR [esp], 4
	call	_malloc
	mov	DWORD PTR [ebp-12], eax
	nop
	leave
	ret
	.globl	_func2
	.def	_func2;	.scl	2;	.type	32;	.endef
_func2:
	push	ebp
	mov	ebp, esp
	sub	esp, 40
	mov	DWORD PTR [esp], 4
	call	_malloc
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_strcpy
	mov	eax, DWORD PTR [ebp-12]
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp+22], 1818584424
	mov	WORD PTR [esp+26], 111
	lea	eax, [esp+22]
	mov	DWORD PTR [esp], eax
	call	_func2
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	call	_puts
	nop
	leave
	ret
	.ident	"GCC: (GNU) 11.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
