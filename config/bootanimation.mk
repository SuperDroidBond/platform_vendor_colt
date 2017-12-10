ifneq ($(filter aosip_tomato,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/colt/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif
