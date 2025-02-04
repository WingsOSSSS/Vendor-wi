PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

# Increase Wings Version with each major release.
WINGS_VERSION := 1.0

# Internal version
LINEAGE_VERSION := ProjectWings-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CUSTOM_BUILD_DATE)-$(LINEAGE_BUILD)-v$(WINGS_VERSION)

# Display version
LINEAGE_DISPLAY_VERSION := ProjectWings-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(WINGS_VERSION)

ifeq ($(WITH_GAPPS), true)
    $(call inherit-product, vendor/gapps/common/common-vendor.mk)
    LINEAGE_BUILD_ZIP_TYPE := GAPPS
endif
