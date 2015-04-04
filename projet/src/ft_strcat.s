# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 19:32:07 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 00:46:31 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcat

_ft_strcat:
	mov rax, rdi
	jmp s1_loop_end

s1_loop_start:
	inc rdi

s1_loop_end:
	cmp byte [rdi], byte 0
	jne s1_loop_start
	jmp cat_loop_end

cat_loop_start:
	mov rdx, [rsi]
	mov [rdi], rdx
	inc rdi
	inc rsi 

cat_loop_end:
	cmp [rsi], byte 0
	jne cat_loop_start
	mov [rdi], byte 0
	ret
