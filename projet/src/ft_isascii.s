# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 04:38:22 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/27 05:06:00 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl is_wrong
	cmp rdi, 127
	jg is_wrong
	mov rax, 1
	ret

is_wrong:
	mov rax, 0
	ret

