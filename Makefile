CFLAGS  = -g -Wall -W -Wextra -pedantic

default: fib

all:
	$(CC) $(CFLAGS) fib.c -o fib

test:
	 ./fib || exit 1
