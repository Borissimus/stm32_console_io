#!/bin/bash

PROGRAMMER_CFG="/usr/share/openocd/scripts/interface/jlink.cfg"
TARGET_CFG="/usr/share/openocd/scripts/target/stm32f1x.cfg"
FLASH_PATH="Debug/stm32_console_io.elf"
OPENOCD_CMD="program $FLASH_PATH verify reset exit"

openocd -f $PROGRAMMER_CFG -f $TARGET_CFG \
        -c "$OPENOCD_CMD"
