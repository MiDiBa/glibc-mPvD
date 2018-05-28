#include <stdio.h>
#include <stdlib.h>

#include "pvd_stub.h"
#include "dns_query.h"


/* Usage */
static void usage() {
  fprintf(stderr, "Usage: ./dns_query nopvd ipv4_dns res_name\n");
  fprintf(stderr, "----------------------------------------------------------------------------\n");
  fprintf(stderr, "\t* nopvd   : flag stating if a classical request should be done\n");
  fprintf(stderr, "\t* ipv4_dns: flag stating if request should be done using a pvd containing ipv4 dns servers\n");
  fprintf(stderr, "\t- res_name: name that should be resolved\n");
}

int main(int argc, char *argv[]) {
    
    /* Checking the number of arguments */
    if (argc != 4) {  
        usage();
    }
    
    /* Converting the argument */
    int nopvd = atoi(argv[1]);
    int ipv4_dns = atoi(argv[2]);

    /* Checking if the arguments were correctly translated */
    if (nopvd!=1 && nopvd!=0) {
        usage();
    }

    if (ipv4_dns!=1 && ipv4_dns!=0) {
        usage();
    }
    
    /* Setting a pvd name */
    char pvd_name[15] = "pvd.test.com";
    
    /* Request with no pvd bound */
    if (nopvd) {
        printf(" -------------------\n");
        printf("| using resolv.conf |\n");
        printf(" -------------------\n");
        if (mk_query(argv[3]) == -1) 
            return -1;
    }
    
    /* Request with pvd containing ipv4 dns servers bound */
    if (ipv4_dns) {
        printf(" ------------------\n");
        printf("| using pvd (ipv4) |\n");
        printf(" ------------------\n");
        if (create_set_bind(pvd_name) == -1)
            return -1;
            
        if (mk_query(argv[3]) == -1) 
            return -1;
            
        if (unbind_delete(pvd_name) ==-1)
            return -1;
    }
    
    return 0;
}

