#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/wutong/spm8666p1_64_car
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    system \
    dtbo \
    product \
    vendor

# Boot control HAL
PRODUCT_PACKAGES += \
     android.hardware.boot@1.1-impl.recovery
     #     android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
     bootctrl.mt6771

# PRODUCT_USE_DYNAMIC_PARTATIONS := true

#$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
ENABLE_VIRTUAL_AB := true
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
     otapreopt_script \
     cppreopts.sh \
     update_engine \
     update_verifier \
     update_engine_sideload \


