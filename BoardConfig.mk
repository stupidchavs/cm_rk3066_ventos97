#
# Copyright (C) 2012 The CyanogenMod Project
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

LOCAL_PATH := device/rockchip/ventos97

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := rk30xx
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := rk30sdk

# kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384
BOARD_FORCE_RAMDISK_ADDRESS := 0x62000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/recovery.img-kernel


# BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/custombootimg.mk


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 2097152
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 335544320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_HAS_LARGE_FILESYSTEM := true


#graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
DEVICE_RESOLUTION := 1024x768
TARGET_HAVE_HDMI_OUT := true


#DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_CHARACTERISTICS := tablet

#Audio
BOARD_USES_ALSA_AUDIO := true

#Camera
#BOARD_USES_LEGACY_CAMERA := true
#USE_CAMERA_STUB := true

BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_ION := true

#BOARD_USES_HC_RADIO := true
BOARD_USES_LEGACY_RIL := true
#Wlan
BOARD_WLAN_DEVICE := wlan0
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER        := WEXT
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_rtl
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := ""
WIFI_DRIVER_FW_PATH_STA     := ""
WIFI_DRIVER_FW_PATH_AP      := ""
WIFI_DRIVER_FW_PATH_P2P     := ""
WIFI_DRIVER_MODULE_NAME     := wlan
WIFI_DRIVER_MODULE_ARG      := ""


# TARGET_CUSTOM_WIFI := device/rockchip/rk3066/wifi_realtek.c

TARGET_PROVIDES_INIT_RC := true

TARGET_BOOTANIMATION_PRELOAD := true

BOARD_HAVE_BLUETOOTH := true

#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/rockchip/rk2918/releasetools/ota_from_target_files
# ARGET_CUSTOM_RELEASETOOL := ./device/rockchip/rk3066/releasetools/squisher_cm

# recovery
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery.init.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(LOCAL_PATH)/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb20_otg/gadget/lun0/file"
BOARD_NO_RGBX_8888 := true
BOARD_UMS_2ND_LUNFILE := "/sys/devices/platform/usb20_otg/gadget/lun1/file"
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_PRE_COMMAND := "echo -n boot-recovery | busybox dd of=/dev/block/mtd/by-name/misc count=1 conv=sync; sync"
# TWRP
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#SP1_NAME := "boot"
#SP1_BACKUP_METHOD := image
#SP1_MOUNTABLE := 0
