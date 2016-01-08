NAME = libft.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

SRC = `ls | grep "\.c" | grep "ft_"`

OBJ = `ls | grep "\.o" | grep "ft_"`

all: $(NAME)

$(NAME):
    $(CC) $(FLAGS) -c $(SRC)
    ar rc $(NAME) $(OBJ)
    ranlib $(NAME)

clean:
            rm -f $(OBJ)

fclean: clean
            rm -f $(NAME)

re: fclean all
