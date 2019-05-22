; ----------------------------------------------------------------------------------------
; This is a program that writes a little triangle of asterisks to standard
; output. 
;
;     nasm -felf64 triangle.asm && gcc triangle.o && ./a.out
; ----------------------------------------------------------------------------------------

	global main
	extern puts
	
	section .text
main:
	mov rdx,output	;pointer to outputbuffer
	mov r8,1		;line number
	mov r9,0		;printed stars line counter
line:
	mov BYTE [rdx],'*'
	inc rdx
	inc r9
	cmp r8,r9
	jne line
	mov BYTE[rdx],10
	inc rdx
	inc r8
	xor r9,r9
	cmp r8,linenum
	jng line
	mov BYTE[rdx],0
	mov rdi,output
	call puts
	mov rax,60
	xor rdi,rdi
	syscall
	
	section .bss
linenum equ 10
buffsize	equ 1000
output: resb buffsize

