
SHELL = /bin/sh

CFLAGS = -lrt -ltmc -lpthread -lm
CC = tile-gcc

MAIN = src/main.c
WITH = src/transfer_functions.c src/init.c src/barrier.c src/finalize.c src/thread_fn.c
INCLUDE = header/
OUT = mm_udn

all: $(MAIN)
	@$(CC) $(CFLAGS) $(WITH) $(MAIN) -o $(OUT) -I $(INCLUDE);\
	echo "Compiled......";

clean: 
	rm -f $(OUT)
