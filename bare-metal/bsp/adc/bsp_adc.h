#ifndef __ADC_H
#define __ADC_H

/* Includes --------------------------------------------------------------------------------------------------------------------*/
#include "imx6ul.h"

/* Function Prototypes -------------------------------------------------------------------------------------------------------*/
int adc1ch1_init(void);
status_t adc1_autocalibration(void);
uint32_t getadc_value(void);
unsigned short getadc_average(unsigned char times);
unsigned short getadc_volt(void);

#endif

