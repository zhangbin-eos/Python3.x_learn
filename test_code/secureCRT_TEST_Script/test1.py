# $language = "python"
# $interface = "1.0"

#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox

def main():
    #向屏幕光标后发送以下文字内容，\r表示回车执行
    crt.Screen.Send('echo "hello world!"\r')
    
    

    #使用默认弹窗提示信息
    crt.Dialog.MessageBox('hello world!')


main()
