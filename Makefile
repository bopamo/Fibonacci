CFLAGS  = -g -Wall -W -Wextra -pedantic
LDFLAGS = -lCppUTest -lCppUTestExt

default: fib

fib: main.o test.o
	$(CPP) $(CFLAGS) $(LDFLAGS) test.o -o fib

fib.o: fib.c
	$(CC) $(CFLAGS) -c fib.c
	
test.o: test.c
	 $(CPP) $(CFLAGS) -c test.c
	 
	 
test:
	./fib || exit 1
