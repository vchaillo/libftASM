/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/27 04:27:13 by vchaillo          #+#    #+#             */
/*   Updated: 2015/04/01 23:46:04 by vchaillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "main.h"

int		main(int ac, char **av)
{
	int		c;
	char	test[12];
	
	test[6] = '1';
	(void)ac;
	(void)av;
/*
**	Test of function ft_isdigit
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isdigit(c) != isdigit(c))
		{
			printf("ft_isdigit \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_isdigit(c) == isdigit(c))
		printf("ft_isdigit \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_isascii
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isascii(c) != isascii(c))
		{
			printf("ft_isascii \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_isascii(c) == isascii(c))
		printf("ft_isascii \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_isprint
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isprint(c) != isprint(c))
		{
			printf("ft_isprint \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_isprint(c) == isprint(c))
		printf("ft_isprint \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_isalpha
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isalpha(c) != isalpha(c))
		{
			printf("ft_isalpha \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_isalpha(c) == isalpha(c))
		printf("ft_isalpha \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_isalnum
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isalnum(c) != isalnum(c))
		{
			printf("ft_isalnum \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_isalnum(c) == isalnum(c))
		printf("ft_isalnum \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_islower
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_islower(c) != islower(c))
		{
			printf("ft_islower \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_islower(c) == islower(c))
		printf("ft_islower \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_isupper
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_isupper(c) != isupper(c))
		{
			printf("ft_isupper \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_isupper(c) == isupper(c))
		printf("ft_isupper \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_toupper
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_toupper(c) != toupper(c))
		{
			printf("ft_toupper \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_toupper(c) == toupper(c))
		printf("ft_toupper \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_tolower
*/
	for (c = 0; c < 1000; c++)
	{
		if (ft_tolower(c) != tolower(c))
		{
			printf("ft_tolower \033[31;1mKO\033[0m :(\n");
			break;
		}
	}
	if (ft_tolower(c) == tolower(c))
	printf("ft_tolower \033[32mOK\033[0m :)\n");	
/*
**	Test of function ft_bzero
*/
	ft_bzero(test, sizeof(char) * 12);
	if (test[6] != 0)
		printf("ft_bzero   \033[31;1mKO\033[0m :(\n");
	else
		printf("ft_bzero   \033[32mOK\033[0m :)\n");
	return (0);
}
