# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 06:27:41 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/28 20:31:29 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	extern _ft_islower
	global _ft_toupper

_ft_toupper:
	call _ft_islower
	cmp rax, 0
	je end
	mov rax, rdi
	sub rax, 32
	ret

end:
	mov rax, rdi
	ret
