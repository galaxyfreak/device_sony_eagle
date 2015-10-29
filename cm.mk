# Copyright 2014 The Android Open Source Project
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

# Kernel
TARGET_KERNEL_SOURCE := kernel/sony/msm8974

# Inherit CM Yukon common device parts
$(call inherit-product, device/sony/yukon-common/device_cm.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/eagle/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device \
    device/sony/eagle/rootdir/fstab.yukon:recovery/root/etc/fstab.yukon

# Resolution
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
DEVICE_RESOLUTION := 540x960

PRODUCT_NAME := cm_eagle

# Assert
TARGET_OTA_ASSERT_DEVICE := D2303,eagle

# Inherit from eagle device
$(call inherit-product, device/sony/eagle/aosp_d2303.mk)

# Inherit CM common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=D2303 \
    BUILD_FINGERPRINT=Sony/D2303/D2303:4.4.4/18.3.1.C.0.21/2n9_bg:user/release-keys \
    PRIVATE_BUILD_DESC="D2303-user 18.3.1.C.0.21 2n9_bg release-keys"

