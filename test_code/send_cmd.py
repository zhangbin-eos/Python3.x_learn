import json
import serial
import  time

#json.loads() 解码数据->python
#jsondata 是一个class 'dict'
data = open('send_cmd.json').read()
jsondata = json.loads(data)
key_list=list(jsondata)


#open seral
ser=serial.Serial('COM6');#打开串口1
ser.baudrate=115200;
ser.timeout=3; 
ser.inter_byte_timeout=0.5;


if  not "command" in key_list :
    print("no command key")

cmdtotal=len(jsondata["command"])

print("command size =",cmdtotal)
cnt=0

while cnt < cmdtotal:
    
    senddata=jsondata["command"][cnt]["sendcmd"];
    recvcmd =jsondata["command"][cnt]["recvcmd"];

    ser.write(senddata.encode());
    #time.sleep(jsondata["command"][cnt]["wait"])
    readdata=str(ser.read_until(recvcmd),"utf-8")

    if recvcmd in readdata :
        print("ok ","send :",senddata,"read :",readdata)
    else :
        print("fail ","send :",senddata,"read :",readdata)
    cnt=cnt+1
ser.close();
input('entry ');