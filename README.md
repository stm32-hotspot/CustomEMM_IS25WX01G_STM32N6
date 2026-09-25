## <b>Template FSBL XIP Custom (eXecute In Place with External Memory Manager Custom driver) Description</b>

This project shows how to tailor the custom EMM driver to a different memory part number e.g. is25wx01g
under the assumption STM32N6570-DK board was reworked to use is25wx01g NOR memory.

This project provides a reference FSBL XIP template based on the STM32Cube HAL API and the External Memory Manager (EMM) Middleware.
It can be used to build any firmware application that executes in external Flash (sub-project Appli).
The main difference from the existing Template_FSBL_XIP project is that the Custom driver of the External Memory Manager
 is used (instead of the Nor Flash driver in Template_FSBL_XIP).


**Warning** If using CubeProgrammer v2.21 version or more recent, add *-align* option in the command line.
