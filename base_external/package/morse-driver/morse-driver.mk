
##############################################################
#
# MORSE-DRIVER
#
##############################################################

MORSE_DRIVER_VERSION = 0d4e0e4fd2a06961eb65014b737679a6163ac489
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
MORSE_DRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-sarakayedwards.git
MORSE_DRIVER_SITE_METHOD = git
MORSE_DRIVER_GIT_SUBMODULES = YES

MORSE_DRIVER_MODULE_SUBDIRS = morse-driver

define MORSE_DRIVER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/morse-driver all
endef

define MORSE_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/morse-driver/test $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
