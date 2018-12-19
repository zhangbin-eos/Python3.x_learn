# $language = "python"
# $interface = "1.0"
import time
import os
import sys
import random
#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox
#       

def randomIP():
    ip = [ 192,168,20,
    	random.randint(60, 100) ]
    return '.'.join(map(lambda x: "%d" % x, ip))


def randomMAC():
    mac = [ 0x00,0x50,0x56,
        random.randint(0x00, 0xFF),
        random.randint(0x00, 0xFF),
        random.randint(0x00, 0xFF) ]
    return ':'.join(map(lambda x: "%02X" % x, mac))

def main():

    while( True ):
        
        crt.Screen.WaitForString('Hit any key to stop autoboot')
        crt.Screen.Send('\r')
        crt.Screen.WaitForString('=>')

        crt.Screen.Send('setenv ipaddr '+randomIP()+'\r')
        crt.Screen.WaitForString('=>')
        time.sleep(0.5)
        crt.Screen.Send('setenv serverip 192.168.20.35\r')
        crt.Screen.WaitForString('=>')
        time.sleep(0.5)

        #crt.Screen.Send('setenv ethaddr '+randomMAC()+'\r')
        #crt.Screen.WaitForString('=>')
        
        crt.Screen.Send('run up_k\r')
        crt.Screen.WaitForString('=>')
        time.sleep(0.5)
        crt.Screen.Send('reset\r')

        crt.Screen.WaitForString('login:')
        crt.Screen.Send('root\r')
        crt.Screen.WaitForString('Password:')
        crt.Screen.Send('123456\r')
        crt.Screen.WaitForString('~#')
        crt.Screen.Send(' uname -a\r')
main()

