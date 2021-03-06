#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/l1m/overlay

# NFC
# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt)

# NFC EXTRAS add-on API
PRODUCT_PACKAGES += \
    com.android.nfc_extras
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# NFCEE access control
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    nfc.msm8960 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# hostapd
PRODUCT_PACKAGES += \
    hostapd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/lge/l1m/prebuilt/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/lge/l1m/prebuilt/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/lge/l1m/prebuilt/etc/firmware/a300_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/lge/l1m/prebuilt/etc/firmware/a300_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/lge/l1m/prebuilt/etc/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    device/lge/l1m/prebuilt/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/lge/l1m/prebuilt/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/lge/l1m/prebuilt/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/wifi/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal \
    device/lge/l1m/prebuilt/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/init.lge_dut.bt.sh:/system/etc/init.lge_dut.bt.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.efs.sync.sh:/system/etc/init.qcom.efs.sync.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.thermald_conf.sh:/system/etc/init.qcom.thermald_conf.sh \
    device/lge/l1m/prebuilt/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/lge/l1m/prebuilt/etc/usf_post_boot.sh:/system/etc/usf_post_boot.sh

# 2nd-init
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/xbin/2nd-init:/system/xbin/2nd-init \
    device/lge/l1m/prebuilt/xbin/cm10.sh:/system/xbin/cm10.sh \
    device/lge/l1m/prebuilt/xbin/cm10.tar:/system/xbin/cm10.tar \
    device/lge/l1m/prebuilt/xbin/mksh2:/system/xbin/mksh2 \
    device/lge/l1m/prebuilt/xbin/recovery.sh:/system/xbin/recovery.sh \
    device/lge/l1m/prebuilt/xbin/recovery.tar:/system/xbin/recovery.tar \
    device/lge/l1m/prebuilt/xbin/taskset:/system/xbin/taskset

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/l1m/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# vold config
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/thermald.conf:/system/etc/thermald.conf

# apn / spn config
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/apns-conf.xml:/system/etc/apns-conf.xml

# Sound configs
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/etc/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/lge/l1m/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/lge/l1m/prebuilt/usr/keylayout/l1m-keypad.kl:system/usr/keylayout/l1m-keypad.kl \
    device/lge/l1m/prebuilt/usr/keylayout/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    device/lge/l1m/prebuilt/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/lge/l1m/prebuilt/usr/keylayout/osp3-input.kl:system/usr/keylayout/osp3-input.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/usr/idc/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    device/lge/l1m/prebuilt/usr/idc/osp3-input.idc:system/usr/idc/osp3-input.idc \
    device/lge/l1m/prebuilt/usr/idc/synaptics_ts.idc:system/usr/idc/synaptics_ts.idc

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/lib/libacdbloader.so:obj/lib/libacdbloader.so \
    device/lge/l1m/prebuilt/lib/libv8.so:obj/lib/libv8.so

# Prebuilt libraries that are needed
PRODUCT_COPY_FILES += \
    device/lge/l1m/prebuilt/bin/atd:system/bin/atd \
    device/lge/l1m/prebuilt/bin/ATFWD-daemon:system/bin/ATFWD-daemon \
    device/lge/l1m/prebuilt/bin/bridgemgrd:system/bin/bridgemgrd \
    device/lge/l1m/prebuilt/bin/btnvtool:system/bin/btnvtool \
    device/lge/l1m/prebuilt/bin/cnd:system/bin/cnd \
    device/lge/l1m/prebuilt/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/lge/l1m/prebuilt/bin/ftm_ptt:system/bin/ftm_ptt \
    device/lge/l1m/prebuilt/bin/gsiff_daemon:system/bin/gsiff_daemon \
    device/lge/l1m/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/lge/l1m/prebuilt/bin/hdmid:system/bin/hdmid \
    device/lge/l1m/prebuilt/bin/hostapd:system/bin/hostapd \
    device/lge/l1m/prebuilt/bin/mm-pp-daemon:system/bin/mm-pp-daemon \
    device/lge/l1m/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/lge/l1m/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/lge/l1m/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/lge/l1m/prebuilt/bin/nl_listener:system/bin/nl_listener \
    device/lge/l1m/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/lge/l1m/prebuilt/bin/qmiproxy:system/bin/qmiproxy \
    device/lge/l1m/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/lge/l1m/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/lge/l1m/prebuilt/bin/quipc_igsn:system/bin/quipc_igsn \
    device/lge/l1m/prebuilt/bin/quipc_main:system/bin/quipc_main \
    device/lge/l1m/prebuilt/bin/radish:system/bin/radish \
    device/lge/l1m/prebuilt/bin/rild:system/bin/rild \
    device/lge/l1m/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/lge/l1m/prebuilt/bin/sensors.qcom:system/bin/sensors.qcom \
    device/lge/l1m/prebuilt/bin/thermald:system/bin/thermald \
    device/lge/l1m/prebuilt/bin/time_daemon:system/bin/time_daemon \
    device/lge/l1m/prebuilt/bin/usbhub:system/bin/usbhub \
    device/lge/l1m/prebuilt/bin/usbhub_init:system/bin/usbhub_init \
    device/lge/l1m/prebuilt/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
    device/lge/l1m/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/lge/l1m/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/lge/l1m/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/lge/l1m/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/lge/l1m/prebuilt/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/lge/l1m/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/lge/l1m/prebuilt/lib/hw/camera.msm8960.so:system/lib/hw/camera.msm8960.so \
    device/lge/l1m/prebuilt/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
    device/lge/l1m/prebuilt/lib/hw/lights.msm8960.so:system/lib/hw/lights.msm8960.so \
    device/lge/l1m/prebuilt/lib/hw/nfc.msm8960.so:system/lib/hw/nfc.msm8960.so \
    device/lge/l1m/prebuilt/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so \
    device/lge/l1m/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/lge/l1m/prebuilt/lib/libami306.so:system/lib/libami306.so \
    device/lge/l1m/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
    device/lge/l1m/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    device/lge/l1m/prebuilt/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/lge/l1m/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/lge/l1m/prebuilt/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/lge/l1m/prebuilt/lib/libchromatix_imx119_default_video.so:system/lib/libchromatix_imx119_default_video.so \
    device/lge/l1m/prebuilt/lib/libchromatix_imx119_preview.so:system/lib/libchromatix_imx119_preview.so \
    device/lge/l1m/prebuilt/lib/libchromatix_imx119_vt.so:system/lib/libchromatix_imx119_vt.so \
    device/lge/l1m/prebuilt/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    device/lge/l1m/prebuilt/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
    device/lge/l1m/prebuilt/lib/libchromatix_s5k4e1_zsl.so:system/lib/libchromatix_s5k4e1_zsl.so \
    device/lge/l1m/prebuilt/lib/libCommandSvc.so:system/lib/libCommandSvc.so \
    device/lge/l1m/prebuilt/lib/libconfigdb.so:system/lib/libconfigdb.so \
    device/lge/l1m/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/lge/l1m/prebuilt/lib/libDivxDrm.so:system/lib/libDivxDrm.so \
    device/lge/l1m/prebuilt/lib/libdl.so:system/lib/libdl.so \
    device/lge/l1m/prebuilt/lib/libdrmdiag.so:system/lib/libdrmdiag.so \
    device/lge/l1m/prebuilt/lib/libdrmfs.so:system/lib/libdrmfs.so \
    device/lge/l1m/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/lge/l1m/prebuilt/lib/libdsprofile.so:system/lib/libdsprofile.so \
    device/lge/l1m/prebuilt/lib/libdss.so:system/lib/libdss.so \
    device/lge/l1m/prebuilt/lib/libdsucsd.so:system/lib/libdsucsd.so \
    device/lge/l1m/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    device/lge/l1m/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/lge/l1m/prebuilt/lib/libgps.so:system/lib/libgps.so \
    device/lge/l1m/prebuilt/lib/libgps.utils.so:system/lib/libgps.utils.so \
    device/lge/l1m/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/lge/l1m/prebuilt/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    device/lge/l1m/prebuilt/lib/libidl.so:system/lib/libidl.so \
    device/lge/l1m/prebuilt/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
    device/lge/l1m/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/lge/l1m/prebuilt/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/lge/l1m/prebuilt/lib/liblgftmitem.so:system/lib/liblgftmitem.so \
    device/lge/l1m/prebuilt/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
    device/lge/l1m/prebuilt/lib/libloc_adapter.so:system/lib/libloc_adapter.so \
    device/lge/l1m/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/lge/l1m/prebuilt/lib/libloc_eng.so:system/lib/libloc_eng.so \
    device/lge/l1m/prebuilt/lib/libloc_ext.so:system/lib/libloc_ext.so \
    device/lge/l1m/prebuilt/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/lge/l1m/prebuilt/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/lge/l1m/prebuilt/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
    device/lge/l1m/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/lge/l1m/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/lge/l1m/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/lge/l1m/prebuilt/lib/libmmjps.so:system/lib/libmmjps.so \
    device/lge/l1m/prebuilt/lib/libmmmpo.so:system/lib/libmmmpo.so \
    device/lge/l1m/prebuilt/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/lge/l1m/prebuilt/lib/libmmosal.so:system/lib/libmmosal.so \
    device/lge/l1m/prebuilt/lib/libmmparser.so:system/lib/libmmparser.so \
    device/lge/l1m/prebuilt/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/lge/l1m/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/lge/l1m/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/lge/l1m/prebuilt/lib/libOlaFaceDetector.so:system/lib/libOlaFaceDetector.so \
    device/lge/l1m/prebuilt/lib/libOlaLGECameraJNI.so:system/lib/libOlaLGECameraJNI.so \
    device/lge/l1m/prebuilt/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/lge/l1m/prebuilt/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
    device/lge/l1m/prebuilt/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/lge/l1m/prebuilt/lib/libOpenCL.so:system/lib/libOpenCL.so \
    device/lge/l1m/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/lge/l1m/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/lge/l1m/prebuilt/lib/libqdi.so:system/lib/libqdi.so \
    device/lge/l1m/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
    device/lge/l1m/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/lge/l1m/prebuilt/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    device/lge/l1m/prebuilt/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    device/lge/l1m/prebuilt/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    device/lge/l1m/prebuilt/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    device/lge/l1m/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/lge/l1m/prebuilt/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    device/lge/l1m/prebuilt/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/lge/l1m/prebuilt/lib/libril.so:system/lib/libril.so \
    device/lge/l1m/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/lge/l1m/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/lge/l1m/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/lge/l1m/prebuilt/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so \
    device/lge/l1m/prebuilt/lib/libsensor1.so:system/lib/libsensor1.so \
    device/lge/l1m/prebuilt/lib/libsensor_reg.so:system/lib/libsensor_reg.so \
    device/lge/l1m/prebuilt/lib/libsensor_test.so:system/lib/libsensor_test.so \
    device/lge/l1m/prebuilt/lib/libsensor_user_cal.so:system/lib/libsensor_user_cal.so \

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lge/l1m/l1m-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
