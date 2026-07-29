################################################################################
#
# libxmp
#
################################################################################

LIBXMP_VERSION = 4.7.2
LIBXMP_SITE = https://github.com/libxmp/libxmp/releases/download/libxmp-$(LIBXMP_VERSION)
LIBXMP_SOURCE = libxmp-$(LIBXMP_VERSION).tar.gz
LIBXMP_LICENSE = MIT
LIBXMP_LICENSE_FILES = docs/COPYING
LIBXMP_INSTALL_STAGING = YES

$(eval $(autotools-package))
