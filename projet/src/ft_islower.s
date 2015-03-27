# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 06:31:50 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/27 06:36:42 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_islower

_ft_islower:
	cmp rdi, 97
	jl is_wrong
	cmp rdi, 122
	jg is_wrong
	mov rax, 1
	ret

is_wrong:
	mov rax, 0
	ret
