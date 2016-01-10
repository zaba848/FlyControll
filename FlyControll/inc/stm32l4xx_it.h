#ifndef __STM32L4xx_IT_H
#define __STM32L4xx_IT_H

#ifdef __cplusplus
 extern "C" {
#endif 

void NMI_Handler(void);
void HardFault_Handler(void);
void SVC_Handler(void);
void DebugMon_Handler(void);
void PendSV_Handler(void);
void SysTick_Handler(void);
//static __IO uint32_t sysTick;

uint32_t getTick();


#ifdef __cplusplus
}
#endif

#endif /* __STM32L4xx_IT_H */
