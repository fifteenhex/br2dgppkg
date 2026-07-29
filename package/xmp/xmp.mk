################################################################################
#
# xmp
#
################################################################################

XMP_VERSION = 7dc7d5a84a3544539fdcb66606e4554e416cee87
XMP_SITE = https://github.com/cmatsuoka/xmp-cli.git
XMP_SITE_METHOD = git
XMP_LICENSE = GPL-2.0
XMP_LICENSE_FILES = COPYING
XMP_AUTORECONF = YES
XMP_DEPENDENCIES = host-pkgconf libxmp
XMP_CONF_OPTS = --disable-oss

# xmp-cli's configure link test for libxmp calls xmp_set_player() without
# including its header. Modern GCC treats the resulting implicit declaration as
# an error, so the test (and the build) fails; relax that to a warning.
XMP_CONF_ENV = CFLAGS="$(TARGET_CFLAGS) -Wno-implicit-function-declaration"

ifeq ($(BR2_PACKAGE_ALSA_LIB),y)
XMP_DEPENDENCIES += alsa-lib
XMP_CONF_OPTS += --enable-alsa
endif


$(eval $(autotools-package))
