# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 06:37:00 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/27 06:38:29 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isupper

_ft_isupper:
	cmp rdi, 65
	jl is_wrong
	cmp rdi, 90
	jg is_wrong
	mov rax, 1
	ret

is_wrong:
	mov rax, 0
	ret
