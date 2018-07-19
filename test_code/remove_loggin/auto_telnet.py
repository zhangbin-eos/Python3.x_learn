import telnetlib
import sys

def do_telnet(Host, username, password, finish, commands):  

    '''''Telnet远程登录：Windows客户端连接Linux服务器'''  

    # 连接Telnet服务器  
    tn = telnetlib.Telnet(Host, port=23, timeout=10)  
    tn.set_debuglevel(0)  
    # 输入登录用户名  
    tn.read_until(b'ogin:')  
    tn.write(username.encode())  

    # 输入登录密码  
    tn.read_until(b'assword:')  
    tn.write(password.encode())  

    # 登录完毕后执行命令  
    tn.read_until(finish.encode())  
    for command in commands:  
        tn.write(command.encode())
        
    tn.read_until(finish.encode())  
    #执行完毕后，终止Telnet连接（或输入exit退出）  
    tn.close() # tn.write('exit\n')  
  
if __name__=='__main__':
    # 配置选项
    if len(sys.argv)<3:
        print("Usage:",sys.argv[0],"[ip] [cmdfile]")
        sys.exit();
    
    Host =  sys.argv[1]# Telnet服务器IP  
    username = 'root\n'   # 登录用户名  
    password = '\n'  # 登录密码  
    finish = ':~#'      # 命令提示符
    #read cmd shell file
    commands = ['echo "test"\n','ls -l / \n']  

    do_telnet(Host, username, password, finish, commands) 
    sys.exit();