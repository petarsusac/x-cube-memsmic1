################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Drivers/BSP/STM32F7xx_Nucleo_144/stm32f7xx_nucleo_144.c 

OBJS += \
./Drivers/BSP/STM32F7xx_Nucleo/stm32f7xx_nucleo_144.o 

C_DEPS += \
./Drivers/BSP/STM32F7xx_Nucleo/stm32f7xx_nucleo_144.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32F7xx_Nucleo/stm32f7xx_nucleo_144.o: /home/petar/seminar/x-cube-memsmic1/Drivers/BSP/STM32F7xx_Nucleo_144/stm32f7xx_nucleo_144.c Drivers/BSP/STM32F7xx_Nucleo/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -I"../../../../../../../../Middlewares/ST/AI/Inc" -I"../../../../../../../../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -O2 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32F7xx_Nucleo

clean-Drivers-2f-BSP-2f-STM32F7xx_Nucleo:
	-$(RM) ./Drivers/BSP/STM32F7xx_Nucleo/stm32f7xx_nucleo_144.cyclo ./Drivers/BSP/STM32F7xx_Nucleo/stm32f7xx_nucleo_144.d ./Drivers/BSP/STM32F7xx_Nucleo/stm32f7xx_nucleo_144.o ./Drivers/BSP/STM32F7xx_Nucleo/stm32f7xx_nucleo_144.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32F7xx_Nucleo

