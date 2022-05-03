
build/buzzer.elf:     file format elf32-littlearm


Disassembly of section .text:

87800000 <_start>:
87800000:	e10f0000 	mrs	r0, CPSR
87800004:	e3c0001f 	bic	r0, r0, #31
87800008:	e3800013 	orr	r0, r0, #19
8780000c:	e129f000 	msr	CPSR_fc, r0
87800010:	e51fd000 	ldr	sp, [pc, #-0]	; 87800018 <_start+0x18>
87800014:	ea00026b 	b	878009c8 <__main_from_arm>
87800018:	80200000 	eorhi	r0, r0, r0
8780001c:	00001e41 	andeq	r1, r0, r1, asr #28
87800020:	61656100 	cmnvs	r5, r0, lsl #2
87800024:	01006962 	tsteq	r0, r2, ror #18
87800028:	00000014 	andeq	r0, r0, r4, lsl r0
8780002c:	412d3705 	teqmi	sp, r5, lsl #14
87800030:	070a0600 	streq	r0, [sl, -r0, lsl #12]
87800034:	09010841 	stmdbeq	r1, {r0, r6, fp}
87800038:	00040a02 	andeq	r0, r4, r2, lsl #20

8780003c <clk_enable>:
8780003c:	b480      	push	{r7}
8780003e:	af00      	add	r7, sp, #0
87800040:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800044:	f2c0 230c 	movt	r3, #524	; 0x20c
87800048:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780004c:	669a      	str	r2, [r3, #104]	; 0x68
8780004e:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800052:	f2c0 230c 	movt	r3, #524	; 0x20c
87800056:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780005a:	66da      	str	r2, [r3, #108]	; 0x6c
8780005c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800060:	f2c0 230c 	movt	r3, #524	; 0x20c
87800064:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800068:	671a      	str	r2, [r3, #112]	; 0x70
8780006a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780006e:	f2c0 230c 	movt	r3, #524	; 0x20c
87800072:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800076:	675a      	str	r2, [r3, #116]	; 0x74
87800078:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780007c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800080:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800084:	679a      	str	r2, [r3, #120]	; 0x78
87800086:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780008a:	f2c0 230c 	movt	r3, #524	; 0x20c
8780008e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800092:	67da      	str	r2, [r3, #124]	; 0x7c
87800094:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800098:	f2c0 230c 	movt	r3, #524	; 0x20c
8780009c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878000a0:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878000a4:	46bd      	mov	sp, r7
878000a6:	f85d 7b04 	ldr.w	r7, [sp], #4
878000aa:	4770      	bx	lr

878000ac <imx6u_clkinit>:
878000ac:	b480      	push	{r7}
878000ae:	b083      	sub	sp, #12
878000b0:	af00      	add	r7, sp, #0
878000b2:	2300      	movs	r3, #0
878000b4:	607b      	str	r3, [r7, #4]
878000b6:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878000ba:	f2c0 230c 	movt	r3, #524	; 0x20c
878000be:	68db      	ldr	r3, [r3, #12]
878000c0:	089b      	lsrs	r3, r3, #2
878000c2:	f003 0301 	and.w	r3, r3, #1
878000c6:	2b00      	cmp	r3, #0
878000c8:	d117      	bne.n	878000fa <imx6u_clkinit+0x4e>
878000ca:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878000ce:	f2c0 230c 	movt	r3, #524	; 0x20c
878000d2:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878000d6:	f2c0 220c 	movt	r2, #524	; 0x20c
878000da:	68d2      	ldr	r2, [r2, #12]
878000dc:	f422 7280 	bic.w	r2, r2, #256	; 0x100
878000e0:	60da      	str	r2, [r3, #12]
878000e2:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878000e6:	f2c0 230c 	movt	r3, #524	; 0x20c
878000ea:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878000ee:	f2c0 220c 	movt	r2, #524	; 0x20c
878000f2:	68d2      	ldr	r2, [r2, #12]
878000f4:	f042 0204 	orr.w	r2, r2, #4
878000f8:	60da      	str	r2, [r3, #12]
878000fa:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878000fe:	f2c0 230c 	movt	r3, #524	; 0x20c
87800102:	f242 0242 	movw	r2, #8258	; 0x2042
87800106:	601a      	str	r2, [r3, #0]
87800108:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780010c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800110:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800114:	f2c0 220c 	movt	r2, #524	; 0x20c
87800118:	68d2      	ldr	r2, [r2, #12]
8780011a:	f022 0204 	bic.w	r2, r2, #4
8780011e:	60da      	str	r2, [r3, #12]
87800120:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800124:	f2c0 230c 	movt	r3, #524	; 0x20c
87800128:	2200      	movs	r2, #0
8780012a:	611a      	str	r2, [r3, #16]
8780012c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800130:	f2c0 230c 	movt	r3, #524	; 0x20c
87800134:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
87800138:	607b      	str	r3, [r7, #4]
8780013a:	687b      	ldr	r3, [r7, #4]
8780013c:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
87800140:	607b      	str	r3, [r7, #4]
87800142:	687b      	ldr	r3, [r7, #4]
87800144:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
87800148:	607b      	str	r3, [r7, #4]
8780014a:	687b      	ldr	r3, [r7, #4]
8780014c:	f443 13c0 	orr.w	r3, r3, #1572864	; 0x180000
87800150:	607b      	str	r3, [r7, #4]
87800152:	687b      	ldr	r3, [r7, #4]
87800154:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
87800158:	607b      	str	r3, [r7, #4]
8780015a:	687b      	ldr	r3, [r7, #4]
8780015c:	f043 031b 	orr.w	r3, r3, #27
87800160:	607b      	str	r3, [r7, #4]
87800162:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800166:	f2c0 230c 	movt	r3, #524	; 0x20c
8780016a:	687a      	ldr	r2, [r7, #4]
8780016c:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
87800170:	2300      	movs	r3, #0
87800172:	607b      	str	r3, [r7, #4]
87800174:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800178:	f2c0 230c 	movt	r3, #524	; 0x20c
8780017c:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
87800180:	607b      	str	r3, [r7, #4]
87800182:	687b      	ldr	r3, [r7, #4]
87800184:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
87800188:	607b      	str	r3, [r7, #4]
8780018a:	687b      	ldr	r3, [r7, #4]
8780018c:	f043 5398 	orr.w	r3, r3, #318767104	; 0x13000000
87800190:	607b      	str	r3, [r7, #4]
87800192:	687b      	ldr	r3, [r7, #4]
87800194:	f443 1388 	orr.w	r3, r3, #1114112	; 0x110000
87800198:	607b      	str	r3, [r7, #4]
8780019a:	687b      	ldr	r3, [r7, #4]
8780019c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
878001a0:	607b      	str	r3, [r7, #4]
878001a2:	687b      	ldr	r3, [r7, #4]
878001a4:	f043 030c 	orr.w	r3, r3, #12
878001a8:	607b      	str	r3, [r7, #4]
878001aa:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878001ae:	f2c0 230c 	movt	r3, #524	; 0x20c
878001b2:	687a      	ldr	r2, [r7, #4]
878001b4:	f8c3 20f0 	str.w	r2, [r3, #240]	; 0xf0
878001b8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001bc:	f2c0 230c 	movt	r3, #524	; 0x20c
878001c0:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878001c4:	f2c0 220c 	movt	r2, #524	; 0x20c
878001c8:	6992      	ldr	r2, [r2, #24]
878001ca:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
878001ce:	619a      	str	r2, [r3, #24]
878001d0:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001d4:	f2c0 230c 	movt	r3, #524	; 0x20c
878001d8:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878001dc:	f2c0 220c 	movt	r2, #524	; 0x20c
878001e0:	6992      	ldr	r2, [r2, #24]
878001e2:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
878001e6:	619a      	str	r2, [r3, #24]
878001e8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001ec:	f2c0 230c 	movt	r3, #524	; 0x20c
878001f0:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878001f4:	f2c0 220c 	movt	r2, #524	; 0x20c
878001f8:	6952      	ldr	r2, [r2, #20]
878001fa:	f022 7200 	bic.w	r2, r2, #33554432	; 0x2000000
878001fe:	615a      	str	r2, [r3, #20]
87800200:	bf00      	nop
87800202:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800206:	f2c0 230c 	movt	r3, #524	; 0x20c
8780020a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
8780020c:	f003 0320 	and.w	r3, r3, #32
87800210:	2b00      	cmp	r3, #0
87800212:	d1f6      	bne.n	87800202 <imx6u_clkinit+0x156>
87800214:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800218:	f2c0 230c 	movt	r3, #524	; 0x20c
8780021c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800220:	f2c0 220c 	movt	r2, #524	; 0x20c
87800224:	6952      	ldr	r2, [r2, #20]
87800226:	f422 7240 	bic.w	r2, r2, #768	; 0x300
8780022a:	615a      	str	r2, [r3, #20]
8780022c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800230:	f2c0 230c 	movt	r3, #524	; 0x20c
87800234:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800238:	f2c0 220c 	movt	r2, #524	; 0x20c
8780023c:	6952      	ldr	r2, [r2, #20]
8780023e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
87800242:	615a      	str	r2, [r3, #20]
87800244:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800248:	f2c0 230c 	movt	r3, #524	; 0x20c
8780024c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800250:	f2c0 220c 	movt	r2, #524	; 0x20c
87800254:	69d2      	ldr	r2, [r2, #28]
87800256:	f022 0240 	bic.w	r2, r2, #64	; 0x40
8780025a:	61da      	str	r2, [r3, #28]
8780025c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800260:	f2c0 230c 	movt	r3, #524	; 0x20c
87800264:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800268:	f2c0 220c 	movt	r2, #524	; 0x20c
8780026c:	69d2      	ldr	r2, [r2, #28]
8780026e:	f022 0207 	bic.w	r2, r2, #7
87800272:	61da      	str	r2, [r3, #28]
87800274:	370c      	adds	r7, #12
87800276:	46bd      	mov	sp, r7
87800278:	f85d 7b04 	ldr.w	r7, [sp], #4
8780027c:	4770      	bx	lr
8780027e:	bf00      	nop

87800280 <IOMUXC_SetPinMux>:
87800280:	b480      	push	{r7}
87800282:	b085      	sub	sp, #20
87800284:	af00      	add	r7, sp, #0
87800286:	60f8      	str	r0, [r7, #12]
87800288:	60b9      	str	r1, [r7, #8]
8780028a:	607a      	str	r2, [r7, #4]
8780028c:	603b      	str	r3, [r7, #0]
8780028e:	68fb      	ldr	r3, [r7, #12]
87800290:	68ba      	ldr	r2, [r7, #8]
87800292:	f002 010f 	and.w	r1, r2, #15
87800296:	69fa      	ldr	r2, [r7, #28]
87800298:	0112      	lsls	r2, r2, #4
8780029a:	f002 0210 	and.w	r2, r2, #16
8780029e:	430a      	orrs	r2, r1
878002a0:	601a      	str	r2, [r3, #0]
878002a2:	687b      	ldr	r3, [r7, #4]
878002a4:	2b00      	cmp	r3, #0
878002a6:	d004      	beq.n	878002b2 <IOMUXC_SetPinMux+0x32>
878002a8:	687b      	ldr	r3, [r7, #4]
878002aa:	683a      	ldr	r2, [r7, #0]
878002ac:	f002 0207 	and.w	r2, r2, #7
878002b0:	601a      	str	r2, [r3, #0]
878002b2:	3714      	adds	r7, #20
878002b4:	46bd      	mov	sp, r7
878002b6:	f85d 7b04 	ldr.w	r7, [sp], #4
878002ba:	4770      	bx	lr

878002bc <IOMUXC_SetPinConfig>:
878002bc:	b480      	push	{r7}
878002be:	b085      	sub	sp, #20
878002c0:	af00      	add	r7, sp, #0
878002c2:	60f8      	str	r0, [r7, #12]
878002c4:	60b9      	str	r1, [r7, #8]
878002c6:	607a      	str	r2, [r7, #4]
878002c8:	603b      	str	r3, [r7, #0]
878002ca:	69bb      	ldr	r3, [r7, #24]
878002cc:	2b00      	cmp	r3, #0
878002ce:	d002      	beq.n	878002d6 <IOMUXC_SetPinConfig+0x1a>
878002d0:	69bb      	ldr	r3, [r7, #24]
878002d2:	69fa      	ldr	r2, [r7, #28]
878002d4:	601a      	str	r2, [r3, #0]
878002d6:	3714      	adds	r7, #20
878002d8:	46bd      	mov	sp, r7
878002da:	f85d 7b04 	ldr.w	r7, [sp], #4
878002de:	4770      	bx	lr

878002e0 <led_init>:
878002e0:	b580      	push	{r7, lr}
878002e2:	b082      	sub	sp, #8
878002e4:	af02      	add	r7, sp, #8
878002e6:	2300      	movs	r3, #0
878002e8:	9301      	str	r3, [sp, #4]
878002ea:	f44f 733d 	mov.w	r3, #756	; 0x2f4
878002ee:	f2c0 230e 	movt	r3, #526	; 0x20e
878002f2:	9300      	str	r3, [sp, #0]
878002f4:	2300      	movs	r3, #0
878002f6:	2200      	movs	r2, #0
878002f8:	2105      	movs	r1, #5
878002fa:	2068      	movs	r0, #104	; 0x68
878002fc:	f2c0 200e 	movt	r0, #526	; 0x20e
87800300:	f7ff ffbe 	bl	87800280 <IOMUXC_SetPinMux>
87800304:	f241 03b0 	movw	r3, #4272	; 0x10b0
87800308:	9301      	str	r3, [sp, #4]
8780030a:	f44f 733d 	mov.w	r3, #756	; 0x2f4
8780030e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800312:	9300      	str	r3, [sp, #0]
87800314:	2300      	movs	r3, #0
87800316:	2200      	movs	r2, #0
87800318:	2105      	movs	r1, #5
8780031a:	2068      	movs	r0, #104	; 0x68
8780031c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800320:	f7ff ffcc 	bl	878002bc <IOMUXC_SetPinConfig>
87800324:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800328:	f2c0 2309 	movt	r3, #521	; 0x209
8780032c:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800330:	f2c0 2209 	movt	r2, #521	; 0x209
87800334:	6852      	ldr	r2, [r2, #4]
87800336:	f042 0208 	orr.w	r2, r2, #8
8780033a:	605a      	str	r2, [r3, #4]
8780033c:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800340:	f2c0 2309 	movt	r3, #521	; 0x209
87800344:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800348:	f2c0 2209 	movt	r2, #521	; 0x209
8780034c:	6812      	ldr	r2, [r2, #0]
8780034e:	f022 0208 	bic.w	r2, r2, #8
87800352:	601a      	str	r2, [r3, #0]
87800354:	46bd      	mov	sp, r7
87800356:	bd80      	pop	{r7, pc}

87800358 <led_switch>:
87800358:	b480      	push	{r7}
8780035a:	b083      	sub	sp, #12
8780035c:	af00      	add	r7, sp, #0
8780035e:	6078      	str	r0, [r7, #4]
87800360:	6039      	str	r1, [r7, #0]
87800362:	687b      	ldr	r3, [r7, #4]
87800364:	2b00      	cmp	r3, #0
87800366:	d11f      	bne.n	878003a8 <led_switch+0x50>
87800368:	683b      	ldr	r3, [r7, #0]
8780036a:	2b01      	cmp	r3, #1
8780036c:	d10c      	bne.n	87800388 <led_switch+0x30>
8780036e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800372:	f2c0 2309 	movt	r3, #521	; 0x209
87800376:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780037a:	f2c0 2209 	movt	r2, #521	; 0x209
8780037e:	6812      	ldr	r2, [r2, #0]
87800380:	f022 0208 	bic.w	r2, r2, #8
87800384:	601a      	str	r2, [r3, #0]
87800386:	e00e      	b.n	878003a6 <led_switch+0x4e>
87800388:	683b      	ldr	r3, [r7, #0]
8780038a:	2b00      	cmp	r3, #0
8780038c:	d10b      	bne.n	878003a6 <led_switch+0x4e>
8780038e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800392:	f2c0 2309 	movt	r3, #521	; 0x209
87800396:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780039a:	f2c0 2209 	movt	r2, #521	; 0x209
8780039e:	6812      	ldr	r2, [r2, #0]
878003a0:	f042 0208 	orr.w	r2, r2, #8
878003a4:	601a      	str	r2, [r3, #0]
878003a6:	bf00      	nop
878003a8:	370c      	adds	r7, #12
878003aa:	46bd      	mov	sp, r7
878003ac:	f85d 7b04 	ldr.w	r7, [sp], #4
878003b0:	4770      	bx	lr
878003b2:	bf00      	nop

878003b4 <delay_init>:
878003b4:	b480      	push	{r7}
878003b6:	af00      	add	r7, sp, #0
878003b8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003bc:	f2c0 2309 	movt	r3, #521	; 0x209
878003c0:	2200      	movs	r2, #0
878003c2:	601a      	str	r2, [r3, #0]
878003c4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003c8:	f2c0 2309 	movt	r3, #521	; 0x209
878003cc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
878003d0:	601a      	str	r2, [r3, #0]
878003d2:	bf00      	nop
878003d4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003d8:	f2c0 2309 	movt	r3, #521	; 0x209
878003dc:	681b      	ldr	r3, [r3, #0]
878003de:	0bdb      	lsrs	r3, r3, #15
878003e0:	f003 0301 	and.w	r3, r3, #1
878003e4:	2b00      	cmp	r3, #0
878003e6:	d1f5      	bne.n	878003d4 <delay_init+0x20>
878003e8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003ec:	f2c0 2309 	movt	r3, #521	; 0x209
878003f0:	2240      	movs	r2, #64	; 0x40
878003f2:	601a      	str	r2, [r3, #0]
878003f4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003f8:	f2c0 2309 	movt	r3, #521	; 0x209
878003fc:	2241      	movs	r2, #65	; 0x41
878003fe:	605a      	str	r2, [r3, #4]
87800400:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800404:	f2c0 2309 	movt	r3, #521	; 0x209
87800408:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780040c:	611a      	str	r2, [r3, #16]
8780040e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800412:	f2c0 2309 	movt	r3, #521	; 0x209
87800416:	f44f 4200 	mov.w	r2, #32768	; 0x8000
8780041a:	f2c0 2209 	movt	r2, #521	; 0x209
8780041e:	6812      	ldr	r2, [r2, #0]
87800420:	f042 0201 	orr.w	r2, r2, #1
87800424:	601a      	str	r2, [r3, #0]
87800426:	46bd      	mov	sp, r7
87800428:	f85d 7b04 	ldr.w	r7, [sp], #4
8780042c:	4770      	bx	lr
8780042e:	bf00      	nop

87800430 <delayus>:
87800430:	b480      	push	{r7}
87800432:	b087      	sub	sp, #28
87800434:	af00      	add	r7, sp, #0
87800436:	6078      	str	r0, [r7, #4]
87800438:	2300      	movs	r3, #0
8780043a:	613b      	str	r3, [r7, #16]
8780043c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800440:	f2c0 2309 	movt	r3, #521	; 0x209
87800444:	6a5b      	ldr	r3, [r3, #36]	; 0x24
87800446:	617b      	str	r3, [r7, #20]
87800448:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780044c:	f2c0 2309 	movt	r3, #521	; 0x209
87800450:	6a5b      	ldr	r3, [r3, #36]	; 0x24
87800452:	60fb      	str	r3, [r7, #12]
87800454:	68fa      	ldr	r2, [r7, #12]
87800456:	697b      	ldr	r3, [r7, #20]
87800458:	429a      	cmp	r2, r3
8780045a:	d018      	beq.n	8780048e <delayus+0x5e>
8780045c:	68fa      	ldr	r2, [r7, #12]
8780045e:	697b      	ldr	r3, [r7, #20]
87800460:	429a      	cmp	r2, r3
87800462:	d906      	bls.n	87800472 <delayus+0x42>
87800464:	68fa      	ldr	r2, [r7, #12]
87800466:	697b      	ldr	r3, [r7, #20]
87800468:	1ad3      	subs	r3, r2, r3
8780046a:	693a      	ldr	r2, [r7, #16]
8780046c:	4413      	add	r3, r2
8780046e:	613b      	str	r3, [r7, #16]
87800470:	e006      	b.n	87800480 <delayus+0x50>
87800472:	68fa      	ldr	r2, [r7, #12]
87800474:	697b      	ldr	r3, [r7, #20]
87800476:	1ad2      	subs	r2, r2, r3
87800478:	693b      	ldr	r3, [r7, #16]
8780047a:	4413      	add	r3, r2
8780047c:	3b01      	subs	r3, #1
8780047e:	613b      	str	r3, [r7, #16]
87800480:	68fb      	ldr	r3, [r7, #12]
87800482:	617b      	str	r3, [r7, #20]
87800484:	693a      	ldr	r2, [r7, #16]
87800486:	687b      	ldr	r3, [r7, #4]
87800488:	429a      	cmp	r2, r3
8780048a:	d300      	bcc.n	8780048e <delayus+0x5e>
8780048c:	e000      	b.n	87800490 <delayus+0x60>
8780048e:	e7db      	b.n	87800448 <delayus+0x18>
87800490:	371c      	adds	r7, #28
87800492:	46bd      	mov	sp, r7
87800494:	f85d 7b04 	ldr.w	r7, [sp], #4
87800498:	4770      	bx	lr
8780049a:	bf00      	nop

8780049c <delayms>:
8780049c:	b580      	push	{r7, lr}
8780049e:	b084      	sub	sp, #16
878004a0:	af00      	add	r7, sp, #0
878004a2:	6078      	str	r0, [r7, #4]
878004a4:	2300      	movs	r3, #0
878004a6:	60fb      	str	r3, [r7, #12]
878004a8:	2300      	movs	r3, #0
878004aa:	60fb      	str	r3, [r7, #12]
878004ac:	e006      	b.n	878004bc <delayms+0x20>
878004ae:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
878004b2:	f7ff ffbd 	bl	87800430 <delayus>
878004b6:	68fb      	ldr	r3, [r7, #12]
878004b8:	3301      	adds	r3, #1
878004ba:	60fb      	str	r3, [r7, #12]
878004bc:	68fa      	ldr	r2, [r7, #12]
878004be:	687b      	ldr	r3, [r7, #4]
878004c0:	429a      	cmp	r2, r3
878004c2:	d3f4      	bcc.n	878004ae <delayms+0x12>
878004c4:	3710      	adds	r7, #16
878004c6:	46bd      	mov	sp, r7
878004c8:	bd80      	pop	{r7, pc}
878004ca:	bf00      	nop

878004cc <delay_short>:
878004cc:	b480      	push	{r7}
878004ce:	b083      	sub	sp, #12
878004d0:	af00      	add	r7, sp, #0
878004d2:	6078      	str	r0, [r7, #4]
878004d4:	bf00      	nop
878004d6:	687b      	ldr	r3, [r7, #4]
878004d8:	1e5a      	subs	r2, r3, #1
878004da:	607a      	str	r2, [r7, #4]
878004dc:	2b00      	cmp	r3, #0
878004de:	d1fa      	bne.n	878004d6 <delay_short+0xa>
878004e0:	370c      	adds	r7, #12
878004e2:	46bd      	mov	sp, r7
878004e4:	f85d 7b04 	ldr.w	r7, [sp], #4
878004e8:	4770      	bx	lr
878004ea:	bf00      	nop

878004ec <delay>:
878004ec:	b580      	push	{r7, lr}
878004ee:	b082      	sub	sp, #8
878004f0:	af00      	add	r7, sp, #0
878004f2:	6078      	str	r0, [r7, #4]
878004f4:	e003      	b.n	878004fe <delay+0x12>
878004f6:	f240 70ff 	movw	r0, #2047	; 0x7ff
878004fa:	f7ff ffe7 	bl	878004cc <delay_short>
878004fe:	687b      	ldr	r3, [r7, #4]
87800500:	1e5a      	subs	r2, r3, #1
87800502:	607a      	str	r2, [r7, #4]
87800504:	2b00      	cmp	r3, #0
87800506:	d1f6      	bne.n	878004f6 <delay+0xa>
87800508:	3708      	adds	r7, #8
8780050a:	46bd      	mov	sp, r7
8780050c:	bd80      	pop	{r7, pc}
8780050e:	bf00      	nop

87800510 <IOMUXC_SetPinMux>:
87800510:	b480      	push	{r7}
87800512:	b085      	sub	sp, #20
87800514:	af00      	add	r7, sp, #0
87800516:	60f8      	str	r0, [r7, #12]
87800518:	60b9      	str	r1, [r7, #8]
8780051a:	607a      	str	r2, [r7, #4]
8780051c:	603b      	str	r3, [r7, #0]
8780051e:	68fb      	ldr	r3, [r7, #12]
87800520:	68ba      	ldr	r2, [r7, #8]
87800522:	f002 010f 	and.w	r1, r2, #15
87800526:	69fa      	ldr	r2, [r7, #28]
87800528:	0112      	lsls	r2, r2, #4
8780052a:	f002 0210 	and.w	r2, r2, #16
8780052e:	430a      	orrs	r2, r1
87800530:	601a      	str	r2, [r3, #0]
87800532:	687b      	ldr	r3, [r7, #4]
87800534:	2b00      	cmp	r3, #0
87800536:	d004      	beq.n	87800542 <IOMUXC_SetPinMux+0x32>
87800538:	687b      	ldr	r3, [r7, #4]
8780053a:	683a      	ldr	r2, [r7, #0]
8780053c:	f002 0207 	and.w	r2, r2, #7
87800540:	601a      	str	r2, [r3, #0]
87800542:	3714      	adds	r7, #20
87800544:	46bd      	mov	sp, r7
87800546:	f85d 7b04 	ldr.w	r7, [sp], #4
8780054a:	4770      	bx	lr

8780054c <IOMUXC_SetPinConfig>:
8780054c:	b480      	push	{r7}
8780054e:	b085      	sub	sp, #20
87800550:	af00      	add	r7, sp, #0
87800552:	60f8      	str	r0, [r7, #12]
87800554:	60b9      	str	r1, [r7, #8]
87800556:	607a      	str	r2, [r7, #4]
87800558:	603b      	str	r3, [r7, #0]
8780055a:	69bb      	ldr	r3, [r7, #24]
8780055c:	2b00      	cmp	r3, #0
8780055e:	d002      	beq.n	87800566 <IOMUXC_SetPinConfig+0x1a>
87800560:	69bb      	ldr	r3, [r7, #24]
87800562:	69fa      	ldr	r2, [r7, #28]
87800564:	601a      	str	r2, [r3, #0]
87800566:	3714      	adds	r7, #20
87800568:	46bd      	mov	sp, r7
8780056a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780056e:	4770      	bx	lr

87800570 <beep_init>:
87800570:	b580      	push	{r7, lr}
87800572:	b082      	sub	sp, #8
87800574:	af02      	add	r7, sp, #8
87800576:	2300      	movs	r3, #0
87800578:	9301      	str	r3, [sp, #4]
8780057a:	2350      	movs	r3, #80	; 0x50
8780057c:	f2c0 2329 	movt	r3, #553	; 0x229
87800580:	9300      	str	r3, [sp, #0]
87800582:	2300      	movs	r3, #0
87800584:	2200      	movs	r2, #0
87800586:	2105      	movs	r1, #5
87800588:	200c      	movs	r0, #12
8780058a:	f2c0 2029 	movt	r0, #553	; 0x229
8780058e:	f7ff ffbf 	bl	87800510 <IOMUXC_SetPinMux>
87800592:	f241 03b0 	movw	r3, #4272	; 0x10b0
87800596:	9301      	str	r3, [sp, #4]
87800598:	2350      	movs	r3, #80	; 0x50
8780059a:	f2c0 2329 	movt	r3, #553	; 0x229
8780059e:	9300      	str	r3, [sp, #0]
878005a0:	2300      	movs	r3, #0
878005a2:	2200      	movs	r2, #0
878005a4:	2105      	movs	r1, #5
878005a6:	200c      	movs	r0, #12
878005a8:	f2c0 2029 	movt	r0, #553	; 0x229
878005ac:	f7ff ffce 	bl	8780054c <IOMUXC_SetPinConfig>
878005b0:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878005b4:	f2c0 230a 	movt	r3, #522	; 0x20a
878005b8:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878005bc:	f2c0 220a 	movt	r2, #522	; 0x20a
878005c0:	6852      	ldr	r2, [r2, #4]
878005c2:	f042 0202 	orr.w	r2, r2, #2
878005c6:	605a      	str	r2, [r3, #4]
878005c8:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878005cc:	f2c0 230a 	movt	r3, #522	; 0x20a
878005d0:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878005d4:	f2c0 220a 	movt	r2, #522	; 0x20a
878005d8:	6812      	ldr	r2, [r2, #0]
878005da:	f042 0202 	orr.w	r2, r2, #2
878005de:	601a      	str	r2, [r3, #0]
878005e0:	46bd      	mov	sp, r7
878005e2:	bd80      	pop	{r7, pc}

878005e4 <beep_switch>:
878005e4:	b480      	push	{r7}
878005e6:	b083      	sub	sp, #12
878005e8:	af00      	add	r7, sp, #0
878005ea:	6078      	str	r0, [r7, #4]
878005ec:	687b      	ldr	r3, [r7, #4]
878005ee:	2b01      	cmp	r3, #1
878005f0:	d10c      	bne.n	8780060c <beep_switch+0x28>
878005f2:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878005f6:	f2c0 230a 	movt	r3, #522	; 0x20a
878005fa:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878005fe:	f2c0 220a 	movt	r2, #522	; 0x20a
87800602:	6812      	ldr	r2, [r2, #0]
87800604:	f022 0202 	bic.w	r2, r2, #2
87800608:	601a      	str	r2, [r3, #0]
8780060a:	e00e      	b.n	8780062a <beep_switch+0x46>
8780060c:	687b      	ldr	r3, [r7, #4]
8780060e:	2b00      	cmp	r3, #0
87800610:	d10b      	bne.n	8780062a <beep_switch+0x46>
87800612:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800616:	f2c0 230a 	movt	r3, #522	; 0x20a
8780061a:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780061e:	f2c0 220a 	movt	r2, #522	; 0x20a
87800622:	6812      	ldr	r2, [r2, #0]
87800624:	f042 0202 	orr.w	r2, r2, #2
87800628:	601a      	str	r2, [r3, #0]
8780062a:	370c      	adds	r7, #12
8780062c:	46bd      	mov	sp, r7
8780062e:	f85d 7b04 	ldr.w	r7, [sp], #4
87800632:	4770      	bx	lr

87800634 <IOMUXC_SetPinMux>:
87800634:	b480      	push	{r7}
87800636:	b085      	sub	sp, #20
87800638:	af00      	add	r7, sp, #0
8780063a:	60f8      	str	r0, [r7, #12]
8780063c:	60b9      	str	r1, [r7, #8]
8780063e:	607a      	str	r2, [r7, #4]
87800640:	603b      	str	r3, [r7, #0]
87800642:	68fb      	ldr	r3, [r7, #12]
87800644:	68ba      	ldr	r2, [r7, #8]
87800646:	f002 010f 	and.w	r1, r2, #15
8780064a:	69fa      	ldr	r2, [r7, #28]
8780064c:	0112      	lsls	r2, r2, #4
8780064e:	f002 0210 	and.w	r2, r2, #16
87800652:	430a      	orrs	r2, r1
87800654:	601a      	str	r2, [r3, #0]
87800656:	687b      	ldr	r3, [r7, #4]
87800658:	2b00      	cmp	r3, #0
8780065a:	d004      	beq.n	87800666 <IOMUXC_SetPinMux+0x32>
8780065c:	687b      	ldr	r3, [r7, #4]
8780065e:	683a      	ldr	r2, [r7, #0]
87800660:	f002 0207 	and.w	r2, r2, #7
87800664:	601a      	str	r2, [r3, #0]
87800666:	3714      	adds	r7, #20
87800668:	46bd      	mov	sp, r7
8780066a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780066e:	4770      	bx	lr

87800670 <IOMUXC_SetPinConfig>:
87800670:	b480      	push	{r7}
87800672:	b085      	sub	sp, #20
87800674:	af00      	add	r7, sp, #0
87800676:	60f8      	str	r0, [r7, #12]
87800678:	60b9      	str	r1, [r7, #8]
8780067a:	607a      	str	r2, [r7, #4]
8780067c:	603b      	str	r3, [r7, #0]
8780067e:	69bb      	ldr	r3, [r7, #24]
87800680:	2b00      	cmp	r3, #0
87800682:	d002      	beq.n	8780068a <IOMUXC_SetPinConfig+0x1a>
87800684:	69bb      	ldr	r3, [r7, #24]
87800686:	69fa      	ldr	r2, [r7, #28]
87800688:	601a      	str	r2, [r3, #0]
8780068a:	3714      	adds	r7, #20
8780068c:	46bd      	mov	sp, r7
8780068e:	f85d 7b04 	ldr.w	r7, [sp], #4
87800692:	4770      	bx	lr

87800694 <key_init>:
87800694:	b580      	push	{r7, lr}
87800696:	b086      	sub	sp, #24
87800698:	af02      	add	r7, sp, #8
8780069a:	2300      	movs	r3, #0
8780069c:	9301      	str	r3, [sp, #4]
8780069e:	f44f 7346 	mov.w	r3, #792	; 0x318
878006a2:	f2c0 230e 	movt	r3, #526	; 0x20e
878006a6:	9300      	str	r3, [sp, #0]
878006a8:	2300      	movs	r3, #0
878006aa:	2200      	movs	r2, #0
878006ac:	2105      	movs	r1, #5
878006ae:	208c      	movs	r0, #140	; 0x8c
878006b0:	f2c0 200e 	movt	r0, #526	; 0x20e
878006b4:	f7ff ffbe 	bl	87800634 <IOMUXC_SetPinMux>
878006b8:	f24f 0380 	movw	r3, #61568	; 0xf080
878006bc:	9301      	str	r3, [sp, #4]
878006be:	f44f 7346 	mov.w	r3, #792	; 0x318
878006c2:	f2c0 230e 	movt	r3, #526	; 0x20e
878006c6:	9300      	str	r3, [sp, #0]
878006c8:	2300      	movs	r3, #0
878006ca:	2200      	movs	r2, #0
878006cc:	2105      	movs	r1, #5
878006ce:	208c      	movs	r0, #140	; 0x8c
878006d0:	f2c0 200e 	movt	r0, #526	; 0x20e
878006d4:	f7ff ffcc 	bl	87800670 <IOMUXC_SetPinConfig>
878006d8:	2300      	movs	r3, #0
878006da:	607b      	str	r3, [r7, #4]
878006dc:	1d3b      	adds	r3, r7, #4
878006de:	461a      	mov	r2, r3
878006e0:	2112      	movs	r1, #18
878006e2:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878006e6:	f2c0 2009 	movt	r0, #521	; 0x209
878006ea:	f000 f847 	bl	8780077c <gpio_init>
878006ee:	3710      	adds	r7, #16
878006f0:	46bd      	mov	sp, r7
878006f2:	bd80      	pop	{r7, pc}

878006f4 <key_getvalue>:
878006f4:	b580      	push	{r7, lr}
878006f6:	b082      	sub	sp, #8
878006f8:	af00      	add	r7, sp, #0
878006fa:	2300      	movs	r3, #0
878006fc:	607b      	str	r3, [r7, #4]
878006fe:	f640 2320 	movw	r3, #2592	; 0xa20
87800702:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800706:	781b      	ldrb	r3, [r3, #0]
87800708:	2b01      	cmp	r3, #1
8780070a:	d120      	bne.n	8780074e <key_getvalue+0x5a>
8780070c:	2112      	movs	r1, #18
8780070e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800712:	f2c0 2009 	movt	r0, #521	; 0x209
87800716:	f000 f86b 	bl	878007f0 <gpio_pinread>
8780071a:	4603      	mov	r3, r0
8780071c:	2b00      	cmp	r3, #0
8780071e:	d116      	bne.n	8780074e <key_getvalue+0x5a>
87800720:	200a      	movs	r0, #10
87800722:	f7ff fee3 	bl	878004ec <delay>
87800726:	f640 2320 	movw	r3, #2592	; 0xa20
8780072a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780072e:	2200      	movs	r2, #0
87800730:	701a      	strb	r2, [r3, #0]
87800732:	2112      	movs	r1, #18
87800734:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800738:	f2c0 2009 	movt	r0, #521	; 0x209
8780073c:	f000 f858 	bl	878007f0 <gpio_pinread>
87800740:	4603      	mov	r3, r0
87800742:	2b00      	cmp	r3, #0
87800744:	d102      	bne.n	8780074c <key_getvalue+0x58>
87800746:	2301      	movs	r3, #1
87800748:	607b      	str	r3, [r7, #4]
8780074a:	e012      	b.n	87800772 <key_getvalue+0x7e>
8780074c:	e011      	b.n	87800772 <key_getvalue+0x7e>
8780074e:	2112      	movs	r1, #18
87800750:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800754:	f2c0 2009 	movt	r0, #521	; 0x209
87800758:	f000 f84a 	bl	878007f0 <gpio_pinread>
8780075c:	4603      	mov	r3, r0
8780075e:	2b01      	cmp	r3, #1
87800760:	d107      	bne.n	87800772 <key_getvalue+0x7e>
87800762:	2300      	movs	r3, #0
87800764:	607b      	str	r3, [r7, #4]
87800766:	f640 2320 	movw	r3, #2592	; 0xa20
8780076a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780076e:	2201      	movs	r2, #1
87800770:	701a      	strb	r2, [r3, #0]
87800772:	687b      	ldr	r3, [r7, #4]
87800774:	4618      	mov	r0, r3
87800776:	3708      	adds	r7, #8
87800778:	46bd      	mov	sp, r7
8780077a:	bd80      	pop	{r7, pc}

8780077c <gpio_init>:
8780077c:	b580      	push	{r7, lr}
8780077e:	b084      	sub	sp, #16
87800780:	af00      	add	r7, sp, #0
87800782:	60f8      	str	r0, [r7, #12]
87800784:	60b9      	str	r1, [r7, #8]
87800786:	607a      	str	r2, [r7, #4]
87800788:	68fb      	ldr	r3, [r7, #12]
8780078a:	695a      	ldr	r2, [r3, #20]
8780078c:	2101      	movs	r1, #1
8780078e:	68bb      	ldr	r3, [r7, #8]
87800790:	fa01 f303 	lsl.w	r3, r1, r3
87800794:	43db      	mvns	r3, r3
87800796:	401a      	ands	r2, r3
87800798:	68fb      	ldr	r3, [r7, #12]
8780079a:	615a      	str	r2, [r3, #20]
8780079c:	687b      	ldr	r3, [r7, #4]
8780079e:	681b      	ldr	r3, [r3, #0]
878007a0:	2b00      	cmp	r3, #0
878007a2:	d10a      	bne.n	878007ba <gpio_init+0x3e>
878007a4:	68fb      	ldr	r3, [r7, #12]
878007a6:	685b      	ldr	r3, [r3, #4]
878007a8:	2101      	movs	r1, #1
878007aa:	68ba      	ldr	r2, [r7, #8]
878007ac:	fa01 f202 	lsl.w	r2, r1, r2
878007b0:	43d2      	mvns	r2, r2
878007b2:	401a      	ands	r2, r3
878007b4:	68fb      	ldr	r3, [r7, #12]
878007b6:	605a      	str	r2, [r3, #4]
878007b8:	e00f      	b.n	878007da <gpio_init+0x5e>
878007ba:	68fb      	ldr	r3, [r7, #12]
878007bc:	685b      	ldr	r3, [r3, #4]
878007be:	2101      	movs	r1, #1
878007c0:	68ba      	ldr	r2, [r7, #8]
878007c2:	fa01 f202 	lsl.w	r2, r1, r2
878007c6:	431a      	orrs	r2, r3
878007c8:	68fb      	ldr	r3, [r7, #12]
878007ca:	605a      	str	r2, [r3, #4]
878007cc:	687b      	ldr	r3, [r7, #4]
878007ce:	791b      	ldrb	r3, [r3, #4]
878007d0:	461a      	mov	r2, r3
878007d2:	68b9      	ldr	r1, [r7, #8]
878007d4:	68f8      	ldr	r0, [r7, #12]
878007d6:	f000 f81d 	bl	87800814 <gpio_pinwrite>
878007da:	68b9      	ldr	r1, [r7, #8]
878007dc:	687b      	ldr	r3, [r7, #4]
878007de:	689b      	ldr	r3, [r3, #8]
878007e0:	461a      	mov	r2, r3
878007e2:	68f8      	ldr	r0, [r7, #12]
878007e4:	f000 f838 	bl	87800858 <gpio_intconfig>
878007e8:	3710      	adds	r7, #16
878007ea:	46bd      	mov	sp, r7
878007ec:	bd80      	pop	{r7, pc}
878007ee:	bf00      	nop

878007f0 <gpio_pinread>:
878007f0:	b480      	push	{r7}
878007f2:	b083      	sub	sp, #12
878007f4:	af00      	add	r7, sp, #0
878007f6:	6078      	str	r0, [r7, #4]
878007f8:	6039      	str	r1, [r7, #0]
878007fa:	687b      	ldr	r3, [r7, #4]
878007fc:	681a      	ldr	r2, [r3, #0]
878007fe:	683b      	ldr	r3, [r7, #0]
87800800:	fa22 f303 	lsr.w	r3, r2, r3
87800804:	f003 0301 	and.w	r3, r3, #1
87800808:	4618      	mov	r0, r3
8780080a:	370c      	adds	r7, #12
8780080c:	46bd      	mov	sp, r7
8780080e:	f85d 7b04 	ldr.w	r7, [sp], #4
87800812:	4770      	bx	lr

87800814 <gpio_pinwrite>:
87800814:	b480      	push	{r7}
87800816:	b085      	sub	sp, #20
87800818:	af00      	add	r7, sp, #0
8780081a:	60f8      	str	r0, [r7, #12]
8780081c:	60b9      	str	r1, [r7, #8]
8780081e:	607a      	str	r2, [r7, #4]
87800820:	687b      	ldr	r3, [r7, #4]
87800822:	2b00      	cmp	r3, #0
87800824:	d10a      	bne.n	8780083c <gpio_pinwrite+0x28>
87800826:	68fb      	ldr	r3, [r7, #12]
87800828:	681a      	ldr	r2, [r3, #0]
8780082a:	2101      	movs	r1, #1
8780082c:	68bb      	ldr	r3, [r7, #8]
8780082e:	fa01 f303 	lsl.w	r3, r1, r3
87800832:	43db      	mvns	r3, r3
87800834:	401a      	ands	r2, r3
87800836:	68fb      	ldr	r3, [r7, #12]
87800838:	601a      	str	r2, [r3, #0]
8780083a:	e008      	b.n	8780084e <gpio_pinwrite+0x3a>
8780083c:	68fb      	ldr	r3, [r7, #12]
8780083e:	681a      	ldr	r2, [r3, #0]
87800840:	2101      	movs	r1, #1
87800842:	68bb      	ldr	r3, [r7, #8]
87800844:	fa01 f303 	lsl.w	r3, r1, r3
87800848:	431a      	orrs	r2, r3
8780084a:	68fb      	ldr	r3, [r7, #12]
8780084c:	601a      	str	r2, [r3, #0]
8780084e:	3714      	adds	r7, #20
87800850:	46bd      	mov	sp, r7
87800852:	f85d 7b04 	ldr.w	r7, [sp], #4
87800856:	4770      	bx	lr

87800858 <gpio_intconfig>:
87800858:	b480      	push	{r7}
8780085a:	b087      	sub	sp, #28
8780085c:	af00      	add	r7, sp, #0
8780085e:	60f8      	str	r0, [r7, #12]
87800860:	60b9      	str	r1, [r7, #8]
87800862:	607a      	str	r2, [r7, #4]
87800864:	68bb      	ldr	r3, [r7, #8]
87800866:	613b      	str	r3, [r7, #16]
87800868:	68fb      	ldr	r3, [r7, #12]
8780086a:	69da      	ldr	r2, [r3, #28]
8780086c:	68bb      	ldr	r3, [r7, #8]
8780086e:	2101      	movs	r1, #1
87800870:	fa01 f303 	lsl.w	r3, r1, r3
87800874:	43db      	mvns	r3, r3
87800876:	401a      	ands	r2, r3
87800878:	68fb      	ldr	r3, [r7, #12]
8780087a:	61da      	str	r2, [r3, #28]
8780087c:	68bb      	ldr	r3, [r7, #8]
8780087e:	2b0f      	cmp	r3, #15
87800880:	d803      	bhi.n	8780088a <gpio_intconfig+0x32>
87800882:	68fb      	ldr	r3, [r7, #12]
87800884:	330c      	adds	r3, #12
87800886:	617b      	str	r3, [r7, #20]
87800888:	e005      	b.n	87800896 <gpio_intconfig+0x3e>
8780088a:	68fb      	ldr	r3, [r7, #12]
8780088c:	3310      	adds	r3, #16
8780088e:	617b      	str	r3, [r7, #20]
87800890:	693b      	ldr	r3, [r7, #16]
87800892:	3b10      	subs	r3, #16
87800894:	613b      	str	r3, [r7, #16]
87800896:	687b      	ldr	r3, [r7, #4]
87800898:	3b01      	subs	r3, #1
8780089a:	2b04      	cmp	r3, #4
8780089c:	d851      	bhi.n	87800942 <gpio_intconfig+0xea>
8780089e:	a201      	add	r2, pc, #4	; (adr r2, 878008a4 <gpio_intconfig+0x4c>)
878008a0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
878008a4:	878008b9 			; <UNDEFINED> instruction: 0x878008b9
878008a8:	878008d1 			; <UNDEFINED> instruction: 0x878008d1
878008ac:	878008f5 			; <UNDEFINED> instruction: 0x878008f5
878008b0:	87800919 	usada8hi	r0, r9, r9, r0
878008b4:	8780092f 	strhi	r0, [r0, pc, lsr #18]
878008b8:	697b      	ldr	r3, [r7, #20]
878008ba:	681a      	ldr	r2, [r3, #0]
878008bc:	693b      	ldr	r3, [r7, #16]
878008be:	005b      	lsls	r3, r3, #1
878008c0:	4619      	mov	r1, r3
878008c2:	2303      	movs	r3, #3
878008c4:	408b      	lsls	r3, r1
878008c6:	43db      	mvns	r3, r3
878008c8:	401a      	ands	r2, r3
878008ca:	697b      	ldr	r3, [r7, #20]
878008cc:	601a      	str	r2, [r3, #0]
878008ce:	e039      	b.n	87800944 <gpio_intconfig+0xec>
878008d0:	697b      	ldr	r3, [r7, #20]
878008d2:	681a      	ldr	r2, [r3, #0]
878008d4:	693b      	ldr	r3, [r7, #16]
878008d6:	005b      	lsls	r3, r3, #1
878008d8:	4619      	mov	r1, r3
878008da:	2303      	movs	r3, #3
878008dc:	408b      	lsls	r3, r1
878008de:	43db      	mvns	r3, r3
878008e0:	401a      	ands	r2, r3
878008e2:	693b      	ldr	r3, [r7, #16]
878008e4:	005b      	lsls	r3, r3, #1
878008e6:	4619      	mov	r1, r3
878008e8:	2301      	movs	r3, #1
878008ea:	408b      	lsls	r3, r1
878008ec:	431a      	orrs	r2, r3
878008ee:	697b      	ldr	r3, [r7, #20]
878008f0:	601a      	str	r2, [r3, #0]
878008f2:	e027      	b.n	87800944 <gpio_intconfig+0xec>
878008f4:	697b      	ldr	r3, [r7, #20]
878008f6:	681a      	ldr	r2, [r3, #0]
878008f8:	693b      	ldr	r3, [r7, #16]
878008fa:	005b      	lsls	r3, r3, #1
878008fc:	4619      	mov	r1, r3
878008fe:	2303      	movs	r3, #3
87800900:	408b      	lsls	r3, r1
87800902:	43db      	mvns	r3, r3
87800904:	401a      	ands	r2, r3
87800906:	693b      	ldr	r3, [r7, #16]
87800908:	005b      	lsls	r3, r3, #1
8780090a:	4619      	mov	r1, r3
8780090c:	2302      	movs	r3, #2
8780090e:	408b      	lsls	r3, r1
87800910:	431a      	orrs	r2, r3
87800912:	697b      	ldr	r3, [r7, #20]
87800914:	601a      	str	r2, [r3, #0]
87800916:	e015      	b.n	87800944 <gpio_intconfig+0xec>
87800918:	697b      	ldr	r3, [r7, #20]
8780091a:	681a      	ldr	r2, [r3, #0]
8780091c:	693b      	ldr	r3, [r7, #16]
8780091e:	005b      	lsls	r3, r3, #1
87800920:	4619      	mov	r1, r3
87800922:	2303      	movs	r3, #3
87800924:	408b      	lsls	r3, r1
87800926:	431a      	orrs	r2, r3
87800928:	697b      	ldr	r3, [r7, #20]
8780092a:	601a      	str	r2, [r3, #0]
8780092c:	e00a      	b.n	87800944 <gpio_intconfig+0xec>
8780092e:	68fb      	ldr	r3, [r7, #12]
87800930:	69da      	ldr	r2, [r3, #28]
87800932:	68bb      	ldr	r3, [r7, #8]
87800934:	2101      	movs	r1, #1
87800936:	fa01 f303 	lsl.w	r3, r1, r3
8780093a:	431a      	orrs	r2, r3
8780093c:	68fb      	ldr	r3, [r7, #12]
8780093e:	61da      	str	r2, [r3, #28]
87800940:	e000      	b.n	87800944 <gpio_intconfig+0xec>
87800942:	bf00      	nop
87800944:	371c      	adds	r7, #28
87800946:	46bd      	mov	sp, r7
87800948:	f85d 7b04 	ldr.w	r7, [sp], #4
8780094c:	4770      	bx	lr
8780094e:	bf00      	nop

87800950 <gpio_enableint>:
87800950:	b480      	push	{r7}
87800952:	b083      	sub	sp, #12
87800954:	af00      	add	r7, sp, #0
87800956:	6078      	str	r0, [r7, #4]
87800958:	6039      	str	r1, [r7, #0]
8780095a:	687b      	ldr	r3, [r7, #4]
8780095c:	695b      	ldr	r3, [r3, #20]
8780095e:	683a      	ldr	r2, [r7, #0]
87800960:	2101      	movs	r1, #1
87800962:	fa01 f202 	lsl.w	r2, r1, r2
87800966:	431a      	orrs	r2, r3
87800968:	687b      	ldr	r3, [r7, #4]
8780096a:	615a      	str	r2, [r3, #20]
8780096c:	370c      	adds	r7, #12
8780096e:	46bd      	mov	sp, r7
87800970:	f85d 7b04 	ldr.w	r7, [sp], #4
87800974:	4770      	bx	lr
87800976:	bf00      	nop

87800978 <gpio_disableint>:
87800978:	b480      	push	{r7}
8780097a:	b083      	sub	sp, #12
8780097c:	af00      	add	r7, sp, #0
8780097e:	6078      	str	r0, [r7, #4]
87800980:	6039      	str	r1, [r7, #0]
87800982:	687b      	ldr	r3, [r7, #4]
87800984:	695b      	ldr	r3, [r3, #20]
87800986:	683a      	ldr	r2, [r7, #0]
87800988:	2101      	movs	r1, #1
8780098a:	fa01 f202 	lsl.w	r2, r1, r2
8780098e:	43d2      	mvns	r2, r2
87800990:	401a      	ands	r2, r3
87800992:	687b      	ldr	r3, [r7, #4]
87800994:	615a      	str	r2, [r3, #20]
87800996:	370c      	adds	r7, #12
87800998:	46bd      	mov	sp, r7
8780099a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780099e:	4770      	bx	lr

878009a0 <gpio_clearintflags>:
878009a0:	b480      	push	{r7}
878009a2:	b083      	sub	sp, #12
878009a4:	af00      	add	r7, sp, #0
878009a6:	6078      	str	r0, [r7, #4]
878009a8:	6039      	str	r1, [r7, #0]
878009aa:	687b      	ldr	r3, [r7, #4]
878009ac:	699b      	ldr	r3, [r3, #24]
878009ae:	683a      	ldr	r2, [r7, #0]
878009b0:	2101      	movs	r1, #1
878009b2:	fa01 f202 	lsl.w	r2, r1, r2
878009b6:	431a      	orrs	r2, r3
878009b8:	687b      	ldr	r3, [r7, #4]
878009ba:	619a      	str	r2, [r3, #24]
878009bc:	370c      	adds	r7, #12
878009be:	46bd      	mov	sp, r7
878009c0:	f85d 7b04 	ldr.w	r7, [sp], #4
878009c4:	4770      	bx	lr
878009c6:	bf00      	nop

878009c8 <__main_from_arm>:
878009c8:	e51ff004 	ldr	pc, [pc, #-4]	; 878009cc <__main_from_arm+0x4>
878009cc:	878009d1 			; <UNDEFINED> instruction: 0x878009d1

Disassembly of section .text.startup:

878009d0 <main>:
878009d0:	b570      	push	{r4, r5, r6, lr}
878009d2:	2500      	movs	r5, #0
878009d4:	462e      	mov	r6, r5
878009d6:	462c      	mov	r4, r5
878009d8:	f7ff fb30 	bl	8780003c <clk_enable>
878009dc:	f7ff fc80 	bl	878002e0 <led_init>
878009e0:	f7ff fdc6 	bl	87800570 <beep_init>
878009e4:	f7ff fe56 	bl	87800694 <key_init>
878009e8:	e004      	b.n	878009f4 <main+0x24>
878009ea:	2c32      	cmp	r4, #50	; 0x32
878009ec:	d010      	beq.n	87800a10 <main+0x40>
878009ee:	200a      	movs	r0, #10
878009f0:	f7ff fd7c 	bl	878004ec <delay>
878009f4:	3401      	adds	r4, #1
878009f6:	f7ff fe7d 	bl	878006f4 <key_getvalue>
878009fa:	2800      	cmp	r0, #0
878009fc:	d0f5      	beq.n	878009ea <main+0x1a>
878009fe:	2801      	cmp	r0, #1
87800a00:	d1f3      	bne.n	878009ea <main+0x1a>
87800a02:	f085 0501 	eor.w	r5, r5, #1
87800a06:	4628      	mov	r0, r5
87800a08:	f7ff fdec 	bl	878005e4 <beep_switch>
87800a0c:	2c32      	cmp	r4, #50	; 0x32
87800a0e:	d1ee      	bne.n	878009ee <main+0x1e>
87800a10:	f086 0601 	eor.w	r6, r6, #1
87800a14:	2400      	movs	r4, #0
87800a16:	4631      	mov	r1, r6
87800a18:	4620      	mov	r0, r4
87800a1a:	f7ff fc9d 	bl	87800358 <led_switch>
87800a1e:	e7e6      	b.n	878009ee <main+0x1e>

Disassembly of section .data:

87800a20 <release.8002>:
87800a20:	Address 0x0000000087800a20 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_start-0x8672f2dc>
   4:	694c2820 	stmdbvs	ip, {r5, fp, sp}^
   8:	6f72616e 	svcvs	0x0072616e
   c:	43434720 	movtmi	r4, #14112	; 0x3720
  10:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
  14:	3130322d 	teqcc	r0, sp, lsr #4
  18:	31302e37 	teqcc	r0, r7, lsr lr
  1c:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  20:	00342e39 	eorseq	r2, r4, r9, lsr lr

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003041 	andeq	r3, r0, r1, asr #32
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000026 	andeq	r0, r0, r6, lsr #32
  10:	412d3705 	teqmi	sp, r5, lsl #14
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	12040a02 	andne	r0, r4, #8192	; 0x2000
  20:	15011404 	strne	r1, [r1, #-1028]	; 0x404
  24:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  28:	1b021a01 	blne	86834 <_start-0x877797cc>
  2c:	22011c03 	andcs	r1, r1, #768	; 0x300
  30:	Address 0x0000000000000030 is out of bounds.

