CXX = gcc
CFLAGS = 

all: tcpserver tcpclient
CLEANFILES = tcpserver tcpserver.o tcpclient tcpclient tcpclient.o 

tcpserver: tcpserver.o 
	$(CXX) $(CFLAGS) -o tcpserver tcpserver.o 

tcpserver.o: tcpserver.c 
	$(CXX) $(CFLAGS) -o tcpserver.o -c tcpserver.c 

tcpclient: tcpclient.o 
	$(CXX) $(CFLAGS) -o tcpclient tcpclient.o 

tcpclient.o: tcpclient.c 
	$(CXX) $(CFLAGS) -o tcpclient.o -c tcpclient.c 

clean :
	rm -f $(CLEANFILES)
