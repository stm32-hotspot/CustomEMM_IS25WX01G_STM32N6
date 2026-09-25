################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/extmem_manager.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/extmemloader_init.c \
C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/stm32n6xx_hal_msp.c 

OBJS += \
./Application/User/extmem_manager.o \
./Application/User/extmemloader_init.o \
./Application/User/stm32n6xx_hal_msp.o 

C_DEPS += \
./Application/User/extmem_manager.d \
./Application/User/extmemloader_init.d \
./Application/User/stm32n6xx_hal_msp.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/extmem_manager.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/extmem_manager.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/extmemloader_init.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/extmemloader_init.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32n6xx_hal_msp.o: C:/ST/Repository/N6_1.3.0_CustomEMM_IS25WX01G/Projects/STM32N6570-DK/Templates/Custom_IS25WX/ExtMemLoader/Src/stm32n6xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g -DDEBUG -DSTM32_EXTMEMLOADER_STM32CUBETARGET -DSTM32N657xx -c -I../../../Secure_nsclib -I../../../ExtMemLoader/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../../../../../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/core -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/MDK-ARM -I../../../../../../../Middlewares/ST/STM32_ExtMem_Loader/STM32Cube -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager -I../../../../../../../Middlewares/ST/STM32_ExtMem_Manager/custom -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../../../../../../Drivers/CMSIS/Device/ST/STM32N6xx/Include/Templates -I../../../../../../../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -Wno-maybe-uninitialized -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/extmem_manager.cyclo ./Application/User/extmem_manager.d ./Application/User/extmem_manager.o ./Application/User/extmem_manager.su ./Application/User/extmemloader_init.cyclo ./Application/User/extmemloader_init.d ./Application/User/extmemloader_init.o ./Application/User/extmemloader_init.su ./Application/User/stm32n6xx_hal_msp.cyclo ./Application/User/stm32n6xx_hal_msp.d ./Application/User/stm32n6xx_hal_msp.o ./Application/User/stm32n6xx_hal_msp.su

.PHONY: clean-Application-2f-User

