CC = gcc
CFLAGS = -Wall -g -O2
LIBS = /usr/local/lib/libpvd.so

.PHONY: all dns_query dn_query_ns wq_test udp_client udp_server

all :	dns_query dns_query_ns wq_test udp_client udp_server

dns_query :
	$(CC) dns_query.c -o dns_query $(CFLAGS) $(LIBS)

dns_query_ns :
	$(CC) dns_query_ns.c -o dns_query_ns $(CFLAGS) $(LIBS)

wq_test :
	$(CC) wq_test.c -o wq_test $(CFLAGS) $(LIBS)

udp_client :
	$(CC) udp_client.c -o udp_client $(CFLAGS) $(LIBS)

udp_server :
	$(CC) udp_server.c -o udp_server $(CFLAGS)

clean :
	/bin/rm -f dns_query dns_query_ns wq_test udp_client udp_server
