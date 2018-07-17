import json

data = open('CONFIGURATION.json').read()

#json.loads() 解码数据->python
#jsondata 是一个class 'dict'
jsondata = json.loads(data)

print(jsondata['value'])

print("jsondata obj=",jsondata)
print("jsondata list=",list(jsondata['value']))
print("jsondata len=",len(jsondata['value']))
print("jsondata data=",jsondata['value'][0])