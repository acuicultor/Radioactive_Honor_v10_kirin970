
TOP := drivers/../..

PLATFORM_DIR := platform/kirin

EXTRA_CFLAGS += -DHIVDEC_SMMU_SUPPORT

EXTRA_CFLAGS += -Idrivers/vcodec/hi_vcodec/vdec/include
EXTRA_CFLAGS += -Idrivers/vcodec/hi_vcodec/vdec/omxvdec
EXTRA_CFLAGS += -Idrivers/vcodec/hi_vcodec/vdec/omxvdec/$(PLATFORM_DIR)
EXTRA_CFLAGS += -Idrivers/vcodec/hi_vcodec/vdec/vfmw/vfmw_v4.0
EXTRA_CFLAGS += -Idrivers/vcodec/hi_vcodec/vdec/vfmw/vfmw_v4.0/scene/kirin
EXTRA_CFLAGS += -fno-pic
EXTRA_CFLAGS += -DOMXVDEC_TVP_CONFLICT

ifneq ($(TARGET_BUILD_VARIANT), user)
EXTRA_CFLAGS += -DUSER_DISABLE_VDEC_PROC
endif

ifeq ($(TARGET_BOARD_PLATFORM), hi3660)
EXTRA_CFLAGS +=-DPLATFORM_HI3660
endif

#build in
obj-$(CONFIG_HI_VCODEC_VDEC_HI3660) += hi_omxvdec.o
hi_omxvdec-objs := $(PLATFORM_DIR)/platform.o $(PLATFORM_DIR)/regulator.o $(PLATFORM_DIR)/memory.o
hi_omxvdec-objs += omxvdec.o channel.o task.o message.o processor_bpp.o decoder_vfmw.o

#module
#obj-m += hi_omxvdec.o
#hi_omxvdec-y := $(PLATFORM_DIR)/platform.o $(PLATFORM_DIR)/regulator.o $(PLATFORM_DIR)/memory.o
#hi_omxvdec-y += omxvdec.o channel.o task.o message.o processor_bpp.o decoder_vfmw.o
