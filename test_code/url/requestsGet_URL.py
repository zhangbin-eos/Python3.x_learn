# -*- coding: utf-8 -*-
# @Author: zb
# @Date:   2020-12-23 14:22:04
# @Last Modified by:   zhangbin.eos@foxmail.com
# @Last Modified time: 2021-07-08 09:51:07
import sys
import os
import json
import requests
from threading import Thread

def GetPreview(IP,MAC):
	url='http://'+ IP + '/cgi-bin/query.cgi';
	url=url+'?'+'cache=false&wrap_type=single_line&cmd=echo+bmp+160+1+%3E+%2Fdev%2Fvideoip+%26%26+cat+%2Fdev%2Fvideoip+%3E+%2Fwww%2Fcapture.bmp';
	res=requests.get(url);
	if res.status_code != 200:
		return
	url='http://'+ IP + '/capture.bmp';
	res=requests.get(url);
	# mkdir MAC
	# touch newfile capture.bmp
	path='./'+MAC+'/';
	if not os.path.exists(path):
		os.mkdir(path);
	fd=open(path+'capture.bmp','wb+');
	fd.write(res.content);
	fd.close();


if __name__ == '__main__':
	url='http://192.168.20.223/api';
	res=requests.get(url);
	jsondata = json.loads(res.text);

	for i in range(0,len(jsondata)):
		print(jsondata[i]['MY_IP'],jsondata[i]['MY_MAC'],jsondata[i]['HOSTNAME']);
		t = Thread(target=GetPreview, args=(jsondata[i]['MY_IP'],jsondata[i]['MY_MAC'],));
		t.start();
