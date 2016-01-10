################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Components/stmpe811/stmpe811.c 

OBJS += \
./Utilities/Components/stmpe811/stmpe811.o 

C_DEPS += \
./Utilities/Components/stmpe811/stmpe811.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Components/stmpe811/%.o: ../Utilities/Components/stmpe811/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/panekT/FlyControll/inc" -I"D:/panekT/FlyControll/CMSIS/core" -I"D:/panekT/FlyControll/CMSIS/device" -I"D:/panekT/FlyControll/HAL_Driver/Inc/Legacy" -I"D:/panekT/FlyControll/HAL_Driver/Inc" -I"D:/panekT/FlyControll/Utilities/Components/Common" -I"D:/panekT/FlyControll/Utilities/Components/cs43l22" -I"D:/panekT/FlyControll/Utilities/Components/hx8347g" -I"D:/panekT/FlyControll/Utilities/Components/l3gd20" -I"D:/panekT/FlyControll/Utilities/Components/lsm303c" -I"D:/panekT/FlyControll/Utilities/Components/lsm303dlhc" -I"D:/panekT/FlyControll/Utilities/Components/mfxstm32l152" -I"D:/panekT/FlyControll/Utilities/Components/n25q128a" -I"D:/panekT/FlyControll/Utilities/Components/n25q256a" -I"D:/panekT/FlyControll/Utilities/Components/st7735" -I"D:/panekT/FlyControll/Utilities/Components/stmpe1600" -I"D:/panekT/FlyControll/Utilities/Components/stmpe811" -I"D:/panekT/FlyControll/Utilities/Components/wm8994" -I"D:/panekT/FlyControll/Utilities/STM32L476G-Discovery" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


