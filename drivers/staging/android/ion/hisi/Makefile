ccflags-y += -I$(srctree)/drivers/staging/android/ion
ccflags-y += -I$(srctree)/drivers/hisi/ap/platform/$(TARGET_PRODUCT)

obj-$(CONFIG_HISI_SMARTPOOL_OPT)+= hisi_ion_smart_pool.o
obj-y += hisi_cpudraw_alloc.o
obj-$(CONFIG_ION_HISI)+= of_hisi_ion.o
obj-$(CONFIG_HISI_SPECIAL_SCENE_POOL)+= hisi_ion_scene_pool.o

ifneq ($(TARGET_BUILD_VARIANT),user)
EXTRA_CFLAGS += -DHISI_SMARTPOOL_DEBUG
endif
