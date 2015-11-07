ifeq ($(TARGET_PRODUCT),frank_shamu)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0 MDB08M 2353240 release-keys"
endif
ifeq ($(TARGET_PRODUCT),frank_hammerhead)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0 MDB08M 2353240 release-keys"
endif

ifeq ($(TARGET_PRODUCT),frank_mako)
# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/mako/mako:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="mako-user 6.0 MDB08M 2353240 release-keys"
endif

ifeq ($(TARGET_PRODUCT),frank_angler)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0 MDB08M 2353240 release-keys"
endif

ifeq ($(TARGET_PRODUCT),frank_bullhead)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0 MDB08M 2353240 release-keys"
endif