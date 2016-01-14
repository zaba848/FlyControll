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
../src/CCaculator.cpp \
../src/CComm.cpp \
../src/CDriver.cpp \
../src/CMainMenu.cpp \
../src/CTimers.cpp \
../src/main.cpp 

OBJS += \
./src/CCaculator.o \
./src/CComm.o \
./src/CDriver.o \
./src/CMainMenu.o \
./src/CTimers.o \
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
./src/CCaculator.d \
./src/CComm.d \
./src/CDriver.d \
./src/CMainMenu.d \
./src/CTimers.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo %cd%
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c++98 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DUSE_HAL_DRIVER -DSTM32L476xx -I"C:/Users/User/git/FlyControll/FlyControll/inc" -I"C:/Users/User/git/FlyControll/FlyControll/src" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/core" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/device" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc/Legacy" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/Common" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/cs43l22" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/hx8347g" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/l3gd20" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303c" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303dlhc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/mfxstm32l152" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q128a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q256a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/st7735" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe1600" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe811" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/wm8994" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/STM32L476G-Discovery" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -mslow-flash-data -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -std=c99 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DUSE_HAL_DRIVER -DSTM32L476xx -I"C:/Users/User/git/FlyControll/FlyControll/inc" -I"C:/Users/User/git/FlyControll/FlyControll/src" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/core" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/device" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc/Legacy" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/Common" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/cs43l22" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/hx8347g" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/l3gd20" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303c" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303dlhc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/mfxstm32l152" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q128a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q256a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/st7735" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe1600" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe811" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/wm8994" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/STM32L476G-Discovery" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/syscalls.o: ../src/syscalls.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DUSE_HAL_DRIVER -DSTM32L476xx -I"C:/Users/User/git/FlyControll/FlyControll/inc" -I"C:/Users/User/git/FlyControll/FlyControll/src" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/core" -I"C:/Users/User/git/FlyControll/FlyControll/CMSIS/device" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc/Legacy" -I"C:/Users/User/git/FlyControll/FlyControll/HAL_Driver/Inc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/Common" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/cs43l22" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/hx8347g" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/l3gd20" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303c" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/lsm303dlhc" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/mfxstm32l152" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q128a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/n25q256a" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/st7735" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe1600" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/stmpe811" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/Components/wm8994" -I"C:/Users/User/git/FlyControll/FlyControll/Utilities/STM32L476G-Discovery" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


