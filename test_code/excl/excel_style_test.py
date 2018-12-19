
# -*- coding: utf-8 -*-
import xlwt
import xlrd
import json
excl_name='Style_test.xls'
workbook = xlwt.Workbook(encoding = 'ascii')
worksheet = workbook.add_sheet('style')

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


for key,value in excel_title_dict.items():
    col=worksheet.col(value["col"])
    if "col-wth" in value:
        col.width=256*value["col-wth"]
    else:
        col.width=256*len(value["comment"])
    style = xlwt.easyxf('align: wrap on')
    worksheet.write(value["row"]+1,
                    value["col"],
                    value["comment"],style)


for key,value in excel_title_dict.items():
    col=worksheet.col(value["col"])
    if "col-wth" in value:
        col.width=256*value["col-wth"]
    else:
        col.width=256*len(value["comment"])
    style = xlwt.easyxf('align: wrap on')
    style.pattern.pattern_back_colour=1
    worksheet.write(value["row"]+2,
                    value["col"],
                    value["comment"],style)

style = xlwt.easyxf('align: wrap on')
help(style.pattern)
help(style.pattern.pattern_back_colour)
print(style)

workbook.save(excl_name)
