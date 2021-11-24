LOCAL_PATH := $(call my-dir)

ifneq ($(filter R268,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
