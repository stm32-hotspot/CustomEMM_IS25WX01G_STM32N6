
## **Template FSBL XIP Custom (eXecute In Place with External Memory Manager Custom driver) Description**

This project shows how to tailor the custom EMM driver to a different memory part number e.g. is25wx01g
under the assumption STM32N6570-DK board was reworked to use is25wx01g NOR memory.

This project provides a reference FSBL XIP template based on the STM32Cube HAL API and the External Memory Manager (EMM) Middleware. It can be used to build any firmware application that executes in external Flash (sub-project Appli).
The main difference from the existing Template_FSBL_XIP project is that the Custom driver of the External Memory Manager is used (instead of the Nor Flash driver in Template_FSBL_XIP).

The External Memory Manager middleware now includes a new driver type called “Custom,” in addition to the previously existing Nor_Flash and PsRAM drivers.

The goal of this new driver is to offer a new way to configure and use external memory through EMM APIs (with no changes to the EMM APIs compared to previous EMM versions).
This driver is based on a configuration file that contains memory characteristics and details. This file is processed by the Custom driver to configure memory registers and access methods.
In this template, the Nor Flash memory present on the STM32N6570-DK board is a Macronix is25wx01g. The EMM Custom Configurations file for this reference is provided in the stm32_is25wx01g.h file, whose content can be built based on the memory datasheet.

This project is targeted to run on the STM32N657X0H3QU device on the STM32N6570-DK board from STMicroelectronics.
This project consists of three sub-projects:

- FSBL: System configuration, flash access configuration, jump to application code
- Appli: Application code stored in external flash
- ExtmemLoader: Loader generation environment

After bootROM execution, the FSBL project executes in internal RAM, ensures proper MPU, cache, and clock settings (configures the maximum system clock frequency at 600 MHz), then configures the external Flash in execution mode. The FSBL project performs initialization of external Flash access using the External Memory Manager (Custom driver).

When done, the program counter is set to the application entry point, and the application then executes.

Once the application runs, the green LED (GPIO PO.01) toggles in an infinite loop with a 250 ms period.

The ExtMemLoader is a subproject used to generate a binary library capable of downloading an application to external memory.
This binary is called a "Loader" which can be used by the IDE or CubeProgrammer.

#### **Notes**

1. Care must be taken when using HAL_Delay(). This function provides accurate delay (in milliseconds) based on a variable incremented in the SysTick ISR. This implies that if HAL_Delay() is called from a peripheral ISR process, then the SysTick interrupt must have higher priority (numerically lower) than the peripheral interrupt. Otherwise, the caller ISR process will be blocked. To change the SysTick interrupt priority, you have to use the HAL_NVIC_SetPriority() function.

2. The application needs to ensure that the SysTick time base is always set to 1 millisecond to have correct HAL operation.

### **Keywords**

Reference, Template, FSBL, XIP, Loader, External Memory Manager

### **Sub-project FSBL directory contents**

      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/main.h                               Header for main.c module
      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/extmem_manager.h                     Header for extmem_manager.c module
      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/partition_stm32n657xx.h              Partition file
      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/stm32n6xx_hal_conf.h                 HAL Configuration file
      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/stm32n6xx_it.h                       Interrupt handlers header file
      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/stm32_extmem_conf.h                  External Memory Manager Configuration file
      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/stm32_is25wx01g.h                  EMM Custom driver Configuration file for Macronix is25wx01g Nor Flash
      - Templates/Template_FSBL_XIP_Custom/FSBL/Inc/stm32_aps256xx.h                     EMM Custom driver Configuration file for APMemory APS256XXOBR PSRAM
      - Templates/Template_FSBL_XIP_Custom/FSBL/Src/main.c                               Main program
      - Templates/Template_FSBL_XIP_Custom/FSBL/Src/extmem_manager.c                     Code to initialize External Memory Manager
      - Templates/Template_FSBL_XIP_Custom/FSBL/Src/stm32n6xx_hal_msp.c                  HAL MSP module
      - Templates/Template_FSBL_XIP_Custom/FSBL/Src/stm32n6xx_it.c                       Interrupt handlers
      - Templates/Template_FSBL_XIP_Custom/FSBL/Src/system_stm32n6xx_fsbl.c              STM32N6xx system source file


### **Sub-project Appli directory contents**

      - Templates/Template_FSBL_XIP_Custom/Appli/Inc/main.h                              Header for main.c module
      - Templates/Template_FSBL_XIP_Custom/Appli/Inc/stm32n6xx_hal_conf.h                HAL Configuration file
      - Templates/Template_FSBL_XIP_Custom/Appli/Inc/stm32n6xx_it.h                      Interrupt handlers header file
      - Templates/Template_FSBL_XIP_Custom/Appli/Inc/partition_stm32n657xx.h             Partition file
      - Templates/Template_FSBL_XIP_Custom/Appli/Inc/stm32n6570_discovery_conf.h         BSP Configuration file
      - Templates/Template_FSBL_XIP_Custom/Appli/Src/main.c                              Main program
      - Templates/Template_FSBL_XIP_Custom/Appli/Src/stm32n6xx_hal_msp.c                 HAL MSP module
      - Templates/Template_FSBL_XIP_Custom/Appli/Src/secure_nsc.c                        Declaration of non-secure callable APIs
      - Templates/Template_FSBL_XIP_Custom/Appli/Src/stm32n6xx_it.c                      Interrupt handlers
      - Templates/Template_FSBL_XIP_Custom/Appli/Src/system_stm32n6xx.c                  STM32N6xx system source file


### **Sub-project ExtMemLoader directory contents**

      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Inc/extmem_manager.h             Header for extmem_manager.c module
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Inc/extmemloader_init.h          Header for system initialization
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Inc/stm32_extmem_conf.h          External Memory Manager Configuration file
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Inc/stm32_extmemloader_conf.h    Header with external memory device information
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Inc/stm32n6xx_hal_conf.h         HAL Configuration file
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Inc/stm32_is25wx01g.h          EMM Custom driver Configuration file for Macronix is25wx01g Nor Flash
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Src/extmem_manager.c             Code to initialize external memory
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Src/extmemloader_init.c          Code to perform system initialization
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Src/stm32n6xx_hal_msp.c          HAL MSP module
      - Templates/Template_FSBL_XIP_Custom/ExtMemLoader/Src/system_stm32n6xx_fsbl.c      STM32N6xx system source file


### **Hardware and Software Environment**


  - This template runs on STM32N6 devices.

  - This template has been tested with the STMicroelectronics STM32N6570-DK (MB1939) board and can be easily tailored to any other supported device and development board.

  - The following OTP fuses are set in this template:
    - VDDIO3_HSLV=1     I/O XSPIM_P2 High speed option enabled

**WARNING**

Once OTP fuses are set, they cannot be reset.

If the OTP fuse VDDIO3_HSLV is not already set, run the template once with boot mode set to development mode and the NO_OTP_FUSE compilation switch disabled (otherwise, it is not possible to benefit from the maximum transfer rate to access the external flash).

For subsequent runs, select the NO_OTP_FUSE option by default using the preprocessor definition in the IDE.


  - **EWARM** : To monitor a variable in the live watch window, proceed as follows:
    - Start a debugging session.
    - Open View > Images.
    - Double-click to deselect the second instance of project.out.

  - **MDK-ARM** : To monitor a variable in the live watch window, you must comment out SCB_EnableDCache() in the main() function.

### **How to use it?**

The following section describes how to use the Template FSBL XIP Custom. The ExtMemLoader sub-project is NOT considered.

To make the program work, follow these steps:

- Set the boot mode to development mode (BOOT1 switch position is 1-3; BOOT0 switch position does not matter).
- Open your preferred toolchain.
- First, select the FSBL workspace.
- Rebuild all files from the FSBL sub-project (if no modification is made to the FSBL project, this step can be done only once).
- Select the Appli workspace.
- Rebuild all files from the Appli sub-project.
- Use CubeProgrammer to add a header to the generated Appli binary Template_FSBL_XIP_Custom_Appli.bin with the following command:
    - *STM32_SigningTool_CLI.exe -bin Template_FSBL_XIP_Custom_Appli.bin -nk -of 0x80000000 -t fsbl -o Template_FSBL_XIP_Custom_Appli-trusted.bin -hv 2.3 -dump Template_FSBL_XIP_Custom_Appli-trusted.bin*
    - The resulting binary is Template_FSBL_XIP_Custom_Appli-trusted.bin.
- Next, again using CubeProgrammer, load the Appli binary and its header (Template_FSBL_XIP_Custom_Appli-trusted.bin) into the DK board external Flash at address 0x7010'0000.
- Load the FSBL binary into internal RAM using the IDE.
- Run the example.

Next, this program can be run in boot from flash mode by following the instructions below:

- Use CubeProgrammer to add a header to the generated binary Template_FSBL_XIP_Custom_FSBL.bin with the following command:
    - *STM32_SigningTool_CLI.exe -bin Template_FSBL_XIP_Custom_FSBL.bin -nk -of 0x80000000 -t fsbl -o Template_FSBL_XIP_Custom_FSBL-trusted.bin -hv 2.3 -dump Template_FSBL_XIP_Custom_FSBL-trusted.bin*
    - The resulting binary is Template_FSBL_XIP_Custom_FSBL-trusted.bin.
- Again using CubeProgrammer, load the FSBL binary and its header (Template_FSBL_XIP_Custom_FSBL-trusted.bin) into the DK board external Flash at address 0x7000'0000.
- Set the boot mode to boot from external Flash (BOOT0 switch position is 1-2 and BOOT1 switch position is 1-2).
- Press the reset button. The code then executes in boot from external Flash mode.

**Warning:** If using CubeProgrammer v2.21 or more recent, add the *-align* option in the command line.

### <b>External Memory Manager trace system</b>

- EMM middleware Custom driver allows to enable an internal trace system by activataing the DEBUG_TRACE compilation switch in the FSBL workspace.

- When this compilation switch is enabled, all EMM debug/trace prints are redirected to STM32N6570-DK board Virtual COM Port (USART1, PE5/PE6).

- During EMM execution, traces could be collected on a PC opening a Serial Port connection on VCP (115200 bauds, 8bit data, no parity, 1 stop bit).

