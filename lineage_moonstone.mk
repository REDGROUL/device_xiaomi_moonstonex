#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/xiaomi/moonstone/device.mk)

PRODUCT_NAME := lineage_moonstone
PRODUCT_DEVICE := moonstone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X5

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 12 SKQ1.220303.001 V13.0.7.0.SMPMIXM release-keys"

BUILD_FINGERPRINT := POCO/moonstone_p_global/moonstone:12/SKQ1.220303.001/V13.0.7.0.SMPMIXM:user/release-keys
