$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/extras.sh:system/bin/extras.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/init.qcom.usb.rc:root/init.qcom.usb.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/configs/adreno_config.txt:system/etc/adreno_config.txt \
    $(LOCAL_PATH)/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.camera=msm7x27 \
    debug.camcorder.disablemeta=1 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=20

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    com.qc.hdmi_out=false \
    debug.sf.hw=1 \
    debug.enabletr=false \
    debug.composition.type=mdp \
    debug.gr.numframebuffers=2 \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# Audio
PRODUCT_PACKAGES += \
    audio_policy.msm7x27 \
    audio.primary.msm7x27 \
    audio.a2dp.default \
    libaudioutils

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libopencorehw \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    hwcomposer.msm7x27

# Media
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    gps.default \
    lights.msm7x27 \
    camera.msm7x27 \
    lgapversion

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# BT startup
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs

# Offmode charging
PRODUCT_PACKAGES += \
    charger \
    charger_res_images


PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

DEVICE_PACKAGE_OVERLAYS += device/lge/msm7x27-common/overlay
