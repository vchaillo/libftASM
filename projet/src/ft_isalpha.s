# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 05:56:46 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/27 06:12:17 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 65
	jl is_wrong
	cmp rdi, 91
	jl is_good
	cmp rdi, 97
	jl is_wrong
	cmp rdi, 123
	jl is_good
	jmp is_wrong
	ret

is_wrong:
	mov rax, 0
	ret

is_good:
	mov rax, 1
	ret
