## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := idols

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Alcatel/idols/device_idols.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := idols
PRODUCT_NAME := cm_idols
PRODUCT_BRAND := Alcatel
PRODUCT_MODEL := idols
PRODUCT_MANUFACTURER := Alcatel
