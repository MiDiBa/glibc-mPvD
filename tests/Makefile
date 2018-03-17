CC = gcc
CFLAGS = -Wall -g -O2
LIBS = /usr/local/lib/libpvd.so

.PHONY: all dns_query wq_test udp_client udp_server tcp_client

all :	dns_query wq_test udp_client udp_server tcp_client

dns_query :
	$(CC) dns_query.c -o dns_query $(CFLAGS) $(LIBS)

wq_test :
	$(CC) wq_test.c -o wq_test $(CFLAGS) $(LIBS)

udp_client :
	$(CC) udp_client.c -o udp_client $(CFLAGS) $(LIBS)

udp_server :
	$(CC) udp_server.c -o udp_server $(CFLAGS)

tcp_client :
	$(CC) tcp_client.c -o tcp_client $(CFLAGS)

clean :
	/bin/rm -f dns_query wq_test udp_client udp_server tcp_client
