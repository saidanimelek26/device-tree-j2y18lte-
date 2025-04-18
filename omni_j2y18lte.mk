#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
# Embedded

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)


PRODUCT_DEVICE := j2y18lte
PRODUCT_NAME := omni_j2y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J250F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j2y18ltejx-user 7.1.1 NMF26X J250FXXS2ATI1 release-keys"

BUILD_FINGERPRINT := samsung/j2y18ltejx/j2y18lte:7.1.1/NMF26X/J250FXXS2ATI1:user/release-keys

