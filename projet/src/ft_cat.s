# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 06:35:01 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 10:43:29 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define WRITE 0x2000004
%define READ 0x2000003

section .bss
	buff resb 1024
	buff_size equ $-buff

section .text
	global _ft_cat

_ft_cat:
	while:
		push rdi
		lea rsi, [rel buff]
		mov rdx, buff_size
		mov rax, READ
		syscall
		jc end
		cmp rax, 0
		jle end
		mov rdi, 1
		mov rdx, rax
		mov rax, WRITE
		syscall
		pop rdi
	jmp while

end:
	pop rdi
	ret
