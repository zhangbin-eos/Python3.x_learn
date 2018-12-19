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
    i=1
    while( 1>0 ):
        crt.Screen.Send('#\r')
        crt.Screen.WaitForString('~01@ OK')

        crt.Screen.Send('#|#model?|build-date?|version?\r')
        crt.Screen.WaitForString('VERSION')

       
        crt.Screen.Send('#EXT-DEF-VIDIN? *\r')
        crt.Screen.WaitForString('~01@EXT-DEF-VIDIN')


        crt.Screen.Send('#EXT-DEF-VIDIN *,3\r')
        crt.Screen.WaitForString('~01@EXT-DEF-VIDIN')


        crt.Screen.Send('#factory\r')
        crt.Screen.WaitForString('Kramer Electronics')
        

        crt.Screen.Send('#EXT-DEF-VIDIN 27,1\r')
        crt.Screen.Send('#EXT-DEF-VIDIN 28,2\r')
        
        crt.Screen.Send('#\r')
        crt.Screen.WaitForString('~01@ OK')

        crt.Screen.Send('#factory\r')
        crt.Screen.WaitForString('Kramer Electronics')

        #crt.Screen.Send('#\r')
        #crt.Screen.WaitForString('~01@ OK')

        #crt.Screen.Send('#EXT-DEF-VIDIN *,4\r')
        #crt.Screen.WaitForString('~01@EXT-DEF-VIDIN')

        #crt.Screen.Send('#factory\r')
        #crt.Screen.WaitForString('Kramer Electronics')
main()

