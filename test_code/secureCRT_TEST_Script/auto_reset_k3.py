# $language = "python"
# $interface = "1.0"
import time
import os


#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox

def main():
    #向屏幕光标后发送以下文字内容，\r表示回车执行
    while( 1>0 ):
        crt.Screen.WaitForString('EXT-FAN-GEAR')
        crt.Screen.Send('#|#model?|build-date?|version?\r')
        crt.Screen.WaitForString('VERSION')
        crt.Screen.Send('#vid 1>*\r')
        crt.Screen.WaitForString('~01@VID')
        time.sleep(2)
        crt.Screen.Send('#vid 2>*\r')
        crt.Screen.WaitForString('~01@VID')

        crt.Screen.Send('#reset\r')
        
main()

