################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c 

OBJS += \
./Drivers/BSP/STM32F4xx_Nucleo/stm32f4xx_nucleo.o 

C_DEPS += \
./Drivers/BSP/STM32F4xx_Nucleo/stm32f4xx_nucleo.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32F4xx_Nucleo/stm32f4xx_nucleo.o: /home/petar/seminar/x-cube-memsmic1/Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c Drivers/BSP/STM32F4xx_Nucleo/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F401xE -DUSE_HAL_DRIVER -DUSE_STM32F4XX_NUCLEO -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../../../../../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F4xx-Nucleo -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32F4xx_Nucleo

clean-Drivers-2f-BSP-2f-STM32F4xx_Nucleo:
	-$(RM) ./Drivers/BSP/STM32F4xx_Nucleo/stm32f4xx_nucleo.d ./Drivers/BSP/STM32F4xx_Nucleo/stm32f4xx_nucleo.o ./Drivers/BSP/STM32F4xx_Nucleo/stm32f4xx_nucleo.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32F4xx_Nucleo

