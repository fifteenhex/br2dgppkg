################################################################################
#
# gadget-tool
#
################################################################################

GT_VERSION = 7f9c45d98425a27444e49606ce3cf375e6164e8e
GT_SITE = https://github.com/linux-usb-gadgets/gt.git
GT_SITE_METHOD = git
GT_LICENSE = Apache-2.0
GT_DEPENDENCIES = libusbgx
GT_SUBDIR = source

$(eval $(cmake-package))
