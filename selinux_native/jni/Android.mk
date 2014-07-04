LOCAL_PATH := $(call my-dir)
CPP_CORE := $(abspath $(call my-dir)/../../CPPCore)

include $(CLEAR_VARS)

LOCAL_MODULE    := selinux_exploit
LOCAL_SRC_FILES := put_user_exploit/put_user_exploit.c  put_user_exploit/lib_put_user.c utils/kallsyms_in_memory.c utils/kallsyms.c utils/device_database.c utils/knox_manager.c utils/deobfuscate.c utils/log.c utils/utils.c utils/old_shell.c utils/boot_manager.c
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -g
LOCAL_C_INCLUDES += headers
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE    := selinux_suidext
LOCAL_SRC_FILES := suidext/su.c suidext/daemon.c suidext/suidext.c utils/deobfuscate.c utils/knox_manager.c utils/pts.c utils/utils.c utils/log.c utils/old_shell.c utils/boot_manager.c utils/ps.c
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -g
LOCAL_C_INCLUDES += headers
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE    := selinux_check
LOCAL_SRC_FILES := put_user_exploit/check_put_user_exploit.c put_user_exploit/lib_put_user.c utils/log.c utils/deobfuscate.c
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -g
LOCAL_C_INCLUDES += headers
include $(BUILD_EXECUTABLE)

