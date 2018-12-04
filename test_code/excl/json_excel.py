
# -*- coding: utf-8 -*-
import xlwt
import xlrd
import json
excl_name='metadata.xlsx'
workbook = xlwt.Workbook(encoding = 'ascii')
worksheet = workbook.add_sheet('My Worksheet')

#==========================================
with open("excel_title.json",'r') as load_f:
    excel_title_dict = json.load(load_f)

print(excel_title_dict)

for key,value in excel_title_dict.items():
    col=worksheet.col(value["col"])
    if "col-wth" in value:
        col.width=256*value["col-wth"]
    else:
        col.width=256*len(value["comment"])
    style = xlwt.easyxf('align: wrap on')
    worksheet.write(value["row"],
                    value["col"],
                    value["comment"],style)

#==========================================
    
with open("metadata.json",'r') as load_f:
    metadata_dict = json.load(load_f)

# 需要一个字典迭代
# 字典的键值为key
for key,index in zip(metadata_dict,range(len(metadata_dict))):
    print("index=",index,"key=",key);
    worksheet.write(index+1+excel_title_dict["key"]["row"],
                    excel_title_dict["key"]["col"],
                    label = key )
    #是否有xxxx_key,
    #如果有写到write(index+1,excl_title[0]["index"], label = key )
    style = xlwt.easyxf('align: wrap on')
    for title,value in excel_title_dict.items():
        if title in metadata_dict[key]:
            worksheet.write(index+1+value["row"],
                            value["col"],
                            json.dumps(metadata_dict[key][title]),style)
            
print(len(metadata_dict))

workbook.save('Excel_Workbook.xls')
