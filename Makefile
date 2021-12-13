# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgoldste <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/07 01:29:57 by jgoldste          #+#    #+#              #
#    Updated: 2021/11/07 01:30:00 by jgoldste         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SRCS	=	ft_atoi.c			ft_chr_func.c	ft_parse_func.c		ft_printf.c\
			ft_printnbr_func.c	ft_put_func.c	ft_putnbr_func.c	ft_strlen.c\
			ft_printhex_func.c

HEADER	=	ft_printf.h

OBJS	=	$(patsubst %.c,%.o,$(SRCS))

CFLAGS	=	-Wall -Wextra -Werror -I$(HEADER)

CC		=	gcc

.PHONY	:	all clean fclean re bonus

all		:	$(NAME)

$(NAME)	:	$(OBJS) $(HEADER)
			ar rcs $(NAME) $?

%.o		:	%.c $(HEADER)
			$(CC) $(CFLAGS) -c $< -o $@

clean	:	
			rm -rf $(OBJS)

fclean	:	clean
			rm -rf $(NAME)

re		:	fclean all

bonus	:	$(NAME)
