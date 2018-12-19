# $language = "python"
# $interface = "1.0"
import time

#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox

def main():
    #向屏幕光标后发送以下文字内容，\r表示回车执行
    #while( True ):
    crt.Screen.WaitForString('Hit any key to stop autoboot')
    crt.Screen.Send('\r')
    crt.Screen.WaitForString('=>')

    crt.Screen.Send('setenv ipaddr 192.168.20.135\r')
    crt.Screen.WaitForString('=>')

    crt.Screen.Send('setenv serverip 192.168.20.35\r')
    crt.Screen.WaitForString('=>')

    #crt.Screen.Send('ping 192.168.20.35\r')
    #crt.Screen.WaitForString('is alive')#应该用个判断
    #crt.Screen.WaitForString('=>')
    
    crt.Screen.Send('tftp $kernel_ld_addr $kernel_name;\r')
    crt.Screen.WaitForString('=>')
    time.sleep(1);
    crt.Screen.Send('tftp $fdt_ld_addr $fdt_name;\r')
    crt.Screen.WaitForString('=>')
    time.sleep(1);
    crt.Screen.Send('tftp $ramdisk_ld_addr uRamdisk;\r')
    crt.Screen.WaitForString('=>')

    crt.Screen.Send('setenv bootargs root=/dev/ram rw console=ttyPSC0,115200 ip=${ipaddr}:${serverip}:${gatewayip}:${netmask}:${hostname}:${netdev}:off panic=1 loglevel=9;\r')
    crt.Screen.WaitForString('=>')

    crt.Screen.Send('bootm $kernel_ld_addr $ramdisk_ld_addr $fdt_ld_addr;\r')
        #使用默认弹窗提示信
main()
