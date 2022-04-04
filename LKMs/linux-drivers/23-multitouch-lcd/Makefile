# Kernel Source Directory
KERNELDIR := /home/luyaohan1001/Projects/linux/IMX6ULL/linux-os-migration/kernel-migration/migrated/linux-imx-rel_imx_4.1.15_2.1.0_ga_alientek

CURRENT_PATH := $(shell pwd)

obj-m := ft5x06.o gt9147.o

build: kernel_modules

kernel_modules:
	$(MAKE) -C $(KERNELDIR) M=$(CURRENT_PATH) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(CURRENT_PATH) clean
