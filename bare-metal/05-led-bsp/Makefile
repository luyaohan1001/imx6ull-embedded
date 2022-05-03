CROSS_COMPILE ?= arm-linux-gnueabihf-
TARGET        ?= led

CC 				:= $(CROSS_COMPILE)gcc
LD				:= $(CROSS_COMPILE)ld
OBJCOPY 		:= $(CROSS_COMPILE)objcopy
OBJDUMP 		:= $(CROSS_COMPILE)objdump

all: led.bin

INCDIRS := \
-Isrc/bsp/clk \
-Isrc/bsp/led \
-Isrc/bsp/delay \
-Isrc/bsp/nxp-migrated
				   			   
bsp_clk.o:
	$(CC) -c src/bsp/clk/bsp_clk.c $(INCDIRS) -o build/bsp_clk.o

bsp_led.o:
	$(CC) -c src/bsp/led/bsp_led.c $(INCDIRS) -o build/bsp_led.o

bsp_delay.o:
	$(CC) -c src/bsp/delay/bsp_delay.c $(INCDIRS) -o build/bsp_delay.o

led.bin:  bsp_clk.o bsp_led.o bsp_delay.o
	$(CC) -Wall -O2 -nostdlib -I src/bsp/nxp-migrated -I src/bsp/clk -I src/bsp/led -I src/bsp/delay -c src/start.S -o build/start.o 
	$(CC) -Wall -O2 -nostdlib -I src/bsp/nxp-migrated -I src/bsp/clk -I src/bsp/led -I src/bsp/delay -c src/main.c -o build/main.o 
	$(LD) -Timx6ul.lds build/start.o build/main.o build/bsp_clk.o build/bsp_led.o build/bsp_delay.o -o build/led.elf 
	$(OBJCOPY) -O binary -S build/led.elf build/led.bin
	$(OBJDUMP) -D -m arm build/led.elf > build/led.disassambled.S

.PHONY: clean
clean:
	rm -rf $(TARGET).elf $(TARGET).disassembled.S $(TARGET).bin ./build/*.o


	
