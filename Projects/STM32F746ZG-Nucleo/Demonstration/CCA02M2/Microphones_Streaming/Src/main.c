/**
  ******************************************************************************
  * @file    main.c
  * @author  SRA
  * @version v1.3.0
  * @date    17-Sep-2021
  * @brief   Main program body
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
#include "cube_hal.h"

#include "arm_math.h"
#include "ai.h"
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/


/** @addtogroup X_CUBE_MEMSMIC1_Applications
  * @{
  */

/** @addtogroup Microphones_Acquisition
  * @{
  */

/** @defgroup MAIN
  * @{
  */

/** @defgroup MAIN_Exported_Variables
  * @{
  */
USBD_HandleTypeDef hUSBDDevice;
extern USBD_AUDIO_ItfTypeDef  USBD_AUDIO_fops;

extern int16_t test_signal[22000];
float32_t mfcc_out[13 * 44];
int16_t test_signal_padded[22000 + 2048 + 50] = {0};
/**
  * @}
  */

/** @defgroup MAIN_Private_Functions
  * @{
  */
/* Private function prototypes -----------------------------------------------*/
/**
  * @}
  */

extern void Preprocessing_Init();
extern void AudioPreprocessing_Run(int16_t *pInSignal, float32_t *pOutMfcc, uint32_t signal_len);

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{

  /* STM32F4xx HAL library initialization:
  - Configure the Flash prefetch, instruction and Data caches
  - Configure the Systick to generate an interrupt each 1 msec
  - Global MSP (MCU Support Package) initialization
  */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize USB descriptor basing on channels number and sampling frequency */
  USBD_AUDIO_Init_Microphone_Descriptor(&hUSBDDevice, AUDIO_IN_SAMPLING_FREQUENCY, AUDIO_IN_CHANNELS);
  /* Init Device Library */
  USBD_Init(&hUSBDDevice, &AUDIO_Desc, 0);
  /* Add Supported Class */
  USBD_RegisterClass(&hUSBDDevice, &USBD_AUDIO);
  /* Add Interface callbacks for AUDIO Class */
  USBD_AUDIO_RegisterInterface(&hUSBDDevice, &USBD_AUDIO_fops);
  /* Start Device Process */
  USBD_Start(&hUSBDDevice);

  /* Start audio acquisition and streaming */
#ifdef DISABLE_USB_DRIVEN_ACQUISITION
  Init_Acquisition_Peripherals(AUDIO_IN_SAMPLING_FREQUENCY, AUDIO_IN_CHANNELS, 0);
  Start_Acquisition();
#endif

  // Define test data
  float test_data[] = {
    -4.7764838e+02,
    -4.4441168e+02,
    -3.3918567e+02,
    -2.9759879e+02,
    -3.0108188e+02,
    -2.9754984e+02,
    -3.1151147e+02,
    -3.2135614e+02,
    -3.2088126e+02,
    -3.0462018e+02,
    -2.8031125e+02,
    -2.6598538e+02,
    -2.6848737e+02,
    -2.9574185e+02,
    -3.3263718e+02,
    -3.3540576e+02,
    -3.3609000e+02,
    -3.6027933e+02,
    -3.7067236e+02,
    -3.6408386e+02,
    -3.5466882e+02,
    -3.4918121e+02,
    -3.6697369e+02,
    -3.9751132e+02,
    -3.9360324e+02,
    -3.8495685e+02,
    -4.0149133e+02,
    -3.9740323e+02,
    -3.9837463e+02,
    -3.9285181e+02,
    -3.7925375e+02,
    -3.7191071e+02,
    -3.7211719e+02,
    -3.7872382e+02,
    -3.9434192e+02,
    -4.2488632e+02,
    -4.5763412e+02,
    -4.8614044e+02,
    -5.0477774e+02,
    -5.0645047e+02,
    -4.9806720e+02,
    -4.7851993e+02,
    -4.6368225e+02,
    -4.8918164e+02,
    -2.9693812e-01,
    -4.3015962e+00,
    -1.3143524e+01,
    -1.8023411e+01,
    -1.5421795e+01,
    -1.2511169e+01,
    -9.9574289e+00,
    -1.0516705e+01,
    -6.7797270e+00,
    -5.0438704e+00,
    -5.7291298e+00,
    -5.7514353e+00,
    6.9726861e-01,
    7.4370751e+00,
    6.6091647e+00,
    1.8007376e+00,
    -4.0917978e+00,
    -6.4060837e-02,
    -3.4465671e+00,
    -7.3410769e+00,
    -6.8707466e+00,
    -8.0218763e+00,
    -1.0797611e+01,
    -1.4969818e+01,
    -1.1725598e+01,
    -7.8042946e+00,
    -9.8281755e+00,
    -1.3438834e+01,
    -1.3082867e+01,
    -8.2830505e+00,
    -6.0776720e+00,
    -6.7163348e+00,
    -7.4339871e+00,
    -2.4730008e+00,
    -7.7092037e+00,
    -1.2436954e+01,
    -1.3634857e+01,
    -6.9538898e+00,
    -3.1740007e+00,
    -1.0192561e+00,
    -5.5951595e+00,
    -1.1374522e+01,
    -1.6603231e+01,
    -1.8892147e+01,
  };

  ai_init();
  float y = ai_inference(test_data);

  Preprocessing_Init();
  memcpy(test_signal_padded, test_signal, sizeof(int16_t) * 22000);
  AudioPreprocessing_Run(test_signal, mfcc_out, 22000 + 2048 + 50);

  while (1)
  {


  }
}

/* Private functions ---------------------------------------------------------*/


#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
  ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif  /* USE_FULL_ASSERT */
/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

