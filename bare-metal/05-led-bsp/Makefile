CROSS_COMPILE ?= arm-linux-gnueabihf-
TARGET        ?= led
BSP_DIR = ./bsp

CC 				:= $(CROSS_COMPILE)gcc
LD				:= $(CROSS_COMPILE)ld
OBJCOPY 		:= $(CROSS_COMPILE)objcopy
OBJDUMP 		:= $(CROSS_COMPILE)objdump

all: led.bin

INCDIRS := \
-I$(BSP_DIR)/clk \
-I$(BSP_DIR)/led \
-I$(BSP_DIR)/delay \
-I$(BSP_DIR)/nxp-migrated
				   			   
SRCDIRS	:= \
project \
$(BSP_DIR)/clk \
$(BSP_DIR)/led \
$(BSP_DIR)/delay 

# Special path in Makefile to search for source files.
VPATH			:= $(SRCDIRS) 

led.bin: bsp_clk.o bsp_led.o bsp_delay.o start.o main.o 
#$(LD) -Timx6ul.lds -o $(TARGET).elf /build/start.o /build/main.o
#	$(OBJCOPY) -O binary -S $(TARGET).elf 
#	$(OBJDUMP) -D -m arm $(TARGET).elf > $(TARGET).disassembled.s
	$(CC) -Wall -nostdlib -c -O2 -I bsp/nxp-migrated -I bsp/clk -I bsp/led  -I bsp/delay  -o build/start.o project/start.S
	$(CC) -Wall -nostdlib -c -O2 -I bsp/nxp-migrated -I bsp/clk -I bsp/led  -I bsp/delay -o build/main.o project/main.c
	$(LD) -Timx6ul.lds -o bin.elf build/start.o build/main.o build/bsp_clk.o build/bsp_led.o build/bsp_delay.o
	$(OBJCOPY) -O binary -S bin.elf bin.bin
	$(OBJDUMP) -D -m arm bin.elf > bin.dis


.PHONY: clean

clean:
	rm -rf $(TARGET).elf $(TARGET).disassembled.s $(TARGET).bin ./build/*.o


	
