CROSS_COMPILE ?= arm-linux-gnueabihf-
TARGET        ?= clk

CC 				:= $(CROSS_COMPILE)gcc
LD				:= $(CROSS_COMPILE)ld
OBJCOPY 		:= $(CROSS_COMPILE)objcopy
OBJDUMP 		:= $(CROSS_COMPILE)objdump

all: $(TARGET).bin

C_INCLUDES := \
-Isrc/bsp/clk \
-Isrc/bsp/led \
-Isrc/bsp/delay \
-Isrc/bsp/buzzer \
-Isrc/bsp/key \
-Isrc/bsp/gpio \
-Isrc/bsp/nxp-migrated
				   			   
bsp_clk.o:
	$(CC) -c src/bsp/clk/bsp_clk.c $(C_INCLUDES) -o build/bsp_clk.o

bsp_led.o:
	$(CC) -c src/bsp/led/bsp_led.c $(C_INCLUDES) -o build/bsp_led.o

bsp_delay.o:
	$(CC) -c src/bsp/delay/bsp_delay.c $(C_INCLUDES) -o build/bsp_delay.o

bsp_beep.o:
	$(CC) -c src/bsp/buzzer/bsp_beep.c $(C_INCLUDES) -o build/bsp_beep.o

bsp_gpio.o:
	$(CC) -c src/bsp/gpio/bsp_gpio.c $(C_INCLUDES) -o build/bsp_gpio.o

bsp_key.o: 
	$(CC) -c src/bsp/key/bsp_key.c $(C_INCLUDES) -o build/bsp_key.o

$(TARGET).bin:  bsp_clk.o bsp_led.o bsp_delay.o bsp_beep.o bsp_key.o bsp_gpio.o
	$(CC) -Wall -O2 -nostdlib $(C_INCLUDES) -c src/start.S -o build/start.o 	
	$(CC) -Wall -O2 -nostdlib $(C_INCLUDES) -c src/main.c -o build/main.o 
	$(LD) -Timx6ul.lds build/start.o build/main.o build/bsp_clk.o build/bsp_led.o build/bsp_delay.o build/bsp_beep.o build/bsp_key.o build/bsp_gpio.o -o build/$(TARGET).elf
	$(OBJCOPY) -O binary -S build/$(TARGET).elf build/$(TARGET).bin
	$(OBJDUMP) -D -m arm build/$(TARGET).elf > build/$(TARGET).disassambled.S

.PHONY: clean
clean:
	rm -rf $(TARGET).elf $(TARGET).disassembled.S $(TARGET).bin ./build/*.o


