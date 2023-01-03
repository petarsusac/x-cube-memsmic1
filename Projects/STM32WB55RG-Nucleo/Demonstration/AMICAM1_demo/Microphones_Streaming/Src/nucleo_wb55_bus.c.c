#include "nucleo_wb55rg_bus.h"


SPI_HandleTypeDef hspi1;

static uint32_t SPI1InitCounter = 0;

static void SPI1_MspInit(SPI_HandleTypeDef *hSPI);
static void SPI1_MspDeInit(SPI_HandleTypeDef *hSPI);

int32_t BSP_SPI1_Init(void)
{
  int32_t ret = BSP_ERROR_NONE;

  hspi1.Instance  = SPI1;

  if (SPI1InitCounter == 0U)
  {
    SPI1InitCounter++;
    if (HAL_SPI_GetState(&hspi1) == HAL_SPI_STATE_RESET)
    {
      /* Init the SPI Msp */
      SPI1_MspInit(&hspi1);
      if (ret == BSP_ERROR_NONE)
      {
        /* Init the SPI */
        if (MX_SPI1_Init(&hspi1) != HAL_OK)
        {
          ret = BSP_ERROR_BUS_FAILURE;
        }
      }
    }
  }

  return ret;
}

int32_t BSP_SPI1_DeInit(void)
{
  int32_t ret = BSP_ERROR_BUS_FAILURE;
  if (SPI1InitCounter > 0U)
  {
    SPI1InitCounter--;
    if (SPI1InitCounter == 0U)
    {
      SPI1_MspDeInit(&hspi1);
      /* DeInit the SPI*/
      if (HAL_SPI_DeInit(&hspi1) == HAL_OK)
      {
        ret = BSP_ERROR_NONE;
      }
    }
  }
  return ret;
}

int32_t BSP_SPI1_Send(uint8_t *pData, uint16_t Length)
{
  int32_t ret = BSP_ERROR_NONE;

  if (HAL_SPI_Transmit(&hspi1, pData, Length, BUS_SPI1_POLL_TIMEOUT) != HAL_OK)
  {
    ret = BSP_ERROR_UNKNOWN_FAILURE;
  }
  return ret;
}

int32_t  BSP_SPI1_Recv(uint8_t *pData, uint16_t Length)
{
  int32_t ret = BSP_ERROR_NONE;

  if (HAL_SPI_Receive(&hspi1, pData, Length, BUS_SPI1_POLL_TIMEOUT) != HAL_OK)
  {
    ret = BSP_ERROR_UNKNOWN_FAILURE;
  }
  return ret;
}

int32_t BSP_SPI1_SendRecv(uint8_t *pTxData, uint8_t *pRxData, uint16_t Length)
{
  int32_t ret = BSP_ERROR_NONE;

  if (HAL_SPI_TransmitReceive(&hspi1, pTxData, pRxData, Length, BUS_SPI1_POLL_TIMEOUT) != HAL_OK)
  {
    ret = BSP_ERROR_UNKNOWN_FAILURE;
  }
  return ret;
}

int32_t BSP_GetTick(void)
{
  return HAL_GetTick();
}


__weak HAL_StatusTypeDef MX_SPI1_Init(SPI_HandleTypeDef *hspi)
{
  HAL_StatusTypeDef ret = HAL_OK;
  hspi->Instance = SPI1;
  hspi->Init.Mode = SPI_MODE_MASTER;
  hspi->Init.Direction = SPI_DIRECTION_2LINES;
  hspi->Init.DataSize = SPI_DATASIZE_8BIT;
  hspi->Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi->Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi->Init.NSS = SPI_NSS_SOFT;
  hspi->Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
  hspi->Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi->Init.TIMode = SPI_TIMODE_DISABLE;
  hspi->Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi->Init.CRCPolynomial = 7;
  hspi->Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi->Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(hspi) != HAL_OK)
  {
    ret = HAL_ERROR;
  }

  return ret;
}

static void SPI1_MspInit(SPI_HandleTypeDef *spiHandle)
{
  GPIO_InitTypeDef GPIO_InitStruct;
  /* USER CODE BEGIN SPI1_MspInit 0 */
  UNUSED(spiHandle);
  /* USER CODE END SPI1_MspInit 0 */
  /* Enable Peripheral clock */
  __HAL_RCC_SPI1_CLK_ENABLE();

  __HAL_RCC_GPIOA_CLK_ENABLE();
  /**SPI1 GPIO Configuration
  PA6     ------> SPI1_MISO
  PA7     ------> SPI1_MOSI
  PA5     ------> SPI1_SCK
    */
  GPIO_InitStruct.Pin = GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);



  /* USER CODE BEGIN SPI1_MspInit 1 */

  /* USER CODE END SPI1_MspInit 1 */
}

static void SPI1_MspDeInit(SPI_HandleTypeDef *spiHandle)
{
  /* USER CODE BEGIN SPI1_MspDeInit 0 */
  UNUSED(spiHandle);
  /* USER CODE END SPI1_MspDeInit 0 */
  /* Peripheral clock disable */
  __HAL_RCC_SPI1_CLK_DISABLE();

  /**SPI1 GPIO Configuration
  PA6     ------> SPI1_MISO
  PA7     ------> SPI1_MOSI
  PA5     ------> SPI1_SCK
    */
  HAL_GPIO_DeInit(GPIOA, GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7);

  /* USER CODE BEGIN SPI1_MspDeInit 1 */

  /* USER CODE END SPI1_MspDeInit 1 */
}
