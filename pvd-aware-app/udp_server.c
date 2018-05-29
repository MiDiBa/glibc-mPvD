#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>

#define PORT 1234

int main(void)
{
  int sockfd;
  socklen_t cli_addr_len;
  struct sockaddr_in6 serv_addr, cli_addr;
  char buffer[256];

  printf("IPv6 UDP Server Started...\n");
  
  // Allocate a socket for IPv6 UDP datagram
  sockfd = socket(PF_INET6, SOCK_DGRAM, 0);
  if (sockfd < 0) {
    fprintf(stderr,"Error opening socket\n");
    exit(0);
  }

  // Set up of server informations
  memset(&serv_addr, 0, sizeof(serv_addr));
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

    cli_addr_len = sizeof(cli_addr);
    
    // Reception of the message
    if (recvfrom(sockfd, buffer, 256, 0, (struct sockaddr *)&cli_addr, &cli_addr_len) < 0) {
      fprintf(stderr,"Error on packet reception\n");
      exit(0);
    }
    
    // Print the client message
    printf("Message from client: %s\n", buffer);
    
    // Echo the message
    if (sendto(sockfd, buffer, 256, 0, (struct sockaddr *)&cli_addr, sizeof(cli_addr)) < 0) {
      fprintf(stderr,"Error on message sending\n");
      exit(0);
    }

  }
  close(sockfd);
  return 0;
}
