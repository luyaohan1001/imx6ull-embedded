#include "bsp_led.h"

/**
  * @brief   Initlize GPIO for LED.
  * @param   None
  * @retval  None
  */
void led_init(void)
{
	/* Set LED mux mode on pin GPIO1_IO03. */
  IOMUXC_SetPinMux(IOMUXC_GPIO1_IO03_GPIO1_IO03,0);   
  
	/* Configure pin settings. */
  IOMUXC_SetPinConfig(IOMUXC_GPIO1_IO03_GPIO1_IO03, 0X10B0);
  
	/* Set output mode. */
  GPIO1->GDIR |= (1 << 3);   

	/* Turn off LED */
  GPIO1->DR &= ~(1 << 3);    
}


/**
  * @brief   Switch LED on/off.
  * @param   led The LED number.
  * @param   status 0: OFF 1: ON
  * @retval  None.
  */
void led_switch(int led, int status)
{  
  switch(led)
  {
    case LED0:
      if(status == ON)
				/* Turn on LED */
        GPIO1->DR &= ~(1<<3);  
      else if(status == OFF)
				/* Turn off LED0 */
        GPIO1->DR |= (1<<3);  
      break;
  }
}
