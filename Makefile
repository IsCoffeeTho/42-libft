# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amenadue <amenadue@student.42adel.org.a    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/13 17:55:39 by amenadue          #+#    #+#              #
#    Updated: 2022/07/10 21:06:53 by amenadue         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Config

Library		= libft

files 	   = ft_strlen \
			 ft_memmove \
			 ft_memcpy \
			 ft_strlcpy \
			 ft_strlcat \
			 ft_isalpha \
			 ft_isdigit \
			 ft_isalnum \
			 ft_isascii \
			 ft_isprint \
			 ft_memset \
			 ft_bzero \
			 ft_toupper \
			 ft_tolower \
			 ft_strchr \
			 ft_strrchr \
			 ft_strncmp \
			 ft_memchr \
			 ft_memcmp \
			 ft_strnstr \
			 ft_atoi \
			 ft_calloc \
			 ft_strdup \
			 ft_substr \
			 ft_strjoin \
			 ft_strtrim \
			 ft_split \
			 ft_itoa \
			 ft_strmapi \
			 ft_striteri	\
			 ft_putchar_fd \
			 ft_putstr_fd \
			 ft_putendl_fd \
			 ft_putnbr_fd \
			 ft_printf \
			 ft_internal_print_a \
			 ft_internal_print_b

Compiler	= gcc

CmpFlags	= -Wall -Wextra -Werror

# EnvVars (Do not touch unless you understand and know what is happening, which you probably do)

OUTN	= $(Library).a

CFILES	= $(files:%=%.c)

OFILES	= $(files:%=%.o)

NAME	= $(OUTN)

$(NAME):
	$(Compiler) $(CmpFlags) -c $(CFILES) -I./
	ar -rc $(OUTN) $(OFILES)

all: $(NAME)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re
