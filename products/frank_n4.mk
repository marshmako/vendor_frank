# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/products/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n4
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/frank/prebuilt/shamu/system/media/bootanimation.zip:system/media/bootanimation.zip
    
# Extra packages
PRODUCT_PACKAGES += \
    Launcher2 \
    Stk \
    Busybox

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 6.0 MRA58K 2256973 release-keys"
