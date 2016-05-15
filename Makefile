all:
	$(CXX) -Wall -Wextra -pedantic fib.c -o fib

test:
	 ./fib || exit 1
