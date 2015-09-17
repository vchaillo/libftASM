# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 05:48:38 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/27 05:52:15 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl is_wrong
	cmp rdi, 126
	jg is_wrong
	mov rax, 1
	ret

is_wrong:
	mov rax, 0
	ret
