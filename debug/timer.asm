; Asm codes generated by Shanghai Haier C Compiler
; HRCO, Ver: 1.0,0137

#INCLUDE       	<ES7P0693.INC>
#INCLUDE       	<OPERATION.INC>
	PUBLIC         	_#T0
	EXTERN         	MUL_TEMP
	EXTERN         	MUL_TEMP
	PUBLIC         	_delay_ms
	PUBLIC         	_delay_msDATA
	PUBLIC         	_delay_us
	PUBLIC         	_delay_usDATA
_delay_ms_i_2	EQU            	_delay_msDATA + 0X2		; Bank 0
_delay_us_i_5	EQU            	_delay_usDATA + 0X2		; Bank 0
#TMP	EQU            	?_TMP+ 0X0		; Bank 0
?_TMP_RET	EQU            	?_TMP		; Bank 0
_MULA_0#sh	EQU            	(MULA - 0X6080) % 0X40 + 0xC0		; Bank 0
_MULB_0#sh	EQU            	(MULB - 0X6080) % 0X40 + 0xC0		; Bank 0
_MULL_0#sh	EQU            	(MULL - 0X6080) % 0X40 + 0xC0		; Bank 0
_MULH_0#sh	EQU            	(MULH - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVEL_0#sh	EQU            	(DIVEL - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVEM_0#sh	EQU            	(DIVEM - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVSL_0#sh	EQU            	(DIVSL - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVSH_0#sh	EQU            	(DIVSH - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVQL_0#sh	EQU            	(DIVQL - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVQM_0#sh	EQU            	(DIVQM - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVRL_0#sh	EQU            	(DIVRL - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVRH_0#sh	EQU            	(DIVRH - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVC_0#sh	EQU            	(DIVC - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVEU_0#sh	EQU            	(DIVEU - 0X6080) % 0X40 + 0xC0		; Bank 0
_DIVEH_0#sh	EQU            	(DIVEH - 0X6080) % 0X40 + 0xC0		; Bank 0
_FRAH_0#sh	EQU            	(FRAH - 0X6080) % 0X40 + 0xC0		; Bank 0
_FRAL_0#sh	EQU            	(FRAL - 0X6080) % 0X40 + 0xC0		; Bank 0
	_DESC          	delay_ms,0X0,0X0

SECTION1delay_ms	UNINTIAL       	0		; Bank 0
	ORG            	0X85		; Bank 0
_delay_msDATA	RSEG           	0X4		; Bank 0
delay_ms#	CSEG           
_delay_ms
; /**************************************************************************
; * 版权声明：Copyright@2019 上海东软载波微电子有限公司
; * 文件名称：timer.c
; * 功能描述：定时器函数
; * 函数列表：delay_ms
; 			delay_us
; * 文件作者：Ljj  
; * 文件版本：
; * 完成日期：2023-08-23
; * 修订历史：
; * 修订日期：
; **************************************************************************/
; #include <hic.h>
; #include "type.h"
; /**************************************************************************
; * 函数名称：delay_ms
; * 功能描述：毫秒级延时函数
; * 输入参数：ms   延时毫秒数，输入范围0-65535
; * 返回参数：无
; * 函数作者：
; * 完成日期：
; * 修订历史：
; * 修订日期：
; **************************************************************************/
; void delay_ms(uint16_t ms)
; {
;     uint16_t i;
#line 30	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 	T8N = 130;		//定时时间: (255-130)*8us = 1000us=1ms
	CLR            	BKSR
;   30:(    ASGN_1,        130 ,            ,       T8N)

; ITemplate_ASGN1_4_R
	MOVI           	0x82
	MOVA           	_T8N_0
#line 31	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ;     T8NC = 0x8E;    //0x8D:预分频1:64 (32M/2/64)= 1/8M = 8us
;   31:(    ASGN_1,        142 ,            ,      T8NC)

; ITemplate_ASGN1_4_R
	MOVI           	0x8e
	MOVA           	_T8NC_0
#line 32	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 	T8NIF = 0;
;   32:(    ASGN_0,          0 ,            ,     T8NIF)

; ITemplate_CLR_0_TMP
	BCC            	(_T8NIF_0)/8,	(_T8NIF_0)%8
#line 33	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 	T8NIE = 0;
;   33:(    ASGN_0,          0 ,            ,     T8NIE)

; ITemplate_CLR_0_TMP
	BCC            	(_T8NIE_0)/8,	(_T8NIE_0)%8
#line 35	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 	for (i = 0; i < ms; i++) {
;   35:(    ASGN_2,          0 ,            ,         i)

; ITemplate_CLR1_4_TMP
	SECTION        	0x1
	CLR            	(_delay_ms_i_2) & 0X7F		; Bank 1
	CLR            	(_delay_ms_i_2+0x1) & 0X7F		; Bank 1
;   35:(     LABEL,    #L20299 ,            ,          )

; ITemplate_LABEL
#L20299
;   35:(    JGE_2U,          i ,         ms ,   #L20348)

; ITemplate_JGE1_4U
	MOV            	(_delay_msDATA+0X0+0x1) & 0X7F,	0x0		; Bank 1
	SUB            	(_delay_ms_i_2+0x1) & 0X7F,	0x0		; Bank 1
	JBS            	PSW,	0x2
	GOTO           	#L20382
	MOV            	(_delay_msDATA+0X0) & 0X7F,	0x0		; Bank 1
	SUB            	(_delay_ms_i_2) & 0X7F,	0x0		; Bank 1
#L20382
	JBC            	PSW,	0x0
	GOTO           	#L20348
#line 36	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ;         while(!T8NIF);
;   36:(     LABEL,    #L20315 ,            ,          )

; ITemplate_LABEL
#L20315
;   36:(      JZ_0,      T8NIF ,            ,   #L20315)

; ITemplate_JZ_0
	JBS            	(_T8NIF_0)/8,	(_T8NIF_0)%8
	GOTO           	#L20315
#line 37	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 		T8NIF = 0;
;   37:(    ASGN_0,          0 ,            ,     T8NIF)

; ITemplate_CLR_0_TMP
	BCC            	(_T8NIF_0)/8,	(_T8NIF_0)%8
#line 38	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 		T8N += 130;
;   38:(     ADD_1,        T8N ,        130 ,       T8N)

; ITemplate_ADD1_4
	MOV            	_T8N_0,	0x0
	ADDI           	0x82
	MOVA           	_T8N_0
;   35:(     ADD_2,          i ,          1 ,         i)

; ITemplate_INC_2_TMP
	INC            	(_delay_ms_i_2) & 0X7F		; Bank 1
	JBS            	PSW,	0x2
	GOTO           	#L20383
	INC            	(_delay_ms_i_2+0x1) & 0X7F		; Bank 1
#L20383
#line 39	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ;     }
;   39:(       JMP,            ,            ,   #L20299)

; ITemplate_JMP
	GOTO           	#L20299
#line 40	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; }
;   40:(     LABEL,    #L20348 ,            ,          )

; ITemplate_LABEL
#L20348
;   40:(       RET,            ,            ,          )

; ITemplate_RET
	SECTION        	0x0
	RET            			; Bank 0		; ShBank 0
	_DESC          	delay_us,0X0,0X0

SECTION1delay_us	UNINTIAL       	0		; Bank 0
	ORG            	0X85		; Bank 0
_delay_usDATA	RSEG           	0X4		; Bank 0
delay_us#	CSEG           
_delay_us
; /**************************************************************************
; * 函数名称：delay_us
; * 功能描述：微秒级延时函数
; * 输入参数：us   延时微妙数，输入范围0-65535
; * 返回参数：无
; * 函数作者：
; * 完成日期：
; * 修订历史：
; * 修订日期：
; **************************************************************************/
; void delay_us(uint16_t us)
; {
; 	uint16_t i;
; 	
#line 56	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 	for (i = 0; i < us; i++) {
	CLR            	BKSR
;   56:(    ASGN_2,          0 ,            ,         i)

; ITemplate_CLR1_4_TMP
	SECTION        	0x1
	CLR            	(_delay_us_i_5) & 0X7F		; Bank 1
	CLR            	(_delay_us_i_5+0x1) & 0X7F		; Bank 1
;   56:(     LABEL,    #L20349 ,            ,          )

; ITemplate_LABEL
#L20349
;   56:(    JGE_2U,          i ,         us ,   #L20381)

; ITemplate_JGE1_4U
	MOV            	(_delay_usDATA+0X0+0x1) & 0X7F,	0x0		; Bank 1
	SUB            	(_delay_us_i_5+0x1) & 0X7F,	0x0		; Bank 1
	JBS            	PSW,	0x2
	GOTO           	#L20384
	MOV            	(_delay_usDATA+0X0) & 0X7F,	0x0		; Bank 1
	SUB            	(_delay_us_i_5) & 0X7F,	0x0		; Bank 1
#L20384
	JBC            	PSW,	0x0
	GOTO           	#L20381
;   56:(     ADD_2,          i ,          1 ,         i)

; ITemplate_INC_2_TMP
	INC            	(_delay_us_i_5) & 0X7F		; Bank 1
	JBS            	PSW,	0x2
	GOTO           	#L20385
	INC            	(_delay_us_i_5+0x1) & 0X7F		; Bank 1
#L20385
#line 57	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; 	}
;   57:(       JMP,            ,            ,   #L20349)

; ITemplate_JMP
	GOTO           	#L20349
#line 58	D:\毕业论文\ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013\src\timer.c ; }
;   58:(     LABEL,    #L20381 ,            ,          )

; ITemplate_LABEL
#L20381
;   58:(       RET,            ,            ,          )

; ITemplate_RET
	SECTION        	0x0
	RET            			; Bank 0		; ShBank 0

SECTION0C__Program_Files__x86__HRCC_Tools_HRCC_v1_2_0_139_tools_INCLUDE_ES7P0693_h_STATIC37	UNINTIAL       		; Bank 0
_#T0	RSEG           	0X1		; Bank 0

SECTION8D__毕业论文_ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013_src_timer_c_STATIC38	PSECT	FLAG=0X1088,ADDR=0X7FCC9
_T8NIE_0	RSEG           	0X1		; Bank 0

SECTION8D__毕业论文_ES_DEV_ES7W8020_SDK_YJ_FB_V4_20231013_src_timer_c_STATIC39	PSECT	FLAG=0X1088,ADDR=0X7FCD1
_T8NIF_0	RSEG           	0X1		; Bank 0

SECTION8C__Program_Files__x86__HRCC_Tools_HRCC_v1_2_0_139_tools_INCLUDE_ES7P0693_h_STATIC	UNINTIAL       	0		; Bank 0
	ORG            	0XFFBD		; Bank 0
_T8N_0	RSEG           	0X1		; Bank 0
	ORG            	0XFFBE		; Bank 0
_T8NC_0	RSEG           	0X1		; Bank 0
	END
