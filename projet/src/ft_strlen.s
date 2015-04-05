# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/05 00:57:06 by vchaillo          #+#    #+#              #
#    Updated: 2015/04/05 10:57:58 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	je end
	mov al, 0
	mov rcx, -1
	repne scasb
	not rcx
	sub rcx, 1
	mov rax, rcx
	ret

end:
	mov rax, 0
	ret
