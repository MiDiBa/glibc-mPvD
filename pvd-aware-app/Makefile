CC = gcc
CFLAGS = -Wall -g -O2
LIBS = /usr/local/lib/libpvd.so

.PHONY: all udp_client udp_server tcp_client tcp_server

all : udp_client udp_server tcp_client tcp_server

udp_client :
	$(CC) udp_client.c -o udp_client $(CFLAGS) $(LIBS)

udp_server :
	$(CC) udp_server.c -o udp_server $(CFLAGS)

tcp_client :
	$(CC) tcp_client.c -o tcp_client $(CFLAGS) $(LIBS)

tcp_server :
	$(CC) tcp_server.c -o tcp_server $(CFLAGS)
	
clean :
	/bin/rm -f udp_client udp_server tcp_client tcp_server
