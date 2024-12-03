CC = gcc
FLAGS = -Wall -Werror -Wextra

s21_cat:
	$(CC) $(FLAGS) s21_cat.c -o s21_cat

style:
	clang-format -style=Google -i *.c *.h

test:
	bash test_cat.sh

clean: 
	rm -rf s21_cat