$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/MBX/R268/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := R268
PRODUCT_NAME := omni_R268
PRODUCT_BRAND := MBX
PRODUCT_MODEL := R268
PRODUCT_MANUFACTURER := MBX

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
# fingerprint is usually in ro.build.description=R268-user 4.4.2 KOT49H 20160321.Coolwear_AMLBOX_V0709 test-keys
# ro.build.fingerprint=MBX/R268/R268:4.4.2/KOT49H/20160321.Coolwear_AMLBOX_V0709:user/test-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="MBX/R268/R268:4.4.2/KOT49H/20160321.Coolwear_AMLBOX_V0709:user/test-keys" \
    PRIVATE_BUILD_DESC="R268-user 4.4.2 KOT49H 20160321.Coolwear_AMLBOX_V0709 test-keys" 
