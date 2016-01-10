#ifndef __spi_H
#define __spi_H
#ifdef __cplusplus
 extern "C" {
#endif

#include "stm32l4xx_hal.h"

extern SPI_HandleTypeDef hspi2;

void MX_SPI2_Init(void);

#ifdef __cplusplus
}
#endif
#endif /*__ spi_H */
