# $language = "python"
# $interface = "1.0"
import time
import os
import sys

#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox
#       
import random
def randomMAC():
    mac = [ 0x00,0x50,0x56,
    	random.randint(0x00, 0xFF),
        random.randint(0x00, 0xFF),
        random.randint(0x00, 0xFF) ]
    return '-'.join(map(lambda x: "%02x" % x, mac))

#if __name__ == "__main__":
#向屏幕光标后发送以下文字内容，\r表示回车执行
#while( 1>0 ):
crt.Screen.Send('#\r')
crt.Screen.WaitForString('~01@ OK')

#net-ip?|eth-port? udp|eth-port? tcp|net-mac?\r
#net-ip 192.168.20.135\r
crt.Screen.Send('#net-ip?|eth-port? udp|eth-port? tcp|net-mac?\r')
crt.Screen.WaitForString('~01@')

time.sleep(0.5)

crt.Screen.Send('#net-ip 192.168.20.135\r')
crt.Screen.WaitForString('~01@')

crt.Screen.Send('#eth-port tcp,5000\r')
crt.Screen.WaitForString('~01@')

crt.Screen.Send('#eth-port udp,50000\r')
crt.Screen.WaitForString('~01@')

#create mac
mac=randomMAC()
command='#fct-mac '+mac+'\r';
#crt.Dialog.MessageBox(command)

crt.Screen.Send(command)
crt.Screen.WaitForString('~01@')
