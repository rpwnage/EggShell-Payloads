include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = eggsampleapp
ARCHS = arm64 arm64e

eggsampleapp_FILES = src/main.m src/EGGAppDelegate.m src/EGGRootViewController.m
eggsampleapp_FRAMEWORKS = UIKit CoreGraphics
eggsampleapp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"eggsampleapp\"" || true
