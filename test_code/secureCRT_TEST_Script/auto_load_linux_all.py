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
def randomIP():
    ip = [ 192,168,1,
    	random.randint(1, 99) ]
    return '.'.join(map(lambda x: "%d" % x, ip))


def randomMAC():
    mac = [ 0x00,0x50,0x56,
        random.randint(0x00, 0xFF),
        random.randint(0x00, 0xFF),
        random.randint(0x00, 0xFF) ]
    return ':'.join(map(lambda x: "%02X" % x, mac))

serverip = '192.168.1.100'

def main():
    #向屏幕光标后发送以下文字内容，\r表示回车执行
    while( True ):
        crt.Screen.WaitForString('Hit any key to stop autoboot')
        crt.Screen.Send('\r')
        crt.Screen.WaitForString('=>')

        time.sleep( 0.5 )

        #crt.Screen.Send('setenv ethaddr '+randomMAC()+'\r')
        #crt.Screen.WaitForString('=>')
        crt.Screen.Send('setenv ipaddr '+randomIP()+'\r')
        crt.Screen.WaitForString('=>')
        crt.Screen.Send('setenv serverip '+serverip+'\r')
        crt.Screen.WaitForString('=>')

        crt.Screen.Send('run up_uboot\r')
        crt.Screen.WaitForString('=>')

        crt.Screen.Send('reset\r')

        crt.Screen.WaitForString('Hit any key to stop autoboot')
        crt.Screen.Send('\r')
        crt.Screen.WaitForString('=>')
        
        #crt.Screen.Send('setenv ethaddr '+randomMAC()+'\r')
        #crt.Screen.WaitForString('=>')
        
        crt.Screen.Send('setenv ipaddr '+randomIP()+'\r')
        crt.Screen.WaitForString('=>')
        
        crt.Screen.Send('setenv serverip '+serverip+'\r')
        crt.Screen.WaitForString('=>')
        
        crt.Screen.Send('ping 192.168.1.100\r')
        crt.Screen.WaitForString('is alive')#应该用个判断

        crt.Screen.Send('run upall\r')    
        time.sleep( 5 )
        #检查几个文件的传输
        #        
        crt.Screen.WaitForString('=>')
        crt.Screen.Send('reset\r')    
        time.sleep( 5 )
        crt.Screen.WaitForString('lig-ppc login:')
        crt.Screen.Send('root\r')
        crt.Screen.WaitForString('Password:')
        crt.Screen.Send('123456\r')

        crt.Screen.WaitForString('root@lig-ppc:~#')
        crt.Screen.Send(' uname -a\r')


main()
