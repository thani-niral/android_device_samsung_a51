#
# Copyright (C) 2023 The LineageOS Project
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

# FOD (In-display fingerprint indicator alignment for A50)
TARGET_HAS_FOD := true

# Inherit device configuration
$(call inherit-product, device/samsung/a50/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Client-id base
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build fingerprint (Aligned for Galaxy A50 Android 11 base stock values)
PRODUCT_BUILD_PROP_OVERRIDES += \
	BuildDesc="a50xx-user 11 RP1A.200720.012 A505FXXU9CUF1 release-keys" \
	BuildFingerprint="samsung/a50xx/a50:11/RP1A.200720.012/A505FXXU9CUF1:user/release-keys"

## Device configuration
PRODUCT_NAME := lineage_a50
PRODUCT_DEVICE := a50
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A505F
PRODUCT_MANUFACTURER := samsung

TARGET_BOOT_ANIMATION_RES := 1080
