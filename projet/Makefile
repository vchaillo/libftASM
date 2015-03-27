# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vchaillo <vchaillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/24 16:06:11 by vchaillo          #+#    #+#              #
#    Updated: 2015/03/27 05:07:46 by vchaillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	=	libfts.a

AS		=	nasm -f macho64

CC		=	gcc

CFLAGS	=	-Wall -Wextra -Werror

SRC		=	ft_isdigit.s \
			ft_isascii.s \

INC		= -I inc/

OBJ		= $(patsubst %.s, obj/%.o, $(SRC))

RM 		= rm -Rf

all: $(NAME)

$(NAME): obj $(OBJ)
		@ar rcs $(NAME) $(OBJ)

test: $(NAME)
		@$(CC) $(CFLAGS) -o test_asm src/main.c $(INC) $(NAME)
		@./test_asm

obj/%.o: src/%.s
		@$(AS) -o $@ $<
		@echo "[\033[32m√\033[m]" $<

obj:
		@mkdir -p obj

clean:
		@echo "\033[31;1mCleaning files .o ...\033[0m"
		@$(RM) obj/

fclean:	clean
		@echo "\033[31;1mCleaning executables...\033[0m"
		@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
