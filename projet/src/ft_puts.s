# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 19:32:26 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 10:25:29 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define STDOUT 1
%define WRITE 0x2000004

section .data
	null_s db "(null)", 10

section .text
	global _ft_puts

_ft_puts:
	cmp rdi, 0
	je end
	mov rsi, rdi
	mov rdi, STDOUT
	mov rdx, 0
	jmp end_loop

start_loop:
	inc rdx

end_loop:
	cmp [rsi + rdx], byte 0
	jne start_loop
	mov rax, WRITE
	syscall
	mov rsi, 10
	mov rdx, 1
	syscall
	ret

end:
	mov rdi, STDOUT
	lea rsi, [rel null_s]
	mov rdx, 7
	mov rax, WRITE
	syscall
	neg rax
	ret
