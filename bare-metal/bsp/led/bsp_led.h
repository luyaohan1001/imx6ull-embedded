#ifndef __BSP_LED_H
#define __BSP_LED_H

/** Includes --------------------------------------------------------------------------------------------------------------------*/
#include "imx6ul.h"

#define LED0  0

/** Function Prototypes -------------------------------------------------------------------------------------------------------*/
void led_init(void);
void led_switch(int led, int status);
#endif

