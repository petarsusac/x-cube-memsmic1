################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/audio_application.c \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/cube_hal_f7.c \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/main.c \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/stm32xx_it.c \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/syscalls.c \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/usbd_audio_if.c \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/usbd_conf_f7.c \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/usbd_desc.c 

OBJS += \
./Application/User/audio_application.o \
./Application/User/cube_hal_f7.o \
./Application/User/main.o \
./Application/User/stm32xx_it.o \
./Application/User/syscalls.o \
./Application/User/usbd_audio_if.o \
./Application/User/usbd_conf_f7.o \
./Application/User/usbd_desc.o 

C_DEPS += \
./Application/User/audio_application.d \
./Application/User/cube_hal_f7.d \
./Application/User/main.d \
./Application/User/stm32xx_it.d \
./Application/User/syscalls.d \
./Application/User/usbd_audio_if.d \
./Application/User/usbd_conf_f7.d \
./Application/User/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/audio_application.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/audio_application.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/cube_hal_f7.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/cube_hal_f7.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/main.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/stm32xx_it.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/stm32xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/syscalls.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/syscalls.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/usbd_audio_if.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/usbd_audio_if.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/usbd_conf_f7.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/usbd_conf_f7.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/usbd_desc.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32F746ZG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/Src/usbd_desc.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32F746xx -DUSE_STM32F7XX_NUCLEO_144 -DUSE_HAL_DRIVER -DUSE_USB_FS -DARM_MATH_CM7 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../../../../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/STM32F7xx_Nucleo_144 -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/CMSIS/DSP/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/audio_application.d ./Application/User/audio_application.o ./Application/User/audio_application.su ./Application/User/cube_hal_f7.d ./Application/User/cube_hal_f7.o ./Application/User/cube_hal_f7.su ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32xx_it.d ./Application/User/stm32xx_it.o ./Application/User/stm32xx_it.su ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/syscalls.su ./Application/User/usbd_audio_if.d ./Application/User/usbd_audio_if.o ./Application/User/usbd_audio_if.su ./Application/User/usbd_conf_f7.d ./Application/User/usbd_conf_f7.o ./Application/User/usbd_conf_f7.su ./Application/User/usbd_desc.d ./Application/User/usbd_desc.o ./Application/User/usbd_desc.su

.PHONY: clean-Application-2f-User

