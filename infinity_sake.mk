#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/asus/sake/device.mk)

# Project Infinity X flags (must be set before inheriting vendor/infinity)
INFINITY_MAINTAINER := James
TARGET_HAS_UDFPS := true

# Inherit from the Project Infinity X configuration.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := sake
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_I006D
PRODUCT_NAME := infinity_sake

# Project Infinity X "About phone" info
PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=Zenfone 8 \
    ro.infinity.soc=Snapdragon 888 \
    ro.infinity.camera=64MP + 12MP

# Optional low-memory build host configuration
ifeq ($(SAKE_LOWMEM_BUILD),true)
include device/asus/sake/lowmem.mk
endif

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_SYSTEM_DEVICE := ASUS_I006D
PRODUCT_SYSTEM_NAME := WW_I006D

PRODUCT_BUILD_PROP_OVERRIDES := \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    SystemDevice=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := asus/WW_I006D/ASUS_I006D:13/TKQ1.220807.001/33.0210.0210.332:user/release-keys
