CROSS_COMPILE ?= arm-linux-gnueabihf-
TARGET        ?= printf

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
-Isrc/bsp/interrupt \
-Isrc/bsp/exti \
-Isrc/bsp/epittimer \
-Isrc/bsp/keyfilter \
-Isrc/bsp/uart \
-Isrc/bsp/stdio/include \
-Isrc/bsp/nxp-migrated

bsp_clk.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/clk/bsp_clk.c $(C_INCLUDES) -o build/bsp_clk.o

bsp_led.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/led/bsp_led.c $(C_INCLUDES) -o build/bsp_led.o

bsp_delay.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/delay/bsp_delay.c $(C_INCLUDES) -o build/bsp_delay.o

bsp_beep.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/buzzer/bsp_beep.c $(C_INCLUDES) -o build/bsp_beep.o

bsp_gpio.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/gpio/bsp_gpio.c $(C_INCLUDES) -o build/bsp_gpio.o

bsp_key.o: 
	$(CC) -c -nostdlib -fno-builtin  src/bsp/key/bsp_key.c $(C_INCLUDES) -o build/bsp_key.o

bsp_int.o: 
	$(CC) -c -nostdlib -fno-builtin  src/bsp/interrupt/bsp_int.c $(C_INCLUDES) -o build/bsp_int.o

bsp_exti.o: 
	$(CC) -c -nostdlib -fno-builtin  src/bsp/exti/bsp_exit.c $(C_INCLUDES) -o build/bsp_exti.o

bsp_epittimer.o: 
	$(CC) -c -nostdlib -fno-builtin  src/bsp/epittimer/bsp_epittimer.c $(C_INCLUDES) -o build/bsp_epittimer.o

bsp_keydebounce.o: 
	$(CC) -c -nostdlib -fno-builtin  src/bsp/keyfilter/bsp_keyfilter.c $(C_INCLUDES) -o build/bsp_keydebounce.o

bsp_uart.o: 
	$(CC) -c -nostdlib -fno-builtin  src/bsp/uart/bsp_uart.c $(C_INCLUDES) -o build/bsp_uart.o

ctype.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/stdio/lib/ctype.c $(C_INCLUDES) -o build/ctype.o

div64.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/stdio/lib/div64.c $(C_INCLUDES) -o build/div64.o

lib1funcs.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/stdio/lib/lib1funcs.S $(C_INCLUDES) -o build/lib1funcs.o

muldi3.o:
	$(CC) -c -nostdlib -fno-builtin -Wall -Wa,-mimplicit-it=thumb src/bsp/stdio/lib/muldi3.c $(C_INCLUDES) -o build/muldi3.o

printf.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/stdio/lib/printf.c $(C_INCLUDES) -o build/printf.o

string.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/stdio/lib/string.c $(C_INCLUDES) -o build/string.o

vsprintf.o:
	$(CC) -c -nostdlib -fno-builtin  src/bsp/stdio/lib/vsprintf.c $(C_INCLUDES) -o build/vsprintf.o



$(TARGET).bin:  bsp_clk.o bsp_led.o bsp_delay.o bsp_beep.o bsp_key.o bsp_gpio.o bsp_int.o bsp_exti.o bsp_epittimer.o bsp_keydebounce.o bsp_uart.o ctype.o  div64.o  lib1funcs.o  muldi3.o  printf.o  string.o  vsprintf.o
	$(CC) -Wall -O2 -nostdlib -fno-builtin  $(C_INCLUDES) -c src/start.S -o build/start.o 	
	$(CC) -Wall -O2 -nostdlib -fno-builtin  $(C_INCLUDES) -c src/main.c -o build/main.o 
	$(LD) -Timx6ul.lds build/start.o build/main.o build/bsp_clk.o build/bsp_led.o build/bsp_delay.o build/bsp_beep.o build/bsp_key.o build/bsp_gpio.o build/bsp_int.o build/bsp_exti.o build/bsp_epittimer.o build/bsp_keydebounce.o build/bsp_uart.o build/ctype.o build/div64.o build/lib1funcs.o build/muldi3.o build/printf.o build/string.o build/vsprintf.o -o build/$(TARGET).elf -lgcc -L /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4
	$(OBJCOPY) -O binary -S build/$(TARGET).elf build/$(TARGET).bin
	$(OBJDUMP) -D -m arm build/$(TARGET).elf > build/$(TARGET).disassambled.S

.PHONY: clean
clean:
	rm -rf $(TARGET).elf $(TARGET).disassembled.S $(TARGET).bin ./build/*.o






