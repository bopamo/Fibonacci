CFLAGS  = -g -Wall -W -Wextra -pedantic
LD_LIBRARIES = -lCppUTest -lCppUTestExt

all: fib

fib: test.o
	$(CPP) $(CFLAGS) test.o -o fib $(LD_LIBRARIES)

fib.o: fib.c
	$(CC) $(CFLAGS) -c fib.c
	
test.o: test.c
	 $(CPP) $(CFLAGS) -c test.c
	 
	 
test:
	./fib || exit 1
