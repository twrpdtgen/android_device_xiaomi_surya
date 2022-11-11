#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

PRODUCT_DEVICE := surya
PRODUCT_NAME := omni_surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="surya_global-user 12 RKQ1.211019.001 V13.0.1.0.SJGMIXM release-keys"

BUILD_FINGERPRINT := POCO/surya_global/surya:12/RKQ1.211019.001/V13.0.1.0.SJGMIXM:user/release-keys
