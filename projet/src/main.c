/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/27 04:27:13 by vchaillo          #+#    #+#             */
/*   Updated: 2015/03/27 05:08:21 by vchaillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "main.h"

int		main(int ac, char **av)
{
	int		c;

	(void)ac;
	(void)av;
	for (c = 0; c < 1000; c++)
	{
		if (ft_isdigit(c) != isdigit(c))
		{
			printf("ft_isdigit KO :(\n");
			break;
		}
	}
	if (ft_isdigit(c) == isdigit(c))
		printf("ft_isdigit OK :)\n");	
	for (c = 0; c < 1000; c++)
	{
		if (ft_isascii(c) != isascii(c))
		{
			printf("ft_isascii KO :(\n");
			break;
		}
	}
	if (ft_isascii(c) == isascii(c))
		printf("ft_isascii OK :)\n");	
	return (0);
}
