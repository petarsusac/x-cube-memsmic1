/**
  ******************************************************************************
  * @file    cube_hal.h
  * @author  SRA
  * @version v1.3.0
  * @date    17-Sep-2021
  * @brief   X-CUBE includes file
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

#ifndef _CUBE_HAL_H_
#define _CUBE_HAL_H_

/* Includes ------------------------------------------------------------------*/
#define USB_IRQHandler OTG_FS_IRQHandler
#include "stm32wbxx_hal.h"
#include "stm32wbxx.h"
#include "stm32xx_it.h"
#include "stm32wbxx_nucleo.h"
#include "usbd_core.h"
#include "usbd_desc.h"
#include "usbd_audio_in.h"
#include "usbd_audio_if.h"
#include "audio_application.h"
#include "amicam1_audio.h"

void SystemClock_Config(void);

#endif //_CUBE_HAL_H_
