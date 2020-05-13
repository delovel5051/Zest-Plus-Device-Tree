# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/acer/t08/device_t08.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := t08
PRODUCT_NAME := lineage_t08
PRODUCT_MODEL := t08
PRODUCT_DEVICE := t08
PRODUCT_MANUFACTURER := acer
PRODUCT_BRAND := nE0sIghT
PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU

LINEAGE_VERSION_APPEND_TIME_OF_DAY := TRUE


