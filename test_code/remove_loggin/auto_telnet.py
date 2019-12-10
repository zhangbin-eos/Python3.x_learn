import telnetlib
import sys

def do_telnet(Host, username, password, finish, commands):  

    tn = telnetlib.Telnet(Host, port=23, timeout=10)  
    tn.set_debuglevel(0)  
    
    tn.read_until(b'ogin:')  
    tn.write(username.encode())  

    tn.read_until(b'assword:')  
    tn.write(password.encode())  

    print(tn.read_until(finish.encode()).decode())
    for command in commands:
        tn.write(command.encode())
        print(tn.read_until(finish.encode()).decode())
        
    tn.close() # tn.write('exit\n')  
  
if __name__=='__main__':
    if len(sys.argv)<3:
        print("Usage:",sys.argv[0],"[serverip]")
        sys.exit();
    
    Host =  sys.argv[1] 
    username = 'root\n'  
    password = '123456\n'    

    

    sys.exit();
