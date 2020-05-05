.data
valorA = 0
valorB = 5
valorC = 7
valorD = 9
valorE = 2
.code
;;;A=B+C
funcao proc
	mov rax, valorA
	mov rbx, valorB
	mov rcx, valorC
	mov rdx, valorD

	;A = A+B
	add rax, rbx
	;A = A+C
	add rax, rcx

	ret
funcao endp
;;;A=B-C+D
funcao2 proc
	mov rax, valorA
	mov rbx, valorB
	mov rcx, valorC
	mov rdx, valorD

	;A = A + B
	add rax, rbx
	;A = A-C
	sub rax, rcx
	;A = A +D
	add rax, rdx

	ret
funcao2 endp
;;;A = B + C - D + 10
funcao3 proc
	mov rax, valorA
	mov rbx, valorB
	mov rcx, valorC
	mov rdx, valorD
	; A= A+B
	add rax, rbx
	;A = A+C
	add rax, rcx
	;A = A - D
	sub rax, rdx
	;A = A +10
	add rax, 10

	ret
funcao3 endp
;;;o A = B + C + (D - E) 
funcao4 proc
	mov rax, valorA
	mov rbx, valorB
	mov rcx, valorC
	mov rdx, valorD
	mov rsi, valorE

	; B+C
	add rax, rbx
	add rax, rcx

    ;D-E
	sub rdx, rsi

	;SOMA DOS RESULTADOS
	add rax, rdx

	ret
funcao4 endp

;;loop até zero
funcao5 proc
;  = 5;
mov	 rax, 5
volta_loop:
; while (i > 0) 
 cmp	 rax, 0
 jle	 SHORT fim

; i--;
  dec	 rax
  jmp	 SHORT volta_loop

fim:
        ret
funcao5 endp

;;condicional
funcao6 proc
;A = 5;
mov	 rbx, 5
;B = 7;
mov	 rcx, 7
; M = 0;
mov	 rax, 0

;if (A > B)
cmp	 rbx, rcx
jle	 SHORT e_menor

; M = A;
mov	 rax, rbx
jmp	 SHORT fim
e_menor:
; else
; M = B;
mov	 rax, rcx
fim:
ret	
funcao6 endp


;;multiplicação
funcao7 proc
;A = 0;
mov	 rax, 0
;B = 7;
mov	 rbx, 7
;C = 5;
mov	 rcx, 5

; coloca o B no A
mov	 rax, rbx
; A = B * C;
imul rax, rcx
ret
funcao7 endp

end
