#!/bin/sh

# Extract prebuilt libraries that are needed for the s7

mkdir -p ../../../vendor/huawei/s7/proprietary

DIRS="
bin
etc/firmware
lib/egl
lib/hw
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/huawei/s7/proprietary/$DIR
done

FILES="
bin/akmd2
bin/hci_qcomm_init
bin/qmuxd
bin/rild

etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw

lib/egl/egl.cfg
lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so

lib/hw/copybit.qsd8k.so
lib/hw/gralloc.default.so
lib/hw/gralloc.qsd8k.so
lib/hw/lights.qsd8k.so
lib/hw/sensors.default.so

lib/liba2dp.so

lib/libauth.so
lib/libcm.so
lib/libdiag.so
lib/libdll.so
lib/libdsm.so
lib/libdss.so
lib/libgsdi_exp.so
lib/libgsl.so
lib/libgstk_exp.so
lib/libhwrpc.so
lib/libmmgsdilib.so
lib/libnv.so
lib/liboem_rapi.so
lib/liboncrpc.so
lib/libpbmlib.so
lib/libqmi.so
lib/libqueue.so
lib/libril-qc-1.so
lib/libril-qcril-hook-oem.so
lib/libril.so
lib/libwms.so
lib/libwmsts.so

lib/libmmipl.so
lib/libmmjpeg.so
lib/liboemcamera.so

lib/libOmxAacDec.so
lib/libOmxAacEnc.so
lib/libOmxAmrEnc.so
lib/libOmxEvrcDec.so
lib/libOmxEvrcEnc.so
lib/libOmxMp3Dec.so
lib/libOmxQcelp13Enc.so
lib/libOmxQcelp13Dec.so
lib/libOmxVidEnc.so
"

for FILE in $FILES; do
	adb pull system/$FILE ../../../vendor/huawei/s7/proprietary/$FILE
done

