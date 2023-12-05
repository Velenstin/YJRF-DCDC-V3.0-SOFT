/**************************************************************************
* 版权声明：Copyright@2019 上海东软载波微电子有限公司
* 文件名称：main.c
* 功能描述：
* 函数列表：
* 文件作者：Ljj  
* 文件版本：
* 完成日期：2023-08-23
* 修订历史：
* 修订日期：
**************************************************************************/
#include <hic.h>
#include "string.h" 
#include "io.h"
#include "hw2000b.h"
#include "timer.h"
#include "ram.h"
#include "spi.h"

#define CLRWDT()   {__Asm CWDT;}        //宏定义清狗指令

uint16_t	_ack_count;
sbit		_hw2000b_irq_request;	//射频中断标志
sbit		rx_ok;

uint8_t data_rf[30];	
uint8_t rxbuf[30];
uint8_t rxbuf_cnt;
uint8_t rxbuf_crc;


void WDT_Init(void)
{
    WDTC = 0x16;         //分频比1:128，使能WDT预分频器，看门狗溢出时间t=256*128/32000=1.024s
    PWEN &= 0xFD;
    PWEN |= 0<<1;		//禁止IDLE状态下计数
}


void UART_Init(void)
{
    RX0LEN = 0;     //8位数据接收格式
    TX0LEN = 0;     //8位数据发送格式
	//BJT0EN = 1;		//波特率去抖使能
    //BRGH0 = 0;		//波特率低速模式：波特率=Fosc/(64*BRRDIV))
    //BR0R = 0xD0;		//波特率整数部分=16MHz/(64*1200bps)=208.3333
	//BR0FRA = 0x05;	//波特率小数部分=16*0.3333 ≈ 5

    //BRGH0 = 0;      //波特率低速模式：波特率=Fosc/(64*(BRR<7:0>+1))
    //BR0R = 0x19;    //波特率=16MHz/(64*(25+1))≈9600bps

    BRGH0 = 0;		//波特率低速模式：波特率=Fosc/(64*(BRR<7:0>+1))
    BR0R = 0x33;	//波特率=16MHz/(64*(51+1))≈4800bps

	RX0TXEN = 0;		//串口管脚交互

	//RX0IE = 1;		//接收中断
	//RX0EN = 1;        //打开串口接收

	TX0EN = 1;			//打开串口发送
}



/**************************************************************************
* 函数名称：main
* 功能描述：工程入口
* 输入参数：无
* 返回参数：无
* 函数作者：
* 完成日期：
* 修订历史：
* 修订日期：
**************************************************************************/
void main(void) 
{
	uint8_t i;
	uint8_t data_buf;
	uint16_t reg;

    GPIOInit();										//初始化GPIO
	WDT_Init();										//初始化看门狗
	UART_Init();									//初始化串口

	spi_init();										//初始化SPI端口
	hw2000b_port_init();							//初始化射频端口
	hw2000b_init_250k();							//初始化射频参数

	GIE = 1;										//全局中断使能

	while(1) 
	{
		_hw2000b_irq_request = 0;					//清中断标志位
		hw2000b_write_reg(0x36, 0x0080);			//FIFO0 enable
		hw2000b_write_reg(0x37, 0x0000);			//FIFO1 disable
		hw2000b_write_reg(0x21, 0x0080);			//RX enable 

		while (!_hw2000b_irq_request)				//等待RF接收中断标志位
		{
			CLRWDT();								//清看门狗
			delay_us(50);							//延时
		}

		reg = hw2000b_read_reg(0x36);				//读取状态寄存器
		if ((reg & 0x2000) == 0)
		{     
			hw2000b_read_fifo(0x32, rxbuf, 1);			//读取接收数据长度值

			hw2000b_read_fifo(0x32, data_rf, rxbuf[0]); //读取数据

			for (i = 0; i<rxbuf[0]; i++)				//根据数据长度循环发送
			{
				while (!TRMT0);
				TX0B = data_rf[i];						//串口发送数据
			}
			while (!TRMT0);								//等待发送完成

		}

		hw2000b_write_reg(0x21, 0x0000);				//TX/RX disable
		hw2000b_write_reg(0x23, 0x431B);				//复位RF电路
		hw2000b_write_reg(0x23, 0x031B); 

        CLRWDT();										//清看门狗
	}
}

/**************************************************************************
* 函数名称：isr
* 功能描述：中断入口函数
* 输入参数：无
* 返回参数：无
* 函数作者：
* 完成日期：
* 修订历史：
* 修订日期：
**************************************************************************/
void isr(void) interrupt
{
	if(KIE && KMSK4 && KIF)
    {
		KIF = 0;       //清除外部中断
		if(IRQ)
		{
			_hw2000b_irq_request = 1;
		}
    }

}


