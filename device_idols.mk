$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Alcatel/idols/idols-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Alcatel/idols/overlay

LOCAL_PATH := device/Alcatel/idols
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/Alcatel/idols/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/root/fstab.goldfish:root/fstab.goldfish \
    $(LOCAL_PATH)/root/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/root/seapp_contexts:root/seap_contexts \
    $(LOCAL_PATH)/root/sepolicy:root/sepolicy \
    $(LOCAL_PATH)/root/init:root/init \
    $(LOCAL_PATH)/root/default.prop:root/default.prop \
    $(LOCAL_PATH)/root/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/root/init.qcom.ril.sh:root/init.qcom.ril.sh \
    $(LOCAL_PATH)/root/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/root/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/root/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/root/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/root/init.target.usb.rc:root/init.target.usb.rc \
    $(LOCAL_PATH)/root/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/root/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/root/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_idols
PRODUCT_DEVICE := idols
