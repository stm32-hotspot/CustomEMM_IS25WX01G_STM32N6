This folder contains the external flash loader for IS25WX01G memory: IS25WX01G_STM32N6570-DK.stldr
Copy IS25WX01G_STM32N6570-DK.stldr to [CUBE PROG INSTALL PATH]\bin\ExternalLoader to start using it with STM32CubeProgrammer.
Template_FSBL_XIP_Custom_Appli.bin and Template_FSBL_XIP_Custom_FSBL.bin are the binaries of the FSBL and Project binaries are not signed.
Template_FSBL_XIP_Custom_Appli-trusted.bin and Template_FSBL_XIP_Custom_FSBL-trusted.bin are the binaries of the FSBL and Project binaries already signed by STM32_SigningTool_CLI.exe.
Set the boot mode to development mode (BOOT1 switch position is 1-3; BOOT0 switch position does not matter).
Open STM32CubeProgrammer, navigate to external flash loader menu and type in the search field "IS25" and select the corresponding loader. 
Within STM32CubeProgrammer, navigate to "Erase and Programming" menu and download the FSBL binary and its header (Template_FSBL_XIP_Custom_FSBL-trusted.bin) into the DK board external Flash at address 0x7000'0000.
Within "Erase and Programming" menu, download the Appli binary and its header (Template_FSBL_XIP_Custom_Appli-trusted.bin) into the DK board external Flash at address 0x7010'0000.
Set the boot mode to boot from external Flash (BOOT0 switch position is 1-2 and BOOT1 switch position is 1-2).
Press the reset button. The code then executes in boot from external Flash mode.
