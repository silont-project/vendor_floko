# Inherit mini common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mobile.mk)

PRODUCT_SIZE := mini

TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK := true
