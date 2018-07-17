def do_telnet(Host, username, password, finish, commands):  
    import telnetlib  
    '''''Telnet远程登录：Windows客户端连接Linux服务器'''  
   
    # 连接Telnet服务器  
    tn = telnetlib.Telnet(Host, port=23, timeout=10)  
    tn.set_debuglevel(2)  
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
      
    #执行完毕后，终止Telnet连接（或输入exit退出）  
    tn.read_until(finish.encode())
    tn.read_until(finish.encode()) 
    tn.close() # tn.write('exit\n')  
  
if __name__=='__main__':  
     # 配置选项  
    Host = '192.168.20.135' # Telnet服务器IP  
    username = 'root\n'   # 登录用户名  
    password = '\n'  # 登录密码  
    finish = ':~#'      # 命令提示符  
    commands = ['echo "test"\n']  
    do_telnet(Host, username, password, finish, commands) 