# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 04:20:18 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 05:24:11 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_memcpy

_ft_strdup:
	cmp rdi, 0
	je fail
    push rdi
	call _ft_strlen
	mov rdi, rax
	add rdi, 1
	call _malloc
	cmp rax, 0
	je fail
	mov rsi, rax
	mov rcx, 0
	pop rdi
	push rdi
	mov rbx, rsi
	mov rax, rdi
	rep movsb
	pop rdi
    ret

fail:
	mov rax, 0
	ret
