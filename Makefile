ifneq (,)
This makefile require GNU Make
endif

CC=gcc
CFLAGS= -Wall -Wextra -pedantic

TARGETS=clock
BINARIES=$(patsubst %,bin/teye-%,$(TARGETS))

all: $(TARGETS)

clock: bin/clock.o bin/timer.o
	$(CC) bin/clock.o bin/timer.o -o bin/teye-clock $(CFLAGS) -l teye

bin/%.o: ./src/%.c	
	@mkdir -p $(dir $@)
	$(CC) -c $< -o $@ $(CFLAGS)

#%.o: ./bin/%.o


# Installation

install-binaries:
	cp -t /usr/local/bin $(BINARIES)

clean:
	rm -r bin
	rm -r lib
