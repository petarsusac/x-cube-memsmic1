################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/Src/usbd_audio_in.c 

OBJS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/usbd_audio_in.o 

C_DEPS += \
./Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/usbd_audio_in.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/usbd_audio_in.o: /home/petar/seminar/x-cube-memsmic1/Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/Src/usbd_audio_in.c Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_USB_FS -DCORE_CM4 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/HP_PDM/Inc -I../../../../../../../../Drivers/BSP/Components/Common -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-HP_AUDIO

clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-HP_AUDIO:
	-$(RM) ./Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/usbd_audio_in.d ./Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/usbd_audio_in.o ./Middlewares/ST/STM32_USB_Device_Library/Class/HP_AUDIO/usbd_audio_in.su

.PHONY: clean-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Class-2f-HP_AUDIO

