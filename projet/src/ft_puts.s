# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 19:32:26 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 06:20:48 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define STDOUT 1
%define WRITE 0x2000004

section .text
	global _ft_puts

_ft_puts:
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
