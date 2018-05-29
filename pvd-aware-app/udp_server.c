#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>

#define PORT 1234
#define MESSAGE "hello"


void error(char *msg) {
    perror(msg);
    exit(1);
}

int main(void)
{
  int sockfd;
  socklen_t clilen;
  struct sockaddr_in6 serv_addr, client_addr;
  char buffer[1024];
  char addrbuf[INET6_ADDRSTRLEN];

  printf("\nIPv6 UDP Server Started...\n");
  
  // Allocate a socket for IPv6 UDP datagram
  sockfd = socket(PF_INET6, SOCK_DGRAM, 0);
  if (sockfd < 0)
      error("ERROR opening socket");

  // Set up of server informations
  memset(&serv_addr, 0, sizeof(serv_addr));
  serv_addr.sin6_family = AF_INET6;
  serv_addr.sin6_addr = in6addr_any;
  serv_addr.sin6_port = htons(PORT);

  // Binding the socket and the server address and port 
  if (bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
    error("ERROR on binding");


  while (1) {

    /* now wait until we get a datagram */
    printf("waiting for a datagram...\n");
    clilen = sizeof(client_addr);
    if (recvfrom(sockfd, buffer, 1024, 0,
		 (struct sockaddr *)&client_addr,
		 &clilen) < 0) {
      perror("recvfrom failed");
      exit(4);
    }

    /* now client_addr contains the address of the client */
    printf("got '%s' from %s\n", buffer,
	   inet_ntop(AF_INET6, &client_addr.sin6_addr, addrbuf,
		     INET6_ADDRSTRLEN));

    printf("sending message back\n");

    if (sendto(sockfd, MESSAGE, sizeof(MESSAGE), 0,
               (struct sockaddr *)&client_addr,
	       sizeof(client_addr)) < 0) {
      perror("sendto failed");
      exit(5);
    }

  }
  
  return 0;
}
