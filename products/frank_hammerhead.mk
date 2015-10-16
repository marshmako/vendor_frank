# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/frank/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := frank_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/frank/prebuilt/shamu/system/media/bootanimation.zip:system/media/bootanimation.zip
    
# Extra packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Stk \
    Busybox


