/**
  ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ********
  * @file      :     led.s
  * @author    :     Luyao Han
  * @email     :     luyaohan1001@gmail.com
  * @brief     :     Assembly code for blinking LED on IMX6ULL (ARM-A7) processor.
  * @date      :     04-30-2022
  * Copyright (C) 2022-2122 Luyao Han. The following code may be shared or modified for personal use / non-commercial use only.
  ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ******** ********  */

/* Constants ---------------------------------------------------------------------------------------------------------------------------------------*/
/* Use equ to define constants, similiar to '#define' in c. */
.equ CCM_CCGR0, 0x020C4068
.equ CCM_CCGR1, 0x020C406C
.equ CCM_CCGR2, 0x020C4070
.equ CCM_CCGR3, 0x020C4074
.equ CCM_CCGR4, 0x020C4078
.equ CCM_CCGR5, 0x020C407C
.equ CCM_CCGR6, 0x020C4080

.equ GPIO1_DR,  0x0209C000
.equ GPIO1_GDIR, 0x0209C004

.equ IOMUXC_SW_MUX_CTL_PAD_GPIO1_IO03, 0x020E0068
.equ IOMUXC_SW_PAD_CTL_PAD_GPIO1_IO03, 0x020E02F4

/**
  * @brief The default entry point for linkers. Must be declared for gcc.
  */
.global _start  

/** 
  * @brief Assembly body.
  * @note  Registers are referenced from "i.MX 6ULL Application Processor Reference Manual Rev.1 11/2017"
  */

_start:
  ldr r1, =0xFFFFFFFF  

  /* Enable Clocks in CCM. */
  ldr r0, =CCM_CCGR0  /* CCGR0 */
  str r1, [r0]    
  
  ldr r0, =CCM_CCGR1  /* CCGR1 */
  str r1, [r0]

  ldr r0, =CCM_CCGR2  /* CCGR2 */
  str r1, [r0]
  
  ldr r0, =CCM_CCGR3  /* CCGR3 */
  str r1, [r0]
  
  ldr r0, =CCM_CCGR4  /* CCGR4 */
  str r1, [r0]
  
  ldr r0, =CCM_CCGR5  /* CCGR5 */
  str r1, [r0]
  
  ldr r0, =CCM_CCGR6  /* CCGR6 */
  str r1, [r0]
  

  /* Configure GPIO_IO03 in IOMUXC */
  ldr r0, =IOMUXC_SW_MUX_CTL_PAD_GPIO1_IO03
  ldr r1, =0x5    /* ALT5: Select mux mode: the I/O as a normal GPIO output. */
  str r1,[r0]

  /* Configure GPIO modes on GPIO_IO03 */
	ldr r0, =IOMUXC_SW_PAD_CTL_PAD_GPIO1_IO03
	/* Hysteresis disabled, PUS_0_100K_Ohm_Pull_Down, PUE_0_Keeper, PKE_1_Pull_Keeper_Enabled, 
		   ODE_0_Open_Drain_Disabled, SPEED_2_MEDIUM_100MHz, DSE_6_R0_6, SRE_0_Slow_Slew_Rate */
	ldr r1, =0x10B0
	str r1,[r0]

	/* Configure GPIO1_IO03 GPIO direction as output. */
	ldr r0, =GPIO1_GDIR  
	ldr r1, =0x0000008    
	str r1,[r0]

	/* Write high to GPIO data register, turn on the LED. */
  ldr r0, =GPIO1_DR 
  ldr r1, =0    
  str r1,[r0]

/**
  * @brief Busy Loop so that the program stops here.
  */
loop:
  b loop         

  

  
  


