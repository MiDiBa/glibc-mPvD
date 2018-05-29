#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

#include <libpvd.h>

#define PORT 1234

int main(int argc, char *argv[]) {
  int sockfd, n;
  
  // Used to verifythe binding to a PvD
  char pvdname[256];
  
  // Data structure containing the IPv6 address of the server
  struct sockaddr_in6 serv_addr;
  
  // Data structure referencing the server
  struct hostent *server;
  
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
  
  // Is the PvD valid
  memset(pvdname, 0, 256);
  proc_get_bound_pvd(pvdname);
  if (!strcmp(pvdname, "")) {
    fprintf(stderr, "Error validating the pvd %s\n", pvdname);
    exit(0);
  }

  // Allocate a socket for IPv6 TCP stream
  sockfd = socket(AF_INET6, SOCK_STREAM, 0);
  if (sockfd < 0) {
    fprintf(stderr,"Error opening socket\n");
    exit(0);
  }
  
  // Verify if such server exists
  server = gethostbyname2(argv[1],AF_INET6);
  if (server == NULL) {
    fprintf(stderr,"Error, no such server\n");
    exit(0);
  }   

  // Set up of server informations
  memset((char *) &serv_addr, 0, sizeof(serv_addr));
  serv_addr.sin6_flowinfo = 0;
  serv_addr.sin6_family = AF_INET6;
  memmove((char *) &serv_addr.sin6_addr.s6_addr, (char *) server->h_addr, server->h_length);
  serv_addr.sin6_port = htons(PORT);

  // Try to connect to the server
  if (connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) {
    fprintf(stderr,"Error connecting\n");
    exit(0);
  }  

  // Send the buffer to the server
  n = send(sockfd,buffer, strlen(buffer)+1, 0);
  if (n < 0) {
    fprintf(stderr,"Error writing to socket\n");
    exit(0);
  }
  
  // Reset the buffer
  memset(buffer, 0, 256);
  
  // Reception of the response from the server
  n = recv(sockfd, buffer, 256, 0);
  if (n < 0) {
    fprintf(stderr,"Error reading from socket\n");
    exit(0);
  }
  
  // Printing the echo response
  printf("Server echo: %s\n", buffer);

  // Close the socket
  close(sockfd);
      
  return 0;
}
