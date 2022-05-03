/***
  ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ********
  * @file      :     bsp_clk.c
  * @author    :     Luyao Han
  * @email     :     luyaohan1001@gmail.com
  * @brief     :     IMX6ULL system clock interface.
  * @date      :     05-02-2022
  * Copyright (C) 2022-2122 Luyao Han. The following code may be shared or modified for personal use / non-commercial use only.
  ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ********  */

#include "bsp_clk.h"

/***
  * @brief   Enable all peripheral clocks.
  * @param   None.
  * @retval  None.
  */
void clk_enable(void)
{
	CCM->CCGR0 = 0XFFFFFFFF;
	CCM->CCGR1 = 0XFFFFFFFF;
	CCM->CCGR2 = 0XFFFFFFFF;
	CCM->CCGR3 = 0XFFFFFFFF;
	CCM->CCGR4 = 0XFFFFFFFF;
	CCM->CCGR5 = 0XFFFFFFFF;
	CCM->CCGR6 = 0XFFFFFFFF;
}

/***
  * @brief   Initialize system clocks, set ferquency 792 MHz.
  * @param 	 None.
  * @retval  None.
	* @note    System clock is set is 792 MHz as suggested by the I.MX6U user manual.
  */
void imx6u_clkinit(void)
{
	unsigned int reg = 0;
  /** Set ARM Core Clock as 792MHz*/
	if((((CCM->CCSR) >> 2) & 0x1 ) == 0) 	/** pll1_main_clk*/
	{	
		CCM->CCSR &= ~(1 << 8);				/** step_clk source 24MHz OSC */	
		CCM->CCSR |= (1 << 2);				/** pll1_sw_clk by step_clk */
	}

	CCM_ANALOG->PLL_ARM = (1 << 13) | ((66 << 0) & 0X7F); 	/** set pll1_main_clk=792MHz */
	CCM->CCSR &= ~(1 << 2);									/** pll_sw_clk switch back to pll1_main_clk */
	CCM->CACRR = 0;											/** ARM core clock  = pll1_sw_clk/1=792/1=792Mhz */

	/** Sets PFD for PLL2 */
	reg = CCM_ANALOG->PFD_528;
	reg &= ~(0X3F3F3F3F);		/** clear default	*/
	reg |= 32<<24;				/** PLL2_PFD3=528*18/32=297Mhz 	*/
	reg |= 24<<16;				/** PLL2_PFD2=528*18/24=396Mhz */
	reg |= 16<<8;				/** PLL2_PFD1=528*18/16=594Mhz 	*/
	reg |= 27<<0;				/** PLL2_PFD0=528*18/27=352Mhz  	*/
	CCM_ANALOG->PFD_528=reg;	/** PLL2_PFD0~3 		 		*/

	/** Sets PFD for PLL3 */
	reg = 0;					/** 清零   */
	reg = CCM_ANALOG->PFD_480;
	reg &= ~(0X3F3F3F3F);		/** clear default */
	reg |= 19<<24;				/** PLL3_PFD3=480*18/19=454.74Mhz 	*/
	reg |= 17<<16;				/** PLL3_PFD2=480*18/17=508.24Mhz 	*/
	reg |= 16<<8;				/** PLL3_PFD1=480*18/16=540Mhz		*/
	reg |= 12<<0;				/** PLL3_PFD0=480*18/12=720Mhz	 	*/
	CCM_ANALOG->PFD_480=reg;	/** PLL3_PFD0~3 					*/	

	/** Configure AHB Clock (Range 6MHz ~ 132MHz)*/
	CCM->CBCMR &= ~(3 << 18); 	/** clear default */ 
	CCM->CBCMR |= (1 << 18);	/** pre_periph_clk=PLL2_PFD2=396MHz */
	CCM->CBCDR &= ~(1 << 25);	/** periph_clk=pre_periph_clk=396MHz */
	while(CCM->CDHIPR & (1 << 5));
		
	/** Configure IPG_CLK_ROOT (Range 3MHz ~ 66MHz.) */
	CCM->CBCDR &= ~(3 << 8);	/** clear CBCDR IPG_PODF */
	CCM->CBCDR |= 1 << 8;		/**  IPG_CLK_ROOT=66MHz */
	
	/** Configure PERCLK_CLK_ROOT */
	CCM->CSCMR1 &= ~(1 << 6);	/** PERCLK_CLK_ROOT clock source is IPG */
	CCM->CSCMR1 &= ~(7 << 0);	/** PERCLK_PODF bit cleared */
}

