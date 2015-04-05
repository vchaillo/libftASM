# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 04:20:18 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 08:48:45 by vchaillo         ###   ########.fr        #
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
	push rsi
    push rdi
	call _ft_strlen
	push rax
	mov rdi, rax
	add rdi, 1
	call _malloc
	cmp rax, 0
	je fail
	mov rdi, rax
	pop rdx
	pop rsi
	call _ft_memcpy
	pop rsi
    ret

fail:
	mov rax, 0
	ret
