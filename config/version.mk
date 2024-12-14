PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

# Increase Wings Version with each major release.
WINGS_VERSION := 1.0

# Internal version
LINEAGE_VERSION := ProjectWings-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)-v$(WINGS_VERSION)

# Display version
LINEAGE_DISPLAY_VERSION := ProjectWings-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(WINGS_VERSION)

ifeq ($(WITH_GAPPS), true)
    $(call inherit-product, vendor/gapps/common/common-vendor.mk)
    LINEAGE_BUILD_ZIP_TYPE := GAPPS
endif
