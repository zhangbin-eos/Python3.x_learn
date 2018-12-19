# $language = "python"
# $interface = "1.0"

#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox

def main():
    #向屏幕光标后发送以下文字内容，\r表示回车执行
    crt.Screen.Send('#LOAD\r')
    crt.Screen.WaitForString('~01@LOAD ERR 003\r\n')
    
    crt.Screen.Send('#LOAD 123\r')
    crt.Screen.WaitForString('~01@LOAD ERR 003\r\n')

    crt.Screen.Send('#LOAD teset,123\r')
    crt.Screen.WaitForString('~01@LOAD ERR 003\r\n')

    crt.Screen.Send('#LOAD test.kmpt,100\r')
    crt.Screen.WaitForString('~01@LOAD TEST.KMPT,100 READY\r\n')

    crt.Screen.Send(b'#LOAD test.kmpt,100\r')
    
    #使用默认弹窗提示信息
    crt.Dialog.MessageBox('ok!')


main()
