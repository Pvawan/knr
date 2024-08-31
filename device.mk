#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a34x
# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery

# Health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service
    
# MTK plpath utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery
    
# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
# VNDK
PRODUCT_TARGET_VNDK_VERSION := 33

# API
PRODUCT_SHIPPING_API_LEVEL := $(if $(filter 30,$(BOARD_SYSTEMSDK_VERSIONS)),30,32)

# Soong
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.system.model \
    ro.product.vendor.model \
    ro.product.odm.model \
    ro.product.model \
    ro.product.product.model \
    ro.product.system_ext.model
