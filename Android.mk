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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),p839v55)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# CMN
CMN_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt

CMN_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CMN_IMAGES)))
$(CMN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMN firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMN_SYMLINKS)

# fuseapp
FUSE_IMAGES := \
    fuseapp.b00 fuseapp.b01 fuseapp.b02 fuseapp.b03 fuseapp.mdt

FUSE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FUSE_IMAGES)))
$(FUSE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "FUSE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FUSE_SYMLINKS)


# ISDB
ISDB_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt

ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(ISDB_IMAGES)))
$(ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDB_SYMLINKS)

# KEYMASTER
KM_IMAGES := \
    keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaste.mdt

KM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(KM_IMAGES)))
$(KM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KM_SYMLINKS)

# MBA
MBA_IMAGE := \
    mba.mbn

MBA_SYMLINK := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MBA_IMAGE)))
$(MBA_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MBA_SYMLINK)

# MODEM
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b08 modem.b09 modem.b12 modem.b13 modem.b14 \
    modem.b15 modem.b16 modem.b17 modem.b18 modem.b21 modem.b22 \
    modem.b23 modem.b25 modem.b26 modem.mdt

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

# PLAYREADY
PLAYREADY_IMAGES := \
    playread.b00 playread.b01 playread.b02 playread.b03 playread.mdt

PLAYREADY_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(PLAYREADY_IMAGES)))
$(PLAYREADY_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Playready Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PLAYREADY_SYMLINKS)

# WCNSS
WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 wcnss.b09 \
    wcnss.b10 wcnss.b11 wcnss.mdt

WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WCNSS_IMAGES)))
$(WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_SYMLINKS)

# WCNSS
WIDE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

WIDE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WIDE_IMAGES)))
$(WIDE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WIDE Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDE_SYMLINKS)

# Create a link for the WCNSS config file, which ends up as a writable
# version in /system/etc/wifi/
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
    ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini)


$(shell mkdir -p $(TARGET_OUT)/rfs/apq/gnss/readonly; \
    ln -sf /data/rfs/apq/gnss \
            $(TARGET_OUT)/rfs/apq/gnss/readwrite; \
    ln -sf /data/rfs/shared \
            $(TARGET_OUT)/rfs/apq/gnss/shared; \
    ln -sf /data/tombstones/modem \
            $(TARGET_OUT)/rfs/apq/gnss/ramdumps; \
    ln -sf /firmware \
            $(TARGET_OUT)/rfs/apq/gnss/readonly/firmware)

$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/adsp/readonly; \
    ln -sf /data/rfs/mdm/adsp \
            $(TARGET_OUT)/rfs/mdm/adsp/readwrite; \
    ln -sf /data/rfs/shared \
            $(TARGET_OUT)/rfs/mdm/adsp/shared; \
    ln -sf /data/tombstones/lpass \
            $(TARGET_OUT)/rfs/msm/adsp/ramdumps; \
    ln -sf /firmware \
            $(TARGET_OUT)/rfs/mdm/adsp/readonly/firmware)


$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/mpss/readonly; \
    ln -sf /data/rfs/mdm/mpss \
            $(TARGET_OUT)/rfs/mdm/mpss/readwrite; \
    ln -sf /data/rfs/shared \
            $(TARGET_OUT)/rfs/mdm/mpss/shared; \
    ln -sf /data/tombstones/modem \
            $(TARGET_OUT)/rfs/msm/mpss/ramdumps; \
    ln -sf /firmware \
            $(TARGET_OUT)/rfs/mdm/mpss/readonly/firmware)

$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/sparrow/readonly; \
    ln -sf /data/rfs/mdm/sparrow \
            $(TARGET_OUT)/rfs/mdm/sparrow/readwrite; \
    ln -sf /data/rfs/shared \
            $(TARGET_OUT)/rfs/mdm/sparrow/shared; \
    ln -sf /data/tombstones/sparrow \
            $(TARGET_OUT)/rfs/mdm/sparrow/ramdumps; \
    ln -sf /firmware \
            $(TARGET_OUT)/rfs/mdm/sparrow/readonly/firmware)

$(shell mkdir -p $(TARGET_OUT)/rfs/msm/adsp/readonly; \
    ln -sf /data/rfs/msm/adsp \
            $(TARGET_OUT)/rfs/msm/adsp/readwrite; \
    ln -sf /data/rfs/shared \
            $(TARGET_OUT)/rfs/msm/adsp/shared; \
    ln -sf /data/tombstones/lpass \
            $(TARGET_OUT)/rfs/msm/adsp/ramdumps; \
    ln -sf /firmware \
            $(TARGET_OUT)/rfs/msm/adsp/readonly/firmware)


$(shell mkdir -p $(TARGET_OUT)/rfs/msm/mpss/readonly; \
    ln -sf /data/rfs/msm/mpss \
            $(TARGET_OUT)/rfs/msm/mpss/readwrite; \
    ln -sf /data/rfs/shared \
            $(TARGET_OUT)/rfs/msm/mpss/shared; \
    ln -sf /data/tombstones/modem \
            $(TARGET_OUT)/rfs/msm/mpss/ramdumps; \
    ln -sf /firmware \
            $(TARGET_OUT)/rfs/msm/mpss/readonly/firmware)


endif
