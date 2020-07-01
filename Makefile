#!/usr/bin/xcrun make -f

PBXPROJ_VERIFY_EXECUTABLE=./.build/release/pbxproj-verify
BINARIES_FOLDER=/usr/local/bin

SWIFT_BUILD_FLAGS=--configuration release

SUDO=sudo
CP=cp

.PHONY: all install test

all: installables

installables:
	swift build $(SWIFT_BUILD_FLAGS)

install: installables
	$(SUDO) $(CP) -f "$(PBXPROJ_VERIFY_EXECUTABLE)" "$(BINARIES_FOLDER)"
