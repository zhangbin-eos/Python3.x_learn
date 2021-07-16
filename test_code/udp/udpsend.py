import socket
#创建socket对象
#SOCK_DGRAM    udp模式
__udp=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
#发送数据 字节

__udp.sendto(b"\xAA\x8E\x42\x00\x1D\xF1\xF1\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x01\x04\x02\x08\x55\x71\xBD",("192.168.20.135",50000))

print(__udp.recv(1500))

__udp.close()

getchar()