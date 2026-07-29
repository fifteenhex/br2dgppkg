################################################################################
#
# xmp
#
################################################################################

XMP_VERSION = 4.3.0
XMP_SITE = $(call github,cmatsuoka,xmp-cli,xmp-$(XMP_VERSION))
XMP_LICENSE = GPL-2.0
XMP_LICENSE_FILES = COPYING
XMP_AUTORECONF = YES
XMP_DEPENDENCIES = host-pkgconf libxmp
XMP_CONF_OPTS = --disable-oss

ifeq ($(BR2_PACKAGE_ALSA_LIB),y)
XMP_DEPENDENCIES += alsa-lib
XMP_CONF_OPTS += --enable-alsa
endif


$(eval $(autotools-package))
