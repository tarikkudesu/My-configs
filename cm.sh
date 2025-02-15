#!/bin/sh
#Author Tarik AMEHRI
#42login : tamehri

cfiles=$(find . -name "*.c" | tr '\n' ' ')
hfiles=$(find . -name "*.h" | tr '\n' ' ')

echo "SRCS		=	${cfiles}" > Makefile
echo 'OBJ			=	$(SRCS:.c=.o)' >> Makefile
echo 'NAME		=	prog' >> Makefile
echo '' >> Makefile
echo 'all: $(NAME)' >> Makefile
echo '' >> Makefile
echo '$(NAME): $(OBJ)' >> Makefile
echo '	@cc -Wall -Wextra -Werror $(OBJ) -o $(NAME)' >> Makefile
echo '' >> Makefile
echo "%.o: %.c ${cfiles}" >> Makefile
echo '	@cc -Wall -Wextra -Werror -c $< -o $@' >> Makefile
echo '' >> Makefile
echo 'clean:' >> Makefile
echo '	@rm -f $(OBJ)' >> Makefile
echo '' >> Makefile
echo 'fclean: clean' >> Makefile
echo '	@rm -f $(NAME)' >> Makefile
echo '' >> Makefile
echo 're: fclean all' >> Makefile
echo '' >> Makefile
echo '.PHONY: clean' >> Makefile

echo 'change the excutable name as required'
