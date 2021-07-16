				  
/****************************************************************************
 *   Beijing Liguo Tech. Co,.Ltd  R&D Software Department.
 *   Project: K3000.c
 *
 *   Description:
 *     KRAMER 3000格式，队列处理及通讯命令接收处理模块
 *
 *     This mode only be valid for Kramer Device.
 *
****************************************************************************/

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
//#include "lig_webserver.h"
#include "liguoNetapp.h"

#include "lig_types.h"
#include "lig_platform.h"

#include "main.h"
#include "K3000.h"

#include "App_cec.h"
#include "CEC_IO.h"

extern const uint8_t ASCII_CODE_VERSION[];
extern const uint8_t ASCII_PROTOCOL_VER[];
//extern const uint8_t ASCII_FPGA_VER[];

//局部变量区声明:对不同的端口需要不同的保存状态,故需要数组模式    
uint8_t KR3000_Len[MAX_COM_PORT_NUM+1];     //命令长度,不包括'#'

//由于KR3000命令存在PACKET包的发送模式，并根据KRAMER命令状态模式的定义.
#define NORMAL_MODE      0
//非NORMAL_MODE 有好几中可能,这里涉及的是EDID数据接收等待模式																 
#define EDID_DATA_MODE   1															 
#define FILE_UPLOADMODE   2	
 
//顺序必须跟.h文件里的枚举对应，特别是删除的命令一定要同时删除索引和枚举，因为BACK_Cmd_Name()函数用了枚举值当索引号码
//新添加命令时按照字母排序，相同字母的按照命令长短排序
//zyq: 按照命令字母排序可以有效的防止出现相同命令字母的情况！
//zyq: 字符串的长度不超过29个，因为定义的字长属性值=30，为了给结束符留一个位置，所以字符串的长度不超过29个。

const tagKR3000Cell KR3000_SETUP_TAB[]=
{
//    {PROT_COMMAND_GET_BUILD_DATE,           "BUILD-DATE?", PER_USER, 1}, //11
    
    {PROT_COMMAND_SET_LIG_IN_ARC, "EXT-IN-ARC", PER_USER, 1},	//ARC使能1，端口号：从1开始，状态：1打开0关闭
    
///------------------------
    {PROT_CEC,              "CEC",PER_USER,0}, 			//接收K3000格式的CEC消息，并通过CEC信号线发送给某个设备
    {PROT_GET_CEC_LIST,     "CEC-LIST?",PER_USER,0}, 	//获取某个端口所连接的CEC设备的逻辑地址
    {PROT_CEC_BYPASS,     "CEC-BYPASS",PER_USER,0}, 	//接收到CEC消息后，通过网口发送出去

	{PROT_CEC_GET_IP,      "CEC-IP",PER_USER,0},        //得到CEC直通时的IP   //wyf 2017/9/25


    {PROT_END_NO_COMMAND,"END-TABLE",PER_USER,0}
    /////////////////////////
};


///////////////////////////////////////////////////////////////////////////////////////////////

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
//struct DATA_SEND_PACKET
//{
//    uint8_t cmdId;
//    uint16_t para1;
//    uint16_t para2;
//    
//    uint8_t *pData;
//    uint16_t packCount;
//    uint16_t packMax;
//	uint8_t rm_ip[4];
//	uint16_t rm_port;
//};

//static struct DATA_SEND_PACKET SEDN_PACKET_PROPERTY[MAX_COM_PORT_NUM+1];
                                        
//以给输入口写入EDID数据为基准,以K3000为基准
struct COMPORT_PROPERTY 		  
{	
    uint8_t GET_DATA_MODE;
                  //=NORMAL_MODE：正常的按照标准格式接收数据.
                  //=EDID_DATA_MODE: K3000等待EDID数据接收模式.
    uint8_t GET_DATA_COUNT;
                  //一般指NOT_BUSY, NORMAL_MODE状态下处理指令时从队列中读取数据的个数
    uint32_t TIME_OUT;
                  //一般指等待一条指令接收是否超时
    //为了处理方便,将EDID操作用到的几个特殊变量移到这里							
    uint16_t BLOCK_NUMS;	   //几块数据?不同功能可以不同使用
    uint32_t DATA_NUMS;	   //多少个数据?    
    
		uint8_t CMD_INDEX;     
		              //一般指IN_BUSY状态下的指令号
    uint8_t IOMARK;        
              //一般指IN_BUSY状态下的输入还是输出标志
              //=0:是输出
              //非0:是输入    
    uint8_t PORT_INDEX;   //哪个端口
                                //一般指IN_BUSY状态下要操作的那个端口
                                //从0开始
                                //为了处理方便,将EDID操作用到的几个特殊变量移到这里
    uint8_t SAFEMODE;
    uint32_t DATA_LEN;
    
    uint8_t FILE_OVERLAP;

    uint8_t K3000_VER;
};
	
static struct COMPORT_PROPERTY ucComStatu[MAX_COM_PORT_NUM+1]; 

//wyf 2017/9/25
struct CEC_IP{
	uint8_t  ip[4];
	uint16_t ip_port;
};

static struct CEC_IP cec_bypass_ip;
unsigned char CEC_MODE=CEC_MODE_NOMAL;
//end wyf

//有些指令需要分包处理,这组数据是需要特殊处理分包的指令		
//struct DATA_PACKET_PROPERTY 		  
//{	
//    uint8_t IS_MORE_PACKET; //是否还有后续包?	
//    uint8_t PACKET_HEADER;  //后续包的帧头
//    uint32_t DATA_COUNT;		  //后续包的数据个数
//};

//static struct DATA_PACKET_PROPERTY  DataPacket[MAX_COM_PORT_NUM+1];

#define MAX_INSTUCTION_LEN 32
static uint8_t ucDataBUF[MAX_COM_PORT_NUM][MAX_INSTUCTION_LEN];
 		
//一个设备还有多个通讯端口在使用K3000协议通讯,但一次只有一个端口收到完整的待处理指令.																 
//只有收到完整的命令之后处理才用到的变量,故模块中只需要一个,而不需要和通讯端口号匹配        //
//The following is for a whole instrucion.
static uint8_t ucINDEX_DEV_ID;           //设备K3000的ID
static uint8_t ucLEN_DEV_ID;             //0 means there isn't address in string.
static uint8_t ucLEN_CMD;               //命令字符串的长度
static uint8_t ucPOS_PIP;               //一条命令中'|'的位置，没有'|'时为命令结束的位置.
static uint8_t ucStartPOS_CMD;          //一条命令中开始的位置
 
//A temp buffer for this module
#define MAX_TEMP_BUF_LEN 30
static uint8_t ucTempBUF[MAX_TEMP_BUF_LEN];   //开一个全局变量数组，当指针用。因为指针没搞懂。

static uint8_t ARM_strpos(uint8_t uStart, uint8_t uEnd, uint8_t *uStrBUF, uint8_t uChar);
static uint32_t ARM_atoi(uint8_t uStart, uint8_t uEnd, uint8_t *uStrBUF);
static int ARM_strncmp(uint8_t *uSrcBUF,const char *uDesBUF,uint8_t uLength);


//wyf 2017/9/25
static uint8_t CEC_CheckIPValid(uint8_t p1,uint8_t p2,uint8_t p3,uint8_t p4,uint16_t p5) //wyf add unsigned char IP_OR_GATE 2017-4-27
{
    if (p1==127)
        return 0;
    if (p1==255)
        return 0;
    if (p1==255 &&p2==255 &&  p3==0 && p4==0)
        return 0;
    if (p1==255 && p2==255 &&  p3==255 && p4==0)
        return 0;
    if (p1==255 && p2==255 &&  p3==255 && p4==255)
        return 0;
    if (p1==0 && p2==0 &&  p3==0 && p4==0)
        return 0;
    if (p1>223)
        return 0;
	if(p1==siiAppInstanceCon[ 0 ].lignetconfig.IpAddress[0] && p2==siiAppInstanceCon[ 0 ].lignetconfig.IpAddress[1]&&
		p3==siiAppInstanceCon[ 0 ].lignetconfig.IpAddress[2]&& p4==siiAppInstanceCon[ 0 ].lignetconfig.IpAddress[3])
		return 0;
    return 1;
}
//end wyf


/*****************************************************************************
 * Private functions
 ****************************************************************************/  
/********************************************************************************
 **  transfer some APIs to Functions. Because ARM does not support these APIs.
 ******************************************************************
 **	 "Strpos" -- check the first position of a char in an string.		
 **
 **	 Input elements:  uStart,uEnd,uBUF[],uChar
 **  Output element:  pos, 0xFF(Err)									  
 ******************************************************************
 **	 "atoi" -- Convert strings to integer.		
 **
 **	 Input elements:  uStart,uEnd,uBUF[]
 **  Output element:  uVal									  
 ******************************************************************
 **	 "strlen" -- count the length of a string.		
 **
 **	 Input elements:  uBUF[]
 **  Output element:  uVal										  
 ******************************************************************
 **	 "strncmp" -- Compare characters of two strings.	
 **
 **	 Input elements:  uSrcBUF[],uDesBUF[],length
 **  Output element:  uResult	 (=0:same, <0:uDesBUF less than uTerBUF, >0:uDesBUF greater than uTerBUF)
********************************************************************************/

static uint8_t ARM_strpos(uint8_t uStart, uint8_t uEnd, uint8_t *uStrBUF, uint8_t uChar)
{
    uint8_t n=0;
    for (n=uStart; n<=uEnd; n++)
    {
        if (!(*uStrBUF))
            break;

        if (uStrBUF[n]==uChar)
        {
            n -= uStart;
            return n;
        }
    }
    return 0xFF;
}
static uint32_t ARM_atoi(uint8_t uStart, uint8_t uEnd, uint8_t *uStrBUF)
{
    uint8_t n=0,uFlag=0;
    uint32_t uVal=0x00000000;

    for (n=uStart; n<=uEnd; n++)
    {
        if (!(*uStrBUF))
		{
			 break;
		}

        if ((uStrBUF[n]>=0x30)&&(uStrBUF[n]<=0x39))
        {
            uVal = uVal*10+uStrBUF[n]-0x30;
            uFlag = 0x01;
        }
        else
        {	 
            if (uFlag)
			{
				 break;
			}
        }
    }
    return uVal;
}

static uint8_t uppercase(uint8_t c)
{
    if (c>='a' && c<='z')
    {
        c=c-32;
    }
    return c;
}

static int ARM_strncmp(uint8_t *uSrcBUF,const char *uDesBUF,uint8_t uLength)
{   
    if (uLength == 0)
        return 0;
    while ((*uSrcBUF) && (uppercase(*uSrcBUF) == uppercase(*uDesBUF)))
    {
        uSrcBUF++;
        uDesBUF++;
        uLength--;
    }
    return uLength;
}


//static uint8_t Parse_String(uint8_t ucPort,uint8_t DBegin,uint8_t DFinish)
//{
//    #define MAX_NUMBER      8
//    #define MAX_ASTERISK    1
//    #define MAX_DISCONNECT  1
//    #define BIT_NUMBER      0x01
//    #define BIT_ASTERISK    0x02
//    #define BIT_DOUBLEPLUS  0x04
//    #define BIT_DOUBLEMINUS 0x08
//    #define BIT_DATAINVALID 0x10
//    #define BIT_OVERFLOW    0x20
//    #define BIT_DISCONNECT  0x40

//    // ucFLAG:  Bit7  bit6  bit5  bit4  bit3  bit2  bit1  bit0
//    // Mark:     --    --    |     |     |     |     |    number
//    //                 |     |     |     |     |    all-output
//    //                 |     |     |     |    ++
//    //                 |     |     |    --
//    //                 |     |    data-invalid
//    //                 |    number-overflow
//    //                Disconnect
//    uint8_t ucINDEX_PLUS=0,ucINDEX_MINUS=0,ucINDEX_ASTERISK=0,ucINDEX_DISCONNECT=0;
//    uint8_t ucVal=0;
//    uint8_t DataCount=0,Flag_CHAR=0;
//    uint8_t Flag_Space=0;   //数据之间不能有'space',否则认为数据错
//    //uint8_t Flag_Sign=0;    //+-号标记 bit[0-1]标识出现+次数，bit[2-3]标识标识出现-次数
//    uint8_t nVal=0;

//    for(nVal=DBegin;nVal<=DFinish;nVal++)
//    {
//        if(ucDataBUF[ucPort][nVal]==' ')
//        {
//            if((ucVal!=0)||(Flag_CHAR==1)) //有数据了出现空格
//                Flag_Space=1;
//        }else
//        {
//        if(Flag_Space==1)
//        { ucVal=BIT_DATAINVALID; break; }

//        Flag_CHAR=1;

//        if((ucDataBUF[ucPort][nVal]>='0')&&(ucDataBUF[ucPort][nVal]<='9'))
//        {
//            if ((ucVal&(~BIT_NUMBER))!=0x00)        //存在不是数字的字符
//            { ucVal=BIT_DATAINVALID;   break; }

//            DataCount++;
//            if(DataCount>MAX_NUMBER)              //数据个数超过3超过9999了
//            { ucVal=BIT_OVERFLOW;   break; }

//            ucVal|=BIT_NUMBER;
//        }
//        else if(ucDataBUF[ucPort][nVal]=='*')
//        {
//            if ((ucVal&(~BIT_ASTERISK))!=0x00)        //存在不是'*'的字符
//            { ucVal=BIT_DATAINVALID;  break; }

//            ucINDEX_ASTERISK++;
//            if(ucINDEX_ASTERISK>MAX_ASTERISK)       //'*'号个数超过1个
//            { ucVal=BIT_DATAINVALID;  break; }

//            ucVal|=BIT_ASTERISK;
//        }
//        else if((ucDataBUF[ucPort][nVal]=='x') || (ucDataBUF[ucPort][nVal]=='X'))
//        {
//            if ((ucVal&(~BIT_DISCONNECT))!=0x00)        //存在不是'x'的字符
//            { ucVal=BIT_DATAINVALID;  break; }

//            ucINDEX_DISCONNECT++;
//            if(ucINDEX_DISCONNECT>MAX_DISCONNECT)       //'x'号个数超过1个
//            { ucVal=BIT_DATAINVALID;  break; }

//            ucVal|=BIT_DISCONNECT;
//        }
//        else if(ucDataBUF[ucPort][nVal]=='+')
//        {
//            if ((ucVal&(~BIT_DOUBLEPLUS))!=0x00)      //存在不是'+'的字符
//            { ucVal=BIT_DATAINVALID;  break; }

//            ucINDEX_PLUS++;
//            if (ucINDEX_PLUS==2)
//                ucVal|=BIT_DOUBLEPLUS;
//            if (ucINDEX_PLUS>=3)                    //至少3次认为错误，有其他符号
//            { ucVal=BIT_DATAINVALID;  break; }
//        }
//        else if(ucDataBUF[ucPort][nVal]=='-')
//        {
//            if ((ucVal&(~BIT_DOUBLEMINUS))!=0x00)      //存在不是'-'的字符
//            { ucVal=BIT_DATAINVALID;  break; }

//            ucINDEX_MINUS++;
//            if (ucINDEX_MINUS==2)
//                ucVal|=BIT_DOUBLEMINUS;
//            if (ucINDEX_MINUS>=3)                   //至少3次认为错误，有其他符号
//            { ucVal=BIT_DATAINVALID;  break; }
//        }
//        else    //有其他符号
//        { 
//            ucVal=BIT_DATAINVALID;  break;  }
//        }
//    }
//    return ucVal;
//}


static int ResponseIDheader(char *p)
{
    uint8_t ID=ucINDEX_DEV_ID?ucINDEX_DEV_ID:1;
    sprintf(p,"~%02d@",ID);
    return strlen(p);
}

static int BackCmdName(char *p,uint8_t CmdIdx,uint8_t SignFlag)
{
    uint8_t n,m;
    m=0;
    n=strlen(KR3000_SETUP_TAB[CmdIdx].pCmdName);	
    n=(KR3000_SETUP_TAB[CmdIdx].pCmdName[n-1])=='?'?n-1:n;
    m+=ResponseIDheader(p);
    memcpy(p+m,KR3000_SETUP_TAB[CmdIdx].pCmdName,n);
    p[m+n]=SignFlag;
    p[m+n+1]=0;
    return m+n+1;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//这个函数是处理一条完整指令或子指令的。主要的参数在ucDataB[ucPort][#]中                         //
//FirstData是一条指令在ucDataB[]中的开始位置;  LastData是结束位置                                //
//也就是说ucDataB[][FirstData]~ucDataB[][LastData]是一条完整的指令段,只有指令中的各个字符是否正常//
//要根据不同的指令来分析,                                                                        //
//hitxyh:2012.03.08                                                                              //
//zyq:   2012.03.18                                                                              //
///////////////////////////////////////////////////////////////////////////////////////////////////
static void KR3000_FUN_ORI(uint8_t ucPort,uint8_t ucCMD,uint8_t FirstData,uint8_t LastData,uint8_t *pRmIp,uint16_t rmPort)
{	
    unsigned int p1,p2,p3,p4,p5,p6/*,p7,p8*/,n,m,s/*,k*/;
    unsigned char pos/*,Error_Rs,DateType,max1,close*/;  
    char str[128]/*,str1[128]*/;
//    char *pStr1;
    char Enter;
    unsigned char ucT[16];
	
    switch(ucCMD)
    {
		case PROT_CEC:	//CEC 命令
			//#CEC (CEC Device) (Reserved) (Op Code) (Length of data) (SrcDes Address) [data1]...[data n] Cr
			//读取输入参数: CEC_DEVICE,Reserved, OP code, Len of Data, SrcDesAddr [,data1,]...[,data n]
			//                p1          p2        p3           p4       p5
			if (sscanf((char*)(ucDataBUF[ucPort]+FirstData+1),"%d,%d,%d,%d,%d",&p1,&p2,&p3,&p4,&p5) != 5)
			{
				if (sscanf((char*)(ucDataBUF[ucPort]+FirstData+1),"%d,%d,0x%x,%d,0x%x",&p1,&p2,&p3,&p4,&p5)!=5)
				{
					K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
					break;
				}
			}
			
			if(p1 > CEC_IO_INSTANCE_NUM)
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR003,pRmIp,rmPort);
				break;
			}
			
			if(p4 > 16)	//oprand 长度
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR003,pRmIp,rmPort);
				break;
			}

			if(p4 > 0)
			{
				s = 0;		
				for(m=0; m < 5;m++)
				{//查找操作数的起始位置
					pos = ARM_strpos(FirstData + s, LastData, ucDataBUF[ucPort], ',');	//查找第一个逗号','
					if(pos == 0xFF)
					{
						K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
						return;
					}
					s += pos + 1;
				}
				
				//获取操作数
				for(m=0; m < p4;m++)
				{
					sscanf((char*)(ucDataBUF[ucPort] + FirstData + s),"%d",&p6);
					ucT[m] = p6;
					pos = ARM_strpos(FirstData + s, LastData, ucDataBUF[ucPort], ',');	//查找下一个','
					if(pos != 0xFF)
					{
						s = s + pos + 1;
					}
				}
			}

			p6 = K3000_ConvertCECMsg_Send(p1-1,p3, p5, ucT, p4);
		
            n=BackCmdName(str,ucCMD,' ');
			n += sprintf(str+n,"%s",ucDataBUF[ucPort]+FirstData+1);

			if(p6 == 0)
			{
				n = sprintf(str+n," OK\r\n");
			}
			else if(p6 == 1)	
			{
				n = sprintf(str+n," Failed\r\n");
			}
			else
			{
				n = sprintf(str+n," Sending\r\n");
			}
				
            K3000_SendStringCom(PASSONLY,ucPort,str,pRmIp,rmPort);
		
			CEC_MODE=CEC_MODE_NOMAL;
			break;
		case PROT_GET_CEC_LIST:		//获取端口已连接的CEC设备的逻辑地址
            if (ucDataBUF[ucPort][FirstData]!=' ')
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
				break;
			}
			
            if(sscanf((char*)(ucDataBUF[ucPort]+FirstData+1),"%d%c",&p1,&Enter) != 1)
            {
				K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
				break;
            }

			if (p1 > 2)
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR003,pRmIp,rmPort);
				break;
			}
			//读取所连接的CEC设备逻辑地址
			p2 = K3000_GET_CEC_CaptureLA(p1-1);

            n=BackCmdName(str,ucCMD,' ');
            sprintf(str+n,"%d,%02X\r\n",p1,p2);
            K3000_SendStringCom(PASSONLY,ucPort,str,pRmIp,rmPort);
			
			CEC_MODE=CEC_MODE_NOMAL;
			break;
		case PROT_CEC_BYPASS:		//CEC ByPass命令，实现CEC数据的透传
			//#CEC (CEC Device) (Reserved) (Op Code) (Length of data) (SrcDes Address) [data1]...[data n] Cr
			//读取输入参数: CEC_DEVICE,Reserved, OP code, Len of Data, SrcDesAddr [,data1,]...[,data n]
			//                p1          p2        p3           p4       p5
			if (sscanf((char*)(ucDataBUF[ucPort]+FirstData+1),"%d,%d,%x,%d,%x",&p1,&p2,&p3,&p4,&p5) != 5)
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
				break;
			}
			
			if(p1 > CEC_IO_INSTANCE_NUM)
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR003,pRmIp,rmPort);
				break;
			}
			
			if(p4 > 16)	//oprand 长度
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR003,pRmIp,rmPort);
				break;
			}

			if(p4 > 0)
			{
				s = 0;		
				for(m=0; m < 5;m++)
				{//查找操作数的起始位置
					pos = ARM_strpos(FirstData + s, LastData, ucDataBUF[ucPort], ',');	//查找第一个逗号','
					if(pos == 0xFF)
					{
						K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
						return;
					}
					s += pos + 1;
				}
				
				//获取操作数
				for(m=0; m < p4;m++)
				{
					sscanf((char*)(ucDataBUF[ucPort] + FirstData + s),"%x",&p6);
					ucT[m] = p6;
					pos = ARM_strpos(FirstData + s, LastData, ucDataBUF[ucPort], ',');	//查找下一个','
					if(pos != 0xFF)
					{
						s = s + pos + 1;
					}
				}
			}

			//通过CEC发送给所连接的设备
			p6 = K3000_ConvertCECMsg_Send(0,p3, p5, ucT, p4);
			p6 = K3000_ConvertCECMsg_Send(1,p3, p5, ucT, p4);

			break;
        case PROT_COMMAND_SET_LIG_IN_ARC:
            if (ucDataBUF[ucPort][FirstData]!=' ')
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
				break;
			}
            if(sscanf((char*)(ucDataBUF[ucPort]+FirstData+1),"%d,%d%c",&p1,&p2,&Enter) != 2)
            {
				K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
				break;
            }
            if (ucCMD==PROT_COMMAND_SET_LIG_IN_ARC)
            {
                if (p1==0 || p1>2 || p2>1)
                {
                    K3000_BackErrCmd(ucPort,ucCMD,ERR003,pRmIp,rmPort);
                    break;
                }
            }
			K3000_SET_ARC_EN(p1-1,p2);
			
            n=BackCmdName(str,ucCMD,' ');
            sprintf(str+n,"%d,%d\r\n",p1,p2);
			K3000_SendStringCom(BROADCAST,ucPort,str,pRmIp,rmPort);
			
			CEC_MODE=CEC_MODE_NOMAL;
			break;
			
		//wyf 2017/9/25
		case PROT_CEC_GET_IP:	
			if (sscanf((char*)(ucDataBUF[ucPort]+FirstData+1),"%d.%d.%d.%d,%d",&p1,&p2,&p3,&p4,&p5) != 5)
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR001,pRmIp,rmPort);
				break;
			}
			
			if(!CEC_CheckIPValid(p1,p2,p3,p4,p5))
			{
				K3000_BackErrCmd(ucPort,ucCMD,ERR003,pRmIp,rmPort);
				break;
			}
			
			cec_bypass_ip.ip[0]=p1;
			cec_bypass_ip.ip[1]=p2;
			cec_bypass_ip.ip[2]=p3;
			cec_bypass_ip.ip[3]=p4;
			cec_bypass_ip.ip_port=p5;
			
			CEC_MODE=CEC_MODE_BYPASS;
			n=BackCmdName(str,ucCMD,' ');
			sprintf(str+n,"OK\r\n");
			K3000_SendStringCom(BROADCAST,ucPort,str,pRmIp,rmPort);
			break;
			//end wyf

			
        default:
            K3000_BackErrCmd(ucPort,ucCMD,ERR002,pRmIp,rmPort);
            break;
    }
    return;
}

//************* K3000命令解析处理函数 ************************
//至此，一条完整的伪命令被抠出来了。
//定义：
//     完整的伪命令 = 完整的头 + 未知的命令信息 + 完整的尾
//
//     完整的头 = '#' / '~'
//     完整的尾 = 'CR / CR+LF'   (回车 或者 回车换行)
//
//目标：中间的命令信息
//
//问题：中间的命令信息可能出错，需要注意的出错情况如下：
//      1. 空格问题；          -- 分为合理的空格和不合理的空格；
//      2. 管道符'|'问题；     -- 管道符用于分离命令，从而判断命令的完整性；
//      3. 命令字符的匹配问题；-- 与预先定义的匹配列表的命令字符匹配，从而判断命令的有效性；
//      4. 参数的格式问题；    -- 命令中的参数也必须符合K3000协议定义的格式，从而判断参数信息的有效性；
//      5.
static void KR3000_ProCmd(uint8_t ucPort,uint8_t *pRmIp,uint16_t rmPort)
{
    uint8_t n=0,pos=0,ucSTART=0,Error_Rs=0;
    uint8_t Flag_PIP=1;     //命令中有无'|'标识
    uint8_t Flag_Cmd=1;   //有无匹配命令标识
    
    uint16_t usTemp;

    ucPOS_PIP=0;    
    ucStartPOS_CMD=0;
	
    while(Flag_PIP)
    {
        ucLEN_CMD=0;
        ucLEN_DEV_ID=0;
        ucStartPOS_CMD=ucPOS_PIP+1;

        //消除#后面跟随多个' '空格的异常
        //zyq: 找到命令字符中有效的第一个字符 (除<空格，'#'，回车>之外的字符)
        while(ucDataBUF[ucPort][ucStartPOS_CMD]==' ')
        {
            if(ucStartPOS_CMD>=KR3000_Len[ucPort])
            {
                //当最后一个命令信息字符为空时，则需要可以分为两种情况：
                //    1. 从命令头开始，到命令尾之间的命令信息均为空；
                //    2. 前面已经存在有效的命令信息了；
                //处理办法：
                //    对1：认为是HandShaking命令--'#' ，并按照此命令回送；
                //    对2：出现的空格没有意义，无视它。
                if (ucPOS_PIP==0)
                    K3000_ResponseHandShaking(ucPort,pRmIp,rmPort);
                return;
            }
            ucStartPOS_CMD++;
        }
				
        if(ucStartPOS_CMD>KR3000_Len[ucPort])
            return;

        //消除后面跟随多个'|'字符的子命令
        //zyq: 以上面得到的第一个字符为起始，比如：假设KR3000_Len =   ucStartPOS_CMD = 4，则,
        //    S 1 2 3 4 5 6 7 8 9 10 E
        //    * - - - - - - - - - -  *
        //            ^
        //            0 1 2 3 4 5 6        --> FOR POS  注意：strpos()函数是从0开始计数的。
        //            - - - - - - -  *
        //
        //原则：在<命令信息>中找出管道符的位置，即使最后一个字符，有就是有，没有就是没有。							
        pos=ARM_strpos(ucStartPOS_CMD,KR3000_Len[ucPort],ucDataBUF[ucPort],'|');	
        if((pos==0xFF)||(pos>(KR3000_Len[ucPort]-ucStartPOS_CMD)))
        {
            Flag_PIP=0;
            ucPOS_PIP=KR3000_Len[ucPort]+1;
        }
		else
        {
            Flag_PIP=1;
            ucPOS_PIP=pos+ucStartPOS_CMD;
            if(ucPOS_PIP==ucStartPOS_CMD)
               continue;
        }

        //得到设备的地址符
        //K-NET Device ID followed by '@'
        //zyq: 分析同上
        //pos=strpos(ucDataB[ucPort]+ucStartPOS_CMD,'@');    //#65@VID 4>2CR							
        pos=ARM_strpos(ucStartPOS_CMD,KR3000_Len[ucPort],ucDataBUF[ucPort],'@');	
        if((pos==0xFF)||(pos>ucPOS_PIP-ucStartPOS_CMD))
		{
			 ucLEN_DEV_ID=0; //没有地址
		}
        else
        {
            if (pos==0)        //说明只有'@'符号，而没有ID号。
            {
				K3000_BackErrCmd(ucPort,0xFF,ERR001,pRmIp,rmPort); 
				break;
			}

            Error_Rs=0x00;
            for (n=ucStartPOS_CMD; n<(pos+ucStartPOS_CMD); n++)
            {
                if (((ucDataBUF[ucPort][n]<'0')||(ucDataBUF[ucPort][n]>'9'))||(ucDataBUF[ucPort][n]==' '))
                {
                    //Destination_id必须是<连续的数字>，否则认为此命令错误。
                    ucLEN_DEV_ID=0;
                    Error_Rs=ERR001;
                    K3000_BackErrCmd(ucPort,0xFF,Error_Rs,pRmIp,rmPort);
                    break;
                }
            }
            if (Error_Rs!=0x00)  //此命令的ID错误，没有继续判断的必要了。
			{
				continue;
			}

            usTemp=ARM_atoi(ucStartPOS_CMD,KR3000_Len[ucPort],ucDataBUF[ucPort]);	 
            if (usTemp>255)    //ZYQ: 新加的，规定ID号范围：0--255
            {
                K3000_BackErrCmd(ucPort,0xFF,ERR001,pRmIp,rmPort);
                continue;
            }
			else
            {
                ucLEN_DEV_ID=pos;
                ucINDEX_DEV_ID=(uint8_t)usTemp;
            }
        }

        //得到这条命令或子命令的长度：所以前面的TABLE就不需要按顺序
        //zyq: 从接受到的数据中把一条完整的命令抠出来，然后拿着这个完整的命令与枚举出来的K3000命令逐条匹配
        //所以第一步是要得到一条完整的命令！
        //zyq: 找到命令字符中第一个字符 (比如：# 12@  BUILD-DATE?)
        //                                            ^
        //                                            pos
        Error_Rs=0x00;
        if (ucLEN_DEV_ID==0)
		{
			pos=ucStartPOS_CMD;
		}
        else
		{
			pos=ucStartPOS_CMD+ucLEN_DEV_ID+1;
		}
        while(ucDataBUF[ucPort][pos]==' ')
        {
            if(pos>=ucPOS_PIP-1)
            {
                if (ucPOS_PIP>=KR3000_Len[ucPort])
				{
					return;
				}
                else
				{
					Error_Rs=0x01;
				}
            }
            pos++;
        }
        if (Error_Rs!=0)
		{
			 continue;
		}

        ucSTART=pos;
        do
        {
            pos++;
            if((ucDataBUF[ucPort][pos]==' ')||(ucDataBUF[ucPort][pos]==0x0d))
			{
				 break;
			}
        }while(pos<ucPOS_PIP);
				
        //终于得到了一条完整的命令字符，比如："BUILD-DATE?" 或者 "VID"
        ucLEN_CMD=pos-ucSTART;  

        //判断是否是一条完整的指令或子指令
        Flag_Cmd=0;
        for(n=0;n<255;n++)
        {              
            if (KR3000_SETUP_TAB[n].index==PROT_END_NO_COMMAND)
			{
				break;
			}
            //标准K3000命令长度
            pos=strlen(KR3000_SETUP_TAB[n].pCmdName);		

            //标准命令长度比收到的命令＋数据还长,继续下一条命令的搜索匹配
            //如果得到的指令和标准指令不一般长,则继续搜索
            if(pos!=ucLEN_CMD)
			{
				continue;
			}

            //比较接收到的数据命令长度和标准命令数据长度是否一致
            if(ARM_strncmp(ucDataBUF[ucPort]+ucSTART,KR3000_SETUP_TAB[n].pCmdName,pos)==0)   //有匹配的命令.
            {
                Flag_Cmd=1;
                //ucLEN_CMD=pos;                                                    //命令长度
                //ucINDEX_CMD=KR3000_SETUP_TAB[n].index;                            //命令代号

                //TempBuf[0]=ucAddLenIndex+ucCmdLenIndex+LastPIPIndex+1;            //命令数据在ucDataBUF[]开始的位置
                //TempBuf[1]=ucPIPIndex-ucAddLenIndex-ucCmdLenIndex-LastPIPIndex-1; //解析'|'后单条命令数据长度,不算'|'
                //ucFirstPos=ucSTART+ucLEN_CMD;                                     //命令数据在ucDataBUF[]开始的位置
                ucDataBUF[ucPort][(ucPOS_PIP-1)+1]=0;
                KR3000_FUN_ORI(ucPort,KR3000_SETUP_TAB[n].index,(ucSTART+ucLEN_CMD),(ucPOS_PIP-1),pRmIp,rmPort);           //解析子命令数据，从第一个数据到最后一个数据
                break;
            }
        }//end of for()

        if (Flag_Cmd==0)
        {
            ucLEN_DEV_ID=0;
            K3000_BackErrCmd(ucPort,0xFF,ERR002,pRmIp,rmPort);
        }
    }
    return;
}


/*****************************************************************************
 * Public functions
 ****************************************************************************/

//Syntax error	                                                 ERR001
//Command not available for this device	                         ERR002
//Parameter is out of range	                                 ERR003
//Unauthorized access (command run without the matching login).	 ERR004
void K3000_BackErrCmd(uint8_t Port, uint8_t CmdIdx,uint16_t ErrIdx,uint8_t *pRmIp,uint16_t rmPort)
{
    uint8_t n;
    char p[32];

    if (CmdIdx==0xff)
    {
        ResponseIDheader(p);        
        n=strlen(p);
        if (ErrIdx<10)
        {
            sprintf(p+n,"ERR00%d\r\n",ErrIdx);
        }
		else if (ErrIdx<100)
        {
            sprintf(p+n,"ERR0%d\r\n",ErrIdx);
        }
		else if (ErrIdx<1000)
        {
            sprintf(p+n,"ERR%d\r\n",ErrIdx);
        }
    }
	else
    {
        BackCmdName(p,CmdIdx,' ');
        n=strlen(p);
        if (ErrIdx<10)
        {
            sprintf(p+n,"ERR00%d\r\n",ErrIdx);
        }
		else if (ErrIdx<100)
        {
            sprintf(p+n,"ERR0%d\r\n",ErrIdx);
        }
		else if (ErrIdx<1000)
        {
            sprintf(p+n,"ERR%d\r\n",ErrIdx);
        }
    }
    K3000_SendStringCom(PASSONLY,Port,p,pRmIp,rmPort);
}

void K3000_ResponseHandShaking(uint8_t Port,uint8_t *pRmIp,uint16_t rmPort)
{
    char p[32],n;
    ResponseIDheader(p);
    n=strlen(p);
    strcpy(p+n," OK\r\n");
    K3000_SendStringCom(PASSONLY,Port,p,pRmIp,rmPort);
}

void K3000_InitMoudle(void)
{
    uint8_t  n=0;

    memset(ucTempBUF,0x00,MAX_TEMP_BUF_LEN);
	
    for(n=0;n<(MAX_COM_PORT_NUM+1);n++)
  	{        
        KR3000_Len[n]=0;
    }

    ucINDEX_DEV_ID=0;
    ucLEN_DEV_ID=0;
    ucLEN_CMD=0;
    ucPOS_PIP=0;
    ucStartPOS_CMD=0;
    return;
}



///////////////////////////////////////////////////////////////////////
//最后需要做到:
//返回0:表示还没有处理完成,在等待接受数据
//返回1"表示处理完一条指令,或者收到指令数据超长,自动清除
///////////////////////////////////////////////////////////////////////
uint8_t KR3000_SeekQueue(uint8_t ucPort,uint8_t ucVal,uint8_t *pRmIp,uint16_t rmPort)
{
	if(ucPort >= MAX_COM_PORT_NUM)
		return 1;
    //以下内容是针对NORMAL_MODE的命令处理部分。
    if(ucVal=='#')
    {
        ucComStatu[ucPort].GET_DATA_COUNT=1;
        ucDataBUF[ucPort][0]='#';
        ucComStatu[ucPort].TIME_OUT=1;
        return 0;
    }
    if(ucComStatu[ucPort].GET_DATA_COUNT !=0)
    {
        ucComStatu[ucPort].GET_DATA_COUNT++;

//        if((ucVal>=97)&&(ucVal<=122)) //a-z转换成A-Z
//            ucVal=ucVal-32;
        ucDataBUF[ucPort][ucComStatu[ucPort].GET_DATA_COUNT-1]=ucVal;
        
        if(ucVal==0x0d)
        {   //zyq: KR3000_Len 是除去头和尾后，中间的数据个数。
            KR3000_Len[ucPort]=ucComStatu[ucPort].GET_DATA_COUNT-2;    
            ucComStatu[ucPort].TIME_OUT=0;
//            if(KR3000_Len[ucPort]<=KR3000_COM_DATA) //字符长度不超过64个. MAX_INSTUCTION_LEN
            if(KR3000_Len[ucPort]<=(MAX_INSTUCTION_LEN-2)) //字符长度不超过250个. 
            {
                if(KR3000_Len[ucPort]==0)
				{
					K3000_ResponseHandShaking(ucPort,pRmIp,rmPort);
				}
                else
				{
					KR3000_ProCmd(ucPort,pRmIp,rmPort);
				}
            }
            ucComStatu[ucPort].GET_DATA_COUNT=0;
            return 1;
        }        
//        if(ucComStatu[ucPort].GET_DATA_COUNT>=KR3000_COM_MAX)
        if(ucComStatu[ucPort].GET_DATA_COUNT>=MAX_INSTUCTION_LEN)
        {
//            memset(ucDataBUF[ucPort],0xFF,KR3000_COM_MAX);
            memset(ucDataBUF[ucPort],0xFF,MAX_INSTUCTION_LEN);
            return 1;
        }
    }
    return 0;
}



unsigned char K3000_CheckIPValid(unsigned char *pData,unsigned char IP_OR_GATE) //wyf add unsigned char IP_OR_GATE 2017-4-27
{
//2. Set IP to  127.0.0.1 
//3. Set IP to  255.255.0.0 
//4. Set IP to  255.255.255.0 
//5. Set IP to addreses between   224.0.0.0 - 255.255.255.254 
//6. Set IP to 255.255.255.255 
//7. Set IP as following: 0.0.0.1 - 223.255.255.254
//8.Set IP address as GW one
    if (pData[0]==127)
	{
		return 0;
	}
    if (pData[0]==255)
    {
		return 0;
	}
    if (pData[0]==255 && pData[1]==255 &&  pData[2]==0 && pData[3]==0)
    {
		return 0;
	}
    if (pData[0]==255 && pData[1]==255 &&  pData[2]==255 && pData[3]==0)
    {
		return 0;
	}
    if (pData[0]==255 && pData[1]==255 &&  pData[2]==255 && pData[3]==255)
    {
		return 0;
	}
    if (pData[0]==0 && pData[1]==0 &&  pData[2]==0 && pData[3]==0)
    {
		return 0;
	}
    if (pData[0]>223)
    {
		return 0;
	}
	if(IP_OR_GATE==1)//set ip
	{
//		if(pData[0]==SwAppSys.mUserGate[0] && pData[1]==SwAppSys.mUserGate[1]&& pData[2]==SwAppSys.mUserGate[2]&& pData[3]==SwAppSys.mUserGate[3])
			return 0;
	}
	else if(IP_OR_GATE==2)//set gate
	{
//		if(pData[0]==SwAppSys.mUserIP[0] && pData[1]==SwAppSys.mUserIP[1]&& pData[2]==SwAppSys.mUserIP[2]&& pData[3]==SwAppSys.mUserIP[3])
			return 0;
	}
    return 1;
}

unsigned char K3000_CheckMaskValid(unsigned char *pData)
{
    uint32_t sub=0;
    sub=pData[0]*256*256*256+pData[1]*256*256+pData[2]*256+pData[3];
    sub=~sub+1;
	if (pData[0]==255 && pData[1]==255 &&  pData[2]==255 && pData[3]==255)
	{
		return 0;
	}
    if ((sub&(sub-1))==0)
    {
		return 1;
	}
    return 0;
} 

//#CEC (CEC Device) (Reserved) (Op Code) (Length of data) (SrcDes Address) [data1]...[data n] Cr
void K3000_SendCECMessage(unsigned char ucCECdev, unsigned char opCode, unsigned char ucCount, unsigned char ucSrcDes,unsigned char *pMessage)
{
    char str[128];
	unsigned int n;
	unsigned char i;
//	uint8_t ucip[4] = {0xC0, 0xA8, 0x14, 0x2C};
	
	n=sprintf(str,"#%s ",KR3000_SETUP_TAB[PROT_CEC_BYPASS].pCmdName);
	n += sprintf(str+n,"%d,%d,%02X,%02X,%02X",ucCECdev+1,0,opCode,ucCount,ucSrcDes);
	for(i = 0;i< ucCount;i++)
	{
		n += sprintf(str+n,",%02X",pMessage[i]);
	}
	n += sprintf(str+n,"%s","\r\n");
	
	K3000_SendString(COM_PORT_UDP_1,str,cec_bypass_ip.ip,cec_bypass_ip.ip_port);	 //wyf 2017/9/25
}


/******************************************************************************
**                            End Of File
******************************************************************************/
