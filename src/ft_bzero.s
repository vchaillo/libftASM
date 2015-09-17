# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/01 23:42:15 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 08:15:03 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_bzero

_ft_bzero:
	cmp rdi, 0
	je end
	jmp end_loop
	begin_loop:
	mov [rdi], byte 0
	inc rdi
	dec rsi
	end_loop:
	cmp rsi, 0
	jne begin_loop
	ret

end:
	ret
