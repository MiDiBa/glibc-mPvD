CC = gcc
CFLAGS = -Wall -g -O2
LIBS = /usr/local/lib/libpvd.so

.PHONY: all dns_resolv wq_test udp_client udp_server tcp_client tcp_server

all : dns_resolv wq_test udp_client udp_server tcp_client tcp_server
	
dns_resolv :
	$(CC) dns_resolv.c dns_query.c pvd_stub.c -o dns_resolv $(CFLAGS) $(LIBS)

wq_test :
	$(CC) wq_test.c -o wq_test $(CFLAGS) $(LIBS)

udp_client :
	$(CC) udp_client.c -o udp_client $(CFLAGS) $(LIBS)

udp_server :
	$(CC) udp_server.c -o udp_server $(CFLAGS)

tcp_client :
	$(CC) tcp_client.c -o tcp_client $(CFLAGS)

tcp_server :
	$(CC) tcp_server.c -o tcp_server $(CFLAGS)

clean :
	/bin/rm -f dns_query dns_resolv wq_test udp_client udp_server tcp_client tcp_server
