#include "bsp_delay.h"

/**
  * @brief   Delay initialization.
  * @param   None.
  * @retval  None.
	* @note    GPT Timer clock source ipg_clk = 66MHz.
  */
void delay_init(void)
{
	/* Stop GPT */
  GPT1->CR = 0;         

	/* GPT reset. */
  GPT1->CR = 1 << 15;        
	/* Wait. */
  while((GPT1->CR >> 15) & 0x01);  
  
  GPT1->CR = (1<<6);

	/* Prescalar 66. GPT clock rate = 66M / 66 = 1MHz. */
  GPT1->PR = 65;  /** 设置为65，即66分频，因此GPT1时钟为66M/(65+1)=1MHz */

	/* 0xFFFFFFFFus = 4294967296us = 4295s = 71.5min */
  GPT1->OCR[0] = 0XFFFFFFFF;

	/* Enable GPT1. */
  GPT1->CR |= 1<<0;      //使能GPT1

}

 
/**
  * @brief   us delay
  * @param   value Time to delay
  * @retval  None.
  */
void delayus(unsigned    int usdelay)
{
  unsigned long oldcnt,newcnt;
  unsigned long tcntvalue = 0;  /** 走过的总时间  */

  oldcnt = GPT1->CNT;
  while(1)
  {
    newcnt = GPT1->CNT;
    if(newcnt != oldcnt)
    {
      if(newcnt > oldcnt)    /** GPT是向上计数器,并且没有溢出 */
        tcntvalue += newcnt - oldcnt;
      else            /** 发生溢出    */
        tcntvalue += 0XFFFFFFFF-oldcnt + newcnt;
      oldcnt = newcnt;
      if(tcntvalue >= usdelay)/** 延时时间到了 */
      break;           /**  跳出 */
    }
  }
}

/**
  * @brief   ms delay
  * @param - msdelay  : 需要延时的ms数
  * @retval       : None.
  */
void delayms(unsigned   int msdelay)
{
  int i = 0;
  for(i=0; i<msdelay; i++)
  {
    delayus(1000);
  }
}

/**
  * @brief  : 短时间延时函数
  * @param - n  : 要延时循环次数(空操作循环次数，模式延时)
  * @retval     : None.
  */
void delay_short(volatile unsigned int n)
{
  while(n--){}
}

/**
  * @brief  : 延时函数,在396Mhz的主频下
  *             延时时间大约为1ms
  * @param - n  : 要延时的ms数
  * @retval     : None.
  */
void delay(volatile unsigned int n)
{
  while(n--)
  {
    delay_short(0x7ff);
  }
}


