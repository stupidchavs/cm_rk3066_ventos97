#
# Copyright (C) 2012 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_CHARACTERISTICS := tablet

#Audio
BOARD_USES_ALSA_AUDIO := true


#BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_AUDIO_LEGACY := true
#Camera
BOARD_USES_LEGACY_CAMERA := true
#USE_CAMERA_STUB := true

BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_ION := true

#BOARD_USES_HC_RADIO := true
BOARD_USES_LEGACY_RIL := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm


TARGET_NO_BOOTLOADER := true
BOARD_KERNEL_BASE := 0x60400000
#BOARD_KERNEL_CMDLINE := console=ttyFIQ0 androidboot.console=ttyFIQ0 init=/init initrd=0x62000000,0x00100000 mtdparts=rk29xxnand:0x00002000@0x00002000(misc),0x00004000@0x00004000(kernel),0x00008000@0x00008000(boot),0x00008000@0x00010000(recovery),0x000C0000@0x00018000(backup),0x00040000@0x000D8000(cache),0x00400000@0x00118000(userdata),0x00002000@0x00518000(kpanic),0x000A0000@0x0051A000(system),0x00020000@0x005BA000(cdrom),-@0x0065A000(user) bootver=2012-06-26
BOARD_PAGE_SIZE := 16384
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := rk30sdk
TARGET_BOOTLOADER_BOARD_NAME := rk30board
#Graphics
BOARD_EGL_CFG := device/rockchip/rk3066/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_USE_LEGACY_UI := true
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
# For WebKit rendering issue	
TARGET_FORCE_CPU_UPLOAD := true

TARGET_HAVE_HDMI_OUT := true


# recovery
TARGET_RECOVERY_INITRC := device/rockchip/rk3066/recovery.init.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/rockchip/rk3066/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb20_otg/gadget/lun0/file"
BOARD_NO_RGBX_8888 := true
BOARD_UMS_2ND_LUNFILE := "/sys/devices/platform/usb20_otg/gadget/lun1/file"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PRE_COMMAND := "busybox dd if=/misc.img of=/dev/block/mtd/by-name/misc; sync"


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 2097152
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 335544320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_HAS_LARGE_FILESYSTEM := true
DEVICE_RESOLUTION := 1024x768

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

TARGET_PREBUILT_KERNEL := device/rockchip/rk3066/recovery.img-kernel

TARGET_BOOTANIMATION_PRELOAD := true

BOARD_HAVE_BLUETOOTH := true

#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/rockchip/rk2918/releasetools/ota_from_target_files
# ARGET_CUSTOM_RELEASETOOL := ./device/rockchip/rk3066/releasetools/squisher_cm

