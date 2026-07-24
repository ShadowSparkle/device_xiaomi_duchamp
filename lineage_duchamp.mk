#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/duchamp/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_duchamp
PRODUCT_DEVICE := duchamp
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G
PRODUCT_SYSTEM_NAME := duchamp_global

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 OS3.0.6.0.WNLMIXM release-keys" \
    BuildFingerprint=POCO/duchamp_global/duchamp:16/BP2A.250605.031.A3/OS3.0.6.0.WNLMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# Mist Stuff
MISTOS_MAINTAINER := AkariYO!!
TARGET_ENABLE_BLUR := true
BYPASS_CHARGE_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_TOUCH_BOOST_SUPPORTED := true
USE_REALITY_ENGINE := false

# UDFPS Extra
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Gapps Stuff
WITH_GMS := true
TARGET_USES_MINI_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_USE_GOOGLE_TELEPHONY := true

