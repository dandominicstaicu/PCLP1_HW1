CC=gcc
CFLAGS=-Wall -Wextra -std=c99

TARGETS = infinite_product simple_queries gigel_and_the_checkboard another_queries

build: $(TARGETS)

infinite_product: infinite_product.c
	$(CC) $(CFLAGS) infinite_product.c base_conversion.c  -lm -o infinite_product

simple_queries: simple_queries.c
	$(CC) $(CFLAGS) simple_queries.c querry_processing.c -o simple_queries

gigel_and_the_checkboard: gigel_and_the_checkboard.c
	$(CC) $(CFLAGS) gigel_and_the_checkboard.c -o gigel_and_the_checkboard

another_queries: another_queries.c
	$(CC) $(CFLAGS) another_queries.c operations.c display.c -o another_queries

pack:
	zip -FSr 311CA_StaicuDanDominic_Tema1.zip README Makefile *.c *.h

clean:
	rm -f $(TARGETS)

.PHONY: pack clean
