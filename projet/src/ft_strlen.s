# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 00:57:06 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 08:20:46 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	je end
	mov rax, 0
	jmp end_loop

start_loop:
	inc rax

end_loop:
	cmp [rdi + rax], byte 0
	jne start_loop
	ret

end:
	mov rax, 0
	ret
