# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 01:18:36 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 02:26:13 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memset

_ft_memset:
	push rdi
	push rsi
	push rdx

	mov rbx, rdi
	mov rax, rsi
	mov rcx, rdx
	rep stosb

	mov rax, rbx
	pop rdx
	pop rsi
	pop rdi
	ret
