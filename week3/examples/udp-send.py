import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
addr = ('10.97.77.44', 5000)

sock.sendto("hi!!!".encode('utf8'), addr)
