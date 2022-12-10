	.file	".\\q2.c"
	.intel_syntax noprefix
	.text
	.globl	_bof
	.def	_bof;	.scl	2;	.type	32;	.endef
_bof:
	push	ebp ;save the caller addr
	mov	ebp, esp
	sub	esp, 56
	mov	edx, DWORD PTR [ebp+12] ;i
	mov	eax, DWORD PTR [ebp+16] ;j
	add	edx, eax
	mov	eax, DWORD PTR [ebp+20] ;k
	add	eax, edx ;eax is i+j+k
	mov	DWORD PTR [ebp-12], eax ;store temp
	mov	eax, DWORD PTR [ebp+8] ;
	mov	DWORD PTR [esp+4], eax 
	lea	eax, [ebp-28]
	mov	DWORD PTR [esp], eax
	call	_strcpy
	mov	eax, DWORD PTR [ebp-12]
	leave
	ret
	.ident	"GCC: (GNU) 11.3.0"
	.def	_strcpy;	.scl	2;	.type	32;	.endef
