DOOM_STARTSCRIPT_VERSION = 1.0
DOOM_STARTSCRIPT_SITE = $(BR2_EXTERNAL_wsap3825_doom_PATH)/package/doom-startscript/src
DOOM_STARTSCRIPT_SITE_METHOD = local

define DOOM_STARTSCRIPT_BUILD_CMDS
    # Do Nothing
endef

define DOOM_STARTSCRIPT_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/ap-doom-setup.sh  $(TARGET_DIR)/usr/bin/ap-doom-setup
    $(INSTALL) -D -m 0755 $(@D)/ap-doom.sh  $(TARGET_DIR)/usr/bin/ap-doom
endef

$(eval $(generic-package))