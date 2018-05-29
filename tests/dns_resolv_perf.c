#include <stdio.h>
#include <stdlib.h>

#include "pvd_stub.h"
#include "dns_query.h"


/* Usage */
static void usage() {
  fprintf(stderr, "Usage: ./dns_query_perf pvd res_name\n");
  fprintf(stderr, "----------------------------------------------------------------------------\n");
  fprintf(stderr, "\t* pvd     : flag stating if the process should be bound to the handcrafter PvD \n");
  fprintf(stderr, "\t- res_name: name that should be resolved\n");
}

int main(int argc, char *argv[]) {
    
    /* Checking the number of arguments */
    if (argc != 3) {  
        usage();
    }
    
    /* Converting the argument */
    int pvd = atoi(argv[1]);

    /* Checking if the arguments were correctly translated */
    if (pvd!=1 && pvd!=0) {
        usage();
    }
    
    /* Setting a pvd name */
    char pvd_name[15] = "pvd.test.com";
     
    /* Request with pvd containing dns servers bound */
    if (pvd) {
        if (create_set_bind(pvd_name) == -1)
            return -1;
            
        if (mk_query(argv[2], 0) == -1) 
            return -1;
        
        if (mk_query(argv[2], 0) == -1) 
            return -1;
            
        if (unbind_delete(pvd_name) ==-1)
            return -1;
    }
    /* Request with no pvd bound */
    else {
        if (mk_query(argv[2], 0) == -1) 
            return -1;
        if (mk_query(argv[2], 0) == -1) 
            return -1;
    }
    
    return 0;
}

