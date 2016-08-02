#Socket Server
import socket
host = ''        # Symbolic name meaning all available interfaces
port = 12346     # Arbitrary non-privileged port

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #Create a socket with ipv4 address family and TCP
s.bind((host, port)) #bind the Socket to the specified port
s.listen(1) 
conn, addr = s.accept() # Accept the incoming Connections
print('Connected by', addr)
while True:
    data = conn.recv(1024) # Store the received data in variable
    if not data: break
    conn.sendall(data) #Echo the Received Data
conn.close() 