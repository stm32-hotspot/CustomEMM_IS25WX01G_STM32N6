################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Manager/boot/stm32_boot_xip.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Manager/custom/stm32_custom_driver.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Manager/stm32_extmem.c 

OBJS += \
./Middlewares/STM32_ExtMem_Manager/stm32_boot_xip.o \
./Middlewares/STM32_ExtMem_Manager/stm32_custom_driver.o \
./Middlewares/STM32_ExtMem_Manager/stm32_extmem.o 

C_DEPS += \
./Middlewares/STM32_ExtMem_Manager/stm32_boot_xip.d \
./Middlewares/STM32_ExtMem_Manager/stm32_custom_driver.d \
./Middlewares/STM32_ExtMem_Manager/stm32_extmem.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_ExtMem_Manager/stm32_boot_xip.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Manager/boot/stm32_boot_xip.c Middlewares/STM32_ExtMem_Manager/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_ExtMem_Manager/stm32_custom_driver.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Manager/custom/stm32_custom_driver.c Middlewares/STM32_ExtMem_Manager/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_ExtMem_Manager/stm32_extmem.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Manager/stm32_extmem.c Middlewares/STM32_ExtMem_Manager/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_ExtMem_Manager

clean-Middlewares-2f-STM32_ExtMem_Manager:
	-$(RM) ./Middlewares/STM32_ExtMem_Manager/stm32_boot_xip.cyclo ./Middlewares/STM32_ExtMem_Manager/stm32_boot_xip.d ./Middlewares/STM32_ExtMem_Manager/stm32_boot_xip.o ./Middlewares/STM32_ExtMem_Manager/stm32_boot_xip.su ./Middlewares/STM32_ExtMem_Manager/stm32_custom_driver.cyclo ./Middlewares/STM32_ExtMem_Manager/stm32_custom_driver.d ./Middlewares/STM32_ExtMem_Manager/stm32_custom_driver.o ./Middlewares/STM32_ExtMem_Manager/stm32_custom_driver.su ./Middlewares/STM32_ExtMem_Manager/stm32_extmem.cyclo ./Middlewares/STM32_ExtMem_Manager/stm32_extmem.d ./Middlewares/STM32_ExtMem_Manager/stm32_extmem.o ./Middlewares/STM32_ExtMem_Manager/stm32_extmem.su

.PHONY: clean-Middlewares-2f-STM32_ExtMem_Manager

