CC = gcc-5
CPP = g++-5
CFLAGS  = -g -Wall -W -Wextra -pedantic

CPPUTEST_HOME = /usr/local

CPPFLAGS += -I$(CPPUTEST_HOME)/include

LD_LIBRARIES = -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt -lstdc++


all: fib

fib: test.o main.o
	$(CPP) $(CFLAGS) test.o main.o $(LD_LIBRARIES) -o fib

# fib.o: fib.c
# 	$(CC) $(CFLAGS) -c fib.c

test.o: test.c
	 $(CPP) $(CFLAGS) $(CPPFLAGS) -c test.c

main.o: main.c
	 $(CPP) $(CFLAGS) $(CPPFLAGS) -c main.c


test:
	./fib || exit 1

clean:
	@echo "clean..."
	rm -rf *.o fib
