#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oscaro device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_oscaro
PRODUCT_DEVICE := oscaro
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := CPH2381
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OP535DL1-user 14 UKQ1.230924.001 S.1ada97c-20419-3c60e release-keys" \
    BuildFingerprint=OnePlus/CPH2381/OP535DL1:14/UKQ1.230924.001/S.1ada97c-20419-3c60e:user/release-keys \
    DeviceName=OP535DL1 \
    DeviceProduct=OP535DL1 \
    SystemDevice=OP535DL1 \
    SystemName=OP535DL1
