#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <arpa/inet.h>

#define PORT 1234


int main(int argc, char *argv[]) {
  int sockfd, newsockfd;
  socklen_t clilen;
  char buffer[256];
  struct sockaddr_in6 serv_addr, cli_addr;
  int n;

  printf("IPv6 TCP Server Started...\n");
  
  // Allocate a socket for IPv6 TCP stream
  sockfd = socket(AF_INET6, SOCK_STREAM, 0);
  if (sockfd < 0) {
    fprintf(stderr,"Error opening socket\n");
    exit(0);
  }
  
  // Set up of server informations
  memset(&serv_addr, 0, sizeof(serv_addr));
  serv_addr.sin6_flowinfo = 0;
  serv_addr.sin6_family = AF_INET6;
  serv_addr.sin6_addr = in6addr_any;
  serv_addr.sin6_port = htons(PORT);

    
  // Binding the socket and the server address and port 
  if (bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
    fprintf(stderr,"Error on binding\n");
    exit(0);
  }
    
  // Loop on packet reception    
  while (1) {
    // Listenning to any incomming packets, only one client at the time
    listen(sockfd, 1);
    clilen = sizeof(cli_addr);
    
    // Openning a new socket for data reception
    newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
    if (newsockfd < 0) {
      fprintf(stderr,"Error on accept\n");
      exit(0);
    }  

    // Preparing the buffer in which the message will be stored
    memset(buffer,0, 256);
    
    // Reading the data from the socket
    n = recv(newsockfd, buffer, 255, 0);
    if (n < 0) {
      fprintf(stderr,"Error reading from socket\n");
      exit(0);
    }  
    
    // Print the client message
    printf("Message from client: %s\n", buffer);

    // Echo the message to the client
    n = send(newsockfd, buffer, strlen(buffer), 0);
    if (n < 0) {
      fprintf(stderr,"Error writing to socket\n");
      exit(0);
    }
    
    // Free the socket used to receive the data    
    close(newsockfd);
  }
  
  close(sockfd);
  return 0;
}
