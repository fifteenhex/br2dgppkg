################################################################################
#
# mhz
#
################################################################################

MHZ_VERSION = 6ec38cbb1371d20078a7a5059dd9faa5b281b2d9
MHZ_SITE = https://github.com/wtarreau/mhz.git
MHZ_SITE_METHOD = git

define MHZ_BUILD_CMDS
	$(MAKE) -C $(@D) CC=$(TARGET_CC)
endef

define MHZ_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/mhz \
		$(TARGET_DIR)/usr/bin/mhz
endef

$(eval $(generic-package))
