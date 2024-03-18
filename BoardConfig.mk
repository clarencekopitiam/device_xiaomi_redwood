#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/redwood

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := redwood

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_redwood
TARGET_RECOVERY_DEVICE_MODULES := libinit_redwood

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm7325
TARGET_KERNEL_CONFIG := vendor/xiaomi-qgki_defconfig vendor/redwood.config

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Include proprietary files
include vendor/xiaomi/redwood/BoardConfigVendor.mk
