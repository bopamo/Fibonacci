all:
	$(CC) -Wall -Wextra -pedantic fib.c -o fib

test:
	 ./fib || exit 1
