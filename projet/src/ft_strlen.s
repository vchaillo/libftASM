# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 00:57:06 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 01:08:51 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0
	jmp end_loop

start_loop:
	inc rax

end_loop:
	cmp [rdi + rax], byte 0
	jne start_loop
	ret
