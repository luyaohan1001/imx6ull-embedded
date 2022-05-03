#ifndef _BACKLIGHT_H
#define _BACKLIGHT_H

/** Includes --------------------------------------------------------------------------------------------------------------------*/
#include "imx6ul.h"


/** Types Declarations ----------------------------------------------------------------------------------------------------------*/
struct backlight_dev_struc
{  
  unsigned char pwm_duty;    /** 占空比  */
};

/** Function Prototypes -------------------------------------------------------------------------------------------------------*/
void backlight_init(void);
void pwm1_enable(void);
void pwm1_setsample_value(unsigned int value);
void pwm1_setperiod_value(unsigned int value);
void pwm1_setduty(unsigned char duty);
void pwm1_irqhandler(void);

#endif
