################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Drivers/BSP/Components/ad1974/ad1974.c \
/home/petar/seminar/x-cube-memsmic1/Drivers/BSP/Components/ad1974/ad1974_reg.c 

OBJS += \
./Drivers/BSP/Components/ad1974.o \
./Drivers/BSP/Components/ad1974_reg.o 

C_DEPS += \
./Drivers/BSP/Components/ad1974.d \
./Drivers/BSP/Components/ad1974_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/ad1974.o: /home/petar/seminar/x-cube-memsmic1/Drivers/BSP/Components/ad1974/ad1974.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_USB_FS -DCORE_CM4 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/BSP/Components/ad1974 -I../../../../../../../../Drivers/BSP/AMICAM1 -I../../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/BSP/Components/Common -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ad1974_reg.o: /home/petar/seminar/x-cube-memsmic1/Drivers/BSP/Components/ad1974/ad1974_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_USB_FS -DCORE_CM4 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/BSP/Components/ad1974 -I../../../../../../../../Drivers/BSP/AMICAM1 -I../../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/BSP/Components/Common -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/ad1974.d ./Drivers/BSP/Components/ad1974.o ./Drivers/BSP/Components/ad1974.su ./Drivers/BSP/Components/ad1974_reg.d ./Drivers/BSP/Components/ad1974_reg.o ./Drivers/BSP/Components/ad1974_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

