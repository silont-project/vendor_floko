# Charger
ifeq ($(WITH_LINEAGE_CHARGER),true)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.lineage
endif

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/lineage/config/BoardConfigQcom.mk
endif

include vendor/lineage/config/BoardConfigKernel.mk

include vendor/lineage/config/BoardConfigSoong.mk

ifneq ($(TARGET_USES_PREBUILT_CAMERA_SERVICE), true)
PRODUCT_SOONG_NAMESPACES += \
    frameworks/av/camera/cameraserver \
    frameworks/av/services/camera/libcameraservice
endif
