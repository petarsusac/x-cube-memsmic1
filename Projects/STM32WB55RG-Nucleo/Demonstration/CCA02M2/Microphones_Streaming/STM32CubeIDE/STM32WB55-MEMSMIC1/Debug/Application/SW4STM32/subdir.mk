################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32WB55RG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/STM32CubeIDE/startup_stm32wb55xx_cm4.s 

C_SRCS += \
/home/petar/seminar/x-cube-memsmic1/Projects/STM32WB55RG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/STM32CubeIDE/syscalls.c 

OBJS += \
./Application/SW4STM32/startup_stm32wb55xx_cm4.o \
./Application/SW4STM32/syscalls.o 

S_DEPS += \
./Application/SW4STM32/startup_stm32wb55xx_cm4.d 

C_DEPS += \
./Application/SW4STM32/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32wb55xx_cm4.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32WB55RG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/STM32CubeIDE/startup_stm32wb55xx_cm4.s Application/SW4STM32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Application/SW4STM32/syscalls.o: /home/petar/seminar/x-cube-memsmic1/Projects/STM32WB55RG-Nucleo/Demonstration/CCA02M2/Microphones_Streaming/STM32CubeIDE/syscalls.c Application/SW4STM32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_USB_FS -DCORE_CM4 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../../Drivers/BSP/CCA02M2 -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../../../../../../Drivers/BSP/Components/Common -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-SW4STM32

clean-Application-2f-SW4STM32:
	-$(RM) ./Application/SW4STM32/startup_stm32wb55xx_cm4.d ./Application/SW4STM32/startup_stm32wb55xx_cm4.o ./Application/SW4STM32/syscalls.d ./Application/SW4STM32/syscalls.o ./Application/SW4STM32/syscalls.su

.PHONY: clean-Application-2f-SW4STM32

