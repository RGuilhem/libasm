FLAGS = -Wall -Werror -Wextra
SRCS = ft_strlen.s	\
      ft_strcpy.s	\
      ft_read.s		\
      ft_strcmp.s	\
      ft_strdup.s	\
      ft_write.s
OBJS = $(SRCS:.s=.o)
NAME = libasm.a

all: $(NAME)

%.o: %.s
	nasm -f elf64 $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: $(NAME)
	gcc main.c $(FLAGS) -L. -lasm -o test_main

.PHONY: all re clean fclean
