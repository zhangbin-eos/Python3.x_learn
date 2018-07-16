# coding=utf-8
#this is test the Serial Moudles
import  serial
ser=serial.Serial('COM1');#打开串口1
ser.baudrate=115200;
ser.write(b"#model?\r\n");
ser.write(b"#vid 1>1\r\n");
data=ser.readline();
print(data);
input("press enter");
