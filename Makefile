INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ZundaHackWidgets
$(BUNDLE_NAME)_FILES = $(wildcard *.mm)
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_EXTRA_FRAMEWORKS = HSWidgets
$(BUNDLE_NAME)_INSTALL_PATH = /Library/HSWidgets
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

