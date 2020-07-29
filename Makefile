CC = gcc
CFLAGS = -o0 -g -Wall

client:client.c
	$(CC) $(CFLAGS) -o $@ $^

server:server.c
	$(CC) $(CFLAGS) -o $@ $^ -lsqlite3

.PHONY:clean
clean:
	rm -rf client server
