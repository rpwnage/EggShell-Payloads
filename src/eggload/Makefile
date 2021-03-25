include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = eggload
ARCHS        = arm64 arm64e 

eggload_FILES  = src/eggload.m
eggload_CFLAGS = -fobjc-arc
eggload_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/library.mk