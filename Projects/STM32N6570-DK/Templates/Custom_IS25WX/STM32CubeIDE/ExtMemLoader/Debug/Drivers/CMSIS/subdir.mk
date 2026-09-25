################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/system_stm32n6xx_fsbl.c 

OBJS += \
./Drivers/CMSIS/system_stm32n6xx_fsbl.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32n6xx_fsbl.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32n6xx_fsbl.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/system_stm32n6xx_fsbl.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32n6xx_fsbl.cyclo ./Drivers/CMSIS/system_stm32n6xx_fsbl.d ./Drivers/CMSIS/system_stm32n6xx_fsbl.o ./Drivers/CMSIS/system_stm32n6xx_fsbl.su

.PHONY: clean-Drivers-2f-CMSIS

