#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from j2y18lte device
$(call inherit-product, device/samsung/j2y18lte/device.mk)

PRODUCT_DEVICE := j2y18lte
PRODUCT_NAME := omni_j2y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J250F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j2y18ltejx-user 7.1.1 NMF26X J250FXXS2ATI1 release-keys"

BUILD_FINGERPRINT := samsung/j2y18ltejx/j2y18lte:7.1.1/NMF26X/J250FXXS2ATI1:user/release-keys

