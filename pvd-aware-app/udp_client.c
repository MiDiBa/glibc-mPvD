#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <libpvd.h>

#define PORT 1234

int main(int argc, char *argv[])
{  
  int sockfd;
  
  // Used to verifythe binding to a PvD
  char pvdname[256];
  
  // Client data structure length
  socklen_t cli_addr_len;
  
  // Client and server addresses
  struct sockaddr_in6 serv_addr, cli_addr;
  
  // Message to be sent to the server
  char buffer[256] = "Hello world!";
  
  // Checking the number of arguments
  if (argc < 2 || argc > 3) {
      fprintf(stderr, "Usage: %s  serv_address [pvd]\n", argv[0]);
      exit(0);
  }
  
  // bind to pvd
  if ((argc == 3) && (proc_bind_to_pvd(argv[2]) == -1)){
    fprintf(stderr, "Error binding to pvd\n");
    exit(0);
  }
  
  // Is the PvD valid ?
  if (argc == 3) {
    memset(pvdname, 0, 256);
    proc_get_bound_pvd(pvdname);
    if (!strcmp(pvdname, "")) {
      fprintf(stderr, "Error validating the pvd %s\n", pvdname);
      exit(0);
    }
  }

  // Allocate a socket for IPv6 UDP datagram
  sockfd = socket(PF_INET6, SOCK_DGRAM, 0);
  if (sockfd < 0) {
    fprintf(stderr,"Error opening socket\n");
    exit(0);
  }

  // Set up of server informations
  memset(&serv_addr, 0, sizeof(serv_addr));
  serv_addr.sin6_family = AF_INET6;
  inet_pton(AF_INET6, argv[1], &serv_addr.sin6_addr);
  serv_addr.sin6_port = htons(PORT);

  // Sending message
  if (sendto(sockfd, buffer, 256, 0, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
    fprintf(stderr,"Error sending message\n");
    exit(0);
  }

  // Reset the buffer
  memset(buffer, 0, 256);
  
  // Receiving reply
  cli_addr_len = sizeof(cli_addr);
  if (recvfrom(sockfd, buffer, 256, 0, (struct sockaddr *)&cli_addr, &cli_addr_len) < 0) {
    fprintf(stderr,"Error receiving reply\n");
    exit(0);
  }

  // Printing the echo response
  printf("Server echo: %s\n", buffer);

  // Close the socket
  close(sockfd);
  return 0;
}
