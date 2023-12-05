;The Num of Instruction(Size):783. The Max Address(Begin with 0):14356 

                MCU  ES7P0693

A    equ    0
R    equ    1
HRAM_0X0  equ  0X0
HRAM_0X1  equ  0X1
HRAM_0X10  equ  0X10
HRAM_0X11  equ  0X11
HRAM_0X12  equ  0X12
HRAM_0X13  equ  0X13
HRAM_0X14  equ  0X14
HRAM_0X15  equ  0X15
HRAM_0X2  equ  0X2
HRAM_0X3  equ  0X3
HRAM_0X36  equ  0X36
HRAM_0X4  equ  0X4
HRAM_0X4A  equ  0X4a
HRAM_0X5  equ  0X5
HRAM_0X52  equ  0X52
HRAM_0X6  equ  0X6
HRAM_0X7  equ  0X7
HRAM_0X8  equ  0X8
HRAM_0X80  equ  0X80
HRAM_0X81  equ  0X81
HRAM_0X82  equ  0X82
HRAM_0X83  equ  0X83
HRAM_0X84  equ  0X84
HRAM_0X85  equ  0X85
HRAM_0X86  equ  0X86
HRAM_0X87  equ  0X87
HRAM_0X88  equ  0X88
HRAM_0X89  equ  0X89
HRAM_0X8A  equ  0X8a
HRAM_0X8B  equ  0X8b
HRAM_0X8C  equ  0X8c
HRAM_0X8D  equ  0X8d
HRAM_0X9  equ  0X9
HRAM_0X90  equ  0X90
HRAM_0X91  equ  0X91
HRAM_0X92  equ  0X92
HRAM_0X93  equ  0X93
HRAM_0X96  equ  0X96
HRAM_0X99  equ  0X99
HRAM_0X9A  equ  0X9a
HRAM_0XA  equ  0Xa
HRAM_0XA1  equ  0Xa1
HRAM_0XA2  equ  0Xa2
HRAM_0XA3  equ  0Xa3
HRAM_0XA4  equ  0Xa4
HRAM_0XA7  equ  0Xa7
HRAM_0XA8  equ  0Xa8
HRAM_0XA9  equ  0Xa9
HRAM_0XAA  equ  0Xaa
HRAM_0XAD  equ  0Xad
HRAM_0XAE  equ  0Xae
HRAM_0XAF  equ  0Xaf
HRAM_0XB  equ  0Xb
HRAM_0XB6  equ  0Xb6
HRAM_0XBC  equ  0Xbc
HRAM_0XBD  equ  0Xbd
HRAM_0XBE  equ  0Xbe
HRAM_0XC  equ  0Xc
HRAM_0XC0  equ  0Xc0
HRAM_0XC1  equ  0Xc1
HRAM_0XC2  equ  0Xc2
HRAM_0XC3  equ  0Xc3
HRAM_0XC4  equ  0Xc4
HRAM_0XC5  equ  0Xc5
HRAM_0XD  equ  0Xd
HRAM_0XD0  equ  0Xd0
HRAM_0XD1  equ  0Xd1
HRAM_0XD2  equ  0Xd2
HRAM_0XD3  equ  0Xd3
HRAM_0XE  equ  0Xe
HRAM_0XF  equ  0Xf

                ORG             0X00
HADR_0X0:
:0X0  c749f000                  AJMP            HADR_0X49
                                ORG             0X2
:0X2  6800                      GOTO            HADR_0X0
                                ORG             0X4
:0X4  c180                      PUSH
:0X5  e787                      CLR             HRAM_0X87
:0X6  e783                      CLR             HRAM_0X83
:0X7  5081                      MOV             HRAM_0X81,      A
:0X8  e600                      MOVA            HRAM_0X0
:0X9  5082                      MOV             HRAM_0X82,      A
:0Xa  e601                      MOVA            HRAM_0X1
:0Xb  500f                      MOV             HRAM_0XF,       A
:0Xc  e611                      MOVA            HRAM_0X11
:0Xd  5010                      MOV             HRAM_0X10,      A
HADR_0XE:
:0Xe  e612                      MOVA            HRAM_0X12
:0Xf  5090                      MOV             HRAM_0X90,      A
:0X10  e613                     MOVA            HRAM_0X13
HADR_0X11:
:0X11  5091                     MOV             HRAM_0X91,      A
:0X12  e614                     MOVA            HRAM_0X14
:0X13  500b                     MOV             HRAM_0XB,       A
:0X14  e60d                     MOVA            HRAM_0XD
:0X15  500c                     MOV             HRAM_0XC,       A
:0X16  e60e                     MOVA            HRAM_0XE
:0X17  5007                     MOV             HRAM_0X7,       A
:0X18  e603                     MOVA            HRAM_0X3
:0X19  5008                     MOV             HRAM_0X8,       A
:0X1a  e604                     MOVA            HRAM_0X4
:0X1b  5009                     MOV             HRAM_0X9,       A
:0X1c  e605                     MOVA            HRAM_0X5
:0X1d  500a                     MOV             HRAM_0XA,       A
:0X1e  e606                     MOVA            HRAM_0X6
;}
;
;/**************************************************************************
;* 函数名称：isr
;* 功能描述：中断入口函数
;* 输入参数：无
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void isr(void) interrupt
;{
;	if(KIE && KMSK4 && KIF)
:0X1f  9499                     JBS             HRAM_0X99,      4
:0X20  6829                     GOTO            HADR_0X29
:0X21  94a3                     JBS             HRAM_0XA3,      4
:0X22  6829                     GOTO            HADR_0X29
:0X23  949a                     JBS             HRAM_0X9A,      4
:0X24  6829                     GOTO            HADR_0X29
;    {
;		KIF = 0;       //清除外部中断
:0X25  ac9a                     BCC             HRAM_0X9A,      4
;		if(IRQ)
:0X26  93a9                     JBS             HRAM_0XA9,      3
:0X27  6829                     GOTO            HADR_0X29
;		{
;			_hw2000b_irq_request = 1;
:0X28  a015                     BSS             HRAM_0X15,      0
HADR_0X29:
;		}
;    }
;
;}
:0X29  682a                     GOTO            HADR_0X2A
HADR_0X2A:
:0X2a  ffff                     NOP
:0X2b  ffff                     NOP
:0X2c  5003                     MOV             HRAM_0X3,       A
:0X2d  e607                     MOVA            HRAM_0X7
:0X2e  5004                     MOV             HRAM_0X4,       A
:0X2f  e608                     MOVA            HRAM_0X8
:0X30  5005                     MOV             HRAM_0X5,       A
:0X31  e609                     MOVA            HRAM_0X9
:0X32  5006                     MOV             HRAM_0X6,       A
:0X33  e60a                     MOVA            HRAM_0XA
:0X34  5012                     MOV             HRAM_0X12,      A
:0X35  e610                     MOVA            HRAM_0X10
:0X36  5011                     MOV             HRAM_0X11,      A
:0X37  e60f                     MOVA            HRAM_0XF
:0X38  500d                     MOV             HRAM_0XD,       A
:0X39  e60b                     MOVA            HRAM_0XB
:0X3a  e688                     MOVA            HRAM_0X88
:0X3b  500e                     MOV             HRAM_0XE,       A
:0X3c  e60c                     MOVA            HRAM_0XC
:0X3d  e689                     MOVA            HRAM_0X89
:0X3e  5001                     MOV             HRAM_0X1,       A
:0X3f  e682                     MOVA            HRAM_0X82
:0X40  5000                     MOV             HRAM_0X0,       A
:0X41  e681                     MOVA            HRAM_0X81
:0X42  5014                     MOV             HRAM_0X14,      A
:0X43  e691                     MOVA            HRAM_0X91
:0X44  5013                     MOV             HRAM_0X13,      A
:0X45  e690                     MOVA            HRAM_0X90
:0X46  c184                     TBR
:0X47  c181                     POP
:0X48  c189                     RETIE
HADR_0X49:
;
;
;
;/**************************************************************************
;* 函数名称：main
;* 功能描述：工程入口
;* 输入参数：无
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void main(void) 
;{
;	uint8_t i;
;	uint8_t data_buf;
;	uint16_t reg;
;
;    GPIOInit();										//初始化GPIO
:0X49  e783                     CLR             HRAM_0X83
:0X4a  ec00                     PAGE            0X0
:0X4b  6200                     CALL            HADR_0X200
:0X4c  ec00                     PAGE            0X0
;	WDT_Init();										//初始化看门狗
:0X4d  ec00                     PAGE            0X0
:0X4e  6211                     CALL            HADR_0X211
:0X4f  ec00                     PAGE            0X0
;	UART_Init();									//初始化串口
:0X50  ec00                     PAGE            0X0
:0X51  6216                     CALL            HADR_0X216
:0X52  ec00                     PAGE            0X0
;
;	spi_init();										//初始化SPI端口
:0X53  ec00                     PAGE            0X0
:0X54  6221                     CALL            HADR_0X221
:0X55  ec00                     PAGE            0X0
;	hw2000b_port_init();							//初始化射频端口
:0X56  ec00                     PAGE            0X0
:0X57  60f6                     CALL            HADR_0XF6
:0X58  ec00                     PAGE            0X0
;	hw2000b_init_250k();							//初始化射频参数
:0X59  ec00                     PAGE            0X0
:0X5a  6109                     CALL            HADR_0X109
:0X5b  ec00                     PAGE            0X0
;
;	GIE = 1;										//全局中断使能
:0X5c  a796                     BSS             HRAM_0X96,      7
HADR_0X5D:
;
;	while(1) 
:0X5d  a815                     BCC             HRAM_0X15,      0
;		hw2000b_write_reg(0x36, 0x0080);			//FIFO0 enable
:0X5e  e536                     MOVI            0X36
:0X5f  208a                     MOVAR           HRAM_0X8A
:0X60  e580                     MOVI            0X80
:0X61  208b                     MOVAR           HRAM_0X8B
:0X62  e500                     MOVI            0X0
:0X63  208c                     MOVAR           HRAM_0X8C
:0X64  ec00                     PAGE            0X0
:0X65  6235                     CALL            HADR_0X235
:0X66  ec00                     PAGE            0X0
;		hw2000b_write_reg(0x37, 0x0000);			//FIFO1 disable
:0X67  e537                     MOVI            0X37
:0X68  208a                     MOVAR           HRAM_0X8A
:0X69  e500                     MOVI            0X0
:0X6a  208b                     MOVAR           HRAM_0X8B
:0X6b  e500                     MOVI            0X0
:0X6c  208c                     MOVAR           HRAM_0X8C
:0X6d  ec00                     PAGE            0X0
:0X6e  6235                     CALL            HADR_0X235
:0X6f  ec00                     PAGE            0X0
;		hw2000b_write_reg(0x21, 0x0080);			//RX enable 
:0X70  e521                     MOVI            0X21
:0X71  208a                     MOVAR           HRAM_0X8A
:0X72  e580                     MOVI            0X80
:0X73  208b                     MOVAR           HRAM_0X8B
:0X74  e500                     MOVI            0X0
:0X75  208c                     MOVAR           HRAM_0X8C
:0X76  ec00                     PAGE            0X0
:0X77  6235                     CALL            HADR_0X235
:0X78  ec00                     PAGE            0X0
HADR_0X79:
;
;		while (!_hw2000b_irq_request)				//等待RF接收中断标志位
:0X79  9815                     JBC             HRAM_0X15,      0
:0X7a  6885                     GOTO            HADR_0X85
;		{
;			CLRWDT();								//清看门狗
:0X7b  c18b                     CWDT
;			delay_us(50);							//延时
:0X7c  e532                     MOVI            0X32
:0X7d  ea01                     SECTION         0X1
:0X7e  e605                     MOVA            HRAM_0X5
:0X7f  e500                     MOVI            0X0
:0X80  e606                     MOVA            HRAM_0X6
:0X81  ec00                     PAGE            0X0
:0X82  62e8                     CALL            HADR_0X2E8
:0X83  ec00                     PAGE            0X0
;		}
:0X84  6879                     GOTO            HADR_0X79
HADR_0X85:
;
;		reg = hw2000b_read_reg(0x36);				//读取状态寄存器
:0X85  e536                     MOVI            0X36
:0X86  ea01                     SECTION         0X1
:0X87  e605                     MOVA            HRAM_0X5
:0X88  ec00                     PAGE            0X0
:0X89  625c                     CALL            HADR_0X25C
:0X8a  ec00                     PAGE            0X0
:0X8b  2081                     MOVAR           HRAM_0X81
:0X8c  5008                     MOV             HRAM_0X8,       A
:0X8d  2082                     MOVAR           HRAM_0X82
;		if ((reg & 0x2000) == 0)
:0X8e  ea01                     SECTION         0X1
:0X8f  9d02                     JBC             HRAM_0X2,       5
:0X90  68c6                     GOTO            HADR_0XC6
;		{     
;			hw2000b_read_fifo(0x32, rxbuf, 1);			//读取接收数据长度值
:0X91  e532                     MOVI            0X32
:0X92  e605                     MOVA            HRAM_0X5
:0X93  e5b6                     MOVI            0XB6
:0X94  e606                     MOVA            HRAM_0X6
:0X95  e500                     MOVI            0X0
:0X96  e607                     MOVA            HRAM_0X7
:0X97  e501                     MOVI            0X1
:0X98  e608                     MOVA            HRAM_0X8
:0X99  ec00                     PAGE            0X0
:0X9a  628c                     CALL            HADR_0X28C
:0X9b  ec00                     PAGE            0X0
;
;			hw2000b_read_fifo(0x32, data_rf, rxbuf[0]); //读取数据
:0X9c  e532                     MOVI            0X32
:0X9d  2085                     MOVAR           HRAM_0X85
:0X9e  e598                     MOVI            0X98
:0X9f  2086                     MOVAR           HRAM_0X86
:0Xa0  e500                     MOVI            0X0
:0Xa1  2087                     MOVAR           HRAM_0X87
:0Xa2  78b6                     MOVRA           HRAM_0XB6
:0Xa3  2088                     MOVAR           HRAM_0X88
:0Xa4  ec00                     PAGE            0X0
:0Xa5  628c                     CALL            HADR_0X28C
:0Xa6  ec00                     PAGE            0X0
;
;			for (i = 0; i<rxbuf[0]; i++)				//根据数据长度循环发送
:0Xa7  ea01                     SECTION         0X1
:0Xa8  e700                     CLR             HRAM_0X0
HADR_0XA9:
:0Xa9  5036                     MOV             HRAM_0X36,      A
:0Xaa  ee00                     SUB             HRAM_0X0,       A
:0Xab  9884                     JBC             HRAM_0X84,      0
:0Xac  68c3                     GOTO            HADR_0XC3
HADR_0XAD:
;			{
;				while (!TRMT0);
:0Xad  a483                     BSS             HRAM_0X83,      4
:0Xae  91d2                     JBS             HRAM_0XD2,      1
:0Xaf  68ad                     GOTO            HADR_0XAD
;				TX0B = data_rf[i];						//串口发送数据
:0Xb0  e702                     CLR             HRAM_0X2
:0Xb1  5000                     MOV             HRAM_0X0,       A
:0Xb2  e601                     MOVA            HRAM_0X1
:0Xb3  5001                     MOV             HRAM_0X1,       A
:0Xb4  e098                     ADDI            0X98
:0Xb5  e603                     MOVA            HRAM_0X3
:0Xb6  5002                     MOV             HRAM_0X2,       A
:0Xb7  c300                     ADDCI           0X0
:0Xb8  e604                     MOVA            HRAM_0X4
:0Xb9  5004                     MOV             HRAM_0X4,       A
:0Xba  e682                     MOVA            HRAM_0X82
:0Xbb  5003                     MOV             HRAM_0X3,       A
:0Xbc  e681                     MOVA            HRAM_0X81
:0Xbd  5080                     MOV             HRAM_0X80,      A
:0Xbe  2007                     MOVAR           HRAM_0X7
:0Xbf  7807                     MOVRA           HRAM_0X7
:0Xc0  e6d1                     MOVA            HRAM_0XD1
:0Xc1  5500                     INC             HRAM_0X0,       R
;			}
:0Xc2  68a9                     GOTO            HADR_0XA9
HADR_0XC3:
;			while (!TRMT0);								//等待发送完成
:0Xc3  a483                     BSS             HRAM_0X83,      4
:0Xc4  91d2                     JBS             HRAM_0XD2,      1
:0Xc5  68c3                     GOTO            HADR_0XC3
HADR_0XC6:
;
;		}
:0Xc6  e521                     MOVI            0X21
:0Xc7  e60a                     MOVA            HRAM_0XA
:0Xc8  e500                     MOVI            0X0
:0Xc9  e60b                     MOVA            HRAM_0XB
:0Xca  e500                     MOVI            0X0
:0Xcb  e60c                     MOVA            HRAM_0XC
:0Xcc  ec00                     PAGE            0X0
:0Xcd  6235                     CALL            HADR_0X235
:0Xce  ec00                     PAGE            0X0
;		hw2000b_write_reg(0x23, 0x431B);				//复位RF电路
:0Xcf  e523                     MOVI            0X23
:0Xd0  208a                     MOVAR           HRAM_0X8A
:0Xd1  e51b                     MOVI            0X1B
:0Xd2  208b                     MOVAR           HRAM_0X8B
:0Xd3  e543                     MOVI            0X43
:0Xd4  208c                     MOVAR           HRAM_0X8C
:0Xd5  ec00                     PAGE            0X0
:0Xd6  6235                     CALL            HADR_0X235
:0Xd7  ec00                     PAGE            0X0
;		hw2000b_write_reg(0x23, 0x031B); 
:0Xd8  e523                     MOVI            0X23
:0Xd9  208a                     MOVAR           HRAM_0X8A
:0Xda  e51b                     MOVI            0X1B
:0Xdb  208b                     MOVAR           HRAM_0X8B
:0Xdc  e503                     MOVI            0X3
:0Xdd  208c                     MOVAR           HRAM_0X8C
:0Xde  ec00                     PAGE            0X0
:0Xdf  6235                     CALL            HADR_0X235
:0Xe0  ec00                     PAGE            0X0
;
;        CLRWDT();										//清看门狗
:0Xe1  c18b                     CWDT
;	}
:0Xe2  685d                     GOTO            HADR_0X5D
:0Xe3  5f86                     ADD             HRAM_0X86,      R
:0Xe4  0000                     UserData	       0X0                                  ; !! Unknown Command
:0Xe5  0000                     UserData	       0X0                                  ; !! Unknown Command
:0Xe6  0000                     UserData	       0X0                                  ; !! Unknown Command
:0Xe7  0001                     UserData	       0X1                                  ; !! Unknown Command
:0Xe8  0002                     UserData	       0X2                                  ; !! Unknown Command
:0Xe9  000a                     UserData	       0Xa                                  ; !! Unknown Command
:0Xea  0012                     UserData	       0X12                                 ; !! Unknown Command
:0Xeb  0212                     UserData	       0X212                                ; !! Unknown Command
:0Xec  0412                     UserData	       0X412                                ; !! Unknown Command
:0Xed  064a                     UserData	       0X64a                                ; !! Unknown Command
:0Xee  084a                     JCCRE           HRAM_0X4A,      0
:0Xef  0a4a                     JCCRE           HRAM_0X4A,      2
:0Xf0  0a52                     JCCRE           HRAM_0X52,      2
:0Xf1  0a92                     JCCRE           HRAM_0X92,      2
:0Xf2  0c92                     UserData	       0Xc92                                ; !! Unknown Command
:0Xf3  0cd2                     UserData	       0Xcd2                                ; !! Unknown Command
:0Xf4  0cda                     UserData	       0Xcda                                ; !! Unknown Command
:0Xf5  0ce3                     UserData	       0Xce3                                ; !! Unknown Command
HADR_0XF6:
;/**************************************************************************
;* 版权声明：Copyright@2019 上海东软载波微电子有限公司
;* 文件名称：hw2000b.c
;* 功能描述：RF函数
;* 函数列表：hw2000b_port_init
;			hw2000b_init_1m
;			hw2000b_init_250k
;			hw2000b_set_osc_16M
;			hw2000b_set_power_max
;			hw2000b_set_power_0
;			hw2000b_set_power_negative_20
;			hw2000b_set_frequence_2403
;			hw2000b_set_frequence_2450
;			hw2000b_set_frequence_2483
;			hw2000b_power_test
;			hw2000b_cancel_sw
;			hw2000b_tx_data
;			hw2000b_rx_enable
;			hw2000b_rx_data
;			hw2000b_power_down
;			hw2000b_power_on
;* 文件作者：Ljj  
;* 文件版本：
;* 完成日期：2023-08-23
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;#include <hic.h>
;#include "type.h"
;#include "hw2000b.h"
;#include "spi.h"
;#include "timer.h"
;
;const uint16_t agcTab[18] = {0x0000, 0x0000, 0x0000, 0x0001, 0x0002, 0x000A,
;                             0x0012, 0x0212, 0x0412, 0x064A, 0x084A, 0x0A4A,
;                             0x0A52, 0x0A92, 0x0C92, 0x0CD2, 0x0CDA, 0x0CE3
;};
;extern	sbit		_hw2000b_irq_request;
;
;extern	uint16_t	_ack_count;
;
;/**************************************************************************
;* 函数名称：hw2000b_port_init
;* 功能描述：初始化hw2000b接口
;* 输入参数：无
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void hw2000b_port_init(void)
;{
;	CE = 0;
:0Xf6  e783                     CLR             HRAM_0X83
:0Xf7  afa9                     BCC             HRAM_0XA9,      7
;	delay_ms(3);
:0Xf8  e503                     MOVI            0X3
:0Xf9  ea01                     SECTION         0X1
:0Xfa  e605                     MOVA            HRAM_0X5
:0Xfb  e500                     MOVI            0X0
:0Xfc  e606                     MOVA            HRAM_0X6
:0Xfd  ec00                     PAGE            0X0
:0Xfe  62c9                     CALL            HADR_0X2C9
:0Xff  ec00                     PAGE            0X0
;	CE = 1;
:0X100  a7a9                    BSS             HRAM_0XA9,      7
;	delay_ms(3);
:0X101  e503                    MOVI            0X3
:0X102  2085                    MOVAR           HRAM_0X85
:0X103  e500                    MOVI            0X0
:0X104  2086                    MOVAR           HRAM_0X86
:0X105  ec00                    PAGE            0X0
:0X106  62c9                    CALL            HADR_0X2C9
:0X107  ec00                    PAGE            0X0
;}
:0X108  c183                    RET
HADR_0X109:
;void reg_read_write_test()
;{
;	uint8_t i=0;
;    hw2000b_write_reg(0x4C, 0x55AA);	//close write protection
;    uint16_t all_reg_value[0x6a+1] = {0};
;    for(i=0;i<=0x6a;i++)
;    {
;        all_reg_value[i] = hw2000b_read_reg(i);
;    }
;    //write 0 to all reg 
;    for(i=0;i<=0x6a;i++)
;    {
;        if(i != 0x4C)
;        {
;            hw2000b_write_reg(i,0x0000);
;        }
;        all_reg_value[i] = hw2000b_read_reg(i);
;    }
;    
;    //write 1 to all reg 
;    for(i=0;i<=0x6a;i++)
;    {
;        if(i != 0x4C && i != 0x4F)
;        {
;            hw2000b_write_reg(i,0xffff);
;        } else if(i == 0x4F)
;                {
;                    hw2000b_write_reg(i,0x0000);
;                }
;        all_reg_value[i] = hw2000b_read_reg(i);
;    }
;    
;    all_reg_value[0] = hw2000b_read_reg(0);//breakpoint test
;}
;/**************************************************************************
;* 函数名称：hw2000b_init_1m
;* 功能描述：初始化hw2000b，速率为1M，晶振12M,最大功率
;* 输入参数：无
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void hw2000b_init_1m(void)
;{
;    uint8_t i;
;
;	hw2000b_write_reg(0x4C, 0x55AA);		//open write protection
;	for (i = 0; i < 18; i++) {
;        hw2000b_write_reg(0x50 + i, agcTab[i]);            
;    }
;
;	hw2000b_write_reg(0x0F, 0xFC04);//ES7W8020
;
;    hw2000b_write_reg(0x01, 0x4D58);//ES7W8020
;    hw2000b_write_reg(0x02, 0x04CC);//ES7W8020
;    hw2000b_write_reg(0x08, 0xB6C4);//ES7W8020
;	hw2000b_write_reg(0x09, 0xB442);//ES7W8020
;    hw2000b_write_reg(0x4A, 0x326C);//ES7W8020
;
;    hw2000b_write_reg(0x0B, 0x0873);//ES7W8020    8dBm
;    hw2000b_write_reg(0x49, 0x1330);//ES7W8020
;    hw2000b_write_reg(0x27, 0x8F20);//ES7W8020
;	hw2000b_write_reg(0x48, 0x4300);//ES7W8020
;	hw2000b_write_reg(0x26, 0x000C);//ES7W8020
;
;    hw2000b_write_reg(0x28, 0x8401);//sync_thres 1bit
;    hw2000b_write_reg(0x2C, 0x918B);
;    hw2000b_write_reg(0x1B, 0xE754);
;    hw2000b_write_reg(0x06, 0xB000);
;    hw2000b_write_reg(0x07, 0x54E0);
;    hw2000b_write_reg(0x1C, 0x51A0);
;    hw2000b_write_reg(0x19, 0x2084);
;    hw2000b_write_reg(0x20, 0xF000);//preamble:16 bytes, sync:48 bits
;    hw2000b_write_reg(0x2A, 0xC0FF);//rate:1Mbps, ACK_time:28us
;}
;
;/**************************************************************************
;* 函数名称：hw2000b_init_250k
;* 功能描述：初始化hw2000b，速率为250k,晶振12M，最大功率
;* 输入参数：无
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void hw2000b_init_250k(void)
;{
;    uint8_t i;
;
;	hw2000b_write_reg(0x4C, 0x55AA);		//open write project
:0X109  e783                    CLR             HRAM_0X83
:0X10a  e54c                    MOVI            0X4C
:0X10b  ea01                    SECTION         0X1
:0X10c  e60a                    MOVA            HRAM_0XA
:0X10d  e5aa                    MOVI            0XAA
:0X10e  e60b                    MOVA            HRAM_0XB
:0X10f  e555                    MOVI            0X55
:0X110  e60c                    MOVA            HRAM_0XC
:0X111  ec00                    PAGE            0X0
:0X112  6235                    CALL            HADR_0X235
:0X113  ec00                    PAGE            0X0
;	for (i = 0; i < 18; i++) {
:0X114  ea01                    SECTION         0X1
:0X115  e705                    CLR             HRAM_0X5
HADR_0X116:
:0X116  e512                    MOVI            0X12
:0X117  ee05                    SUB             HRAM_0X5,       A
:0X118  9884                    JBC             HRAM_0X84,      0
:0X119  6942                    GOTO            HADR_0X142
;        hw2000b_write_reg(0x50 + i, agcTab[i]);
:0X11a  5005                    MOV             HRAM_0X5,       A
:0X11b  e050                    ADDI            0X50
:0X11c  e60a                    MOVA            HRAM_0XA
:0X11d  e707                    CLR             HRAM_0X7
:0X11e  5005                    MOV             HRAM_0X5,       A
:0X11f  e606                    MOVA            HRAM_0X6
:0X120  a884                    BCC             HRAM_0X84,      0
:0X121  b006                    RLB             HRAM_0X6,       A,              0X1
:0X122  e608                    MOVA            HRAM_0X8
:0X123  b007                    RLB             HRAM_0X7,       A,              0X1
:0X124  e609                    MOVA            HRAM_0X9
:0X125  5008                    MOV             HRAM_0X8,       A
:0X126  e0c8                    ADDI            0XC8
:0X127  e606                    MOVA            HRAM_0X6
:0X128  5009                    MOV             HRAM_0X9,       A
:0X129  c301                    ADDCI           0X1
:0X12a  e607                    MOVA            HRAM_0X7
:0X12b  5006                    MOV             HRAM_0X6,       A
:0X12c  200f                    MOVAR           HRAM_0XF
:0X12d  5007                    MOV             HRAM_0X7,       A
:0X12e  2010                    MOVAR           HRAM_0X10
:0X12f  ec07                    PAGE            0X7
:0X130  ea00                    SECTION         0X0
:0X131  6000                    CALL            HADR_0X0
:0X132  ec00                    PAGE            0X0
:0X133  e607                    MOVA            HRAM_0X7
:0X134  ec07                    PAGE            0X7
:0X135  6000                    CALL            HADR_0X0
:0X136  ec00                    PAGE            0X0
:0X137  e608                    MOVA            HRAM_0X8
:0X138  5007                    MOV             HRAM_0X7,       A
:0X139  208b                    MOVAR           HRAM_0X8B
:0X13a  5008                    MOV             HRAM_0X8,       A
:0X13b  208c                    MOVAR           HRAM_0X8C
:0X13c  ec00                    PAGE            0X0
:0X13d  6235                    CALL            HADR_0X235
:0X13e  ec00                    PAGE            0X0
:0X13f  ea01                    SECTION         0X1
:0X140  5505                    INC             HRAM_0X5,       R
;    }
:0X141  6916                    GOTO            HADR_0X116
HADR_0X142:
;
;	hw2000b_write_reg(0x0F, 0xFC04);//ES7W8020
:0X142  e50f                    MOVI            0XF
:0X143  e60a                    MOVA            HRAM_0XA
:0X144  e504                    MOVI            0X4
:0X145  e60b                    MOVA            HRAM_0XB
:0X146  e5fc                    MOVI            0XFC
:0X147  e60c                    MOVA            HRAM_0XC
:0X148  ec00                    PAGE            0X0
:0X149  6235                    CALL            HADR_0X235
:0X14a  ec00                    PAGE            0X0
;
;    hw2000b_write_reg(0x01, 0x4D58);//ES7W8020
:0X14b  e501                    MOVI            0X1
:0X14c  208a                    MOVAR           HRAM_0X8A
:0X14d  e558                    MOVI            0X58
:0X14e  208b                    MOVAR           HRAM_0X8B
:0X14f  e54d                    MOVI            0X4D
:0X150  208c                    MOVAR           HRAM_0X8C
:0X151  ec00                    PAGE            0X0
:0X152  6235                    CALL            HADR_0X235
:0X153  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x02, 0x04CC);//ES7W8020
:0X154  e502                    MOVI            0X2
:0X155  208a                    MOVAR           HRAM_0X8A
:0X156  e5cc                    MOVI            0XCC
:0X157  208b                    MOVAR           HRAM_0X8B
:0X158  e504                    MOVI            0X4
:0X159  208c                    MOVAR           HRAM_0X8C
:0X15a  ec00                    PAGE            0X0
:0X15b  6235                    CALL            HADR_0X235
:0X15c  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x08, 0xB6C4);//ES7W8020
:0X15d  e508                    MOVI            0X8
:0X15e  208a                    MOVAR           HRAM_0X8A
:0X15f  e5c4                    MOVI            0XC4
:0X160  208b                    MOVAR           HRAM_0X8B
:0X161  e5b6                    MOVI            0XB6
:0X162  208c                    MOVAR           HRAM_0X8C
:0X163  ec00                    PAGE            0X0
:0X164  6235                    CALL            HADR_0X235
:0X165  ec00                    PAGE            0X0
;	hw2000b_write_reg(0x09, 0xB442);//ES7W8020  
:0X166  e509                    MOVI            0X9
:0X167  208a                    MOVAR           HRAM_0X8A
:0X168  e542                    MOVI            0X42
:0X169  208b                    MOVAR           HRAM_0X8B
:0X16a  e5b4                    MOVI            0XB4
:0X16b  208c                    MOVAR           HRAM_0X8C
:0X16c  ec00                    PAGE            0X0
:0X16d  6235                    CALL            HADR_0X235
:0X16e  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x4A, 0x326C);//ES7W8020 
:0X16f  e54a                    MOVI            0X4A
:0X170  208a                    MOVAR           HRAM_0X8A
:0X171  e56c                    MOVI            0X6C
:0X172  208b                    MOVAR           HRAM_0X8B
:0X173  e532                    MOVI            0X32
:0X174  208c                    MOVAR           HRAM_0X8C
:0X175  ec00                    PAGE            0X0
:0X176  6235                    CALL            HADR_0X235
:0X177  ec00                    PAGE            0X0
;
;    hw2000b_write_reg(0x0B, 0x0873);//ES7W8020   tx power:8dBm
:0X178  e50b                    MOVI            0XB
:0X179  208a                    MOVAR           HRAM_0X8A
:0X17a  e573                    MOVI            0X73
:0X17b  208b                    MOVAR           HRAM_0X8B
:0X17c  e508                    MOVI            0X8
:0X17d  208c                    MOVAR           HRAM_0X8C
:0X17e  ec00                    PAGE            0X0
:0X17f  6235                    CALL            HADR_0X235
:0X180  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x49, 0x1330);//ES7W8020   
:0X181  e549                    MOVI            0X49
:0X182  208a                    MOVAR           HRAM_0X8A
:0X183  e530                    MOVI            0X30
:0X184  208b                    MOVAR           HRAM_0X8B
:0X185  e513                    MOVI            0X13
:0X186  208c                    MOVAR           HRAM_0X8C
:0X187  ec00                    PAGE            0X0
:0X188  6235                    CALL            HADR_0X235
:0X189  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x27, 0x8F20);//ES7W8020   
:0X18a  e527                    MOVI            0X27
:0X18b  208a                    MOVAR           HRAM_0X8A
:0X18c  e520                    MOVI            0X20
:0X18d  208b                    MOVAR           HRAM_0X8B
:0X18e  e58f                    MOVI            0X8F
:0X18f  208c                    MOVAR           HRAM_0X8C
:0X190  ec00                    PAGE            0X0
:0X191  6235                    CALL            HADR_0X235
:0X192  ec00                    PAGE            0X0
;	hw2000b_write_reg(0x48, 0x4300);//ES7W8020
:0X193  e548                    MOVI            0X48
:0X194  208a                    MOVAR           HRAM_0X8A
:0X195  e500                    MOVI            0X0
:0X196  208b                    MOVAR           HRAM_0X8B
:0X197  e543                    MOVI            0X43
:0X198  208c                    MOVAR           HRAM_0X8C
:0X199  ec00                    PAGE            0X0
:0X19a  6235                    CALL            HADR_0X235
:0X19b  ec00                    PAGE            0X0
;	hw2000b_write_reg(0x26, 0x000C);//ES7W8020
:0X19c  e526                    MOVI            0X26
:0X19d  208a                    MOVAR           HRAM_0X8A
:0X19e  e50c                    MOVI            0XC
:0X19f  208b                    MOVAR           HRAM_0X8B
:0X1a0  e500                    MOVI            0X0
:0X1a1  208c                    MOVAR           HRAM_0X8C
:0X1a2  ec00                    PAGE            0X0
:0X1a3  6235                    CALL            HADR_0X235
:0X1a4  ec00                    PAGE            0X0
;
;    hw2000b_write_reg(0x28, 0x8401);//sync_thres:1bit
:0X1a5  e528                    MOVI            0X28
:0X1a6  208a                    MOVAR           HRAM_0X8A
:0X1a7  e501                    MOVI            0X1
:0X1a8  208b                    MOVAR           HRAM_0X8B
:0X1a9  e584                    MOVI            0X84
:0X1aa  208c                    MOVAR           HRAM_0X8C
:0X1ab  ec00                    PAGE            0X0
:0X1ac  6235                    CALL            HADR_0X235
:0X1ad  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x2C, 0x918B);	
:0X1ae  e52c                    MOVI            0X2C
:0X1af  208a                    MOVAR           HRAM_0X8A
:0X1b0  e58b                    MOVI            0X8B
:0X1b1  208b                    MOVAR           HRAM_0X8B
:0X1b2  e591                    MOVI            0X91
:0X1b3  208c                    MOVAR           HRAM_0X8C
:0X1b4  ec00                    PAGE            0X0
:0X1b5  6235                    CALL            HADR_0X235
:0X1b6  ec00                    PAGE            0X0
;	hw2000b_write_reg(0x2A, 0x40FF);//rate:250kbps     ACK_time:1000us
:0X1b7  e52a                    MOVI            0X2A
:0X1b8  208a                    MOVAR           HRAM_0X8A
:0X1b9  e5ff                    MOVI            0XFF
:0X1ba  208b                    MOVAR           HRAM_0X8B
:0X1bb  e540                    MOVI            0X40
:0X1bc  208c                    MOVAR           HRAM_0X8C
:0X1bd  ec00                    PAGE            0X0
:0X1be  6235                    CALL            HADR_0X235
:0X1bf  ec00                    PAGE            0X0
;	hw2000b_write_reg(0x1A, 0x0D31);
:0X1c0  e51a                    MOVI            0X1A
:0X1c1  208a                    MOVAR           HRAM_0X8A
:0X1c2  e531                    MOVI            0X31
:0X1c3  208b                    MOVAR           HRAM_0X8B
:0X1c4  e50d                    MOVI            0XD
:0X1c5  208c                    MOVAR           HRAM_0X8C
:0X1c6  ec00                    PAGE            0X0
:0X1c7  6235                    CALL            HADR_0X235
:0X1c8  ec00                    PAGE            0X0
;	hw2000b_write_reg(0x19, 0x0884);
:0X1c9  e519                    MOVI            0X19
:0X1ca  208a                    MOVAR           HRAM_0X8A
:0X1cb  e584                    MOVI            0X84
:0X1cc  208b                    MOVAR           HRAM_0X8B
:0X1cd  e508                    MOVI            0X8
:0X1ce  208c                    MOVAR           HRAM_0X8C
:0X1cf  ec00                    PAGE            0X0
:0X1d0  6235                    CALL            HADR_0X235
:0X1d1  ec00                    PAGE            0X0
;	hw2000b_write_reg(0x20, 0xF000);//preamble:16 bytes  sync:48 bits
:0X1d2  e520                    MOVI            0X20
:0X1d3  208a                    MOVAR           HRAM_0X8A
:0X1d4  e500                    MOVI            0X0
:0X1d5  208b                    MOVAR           HRAM_0X8B
:0X1d6  e5f0                    MOVI            0XF0
:0X1d7  208c                    MOVAR           HRAM_0X8C
:0X1d8  ec00                    PAGE            0X0
:0X1d9  6235                    CALL            HADR_0X235
:0X1da  ec00                    PAGE            0X0
;
;	hw2000b_write_reg(0x3C, 0x1001);//Enable PIPE0、PIPE0 ACK、PIPE0 PAYLOAD
:0X1db  e53c                    MOVI            0X3C
:0X1dc  208a                    MOVAR           HRAM_0X8A
:0X1dd  e501                    MOVI            0X1
:0X1de  208b                    MOVAR           HRAM_0X8B
:0X1df  e510                    MOVI            0X10
:0X1e0  208c                    MOVAR           HRAM_0X8C
:0X1e1  ec00                    PAGE            0X0
:0X1e2  6235                    CALL            HADR_0X235
:0X1e3  ec00                    PAGE            0X0
;
;	// pipe 0 addr set 
;    hw2000b_write_reg(0x40, 0x1122); 
:0X1e4  e540                    MOVI            0X40
:0X1e5  208a                    MOVAR           HRAM_0X8A
:0X1e6  e522                    MOVI            0X22
:0X1e7  208b                    MOVAR           HRAM_0X8B
:0X1e8  e511                    MOVI            0X11
:0X1e9  208c                    MOVAR           HRAM_0X8C
:0X1ea  ec00                    PAGE            0X0
:0X1eb  6235                    CALL            HADR_0X235
:0X1ec  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x41, 0x3344); 
:0X1ed  e541                    MOVI            0X41
:0X1ee  208a                    MOVAR           HRAM_0X8A
:0X1ef  e544                    MOVI            0X44
:0X1f0  208b                    MOVAR           HRAM_0X8B
:0X1f1  e533                    MOVI            0X33
:0X1f2  208c                    MOVAR           HRAM_0X8C
:0X1f3  ec00                    PAGE            0X0
:0X1f4  6235                    CALL            HADR_0X235
:0X1f5  ec00                    PAGE            0X0
;    hw2000b_write_reg(0x42, 0x5566); 
:0X1f6  e542                    MOVI            0X42
:0X1f7  208a                    MOVAR           HRAM_0X8A
:0X1f8  e566                    MOVI            0X66
:0X1f9  208b                    MOVAR           HRAM_0X8B
:0X1fa  e555                    MOVI            0X55
:0X1fb  208c                    MOVAR           HRAM_0X8C
:0X1fc  ec00                    PAGE            0X0
:0X1fd  6235                    CALL            HADR_0X235
:0X1fe  ec00                    PAGE            0X0
;
;}
:0X1ff  c183                    RET
HADR_0X200:
;/**************************************************************************
;* 版权声明：Copyright@2019 上海东软载波微电子有限公司
;* 文件名称：io.c
;* 功能描述：io管脚
;* 函数列表：io_init
;* 文件作者：Ljj  
;* 文件版本：
;* 完成日期：2023-08-23
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;#include <hic.h>
;#include "io.h"
;
;/**************************************************************************
;* 函数名称：io_init
;* 功能描述：初始化IO
;* 输入参数：无
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/ 
;void GPIOInit(void)
;{
;	//PA0 NC, PA1 TX0，PA2 RX0， PA3 MRST，PA4 NC，PA5 ISPDA,   PA6 NC，     PA7 PINT5
;	//PB0 NC, PB1 NC， PB2 NC，	PB3 HW2000B_IRQ        PB4 HW2000B_SCK，PB5 HW2000B_MOSI，PB6 HW2000B_MISO，PB7 HW2000B_CE
;	//PC0 HW2000B_CSN，         PC1 ISPCK
;	ANSL = 0xFF;        //选择对应端口为数字IO功能
:0X200  e783                    CLR             HRAM_0X83
:0X201  e5ff                    MOVI            0XFF
:0X202  e6bc                    MOVA            HRAM_0XBC
;	ANSH = 0xFF;        //选择对应端口为数字IO功能
:0X203  e5ff                    MOVI            0XFF
:0X204  e68d                    MOVA            HRAM_0X8D
;
;    PAT = 0x85;         //PA1 3 4 5 6 7输出，PA0 2 7输入  RX0
:0X205  e585                    MOVI            0X85
:0X206  e6ad                    MOVA            HRAM_0XAD
;    PBT = 0x48;			//PB0 1 2 4 5 7输出，PB3 6输入
:0X207  e548                    MOVI            0X48
:0X208  e6ae                    MOVA            HRAM_0XAE
;    PCT = 0x00;			//PC0 1输出
:0X209  e7af                    CLR             HRAM_0XAF
;    PA = 0x00;
:0X20a  e7a8                    CLR             HRAM_0XA8
;    PB = 0x00;
:0X20b  e7a9                    CLR             HRAM_0XA9
;    PC = 0x00;
:0X20c  e7aa                    CLR             HRAM_0XAA
;
;
;	KMSK4 = 1;   //KINT4取消屏蔽
:0X20d  a4a3                    BSS             HRAM_0XA3,      4
;	INTF0 = 0x00;	//清除中断标志
:0X20e  e79a                    CLR             HRAM_0X9A
;	INTE0 |= 0x10;	//使能KIE
:0X20f  a499                    BSS             HRAM_0X99,      4
;
;}
:0X210  c183                    RET
HADR_0X211:
;/**************************************************************************
;* 版权声明：Copyright@2019 上海东软载波微电子有限公司
;* 文件名称：main.c
;* 功能描述：
;* 函数列表：
;* 文件作者：Ljj  
;* 文件版本：
;* 完成日期：2023-08-23
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;#include <hic.h>
;#include "string.h" 
;#include "io.h"
;#include "hw2000b.h"
;#include "timer.h"
;#include "ram.h"
;#include "spi.h"
;
;#define CLRWDT()   {__Asm CWDT;}        //宏定义清狗指令
;
;uint16_t	_ack_count;
;sbit		_hw2000b_irq_request;	//射频中断标志
;sbit		rx_ok;
;
;uint8_t data_rf[30];	
;uint8_t rxbuf[30];
;uint8_t rxbuf_cnt;
;uint8_t rxbuf_crc;
;
;
;void WDT_Init(void)
;{
;    WDTC = 0x16;         //分频比1:128，使能WDT预分频器，看门狗溢出时间t=256*128/32000=1.024s
:0X211  e783                    CLR             HRAM_0X83
:0X212  e516                    MOVI            0X16
:0X213  e6a4                    MOVA            HRAM_0XA4
;    PWEN &= 0xFD;
:0X214  a9a7                    BCC             HRAM_0XA7,      1
;    PWEN |= 0<<1;		//禁止IDLE状态下计数
;}
:0X215  c183                    RET
HADR_0X216:
;
;
;void UART_Init(void)
;{
;    RX0LEN = 0;     //8位数据接收格式
:0X216  e783                    CLR             HRAM_0X83
:0X217  a483                    BSS             HRAM_0X83,      4
:0X218  aed0                    BCC             HRAM_0XD0,      6
;    TX0LEN = 0;     //8位数据发送格式
:0X219  aed2                    BCC             HRAM_0XD2,      6
;	//BJT0EN = 1;		//波特率去抖使能
;    //BRGH0 = 0;		//波特率低速模式：波特率=Fosc/(64*BRRDIV))
;    //BR0R = 0xD0;		//波特率整数部分=16MHz/(64*1200bps)=208.3333
;	//BR0FRA = 0x05;	//波特率小数部分=16*0.3333 ≈ 5
;
;    //BRGH0 = 0;      //波特率低速模式：波特率=Fosc/(64*(BRR<7:0>+1))
;    //BR0R = 0x19;    //波特率=16MHz/(64*(25+1))≈9600bps
;
;    BRGH0 = 0;		//波特率低速模式：波特率=Fosc/(64*(BRR<7:0>+1))
:0X21a  add2                    BCC             HRAM_0XD2,      5
;    BR0R = 0x33;	//波特率=16MHz/(64*(51+1))≈4800bps
:0X21b  e533                    MOVI            0X33
:0X21c  e6d3                    MOVA            HRAM_0XD3
;
;	RX0TXEN = 0;		//串口管脚交互
:0X21d  acd0                    BCC             HRAM_0XD0,      4
;
;	//RX0IE = 1;		//接收中断
;	//RX0EN = 1;        //打开串口接收
;
;	TX0EN = 1;			//打开串口发送
:0X21e  a7d2                    BSS             HRAM_0XD2,      7
;}
:0X21f  ac83                    BCC             HRAM_0X83,      4
:0X220  c183                    RET
HADR_0X221:
;/**************************************************************************
;* 版权声明：Copyright@2019 上海东软载波微电子有限公司
;* 文件名称：spi.c
;* 功能描述：spi通讯函数
;* 函数列表：spi_init			
;* 文件作者：Ljj  
;* 文件版本：
;* 完成日期：2023-08-23
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;#include <hic.h>
;#include "type.h"
;#include "spi.h"
;
;#define		CSN_0()		CSN = 0
;#define		CSN_1()		CSN = 1
;
;uint8_t		val_h, val_l;
;
;/**************************************************************************
;* 函数名称：spi_init
;* 功能描述：初始化spi
;* 输入参数：无
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void spi_init(void)
;{
;	TCSN = 0;
:0X221  e783                    CLR             HRAM_0X83
:0X222  a8af                    BCC             HRAM_0XAF,      0
;	TSCK = 0;
:0X223  acae                    BCC             HRAM_0XAE,      4
;	TMOSI = 0;
:0X224  adae                    BCC             HRAM_0XAE,      5
;	TMISO = 1;
:0X225  a6ae                    BSS             HRAM_0XAE,      6
;
;	CSN = 1;
:0X226  a0aa                    BSS             HRAM_0XAA,      0
;	SCK = 0;
:0X227  aca9                    BCC             HRAM_0XA9,      4
;	MOSI = 0;
:0X228  ada9                    BCC             HRAM_0XA9,      5
;
;	SPIRST = 1;			//复位SPI
:0X229  a483                    BSS             HRAM_0X83,      4
:0X22a  a1c1                    BSS             HRAM_0XC1,      1
HADR_0X22B:
;    while(SPIRST);
:0X22b  99c1                    JBC             HRAM_0XC1,      1
:0X22c  6a2b                    GOTO            HADR_0X22B
;    SPICON0 = 0xF0;     //CKS = Fosc/16 = 32/32 = 1MHz，清空发送器、接收器，字节读写 0xF0:Fosc/16 0xE0:Fosc/8 0xD0:Fosc/4 0xC0:Fosc/2
:0X22d  e5f0                    MOVI            0XF0
:0X22e  e6c0                    MOVA            HRAM_0XC0
;    SPICON1 = 0x00;      //0:上升沿发送（先），下降沿接收（后）；
:0X22f  e7c1                    CLR             HRAM_0XC1
;    MS = 0;				//0：主机模式，1：从机模式
:0X230  aac1                    BCC             HRAM_0XC1,      2
;    RBIE = 0;			//关闭接收中断	
:0X231  a9c2                    BCC             HRAM_0XC2,      1
;    SPIEN = 1;			//SPI使能
:0X232  a0c1                    BSS             HRAM_0XC1,      0
;}
:0X233  ac83                    BCC             HRAM_0X83,      4
:0X234  c183                    RET
HADR_0X235:
;
;/**************************************************************************
;* 函数名称：hw2000b_write_reg
;* 功能描述：写hw2000b寄存器
;* 输入参数：addr  寄存器地址
;            value 寄存器值
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void hw2000b_write_reg(uint8_t addr, uint16_t data)
;{
;	addr |= 0x80;
:0X235  e783                    CLR             HRAM_0X83
:0X236  ea01                    SECTION         0X1
:0X237  a70a                    BSS             HRAM_0XA,       7
;	REN = 0;        //关闭接收
:0X238  a483                    BSS             HRAM_0X83,      4
:0X239  abc1                    BCC             HRAM_0XC1,      3
;
;	CSN_0();
:0X23a  a8aa                    BCC             HRAM_0XAA,      0
;	SPITBW = addr;
:0X23b  500a                    MOV             HRAM_0XA,       A
:0X23c  e6c5                    MOVA            HRAM_0XC5
HADR_0X23D:
;    while(!TBIF);
:0X23d  90c3                    JBS             HRAM_0XC3,      0
:0X23e  6a3d                    GOTO            HADR_0X23D
;	SPITBW = data>>8;
:0X23f  e508                    MOVI            0X8
:0X240  e001                    ADDI            0X1
:0X241  ea00                    SECTION         0X0
:0X242  e607                    MOVA            HRAM_0X7
:0X243  788b                    MOVRA           HRAM_0X8B
:0X244  e608                    MOVA            HRAM_0X8
:0X245  788c                    MOVRA           HRAM_0X8C
:0X246  e609                    MOVA            HRAM_0X9
:0X247  5007                    MOV             HRAM_0X7,       A
:0X248  6a4c                    GOTO            HADR_0X24C
HADR_0X249:
:0X249  a884                    BCC             HRAM_0X84,      0
:0X24a  d109                    RRB             HRAM_0X9,       R,              0X1
:0X24b  d108                    RRB             HRAM_0X8,       R,              0X1
HADR_0X24C:
:0X24c  e0ff                    ADDI            0XFF
:0X24d  9284                    JBS             HRAM_0X84,      2
:0X24e  6a49                    GOTO            HADR_0X249
:0X24f  5008                    MOV             HRAM_0X8,       A
:0X250  e6c5                    MOVA            HRAM_0XC5
HADR_0X251:
;	while(!TBIF);
:0X251  90c3                    JBS             HRAM_0XC3,      0
:0X252  6a51                    GOTO            HADR_0X251
;	SPITBW = data;
:0X253  ea01                    SECTION         0X1
:0X254  500b                    MOV             HRAM_0XB,       A
:0X255  e6c5                    MOVA            HRAM_0XC5
HADR_0X256:
;	while(!IDIF);
:0X256  94c3                    JBS             HRAM_0XC3,      4
:0X257  6a56                    GOTO            HADR_0X256
;
;	CSN_1();
:0X258  a0aa                    BSS             HRAM_0XAA,      0
;}
:0X259  ea00                    SECTION         0X0
:0X25a  ac83                    BCC             HRAM_0X83,      4
:0X25b  c183                    RET
HADR_0X25C:
;
;/**************************************************************************
;* 函数名称：hw2000b_read_reg
;* 功能描述：读hw2000b寄存器
;* 输入参数：addr  寄存器地址
;* 返回参数：value 寄存器值
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;uint16_t hw2000b_read_reg(uint8_t addr)
;{
;    CSN_0();
:0X25c  e783                    CLR             HRAM_0X83
:0X25d  a8aa                    BCC             HRAM_0XAA,      0
;	REN = 1;        //打开接收
:0X25e  a483                    BSS             HRAM_0X83,      4
:0X25f  a3c1                    BSS             HRAM_0XC1,      3
;
;	SPITBW = addr;
:0X260  ea01                    SECTION         0X1
:0X261  5005                    MOV             HRAM_0X5,       A
:0X262  e6c5                    MOVA            HRAM_0XC5
HADR_0X263:
;	while (!RBIF);   //等待接收完成
:0X263  91c3                    JBS             HRAM_0XC3,      1
:0X264  6a63                    GOTO            HADR_0X263
;	val_h = SPIRBR;  //读数据
:0X265  50c4                    MOV             HRAM_0XC4,      A
:0X266  e60e                    MOVA            HRAM_0XE
;
;	SPITBW = 0xFF;
:0X267  e5ff                    MOVI            0XFF
:0X268  e6c5                    MOVA            HRAM_0XC5
HADR_0X269:
;	while (!RBIF);   //等待接收完成
:0X269  91c3                    JBS             HRAM_0XC3,      1
:0X26a  6a69                    GOTO            HADR_0X269
;	val_h = SPIRBR;  //读数据
:0X26b  50c4                    MOV             HRAM_0XC4,      A
:0X26c  e60e                    MOVA            HRAM_0XE
;
;	SPITBW = 0xFF;
:0X26d  e5ff                    MOVI            0XFF
:0X26e  e6c5                    MOVA            HRAM_0XC5
HADR_0X26F:
;	while (!RBIF);   //等待接收完成
:0X26f  91c3                    JBS             HRAM_0XC3,      1
:0X270  6a6f                    GOTO            HADR_0X26F
;	val_l = SPIRBR;  //读数据
:0X271  50c4                    MOV             HRAM_0XC4,      A
:0X272  e60f                    MOVA            HRAM_0XF
;
;	CSN_1();
:0X273  a0aa                    BSS             HRAM_0XAA,      0
;	REN = 0;        //关闭接收
:0X274  abc1                    BCC             HRAM_0XC1,      3
;
;	return ((val_h <<8) + val_l);
:0X275  e706                    CLR             HRAM_0X6
:0X276  500e                    MOV             HRAM_0XE,       A
:0X277  e605                    MOVA            HRAM_0X5
:0X278  5005                    MOV             HRAM_0X5,       A
:0X279  e608                    MOVA            HRAM_0X8
:0X27a  e707                    CLR             HRAM_0X7
:0X27b  e706                    CLR             HRAM_0X6
:0X27c  500f                    MOV             HRAM_0XF,       A
:0X27d  e605                    MOVA            HRAM_0X5
:0X27e  5005                    MOV             HRAM_0X5,       A
:0X27f  5e07                    ADD             HRAM_0X7,       A
:0X280  e609                    MOVA            HRAM_0X9
:0X281  5006                    MOV             HRAM_0X6,       A
:0X282  1408                    ADDC            HRAM_0X8,       A
:0X283  e60a                    MOVA            HRAM_0XA
:0X284  5009                    MOV             HRAM_0X9,       A
:0X285  2007                    MOVAR           HRAM_0X7
:0X286  500a                    MOV             HRAM_0XA,       A
:0X287  2008                    MOVAR           HRAM_0X8
:0X288  7807                    MOVRA           HRAM_0X7
:0X289  ea00                    SECTION         0X0
:0X28a  ac83                    BCC             HRAM_0X83,      4
:0X28b  c183                    RET
HADR_0X28C:
;}
;
;/**************************************************************************
;* 函数名称：hw2000b_write_fifo
;* 功能描述：写hw2000b FIFO
;* 输入参数：addr   FIFO地址
;            data   数据地址
;            length 数据长度
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void hw2000b_write_fifo(uint8_t addr, uint8_t *data, uint8_t length)
;{
;	uint16_t i;	
;	addr |= 0x80;
;	REN = 0;        //关闭接收
;
;	CSN_0();
;	SPITBW = addr;           //write addr
;	
;	for (i = 0; i < length; i++) {
;		while (!TBIF);       //waiting for spi txb empty
;		SPITBW = data[i];    //write  data
;	}
;	while (!IDIF);
;
;	CSN_1();
;}
;
;/**************************************************************************
;* 函数名称：hw2000b_read_fifo
;* 功能描述：写hw2000b FIFO
;* 输入参数：addr   FIFO地址
;            data   数据地址
;            length 数据长度
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void hw2000b_read_fifo(uint8_t addr, uint8_t *data, uint8_t length)
;{
;	uint16_t i;
;
;	SPIEN = 1;      //SPI使能
:0X28c  e783                    CLR             HRAM_0X83
:0X28d  a483                    BSS             HRAM_0X83,      4
:0X28e  a0c1                    BSS             HRAM_0XC1,      0
;	REN = 1;        //打开接收
:0X28f  a3c1                    BSS             HRAM_0XC1,      3
;
;	CSN_0();
:0X290  a8aa                    BCC             HRAM_0XAA,      0
;	SPITBW = addr;        //write addr
:0X291  ea01                    SECTION         0X1
:0X292  5005                    MOV             HRAM_0X5,       A
:0X293  e6c5                    MOVA            HRAM_0XC5
HADR_0X294:
;	while (!RBIF);        //waiting for spi rxb full
:0X294  91c3                    JBS             HRAM_0XC3,      1
:0X295  6a94                    GOTO            HADR_0X294
;	data[0] = SPIRBR;
:0X296  5007                    MOV             HRAM_0X7,       A
:0X297  e60a                    MOVA            HRAM_0XA
:0X298  5006                    MOV             HRAM_0X6,       A
:0X299  e609                    MOVA            HRAM_0X9
:0X29a  500a                    MOV             HRAM_0XA,       A
:0X29b  e682                    MOVA            HRAM_0X82
:0X29c  5009                    MOV             HRAM_0X9,       A
:0X29d  e681                    MOVA            HRAM_0X81
:0X29e  50c4                    MOV             HRAM_0XC4,      A
:0X29f  e680                    MOVA            HRAM_0X80
:0X2a0  c201                    ISTEP           0X1
;	for (i = 0; i < length; i++) {
:0X2a1  e709                    CLR             HRAM_0X9
:0X2a2  e70a                    CLR             HRAM_0XA
HADR_0X2A3:
:0X2a3  e70c                    CLR             HRAM_0XC
:0X2a4  5008                    MOV             HRAM_0X8,       A
:0X2a5  e60b                    MOVA            HRAM_0XB
:0X2a6  500c                    MOV             HRAM_0XC,       A
:0X2a7  ee0a                    SUB             HRAM_0XA,       A
:0X2a8  9284                    JBS             HRAM_0X84,      2
:0X2a9  6aac                    GOTO            HADR_0X2AC
:0X2aa  500b                    MOV             HRAM_0XB,       A
:0X2ab  ee09                    SUB             HRAM_0X9,       A
HADR_0X2AC:
:0X2ac  9884                    JBC             HRAM_0X84,      0
:0X2ad  6ac4                    GOTO            HADR_0X2C4
;		SPITBW = 0xFF;
:0X2ae  e5ff                    MOVI            0XFF
:0X2af  e6c5                    MOVA            HRAM_0XC5
HADR_0X2B0:
;		while (!RBIF);    //waiting for spi rxb full
:0X2b0  91c3                    JBS             HRAM_0XC3,      1
:0X2b1  6ab0                    GOTO            HADR_0X2B0
;		data[i] = SPIRBR;
:0X2b2  5006                    MOV             HRAM_0X6,       A
:0X2b3  5e09                    ADD             HRAM_0X9,       A
:0X2b4  e60b                    MOVA            HRAM_0XB
:0X2b5  5007                    MOV             HRAM_0X7,       A
:0X2b6  140a                    ADDC            HRAM_0XA,       A
:0X2b7  e60c                    MOVA            HRAM_0XC
:0X2b8  500c                    MOV             HRAM_0XC,       A
:0X2b9  e682                    MOVA            HRAM_0X82
:0X2ba  500b                    MOV             HRAM_0XB,       A
:0X2bb  e681                    MOVA            HRAM_0X81
:0X2bc  50c4                    MOV             HRAM_0XC4,      A
:0X2bd  e680                    MOVA            HRAM_0X80
:0X2be  c201                    ISTEP           0X1
:0X2bf  5509                    INC             HRAM_0X9,       R
:0X2c0  9284                    JBS             HRAM_0X84,      2
:0X2c1  6ac3                    GOTO            HADR_0X2C3
:0X2c2  550a                    INC             HRAM_0XA,       R
HADR_0X2C3:
;	}
:0X2c3  6aa3                    GOTO            HADR_0X2A3
HADR_0X2C4:
;
;	CSN_1();
:0X2c4  a0aa                    BSS             HRAM_0XAA,      0
;	REN = 0;        //关闭接收
:0X2c5  abc1                    BCC             HRAM_0XC1,      3
;}
:0X2c6  ea00                    SECTION         0X0
:0X2c7  ac83                    BCC             HRAM_0X83,      4
:0X2c8  c183                    RET
HADR_0X2C9:
;/**************************************************************************
;* 版权声明：Copyright@2019 上海东软载波微电子有限公司
;* 文件名称：timer.c
;* 功能描述：定时器函数
;* 函数列表：delay_ms
;			delay_us
;* 文件作者：Ljj  
;* 文件版本：
;* 完成日期：2023-08-23
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;#include <hic.h>
;#include "type.h"
;
;/**************************************************************************
;* 函数名称：delay_ms
;* 功能描述：毫秒级延时函数
;* 输入参数：ms   延时毫秒数，输入范围0-65535
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void delay_ms(uint16_t ms)
;{
;    uint16_t i;
;
;	T8N = 130;		//定时时间: (255-130)*8us = 1000us=1ms
:0X2c9  e783                    CLR             HRAM_0X83
:0X2ca  e582                    MOVI            0X82
:0X2cb  e6bd                    MOVA            HRAM_0XBD
;    T8NC = 0x8E;    //0x8D:预分频1:64 (32M/2/64)= 1/8M = 8us
:0X2cc  e58e                    MOVI            0X8E
:0X2cd  e6be                    MOVA            HRAM_0XBE
;	T8NIF = 0;
:0X2ce  a99a                    BCC             HRAM_0X9A,      1
;	T8NIE = 0;
:0X2cf  a999                    BCC             HRAM_0X99,      1
;
;	for (i = 0; i < ms; i++) {
:0X2d0  ea01                    SECTION         0X1
:0X2d1  e707                    CLR             HRAM_0X7
:0X2d2  e708                    CLR             HRAM_0X8
HADR_0X2D3:
:0X2d3  5006                    MOV             HRAM_0X6,       A
:0X2d4  ee08                    SUB             HRAM_0X8,       A
:0X2d5  9284                    JBS             HRAM_0X84,      2
:0X2d6  6ad9                    GOTO            HADR_0X2D9
:0X2d7  5005                    MOV             HRAM_0X5,       A
:0X2d8  ee07                    SUB             HRAM_0X7,       A
HADR_0X2D9:
:0X2d9  9884                    JBC             HRAM_0X84,      0
:0X2da  6ae6                    GOTO            HADR_0X2E6
HADR_0X2DB:
;        while(!T8NIF);
:0X2db  919a                    JBS             HRAM_0X9A,      1
:0X2dc  6adb                    GOTO            HADR_0X2DB
;		T8NIF = 0;
:0X2dd  a99a                    BCC             HRAM_0X9A,      1
;		T8N += 130;
:0X2de  50bd                    MOV             HRAM_0XBD,      A
:0X2df  e082                    ADDI            0X82
:0X2e0  e6bd                    MOVA            HRAM_0XBD
:0X2e1  5507                    INC             HRAM_0X7,       R
:0X2e2  9284                    JBS             HRAM_0X84,      2
:0X2e3  6ae5                    GOTO            HADR_0X2E5
:0X2e4  5508                    INC             HRAM_0X8,       R
HADR_0X2E5:
;    }
:0X2e5  6ad3                    GOTO            HADR_0X2D3
HADR_0X2E6:
;}
:0X2e6  ea00                    SECTION         0X0
:0X2e7  c183                    RET
HADR_0X2E8:
;
;/**************************************************************************
;* 函数名称：delay_us
;* 功能描述：微秒级延时函数
;* 输入参数：us   延时微妙数，输入范围0-65535
;* 返回参数：无
;* 函数作者：
;* 完成日期：
;* 修订历史：
;* 修订日期：
;**************************************************************************/
;void delay_us(uint16_t us)
;{
;	uint16_t i;
;	
;	for (i = 0; i < us; i++) {
:0X2e8  e783                    CLR             HRAM_0X83
:0X2e9  ea01                    SECTION         0X1
:0X2ea  e707                    CLR             HRAM_0X7
:0X2eb  e708                    CLR             HRAM_0X8
HADR_0X2EC:
:0X2ec  5006                    MOV             HRAM_0X6,       A
:0X2ed  ee08                    SUB             HRAM_0X8,       A
:0X2ee  9284                    JBS             HRAM_0X84,      2
:0X2ef  6af2                    GOTO            HADR_0X2F2
:0X2f0  5005                    MOV             HRAM_0X5,       A
:0X2f1  ee07                    SUB             HRAM_0X7,       A
HADR_0X2F2:
:0X2f2  9884                    JBC             HRAM_0X84,      0
:0X2f3  6af9                    GOTO            HADR_0X2F9
:0X2f4  5507                    INC             HRAM_0X7,       R
:0X2f5  9284                    JBS             HRAM_0X84,      2
:0X2f6  6af8                    GOTO            HADR_0X2F8
:0X2f7  5508                    INC             HRAM_0X8,       R
HADR_0X2F8:
;	}
:0X2f8  6aec                    GOTO            HADR_0X2EC
HADR_0X2F9:
;}
:0X2f9  ea00                    SECTION         0X0
:0X2fa  c183                    RET
                                ORG             0X3800
:0X3800  a884                   BCC             HRAM_0X84,      0
:0X3801  7810                   MOVRA           HRAM_0X10
:0X3802  d185                   RRB             HRAM_0X85,      R,              0X1
:0X3803  e691                   MOVA            HRAM_0X91
:0X3804  780f                   MOVRA           HRAM_0XF
:0X3805  d185                   RRB             HRAM_0X85,      R,              0X1
:0X3806  e690                   MOVA            HRAM_0X90
:0X3807  c184                   TBR
:0X3808  990f                   JBC             HRAM_0XF,       1
:0X3809  680e                   GOTO            HADR_0XE
:0X380a  5092                   MOV             HRAM_0X92,      A
:0X380b  980f                   JBC             HRAM_0XF,       0
:0X380c  5093                   MOV             HRAM_0X93,      A
:0X380d  6811                   GOTO            HADR_0X11
:0X380e  50a1                   MOV             HRAM_0XA1,      A
:0X380f  980f                   JBC             HRAM_0XF,       0
:0X3810  50a2                   MOV             HRAM_0XA2,      A
:0X3811  550f                   INC             HRAM_0XF,       R
:0X3812  9a84                   JBC             HRAM_0X84,      2
:0X3813  5510                   INC             HRAM_0X10,      R
:0X3814  c183                   RET

                                END
