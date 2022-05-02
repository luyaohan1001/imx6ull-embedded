CROSS_COMPILE 	?= arm-linux-gnueabihf-
TARGET		  	?= led
SDK_DIR = ../sdk-linux/migrated


CC 				:= $(CROSS_COMPILE)gcc
LD				:= $(CROSS_COMPILE)ld
OBJCOPY 		:= $(CROSS_COMPILE)objcopy
OBJDUMP 		:= $(CROSS_COMPILE)objdump

INCDIRS 		:= $(SDK_DIR) \
				   libs/clk \
				   libs/led \
				   libs/delay 
				   			   
SRCDIRS			:= project \
				   libs/clk \
				   libs/led \
				   libs/delay 
				   
				   
# INCLUDE			:= $(patsubst %, -I %, $(INCDIRS))
INCLUDE := -I $(SDK_DIR)  -I libs/clk  -I libs/led  -I libs/delay 

SFILES			:= $(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.S))
CFILES			:= $(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.c))

SFILENDIR		:= $(notdir  $(SFILES))
CFILENDIR		:= $(notdir  $(CFILES))

# Substitue Pattern, make .S to .o objects, and export those objects to the obj directory.
SOBJS			:= $(patsubst %, obj/%, $(SFILENDIR:.S=.o))
COBJS			:= $(patsubst %, obj/%, $(CFILENDIR:.c=.o))
OBJS			:= $(SOBJS) $(COBJS)

VPATH			:= $(SRCDIRS)

.PHONY: clean
	
$(TARGET).bin : $(OBJS)
	$(LD) -Timx6ul.lds -o $(TARGET).elf $^
	$(OBJCOPY) -O binary -S $(TARGET).elf $@
	$(OBJDUMP) -D -m arm $(TARGET).elf > $(TARGET).disassembled.s

$(SOBJS) : obj/%.o : %.S
	$(CC) -Wall -nostdlib -c -O2  $(INCLUDE) -o $@ $<

$(COBJS) : obj/%.o : %.c
	$(CC) -Wall -nostdlib -c -O2  $(INCLUDE) -o $@ $<
	
clean:
	rm -rf $(TARGET).elf $(TARGET).disassembled.s $(TARGET).bin $(COBJS) $(SOBJS)

	
