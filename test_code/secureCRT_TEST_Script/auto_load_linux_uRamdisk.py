# $language = "python"
# $interface = "1.0"
import time

#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox

def main():
    #向屏幕光标后发送以下文字内容，\r表示回车执行
    while( 1>0 ):
        crt.Screen.WaitForString('Hit any key to stop autoboot')
        crt.Screen.Send('\r')
        crt.Screen.WaitForString('=>')
        #time.sleep( 10 )

        crt.Screen.Send('reset\r')

        
        crt.Screen.WaitForString('Hit any key to stop autoboot')
        crt.Screen.Send('\r')
        crt.Screen.WaitForString('=>')

        crt.Screen.Send('setenv ipaddr 192.168.20.135\r')
        crt.Screen.WaitForString('=>')
        
        crt.Screen.Send('setenv serverip 192.168.20.35\r')
        crt.Screen.WaitForString('=>')
        
        crt.Screen.Send('ping 192.168.20.35\r')
        crt.Screen.WaitForString('is alive')#应该用个判断

        crt.Screen.Send('run up_fs\r')

        #检查几个文件的传输
        #
        
        crt.Screen.WaitForString('=>')

        #使用默认弹窗提示信息
        crt.Dialog.MessageBox('ok!')


main()
