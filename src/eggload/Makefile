export TARGET = iphone:clang:13.0
export TARGET_IPHONEOS_DEPLOYMENT_VERSION_arm64  = 13.0
export TARGET_IPHONEOS_DEPLOYMENT_VERSION_arm64e = 13.0
include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = eggload
ARCHS        = arm64 arm64e 
SDKVERSION 			= 13.0
DEBUG = 1

eggload_FILES  = src/eggload.m
eggload_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
eggload_FRAMEWORKS = Foundation UIKit
eggload_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/library.mk

after-clean::
	@rm -rf .theos