#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

#define PORT 1234

void error(char *msg) {
    perror(msg);
    exit(0);
}

int main(int argc, char *argv[]) {
  int sockfd, n;
  
  // Data structure containing the IPv6 address of the server
  struct sockaddr_in6 serv_addr;
  
  // Data structure referencing the server
  struct hostent *server;
  
  // Message to be sent to the server
  char buffer[256] = "Hello world!";
  
  // Checking the number of arguments
  if (argc < 2) {
      fprintf(stderr, "Usage: %s  serv_address\n", argv[0]);
      exit(0);
  }
  
  // Allocate a socket for IPv6 TCP stream
  sockfd = socket(AF_INET6, SOCK_STREAM, 0);
  if (sockfd < 0)
      error("ERROR opening socket");

  // Verify if such server exists
  server = gethostbyname2(argv[1],AF_INET6);
  if (server == NULL) 
      error("ERROR, no such server");

  // Set up of server informations
  memset((char *) &serv_addr, 0, sizeof(serv_addr));
  serv_addr.sin6_flowinfo = 0;
  serv_addr.sin6_family = AF_INET6;
  memmove((char *) &serv_addr.sin6_addr.s6_addr, (char *) server->h_addr, server->h_length);
  serv_addr.sin6_port = htons(PORT);

  // Try to connect to the server
  if (connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0)
      error("ERROR connecting");

  
  // Send the buffer to the server
  n = send(sockfd,buffer, strlen(buffer)+1, 0);
  if (n < 0)
      error("ERROR writing to socket");

  // Reset the buffer
  memset(buffer, 0, 256);
  
  // Reception of the response from the server
  n = recv(sockfd, buffer, 256, 0);
  if (n < 0)
      error("ERROR reading from socket");
      
  // Printing the echo response
  printf("Server echo: %s\n", buffer);

  // Close the socket
  close(sockfd);
      
  return 0;
}
