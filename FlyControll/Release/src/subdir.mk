################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gpio.c \
../src/spi.c \
../src/stm32l4xx_hal_msp.c \
../src/stm32l4xx_it.c \
../src/syscalls.c \
../src/system_stm32l4xx.c \
../src/usart.c 

CPP_SRCS += \
../src/CComm.cpp \
../src/CMainMenu.cpp \
../src/main.cpp 

OBJS += \
./src/CComm.o \
./src/CMainMenu.o \
./src/gpio.o \
./src/main.o \
./src/spi.o \
./src/stm32l4xx_hal_msp.o \
./src/stm32l4xx_it.o \
./src/syscalls.o \
./src/system_stm32l4xx.o \
./src/usart.o 

C_DEPS += \
./src/gpio.d \
./src/spi.d \
./src/stm32l4xx_hal_msp.d \
./src/stm32l4xx_it.d \
./src/syscalls.d \
./src/system_stm32l4xx.d \
./src/usart.d 

CPP_DEPS += \
./src/CComm.d \
./src/CMainMenu.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo %cd%
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c++98 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/panekT/FlyControll/inc" -I"D:/panekT/FlyControll/CMSIS/core" -I"D:/panekT/FlyControll/CMSIS/device" -I"D:/panekT/FlyControll/HAL_Driver/Inc/Legacy" -I"D:/panekT/FlyControll/HAL_Driver/Inc" -I"D:/panekT/FlyControll/Utilities/Components/Common" -I"D:/panekT/FlyControll/Utilities/Components/cs43l22" -I"D:/panekT/FlyControll/Utilities/Components/hx8347g" -I"D:/panekT/FlyControll/Utilities/Components/l3gd20" -I"D:/panekT/FlyControll/Utilities/Components/lsm303c" -I"D:/panekT/FlyControll/Utilities/Components/lsm303dlhc" -I"D:/panekT/FlyControll/Utilities/Components/mfxstm32l152" -I"D:/panekT/FlyControll/Utilities/Components/n25q128a" -I"D:/panekT/FlyControll/Utilities/Components/n25q256a" -I"D:/panekT/FlyControll/Utilities/Components/st7735" -I"D:/panekT/FlyControll/Utilities/Components/stmpe1600" -I"D:/panekT/FlyControll/Utilities/Components/stmpe811" -I"D:/panekT/FlyControll/Utilities/Components/wm8994" -I"D:/panekT/FlyControll/Utilities/STM32L476G-Discovery" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -mslow-flash-data -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/panekT/FlyControll/inc" -I"D:/panekT/FlyControll/CMSIS/core" -I"D:/panekT/FlyControll/CMSIS/device" -I"D:/panekT/FlyControll/HAL_Driver/Inc/Legacy" -I"D:/panekT/FlyControll/HAL_Driver/Inc" -I"D:/panekT/FlyControll/Utilities/Components/Common" -I"D:/panekT/FlyControll/Utilities/Components/cs43l22" -I"D:/panekT/FlyControll/Utilities/Components/hx8347g" -I"D:/panekT/FlyControll/Utilities/Components/l3gd20" -I"D:/panekT/FlyControll/Utilities/Components/lsm303c" -I"D:/panekT/FlyControll/Utilities/Components/lsm303dlhc" -I"D:/panekT/FlyControll/Utilities/Components/mfxstm32l152" -I"D:/panekT/FlyControll/Utilities/Components/n25q128a" -I"D:/panekT/FlyControll/Utilities/Components/n25q256a" -I"D:/panekT/FlyControll/Utilities/Components/st7735" -I"D:/panekT/FlyControll/Utilities/Components/stmpe1600" -I"D:/panekT/FlyControll/Utilities/Components/stmpe811" -I"D:/panekT/FlyControll/Utilities/Components/wm8994" -I"D:/panekT/FlyControll/Utilities/STM32L476G-Discovery" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/syscalls.o: ../src/syscalls.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/panekT/FlyControll/inc" -I"D:/panekT/FlyControll/CMSIS/core" -I"D:/panekT/FlyControll/CMSIS/device" -I"D:/panekT/FlyControll/HAL_Driver/Inc/Legacy" -I"D:/panekT/FlyControll/HAL_Driver/Inc" -I"D:/panekT/FlyControll/Utilities/Components/Common" -I"D:/panekT/FlyControll/Utilities/Components/cs43l22" -I"D:/panekT/FlyControll/Utilities/Components/hx8347g" -I"D:/panekT/FlyControll/Utilities/Components/l3gd20" -I"D:/panekT/FlyControll/Utilities/Components/lsm303c" -I"D:/panekT/FlyControll/Utilities/Components/lsm303dlhc" -I"D:/panekT/FlyControll/Utilities/Components/mfxstm32l152" -I"D:/panekT/FlyControll/Utilities/Components/n25q128a" -I"D:/panekT/FlyControll/Utilities/Components/n25q256a" -I"D:/panekT/FlyControll/Utilities/Components/st7735" -I"D:/panekT/FlyControll/Utilities/Components/stmpe1600" -I"D:/panekT/FlyControll/Utilities/Components/stmpe811" -I"D:/panekT/FlyControll/Utilities/Components/wm8994" -I"D:/panekT/FlyControll/Utilities/STM32L476G-Discovery" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


