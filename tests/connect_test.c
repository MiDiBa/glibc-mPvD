#include <libpvd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <errno.h>

#include "pvd_stub.h"

/* Usage */
static void usage() {
  fprintf(stderr, "Usage: ./dns_query nopvd pvd res_name\n");
  fprintf(stderr, "----------------------------------------------------------------------------\n");
  fprintf(stderr, "\t* nopvd   : flag stating if a classical request should be done\n");
  fprintf(stderr, "\t* pvd     : flag stating if the process should be bound to the handcrafter PvD \n");
  fprintf(stderr, "\t- addr_6  : IPv6 address of the distant hos\n");
}


int main(int argc, char *argv[]) {
    
    /* Checking the number of arguments */
    if (argc != 4) {  
        usage();
    }
    
    /* Converting the argument */
    int nopvd = atoi(argv[1]);
    int pvd = atoi(argv[2]);

    /* Checking if the arguments were correctly translated */
    if (nopvd!=1 && nopvd!=0) {
        usage();
    }

    if (pvd!=1 && pvd!=0) {
        usage();
    }
    
    /* Setting a pvd name */
    char pvd_name[15] = "pvd.test.com";
    

	/* Translating the IP address */
	struct sockaddr *addr;
	struct sockaddr_in6 sa6;
	struct sockaddr_in sa4;
	socklen_t slen;
	int sockfd;
	
    if (inet_pton(AF_INET6, argv[3], &(sa6.sin6_addr))) {
        addr = (struct sockaddr*) &sa6;
        addr->sa_family = AF_INET6;
        sockfd = socket(PF_INET6, SOCK_DGRAM | SOCK_NONBLOCK | SOCK_CLOEXEC, 0);
        if (sockfd < 0) {
		    fprintf(stderr, "Error creating the socket\n");
		    exit(0);
	    }
	    slen = sizeof (struct sockaddr_in6);
	
    }
    else if (inet_pton(AF_INET, argv[3], &(sa4.sin_addr))) {
        addr = (struct sockaddr*) &sa4;
        addr->sa_family = AF_INET;
        sockfd = socket(PF_INET, SOCK_DGRAM | SOCK_NONBLOCK | SOCK_CLOEXEC, 0);
        if (sockfd < 0) {
		    fprintf(stderr, "Error creating the socket\n");
		    exit(0);
	    }
	    slen = sizeof (struct sockaddr_in);
	
    } 
    else
        return -1;

    
    /* Request with no pvd bound */
    if (nopvd) {
        printf(" -------------------\n");
        printf("| using resolv.conf |\n");
        printf(" -------------------\n");
        if (connect(sockfd, addr, slen) == -1) {
            fprintf(stderr,"Error: %s\n", strerror(errno));
            return -1;
        }
        else {
            printf("Successful connect\n");
        }
    }
    
    /* Request with pvd containing dns servers bound */
    if (pvd) {
        printf(" ------------------------\n");
        printf("| using handcrafted pvd  |\n");
        printf(" ------------------------\n");
        if (create_set_bind(pvd_name) == -1)
            return -1;
            
        if (connect(sockfd, addr, slen) == -1)  {
            fprintf(stderr,"Error: %s\n", strerror(errno));
            return -1;
        }
        else {
            printf("Successful connect\n");
        }
            
        if (unbind_delete(pvd_name) ==-1)
            return -1;
    }
    
    return 0;
}
