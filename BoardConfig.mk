#
# Copyright (C) 2015 The CyanogenMod Project
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

FORCE_32_BIT := true

-include device/cyanogen/msm8916-common/BoardConfigCommon.mk
DEVICE_PATH := device/zte/p839v55

# Bootloader
TARGET_NO_RADIOIMAGE := true

# Camera
#BOARD_CAMERA_SENSORS := \
#    s5k3m2xm \
#    imx214
#TARGET_USE_VENDOR_CAMERA_EXT := true
#USE_DEVICE_SPECIFIC_CAMERA := true

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
# CPU
TARGET_CPU_CORTEX_A53 := true


# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/zte/p839v55/mkbootimg.mk
#TARGET_KERNEL_SOURCE := kernel/zte/msm8916
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
TARGET_KERNEL_SOURCE := kernel/zte/vsu6
TARGET_KERNEL_CONFIG := msm_P839V55_defconfig
#TARGET_KERNEL_CONFIG := msm8916_defconfig
#TARGET_KERNEL_SOURCE := kernel/zte/VF-995N
TARGET_KERNEL_CONFIG := msm_P839V55-PV_defconfig
TARGET_KERNEL_ARCH := arm
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.selinux=permissive androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 loglevel=7
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
#BOARD_RAMDISK_OFFSET     := 0x02000000
#BOARD_KERNEL_TAGS_OFFSET := 0x00000100

#BOARD_DTBTOOL_ARGS := -2
##BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/zte/p839v55/dt.img
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 




# Kernel
##TARGET_KERNEL_CONFIG := msm_P839V55_m_defconfig
##TARGET_KERNEL_ARCH := arm
##BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.selinux=permissive androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
#BOARD_KERNEL_SEPARATED_DT := true
##BOARD_RAMDISK_OFFSET     := 0x01000000
##BOARD_KERNEL_TAGS_OFFSET := 0x00000100
#BOARD_DTBTOOL_ARGS := -2
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/zte/p839v55/dt.img

# Assert
TARGET_OTA_ASSERT_DEVICE := P839v55,p839v55

# ANT+
#BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# CMHW
BOARD_HARDWARE_CLASS := device/zte/p839v55/cmhw/src

# Add suffix variable to uniquely identify the board
TARGET_BOARD_SUFFIX := _32

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12306070528 # (BOARD_USERDATAIMAGE_PARTITION_SIZE - 16384 for crypto footer)
BOARD_CACHEIMAGE_PARTITION_SIZE    := 318767104
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_FLASH_BLOCK_SIZE             := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Memory
MALLOC_IMPL := dlmalloc

# Recovery
TARGET_RECOVERY_FSTAB := device/zte/p839v55/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_EMMC_WIPE := true
COMMON_GLOBAL_CFLAGS += -DRECOVERY_FONT='"roboto_15x24.h"'

# Vold
BOARD_VOLD_MAX_PARTITIONS := 32
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Wifi
BOARD_WLAN_DEVICE := qcwcn
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/pronto/pronto_wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

# Inherit from the proprietary version
-include vendor/zte/p839v55/BoardConfigVendor.mk
