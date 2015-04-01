# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 06:13:31 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/28 20:31:39 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	extern _ft_isalpha
	extern _ft_isdigit
	global _ft_isalnum

_ft_isalnum:
	call _ft_isdigit
	cmp rax, 1
	je end
	call _ft_isalpha

end:
	ret
