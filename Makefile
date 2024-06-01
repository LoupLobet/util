CC=cc
AR=ar rcs
CFLAGS=-Wall -pedantic -std=c99
LDFLAGS=

all: util.o util.a

util.a: util.o
	${AR} $@ $^ 

util.o: util.c
	${CC} ${CFLAGS} -c $<

clean:
	rm -f util.o
