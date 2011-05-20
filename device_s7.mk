DEVICE_PACKAGE_OVERLAYS += device/huawei/s7/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := device/huawei/s7/prebuilt/kernel
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml 
#frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml
#frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml 

# Board-specific init
PRODUCT_COPY_FILES += \
    device/huawei/s7/include/init.qsd8k_s7.rc:root/init.qsd8k_s7.rc 

# Device specific
PRODUCT_COPY_FILES += \
    device/huawei/s7/include/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/s7/include/vold.fstab:system/etc/vold.fstab \
    device/huawei/s7/include/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/s7/include/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

#PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=device/huawei/s7/prelink-linux-arm-s7.map

## RIL related stuff
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/libril.so:system/lib/libril.so \
    vendor/huawei/s7/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/huawei/s7/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/s7/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/s7/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/s7/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/s7/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/huawei/s7/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/huawei/s7/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/huawei/s7/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/huawei/s7/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/s7/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/s7/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/s7/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/huawei/s7/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/huawei/s7/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/s7/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/s7/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/huawei/s7/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/huawei/s7/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/s7/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so

## OMX proprietaries
PRODUCT_COPY_FILES += \
    vendor/huawei/s7/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/huawei/s7/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    vendor/huawei/s7/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/huawei/s7/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/huawei/s7/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/s7/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/huawei/s7/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/huawei/s7/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/huawei/s7/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so 

#GPS
#PRODUCT_COPY_FILES += \
#    device/huawei/s7/prebuilt/libloc_api.so:system/lib/libloc_api.so \
#    device/huawei/s7/prebuilt/librpc.so:system/lib/librpc.so

## Camera proprietaries
PRODUCT_COPY_FILES += \
    vendor/huawei/s7/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/s7/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/huawei/s7/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/s7/proprietary/lib/libmmipl.so:system/lib/libmmipl.so

PRODUCT_COPY_FILES += \
    vendor/huawei/s7/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/huawei/s7/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    vendor/huawei/s7/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/huawei/s7/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/huawei/s7/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/huawei/s7/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/huawei/s7/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/huawei/s7/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/huawei/s7/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/huawei/s7/proprietary/lib/hw/copybit.qsd8k.so:system/lib/hw/copybit.qsd8k.so \
    vendor/huawei/s7/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    vendor/huawei/s7/proprietary/lib/hw/lights.qsd8k.so:system/lib/hw/lights.qsd8k.so \
    vendor/huawei/s7/proprietary/lib/hw/gralloc.qsd8k.so:system/lib/hw/gralloc.qsd8k.so \
    vendor/huawei/s7/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)
#$(call inherit-product-if-exists, vendor/huawei/s7/s7-vendor.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := full_s7
PRODUCT_DEVICE := s7
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on s7
