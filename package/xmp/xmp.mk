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

$(eval $(autotools-package))

