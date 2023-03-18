#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qti.early_init.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sh \
    init.qti.display_boot.sh \
    init.qti.media.sh \
    init.qcom.early_boot.sh \
    init.qcom.coex.sh \
    init.qcom.sensors.sh \
    install-recovery.sh \
    init.qcom.sdio.sh \
    init.class_main.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.qcom.post_boot.sh \
    init.qti.qcv.sh \
    qca6234-service.sh \
    init.crda.sh \
    init.qcom.usb.sh \

PRODUCT_PACKAGES += \
    fstab.ramplus \
    init.qcom.rc \
    init.target.rc \
    init.samsung.rc \
    init.qcom.usb.rc \
    init.qti.ufs.rc \
    init.qcom.factory.rc \
    init.gta4lxx.rc \
    init.gta4l.rc \
    init.samsung.bsp.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ramplus:$(TARGET_COPY_OUT_RAMDISK)/fstab.ramplus

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/gta4l/gta4l-vendor.mk)
