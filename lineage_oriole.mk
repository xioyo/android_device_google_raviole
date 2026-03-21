#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# LunarisOS Flags
WITH_BCR := true
WITH_GMS := true
LUNARIS_BUILD_TYPE := OFFICIAL
TARGET_CUSTOM_UDFPS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90
PRODUCT_NO_CAMERA := true
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

# Inherit device configuration
DEVICE_CODENAME := oriole
DEVICE_PATH := device/google/raviole
VENDOR_PATH := vendor/google/oriole
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="oriole-user 16 BP4A.251205.006 14401865 release-keys" \
    BuildFingerprint=google/oriole/oriole:16/BP4A.251205.006/14401865:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
