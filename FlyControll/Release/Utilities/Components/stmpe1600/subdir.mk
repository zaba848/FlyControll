################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Components/stmpe1600/stmpe1600.c 

OBJS += \
./Utilities/Components/stmpe1600/stmpe1600.o 

C_DEPS += \
./Utilities/Components/stmpe1600/stmpe1600.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Components/stmpe1600/%.o: ../Utilities/Components/stmpe1600/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DUSE_HAL_DRIVER -DSTM32L476xx -I"C:/Users/User/git/FlyControll/FlyControll/inc" -I"C:/Users/User/git/FlyControll/FlyControll/src" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/core" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/device" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc/Legacy" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/Common" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/cs43l22" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/hx8347g" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/l3gd20" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303c" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303dlhc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/mfxstm32l152" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q128a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q256a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/st7735" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe1600" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe811" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/wm8994" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/STM32L476G-Discovery" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


