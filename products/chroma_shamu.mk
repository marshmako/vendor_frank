# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/chroma/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := chroma_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1/LMY47E/1748839:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47E 1748839 release-keys"

# Inherit media effect blobs
-include vendor/chroma/products/common_media_effects.mk

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/chroma/prebuilt/shamu/system/media/bootanimation.zip:system/media/bootanimation.zip
