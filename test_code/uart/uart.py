# coding=utf-8
#this is test the Serial Moudles
import  serial
import  time
import sys

if __name__=='__main__':
	if len(sys.argv)<3:
		print("Usage:",sys.argv[0],"[serial] [serverip] ")
		print("Such as: ",sys.argv[0]," COM4 192.168.20.135 ")
		sys.exit();

	devname  =  sys.argv[1] 
	serverip =  sys.argv[2] 
	username = 'root\n'  
	password = '123456\n'	

	ser=serial.Serial(devname);
	ser.baudrate=115200;
	ser.timeout=10; 
	ser.inter_byte_timeout=0.5; 

	print(ser.read_until(b'Hit any key to stop autoboot'));
	#time.sleep(5)
	# ser.write(write_data.encode());
	#
	ser.close();
	sys.exit();