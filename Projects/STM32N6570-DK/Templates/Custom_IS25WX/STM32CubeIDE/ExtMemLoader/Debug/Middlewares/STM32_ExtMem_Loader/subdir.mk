################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM/FlashDev.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM/FlashPrg.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/core/memory_wrapper.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/STM32Cube/stm32_device_info.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/STM32Cube/stm32_loader_api.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/core/systick_management.c 

OBJS += \
./Middlewares/STM32_ExtMem_Loader/FlashDev.o \
./Middlewares/STM32_ExtMem_Loader/FlashPrg.o \
./Middlewares/STM32_ExtMem_Loader/memory_wrapper.o \
./Middlewares/STM32_ExtMem_Loader/stm32_device_info.o \
./Middlewares/STM32_ExtMem_Loader/stm32_loader_api.o \
./Middlewares/STM32_ExtMem_Loader/systick_management.o 

C_DEPS += \
./Middlewares/STM32_ExtMem_Loader/FlashDev.d \
./Middlewares/STM32_ExtMem_Loader/FlashPrg.d \
./Middlewares/STM32_ExtMem_Loader/memory_wrapper.d \
./Middlewares/STM32_ExtMem_Loader/stm32_device_info.d \
./Middlewares/STM32_ExtMem_Loader/stm32_loader_api.d \
./Middlewares/STM32_ExtMem_Loader/systick_management.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_ExtMem_Loader/FlashDev.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM/FlashDev.c Middlewares/STM32_ExtMem_Loader/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_ExtMem_Loader/FlashPrg.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM/FlashPrg.c Middlewares/STM32_ExtMem_Loader/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_ExtMem_Loader/memory_wrapper.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/core/memory_wrapper.c Middlewares/STM32_ExtMem_Loader/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_ExtMem_Loader/stm32_device_info.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/STM32Cube/stm32_device_info.c Middlewares/STM32_ExtMem_Loader/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_ExtMem_Loader/stm32_loader_api.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/STM32Cube/stm32_loader_api.c Middlewares/STM32_ExtMem_Loader/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_ExtMem_Loader/systick_management.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Middlewares/ST/STM32_ExtMem_Loader/core/systick_management.c Middlewares/STM32_ExtMem_Loader/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_ExtMem_Loader

clean-Middlewares-2f-STM32_ExtMem_Loader:
	-$(RM) ./Middlewares/STM32_ExtMem_Loader/FlashDev.cyclo ./Middlewares/STM32_ExtMem_Loader/FlashDev.d ./Middlewares/STM32_ExtMem_Loader/FlashDev.o ./Middlewares/STM32_ExtMem_Loader/FlashDev.su ./Middlewares/STM32_ExtMem_Loader/FlashPrg.cyclo ./Middlewares/STM32_ExtMem_Loader/FlashPrg.d ./Middlewares/STM32_ExtMem_Loader/FlashPrg.o ./Middlewares/STM32_ExtMem_Loader/FlashPrg.su ./Middlewares/STM32_ExtMem_Loader/memory_wrapper.cyclo ./Middlewares/STM32_ExtMem_Loader/memory_wrapper.d ./Middlewares/STM32_ExtMem_Loader/memory_wrapper.o ./Middlewares/STM32_ExtMem_Loader/memory_wrapper.su ./Middlewares/STM32_ExtMem_Loader/stm32_device_info.cyclo ./Middlewares/STM32_ExtMem_Loader/stm32_device_info.d ./Middlewares/STM32_ExtMem_Loader/stm32_device_info.o ./Middlewares/STM32_ExtMem_Loader/stm32_device_info.su ./Middlewares/STM32_ExtMem_Loader/stm32_loader_api.cyclo ./Middlewares/STM32_ExtMem_Loader/stm32_loader_api.d ./Middlewares/STM32_ExtMem_Loader/stm32_loader_api.o ./Middlewares/STM32_ExtMem_Loader/stm32_loader_api.su ./Middlewares/STM32_ExtMem_Loader/systick_management.cyclo ./Middlewares/STM32_ExtMem_Loader/systick_management.d ./Middlewares/STM32_ExtMem_Loader/systick_management.o ./Middlewares/STM32_ExtMem_Loader/systick_management.su

.PHONY: clean-Middlewares-2f-STM32_ExtMem_Loader

