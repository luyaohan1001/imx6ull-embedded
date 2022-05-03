#include "bsp_uart.h"

/**
  * @brief   Initialize UART1, baud rate 115200.
  * @param   None.
  * @retval  None.
  */
void uart_init(void)
{
	/* Initialize GPIO for UART1. */
  uart_io_init();

	/* Initialize UART1 */
  uart_disable(UART1);  
  uart_softreset(UART1);  

  UART1->UCR1 = 0;    
  UART1->UCR2 |= (1<<14) | (1<<5) | (1<<2) | (1<<1);
  UART1->UCR3 |= 1<<2; 
  UART1->UCR1 &= ~(1<<14);
  UART1->UFCR = 5<<7;
  UART1->UBIR = 71;
  UART1->UBMR = 3124;

  /* Enable UART1. */
  uart_enable(UART1);
}

/**
  * @brief   Initialize GPIOs used by UART.
  * @param   None.
  * @retval  None.
  */
void uart_io_init(void)
{
	/* Multiplex pin to UART1_TX. */
  IOMUXC_SetPinMux(IOMUXC_UART1_TX_DATA_UART1_TX,0);  
	/* Multiplex pin to UART1_RX. */
  IOMUXC_SetPinMux(IOMUXC_UART1_RX_DATA_UART1_RX,0);  

  IOMUXC_SetPinConfig(IOMUXC_UART1_TX_DATA_UART1_TX,0x10B0);
  IOMUXC_SetPinConfig(IOMUXC_UART1_RX_DATA_UART1_RX,0x10B0);
}

/**
  * @brief   Set up the baudrate for UART. It derives the UFCR, UBIR, and UBMR register value.
  * @param   base UART to configure.
  * @param   baudrate 
  * @param   srcclock_hz Clock source frequency in Hz.
  * @retval  None.
  */
void uart_setbaudrate(UART_Type *base, unsigned int baudrate, unsigned int srcclock_hz)
{
    uint32_t numerator = 0u;    
    uint32_t denominator = 0U;    
    uint32_t divisor = 0U;
    uint32_t refFreqDiv = 0U;
    uint32_t divider = 1U;
    uint64_t baudDiff = 0U;
    uint64_t tempNumerator = 0U;
    uint32_t tempDenominator = 0u;

    /** get the approximately maximum divisor */
    numerator = srcclock_hz;
    denominator = baudrate << 4;
    divisor = 1;

    while (denominator != 0)
    {
        divisor = denominator;
        denominator = numerator % denominator;
        numerator = divisor;
    }

    numerator = srcclock_hz / divisor;
    denominator = (baudrate << 4) / divisor;

    /** numerator ranges from 1 ~ 7 * 64k */
    /** denominator ranges from 1 ~ 64k */
    if ((numerator > (UART_UBIR_INC_MASK * 7)) || (denominator > UART_UBIR_INC_MASK))
    {
        uint32_t m = (numerator - 1) / (UART_UBIR_INC_MASK * 7) + 1;
        uint32_t n = (denominator - 1) / UART_UBIR_INC_MASK + 1;
        uint32_t max = m > n ? m : n;
        numerator /= max;
        denominator /= max;
        if (0 == numerator)
        {
            numerator = 1;
        }
        if (0 == denominator)
        {
            denominator = 1;
        }
    }
    divider = (numerator - 1) / UART_UBIR_INC_MASK + 1;

    switch (divider)
    {
        case 1:
            refFreqDiv = 0x05;
            break;
        case 2:
            refFreqDiv = 0x04;
            break;
        case 3:
            refFreqDiv = 0x03;
            break;
        case 4:
            refFreqDiv = 0x02;
            break;
        case 5:
            refFreqDiv = 0x01;
            break;
        case 6:
            refFreqDiv = 0x00;
            break;
        case 7:
            refFreqDiv = 0x06;
            break;
        default:
            refFreqDiv = 0x05;
            break;
    }
    /** Compare the difference between baudRate_Bps and calculated baud rate.
     * Baud Rate = Ref Freq / (16 * (UBMR + 1)/(UBIR+1)).
     * baudDiff = (srcClock_Hz/divider)/( 16 * ((numerator / divider)/ denominator).
     */
    tempNumerator = srcclock_hz;
    tempDenominator = (numerator << 4);
    divisor = 1;
    /** get the approximately maximum divisor */
    while (tempDenominator != 0)
    {
        divisor = tempDenominator;
        tempDenominator = tempNumerator % tempDenominator;
        tempNumerator = divisor;
    }
    tempNumerator = srcclock_hz / divisor;
    tempDenominator = (numerator << 4) / divisor;
    baudDiff = (tempNumerator * denominator) / tempDenominator;
    baudDiff = (baudDiff >= baudrate) ? (baudDiff - baudrate) : (baudrate - baudDiff);

    if (baudDiff < (baudrate / 100) * 3)
    {
        base->UFCR &= ~UART_UFCR_RFDIV_MASK;
        base->UFCR |= UART_UFCR_RFDIV(refFreqDiv);
        base->UBIR = UART_UBIR_INC(denominator - 1); 
        base->UBMR = UART_UBMR_MOD(numerator / divider - 1);
        //base->ONEMS = UART_ONEMS_ONEMS(srcclock_hz / (1000 * divider));
    }

}

/**
  * @brief   Turn off UART.
  * @param   base The UART to turn off.
  * @retval  None.
  */
void uart_disable(UART_Type *base)
{
  base->UCR1 &= ~(1<<0);  
}

/**
  * @brief   Turn on UART
  * @param   The UART to turn on.
  * @retval  None.
  */
void uart_enable(UART_Type *base)
{
  base->UCR1 |= (1<<0);  
}

/**
  * @brief   Reset UART.
  * @param   base The UART to reset.
  * @retval  None.
  */
void uart_softreset(UART_Type *base)
{
  base->UCR2 &= ~(1<<0);       
  while((base->UCR2 & 0x1) == 0); 
}

/**
  * @brief   Send a character.
  * @param   c Character to send.
  * @retval  None.
  */
void putc(unsigned char c)
{
  while(((UART1->USR2 >> 3) & 0X01) == 0);
  UART1->UTXD = c & 0XFF;        
}

/**
  * @brief   Send a string.
  * @param   str String to send.
  * @retval  None.
  */
void puts(char *str)
{
  char *p = str;

  while(*p)
    putc(*p++);
}

/**
  * @brief   Receives a character.
  * @param   None.
  * @retval  Character received.
  */
unsigned char getc(void)
{
  while((UART1->USR2 & 0x1) == 0);
  return UART1->URXD;       
}

/**
  * @brief   Dummy Function. The compilers looks for this function, but is not used.
  * @param   None.
  * @retval  None.
  */
void raise(int sig_nr) 
{

}


