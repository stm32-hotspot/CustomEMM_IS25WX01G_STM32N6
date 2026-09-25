/**
  ******************************************************************************
  * @file    stm32_extmem_conf.h
  * @author  GPM Application Team
  * @brief   Header configuration for extmem module
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef EXTMEM_CONF_H_
#define EXTMEM_CONF_H_

#ifdef __cplusplus
extern "C" {
#endif

/** @defgroup EXTMEN_CONF
  * @{
  */

/*
  @brief management of the driver layer enable
*/
#define EXTMEM_DRIVER_NOR_SFDP   0
#define EXTMEM_DRIVER_PSRAM      0
#define EXTMEM_DRIVER_SDCARD     0
#define EXTMEM_DRIVER_USER       0
#define EXTMEM_DRIVER_CUSTOM     1
/*
  @brief management of the driver layer enable
*/
#define EXTMEM_SAL_XSPI   0
#define EXTMEM_SAL_SD     0

/* Includes ------------------------------------------------------------------*/
#include "stm32n6xx_hal.h"
#include "stm32_extmem.h"
#include "stm32_extmem_type.h"
#include "boot/stm32_boot_xip.h"

/* USER CODE BEGIN INCLUDE */
#include "stm32_is25wx01g.h"

/* USER CODE END INCLUDE */

/*
  @brief import of the HAL handles for MEMORRY_SERIAL_0
*/
extern XSPI_HandleTypeDef       hxspi2;

/*
  @brief import of the HAL handles for MEMORY_PSRAM_0
*/
extern XSPI_HandleTypeDef       hxspi1;

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/

/** @defgroup EXTMEM_CONF_Exported_constants EXTMEM_CONF exported constante
  * @{
  */
enum {
  EXTMEMORY_1  = 0, /*!< ID 0 of extmem_list_config */
//  EXTMEMORY_2  = 1, /*!< ID 1 of extmem_list_config */
};
/**
  * @}
  */

#define EXTMEM_MEMORY_BOOTXIP  EXTMEMORY_1
#define EXTMEM_XIP_IMAGE_OFFSET 0x00100000
#define EXTMEM_HEADER_OFFSET 0x00000400

/* Exported configuration --------------------------------------------------------*/
/** @defgroup EXTMEM_CONF_Exported_configuration EXTMEM_CONF exported configuration definition
  * @{
  */
extern EXTMEM_DefinitionTypeDef extmem_list_config[1];
#if defined(EXTMEM_C)
EXTMEM_DefinitionTypeDef extmem_list_config[1];
#endif /* EXTMEM_C */
/**
  * @}
  */

/* Exported trace --------------------------------------------------------*/
/** @defgroup EXTMEM_CONF_Exported_debug EXTMEM_CONF exported debug definition
  * @{
  */


/*
 * @brief debug level of the different layers
 */
#define EXTMEM_DEBUG_LEVEL                   0

#define EXTMEM_DRIVER_NOR_SFDP_DEBUG_LEVEL   0
#define EXTMEM_DRIVER_PSRAM_DEBUG_LEVEL      0

#define EXTMEM_SAL_XSPI_DEBUG_LEVEL          0

#define EXTMEM_MACRO_DEBUG(_MSG_)  EXTMEM_TRACE((uint8_t *)_MSG_)

//#define EXTMEM_DRIVER_CUSTOM_DEBUG_LEVEL     1

extern void EXTMEM_TRACE(uint8_t *Message);

/**
  * @}
  */

/**
  * @}
  */


#ifdef __cplusplus
}
#endif

#endif /* EXTMEM_CONF_H_ */
