# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 19:32:26 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 09:19:44 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define STDOUT 1
%define WRITE 0x2000004
;
;section .text
;	global _ft_puts
;
;_ft_puts:
;	cmp rdi, 0
;	je end
;	mov rsi, rdi
;	mov rdi, STDOUT
;	mov rdx, 0
;	jmp end_loop
;
;start_loop:
;	inc rdx
;
;end_loop:
;	cmp [rsi + rdx], byte 0
;	jne start_loop
;	mov rax, WRITE
;	syscall
;	mov rsi, 10
;	mov rdx, 1
;	syscall
;	ret
;
;end:
;	ret
section .data
nullstr		db	"(null)", 0
endlstr		db	10

section .text
global _ft_puts

_ft_puts:
	mov			rsi, rdi
	cmp			rsi, 0
	jnz			continue
	lea			rsi, [rel nullstr]
	continue:
	mov			rdi, STDOUT
	mov			rdx, 0
	jmp			end_loop
	begin_loop:
	inc			rdx
	end_loop:
	cmp			[rsi + rdx], byte 0
	jne			begin_loop
	mov			rax, WRITE
	syscall
	jc          error
	mov			r11, rax
	lea			rsi, [rel endlstr]
	mov			rdx, 1
	mov			rax, WRITE
	syscall
	jc          error
	ret
	error:
	neg			rax	; RAX contains error code. Negate it.
	ret
