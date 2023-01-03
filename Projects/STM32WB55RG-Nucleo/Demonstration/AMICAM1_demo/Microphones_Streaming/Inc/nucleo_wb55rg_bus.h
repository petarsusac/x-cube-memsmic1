/**
  ******************************************************************************
  * @file    x_nucleo_cca02m2_bus.h
  * @author  SRA
  * @version v1.3.0
  * @date    17-Sep-2021
  * @brief   header file for the BSP BUS IO driver
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  *
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __NUCLEO_WB55RG_BUS_H
#define __NUCLEO_WB55RG_BUS_H

#ifdef __cplusplus
extern "C" {
#endif

#define USE_HAL_DFSDM_REGISTER_CALLBACKS 0U

/* Includes ------------------------------------------------------------------*/
#include <stdint.h>

// Dodano
#include "nucleo_wb55rg_errno.h"
#include "stm32wbxx_hal.h"
#ifndef BUS_SPI1_POLL_TIMEOUT
#define BUS_SPI1_POLL_TIMEOUT                   0x1000U
#endif
/* SPI1 Baud rate in bps  */
#ifndef BUS_SPI1_BAUDRATE
#define BUS_SPI1_BAUDRATE   10000000U /* baud rate of SPIn = 10 Mbps*/
#endif
extern SPI_HandleTypeDef hspi1;
HAL_StatusTypeDef MX_SPI1_Init(SPI_HandleTypeDef *hspi);
int32_t BSP_SPI1_Init(void);
int32_t BSP_SPI1_DeInit(void);
int32_t BSP_SPI1_Send(uint8_t *pData, uint16_t Length);
int32_t BSP_SPI1_Recv(uint8_t *pData, uint16_t Length);
int32_t BSP_SPI1_SendRecv(uint8_t *pTxData, uint8_t *pRxData, uint16_t Length);

int32_t BSP_GetTick(void);

#ifdef __cplusplus
}
#endif

#endif /* __NUCLEO_WB55RG_BUS_H */


