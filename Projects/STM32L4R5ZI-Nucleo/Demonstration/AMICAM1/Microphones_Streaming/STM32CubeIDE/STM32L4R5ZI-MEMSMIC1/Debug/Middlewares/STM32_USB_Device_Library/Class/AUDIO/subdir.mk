################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src/usbd_audio_in.c 

OBJS += \
./Middlewares/STM32_USB_Device_Library/Class/AUDIO/usbd_audio_in.o 

C_DEPS += \
./Middlewares/STM32_USB_Device_Library/Class/AUDIO/usbd_audio_in.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USB_Device_Library/Class/AUDIO/usbd_audio_in.o: /home/petar/seminar/x-cube-memsmic1/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src/usbd_audio_in.c Middlewares/STM32_USB_Device_Library/Class/AUDIO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R5xx -DUSE_STM32L4XX_NUCLEO -DUSE_USB_FS -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/AMICAM1 -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/ad1974 -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USB_Device_Library-2f-Class-2f-AUDIO

clean-Middlewares-2f-STM32_USB_Device_Library-2f-Class-2f-AUDIO:
	-$(RM) ./Middlewares/STM32_USB_Device_Library/Class/AUDIO/usbd_audio_in.d ./Middlewares/STM32_USB_Device_Library/Class/AUDIO/usbd_audio_in.o ./Middlewares/STM32_USB_Device_Library/Class/AUDIO/usbd_audio_in.su

.PHONY: clean-Middlewares-2f-STM32_USB_Device_Library-2f-Class-2f-AUDIO

