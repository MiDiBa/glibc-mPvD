CC = gcc
CFLAGS = -Wall -g -O2
LIBS = /usr/local/lib/libpvd.so

.PHONY: all dns_resolv dns_resolv_perf connect_test

all : dns_resolv dns_resolv_perf connect_test
	
dns_resolv :
	$(CC) dns_resolv.c dns_query.c pvd_stub.c -o dns_resolv $(CFLAGS) $(LIBS)
	
dns_resolv_perf :
	$(CC) dns_resolv_perf.c dns_query.c pvd_stub.c -o dns_resolv_perf $(CFLAGS) $(LIBS)

connect_test :
	$(CC) connect_test.c pvd_stub.c -o connect_test $(CFLAGS) $(LIBS)
	
clean :
	/bin/rm -f dns_resolv dns_resolv_perf connect_test
