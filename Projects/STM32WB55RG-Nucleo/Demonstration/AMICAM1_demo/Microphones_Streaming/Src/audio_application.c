/**
  ******************************************************************************
  * @file    audio_application.c
  * @author  SRA
  * @version v1.3.0
  * @date    17-Sep-2021
  * @brief   Audio  application.
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

/* Includes ------------------------------------------------------------------*/
#include "audio_application.h"

/** @addtogroup X_CUBE_MEMSMIC1_Applications
  * @{
  */

/** @addtogroup Microphones_Acquisition
  * @{
  */

/** @defgroup AUDIO_APPLICATION
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define BUFSIZE (((AUDIO_IN_CHANNELS * AUDIO_IN_SAMPLING_FREQUENCY) / 1000)  * N_MS * 2)
#define HALF_BUFSIZE BUFSIZE / 2
/* Private macro -------------------------------------------------------------*/

/** @defgroup AUDIO_APPLICATION_Exported_Variables
  * @{
  */
//uint16_t PDM_Buffer[((((AUDIO_IN_CHANNELS * AUDIO_IN_SAMPLING_FREQUENCY) / 1000) * MAX_DECIMATION_FACTOR) / 16)*
//                    N_MS_PER_INTERRUPT ];
//uint16_t PCM_Buffer[((AUDIO_IN_CHANNELS * AUDIO_IN_SAMPLING_FREQUENCY) / 1000)  * N_MS_PER_INTERRUPT ];
//CCA02M2_AUDIO_Init_t MicParams;
uint16_t PCM_Buffer[BUFSIZE];
BSP_AUDIO_Init_t MicParams;

/**
  * @}
  */

/** @defgroup AUDIO_APPLICATION_Private_Variables
  * @{
  */
/* Private variables ---------------------------------------------------------*/
/**
  * @}
  */

/** @defgroup AUDIO_APPLICATION_Exported_Function
  * @{
  */

/**
  * @brief  Half Transfer user callback, called by BSP functions.
  * @param  None
  * @retval None
  */
void AMICAM1_AUDIO_IN_HalfTransfer_CallBack(uint32_t Instance)
{
  UNUSED(Instance);
  AudioProcessHalf();
}

/**
  * @brief  Transfer Complete user callback, called by BSP functions.
  * @param  None
  * @retval None
  */
void AMICAM1_AUDIO_IN_TransferComplete_CallBack(uint32_t Instance)
{
  UNUSED(Instance);
  AudioProcessFull();
}

/**
  * @brief  User function that is called when 1 ms of PDM data is available.
  *       In this application only PDM to PCM conversion and USB streaming
  *                  is performed.
  *       User can add his own code here to perform some DSP or audio analysis.
  * @param  none
  * @retval None
  */
void AudioProcessHalf(void)
{
	Send_Audio_to_USB((int16_t *)PCM_Buffer, HALF_BUFSIZE);
}

void AudioProcessFull(void)
{
	Send_Audio_to_USB((int16_t *)PCM_Buffer, HALF_BUFSIZE);
}

/**
  * @brief  User function that is called when 1 ms of PDM data is available.
  *       In this application only PDM to PCM conversion and USB streaming
  *                  is performed.
  *       User can add his own code here to perform some DSP or audio analysis.
  * @param  none
  * @retval None
  */
void Init_Acquisition_Peripherals(uint32_t AudioFreq, uint32_t ChnlNbrIn, uint32_t ChnlNbrOut)
{
	MicParams.BitsPerSample = 16;
    MicParams.ChannelsNbr = ChnlNbrIn;
    MicParams.Device = AUDIO_IN_MICS;
    MicParams.SampleRate = AudioFreq;
    MicParams.Volume = AUDIO_VOLUME_INPUT;

    if (AMICAM1_AUDIO_IN_Init(AUDIO_IN_INSTANCE, &MicParams) != BSP_ERROR_NONE)
    {
	  Error_Handler();
    }
}

/**
  * @brief  User function that is called when 1 ms of PDM data is available.
  *       In this application only PDM to PCM conversion and USB streaming
  *                  is performed.
  *       User can add his own code here to perform some DSP or audio analysis.
  * @param  none
  * @retval None
  */
void Start_Acquisition(void)
{
	if (AMICAM1_AUDIO_IN_Record(AUDIO_IN_INSTANCE, (uint8_t *) PCM_Buffer, AUDIO_IN_NOT_USED) != BSP_ERROR_NONE)
	{
		Error_Handler();
	}
}


void Error_Handler(void)
{
  while (1);
}

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */


