# Copyright (C) 2012 The Android Open Source Project
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

LOCAL_KERNEL := $(LOCAL_PATH)/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk
#    $(LOCAL_PATH)/ramdisk/initlogo.rle:root/initlogo.rle
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/rk30xxnand_ko.ko.3.0.8+:root/rk30xxnand_ko.ko.3.0.8+ \
    $(LOCAL_PATH)/ramdisk/init:root/init \
    $(LOCAL_PATH)/ramdisk/init.rk30board.rc:root/init.rk30board.rc \
    $(LOCAL_PATH)/ramdisk/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
    $(LOCAL_PATH)/ramdisk/misc.img:root/misc.img \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rk30board.rc:root/ueventd.rk30board.rc \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc

# Recovery
#	$(LOCAL_PATH)/ramdisk/initlogo.rle:recovery/root/initlogo.rle
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/rk30xxnand_ko.ko.3.0.8+:recovery/root/rk30xxnand_ko.ko.3.0.8+ \
    $(LOCAL_PATH)/ramdisk/init.rk30board.rc:recovery/root/init.rk30board.rc \
    $(LOCAL_PATH)/ramdisk/init.rk30board.usb.rc:recovery/root/init.rk30board.usb.rc \
    $(LOCAL_PATH)/ramdisk/misc.img:recovery/root/misc.img \
    $(LOCAL_PATH)/ramdisk/ueventd.rk30board.rc:recovery/root/ueventd.rk30board.rc

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    static_busybox

PRODUCT_PROPERTY_OVERRIDES := \
    service.adb.root=1 \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Berlin \
    persist.sys.language=de \
    persist.sys.country=DE \
    ro.kernel.android.checkjni=1 \
    persist.sys.ui.hw=true \
    ro.opengles.version=131072 \
    accelerometer.invert_x=1 \
    hwui.render_dirty_regions=false \
    qemu.hw.mainkeys=0 \
    sys.hwc.compose_policy=6 \
	rild.libargs=-d_/dev/ttyUSB1 \
	ril.pppchannel=/dev/ttyUSB2 \
	rild.libpath=/system/lib/libril-rk29-dataonly.so \
	ril.function.dataonly=1 \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapgrowthlimit=64m \
	dalvik.vm.heapsize=256m \
	dalvik.vm.dexopt-flags=m=y \
	ro.rk.MassStorage=false \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	ro.sf.hwrotation=270 \
	ro.rksdk.version=xzh970_v1.0 \
	net.bt.name=Android

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

