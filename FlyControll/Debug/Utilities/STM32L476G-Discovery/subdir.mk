################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/STM32L476G-Discovery/stm32l476g_discovery.c \
../Utilities/STM32L476G-Discovery/stm32l476g_discovery_audio.c \
../Utilities/STM32L476G-Discovery/stm32l476g_discovery_compass.c \
../Utilities/STM32L476G-Discovery/stm32l476g_discovery_glass_lcd.c \
../Utilities/STM32L476G-Discovery/stm32l476g_discovery_gyroscope.c \
../Utilities/STM32L476G-Discovery/stm32l476g_discovery_idd.c \
../Utilities/STM32L476G-Discovery/stm32l476g_discovery_qspi.c 

OBJS += \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery.o \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_audio.o \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_compass.o \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_glass_lcd.o \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_gyroscope.o \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_idd.o \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_qspi.o 

C_DEPS += \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery.d \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_audio.d \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_compass.d \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_glass_lcd.d \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_gyroscope.d \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_idd.d \
./Utilities/STM32L476G-Discovery/stm32l476g_discovery_qspi.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/STM32L476G-Discovery/%.o: ../Utilities/STM32L476G-Discovery/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/panekT/FlyControll/inc" -I"D:/panekT/FlyControll/CMSIS/core" -I"D:/panekT/FlyControll/CMSIS/device" -I"D:/panekT/FlyControll/HAL_Driver/Inc/Legacy" -I"D:/panekT/FlyControll/HAL_Driver/Inc" -I"D:/panekT/FlyControll/Utilities/Components/Common" -I"D:/panekT/FlyControll/Utilities/Components/cs43l22" -I"D:/panekT/FlyControll/Utilities/Components/hx8347g" -I"D:/panekT/FlyControll/Utilities/Components/l3gd20" -I"D:/panekT/FlyControll/Utilities/Components/lsm303c" -I"D:/panekT/FlyControll/Utilities/Components/lsm303dlhc" -I"D:/panekT/FlyControll/Utilities/Components/mfxstm32l152" -I"D:/panekT/FlyControll/Utilities/Components/n25q128a" -I"D:/panekT/FlyControll/Utilities/Components/n25q256a" -I"D:/panekT/FlyControll/Utilities/Components/st7735" -I"D:/panekT/FlyControll/Utilities/Components/stmpe1600" -I"D:/panekT/FlyControll/Utilities/Components/stmpe811" -I"D:/panekT/FlyControll/Utilities/Components/wm8994" -I"D:/panekT/FlyControll/Utilities/STM32L476G-Discovery" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


