## Specify phone tech before including full_phone
$(call inherit-product, vendor/cyandream/config/cdma.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cyandream/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cyandream/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vs980/vs980.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs980
PRODUCT_NAME := cd_vs980
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-VS980
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/g2_vzw/g2:4.2.2/JDQ39B/VS98011A.1378346052:user/release-keys \
    PRIVATE_BUILD_DESC="g2_vzw-user 4.2.2 JDQ39B VS98011A.1378346052 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_PACKAGES += Torch
