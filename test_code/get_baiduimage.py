#!/usr/bin/python
# coding:utf-8
# 实现一个简单的爬虫，爬取百度贴吧图片
# import urllib
import urllib.request

import re

urllib=urllib.request

# 根据url获取网页html内容
def getHtmlContent(url):
    page = urllib.urlopen(url)
    return page.read()

# 从html中解析出所有jpg图片的url
# 百度贴吧html中jpg图片的url格式为：<img ... src="XXX.jpg" width=...>
def getJPGs(html):
    # 解析jpg图片url的正则
    jpgReg = re.compile(r'<img.+?src="(.+?\.jpg)" width')  # 注：这里最后加一个'width'是为了提高匹配精确度
    # 解析出jpg的url列表
    print("getJPGs :"+jpgReg);
    jpgs = re.findall(jpgReg,html.decode('utf-8'))
    
    return jpgs

# 用图片url下载图片并保存成制定文件名
def downloadJPG(imgUrl,fileName):
    urllib.urlretrieve(imgUrl,fileName)
    
# 批量下载图片，默认保存到当前目录下
def batchDownloadJPGs(imgUrls,path = './'):
    # 用于给图片命名
    count = 1
    for url in imgUrls:
        #downloadJPG(url,''.join([path,'{0}.jpg'.format(count)]))
        count = count + 1

# 封装：从百度贴吧网页下载图片
def download(url):
    print("download url:"+url);
    
    html = getHtmlContent(url)

    open();
    print("download html:" + html.decode('utf-8'));
    
    jpgs = getJPGs(html)
    batchDownloadJPGs(jpgs)
    
def main():
    url = 'http://tieba.baidu.com/p/2256306796'
    download(url)
    
if __name__ == '__main__':
    main()
