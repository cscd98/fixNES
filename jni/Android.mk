LOCAL_PATH := $(call my-dir)

CORE_DIR := $(LOCAL_PATH)/..

include $(CORE_DIR)/libretro/Makefile.common

include $(CLEAR_VARS)

LOCAL_MODULE       := retro
LOCAL_SRC_FILES    := $(SOURCES_C)
LOCAL_CFLAGS       := -O2 -D__LIBRETRO__ -DNDEBUG -Werror=implicit-function-declaration
LOCAL_C_INCLUDES   := $(CORE_DIR) $(CORE_DIR)/libretro
LOCAL_LDFLAGS      := -Wl,-version-script=$(CORE_DIR)/libretro/link.T
LOCAL_LDLIBS       := -lm

include $(BUILD_SHARED_LIBRARY)
