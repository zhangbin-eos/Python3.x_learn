import socket
import sys


UdpSocket=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
while True:
	UdpSocket.sendto(sys.stdin.readline(),("192.168.20.35",5678));

UdpSocket.close()
