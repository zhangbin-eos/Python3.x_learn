# $language = "python"
# $interface = "1.0"
import time
import os


#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox

def main():
        crt.Screen.WaitForString('Type \'a51ea51e\' entry the boot')
        crt.Screen.Send('a51ea51e\r')
        crt.Screen.WaitForString('Cmd>')

main()

