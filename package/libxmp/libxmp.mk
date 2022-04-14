################################################################################
#
# libxmp
#
################################################################################

LIBXMP_VERSION = 2b8fb409322c587fa4b6c72c0589947c8ed4aed2
LIBXMP_SITE = https://github.com/cmatsuoka/libxmp.git
LIBXMP_SITE_METHOD = git
LIBXMP_LICENSE = GPL-2.0
LIBXMP_LICENSE_FILES = COPYING
LIBXMP_AUTORECONF = YES
LIBXMP_INSTALL_STAGING = YES

$(eval $(autotools-package))

