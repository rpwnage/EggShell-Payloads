TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = eggsampleapp

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = eggsampleapp
ARCHS            = arm64 arm64e
eggsampleapp_FILES = src/main.m src/EGGAppDelegate.m src/EGGRootViewController.m
eggsampleapp_FRAMEWORKS = UIKit CoreGraphics
eggsampleapp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

before-all::
	@if [ -a ../eggload/.theos/obj/debug/eggload.dylib ]  ;        \
	then                                                           \
		echo "> Importing the eggload template dylib...";          \
		cp ../eggload/.theos/obj/debug/eggload.dylib ./Resources ; \
	fi;                                  

before-package::
	@if [ -a ../eggload/.theos/obj/debug/eggload.dylib ];                                                                    \
	then                                                                                                                     \
		echo "> Adding load command for eggload.dylib...";                                                                   \
		optool install -c load -p "/Applications/$(APPLICATION_NAME).app/eggload.dylib" -t .theos/obj/debug/$(APPLICATION_NAME).app/$(APPLICATION_NAME) ;     \
	fi;

after-install::
	install.exec "killall -9 \"eggsampleapp\" || uicache" || true

after-clean::
	rm -rf .theos