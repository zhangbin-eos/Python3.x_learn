# coding=utf-8
#this is test the Serial Moudles
import  serial
import  time
ser=serial.Serial('COM6');#打开串口1
ser.baudrate=115200;
ser.timeout=3; print(ser.timeout);
ser.inter_byte_timeout=0.5; print(ser.inter_byte_timeout);
print(ser);

ser.write(b"#model?\r\n");
print(ser.read_until());

i=1
while i <= 34 :
    if i < 17 :
        io=0
    else :
        io=1
    
    write_data='#EXT-PORT-DIR 1,'+ str(i) + ',' + str(io) + '\r\n'
    ser.write(write_data.encode());
    read_data=ser.read_until();
    print(read_data)
    i=i+1;
ser.read_all()

ser.write(b"#vid 1>*\r\n");
print(ser.read_until());
time.sleep(5)
ser.write(b"#vid 2>*\r\n");
print(ser.read_until());

ser.close();
