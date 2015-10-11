# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/frank/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := frank_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/frank/prebuilt/shamu/system/media/bootanimation.zip:system/media/bootanimation.zip
    
# Extra packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Stk 

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0 MRA58K 2256973 release-keys"
