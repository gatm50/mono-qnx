#! -*- makefile -*-

BOOTSTRAP_PROFILE = basic

BOOTSTRAP_MCS = MONO_PATH="$(topdir)/class/lib/$(BOOTSTRAP_PROFILE)$(PLATFORM_PATH_SEPARATOR)$$MONO_PATH" $(INTERNAL_GMCS)
MCS = MONO_PATH="$(topdir)/class/lib/$(BOOTSTRAP_PROFILE)$(PLATFORM_PATH_SEPARATOR)$$MONO_PATH" $(INTERNAL_GMCS)

profile-check:
	@:

DEFAULT_REFERENCES = -r:mscorlib.dll
PROFILE_MCS_FLAGS = -d:NET_1_1 -d:NET_2_0 -d:NET_2_1 -d:MOBILE -d:MONOTOUCH -nowarn:1699 -nostdlib -lib:$(topdir)/class/lib/$(PROFILE) $(DEFAULT_REFERENCES)
FRAMEWORK_VERSION = 2.1
NO_TEST = yes

# the tuner takes care of the install
NO_INSTALL = yes
