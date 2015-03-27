/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/27 04:27:13 by vchaillo          #+#    #+#             */
/*   Updated: 2015/03/27 06:47:22 by vchaillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "main.h"

int		main(int ac, char **av)
{
	int		c;

	(void)ac;
	(void)av;
/*
**	Test of function ft_isdigit
*/
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
/*
**	Test of function ft_isascii
*/
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
/*
**	Test of function ft_isprint
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isprint(c) != isprint(c))
		{
			printf("ft_isprint KO :(\n");
			break;
		}
	}
	if (ft_isprint(c) == isprint(c))
		printf("ft_isprint OK :)\n");	
/*
**	Test of function ft_isalpha
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isalpha(c) != isalpha(c))
		{
			printf("ft_isalpha KO :(\n");
			break;
		}
	}
	if (ft_isalpha(c) == isalpha(c))
		printf("ft_isalpha OK :)\n");	
/*
**	Test of function ft_isalnum
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isalnum(c) != isalnum(c))
		{
			printf("ft_isalnum KO :(\n");
			break;
		}
	}
	if (ft_isalnum(c) == isalnum(c))
		printf("ft_isalnum OK :)\n");	
/*
**	Test of function ft_islower
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_islower(c) != islower(c))
		{
			printf("ft_islower KO :(\n");
			break;
		}
	}
	if (ft_islower(c) == islower(c))
		printf("ft_islower OK :)\n");	
/*
**	Test of function ft_isupper
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isupper(c) != isupper(c))
		{
			printf("ft_isupper KO :(\n");
			break;
		}
	}
	if (ft_isupper(c) == isupper(c))
		printf("ft_isupper OK :)\n");	
/*
**	Test of function ft_toupper
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_toupper(c) != toupper(c))
		{
			printf("ft_toupper KO :(, %d\n", c);
			break;
		}
	}
	if (ft_toupper(c) == toupper(c))
		printf("ft_toupper OK :)\n");	
/*
**	Test of function ft_tolower
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_tolower(c) != tolower(c))
		{
			printf("ft_tolower KO :(, %d\n", c);
			break;
		}
	}
	if (ft_tolower(c) == tolower(c))
		printf("ft_tolower OK :)\n");	
	return (0);
}
