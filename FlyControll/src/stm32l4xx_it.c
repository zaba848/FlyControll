#include "stm32l4xx_hal.h"
#include "stm32l4xx.h"
#include "stm32l4xx_it.h"
//#include <CTimer.h>

static __IO uint32_t sysTick;

void SysTick_Handler(void)
{
	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();
	sysTick++;
}

uint32_t getTick()
{
	return sysTick;
}
