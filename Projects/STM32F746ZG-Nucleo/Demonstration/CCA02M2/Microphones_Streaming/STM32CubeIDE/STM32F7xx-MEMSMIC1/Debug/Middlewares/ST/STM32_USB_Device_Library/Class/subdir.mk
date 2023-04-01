################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src/usbd_audio_in.c 

OBJS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/usbd_audio_in.o 

C_DEPS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/usbd_audio_in.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Device_Library/Class/usbd_audio_in.o: /home/petar/seminar/x-cube-memsmic1/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src/usbd_audio_in.c Middlewares/ST/STM32_USB_Device_Library/Class/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -I"../../../../../../../../Middlewares/ST/AI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class

clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class:
	-$(RM) ./Middlewares/ST/STM32_USB_Device_Library/Class/usbd_audio_in.cyclo ./Middlewares/ST/STM32_USB_Device_Library/Class/usbd_audio_in.d ./Middlewares/ST/STM32_USB_Device_Library/Class/usbd_audio_in.o ./Middlewares/ST/STM32_USB_Device_Library/Class/usbd_audio_in.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class

