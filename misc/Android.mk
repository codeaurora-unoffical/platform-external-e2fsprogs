LOCAL_PATH := $(call my-dir)

#########################################################################
# Build mke2fs and mke2fs_static
include $(CLEAR_VARS)

mke2fs_common_SRC_FILES := \
	mke2fs.c \
	util.c \
	default_profile.c

mke2fs_common_C_INCLUDES := \
	external/e2fsprogs/lib \
	external/e2fsprogs/e2fsck

mke2fs_common_CFLAGS := -O2 -g -W -Wall \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRCASECMP \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_GETOPT_H

mke2fs_common_CFLAGS += -DNO_CHECK_BB

mke2fs_common_LIBRARIES := \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	libc

# Build mke2fs
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(mke2fs_common_SRC_FILES)

LOCAL_C_INCLUDES := $(mke2fs_common_C_INCLUDES)

LOCAL_CFLAGS := $(mke2fs_common_CFLAGS)

LOCAL_MODULE := mke2fs
LOCAL_MODULE_TAGS := eng

LOCAL_SYSTEM_SHARED_LIBRARIES := $(mke2fs_common_LIBRARIES)

include $(BUILD_EXECUTABLE)

# Build mke2fs_static
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(mke2fs_common_SRC_FILES)

LOCAL_C_INCLUDES := $(mke2fs_common_C_INCLUDES)

LOCAL_CFLAGS := $(mke2fs_common_CFLAGS)

LOCAL_MODULE := mke2fs_static

# Setting tag to none to avoid copying it to /system/bin
LOCAL_MODULE_TAGS := none
LOCAL_FORCE_STATIC_EXECUTABLE := true

LOCAL_STATIC_LIBRARIES := $(mke2fs_common_LIBRARIES)

include $(BUILD_EXECUTABLE)


###########################################################################
# Build tune2fs and tune2fs_static
#
include $(CLEAR_VARS)

tune2fs_common_SRC_FILES := \
	tune2fs.c \
	util.c

tune2fs_common_C_INCLUDES := \
	external/e2fsprogs/lib \
	external/e2fsprogs/e2fsck

tune2fs_common_CFLAGS := -O2 -g -W -Wall \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRCASECMP \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_GETOPT_H

tune2fs_common_CFLAGS += -DNO_CHECK_BB

tune2fs_common_LIBRARIES := \
	libext2fs \
	libext2_com_err \
	libc

# Build tune2fs
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(tune2fs_common_SRC_FILES)

LOCAL_C_INCLUDES := $(tune2fs_common_C_INCLUDES)

LOCAL_CFLAGS := $(tune2fs_common_CFLAGS)

LOCAL_MODULE := tune2fs
LOCAL_MODULE_TAGS := eng

LOCAL_SYSTEM_SHARED_LIBRARIES := $(tune2fs_common_LIBRARIES)

include $(BUILD_EXECUTABLE)

# Build tune2fs_static
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(tune2fs_common_SRC_FILES)

LOCAL_C_INCLUDES := $(tune2fs_common_C_INCLUDES)

LOCAL_CFLAGS := $(tune2fs_common_CFLAGS)

LOCAL_MODULE := tune2fs_static

# Setting tag to none to avoid copying it to /system/bin
LOCAL_MODULE_TAGS := none
LOCAL_FORCE_STATIC_EXECUTABLE := true

LOCAL_STATIC_LIBRARIES = \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_com_err \
	libext2_e2p \
	libc

LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT_SBIN)
include $(BUILD_EXECUTABLE)

#########################################################################
# Build badblocks
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	badblocks.c

LOCAL_C_INCLUDES := \
	external/e2fsprogs/lib

LOCAL_CFLAGS := -O2 -g -W -Wall \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRCASECMP \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_GETOPT_H

LOCAL_MODULE := badblocks
LOCAL_MODULE_TAGS := systembuilder

LOCAL_SYSTEM_SHARED_LIBRARIES := \
	libext2fs \
	libext2_com_err \
	libc

include $(BUILD_EXECUTABLE)
