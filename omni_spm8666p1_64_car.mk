#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from spm8666p1_64_car device
$(call inherit-product, device/wutong/spm8666p1_64_car/device.mk)

PRODUCT_DEVICE := spm8666p1_64_car
PRODUCT_NAME := omni_spm8666p1_64_car
PRODUCT_BRAND := TINNOVE
PRODUCT_MODEL := S311_MCA
PRODUCT_MANUFACTURER := wutong

PRODUCT_GMS_CLIENTID_BASE := android-wutong

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S311_MCA-user 9 M8.M3 20221009-125156 user-keys"

BUILD_FINGERPRINT := TINNOVE/S311_MCA/spm8666p1_64_car:9/M8.M3/20221009-125156:user/user-keys
