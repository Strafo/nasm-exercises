;-----------------------------------------------------------------------------------------
;     nasm -felf64 hola.asm && gcc hola.o && ./a.out
; ----------------------------------------------------------------------------------------
	global main
	extern puts
	section .text 
main:   push rbp
	mov rbp,rsp
	mov rdi, message
	call puts
	xor rax,rax
	leave
	ret
	section .rodata
message:db "Hello World!",0	
