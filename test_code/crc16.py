
# -*- coding: utf-8 -*-

def crc16(data):
        result = 0
        tempcrc16 = 0
        tempdata = 0
        n = 0
        result = result
        for byte in data:
            result = (result & 0xFFFF)  # 因为Python的int整形数没有最大值，所以需要&上0xffff
            tempcrc16 = (tempcrc16 & 0xFFFF)  # 因为Python的int整形数没有最大值，所以需要&上0xffff
            tempdata = (tempdata & 0xFFFF)  # 因为Python的int整形数没有最大值，所以需要&上0xffff
            tempcrc16 = (((result >> 8) ^ ord(byte)) & 0xffff)
            tempdata = (tempcrc16 << 8)
            tempcrc16 = 0


            for n in range(8):
                if ((tempdata ^ tempcrc16) & 0x8000):
                    tempcrc16 = (((tempcrc16 << 1)) ^ 0x1021)
                else:
                    tempcrc16 = (tempcrc16 << 1)
                tempdata = (tempdata << 1)
            # print(tempcrc16)
            result = ((result << 8) ^ tempcrc16)

        return result
print("0123456789 crc16=",hex(crc16('0123456789')))
#
print("configuration.json crc16=",hex(crc16(open("configuration.json").read())))