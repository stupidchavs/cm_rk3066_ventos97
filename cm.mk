# Inherit device configuration for rockchip.
$(call inherit-product, device/rockchip/ventos97/full_rk3066.mk)


# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

$(call inherit-product, device/rockchip/ventos97/rk3066-blobs.mk)

# Setup device specific product configuration.
#
PRODUCT_NAME := cm_ventos97
PRODUCT_BRAND := rockhip
PRODUCT_DEVICE := ventos97
PRODUCT_MODEL := SurfTab Ventos 9.7
PRODUCT_MANUFACTURER := TrekStor

