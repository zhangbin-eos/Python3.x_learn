# -*- coding: utf-8 -*-
# @Author: zb
# @Date:   2020-12-23 14:22:04
# @Last Modified by:   zhangbin.eos@foxmail.com
# @Last Modified time: 2021-07-16 09:28:13
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
	headers={"PRIVATE-TOKEN": "cyWQk9EycaThrAZn7idc"};
	url='http://192.168.20.39/api/v4/';

	res=requests.get(url+'groups',headers=headers);

	#print(res.json());
	jsondata = res.json();

	for i in range(0,len(jsondata)):
		print(jsondata[i]['id'],jsondata[i]['name']);

	