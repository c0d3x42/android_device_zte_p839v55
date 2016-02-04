# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/p839v55/full_p839v55.mk)

PRODUCT_RELEASE_NAME := Smart Ultra 6
PRODUCT_NAME := cm_p839v55

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=P839V55 PRODUCT_NAME=P839V55

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Vodafone/P839V55/msm8916_32:5.1.1/LMY47V/20151116.124145.5882:user/release-keys \
    PRIVATE_BUILD_DESC="P839V55-user 5.1.1 LMY47V 20151116.124145 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-vodafone
