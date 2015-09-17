# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 02:38:10 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 03:14:37 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memcpy

_ft_memcpy:
	mov rbx, rsi
	mov rax, rdi
	mov rcx, rdx
	rep movsb
	ret
