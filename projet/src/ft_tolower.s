# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 06:27:41 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/27 06:49:57 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	extern _ft_isupper
	global _ft_tolower

_ft_tolower:
	call _ft_isupper
	cmp rax, 0
	je end
	mov rax, rdi
	add rax, 32
	ret

end:
	mov rax, rdi
	ret
