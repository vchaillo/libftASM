/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_cat.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/05 10:39:06 by vchaillo          #+#    #+#             */
/*   Updated: 2015/04/05 10:43:18 by vchaillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include "main.h"

int 	main(int ac, char ** av)
{
	(void)ac;
	(void)av;
    if (ac == 1) 
        ft_cat(0);
    else if (ac == 2) 
	{
		ft_cat(open(__FILE__, O_RDONLY));
		ft_cat(open("test", O_RDONLY));
		ft_cat(-42);
        int fd = open(av[1], O_RDONLY);
        ft_cat(fd);
        if (fd != -1) 
            close(fd);
		else 
            printf("error\n");
    }
    else 
        printf("usage: %s [file]\n", av[0]);
    return (0);
}
