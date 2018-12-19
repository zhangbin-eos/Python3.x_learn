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
    i=0
    while( 1>0 ):
    	i=i+1;
        crt.Screen.WaitForString('shutting down for system reboot')        
        time.sleep(3);
        crt.Screen.Send('\003')
        crt.Screen.WaitForString('>>>')        
        stri="#-----------------------i="+str(i)+"\r"
        crt.Screen.Send(stri);
        crt.Screen.Send('s nc -u -v -l 192.168.20.127 -p 514 | tee test_log/reset_$(date +%Y%m%d%H%M).log\r');

main()