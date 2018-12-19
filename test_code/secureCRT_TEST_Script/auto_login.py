# $language = "python"
# $interface = "1.0"
import time
import os


#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox

def main():
    device = crt.Screen.WaitForStrings(["Ubuntu","lig-ppc"], 10)
    #crt.Dialog.MessageBox(str(device) ,"debug",BUTTON_OK )
    if device == 1:
        crt.Screen.WaitForString('login:')
        crt.Screen.Send('alex\r')
        
        crt.Screen.WaitForString('Password:')
        crt.Screen.Send('alex\r')
        
    if device == 2:
        crt.Screen.WaitForString('login:')
        crt.Screen.Send('root\r')

        crt.Screen.WaitForString('Password:')
        crt.Screen.Send('123456\r')
        
        if crt.Screen.ReadString('Password:',10) :
            crt.Screen.Send('\r')
main()

