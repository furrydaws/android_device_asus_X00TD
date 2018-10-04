#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PEX stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
GAPPS_VARIANT := nano
TARGET_GAPPS_ARCH := arm64
CUSTOM_BUILD_TYPE := UNOFFICIAL

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Product Config
PRODUCT_BRAND := ASUS
PRODUCT_DEVICE := X00TD
PRODUCT_MANUFACTURER := ASUS
PRODUCT_NAME := aosp_X00TD
PRODUCT_MODEL := ZenFone Max Pro M1
BOARD_VENDOR := ASUS
PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := ASUS
TARGET_VENDOR_PRODUCT_NAME := X00TD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 1874 release-keys" \
    TARGET_DEVICE="X00TD" \
    DEVICE_MAINTAINERS="Klajnor"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Android/sdm660_64/sdm660_64:8.1.0/OPM1/15.2016.1808.327-20180911:user/release-keys
