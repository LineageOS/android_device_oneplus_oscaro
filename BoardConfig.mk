#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
-include device/oneplus/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/oscaro

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 11186208768
BOARD_SUPER_PARTITION_SIZE := 11190403072

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Touch
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_TOUCH_HAL
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL := INCLUDE_DIR
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL_INCLUDE_DIR := \
    $(DEVICE_PATH)/touch/include

# Inherit the proprietary files
-include vendor/oneplus/oscaro/BoardConfigVendor.mk
