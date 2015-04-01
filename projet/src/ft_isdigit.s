# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 04:05:22 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/28 20:26:06 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jl is_wrong
	cmp rdi, 57
	jg is_wrong
	mov rax, 1
	ret

is_wrong:
	mov rax, 0
	ret
