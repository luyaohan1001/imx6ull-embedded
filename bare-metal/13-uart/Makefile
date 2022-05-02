CROSS_COMPILE ?= arm-linux-gnueabihf-
TARGET ?= uart

CC := $(CROSS_COMPILE)gcc
LD := $(CROSS_COMPILE)ld
OBJCOPY := $(CROSS_COMPILE)objcopy
OBJDUMP := $(CROSS_COMPILE)objdump

LIBPATH := -lgcc -L /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4


INCDIRS := imx6ul \
  bsp/clk \
  bsp/led \
  bsp/delay  \
  bsp/beep \
  bsp/gpio \
  bsp/key \
  bsp/exit \
  bsp/int \
  bsp/epittimer \
  bsp/keyfilter \
  bsp/uart 

SRCDIRS  := project \
  bsp/clk \
	bsp/led \
  bsp/delay \
  bsp/beep \
	bsp/gpio \
	bsp/key \
	bsp/exit \
	bsp/int \
	bsp/epittimer \
	bsp/keyfilter \
	bsp/uart 

INCLUDE := $(patsubst %, -I %, $(INCDIRS))

SFILES := $(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.S))
CFILES := $(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.c))

# notdir takes away the directory from the files leaving on the the name.
SFILENDIR := $(notdir $(SFILES))
CFILENDIR := $(notdir $(CFILES))

# Substitute patterns, make object files from Assembly(.S) and C source (.c) files.
SOBJS := $(patsubst %, build/%, $(SFILENDIR:.S=.o))
COBJS := $(patsubst %, build/%, $(CFILENDIR:.c=.o))
OBJS := $(SOBJS) $(COBJS)

VPATH := $(SRCDIRS)

$(TARGET).bin : $(OBJS)
	$(LD) -Timx6ul.lds -o $(TARGET).elf $^ $(LIBPATH)
	$(OBJCOPY) -O binary -S $(TARGET).elf $@
	$(OBJDUMP) -D -m arm $(TARGET).elf > $(TARGET).dis

# Compile assmebly sources.
$(SOBJS) : build/%.o : %.S
	$(CC) -Wall -nostdlib -fno-builtin -c -O2  $(INCLUDE) -o $@ $<

# Compile C sources.
$(COBJS) : build/%.o : %.c
	$(CC) -Wall -nostdlib -fno-builtin -c -O2  $(INCLUDE) -o $@ $<


.PHONY: clean
clean:
	rm -rf $(TARGET).elf $(TARGET).dis $(TARGET).bin $(COBJS) $(SOBJS)

