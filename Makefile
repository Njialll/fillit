# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbeilles <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/11 20:39:18 by mbeilles          #+#    #+#              #
#    Updated: 2017/04/26 14:54:52 by mbeilles         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = fillit.c \
	  parser.c

SRC_0 = $(SRC:.c=.o)

$(NAME): $(SRC_0)
	@make -C libft re
	@gcc -o fillit libft/libft.a $(SRC_0)

all: $(NAME)

%.o: %.c
	gcc -o $@ -c $< -Wall -Werror -Wextra

clean:
	@rm -f $(SRC_0)

fclean: clean
	@rm -f $(NAME)

re: fclean all
