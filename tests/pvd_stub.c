#include <libpvd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "pvd_stub.h"

/*
 * create_set_bind:
 * - Create a pvd according to the pvd name,
 * - Set dns values according (ipv4 or ipv6 depending on user input)
 * - Bind the process to the freshly created pvd
 */
int create_set_bind(char *pvd_name) {

    /* checking pvd name validity */
    if (strlen(pvd_name) > PVDNAMSIZ){
        fprintf(stderr, "Input %s not valid\n", pvd_name);
        return -1;
    }
    
    /* creating pvd */
    if (kernel_create_pvd(pvd_name) == -1) {
        fprintf(stderr, "Creation of %s failed!\n", pvd_name);
        return -1;
    }

    /* inserting attributes (using dedicated bash script) */
    char sys4_string[128];
    snprintf(sys4_string, sizeof(sys4_string), "../tests/sh-tests/pvdid-setattr.sh %s", pvd_name);
    if (system(sys4_string) != 0) {
        fprintf(stderr, "Attribute update through bash script failed!\n");
        return -1;
    }
    
    /* binding process to pvd */
    if (proc_bind_to_pvd(pvd_name) == -1) {
        fprintf(stderr, "Binding to %s failed!\n", pvd_name);
        return -1;
    }
    return 0;
}

/*
 * unbind_delete:
 * - Unbind the process, if bound to any pvd
 * - delete the pvd specified
 */
int unbind_delete(char *pvd_name) {

    /* checking pvd name validity */
    if (strlen(pvd_name) > PVDNAMSIZ){
        fprintf(stderr, "Input %s not valid\n", pvd_name);
        return -1;
    }

    /* binding process to pvd */
    if (proc_bind_to_nopvd() == -1) {
      fprintf(stderr, "Unbinding to any failed!\n");
      return -1;
    }
    
    /* pvd deletion */
    if (kernel_update_pvd_attr(pvd_name, ".deprecated", "1") == -1) {
      fprintf(stderr, "Deletion %s failed!\n", pvd_name);
      return -1;
    }

    return 0;

}
