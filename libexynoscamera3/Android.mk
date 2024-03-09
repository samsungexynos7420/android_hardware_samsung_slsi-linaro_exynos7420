# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

SLSI_PATH := $(TOP)/hardware/samsung_slsi-linaro

#################
# libexynoscamera3.so

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES:= libutils libcutils libbinder liblog libcamera_client libhardware libui
LOCAL_SHARED_LIBRARIES += libexynosutils libhwjpeg libexynosv4l2 libexynosgscaler libion libcsc
LOCAL_SHARED_LIBRARIES += libexpat libc++
LOCAL_SHARED_LIBRARIES += libpower

LOCAL_CFLAGS += -DUSE_CAMERA2_API_SUPPORT

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libexynoscamera3

include $(SLSI_PATH)/exynos/BoardConfigCFlags.mk
include $(BUILD_SHARED_LIBRARY)

$(warning #####################################)
$(warning ########   libexynoscamera3  ########)
$(warning #####################################)

