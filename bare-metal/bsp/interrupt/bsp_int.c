#include "bsp_int.h"


/* IRQ nesting counter */
static unsigned int irqNesting;

/* IRQ table. */
static sys_irq_handle_t irqTable[NUMBER_OF_INT_VECTORS];

/**
  * @brief   Initialize interrupt.
  * @param   None.
  * @retval  None.
  */
void int_init(void)
{
  GIC_Init();            
  system_irqtable_init();      
	/* offset interrupt table to starting address. */
  __set_VBAR((uint32_t)0x87800000);   
}

/**
  * @brief   Initialize IRQ table.
  * @param   None.
  * @retval  None.
  */
void system_irqtable_init(void)
{
  unsigned int i = 0;
  irqNesting = 0;
  
	/* set all the IRQ service back to default.*/
  for(i = 0; i < NUMBER_OF_INT_VECTORS; i++)
  {
    system_register_irqhandler((IRQn_Type)i,default_irqhandler, NULL);
  }
}

/**
  * @brief   Register IRQ service routine to interrupt number.  
  * @param   irq The interrupt to register.
  * @param   handler The interrupt handler to register.
  * @param   userParam. Interrupt Service Routine paramsters.
  * @retval  None.
  */
void system_register_irqhandler(IRQn_Type irq, system_irq_handler_t handler, void *userParam) 
{
  irqTable[irq].irqHandler = handler;
    irqTable[irq].userParam = userParam;
}

/**
  * @brief   The interrupt service routine is called when given a IRQ.
  * @param   giccIar IRQ request number. 
  * @retval  None.
  */
void system_irqhandler(unsigned int giccIar) 
{

   uint32_t intNum = giccIar & 0x3FFUL;
   
	 /* Check if IRQ number is valid. */
   if ((intNum == 1023) || (intNum >= NUMBER_OF_INT_VECTORS))
   {
     return;
   }

	 /* increment IRQ nesting counter. */
   irqNesting++; 

	 /* Call the ISR from the IRQ number. */
   irqTable[intNum].irqHandler(intNum, irqTable[intNum].userParam);
 
	 /* ISR done, decrement nesting counter. */
   irqNesting--; 

}

/**
  * @brief   Deafult IRQ handler.
  * @param   giccIar The IRQ number.
  * @param   userParam IRQ service routine parameters.
  * @retval  None.
  */
void default_irqhandler(unsigned int giccIar, void *userParam) 
{
  while(1) 
    {
     }
}



