;------------------------------------------------
; nasm -felf64 echo.asm && gcc echo.o && ./a.out
;------------------------------------------------


	global	main
	extern	printf,scanf,puts
	
	section	.text
main:	
	push 	rbp
	mov 	rbp,rsp		;enter procedure
	sub 	rsp,0d100	;reserving space for vars
	mov 	rdi,format	
	lea	rsi,[rsp]
	xor 	rax,rax
	call	scanf		
	mov	rdi,format	;load pointer to format string
	lea	rsi,[rsp]	;todo
	xor 	rax,rax
	call	printf
	xor 	rax,rax		
	leave 
	ret
	section	.rodata
format:	db	"%s"
