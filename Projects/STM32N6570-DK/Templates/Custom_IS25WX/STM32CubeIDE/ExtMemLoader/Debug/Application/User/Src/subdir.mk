################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/Src/syscalls.c \
../Application/User/Src/sysmem.c 

OBJS += \
./Application/User/Src/syscalls.o \
./Application/User/Src/sysmem.o 

C_DEPS += \
./Application/User/Src/syscalls.d \
./Application/User/Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Src/%.o Application/User/Src/%.su Application/User/Src/%.cyclo: ../Application/User/Src/%.c Application/User/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Src

clean-Application-2f-User-2f-Src:
	-$(RM) ./Application/User/Src/syscalls.cyclo ./Application/User/Src/syscalls.d ./Application/User/Src/syscalls.o ./Application/User/Src/syscalls.su ./Application/User/Src/sysmem.cyclo ./Application/User/Src/sysmem.d ./Application/User/Src/sysmem.o ./Application/User/Src/sysmem.su

.PHONY: clean-Application-2f-User-2f-Src

