# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/frank/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := shamu_bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/frank/prebuilt/shamu/system/media/bootanimation.zip:system/media/bootanimation.zip

# Extra packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Stk \
    Busybox