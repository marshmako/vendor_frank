# Generic product
PRODUCT_NAME := frank
PRODUCT_BRAND := frank
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.build.selinux=1 \
    ro.adb.secure=0 \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.ril.enable.amr.wideband=1 \
    ro.mod.display.version=Mutant-2.0 \
    drm.service.enabled=true \

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/frank/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# media effects
PRODUCT_COPY_FILES +=  \
    vendor/frank/prebuilt/common/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/frank/prebuilt/common/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd


# Extra packages
PRODUCT_PACKAGES += \
    Launcher2 \
    Launcher3 \
    Stk 

# APN list
PRODUCT_COPY_FILES += \
    vendor/frank/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SuperSU
#PRODUCT_COPY_FILES += \
#    vendor/frank/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
#    vendor/frank/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
 
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/frank/prebuilt/common/addon.d/50-frank.sh:system/addon.d/50-frank.sh \
    vendor/frank/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/frank/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/frank/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/frank/prebuilt/common/etc/backup.conf:system/etc/backup.conf

-include vendor/frank/products/common_fingerprints.mk
