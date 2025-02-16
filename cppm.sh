#!/bin/sh
#Author Tarik AMEHRI
#42login : tamehri

cppfiles=$(find . -name "*.cpp" | tr '\n' ' ')
hppfiles=$(find . -name "*.hpp" | tr '\n' ' ')

echo "SRC		=	${cppfiles}" > Makefile
echo 'OBJ		=	$(SRC:.cpp=.o)' >> Makefile
echo 'NAME	=	anything' >> Makefile
echo '' >> Makefile
echo 'all: $(NAME)' >> Makefile
echo '' >> Makefile
echo '$(NAME): $(OBJ)' >> Makefile
echo '	@c++ -Wall -Wextra -Werror -std=c++98 $(OBJ) -o $(NAME)' >> Makefile
echo '' >> Makefile
echo "%.o: %.cpp ${hppfiles}" >> Makefile
echo '	@c++ -Wall -Wextra -Werror -std=c++98 -c $< -o $@' >> Makefile
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
echo '' >> Makefile

echo 'change the excutable name as required'
