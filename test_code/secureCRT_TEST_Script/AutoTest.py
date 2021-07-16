# $language = "python"
# $interface = "1.0"

#func:
#       crt.Screen.Send
#       crt.Screen.WaitForString
#       crt.Dialog.MessageBox
import json
import time
import os
import sys
import logging


def main():

	logger = logging.getLogger()
	logger.setLevel(logging.DEBUG) 
	LogF = logging.FileHandler('F:\\Work_Space\\secureCRT_TEST_Script\\log.txt', mode='w')
	LogF.setLevel(logging.DEBUG)
	formatter = logging.Formatter("%(asctime)s - %(levelname)s: %(message)s")
	LogF.setFormatter(formatter)
	logger.addHandler(LogF)

	#向屏幕光标后发送以下文字内容，\r表示回车执行
	filePath = crt.Dialog.FileOpenDialog("Please select a text file", "Open", "", "K3 Command List(*.json)|*.json||")
	#json.loads() 解码数据->python
	#jsondata 是一个class 'dict'
	with open(filePath, 'r') as Cmdfd :
		CmdData = json.load(Cmdfd)

	result = crt.Dialog.MessageBox("Whether Loop Run ?", "QUESTION", ICON_QUESTION | BUTTON_YESNO | DEFBUTTON1 )
	count = 0
	while True:
		count += 1
		for cmdobj in CmdData:
			crt.Screen.Send(cmdobj["send"])
			logger.debug('send: %s OK', cmdobj["send"].replace('\r',' '))
			if (crt.Screen.WaitForString(cmdobj["rcvd"], cmdobj["timeout"]) != True):

				if( cmdobj.has_key("ignor_error") == True) and (cmdobj["ignor_error"] == True ):
					logger.info ('rcvd "%s" timeout = %d sec,ignor error',cmdobj["rcvd"],cmdobj["timeout"])
					continue
				else :
					logger.error('rcvd "%s" timeout = %d sec',cmdobj["rcvd"],cmdobj["timeout"])
					crt.Dialog.MessageBox("rcvd :" + cmdobj["rcvd"] + " fail!","ERROR",ICON_STOP)
					LogF.close() 
					return
			logger.debug('rcvd "%s" OK',cmdobj["rcvd"])
			logger.debug('will wait: %d sec', cmdobj["wait"])
			time.sleep(cmdobj["wait"])
		if result == IDNO:
			LogF.close() 
	 		return

	 	logger.debug('Loop %d', count)

main()
crt.Dialog.MessageBox("run over!","INFO",ICON_INFO)
