import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
addr = ('0.0.0.0', 3480)
sock.bind(addr)

msg = sock.recvfrom(512)
print("received:", msg)
