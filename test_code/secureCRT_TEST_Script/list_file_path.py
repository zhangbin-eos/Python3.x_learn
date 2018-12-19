import os

rootdir = 'F:\\nfsroot\\tftpboot\\'
list = os.listdir(rootdir) #列出文件夹下所有的目录与文件
print(list)
for i in range(0,len(list)):
    if list[i][-3:]=='.ko':
        print(list[i])

    
