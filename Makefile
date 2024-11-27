SRC =

OBJ = ${SRC:.cpp=.o}

CC = c++

FLAGS = -std=c++98 -Wall -Wextra -Werror

NAME =

%.o :	%.cpp
		@$(CC) $(FLAGS) -c $< -o $@

all : $(NAME)

$(NAME) :	$(OBJ)
			@$(CC) $(FLAGS) $(OBJ) -o $(NAME)
			@echo "\e[1;92m Build success !\e[0m"

clean :
			@rm -f $(OBJ)

fclean :	clean
			@rm -f $(NAME)

re :	fclean all

.PHONY : all clean fclean re
