
build/uart.elf:     file format elf32-littlearm


Disassembly of section .text:

87800000 <_start>:
87800000:	e59ff100 	ldr	pc, [pc, #256]	; 87800108 <FIQ_Handler+0x8>
87800004:	e59ff100 	ldr	pc, [pc, #256]	; 8780010c <FIQ_Handler+0xc>
87800008:	e59ff100 	ldr	pc, [pc, #256]	; 87800110 <FIQ_Handler+0x10>
8780000c:	e59ff100 	ldr	pc, [pc, #256]	; 87800114 <FIQ_Handler+0x14>
87800010:	e59ff100 	ldr	pc, [pc, #256]	; 87800118 <FIQ_Handler+0x18>
87800014:	e59ff100 	ldr	pc, [pc, #256]	; 8780011c <FIQ_Handler+0x1c>
87800018:	e59ff100 	ldr	pc, [pc, #256]	; 87800120 <FIQ_Handler+0x20>
8780001c:	e59ff100 	ldr	pc, [pc, #256]	; 87800124 <FIQ_Handler+0x24>

87800020 <Reset_Handler>:
87800020:	f10c0080 	cpsid	i
87800024:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
87800028:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
8780002c:	e3c00004 	bic	r0, r0, #4
87800030:	e3c00002 	bic	r0, r0, #2
87800034:	e3c00b02 	bic	r0, r0, #2048	; 0x800
87800038:	e3c00001 	bic	r0, r0, #1
8780003c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
87800040:	e10f0000 	mrs	r0, CPSR
87800044:	e3c0001f 	bic	r0, r0, #31
87800048:	e3800012 	orr	r0, r0, #18
8780004c:	e129f000 	msr	CPSR_fc, r0
87800050:	e59fd0d0 	ldr	sp, [pc, #208]	; 87800128 <FIQ_Handler+0x28>
87800054:	e10f0000 	mrs	r0, CPSR
87800058:	e3c0001f 	bic	r0, r0, #31
8780005c:	e380001f 	orr	r0, r0, #31
87800060:	e129f000 	msr	CPSR_fc, r0
87800064:	e59fd0c0 	ldr	sp, [pc, #192]	; 8780012c <FIQ_Handler+0x2c>
87800068:	e10f0000 	mrs	r0, CPSR
8780006c:	e3c0001f 	bic	r0, r0, #31
87800070:	e3800013 	orr	r0, r0, #19
87800074:	e129f000 	msr	CPSR_fc, r0
87800078:	e59fd0b0 	ldr	sp, [pc, #176]	; 87800130 <FIQ_Handler+0x30>
8780007c:	f1080080 	cpsie	i
87800080:	ea000688 	b	87801aa8 <__main_from_arm>

87800084 <Undefined_Handler>:
87800084:	e59f0080 	ldr	r0, [pc, #128]	; 8780010c <FIQ_Handler+0xc>
87800088:	e12fff10 	bx	r0

8780008c <SVC_Handler>:
8780008c:	e59f007c 	ldr	r0, [pc, #124]	; 87800110 <FIQ_Handler+0x10>
87800090:	e12fff10 	bx	r0

87800094 <PrefAbort_Handler>:
87800094:	e59f0078 	ldr	r0, [pc, #120]	; 87800114 <FIQ_Handler+0x14>
87800098:	e12fff10 	bx	r0

8780009c <DataAbort_Handler>:
8780009c:	e59f0074 	ldr	r0, [pc, #116]	; 87800118 <FIQ_Handler+0x18>
878000a0:	e12fff10 	bx	r0

878000a4 <NotUsed_Handler>:
878000a4:	e59f0070 	ldr	r0, [pc, #112]	; 8780011c <FIQ_Handler+0x1c>
878000a8:	e12fff10 	bx	r0

878000ac <IRQ_Handler>:
878000ac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
878000b0:	e92d100f 	push	{r0, r1, r2, r3, ip}
878000b4:	e14f0000 	mrs	r0, SPSR
878000b8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
878000bc:	ee9f1f10 	mrc	15, 4, r1, cr15, cr0, {0}
878000c0:	e2811a02 	add	r1, r1, #8192	; 0x2000
878000c4:	e591000c 	ldr	r0, [r1, #12]
878000c8:	e92d0003 	push	{r0, r1}
878000cc:	f1020013 	cps	#19
878000d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
878000d4:	e59f2058 	ldr	r2, [pc, #88]	; 87800134 <FIQ_Handler+0x34>
878000d8:	e12fff32 	blx	r2
878000dc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
878000e0:	f1020012 	cps	#18
878000e4:	e8bd0003 	pop	{r0, r1}
878000e8:	e5810010 	str	r0, [r1, #16]
878000ec:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
878000f0:	e16ff000 	msr	SPSR_fsxc, r0
878000f4:	e8bd100f 	pop	{r0, r1, r2, r3, ip}
878000f8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
878000fc:	e25ef004 	subs	pc, lr, #4

87800100 <FIQ_Handler>:
87800100:	e59f001c 	ldr	r0, [pc, #28]	; 87800124 <FIQ_Handler+0x24>
87800104:	e12fff10 	bx	r0
87800108:	87800020 	strhi	r0, [r0, r0, lsr #32]
8780010c:	87800084 	strhi	r0, [r0, r4, lsl #1]
87800110:	8780008c 	strhi	r0, [r0, ip, lsl #1]
87800114:	87800094 			; <UNDEFINED> instruction: 0x87800094
87800118:	8780009c 			; <UNDEFINED> instruction: 0x8780009c
8780011c:	878000a4 	strhi	r0, [r0, r4, lsr #1]
87800120:	878000ac 	strhi	r0, [r0, ip, lsr #1]
87800124:	87800100 	strhi	r0, [r0, r0, lsl #2]
87800128:	80600000 	rsbhi	r0, r0, r0
8780012c:	80400000 	subhi	r0, r0, r0
87800130:	80200000 	eorhi	r0, r0, r0
87800134:	87800bed 	strhi	r0, [r0, sp, ror #23]
87800138:	00001e41 	andeq	r1, r0, r1, asr #28
8780013c:	61656100 	cmnvs	r5, r0, lsl #2
87800140:	01006962 	tsteq	r0, r2, ror #18
87800144:	00000014 	andeq	r0, r0, r4, lsl r0
87800148:	412d3705 	teqmi	sp, r5, lsl #14
8780014c:	070a0600 	streq	r0, [sl, -r0, lsl #12]
87800150:	09010841 	stmdbeq	r1, {r0, r6, fp}
87800154:	00040a02 	andeq	r0, r4, r2, lsl #20

87800158 <clk_enable>:
87800158:	b480      	push	{r7}
8780015a:	af00      	add	r7, sp, #0
8780015c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800160:	f2c0 230c 	movt	r3, #524	; 0x20c
87800164:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800168:	669a      	str	r2, [r3, #104]	; 0x68
8780016a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780016e:	f2c0 230c 	movt	r3, #524	; 0x20c
87800172:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800176:	66da      	str	r2, [r3, #108]	; 0x6c
87800178:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780017c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800180:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800184:	671a      	str	r2, [r3, #112]	; 0x70
87800186:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780018a:	f2c0 230c 	movt	r3, #524	; 0x20c
8780018e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800192:	675a      	str	r2, [r3, #116]	; 0x74
87800194:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800198:	f2c0 230c 	movt	r3, #524	; 0x20c
8780019c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001a0:	679a      	str	r2, [r3, #120]	; 0x78
878001a2:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001a6:	f2c0 230c 	movt	r3, #524	; 0x20c
878001aa:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001ae:	67da      	str	r2, [r3, #124]	; 0x7c
878001b0:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001b4:	f2c0 230c 	movt	r3, #524	; 0x20c
878001b8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001bc:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878001c0:	46bd      	mov	sp, r7
878001c2:	f85d 7b04 	ldr.w	r7, [sp], #4
878001c6:	4770      	bx	lr

878001c8 <imx6u_clkinit>:
878001c8:	b480      	push	{r7}
878001ca:	b083      	sub	sp, #12
878001cc:	af00      	add	r7, sp, #0
878001ce:	2300      	movs	r3, #0
878001d0:	607b      	str	r3, [r7, #4]
878001d2:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001d6:	f2c0 230c 	movt	r3, #524	; 0x20c
878001da:	68db      	ldr	r3, [r3, #12]
878001dc:	089b      	lsrs	r3, r3, #2
878001de:	f003 0301 	and.w	r3, r3, #1
878001e2:	2b00      	cmp	r3, #0
878001e4:	d117      	bne.n	87800216 <imx6u_clkinit+0x4e>
878001e6:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001ea:	f2c0 230c 	movt	r3, #524	; 0x20c
878001ee:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878001f2:	f2c0 220c 	movt	r2, #524	; 0x20c
878001f6:	68d2      	ldr	r2, [r2, #12]
878001f8:	f422 7280 	bic.w	r2, r2, #256	; 0x100
878001fc:	60da      	str	r2, [r3, #12]
878001fe:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800202:	f2c0 230c 	movt	r3, #524	; 0x20c
87800206:	f44f 4280 	mov.w	r2, #16384	; 0x4000
8780020a:	f2c0 220c 	movt	r2, #524	; 0x20c
8780020e:	68d2      	ldr	r2, [r2, #12]
87800210:	f042 0204 	orr.w	r2, r2, #4
87800214:	60da      	str	r2, [r3, #12]
87800216:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780021a:	f2c0 230c 	movt	r3, #524	; 0x20c
8780021e:	f242 0242 	movw	r2, #8258	; 0x2042
87800222:	601a      	str	r2, [r3, #0]
87800224:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800228:	f2c0 230c 	movt	r3, #524	; 0x20c
8780022c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800230:	f2c0 220c 	movt	r2, #524	; 0x20c
87800234:	68d2      	ldr	r2, [r2, #12]
87800236:	f022 0204 	bic.w	r2, r2, #4
8780023a:	60da      	str	r2, [r3, #12]
8780023c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800240:	f2c0 230c 	movt	r3, #524	; 0x20c
87800244:	2200      	movs	r2, #0
87800246:	611a      	str	r2, [r3, #16]
87800248:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780024c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800250:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
87800254:	607b      	str	r3, [r7, #4]
87800256:	687b      	ldr	r3, [r7, #4]
87800258:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
8780025c:	607b      	str	r3, [r7, #4]
8780025e:	687b      	ldr	r3, [r7, #4]
87800260:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
87800264:	607b      	str	r3, [r7, #4]
87800266:	687b      	ldr	r3, [r7, #4]
87800268:	f443 13c0 	orr.w	r3, r3, #1572864	; 0x180000
8780026c:	607b      	str	r3, [r7, #4]
8780026e:	687b      	ldr	r3, [r7, #4]
87800270:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
87800274:	607b      	str	r3, [r7, #4]
87800276:	687b      	ldr	r3, [r7, #4]
87800278:	f043 031b 	orr.w	r3, r3, #27
8780027c:	607b      	str	r3, [r7, #4]
8780027e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800282:	f2c0 230c 	movt	r3, #524	; 0x20c
87800286:	687a      	ldr	r2, [r7, #4]
87800288:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
8780028c:	2300      	movs	r3, #0
8780028e:	607b      	str	r3, [r7, #4]
87800290:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800294:	f2c0 230c 	movt	r3, #524	; 0x20c
87800298:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
8780029c:	607b      	str	r3, [r7, #4]
8780029e:	687b      	ldr	r3, [r7, #4]
878002a0:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
878002a4:	607b      	str	r3, [r7, #4]
878002a6:	687b      	ldr	r3, [r7, #4]
878002a8:	f043 5398 	orr.w	r3, r3, #318767104	; 0x13000000
878002ac:	607b      	str	r3, [r7, #4]
878002ae:	687b      	ldr	r3, [r7, #4]
878002b0:	f443 1388 	orr.w	r3, r3, #1114112	; 0x110000
878002b4:	607b      	str	r3, [r7, #4]
878002b6:	687b      	ldr	r3, [r7, #4]
878002b8:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
878002bc:	607b      	str	r3, [r7, #4]
878002be:	687b      	ldr	r3, [r7, #4]
878002c0:	f043 030c 	orr.w	r3, r3, #12
878002c4:	607b      	str	r3, [r7, #4]
878002c6:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878002ca:	f2c0 230c 	movt	r3, #524	; 0x20c
878002ce:	687a      	ldr	r2, [r7, #4]
878002d0:	f8c3 20f0 	str.w	r2, [r3, #240]	; 0xf0
878002d4:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002d8:	f2c0 230c 	movt	r3, #524	; 0x20c
878002dc:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878002e0:	f2c0 220c 	movt	r2, #524	; 0x20c
878002e4:	6992      	ldr	r2, [r2, #24]
878002e6:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
878002ea:	619a      	str	r2, [r3, #24]
878002ec:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002f0:	f2c0 230c 	movt	r3, #524	; 0x20c
878002f4:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878002f8:	f2c0 220c 	movt	r2, #524	; 0x20c
878002fc:	6992      	ldr	r2, [r2, #24]
878002fe:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
87800302:	619a      	str	r2, [r3, #24]
87800304:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800308:	f2c0 230c 	movt	r3, #524	; 0x20c
8780030c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800310:	f2c0 220c 	movt	r2, #524	; 0x20c
87800314:	6952      	ldr	r2, [r2, #20]
87800316:	f022 7200 	bic.w	r2, r2, #33554432	; 0x2000000
8780031a:	615a      	str	r2, [r3, #20]
8780031c:	bf00      	nop
8780031e:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800322:	f2c0 230c 	movt	r3, #524	; 0x20c
87800326:	6c9b      	ldr	r3, [r3, #72]	; 0x48
87800328:	f003 0320 	and.w	r3, r3, #32
8780032c:	2b00      	cmp	r3, #0
8780032e:	d1f6      	bne.n	8780031e <imx6u_clkinit+0x156>
87800330:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800334:	f2c0 230c 	movt	r3, #524	; 0x20c
87800338:	f44f 4280 	mov.w	r2, #16384	; 0x4000
8780033c:	f2c0 220c 	movt	r2, #524	; 0x20c
87800340:	6952      	ldr	r2, [r2, #20]
87800342:	f422 7240 	bic.w	r2, r2, #768	; 0x300
87800346:	615a      	str	r2, [r3, #20]
87800348:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780034c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800350:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800354:	f2c0 220c 	movt	r2, #524	; 0x20c
87800358:	6952      	ldr	r2, [r2, #20]
8780035a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
8780035e:	615a      	str	r2, [r3, #20]
87800360:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800364:	f2c0 230c 	movt	r3, #524	; 0x20c
87800368:	f44f 4280 	mov.w	r2, #16384	; 0x4000
8780036c:	f2c0 220c 	movt	r2, #524	; 0x20c
87800370:	69d2      	ldr	r2, [r2, #28]
87800372:	f022 0240 	bic.w	r2, r2, #64	; 0x40
87800376:	61da      	str	r2, [r3, #28]
87800378:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780037c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800380:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800384:	f2c0 220c 	movt	r2, #524	; 0x20c
87800388:	69d2      	ldr	r2, [r2, #28]
8780038a:	f022 0207 	bic.w	r2, r2, #7
8780038e:	61da      	str	r2, [r3, #28]
87800390:	370c      	adds	r7, #12
87800392:	46bd      	mov	sp, r7
87800394:	f85d 7b04 	ldr.w	r7, [sp], #4
87800398:	4770      	bx	lr
8780039a:	bf00      	nop

8780039c <IOMUXC_SetPinMux>:
8780039c:	b480      	push	{r7}
8780039e:	b085      	sub	sp, #20
878003a0:	af00      	add	r7, sp, #0
878003a2:	60f8      	str	r0, [r7, #12]
878003a4:	60b9      	str	r1, [r7, #8]
878003a6:	607a      	str	r2, [r7, #4]
878003a8:	603b      	str	r3, [r7, #0]
878003aa:	68fb      	ldr	r3, [r7, #12]
878003ac:	68ba      	ldr	r2, [r7, #8]
878003ae:	f002 010f 	and.w	r1, r2, #15
878003b2:	69fa      	ldr	r2, [r7, #28]
878003b4:	0112      	lsls	r2, r2, #4
878003b6:	f002 0210 	and.w	r2, r2, #16
878003ba:	430a      	orrs	r2, r1
878003bc:	601a      	str	r2, [r3, #0]
878003be:	687b      	ldr	r3, [r7, #4]
878003c0:	2b00      	cmp	r3, #0
878003c2:	d004      	beq.n	878003ce <IOMUXC_SetPinMux+0x32>
878003c4:	687b      	ldr	r3, [r7, #4]
878003c6:	683a      	ldr	r2, [r7, #0]
878003c8:	f002 0207 	and.w	r2, r2, #7
878003cc:	601a      	str	r2, [r3, #0]
878003ce:	3714      	adds	r7, #20
878003d0:	46bd      	mov	sp, r7
878003d2:	f85d 7b04 	ldr.w	r7, [sp], #4
878003d6:	4770      	bx	lr

878003d8 <IOMUXC_SetPinConfig>:
878003d8:	b480      	push	{r7}
878003da:	b085      	sub	sp, #20
878003dc:	af00      	add	r7, sp, #0
878003de:	60f8      	str	r0, [r7, #12]
878003e0:	60b9      	str	r1, [r7, #8]
878003e2:	607a      	str	r2, [r7, #4]
878003e4:	603b      	str	r3, [r7, #0]
878003e6:	69bb      	ldr	r3, [r7, #24]
878003e8:	2b00      	cmp	r3, #0
878003ea:	d002      	beq.n	878003f2 <IOMUXC_SetPinConfig+0x1a>
878003ec:	69bb      	ldr	r3, [r7, #24]
878003ee:	69fa      	ldr	r2, [r7, #28]
878003f0:	601a      	str	r2, [r3, #0]
878003f2:	3714      	adds	r7, #20
878003f4:	46bd      	mov	sp, r7
878003f6:	f85d 7b04 	ldr.w	r7, [sp], #4
878003fa:	4770      	bx	lr

878003fc <led_init>:
878003fc:	b580      	push	{r7, lr}
878003fe:	b082      	sub	sp, #8
87800400:	af02      	add	r7, sp, #8
87800402:	2300      	movs	r3, #0
87800404:	9301      	str	r3, [sp, #4]
87800406:	f44f 733d 	mov.w	r3, #756	; 0x2f4
8780040a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780040e:	9300      	str	r3, [sp, #0]
87800410:	2300      	movs	r3, #0
87800412:	2200      	movs	r2, #0
87800414:	2105      	movs	r1, #5
87800416:	2068      	movs	r0, #104	; 0x68
87800418:	f2c0 200e 	movt	r0, #526	; 0x20e
8780041c:	f7ff ffbe 	bl	8780039c <IOMUXC_SetPinMux>
87800420:	f241 03b0 	movw	r3, #4272	; 0x10b0
87800424:	9301      	str	r3, [sp, #4]
87800426:	f44f 733d 	mov.w	r3, #756	; 0x2f4
8780042a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780042e:	9300      	str	r3, [sp, #0]
87800430:	2300      	movs	r3, #0
87800432:	2200      	movs	r2, #0
87800434:	2105      	movs	r1, #5
87800436:	2068      	movs	r0, #104	; 0x68
87800438:	f2c0 200e 	movt	r0, #526	; 0x20e
8780043c:	f7ff ffcc 	bl	878003d8 <IOMUXC_SetPinConfig>
87800440:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800444:	f2c0 2309 	movt	r3, #521	; 0x209
87800448:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780044c:	f2c0 2209 	movt	r2, #521	; 0x209
87800450:	6852      	ldr	r2, [r2, #4]
87800452:	f042 0208 	orr.w	r2, r2, #8
87800456:	605a      	str	r2, [r3, #4]
87800458:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780045c:	f2c0 2309 	movt	r3, #521	; 0x209
87800460:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800464:	f2c0 2209 	movt	r2, #521	; 0x209
87800468:	6812      	ldr	r2, [r2, #0]
8780046a:	f022 0208 	bic.w	r2, r2, #8
8780046e:	601a      	str	r2, [r3, #0]
87800470:	46bd      	mov	sp, r7
87800472:	bd80      	pop	{r7, pc}

87800474 <led_switch>:
87800474:	b480      	push	{r7}
87800476:	b083      	sub	sp, #12
87800478:	af00      	add	r7, sp, #0
8780047a:	6078      	str	r0, [r7, #4]
8780047c:	6039      	str	r1, [r7, #0]
8780047e:	687b      	ldr	r3, [r7, #4]
87800480:	2b00      	cmp	r3, #0
87800482:	d11f      	bne.n	878004c4 <led_switch+0x50>
87800484:	683b      	ldr	r3, [r7, #0]
87800486:	2b01      	cmp	r3, #1
87800488:	d10c      	bne.n	878004a4 <led_switch+0x30>
8780048a:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780048e:	f2c0 2309 	movt	r3, #521	; 0x209
87800492:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800496:	f2c0 2209 	movt	r2, #521	; 0x209
8780049a:	6812      	ldr	r2, [r2, #0]
8780049c:	f022 0208 	bic.w	r2, r2, #8
878004a0:	601a      	str	r2, [r3, #0]
878004a2:	e00e      	b.n	878004c2 <led_switch+0x4e>
878004a4:	683b      	ldr	r3, [r7, #0]
878004a6:	2b00      	cmp	r3, #0
878004a8:	d10b      	bne.n	878004c2 <led_switch+0x4e>
878004aa:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878004ae:	f2c0 2309 	movt	r3, #521	; 0x209
878004b2:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878004b6:	f2c0 2209 	movt	r2, #521	; 0x209
878004ba:	6812      	ldr	r2, [r2, #0]
878004bc:	f042 0208 	orr.w	r2, r2, #8
878004c0:	601a      	str	r2, [r3, #0]
878004c2:	bf00      	nop
878004c4:	370c      	adds	r7, #12
878004c6:	46bd      	mov	sp, r7
878004c8:	f85d 7b04 	ldr.w	r7, [sp], #4
878004cc:	4770      	bx	lr
878004ce:	bf00      	nop

878004d0 <delay_init>:
878004d0:	b480      	push	{r7}
878004d2:	af00      	add	r7, sp, #0
878004d4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878004d8:	f2c0 2309 	movt	r3, #521	; 0x209
878004dc:	2200      	movs	r2, #0
878004de:	601a      	str	r2, [r3, #0]
878004e0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878004e4:	f2c0 2309 	movt	r3, #521	; 0x209
878004e8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
878004ec:	601a      	str	r2, [r3, #0]
878004ee:	bf00      	nop
878004f0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878004f4:	f2c0 2309 	movt	r3, #521	; 0x209
878004f8:	681b      	ldr	r3, [r3, #0]
878004fa:	0bdb      	lsrs	r3, r3, #15
878004fc:	f003 0301 	and.w	r3, r3, #1
87800500:	2b00      	cmp	r3, #0
87800502:	d1f5      	bne.n	878004f0 <delay_init+0x20>
87800504:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800508:	f2c0 2309 	movt	r3, #521	; 0x209
8780050c:	2240      	movs	r2, #64	; 0x40
8780050e:	601a      	str	r2, [r3, #0]
87800510:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800514:	f2c0 2309 	movt	r3, #521	; 0x209
87800518:	2241      	movs	r2, #65	; 0x41
8780051a:	605a      	str	r2, [r3, #4]
8780051c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800520:	f2c0 2309 	movt	r3, #521	; 0x209
87800524:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800528:	611a      	str	r2, [r3, #16]
8780052a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780052e:	f2c0 2309 	movt	r3, #521	; 0x209
87800532:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87800536:	f2c0 2209 	movt	r2, #521	; 0x209
8780053a:	6812      	ldr	r2, [r2, #0]
8780053c:	f042 0201 	orr.w	r2, r2, #1
87800540:	601a      	str	r2, [r3, #0]
87800542:	46bd      	mov	sp, r7
87800544:	f85d 7b04 	ldr.w	r7, [sp], #4
87800548:	4770      	bx	lr
8780054a:	bf00      	nop

8780054c <delayus>:
8780054c:	b480      	push	{r7}
8780054e:	b087      	sub	sp, #28
87800550:	af00      	add	r7, sp, #0
87800552:	6078      	str	r0, [r7, #4]
87800554:	2300      	movs	r3, #0
87800556:	613b      	str	r3, [r7, #16]
87800558:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780055c:	f2c0 2309 	movt	r3, #521	; 0x209
87800560:	6a5b      	ldr	r3, [r3, #36]	; 0x24
87800562:	617b      	str	r3, [r7, #20]
87800564:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800568:	f2c0 2309 	movt	r3, #521	; 0x209
8780056c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
8780056e:	60fb      	str	r3, [r7, #12]
87800570:	68fa      	ldr	r2, [r7, #12]
87800572:	697b      	ldr	r3, [r7, #20]
87800574:	429a      	cmp	r2, r3
87800576:	d018      	beq.n	878005aa <delayus+0x5e>
87800578:	68fa      	ldr	r2, [r7, #12]
8780057a:	697b      	ldr	r3, [r7, #20]
8780057c:	429a      	cmp	r2, r3
8780057e:	d906      	bls.n	8780058e <delayus+0x42>
87800580:	68fa      	ldr	r2, [r7, #12]
87800582:	697b      	ldr	r3, [r7, #20]
87800584:	1ad3      	subs	r3, r2, r3
87800586:	693a      	ldr	r2, [r7, #16]
87800588:	4413      	add	r3, r2
8780058a:	613b      	str	r3, [r7, #16]
8780058c:	e006      	b.n	8780059c <delayus+0x50>
8780058e:	68fa      	ldr	r2, [r7, #12]
87800590:	697b      	ldr	r3, [r7, #20]
87800592:	1ad2      	subs	r2, r2, r3
87800594:	693b      	ldr	r3, [r7, #16]
87800596:	4413      	add	r3, r2
87800598:	3b01      	subs	r3, #1
8780059a:	613b      	str	r3, [r7, #16]
8780059c:	68fb      	ldr	r3, [r7, #12]
8780059e:	617b      	str	r3, [r7, #20]
878005a0:	693a      	ldr	r2, [r7, #16]
878005a2:	687b      	ldr	r3, [r7, #4]
878005a4:	429a      	cmp	r2, r3
878005a6:	d300      	bcc.n	878005aa <delayus+0x5e>
878005a8:	e000      	b.n	878005ac <delayus+0x60>
878005aa:	e7db      	b.n	87800564 <delayus+0x18>
878005ac:	371c      	adds	r7, #28
878005ae:	46bd      	mov	sp, r7
878005b0:	f85d 7b04 	ldr.w	r7, [sp], #4
878005b4:	4770      	bx	lr
878005b6:	bf00      	nop

878005b8 <delayms>:
878005b8:	b580      	push	{r7, lr}
878005ba:	b084      	sub	sp, #16
878005bc:	af00      	add	r7, sp, #0
878005be:	6078      	str	r0, [r7, #4]
878005c0:	2300      	movs	r3, #0
878005c2:	60fb      	str	r3, [r7, #12]
878005c4:	2300      	movs	r3, #0
878005c6:	60fb      	str	r3, [r7, #12]
878005c8:	e006      	b.n	878005d8 <delayms+0x20>
878005ca:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
878005ce:	f7ff ffbd 	bl	8780054c <delayus>
878005d2:	68fb      	ldr	r3, [r7, #12]
878005d4:	3301      	adds	r3, #1
878005d6:	60fb      	str	r3, [r7, #12]
878005d8:	68fa      	ldr	r2, [r7, #12]
878005da:	687b      	ldr	r3, [r7, #4]
878005dc:	429a      	cmp	r2, r3
878005de:	d3f4      	bcc.n	878005ca <delayms+0x12>
878005e0:	3710      	adds	r7, #16
878005e2:	46bd      	mov	sp, r7
878005e4:	bd80      	pop	{r7, pc}
878005e6:	bf00      	nop

878005e8 <delay_short>:
878005e8:	b480      	push	{r7}
878005ea:	b083      	sub	sp, #12
878005ec:	af00      	add	r7, sp, #0
878005ee:	6078      	str	r0, [r7, #4]
878005f0:	bf00      	nop
878005f2:	687b      	ldr	r3, [r7, #4]
878005f4:	1e5a      	subs	r2, r3, #1
878005f6:	607a      	str	r2, [r7, #4]
878005f8:	2b00      	cmp	r3, #0
878005fa:	d1fa      	bne.n	878005f2 <delay_short+0xa>
878005fc:	370c      	adds	r7, #12
878005fe:	46bd      	mov	sp, r7
87800600:	f85d 7b04 	ldr.w	r7, [sp], #4
87800604:	4770      	bx	lr
87800606:	bf00      	nop

87800608 <delay>:
87800608:	b580      	push	{r7, lr}
8780060a:	b082      	sub	sp, #8
8780060c:	af00      	add	r7, sp, #0
8780060e:	6078      	str	r0, [r7, #4]
87800610:	e003      	b.n	8780061a <delay+0x12>
87800612:	f240 70ff 	movw	r0, #2047	; 0x7ff
87800616:	f7ff ffe7 	bl	878005e8 <delay_short>
8780061a:	687b      	ldr	r3, [r7, #4]
8780061c:	1e5a      	subs	r2, r3, #1
8780061e:	607a      	str	r2, [r7, #4]
87800620:	2b00      	cmp	r3, #0
87800622:	d1f6      	bne.n	87800612 <delay+0xa>
87800624:	3708      	adds	r7, #8
87800626:	46bd      	mov	sp, r7
87800628:	bd80      	pop	{r7, pc}
8780062a:	bf00      	nop

8780062c <IOMUXC_SetPinMux>:
8780062c:	b480      	push	{r7}
8780062e:	b085      	sub	sp, #20
87800630:	af00      	add	r7, sp, #0
87800632:	60f8      	str	r0, [r7, #12]
87800634:	60b9      	str	r1, [r7, #8]
87800636:	607a      	str	r2, [r7, #4]
87800638:	603b      	str	r3, [r7, #0]
8780063a:	68fb      	ldr	r3, [r7, #12]
8780063c:	68ba      	ldr	r2, [r7, #8]
8780063e:	f002 010f 	and.w	r1, r2, #15
87800642:	69fa      	ldr	r2, [r7, #28]
87800644:	0112      	lsls	r2, r2, #4
87800646:	f002 0210 	and.w	r2, r2, #16
8780064a:	430a      	orrs	r2, r1
8780064c:	601a      	str	r2, [r3, #0]
8780064e:	687b      	ldr	r3, [r7, #4]
87800650:	2b00      	cmp	r3, #0
87800652:	d004      	beq.n	8780065e <IOMUXC_SetPinMux+0x32>
87800654:	687b      	ldr	r3, [r7, #4]
87800656:	683a      	ldr	r2, [r7, #0]
87800658:	f002 0207 	and.w	r2, r2, #7
8780065c:	601a      	str	r2, [r3, #0]
8780065e:	3714      	adds	r7, #20
87800660:	46bd      	mov	sp, r7
87800662:	f85d 7b04 	ldr.w	r7, [sp], #4
87800666:	4770      	bx	lr

87800668 <IOMUXC_SetPinConfig>:
87800668:	b480      	push	{r7}
8780066a:	b085      	sub	sp, #20
8780066c:	af00      	add	r7, sp, #0
8780066e:	60f8      	str	r0, [r7, #12]
87800670:	60b9      	str	r1, [r7, #8]
87800672:	607a      	str	r2, [r7, #4]
87800674:	603b      	str	r3, [r7, #0]
87800676:	69bb      	ldr	r3, [r7, #24]
87800678:	2b00      	cmp	r3, #0
8780067a:	d002      	beq.n	87800682 <IOMUXC_SetPinConfig+0x1a>
8780067c:	69bb      	ldr	r3, [r7, #24]
8780067e:	69fa      	ldr	r2, [r7, #28]
87800680:	601a      	str	r2, [r3, #0]
87800682:	3714      	adds	r7, #20
87800684:	46bd      	mov	sp, r7
87800686:	f85d 7b04 	ldr.w	r7, [sp], #4
8780068a:	4770      	bx	lr

8780068c <beep_init>:
8780068c:	b580      	push	{r7, lr}
8780068e:	b082      	sub	sp, #8
87800690:	af02      	add	r7, sp, #8
87800692:	2300      	movs	r3, #0
87800694:	9301      	str	r3, [sp, #4]
87800696:	2350      	movs	r3, #80	; 0x50
87800698:	f2c0 2329 	movt	r3, #553	; 0x229
8780069c:	9300      	str	r3, [sp, #0]
8780069e:	2300      	movs	r3, #0
878006a0:	2200      	movs	r2, #0
878006a2:	2105      	movs	r1, #5
878006a4:	200c      	movs	r0, #12
878006a6:	f2c0 2029 	movt	r0, #553	; 0x229
878006aa:	f7ff ffbf 	bl	8780062c <IOMUXC_SetPinMux>
878006ae:	f241 03b0 	movw	r3, #4272	; 0x10b0
878006b2:	9301      	str	r3, [sp, #4]
878006b4:	2350      	movs	r3, #80	; 0x50
878006b6:	f2c0 2329 	movt	r3, #553	; 0x229
878006ba:	9300      	str	r3, [sp, #0]
878006bc:	2300      	movs	r3, #0
878006be:	2200      	movs	r2, #0
878006c0:	2105      	movs	r1, #5
878006c2:	200c      	movs	r0, #12
878006c4:	f2c0 2029 	movt	r0, #553	; 0x229
878006c8:	f7ff ffce 	bl	87800668 <IOMUXC_SetPinConfig>
878006cc:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878006d0:	f2c0 230a 	movt	r3, #522	; 0x20a
878006d4:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878006d8:	f2c0 220a 	movt	r2, #522	; 0x20a
878006dc:	6852      	ldr	r2, [r2, #4]
878006de:	f042 0202 	orr.w	r2, r2, #2
878006e2:	605a      	str	r2, [r3, #4]
878006e4:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878006e8:	f2c0 230a 	movt	r3, #522	; 0x20a
878006ec:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878006f0:	f2c0 220a 	movt	r2, #522	; 0x20a
878006f4:	6812      	ldr	r2, [r2, #0]
878006f6:	f042 0202 	orr.w	r2, r2, #2
878006fa:	601a      	str	r2, [r3, #0]
878006fc:	46bd      	mov	sp, r7
878006fe:	bd80      	pop	{r7, pc}

87800700 <beep_switch>:
87800700:	b480      	push	{r7}
87800702:	b083      	sub	sp, #12
87800704:	af00      	add	r7, sp, #0
87800706:	6078      	str	r0, [r7, #4]
87800708:	687b      	ldr	r3, [r7, #4]
8780070a:	2b01      	cmp	r3, #1
8780070c:	d10c      	bne.n	87800728 <beep_switch+0x28>
8780070e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800712:	f2c0 230a 	movt	r3, #522	; 0x20a
87800716:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780071a:	f2c0 220a 	movt	r2, #522	; 0x20a
8780071e:	6812      	ldr	r2, [r2, #0]
87800720:	f022 0202 	bic.w	r2, r2, #2
87800724:	601a      	str	r2, [r3, #0]
87800726:	e00e      	b.n	87800746 <beep_switch+0x46>
87800728:	687b      	ldr	r3, [r7, #4]
8780072a:	2b00      	cmp	r3, #0
8780072c:	d10b      	bne.n	87800746 <beep_switch+0x46>
8780072e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800732:	f2c0 230a 	movt	r3, #522	; 0x20a
87800736:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780073a:	f2c0 220a 	movt	r2, #522	; 0x20a
8780073e:	6812      	ldr	r2, [r2, #0]
87800740:	f042 0202 	orr.w	r2, r2, #2
87800744:	601a      	str	r2, [r3, #0]
87800746:	370c      	adds	r7, #12
87800748:	46bd      	mov	sp, r7
8780074a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780074e:	4770      	bx	lr

87800750 <IOMUXC_SetPinMux>:
87800750:	b480      	push	{r7}
87800752:	b085      	sub	sp, #20
87800754:	af00      	add	r7, sp, #0
87800756:	60f8      	str	r0, [r7, #12]
87800758:	60b9      	str	r1, [r7, #8]
8780075a:	607a      	str	r2, [r7, #4]
8780075c:	603b      	str	r3, [r7, #0]
8780075e:	68fb      	ldr	r3, [r7, #12]
87800760:	68ba      	ldr	r2, [r7, #8]
87800762:	f002 010f 	and.w	r1, r2, #15
87800766:	69fa      	ldr	r2, [r7, #28]
87800768:	0112      	lsls	r2, r2, #4
8780076a:	f002 0210 	and.w	r2, r2, #16
8780076e:	430a      	orrs	r2, r1
87800770:	601a      	str	r2, [r3, #0]
87800772:	687b      	ldr	r3, [r7, #4]
87800774:	2b00      	cmp	r3, #0
87800776:	d004      	beq.n	87800782 <IOMUXC_SetPinMux+0x32>
87800778:	687b      	ldr	r3, [r7, #4]
8780077a:	683a      	ldr	r2, [r7, #0]
8780077c:	f002 0207 	and.w	r2, r2, #7
87800780:	601a      	str	r2, [r3, #0]
87800782:	3714      	adds	r7, #20
87800784:	46bd      	mov	sp, r7
87800786:	f85d 7b04 	ldr.w	r7, [sp], #4
8780078a:	4770      	bx	lr

8780078c <IOMUXC_SetPinConfig>:
8780078c:	b480      	push	{r7}
8780078e:	b085      	sub	sp, #20
87800790:	af00      	add	r7, sp, #0
87800792:	60f8      	str	r0, [r7, #12]
87800794:	60b9      	str	r1, [r7, #8]
87800796:	607a      	str	r2, [r7, #4]
87800798:	603b      	str	r3, [r7, #0]
8780079a:	69bb      	ldr	r3, [r7, #24]
8780079c:	2b00      	cmp	r3, #0
8780079e:	d002      	beq.n	878007a6 <IOMUXC_SetPinConfig+0x1a>
878007a0:	69bb      	ldr	r3, [r7, #24]
878007a2:	69fa      	ldr	r2, [r7, #28]
878007a4:	601a      	str	r2, [r3, #0]
878007a6:	3714      	adds	r7, #20
878007a8:	46bd      	mov	sp, r7
878007aa:	f85d 7b04 	ldr.w	r7, [sp], #4
878007ae:	4770      	bx	lr

878007b0 <key_init>:
878007b0:	b580      	push	{r7, lr}
878007b2:	b086      	sub	sp, #24
878007b4:	af02      	add	r7, sp, #8
878007b6:	2300      	movs	r3, #0
878007b8:	9301      	str	r3, [sp, #4]
878007ba:	f44f 7346 	mov.w	r3, #792	; 0x318
878007be:	f2c0 230e 	movt	r3, #526	; 0x20e
878007c2:	9300      	str	r3, [sp, #0]
878007c4:	2300      	movs	r3, #0
878007c6:	2200      	movs	r2, #0
878007c8:	2105      	movs	r1, #5
878007ca:	208c      	movs	r0, #140	; 0x8c
878007cc:	f2c0 200e 	movt	r0, #526	; 0x20e
878007d0:	f7ff ffbe 	bl	87800750 <IOMUXC_SetPinMux>
878007d4:	f24f 0380 	movw	r3, #61568	; 0xf080
878007d8:	9301      	str	r3, [sp, #4]
878007da:	f44f 7346 	mov.w	r3, #792	; 0x318
878007de:	f2c0 230e 	movt	r3, #526	; 0x20e
878007e2:	9300      	str	r3, [sp, #0]
878007e4:	2300      	movs	r3, #0
878007e6:	2200      	movs	r2, #0
878007e8:	2105      	movs	r1, #5
878007ea:	208c      	movs	r0, #140	; 0x8c
878007ec:	f2c0 200e 	movt	r0, #526	; 0x20e
878007f0:	f7ff ffcc 	bl	8780078c <IOMUXC_SetPinConfig>
878007f4:	2300      	movs	r3, #0
878007f6:	607b      	str	r3, [r7, #4]
878007f8:	1d3b      	adds	r3, r7, #4
878007fa:	461a      	mov	r2, r3
878007fc:	2112      	movs	r1, #18
878007fe:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800802:	f2c0 2009 	movt	r0, #521	; 0x209
87800806:	f000 f847 	bl	87800898 <gpio_init>
8780080a:	3710      	adds	r7, #16
8780080c:	46bd      	mov	sp, r7
8780080e:	bd80      	pop	{r7, pc}

87800810 <key_getvalue>:
87800810:	b580      	push	{r7, lr}
87800812:	b082      	sub	sp, #8
87800814:	af00      	add	r7, sp, #0
87800816:	2300      	movs	r3, #0
87800818:	607b      	str	r3, [r7, #4]
8780081a:	f641 3364 	movw	r3, #7012	; 0x1b64
8780081e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800822:	781b      	ldrb	r3, [r3, #0]
87800824:	2b01      	cmp	r3, #1
87800826:	d120      	bne.n	8780086a <key_getvalue+0x5a>
87800828:	2112      	movs	r1, #18
8780082a:	f44f 4040 	mov.w	r0, #49152	; 0xc000
8780082e:	f2c0 2009 	movt	r0, #521	; 0x209
87800832:	f000 f86b 	bl	8780090c <gpio_pinread>
87800836:	4603      	mov	r3, r0
87800838:	2b00      	cmp	r3, #0
8780083a:	d116      	bne.n	8780086a <key_getvalue+0x5a>
8780083c:	200a      	movs	r0, #10
8780083e:	f7ff fee3 	bl	87800608 <delay>
87800842:	f641 3364 	movw	r3, #7012	; 0x1b64
87800846:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780084a:	2200      	movs	r2, #0
8780084c:	701a      	strb	r2, [r3, #0]
8780084e:	2112      	movs	r1, #18
87800850:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800854:	f2c0 2009 	movt	r0, #521	; 0x209
87800858:	f000 f858 	bl	8780090c <gpio_pinread>
8780085c:	4603      	mov	r3, r0
8780085e:	2b00      	cmp	r3, #0
87800860:	d102      	bne.n	87800868 <key_getvalue+0x58>
87800862:	2301      	movs	r3, #1
87800864:	607b      	str	r3, [r7, #4]
87800866:	e012      	b.n	8780088e <key_getvalue+0x7e>
87800868:	e011      	b.n	8780088e <key_getvalue+0x7e>
8780086a:	2112      	movs	r1, #18
8780086c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800870:	f2c0 2009 	movt	r0, #521	; 0x209
87800874:	f000 f84a 	bl	8780090c <gpio_pinread>
87800878:	4603      	mov	r3, r0
8780087a:	2b01      	cmp	r3, #1
8780087c:	d107      	bne.n	8780088e <key_getvalue+0x7e>
8780087e:	2300      	movs	r3, #0
87800880:	607b      	str	r3, [r7, #4]
87800882:	f641 3364 	movw	r3, #7012	; 0x1b64
87800886:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780088a:	2201      	movs	r2, #1
8780088c:	701a      	strb	r2, [r3, #0]
8780088e:	687b      	ldr	r3, [r7, #4]
87800890:	4618      	mov	r0, r3
87800892:	3708      	adds	r7, #8
87800894:	46bd      	mov	sp, r7
87800896:	bd80      	pop	{r7, pc}

87800898 <gpio_init>:
87800898:	b580      	push	{r7, lr}
8780089a:	b084      	sub	sp, #16
8780089c:	af00      	add	r7, sp, #0
8780089e:	60f8      	str	r0, [r7, #12]
878008a0:	60b9      	str	r1, [r7, #8]
878008a2:	607a      	str	r2, [r7, #4]
878008a4:	68fb      	ldr	r3, [r7, #12]
878008a6:	695a      	ldr	r2, [r3, #20]
878008a8:	2101      	movs	r1, #1
878008aa:	68bb      	ldr	r3, [r7, #8]
878008ac:	fa01 f303 	lsl.w	r3, r1, r3
878008b0:	43db      	mvns	r3, r3
878008b2:	401a      	ands	r2, r3
878008b4:	68fb      	ldr	r3, [r7, #12]
878008b6:	615a      	str	r2, [r3, #20]
878008b8:	687b      	ldr	r3, [r7, #4]
878008ba:	681b      	ldr	r3, [r3, #0]
878008bc:	2b00      	cmp	r3, #0
878008be:	d10a      	bne.n	878008d6 <gpio_init+0x3e>
878008c0:	68fb      	ldr	r3, [r7, #12]
878008c2:	685b      	ldr	r3, [r3, #4]
878008c4:	2101      	movs	r1, #1
878008c6:	68ba      	ldr	r2, [r7, #8]
878008c8:	fa01 f202 	lsl.w	r2, r1, r2
878008cc:	43d2      	mvns	r2, r2
878008ce:	401a      	ands	r2, r3
878008d0:	68fb      	ldr	r3, [r7, #12]
878008d2:	605a      	str	r2, [r3, #4]
878008d4:	e00f      	b.n	878008f6 <gpio_init+0x5e>
878008d6:	68fb      	ldr	r3, [r7, #12]
878008d8:	685b      	ldr	r3, [r3, #4]
878008da:	2101      	movs	r1, #1
878008dc:	68ba      	ldr	r2, [r7, #8]
878008de:	fa01 f202 	lsl.w	r2, r1, r2
878008e2:	431a      	orrs	r2, r3
878008e4:	68fb      	ldr	r3, [r7, #12]
878008e6:	605a      	str	r2, [r3, #4]
878008e8:	687b      	ldr	r3, [r7, #4]
878008ea:	791b      	ldrb	r3, [r3, #4]
878008ec:	461a      	mov	r2, r3
878008ee:	68b9      	ldr	r1, [r7, #8]
878008f0:	68f8      	ldr	r0, [r7, #12]
878008f2:	f000 f81d 	bl	87800930 <gpio_pinwrite>
878008f6:	68b9      	ldr	r1, [r7, #8]
878008f8:	687b      	ldr	r3, [r7, #4]
878008fa:	689b      	ldr	r3, [r3, #8]
878008fc:	461a      	mov	r2, r3
878008fe:	68f8      	ldr	r0, [r7, #12]
87800900:	f000 f838 	bl	87800974 <gpio_intconfig>
87800904:	3710      	adds	r7, #16
87800906:	46bd      	mov	sp, r7
87800908:	bd80      	pop	{r7, pc}
8780090a:	bf00      	nop

8780090c <gpio_pinread>:
8780090c:	b480      	push	{r7}
8780090e:	b083      	sub	sp, #12
87800910:	af00      	add	r7, sp, #0
87800912:	6078      	str	r0, [r7, #4]
87800914:	6039      	str	r1, [r7, #0]
87800916:	687b      	ldr	r3, [r7, #4]
87800918:	681a      	ldr	r2, [r3, #0]
8780091a:	683b      	ldr	r3, [r7, #0]
8780091c:	fa22 f303 	lsr.w	r3, r2, r3
87800920:	f003 0301 	and.w	r3, r3, #1
87800924:	4618      	mov	r0, r3
87800926:	370c      	adds	r7, #12
87800928:	46bd      	mov	sp, r7
8780092a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780092e:	4770      	bx	lr

87800930 <gpio_pinwrite>:
87800930:	b480      	push	{r7}
87800932:	b085      	sub	sp, #20
87800934:	af00      	add	r7, sp, #0
87800936:	60f8      	str	r0, [r7, #12]
87800938:	60b9      	str	r1, [r7, #8]
8780093a:	607a      	str	r2, [r7, #4]
8780093c:	687b      	ldr	r3, [r7, #4]
8780093e:	2b00      	cmp	r3, #0
87800940:	d10a      	bne.n	87800958 <gpio_pinwrite+0x28>
87800942:	68fb      	ldr	r3, [r7, #12]
87800944:	681a      	ldr	r2, [r3, #0]
87800946:	2101      	movs	r1, #1
87800948:	68bb      	ldr	r3, [r7, #8]
8780094a:	fa01 f303 	lsl.w	r3, r1, r3
8780094e:	43db      	mvns	r3, r3
87800950:	401a      	ands	r2, r3
87800952:	68fb      	ldr	r3, [r7, #12]
87800954:	601a      	str	r2, [r3, #0]
87800956:	e008      	b.n	8780096a <gpio_pinwrite+0x3a>
87800958:	68fb      	ldr	r3, [r7, #12]
8780095a:	681a      	ldr	r2, [r3, #0]
8780095c:	2101      	movs	r1, #1
8780095e:	68bb      	ldr	r3, [r7, #8]
87800960:	fa01 f303 	lsl.w	r3, r1, r3
87800964:	431a      	orrs	r2, r3
87800966:	68fb      	ldr	r3, [r7, #12]
87800968:	601a      	str	r2, [r3, #0]
8780096a:	3714      	adds	r7, #20
8780096c:	46bd      	mov	sp, r7
8780096e:	f85d 7b04 	ldr.w	r7, [sp], #4
87800972:	4770      	bx	lr

87800974 <gpio_intconfig>:
87800974:	b480      	push	{r7}
87800976:	b087      	sub	sp, #28
87800978:	af00      	add	r7, sp, #0
8780097a:	60f8      	str	r0, [r7, #12]
8780097c:	60b9      	str	r1, [r7, #8]
8780097e:	607a      	str	r2, [r7, #4]
87800980:	68bb      	ldr	r3, [r7, #8]
87800982:	613b      	str	r3, [r7, #16]
87800984:	68fb      	ldr	r3, [r7, #12]
87800986:	69da      	ldr	r2, [r3, #28]
87800988:	68bb      	ldr	r3, [r7, #8]
8780098a:	2101      	movs	r1, #1
8780098c:	fa01 f303 	lsl.w	r3, r1, r3
87800990:	43db      	mvns	r3, r3
87800992:	401a      	ands	r2, r3
87800994:	68fb      	ldr	r3, [r7, #12]
87800996:	61da      	str	r2, [r3, #28]
87800998:	68bb      	ldr	r3, [r7, #8]
8780099a:	2b0f      	cmp	r3, #15
8780099c:	d803      	bhi.n	878009a6 <gpio_intconfig+0x32>
8780099e:	68fb      	ldr	r3, [r7, #12]
878009a0:	330c      	adds	r3, #12
878009a2:	617b      	str	r3, [r7, #20]
878009a4:	e005      	b.n	878009b2 <gpio_intconfig+0x3e>
878009a6:	68fb      	ldr	r3, [r7, #12]
878009a8:	3310      	adds	r3, #16
878009aa:	617b      	str	r3, [r7, #20]
878009ac:	693b      	ldr	r3, [r7, #16]
878009ae:	3b10      	subs	r3, #16
878009b0:	613b      	str	r3, [r7, #16]
878009b2:	687b      	ldr	r3, [r7, #4]
878009b4:	3b01      	subs	r3, #1
878009b6:	2b04      	cmp	r3, #4
878009b8:	d851      	bhi.n	87800a5e <gpio_intconfig+0xea>
878009ba:	a201      	add	r2, pc, #4	; (adr r2, 878009c0 <gpio_intconfig+0x4c>)
878009bc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
878009c0:	878009d5 			; <UNDEFINED> instruction: 0x878009d5
878009c4:	878009ed 	strhi	r0, [r0, sp, ror #19]
878009c8:	87800a11 	usada8hi	r0, r1, sl, r0
878009cc:	87800a35 			; <UNDEFINED> instruction: 0x87800a35
878009d0:	87800a4b 	strhi	r0, [r0, fp, asr #20]
878009d4:	697b      	ldr	r3, [r7, #20]
878009d6:	681a      	ldr	r2, [r3, #0]
878009d8:	693b      	ldr	r3, [r7, #16]
878009da:	005b      	lsls	r3, r3, #1
878009dc:	4619      	mov	r1, r3
878009de:	2303      	movs	r3, #3
878009e0:	408b      	lsls	r3, r1
878009e2:	43db      	mvns	r3, r3
878009e4:	401a      	ands	r2, r3
878009e6:	697b      	ldr	r3, [r7, #20]
878009e8:	601a      	str	r2, [r3, #0]
878009ea:	e039      	b.n	87800a60 <gpio_intconfig+0xec>
878009ec:	697b      	ldr	r3, [r7, #20]
878009ee:	681a      	ldr	r2, [r3, #0]
878009f0:	693b      	ldr	r3, [r7, #16]
878009f2:	005b      	lsls	r3, r3, #1
878009f4:	4619      	mov	r1, r3
878009f6:	2303      	movs	r3, #3
878009f8:	408b      	lsls	r3, r1
878009fa:	43db      	mvns	r3, r3
878009fc:	401a      	ands	r2, r3
878009fe:	693b      	ldr	r3, [r7, #16]
87800a00:	005b      	lsls	r3, r3, #1
87800a02:	4619      	mov	r1, r3
87800a04:	2301      	movs	r3, #1
87800a06:	408b      	lsls	r3, r1
87800a08:	431a      	orrs	r2, r3
87800a0a:	697b      	ldr	r3, [r7, #20]
87800a0c:	601a      	str	r2, [r3, #0]
87800a0e:	e027      	b.n	87800a60 <gpio_intconfig+0xec>
87800a10:	697b      	ldr	r3, [r7, #20]
87800a12:	681a      	ldr	r2, [r3, #0]
87800a14:	693b      	ldr	r3, [r7, #16]
87800a16:	005b      	lsls	r3, r3, #1
87800a18:	4619      	mov	r1, r3
87800a1a:	2303      	movs	r3, #3
87800a1c:	408b      	lsls	r3, r1
87800a1e:	43db      	mvns	r3, r3
87800a20:	401a      	ands	r2, r3
87800a22:	693b      	ldr	r3, [r7, #16]
87800a24:	005b      	lsls	r3, r3, #1
87800a26:	4619      	mov	r1, r3
87800a28:	2302      	movs	r3, #2
87800a2a:	408b      	lsls	r3, r1
87800a2c:	431a      	orrs	r2, r3
87800a2e:	697b      	ldr	r3, [r7, #20]
87800a30:	601a      	str	r2, [r3, #0]
87800a32:	e015      	b.n	87800a60 <gpio_intconfig+0xec>
87800a34:	697b      	ldr	r3, [r7, #20]
87800a36:	681a      	ldr	r2, [r3, #0]
87800a38:	693b      	ldr	r3, [r7, #16]
87800a3a:	005b      	lsls	r3, r3, #1
87800a3c:	4619      	mov	r1, r3
87800a3e:	2303      	movs	r3, #3
87800a40:	408b      	lsls	r3, r1
87800a42:	431a      	orrs	r2, r3
87800a44:	697b      	ldr	r3, [r7, #20]
87800a46:	601a      	str	r2, [r3, #0]
87800a48:	e00a      	b.n	87800a60 <gpio_intconfig+0xec>
87800a4a:	68fb      	ldr	r3, [r7, #12]
87800a4c:	69da      	ldr	r2, [r3, #28]
87800a4e:	68bb      	ldr	r3, [r7, #8]
87800a50:	2101      	movs	r1, #1
87800a52:	fa01 f303 	lsl.w	r3, r1, r3
87800a56:	431a      	orrs	r2, r3
87800a58:	68fb      	ldr	r3, [r7, #12]
87800a5a:	61da      	str	r2, [r3, #28]
87800a5c:	e000      	b.n	87800a60 <gpio_intconfig+0xec>
87800a5e:	bf00      	nop
87800a60:	371c      	adds	r7, #28
87800a62:	46bd      	mov	sp, r7
87800a64:	f85d 7b04 	ldr.w	r7, [sp], #4
87800a68:	4770      	bx	lr
87800a6a:	bf00      	nop

87800a6c <gpio_enableint>:
87800a6c:	b480      	push	{r7}
87800a6e:	b083      	sub	sp, #12
87800a70:	af00      	add	r7, sp, #0
87800a72:	6078      	str	r0, [r7, #4]
87800a74:	6039      	str	r1, [r7, #0]
87800a76:	687b      	ldr	r3, [r7, #4]
87800a78:	695b      	ldr	r3, [r3, #20]
87800a7a:	683a      	ldr	r2, [r7, #0]
87800a7c:	2101      	movs	r1, #1
87800a7e:	fa01 f202 	lsl.w	r2, r1, r2
87800a82:	431a      	orrs	r2, r3
87800a84:	687b      	ldr	r3, [r7, #4]
87800a86:	615a      	str	r2, [r3, #20]
87800a88:	370c      	adds	r7, #12
87800a8a:	46bd      	mov	sp, r7
87800a8c:	f85d 7b04 	ldr.w	r7, [sp], #4
87800a90:	4770      	bx	lr
87800a92:	bf00      	nop

87800a94 <gpio_disableint>:
87800a94:	b480      	push	{r7}
87800a96:	b083      	sub	sp, #12
87800a98:	af00      	add	r7, sp, #0
87800a9a:	6078      	str	r0, [r7, #4]
87800a9c:	6039      	str	r1, [r7, #0]
87800a9e:	687b      	ldr	r3, [r7, #4]
87800aa0:	695b      	ldr	r3, [r3, #20]
87800aa2:	683a      	ldr	r2, [r7, #0]
87800aa4:	2101      	movs	r1, #1
87800aa6:	fa01 f202 	lsl.w	r2, r1, r2
87800aaa:	43d2      	mvns	r2, r2
87800aac:	401a      	ands	r2, r3
87800aae:	687b      	ldr	r3, [r7, #4]
87800ab0:	615a      	str	r2, [r3, #20]
87800ab2:	370c      	adds	r7, #12
87800ab4:	46bd      	mov	sp, r7
87800ab6:	f85d 7b04 	ldr.w	r7, [sp], #4
87800aba:	4770      	bx	lr

87800abc <gpio_clearintflags>:
87800abc:	b480      	push	{r7}
87800abe:	b083      	sub	sp, #12
87800ac0:	af00      	add	r7, sp, #0
87800ac2:	6078      	str	r0, [r7, #4]
87800ac4:	6039      	str	r1, [r7, #0]
87800ac6:	687b      	ldr	r3, [r7, #4]
87800ac8:	699b      	ldr	r3, [r3, #24]
87800aca:	683a      	ldr	r2, [r7, #0]
87800acc:	2101      	movs	r1, #1
87800ace:	fa01 f202 	lsl.w	r2, r1, r2
87800ad2:	431a      	orrs	r2, r3
87800ad4:	687b      	ldr	r3, [r7, #4]
87800ad6:	619a      	str	r2, [r3, #24]
87800ad8:	370c      	adds	r7, #12
87800ada:	46bd      	mov	sp, r7
87800adc:	f85d 7b04 	ldr.w	r7, [sp], #4
87800ae0:	4770      	bx	lr
87800ae2:	bf00      	nop

87800ae4 <int_init>:
87800ae4:	b580      	push	{r7, lr}
87800ae6:	b086      	sub	sp, #24
87800ae8:	af00      	add	r7, sp, #0
87800aea:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800aee:	617b      	str	r3, [r7, #20]
87800af0:	697b      	ldr	r3, [r7, #20]
87800af2:	0c1b      	lsrs	r3, r3, #16
87800af4:	041b      	lsls	r3, r3, #16
87800af6:	613b      	str	r3, [r7, #16]
87800af8:	693b      	ldr	r3, [r7, #16]
87800afa:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
87800afe:	3304      	adds	r3, #4
87800b00:	681b      	ldr	r3, [r3, #0]
87800b02:	f003 031f 	and.w	r3, r3, #31
87800b06:	3301      	adds	r3, #1
87800b08:	60fb      	str	r3, [r7, #12]
87800b0a:	2300      	movs	r3, #0
87800b0c:	60bb      	str	r3, [r7, #8]
87800b0e:	e00a      	b.n	87800b26 <int_init+0x42>
87800b10:	693b      	ldr	r3, [r7, #16]
87800b12:	68ba      	ldr	r2, [r7, #8]
87800b14:	f502 628c 	add.w	r2, r2, #1120	; 0x460
87800b18:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
87800b1c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800b20:	68bb      	ldr	r3, [r7, #8]
87800b22:	3301      	adds	r3, #1
87800b24:	60bb      	str	r3, [r7, #8]
87800b26:	68fa      	ldr	r2, [r7, #12]
87800b28:	68bb      	ldr	r3, [r7, #8]
87800b2a:	429a      	cmp	r2, r3
87800b2c:	d8f0      	bhi.n	87800b10 <int_init+0x2c>
87800b2e:	693b      	ldr	r3, [r7, #16]
87800b30:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800b34:	3304      	adds	r3, #4
87800b36:	22f8      	movs	r2, #248	; 0xf8
87800b38:	601a      	str	r2, [r3, #0]
87800b3a:	693b      	ldr	r3, [r7, #16]
87800b3c:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800b40:	3308      	adds	r3, #8
87800b42:	2202      	movs	r2, #2
87800b44:	601a      	str	r2, [r3, #0]
87800b46:	693b      	ldr	r3, [r7, #16]
87800b48:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
87800b4c:	2201      	movs	r2, #1
87800b4e:	601a      	str	r2, [r3, #0]
87800b50:	693b      	ldr	r3, [r7, #16]
87800b52:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800b56:	2201      	movs	r2, #1
87800b58:	601a      	str	r2, [r3, #0]
87800b5a:	f000 f80b 	bl	87800b74 <system_irqtable_init>
87800b5e:	2300      	movs	r3, #0
87800b60:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800b64:	607b      	str	r3, [r7, #4]
87800b66:	687b      	ldr	r3, [r7, #4]
87800b68:	ee0c 3f10 	mcr	15, 0, r3, cr12, cr0, {0}
87800b6c:	3718      	adds	r7, #24
87800b6e:	46bd      	mov	sp, r7
87800b70:	bd80      	pop	{r7, pc}
87800b72:	bf00      	nop

87800b74 <system_irqtable_init>:
87800b74:	b580      	push	{r7, lr}
87800b76:	b082      	sub	sp, #8
87800b78:	af00      	add	r7, sp, #0
87800b7a:	2300      	movs	r3, #0
87800b7c:	607b      	str	r3, [r7, #4]
87800b7e:	f641 3368 	movw	r3, #7016	; 0x1b68
87800b82:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800b86:	2200      	movs	r2, #0
87800b88:	601a      	str	r2, [r3, #0]
87800b8a:	2300      	movs	r3, #0
87800b8c:	607b      	str	r3, [r7, #4]
87800b8e:	e00b      	b.n	87800ba8 <system_irqtable_init+0x34>
87800b90:	687b      	ldr	r3, [r7, #4]
87800b92:	2200      	movs	r2, #0
87800b94:	f640 4165 	movw	r1, #3173	; 0xc65
87800b98:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800b9c:	4618      	mov	r0, r3
87800b9e:	f000 f809 	bl	87800bb4 <system_register_irqhandler>
87800ba2:	687b      	ldr	r3, [r7, #4]
87800ba4:	3301      	adds	r3, #1
87800ba6:	607b      	str	r3, [r7, #4]
87800ba8:	687b      	ldr	r3, [r7, #4]
87800baa:	2b9f      	cmp	r3, #159	; 0x9f
87800bac:	d9f0      	bls.n	87800b90 <system_irqtable_init+0x1c>
87800bae:	3708      	adds	r7, #8
87800bb0:	46bd      	mov	sp, r7
87800bb2:	bd80      	pop	{r7, pc}

87800bb4 <system_register_irqhandler>:
87800bb4:	b480      	push	{r7}
87800bb6:	b085      	sub	sp, #20
87800bb8:	af00      	add	r7, sp, #0
87800bba:	60f8      	str	r0, [r7, #12]
87800bbc:	60b9      	str	r1, [r7, #8]
87800bbe:	607a      	str	r2, [r7, #4]
87800bc0:	f641 336c 	movw	r3, #7020	; 0x1b6c
87800bc4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800bc8:	68fa      	ldr	r2, [r7, #12]
87800bca:	68b9      	ldr	r1, [r7, #8]
87800bcc:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
87800bd0:	f641 326c 	movw	r2, #7020	; 0x1b6c
87800bd4:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800bd8:	68fb      	ldr	r3, [r7, #12]
87800bda:	00db      	lsls	r3, r3, #3
87800bdc:	4413      	add	r3, r2
87800bde:	687a      	ldr	r2, [r7, #4]
87800be0:	605a      	str	r2, [r3, #4]
87800be2:	3714      	adds	r7, #20
87800be4:	46bd      	mov	sp, r7
87800be6:	f85d 7b04 	ldr.w	r7, [sp], #4
87800bea:	4770      	bx	lr

87800bec <system_irqhandler>:
87800bec:	b590      	push	{r4, r7, lr}
87800bee:	b085      	sub	sp, #20
87800bf0:	af00      	add	r7, sp, #0
87800bf2:	6078      	str	r0, [r7, #4]
87800bf4:	687b      	ldr	r3, [r7, #4]
87800bf6:	f3c3 0309 	ubfx	r3, r3, #0, #10
87800bfa:	60fb      	str	r3, [r7, #12]
87800bfc:	68fb      	ldr	r3, [r7, #12]
87800bfe:	f240 32ff 	movw	r2, #1023	; 0x3ff
87800c02:	4293      	cmp	r3, r2
87800c04:	d002      	beq.n	87800c0c <system_irqhandler+0x20>
87800c06:	68fb      	ldr	r3, [r7, #12]
87800c08:	2b9f      	cmp	r3, #159	; 0x9f
87800c0a:	d900      	bls.n	87800c0e <system_irqhandler+0x22>
87800c0c:	e027      	b.n	87800c5e <system_irqhandler+0x72>
87800c0e:	f641 3368 	movw	r3, #7016	; 0x1b68
87800c12:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c16:	681b      	ldr	r3, [r3, #0]
87800c18:	1c5a      	adds	r2, r3, #1
87800c1a:	f641 3368 	movw	r3, #7016	; 0x1b68
87800c1e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c22:	601a      	str	r2, [r3, #0]
87800c24:	f641 336c 	movw	r3, #7020	; 0x1b6c
87800c28:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c2c:	68fa      	ldr	r2, [r7, #12]
87800c2e:	f853 4032 	ldr.w	r4, [r3, r2, lsl #3]
87800c32:	f641 326c 	movw	r2, #7020	; 0x1b6c
87800c36:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800c3a:	68fb      	ldr	r3, [r7, #12]
87800c3c:	00db      	lsls	r3, r3, #3
87800c3e:	4413      	add	r3, r2
87800c40:	685b      	ldr	r3, [r3, #4]
87800c42:	4619      	mov	r1, r3
87800c44:	68f8      	ldr	r0, [r7, #12]
87800c46:	47a0      	blx	r4
87800c48:	f641 3368 	movw	r3, #7016	; 0x1b68
87800c4c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c50:	681b      	ldr	r3, [r3, #0]
87800c52:	1e5a      	subs	r2, r3, #1
87800c54:	f641 3368 	movw	r3, #7016	; 0x1b68
87800c58:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c5c:	601a      	str	r2, [r3, #0]
87800c5e:	3714      	adds	r7, #20
87800c60:	46bd      	mov	sp, r7
87800c62:	bd90      	pop	{r4, r7, pc}

87800c64 <default_irqhandler>:
87800c64:	b480      	push	{r7}
87800c66:	b083      	sub	sp, #12
87800c68:	af00      	add	r7, sp, #0
87800c6a:	6078      	str	r0, [r7, #4]
87800c6c:	6039      	str	r1, [r7, #0]
87800c6e:	e7fe      	b.n	87800c6e <default_irqhandler+0xa>

87800c70 <IOMUXC_SetPinMux>:
87800c70:	b480      	push	{r7}
87800c72:	b085      	sub	sp, #20
87800c74:	af00      	add	r7, sp, #0
87800c76:	60f8      	str	r0, [r7, #12]
87800c78:	60b9      	str	r1, [r7, #8]
87800c7a:	607a      	str	r2, [r7, #4]
87800c7c:	603b      	str	r3, [r7, #0]
87800c7e:	68fb      	ldr	r3, [r7, #12]
87800c80:	68ba      	ldr	r2, [r7, #8]
87800c82:	f002 010f 	and.w	r1, r2, #15
87800c86:	69fa      	ldr	r2, [r7, #28]
87800c88:	0112      	lsls	r2, r2, #4
87800c8a:	f002 0210 	and.w	r2, r2, #16
87800c8e:	430a      	orrs	r2, r1
87800c90:	601a      	str	r2, [r3, #0]
87800c92:	687b      	ldr	r3, [r7, #4]
87800c94:	2b00      	cmp	r3, #0
87800c96:	d004      	beq.n	87800ca2 <IOMUXC_SetPinMux+0x32>
87800c98:	687b      	ldr	r3, [r7, #4]
87800c9a:	683a      	ldr	r2, [r7, #0]
87800c9c:	f002 0207 	and.w	r2, r2, #7
87800ca0:	601a      	str	r2, [r3, #0]
87800ca2:	3714      	adds	r7, #20
87800ca4:	46bd      	mov	sp, r7
87800ca6:	f85d 7b04 	ldr.w	r7, [sp], #4
87800caa:	4770      	bx	lr

87800cac <IOMUXC_SetPinConfig>:
87800cac:	b480      	push	{r7}
87800cae:	b085      	sub	sp, #20
87800cb0:	af00      	add	r7, sp, #0
87800cb2:	60f8      	str	r0, [r7, #12]
87800cb4:	60b9      	str	r1, [r7, #8]
87800cb6:	607a      	str	r2, [r7, #4]
87800cb8:	603b      	str	r3, [r7, #0]
87800cba:	69bb      	ldr	r3, [r7, #24]
87800cbc:	2b00      	cmp	r3, #0
87800cbe:	d002      	beq.n	87800cc6 <IOMUXC_SetPinConfig+0x1a>
87800cc0:	69bb      	ldr	r3, [r7, #24]
87800cc2:	69fa      	ldr	r2, [r7, #28]
87800cc4:	601a      	str	r2, [r3, #0]
87800cc6:	3714      	adds	r7, #20
87800cc8:	46bd      	mov	sp, r7
87800cca:	f85d 7b04 	ldr.w	r7, [sp], #4
87800cce:	4770      	bx	lr

87800cd0 <exit_init>:
87800cd0:	b580      	push	{r7, lr}
87800cd2:	b088      	sub	sp, #32
87800cd4:	af02      	add	r7, sp, #8
87800cd6:	2300      	movs	r3, #0
87800cd8:	9301      	str	r3, [sp, #4]
87800cda:	f44f 7346 	mov.w	r3, #792	; 0x318
87800cde:	f2c0 230e 	movt	r3, #526	; 0x20e
87800ce2:	9300      	str	r3, [sp, #0]
87800ce4:	2300      	movs	r3, #0
87800ce6:	2200      	movs	r2, #0
87800ce8:	2105      	movs	r1, #5
87800cea:	208c      	movs	r0, #140	; 0x8c
87800cec:	f2c0 200e 	movt	r0, #526	; 0x20e
87800cf0:	f7ff ffbe 	bl	87800c70 <IOMUXC_SetPinMux>
87800cf4:	f24f 0380 	movw	r3, #61568	; 0xf080
87800cf8:	9301      	str	r3, [sp, #4]
87800cfa:	f44f 7346 	mov.w	r3, #792	; 0x318
87800cfe:	f2c0 230e 	movt	r3, #526	; 0x20e
87800d02:	9300      	str	r3, [sp, #0]
87800d04:	2300      	movs	r3, #0
87800d06:	2200      	movs	r2, #0
87800d08:	2105      	movs	r1, #5
87800d0a:	208c      	movs	r0, #140	; 0x8c
87800d0c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800d10:	f7ff ffcc 	bl	87800cac <IOMUXC_SetPinConfig>
87800d14:	2300      	movs	r3, #0
87800d16:	603b      	str	r3, [r7, #0]
87800d18:	2304      	movs	r3, #4
87800d1a:	60bb      	str	r3, [r7, #8]
87800d1c:	2301      	movs	r3, #1
87800d1e:	713b      	strb	r3, [r7, #4]
87800d20:	463b      	mov	r3, r7
87800d22:	461a      	mov	r2, r3
87800d24:	2112      	movs	r1, #18
87800d26:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800d2a:	f2c0 2009 	movt	r0, #521	; 0x209
87800d2e:	f7ff fdb3 	bl	87800898 <gpio_init>
87800d32:	2363      	movs	r3, #99	; 0x63
87800d34:	617b      	str	r3, [r7, #20]
87800d36:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800d3a:	613b      	str	r3, [r7, #16]
87800d3c:	693b      	ldr	r3, [r7, #16]
87800d3e:	0c1b      	lsrs	r3, r3, #16
87800d40:	041b      	lsls	r3, r3, #16
87800d42:	60fb      	str	r3, [r7, #12]
87800d44:	697b      	ldr	r3, [r7, #20]
87800d46:	095a      	lsrs	r2, r3, #5
87800d48:	697b      	ldr	r3, [r7, #20]
87800d4a:	f003 031f 	and.w	r3, r3, #31
87800d4e:	2101      	movs	r1, #1
87800d50:	4099      	lsls	r1, r3
87800d52:	68fb      	ldr	r3, [r7, #12]
87800d54:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800d58:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800d5c:	2200      	movs	r2, #0
87800d5e:	f640 5181 	movw	r1, #3457	; 0xd81
87800d62:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800d66:	2063      	movs	r0, #99	; 0x63
87800d68:	f7ff ff24 	bl	87800bb4 <system_register_irqhandler>
87800d6c:	2112      	movs	r1, #18
87800d6e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800d72:	f2c0 2009 	movt	r0, #521	; 0x209
87800d76:	f7ff fe79 	bl	87800a6c <gpio_enableint>
87800d7a:	3718      	adds	r7, #24
87800d7c:	46bd      	mov	sp, r7
87800d7e:	bd80      	pop	{r7, pc}

87800d80 <gpio1_io18_irqhandler>:
87800d80:	b580      	push	{r7, lr}
87800d82:	af00      	add	r7, sp, #0
87800d84:	200a      	movs	r0, #10
87800d86:	f7ff fc3f 	bl	87800608 <delay>
87800d8a:	2112      	movs	r1, #18
87800d8c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800d90:	f2c0 2009 	movt	r0, #521	; 0x209
87800d94:	f7ff fdba 	bl	8780090c <gpio_pinread>
87800d98:	4603      	mov	r3, r0
87800d9a:	2b00      	cmp	r3, #0
87800d9c:	d117      	bne.n	87800dce <gpio1_io18_irqhandler+0x4e>
87800d9e:	f242 036c 	movw	r3, #8300	; 0x206c
87800da2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800da6:	781b      	ldrb	r3, [r3, #0]
87800da8:	2b00      	cmp	r3, #0
87800daa:	bf0c      	ite	eq
87800dac:	2301      	moveq	r3, #1
87800dae:	2300      	movne	r3, #0
87800db0:	b2db      	uxtb	r3, r3
87800db2:	461a      	mov	r2, r3
87800db4:	f242 036c 	movw	r3, #8300	; 0x206c
87800db8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800dbc:	701a      	strb	r2, [r3, #0]
87800dbe:	f242 036c 	movw	r3, #8300	; 0x206c
87800dc2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800dc6:	781b      	ldrb	r3, [r3, #0]
87800dc8:	4618      	mov	r0, r3
87800dca:	f7ff fc99 	bl	87800700 <beep_switch>
87800dce:	2112      	movs	r1, #18
87800dd0:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800dd4:	f2c0 2009 	movt	r0, #521	; 0x209
87800dd8:	f7ff fe70 	bl	87800abc <gpio_clearintflags>
87800ddc:	bd80      	pop	{r7, pc}
87800dde:	bf00      	nop

87800de0 <epit1_init>:
87800de0:	b580      	push	{r7, lr}
87800de2:	b086      	sub	sp, #24
87800de4:	af00      	add	r7, sp, #0
87800de6:	6078      	str	r0, [r7, #4]
87800de8:	6039      	str	r1, [r7, #0]
87800dea:	687b      	ldr	r3, [r7, #4]
87800dec:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
87800df0:	d302      	bcc.n	87800df8 <epit1_init+0x18>
87800df2:	f640 73ff 	movw	r3, #4095	; 0xfff
87800df6:	607b      	str	r3, [r7, #4]
87800df8:	2300      	movs	r3, #0
87800dfa:	f2c0 230d 	movt	r3, #525	; 0x20d
87800dfe:	2200      	movs	r2, #0
87800e00:	601a      	str	r2, [r3, #0]
87800e02:	2200      	movs	r2, #0
87800e04:	f2c0 220d 	movt	r2, #525	; 0x20d
87800e08:	687b      	ldr	r3, [r7, #4]
87800e0a:	011b      	lsls	r3, r3, #4
87800e0c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
87800e10:	f043 030e 	orr.w	r3, r3, #14
87800e14:	6013      	str	r3, [r2, #0]
87800e16:	2300      	movs	r3, #0
87800e18:	f2c0 230d 	movt	r3, #525	; 0x20d
87800e1c:	683a      	ldr	r2, [r7, #0]
87800e1e:	609a      	str	r2, [r3, #8]
87800e20:	2300      	movs	r3, #0
87800e22:	f2c0 230d 	movt	r3, #525	; 0x20d
87800e26:	2200      	movs	r2, #0
87800e28:	60da      	str	r2, [r3, #12]
87800e2a:	2358      	movs	r3, #88	; 0x58
87800e2c:	617b      	str	r3, [r7, #20]
87800e2e:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800e32:	613b      	str	r3, [r7, #16]
87800e34:	693b      	ldr	r3, [r7, #16]
87800e36:	0c1b      	lsrs	r3, r3, #16
87800e38:	041b      	lsls	r3, r3, #16
87800e3a:	60fb      	str	r3, [r7, #12]
87800e3c:	697b      	ldr	r3, [r7, #20]
87800e3e:	095a      	lsrs	r2, r3, #5
87800e40:	697b      	ldr	r3, [r7, #20]
87800e42:	f003 031f 	and.w	r3, r3, #31
87800e46:	2101      	movs	r1, #1
87800e48:	4099      	lsls	r1, r3
87800e4a:	68fb      	ldr	r3, [r7, #12]
87800e4c:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800e50:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800e54:	2200      	movs	r2, #0
87800e56:	f640 6181 	movw	r1, #3713	; 0xe81
87800e5a:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800e5e:	2058      	movs	r0, #88	; 0x58
87800e60:	f7ff fea8 	bl	87800bb4 <system_register_irqhandler>
87800e64:	2300      	movs	r3, #0
87800e66:	f2c0 230d 	movt	r3, #525	; 0x20d
87800e6a:	2200      	movs	r2, #0
87800e6c:	f2c0 220d 	movt	r2, #525	; 0x20d
87800e70:	6812      	ldr	r2, [r2, #0]
87800e72:	f042 0201 	orr.w	r2, r2, #1
87800e76:	601a      	str	r2, [r3, #0]
87800e78:	3718      	adds	r7, #24
87800e7a:	46bd      	mov	sp, r7
87800e7c:	bd80      	pop	{r7, pc}
87800e7e:	bf00      	nop

87800e80 <epit1_irqhandler>:
87800e80:	b580      	push	{r7, lr}
87800e82:	af00      	add	r7, sp, #0
87800e84:	f242 036d 	movw	r3, #8301	; 0x206d
87800e88:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800e8c:	781b      	ldrb	r3, [r3, #0]
87800e8e:	2b00      	cmp	r3, #0
87800e90:	bf0c      	ite	eq
87800e92:	2301      	moveq	r3, #1
87800e94:	2300      	movne	r3, #0
87800e96:	b2db      	uxtb	r3, r3
87800e98:	461a      	mov	r2, r3
87800e9a:	f242 036d 	movw	r3, #8301	; 0x206d
87800e9e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800ea2:	701a      	strb	r2, [r3, #0]
87800ea4:	2300      	movs	r3, #0
87800ea6:	f2c0 230d 	movt	r3, #525	; 0x20d
87800eaa:	685b      	ldr	r3, [r3, #4]
87800eac:	f003 0301 	and.w	r3, r3, #1
87800eb0:	2b00      	cmp	r3, #0
87800eb2:	d008      	beq.n	87800ec6 <epit1_irqhandler+0x46>
87800eb4:	f242 036d 	movw	r3, #8301	; 0x206d
87800eb8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800ebc:	781b      	ldrb	r3, [r3, #0]
87800ebe:	4619      	mov	r1, r3
87800ec0:	2000      	movs	r0, #0
87800ec2:	f7ff fad7 	bl	87800474 <led_switch>
87800ec6:	2300      	movs	r3, #0
87800ec8:	f2c0 230d 	movt	r3, #525	; 0x20d
87800ecc:	2200      	movs	r2, #0
87800ece:	f2c0 220d 	movt	r2, #525	; 0x20d
87800ed2:	6852      	ldr	r2, [r2, #4]
87800ed4:	f042 0201 	orr.w	r2, r2, #1
87800ed8:	605a      	str	r2, [r3, #4]
87800eda:	bd80      	pop	{r7, pc}

87800edc <IOMUXC_SetPinMux>:
87800edc:	b480      	push	{r7}
87800ede:	b085      	sub	sp, #20
87800ee0:	af00      	add	r7, sp, #0
87800ee2:	60f8      	str	r0, [r7, #12]
87800ee4:	60b9      	str	r1, [r7, #8]
87800ee6:	607a      	str	r2, [r7, #4]
87800ee8:	603b      	str	r3, [r7, #0]
87800eea:	68fb      	ldr	r3, [r7, #12]
87800eec:	68ba      	ldr	r2, [r7, #8]
87800eee:	f002 010f 	and.w	r1, r2, #15
87800ef2:	69fa      	ldr	r2, [r7, #28]
87800ef4:	0112      	lsls	r2, r2, #4
87800ef6:	f002 0210 	and.w	r2, r2, #16
87800efa:	430a      	orrs	r2, r1
87800efc:	601a      	str	r2, [r3, #0]
87800efe:	687b      	ldr	r3, [r7, #4]
87800f00:	2b00      	cmp	r3, #0
87800f02:	d004      	beq.n	87800f0e <IOMUXC_SetPinMux+0x32>
87800f04:	687b      	ldr	r3, [r7, #4]
87800f06:	683a      	ldr	r2, [r7, #0]
87800f08:	f002 0207 	and.w	r2, r2, #7
87800f0c:	601a      	str	r2, [r3, #0]
87800f0e:	3714      	adds	r7, #20
87800f10:	46bd      	mov	sp, r7
87800f12:	f85d 7b04 	ldr.w	r7, [sp], #4
87800f16:	4770      	bx	lr

87800f18 <IOMUXC_SetPinConfig>:
87800f18:	b480      	push	{r7}
87800f1a:	b085      	sub	sp, #20
87800f1c:	af00      	add	r7, sp, #0
87800f1e:	60f8      	str	r0, [r7, #12]
87800f20:	60b9      	str	r1, [r7, #8]
87800f22:	607a      	str	r2, [r7, #4]
87800f24:	603b      	str	r3, [r7, #0]
87800f26:	69bb      	ldr	r3, [r7, #24]
87800f28:	2b00      	cmp	r3, #0
87800f2a:	d002      	beq.n	87800f32 <IOMUXC_SetPinConfig+0x1a>
87800f2c:	69bb      	ldr	r3, [r7, #24]
87800f2e:	69fa      	ldr	r2, [r7, #28]
87800f30:	601a      	str	r2, [r3, #0]
87800f32:	3714      	adds	r7, #20
87800f34:	46bd      	mov	sp, r7
87800f36:	f85d 7b04 	ldr.w	r7, [sp], #4
87800f3a:	4770      	bx	lr

87800f3c <filterkey_init>:
87800f3c:	b580      	push	{r7, lr}
87800f3e:	b088      	sub	sp, #32
87800f40:	af02      	add	r7, sp, #8
87800f42:	2300      	movs	r3, #0
87800f44:	9301      	str	r3, [sp, #4]
87800f46:	f44f 7346 	mov.w	r3, #792	; 0x318
87800f4a:	f2c0 230e 	movt	r3, #526	; 0x20e
87800f4e:	9300      	str	r3, [sp, #0]
87800f50:	2300      	movs	r3, #0
87800f52:	2200      	movs	r2, #0
87800f54:	2105      	movs	r1, #5
87800f56:	208c      	movs	r0, #140	; 0x8c
87800f58:	f2c0 200e 	movt	r0, #526	; 0x20e
87800f5c:	f7ff ffbe 	bl	87800edc <IOMUXC_SetPinMux>
87800f60:	f24f 0380 	movw	r3, #61568	; 0xf080
87800f64:	9301      	str	r3, [sp, #4]
87800f66:	f44f 7346 	mov.w	r3, #792	; 0x318
87800f6a:	f2c0 230e 	movt	r3, #526	; 0x20e
87800f6e:	9300      	str	r3, [sp, #0]
87800f70:	2300      	movs	r3, #0
87800f72:	2200      	movs	r2, #0
87800f74:	2105      	movs	r1, #5
87800f76:	208c      	movs	r0, #140	; 0x8c
87800f78:	f2c0 200e 	movt	r0, #526	; 0x20e
87800f7c:	f7ff ffcc 	bl	87800f18 <IOMUXC_SetPinConfig>
87800f80:	2300      	movs	r3, #0
87800f82:	603b      	str	r3, [r7, #0]
87800f84:	2304      	movs	r3, #4
87800f86:	60bb      	str	r3, [r7, #8]
87800f88:	2301      	movs	r3, #1
87800f8a:	713b      	strb	r3, [r7, #4]
87800f8c:	463b      	mov	r3, r7
87800f8e:	461a      	mov	r2, r3
87800f90:	2112      	movs	r1, #18
87800f92:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800f96:	f2c0 2009 	movt	r0, #521	; 0x209
87800f9a:	f7ff fc7d 	bl	87800898 <gpio_init>
87800f9e:	2363      	movs	r3, #99	; 0x63
87800fa0:	617b      	str	r3, [r7, #20]
87800fa2:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800fa6:	613b      	str	r3, [r7, #16]
87800fa8:	693b      	ldr	r3, [r7, #16]
87800faa:	0c1b      	lsrs	r3, r3, #16
87800fac:	041b      	lsls	r3, r3, #16
87800fae:	60fb      	str	r3, [r7, #12]
87800fb0:	697b      	ldr	r3, [r7, #20]
87800fb2:	095a      	lsrs	r2, r3, #5
87800fb4:	697b      	ldr	r3, [r7, #20]
87800fb6:	f003 031f 	and.w	r3, r3, #31
87800fba:	2101      	movs	r1, #1
87800fbc:	4099      	lsls	r1, r3
87800fbe:	68fb      	ldr	r3, [r7, #12]
87800fc0:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800fc4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800fc8:	2200      	movs	r2, #0
87800fca:	f241 1145 	movw	r1, #4421	; 0x1145
87800fce:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800fd2:	2063      	movs	r0, #99	; 0x63
87800fd4:	f7ff fdee 	bl	87800bb4 <system_register_irqhandler>
87800fd8:	2112      	movs	r1, #18
87800fda:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800fde:	f2c0 2009 	movt	r0, #521	; 0x209
87800fe2:	f7ff fd43 	bl	87800a6c <gpio_enableint>
87800fe6:	f44f 5091 	mov.w	r0, #4640	; 0x1220
87800fea:	f2c0 000a 	movt	r0, #10
87800fee:	f000 f803 	bl	87800ff8 <filtertimer_init>
87800ff2:	3718      	adds	r7, #24
87800ff4:	46bd      	mov	sp, r7
87800ff6:	bd80      	pop	{r7, pc}

87800ff8 <filtertimer_init>:
87800ff8:	b580      	push	{r7, lr}
87800ffa:	b086      	sub	sp, #24
87800ffc:	af00      	add	r7, sp, #0
87800ffe:	6078      	str	r0, [r7, #4]
87801000:	2300      	movs	r3, #0
87801002:	f2c0 230d 	movt	r3, #525	; 0x20d
87801006:	2200      	movs	r2, #0
87801008:	601a      	str	r2, [r3, #0]
8780100a:	2300      	movs	r3, #0
8780100c:	f2c0 230d 	movt	r3, #525	; 0x20d
87801010:	220e      	movs	r2, #14
87801012:	f2c0 1200 	movt	r2, #256	; 0x100
87801016:	601a      	str	r2, [r3, #0]
87801018:	2300      	movs	r3, #0
8780101a:	f2c0 230d 	movt	r3, #525	; 0x20d
8780101e:	687a      	ldr	r2, [r7, #4]
87801020:	609a      	str	r2, [r3, #8]
87801022:	2300      	movs	r3, #0
87801024:	f2c0 230d 	movt	r3, #525	; 0x20d
87801028:	2200      	movs	r2, #0
8780102a:	60da      	str	r2, [r3, #12]
8780102c:	2358      	movs	r3, #88	; 0x58
8780102e:	617b      	str	r3, [r7, #20]
87801030:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87801034:	613b      	str	r3, [r7, #16]
87801036:	693b      	ldr	r3, [r7, #16]
87801038:	0c1b      	lsrs	r3, r3, #16
8780103a:	041b      	lsls	r3, r3, #16
8780103c:	60fb      	str	r3, [r7, #12]
8780103e:	697b      	ldr	r3, [r7, #20]
87801040:	095a      	lsrs	r2, r3, #5
87801042:	697b      	ldr	r3, [r7, #20]
87801044:	f003 031f 	and.w	r3, r3, #31
87801048:	2101      	movs	r1, #1
8780104a:	4099      	lsls	r1, r3
8780104c:	68fb      	ldr	r3, [r7, #12]
8780104e:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87801052:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87801056:	2200      	movs	r2, #0
87801058:	f241 01d1 	movw	r1, #4305	; 0x10d1
8780105c:	f2c8 7180 	movt	r1, #34688	; 0x8780
87801060:	2058      	movs	r0, #88	; 0x58
87801062:	f7ff fda7 	bl	87800bb4 <system_register_irqhandler>
87801066:	3718      	adds	r7, #24
87801068:	46bd      	mov	sp, r7
8780106a:	bd80      	pop	{r7, pc}

8780106c <filtertimer_stop>:
8780106c:	b480      	push	{r7}
8780106e:	af00      	add	r7, sp, #0
87801070:	2300      	movs	r3, #0
87801072:	f2c0 230d 	movt	r3, #525	; 0x20d
87801076:	2200      	movs	r2, #0
87801078:	f2c0 220d 	movt	r2, #525	; 0x20d
8780107c:	6812      	ldr	r2, [r2, #0]
8780107e:	f022 0201 	bic.w	r2, r2, #1
87801082:	601a      	str	r2, [r3, #0]
87801084:	46bd      	mov	sp, r7
87801086:	f85d 7b04 	ldr.w	r7, [sp], #4
8780108a:	4770      	bx	lr

8780108c <filtertimer_restart>:
8780108c:	b480      	push	{r7}
8780108e:	b083      	sub	sp, #12
87801090:	af00      	add	r7, sp, #0
87801092:	6078      	str	r0, [r7, #4]
87801094:	2300      	movs	r3, #0
87801096:	f2c0 230d 	movt	r3, #525	; 0x20d
8780109a:	2200      	movs	r2, #0
8780109c:	f2c0 220d 	movt	r2, #525	; 0x20d
878010a0:	6812      	ldr	r2, [r2, #0]
878010a2:	f022 0201 	bic.w	r2, r2, #1
878010a6:	601a      	str	r2, [r3, #0]
878010a8:	2300      	movs	r3, #0
878010aa:	f2c0 230d 	movt	r3, #525	; 0x20d
878010ae:	687a      	ldr	r2, [r7, #4]
878010b0:	609a      	str	r2, [r3, #8]
878010b2:	2300      	movs	r3, #0
878010b4:	f2c0 230d 	movt	r3, #525	; 0x20d
878010b8:	2200      	movs	r2, #0
878010ba:	f2c0 220d 	movt	r2, #525	; 0x20d
878010be:	6812      	ldr	r2, [r2, #0]
878010c0:	f042 0201 	orr.w	r2, r2, #1
878010c4:	601a      	str	r2, [r3, #0]
878010c6:	370c      	adds	r7, #12
878010c8:	46bd      	mov	sp, r7
878010ca:	f85d 7b04 	ldr.w	r7, [sp], #4
878010ce:	4770      	bx	lr

878010d0 <filtertimer_irqhandler>:
878010d0:	b580      	push	{r7, lr}
878010d2:	af00      	add	r7, sp, #0
878010d4:	2300      	movs	r3, #0
878010d6:	f2c0 230d 	movt	r3, #525	; 0x20d
878010da:	685b      	ldr	r3, [r3, #4]
878010dc:	f003 0301 	and.w	r3, r3, #1
878010e0:	2b00      	cmp	r3, #0
878010e2:	d023      	beq.n	8780112c <filtertimer_irqhandler+0x5c>
878010e4:	f7ff ffc2 	bl	8780106c <filtertimer_stop>
878010e8:	2112      	movs	r1, #18
878010ea:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878010ee:	f2c0 2009 	movt	r0, #521	; 0x209
878010f2:	f7ff fc0b 	bl	8780090c <gpio_pinread>
878010f6:	4603      	mov	r3, r0
878010f8:	2b00      	cmp	r3, #0
878010fa:	d117      	bne.n	8780112c <filtertimer_irqhandler+0x5c>
878010fc:	f242 036e 	movw	r3, #8302	; 0x206e
87801100:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801104:	781b      	ldrb	r3, [r3, #0]
87801106:	2b00      	cmp	r3, #0
87801108:	bf0c      	ite	eq
8780110a:	2301      	moveq	r3, #1
8780110c:	2300      	movne	r3, #0
8780110e:	b2db      	uxtb	r3, r3
87801110:	461a      	mov	r2, r3
87801112:	f242 036e 	movw	r3, #8302	; 0x206e
87801116:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780111a:	701a      	strb	r2, [r3, #0]
8780111c:	f242 036e 	movw	r3, #8302	; 0x206e
87801120:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801124:	781b      	ldrb	r3, [r3, #0]
87801126:	4618      	mov	r0, r3
87801128:	f7ff faea 	bl	87800700 <beep_switch>
8780112c:	2300      	movs	r3, #0
8780112e:	f2c0 230d 	movt	r3, #525	; 0x20d
87801132:	2200      	movs	r2, #0
87801134:	f2c0 220d 	movt	r2, #525	; 0x20d
87801138:	6852      	ldr	r2, [r2, #4]
8780113a:	f042 0201 	orr.w	r2, r2, #1
8780113e:	605a      	str	r2, [r3, #4]
87801140:	bd80      	pop	{r7, pc}
87801142:	bf00      	nop

87801144 <gpio1_16_31_irqhandler>:
87801144:	b580      	push	{r7, lr}
87801146:	af00      	add	r7, sp, #0
87801148:	f44f 5091 	mov.w	r0, #4640	; 0x1220
8780114c:	f2c0 000a 	movt	r0, #10
87801150:	f7ff ff9c 	bl	8780108c <filtertimer_restart>
87801154:	2112      	movs	r1, #18
87801156:	f44f 4040 	mov.w	r0, #49152	; 0xc000
8780115a:	f2c0 2009 	movt	r0, #521	; 0x209
8780115e:	f7ff fcad 	bl	87800abc <gpio_clearintflags>
87801162:	bd80      	pop	{r7, pc}

87801164 <IOMUXC_SetPinMux>:
87801164:	b480      	push	{r7}
87801166:	b085      	sub	sp, #20
87801168:	af00      	add	r7, sp, #0
8780116a:	60f8      	str	r0, [r7, #12]
8780116c:	60b9      	str	r1, [r7, #8]
8780116e:	607a      	str	r2, [r7, #4]
87801170:	603b      	str	r3, [r7, #0]
87801172:	68fb      	ldr	r3, [r7, #12]
87801174:	68ba      	ldr	r2, [r7, #8]
87801176:	f002 010f 	and.w	r1, r2, #15
8780117a:	69fa      	ldr	r2, [r7, #28]
8780117c:	0112      	lsls	r2, r2, #4
8780117e:	f002 0210 	and.w	r2, r2, #16
87801182:	430a      	orrs	r2, r1
87801184:	601a      	str	r2, [r3, #0]
87801186:	687b      	ldr	r3, [r7, #4]
87801188:	2b00      	cmp	r3, #0
8780118a:	d004      	beq.n	87801196 <IOMUXC_SetPinMux+0x32>
8780118c:	687b      	ldr	r3, [r7, #4]
8780118e:	683a      	ldr	r2, [r7, #0]
87801190:	f002 0207 	and.w	r2, r2, #7
87801194:	601a      	str	r2, [r3, #0]
87801196:	3714      	adds	r7, #20
87801198:	46bd      	mov	sp, r7
8780119a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780119e:	4770      	bx	lr

878011a0 <IOMUXC_SetPinConfig>:
878011a0:	b480      	push	{r7}
878011a2:	b085      	sub	sp, #20
878011a4:	af00      	add	r7, sp, #0
878011a6:	60f8      	str	r0, [r7, #12]
878011a8:	60b9      	str	r1, [r7, #8]
878011aa:	607a      	str	r2, [r7, #4]
878011ac:	603b      	str	r3, [r7, #0]
878011ae:	69bb      	ldr	r3, [r7, #24]
878011b0:	2b00      	cmp	r3, #0
878011b2:	d002      	beq.n	878011ba <IOMUXC_SetPinConfig+0x1a>
878011b4:	69bb      	ldr	r3, [r7, #24]
878011b6:	69fa      	ldr	r2, [r7, #28]
878011b8:	601a      	str	r2, [r3, #0]
878011ba:	3714      	adds	r7, #20
878011bc:	46bd      	mov	sp, r7
878011be:	f85d 7b04 	ldr.w	r7, [sp], #4
878011c2:	4770      	bx	lr

878011c4 <uart_init>:
878011c4:	b580      	push	{r7, lr}
878011c6:	af00      	add	r7, sp, #0
878011c8:	f000 f850 	bl	8780126c <uart_io_init>
878011cc:	2000      	movs	r0, #0
878011ce:	f2c0 2002 	movt	r0, #514	; 0x202
878011d2:	f000 f9f1 	bl	878015b8 <uart_disable>
878011d6:	2000      	movs	r0, #0
878011d8:	f2c0 2002 	movt	r0, #514	; 0x202
878011dc:	f000 fa10 	bl	87801600 <uart_softreset>
878011e0:	2300      	movs	r3, #0
878011e2:	f2c0 2302 	movt	r3, #514	; 0x202
878011e6:	2200      	movs	r2, #0
878011e8:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878011ec:	2200      	movs	r2, #0
878011ee:	f2c0 2202 	movt	r2, #514	; 0x202
878011f2:	2300      	movs	r3, #0
878011f4:	f2c0 2302 	movt	r3, #514	; 0x202
878011f8:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
878011fc:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
87801200:	f043 0326 	orr.w	r3, r3, #38	; 0x26
87801204:	f8c2 3084 	str.w	r3, [r2, #132]	; 0x84
87801208:	2300      	movs	r3, #0
8780120a:	f2c0 2302 	movt	r3, #514	; 0x202
8780120e:	2200      	movs	r2, #0
87801210:	f2c0 2202 	movt	r2, #514	; 0x202
87801214:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
87801218:	f042 0204 	orr.w	r2, r2, #4
8780121c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
87801220:	2300      	movs	r3, #0
87801222:	f2c0 2302 	movt	r3, #514	; 0x202
87801226:	2200      	movs	r2, #0
87801228:	f2c0 2202 	movt	r2, #514	; 0x202
8780122c:	f8d2 2080 	ldr.w	r2, [r2, #128]	; 0x80
87801230:	f422 4280 	bic.w	r2, r2, #16384	; 0x4000
87801234:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
87801238:	2300      	movs	r3, #0
8780123a:	f2c0 2302 	movt	r3, #514	; 0x202
8780123e:	f44f 7220 	mov.w	r2, #640	; 0x280
87801242:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
87801246:	2300      	movs	r3, #0
87801248:	f2c0 2302 	movt	r3, #514	; 0x202
8780124c:	2247      	movs	r2, #71	; 0x47
8780124e:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
87801252:	2300      	movs	r3, #0
87801254:	f2c0 2302 	movt	r3, #514	; 0x202
87801258:	f640 4234 	movw	r2, #3124	; 0xc34
8780125c:	f8c3 20a8 	str.w	r2, [r3, #168]	; 0xa8
87801260:	2000      	movs	r0, #0
87801262:	f2c0 2002 	movt	r0, #514	; 0x202
87801266:	f000 f9b9 	bl	878015dc <uart_enable>
8780126a:	bd80      	pop	{r7, pc}

8780126c <uart_io_init>:
8780126c:	b580      	push	{r7, lr}
8780126e:	b082      	sub	sp, #8
87801270:	af02      	add	r7, sp, #8
87801272:	2300      	movs	r3, #0
87801274:	9301      	str	r3, [sp, #4]
87801276:	f44f 7344 	mov.w	r3, #784	; 0x310
8780127a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780127e:	9300      	str	r3, [sp, #0]
87801280:	2300      	movs	r3, #0
87801282:	2200      	movs	r2, #0
87801284:	2100      	movs	r1, #0
87801286:	2084      	movs	r0, #132	; 0x84
87801288:	f2c0 200e 	movt	r0, #526	; 0x20e
8780128c:	f7ff ff6a 	bl	87801164 <IOMUXC_SetPinMux>
87801290:	2300      	movs	r3, #0
87801292:	9301      	str	r3, [sp, #4]
87801294:	f44f 7345 	mov.w	r3, #788	; 0x314
87801298:	f2c0 230e 	movt	r3, #526	; 0x20e
8780129c:	9300      	str	r3, [sp, #0]
8780129e:	2303      	movs	r3, #3
878012a0:	f240 6224 	movw	r2, #1572	; 0x624
878012a4:	f2c0 220e 	movt	r2, #526	; 0x20e
878012a8:	2100      	movs	r1, #0
878012aa:	2088      	movs	r0, #136	; 0x88
878012ac:	f2c0 200e 	movt	r0, #526	; 0x20e
878012b0:	f7ff ff58 	bl	87801164 <IOMUXC_SetPinMux>
878012b4:	f241 03b0 	movw	r3, #4272	; 0x10b0
878012b8:	9301      	str	r3, [sp, #4]
878012ba:	f44f 7344 	mov.w	r3, #784	; 0x310
878012be:	f2c0 230e 	movt	r3, #526	; 0x20e
878012c2:	9300      	str	r3, [sp, #0]
878012c4:	2300      	movs	r3, #0
878012c6:	2200      	movs	r2, #0
878012c8:	2100      	movs	r1, #0
878012ca:	2084      	movs	r0, #132	; 0x84
878012cc:	f2c0 200e 	movt	r0, #526	; 0x20e
878012d0:	f7ff ff66 	bl	878011a0 <IOMUXC_SetPinConfig>
878012d4:	f241 03b0 	movw	r3, #4272	; 0x10b0
878012d8:	9301      	str	r3, [sp, #4]
878012da:	f44f 7345 	mov.w	r3, #788	; 0x314
878012de:	f2c0 230e 	movt	r3, #526	; 0x20e
878012e2:	9300      	str	r3, [sp, #0]
878012e4:	2303      	movs	r3, #3
878012e6:	f240 6224 	movw	r2, #1572	; 0x624
878012ea:	f2c0 220e 	movt	r2, #526	; 0x20e
878012ee:	2100      	movs	r1, #0
878012f0:	2088      	movs	r0, #136	; 0x88
878012f2:	f2c0 200e 	movt	r0, #526	; 0x20e
878012f6:	f7ff ff53 	bl	878011a0 <IOMUXC_SetPinConfig>
878012fa:	46bd      	mov	sp, r7
878012fc:	bd80      	pop	{r7, pc}
878012fe:	bf00      	nop

87801300 <uart_setbaudrate>:
87801300:	b590      	push	{r4, r7, lr}
87801302:	b093      	sub	sp, #76	; 0x4c
87801304:	af00      	add	r7, sp, #0
87801306:	60f8      	str	r0, [r7, #12]
87801308:	60b9      	str	r1, [r7, #8]
8780130a:	607a      	str	r2, [r7, #4]
8780130c:	2300      	movs	r3, #0
8780130e:	647b      	str	r3, [r7, #68]	; 0x44
87801310:	2300      	movs	r3, #0
87801312:	643b      	str	r3, [r7, #64]	; 0x40
87801314:	2300      	movs	r3, #0
87801316:	63fb      	str	r3, [r7, #60]	; 0x3c
87801318:	2300      	movs	r3, #0
8780131a:	63bb      	str	r3, [r7, #56]	; 0x38
8780131c:	2301      	movs	r3, #1
8780131e:	62bb      	str	r3, [r7, #40]	; 0x28
87801320:	f04f 0300 	mov.w	r3, #0
87801324:	f04f 0400 	mov.w	r4, #0
87801328:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780132c:	f04f 0300 	mov.w	r3, #0
87801330:	f04f 0400 	mov.w	r4, #0
87801334:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
87801338:	2300      	movs	r3, #0
8780133a:	62fb      	str	r3, [r7, #44]	; 0x2c
8780133c:	687b      	ldr	r3, [r7, #4]
8780133e:	647b      	str	r3, [r7, #68]	; 0x44
87801340:	68bb      	ldr	r3, [r7, #8]
87801342:	011b      	lsls	r3, r3, #4
87801344:	643b      	str	r3, [r7, #64]	; 0x40
87801346:	2301      	movs	r3, #1
87801348:	63fb      	str	r3, [r7, #60]	; 0x3c
8780134a:	e00a      	b.n	87801362 <uart_setbaudrate+0x62>
8780134c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
8780134e:	63fb      	str	r3, [r7, #60]	; 0x3c
87801350:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87801352:	6c39      	ldr	r1, [r7, #64]	; 0x40
87801354:	4618      	mov	r0, r3
87801356:	f000 faed 	bl	87801934 <__aeabi_uidivmod>
8780135a:	460b      	mov	r3, r1
8780135c:	643b      	str	r3, [r7, #64]	; 0x40
8780135e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87801360:	647b      	str	r3, [r7, #68]	; 0x44
87801362:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801364:	2b00      	cmp	r3, #0
87801366:	d1f1      	bne.n	8780134c <uart_setbaudrate+0x4c>
87801368:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
8780136a:	6878      	ldr	r0, [r7, #4]
8780136c:	f000 f9b4 	bl	878016d8 <__aeabi_uidiv>
87801370:	4603      	mov	r3, r0
87801372:	647b      	str	r3, [r7, #68]	; 0x44
87801374:	68bb      	ldr	r3, [r7, #8]
87801376:	011b      	lsls	r3, r3, #4
87801378:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
8780137a:	4618      	mov	r0, r3
8780137c:	f000 f9ac 	bl	878016d8 <__aeabi_uidiv>
87801380:	4603      	mov	r3, r0
87801382:	643b      	str	r3, [r7, #64]	; 0x40
87801384:	6c7a      	ldr	r2, [r7, #68]	; 0x44
87801386:	f64f 73f9 	movw	r3, #65529	; 0xfff9
8780138a:	f2c0 0306 	movt	r3, #6
8780138e:	429a      	cmp	r2, r3
87801390:	d803      	bhi.n	8780139a <uart_setbaudrate+0x9a>
87801392:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801394:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
87801398:	d334      	bcc.n	87801404 <uart_setbaudrate+0x104>
8780139a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
8780139c:	1e5a      	subs	r2, r3, #1
8780139e:	f646 53b9 	movw	r3, #28089	; 0x6db9
878013a2:	f2c2 4393 	movt	r3, #9363	; 0x2493
878013a6:	fba2 3403 	umull	r3, r4, r2, r3
878013aa:	1b12      	subs	r2, r2, r4
878013ac:	0852      	lsrs	r2, r2, #1
878013ae:	1913      	adds	r3, r2, r4
878013b0:	0c9b      	lsrs	r3, r3, #18
878013b2:	3301      	adds	r3, #1
878013b4:	61fb      	str	r3, [r7, #28]
878013b6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878013b8:	1e5a      	subs	r2, r3, #1
878013ba:	f248 0301 	movw	r3, #32769	; 0x8001
878013be:	f2c8 0300 	movt	r3, #32768	; 0x8000
878013c2:	fba2 3403 	umull	r3, r4, r2, r3
878013c6:	0be3      	lsrs	r3, r4, #15
878013c8:	3301      	adds	r3, #1
878013ca:	61bb      	str	r3, [r7, #24]
878013cc:	69ba      	ldr	r2, [r7, #24]
878013ce:	69fb      	ldr	r3, [r7, #28]
878013d0:	4293      	cmp	r3, r2
878013d2:	bf38      	it	cc
878013d4:	4613      	movcc	r3, r2
878013d6:	617b      	str	r3, [r7, #20]
878013d8:	6979      	ldr	r1, [r7, #20]
878013da:	6c78      	ldr	r0, [r7, #68]	; 0x44
878013dc:	f000 f97c 	bl	878016d8 <__aeabi_uidiv>
878013e0:	4603      	mov	r3, r0
878013e2:	647b      	str	r3, [r7, #68]	; 0x44
878013e4:	6979      	ldr	r1, [r7, #20]
878013e6:	6c38      	ldr	r0, [r7, #64]	; 0x40
878013e8:	f000 f976 	bl	878016d8 <__aeabi_uidiv>
878013ec:	4603      	mov	r3, r0
878013ee:	643b      	str	r3, [r7, #64]	; 0x40
878013f0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878013f2:	2b00      	cmp	r3, #0
878013f4:	d101      	bne.n	878013fa <uart_setbaudrate+0xfa>
878013f6:	2301      	movs	r3, #1
878013f8:	647b      	str	r3, [r7, #68]	; 0x44
878013fa:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878013fc:	2b00      	cmp	r3, #0
878013fe:	d101      	bne.n	87801404 <uart_setbaudrate+0x104>
87801400:	2301      	movs	r3, #1
87801402:	643b      	str	r3, [r7, #64]	; 0x40
87801404:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87801406:	1e5a      	subs	r2, r3, #1
87801408:	f248 0301 	movw	r3, #32769	; 0x8001
8780140c:	f2c8 0300 	movt	r3, #32768	; 0x8000
87801410:	fba2 3403 	umull	r3, r4, r2, r3
87801414:	0be3      	lsrs	r3, r4, #15
87801416:	3301      	adds	r3, #1
87801418:	62bb      	str	r3, [r7, #40]	; 0x28
8780141a:	6abb      	ldr	r3, [r7, #40]	; 0x28
8780141c:	3b01      	subs	r3, #1
8780141e:	2b06      	cmp	r3, #6
87801420:	d825      	bhi.n	8780146e <uart_setbaudrate+0x16e>
87801422:	a201      	add	r2, pc, #4	; (adr r2, 87801428 <uart_setbaudrate+0x128>)
87801424:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87801428:	87801445 	strhi	r1, [r0, r5, asr #8]
8780142c:	8780144b 	strhi	r1, [r0, fp, asr #8]
87801430:	87801451 			; <UNDEFINED> instruction: 0x87801451
87801434:	87801457 			; <UNDEFINED> instruction: 0x87801457
87801438:	8780145d 			; <UNDEFINED> instruction: 0x8780145d
8780143c:	87801463 	strhi	r1, [r0, r3, ror #8]
87801440:	87801469 	strhi	r1, [r0, r9, ror #8]
87801444:	2305      	movs	r3, #5
87801446:	63bb      	str	r3, [r7, #56]	; 0x38
87801448:	e014      	b.n	87801474 <uart_setbaudrate+0x174>
8780144a:	2304      	movs	r3, #4
8780144c:	63bb      	str	r3, [r7, #56]	; 0x38
8780144e:	e011      	b.n	87801474 <uart_setbaudrate+0x174>
87801450:	2303      	movs	r3, #3
87801452:	63bb      	str	r3, [r7, #56]	; 0x38
87801454:	e00e      	b.n	87801474 <uart_setbaudrate+0x174>
87801456:	2302      	movs	r3, #2
87801458:	63bb      	str	r3, [r7, #56]	; 0x38
8780145a:	e00b      	b.n	87801474 <uart_setbaudrate+0x174>
8780145c:	2301      	movs	r3, #1
8780145e:	63bb      	str	r3, [r7, #56]	; 0x38
87801460:	e008      	b.n	87801474 <uart_setbaudrate+0x174>
87801462:	2300      	movs	r3, #0
87801464:	63bb      	str	r3, [r7, #56]	; 0x38
87801466:	e005      	b.n	87801474 <uart_setbaudrate+0x174>
87801468:	2306      	movs	r3, #6
8780146a:	63bb      	str	r3, [r7, #56]	; 0x38
8780146c:	e002      	b.n	87801474 <uart_setbaudrate+0x174>
8780146e:	2305      	movs	r3, #5
87801470:	63bb      	str	r3, [r7, #56]	; 0x38
87801472:	bf00      	nop
87801474:	687b      	ldr	r3, [r7, #4]
87801476:	f04f 0400 	mov.w	r4, #0
8780147a:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
8780147e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87801480:	011b      	lsls	r3, r3, #4
87801482:	62fb      	str	r3, [r7, #44]	; 0x2c
87801484:	2301      	movs	r3, #1
87801486:	63fb      	str	r3, [r7, #60]	; 0x3c
87801488:	e012      	b.n	878014b0 <uart_setbaudrate+0x1b0>
8780148a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
8780148c:	63fb      	str	r3, [r7, #60]	; 0x3c
8780148e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87801490:	f04f 0400 	mov.w	r4, #0
87801494:	e9d7 010c 	ldrd	r0, r1, [r7, #48]	; 0x30
87801498:	461a      	mov	r2, r3
8780149a:	4623      	mov	r3, r4
8780149c:	f000 fa58 	bl	87801950 <__aeabi_uldivmod>
878014a0:	461c      	mov	r4, r3
878014a2:	4613      	mov	r3, r2
878014a4:	62fb      	str	r3, [r7, #44]	; 0x2c
878014a6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878014a8:	f04f 0400 	mov.w	r4, #0
878014ac:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
878014b0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878014b2:	2b00      	cmp	r3, #0
878014b4:	d1e9      	bne.n	8780148a <uart_setbaudrate+0x18a>
878014b6:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
878014b8:	6878      	ldr	r0, [r7, #4]
878014ba:	f000 f90d 	bl	878016d8 <__aeabi_uidiv>
878014be:	4603      	mov	r3, r0
878014c0:	f04f 0400 	mov.w	r4, #0
878014c4:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
878014c8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878014ca:	011b      	lsls	r3, r3, #4
878014cc:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
878014ce:	4618      	mov	r0, r3
878014d0:	f000 f902 	bl	878016d8 <__aeabi_uidiv>
878014d4:	4603      	mov	r3, r0
878014d6:	62fb      	str	r3, [r7, #44]	; 0x2c
878014d8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878014da:	f04f 0400 	mov.w	r4, #0
878014de:	6b3a      	ldr	r2, [r7, #48]	; 0x30
878014e0:	fb04 f102 	mul.w	r1, r4, r2
878014e4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
878014e6:	fb03 f202 	mul.w	r2, r3, r2
878014ea:	440a      	add	r2, r1
878014ec:	6b39      	ldr	r1, [r7, #48]	; 0x30
878014ee:	fba1 0103 	umull	r0, r1, r1, r3
878014f2:	1853      	adds	r3, r2, r1
878014f4:	4619      	mov	r1, r3
878014f6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878014f8:	f04f 0400 	mov.w	r4, #0
878014fc:	461a      	mov	r2, r3
878014fe:	4623      	mov	r3, r4
87801500:	f000 fa26 	bl	87801950 <__aeabi_uldivmod>
87801504:	4603      	mov	r3, r0
87801506:	460c      	mov	r4, r1
87801508:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780150c:	68bb      	ldr	r3, [r7, #8]
8780150e:	f04f 0400 	mov.w	r4, #0
87801512:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
87801516:	42a2      	cmp	r2, r4
87801518:	bf08      	it	eq
8780151a:	4299      	cmpeq	r1, r3
8780151c:	d308      	bcc.n	87801530 <uart_setbaudrate+0x230>
8780151e:	68bb      	ldr	r3, [r7, #8]
87801520:	f04f 0400 	mov.w	r4, #0
87801524:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
87801528:	1acb      	subs	r3, r1, r3
8780152a:	eb62 0404 	sbc.w	r4, r2, r4
8780152e:	e008      	b.n	87801542 <uart_setbaudrate+0x242>
87801530:	68bb      	ldr	r3, [r7, #8]
87801532:	4619      	mov	r1, r3
87801534:	f04f 0200 	mov.w	r2, #0
87801538:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
8780153c:	1acb      	subs	r3, r1, r3
8780153e:	eb62 0404 	sbc.w	r4, r2, r4
87801542:	e9c7 3408 	strd	r3, r4, [r7, #32]
87801546:	68ba      	ldr	r2, [r7, #8]
87801548:	f248 531f 	movw	r3, #34079	; 0x851f
8780154c:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
87801550:	fba2 3403 	umull	r3, r4, r2, r3
87801554:	0962      	lsrs	r2, r4, #5
87801556:	4613      	mov	r3, r2
87801558:	005b      	lsls	r3, r3, #1
8780155a:	4413      	add	r3, r2
8780155c:	f04f 0400 	mov.w	r4, #0
87801560:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
87801564:	42a2      	cmp	r2, r4
87801566:	bf08      	it	eq
87801568:	4299      	cmpeq	r1, r3
8780156a:	d222      	bcs.n	878015b2 <uart_setbaudrate+0x2b2>
8780156c:	68fb      	ldr	r3, [r7, #12]
8780156e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
87801572:	f423 7260 	bic.w	r2, r3, #896	; 0x380
87801576:	68fb      	ldr	r3, [r7, #12]
87801578:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
8780157c:	68fb      	ldr	r3, [r7, #12]
8780157e:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
87801582:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87801584:	01db      	lsls	r3, r3, #7
87801586:	f403 7360 	and.w	r3, r3, #896	; 0x380
8780158a:	431a      	orrs	r2, r3
8780158c:	68fb      	ldr	r3, [r7, #12]
8780158e:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
87801592:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801594:	3b01      	subs	r3, #1
87801596:	b29a      	uxth	r2, r3
87801598:	68fb      	ldr	r3, [r7, #12]
8780159a:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
8780159e:	6ab9      	ldr	r1, [r7, #40]	; 0x28
878015a0:	6c78      	ldr	r0, [r7, #68]	; 0x44
878015a2:	f000 f899 	bl	878016d8 <__aeabi_uidiv>
878015a6:	4603      	mov	r3, r0
878015a8:	3b01      	subs	r3, #1
878015aa:	b29a      	uxth	r2, r3
878015ac:	68fb      	ldr	r3, [r7, #12]
878015ae:	f8c3 20a8 	str.w	r2, [r3, #168]	; 0xa8
878015b2:	374c      	adds	r7, #76	; 0x4c
878015b4:	46bd      	mov	sp, r7
878015b6:	bd90      	pop	{r4, r7, pc}

878015b8 <uart_disable>:
878015b8:	b480      	push	{r7}
878015ba:	b083      	sub	sp, #12
878015bc:	af00      	add	r7, sp, #0
878015be:	6078      	str	r0, [r7, #4]
878015c0:	687b      	ldr	r3, [r7, #4]
878015c2:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
878015c6:	f023 0201 	bic.w	r2, r3, #1
878015ca:	687b      	ldr	r3, [r7, #4]
878015cc:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878015d0:	370c      	adds	r7, #12
878015d2:	46bd      	mov	sp, r7
878015d4:	f85d 7b04 	ldr.w	r7, [sp], #4
878015d8:	4770      	bx	lr
878015da:	bf00      	nop

878015dc <uart_enable>:
878015dc:	b480      	push	{r7}
878015de:	b083      	sub	sp, #12
878015e0:	af00      	add	r7, sp, #0
878015e2:	6078      	str	r0, [r7, #4]
878015e4:	687b      	ldr	r3, [r7, #4]
878015e6:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
878015ea:	f043 0201 	orr.w	r2, r3, #1
878015ee:	687b      	ldr	r3, [r7, #4]
878015f0:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878015f4:	370c      	adds	r7, #12
878015f6:	46bd      	mov	sp, r7
878015f8:	f85d 7b04 	ldr.w	r7, [sp], #4
878015fc:	4770      	bx	lr
878015fe:	bf00      	nop

87801600 <uart_softreset>:
87801600:	b480      	push	{r7}
87801602:	b083      	sub	sp, #12
87801604:	af00      	add	r7, sp, #0
87801606:	6078      	str	r0, [r7, #4]
87801608:	687b      	ldr	r3, [r7, #4]
8780160a:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
8780160e:	f023 0201 	bic.w	r2, r3, #1
87801612:	687b      	ldr	r3, [r7, #4]
87801614:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
87801618:	bf00      	nop
8780161a:	687b      	ldr	r3, [r7, #4]
8780161c:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
87801620:	f003 0301 	and.w	r3, r3, #1
87801624:	2b00      	cmp	r3, #0
87801626:	d0f8      	beq.n	8780161a <uart_softreset+0x1a>
87801628:	370c      	adds	r7, #12
8780162a:	46bd      	mov	sp, r7
8780162c:	f85d 7b04 	ldr.w	r7, [sp], #4
87801630:	4770      	bx	lr
87801632:	bf00      	nop

87801634 <putc>:
87801634:	b480      	push	{r7}
87801636:	b083      	sub	sp, #12
87801638:	af00      	add	r7, sp, #0
8780163a:	4603      	mov	r3, r0
8780163c:	71fb      	strb	r3, [r7, #7]
8780163e:	bf00      	nop
87801640:	2300      	movs	r3, #0
87801642:	f2c0 2302 	movt	r3, #514	; 0x202
87801646:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
8780164a:	08db      	lsrs	r3, r3, #3
8780164c:	f003 0301 	and.w	r3, r3, #1
87801650:	2b00      	cmp	r3, #0
87801652:	d0f5      	beq.n	87801640 <putc+0xc>
87801654:	2300      	movs	r3, #0
87801656:	f2c0 2302 	movt	r3, #514	; 0x202
8780165a:	79fa      	ldrb	r2, [r7, #7]
8780165c:	641a      	str	r2, [r3, #64]	; 0x40
8780165e:	370c      	adds	r7, #12
87801660:	46bd      	mov	sp, r7
87801662:	f85d 7b04 	ldr.w	r7, [sp], #4
87801666:	4770      	bx	lr

87801668 <puts>:
87801668:	b580      	push	{r7, lr}
8780166a:	b084      	sub	sp, #16
8780166c:	af00      	add	r7, sp, #0
8780166e:	6078      	str	r0, [r7, #4]
87801670:	687b      	ldr	r3, [r7, #4]
87801672:	60fb      	str	r3, [r7, #12]
87801674:	e006      	b.n	87801684 <puts+0x1c>
87801676:	68fb      	ldr	r3, [r7, #12]
87801678:	1c5a      	adds	r2, r3, #1
8780167a:	60fa      	str	r2, [r7, #12]
8780167c:	781b      	ldrb	r3, [r3, #0]
8780167e:	4618      	mov	r0, r3
87801680:	f7ff ffd8 	bl	87801634 <putc>
87801684:	68fb      	ldr	r3, [r7, #12]
87801686:	781b      	ldrb	r3, [r3, #0]
87801688:	2b00      	cmp	r3, #0
8780168a:	d1f4      	bne.n	87801676 <puts+0xe>
8780168c:	3710      	adds	r7, #16
8780168e:	46bd      	mov	sp, r7
87801690:	bd80      	pop	{r7, pc}
87801692:	bf00      	nop

87801694 <getc>:
87801694:	b480      	push	{r7}
87801696:	af00      	add	r7, sp, #0
87801698:	bf00      	nop
8780169a:	2300      	movs	r3, #0
8780169c:	f2c0 2302 	movt	r3, #514	; 0x202
878016a0:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
878016a4:	f003 0301 	and.w	r3, r3, #1
878016a8:	2b00      	cmp	r3, #0
878016aa:	d0f6      	beq.n	8780169a <getc+0x6>
878016ac:	2300      	movs	r3, #0
878016ae:	f2c0 2302 	movt	r3, #514	; 0x202
878016b2:	681b      	ldr	r3, [r3, #0]
878016b4:	b2db      	uxtb	r3, r3
878016b6:	4618      	mov	r0, r3
878016b8:	46bd      	mov	sp, r7
878016ba:	f85d 7b04 	ldr.w	r7, [sp], #4
878016be:	4770      	bx	lr

878016c0 <raise>:
878016c0:	b480      	push	{r7}
878016c2:	b083      	sub	sp, #12
878016c4:	af00      	add	r7, sp, #0
878016c6:	6078      	str	r0, [r7, #4]
878016c8:	370c      	adds	r7, #12
878016ca:	46bd      	mov	sp, r7
878016cc:	f85d 7b04 	ldr.w	r7, [sp], #4
878016d0:	4770      	bx	lr
878016d2:	bf00      	nop
878016d4:	0000      	movs	r0, r0
	...

878016d8 <__aeabi_uidiv>:
878016d8:	1e4a      	subs	r2, r1, #1
878016da:	bf08      	it	eq
878016dc:	4770      	bxeq	lr
878016de:	f0c0 8124 	bcc.w	8780192a <__aeabi_uidiv+0x252>
878016e2:	4288      	cmp	r0, r1
878016e4:	f240 8116 	bls.w	87801914 <__aeabi_uidiv+0x23c>
878016e8:	4211      	tst	r1, r2
878016ea:	f000 8117 	beq.w	8780191c <__aeabi_uidiv+0x244>
878016ee:	fab0 f380 	clz	r3, r0
878016f2:	fab1 f281 	clz	r2, r1
878016f6:	eba2 0303 	sub.w	r3, r2, r3
878016fa:	f1c3 031f 	rsb	r3, r3, #31
878016fe:	a204      	add	r2, pc, #16	; (adr r2, 87801710 <__aeabi_uidiv+0x38>)
87801700:	eb02 1303 	add.w	r3, r2, r3, lsl #4
87801704:	f04f 0200 	mov.w	r2, #0
87801708:	469f      	mov	pc, r3
8780170a:	bf00      	nop
8780170c:	f3af 8000 	nop.w
87801710:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
87801714:	bf00      	nop
87801716:	eb42 0202 	adc.w	r2, r2, r2
8780171a:	bf28      	it	cs
8780171c:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
87801720:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
87801724:	bf00      	nop
87801726:	eb42 0202 	adc.w	r2, r2, r2
8780172a:	bf28      	it	cs
8780172c:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
87801730:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
87801734:	bf00      	nop
87801736:	eb42 0202 	adc.w	r2, r2, r2
8780173a:	bf28      	it	cs
8780173c:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
87801740:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
87801744:	bf00      	nop
87801746:	eb42 0202 	adc.w	r2, r2, r2
8780174a:	bf28      	it	cs
8780174c:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
87801750:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
87801754:	bf00      	nop
87801756:	eb42 0202 	adc.w	r2, r2, r2
8780175a:	bf28      	it	cs
8780175c:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
87801760:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
87801764:	bf00      	nop
87801766:	eb42 0202 	adc.w	r2, r2, r2
8780176a:	bf28      	it	cs
8780176c:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
87801770:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
87801774:	bf00      	nop
87801776:	eb42 0202 	adc.w	r2, r2, r2
8780177a:	bf28      	it	cs
8780177c:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
87801780:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
87801784:	bf00      	nop
87801786:	eb42 0202 	adc.w	r2, r2, r2
8780178a:	bf28      	it	cs
8780178c:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
87801790:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
87801794:	bf00      	nop
87801796:	eb42 0202 	adc.w	r2, r2, r2
8780179a:	bf28      	it	cs
8780179c:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
878017a0:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
878017a4:	bf00      	nop
878017a6:	eb42 0202 	adc.w	r2, r2, r2
878017aa:	bf28      	it	cs
878017ac:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
878017b0:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
878017b4:	bf00      	nop
878017b6:	eb42 0202 	adc.w	r2, r2, r2
878017ba:	bf28      	it	cs
878017bc:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
878017c0:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
878017c4:	bf00      	nop
878017c6:	eb42 0202 	adc.w	r2, r2, r2
878017ca:	bf28      	it	cs
878017cc:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
878017d0:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
878017d4:	bf00      	nop
878017d6:	eb42 0202 	adc.w	r2, r2, r2
878017da:	bf28      	it	cs
878017dc:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
878017e0:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
878017e4:	bf00      	nop
878017e6:	eb42 0202 	adc.w	r2, r2, r2
878017ea:	bf28      	it	cs
878017ec:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
878017f0:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
878017f4:	bf00      	nop
878017f6:	eb42 0202 	adc.w	r2, r2, r2
878017fa:	bf28      	it	cs
878017fc:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
87801800:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
87801804:	bf00      	nop
87801806:	eb42 0202 	adc.w	r2, r2, r2
8780180a:	bf28      	it	cs
8780180c:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
87801810:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
87801814:	bf00      	nop
87801816:	eb42 0202 	adc.w	r2, r2, r2
8780181a:	bf28      	it	cs
8780181c:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
87801820:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
87801824:	bf00      	nop
87801826:	eb42 0202 	adc.w	r2, r2, r2
8780182a:	bf28      	it	cs
8780182c:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
87801830:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
87801834:	bf00      	nop
87801836:	eb42 0202 	adc.w	r2, r2, r2
8780183a:	bf28      	it	cs
8780183c:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
87801840:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
87801844:	bf00      	nop
87801846:	eb42 0202 	adc.w	r2, r2, r2
8780184a:	bf28      	it	cs
8780184c:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
87801850:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
87801854:	bf00      	nop
87801856:	eb42 0202 	adc.w	r2, r2, r2
8780185a:	bf28      	it	cs
8780185c:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
87801860:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
87801864:	bf00      	nop
87801866:	eb42 0202 	adc.w	r2, r2, r2
8780186a:	bf28      	it	cs
8780186c:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
87801870:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
87801874:	bf00      	nop
87801876:	eb42 0202 	adc.w	r2, r2, r2
8780187a:	bf28      	it	cs
8780187c:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
87801880:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
87801884:	bf00      	nop
87801886:	eb42 0202 	adc.w	r2, r2, r2
8780188a:	bf28      	it	cs
8780188c:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
87801890:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
87801894:	bf00      	nop
87801896:	eb42 0202 	adc.w	r2, r2, r2
8780189a:	bf28      	it	cs
8780189c:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
878018a0:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
878018a4:	bf00      	nop
878018a6:	eb42 0202 	adc.w	r2, r2, r2
878018aa:	bf28      	it	cs
878018ac:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
878018b0:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
878018b4:	bf00      	nop
878018b6:	eb42 0202 	adc.w	r2, r2, r2
878018ba:	bf28      	it	cs
878018bc:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
878018c0:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
878018c4:	bf00      	nop
878018c6:	eb42 0202 	adc.w	r2, r2, r2
878018ca:	bf28      	it	cs
878018cc:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
878018d0:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
878018d4:	bf00      	nop
878018d6:	eb42 0202 	adc.w	r2, r2, r2
878018da:	bf28      	it	cs
878018dc:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
878018e0:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
878018e4:	bf00      	nop
878018e6:	eb42 0202 	adc.w	r2, r2, r2
878018ea:	bf28      	it	cs
878018ec:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
878018f0:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
878018f4:	bf00      	nop
878018f6:	eb42 0202 	adc.w	r2, r2, r2
878018fa:	bf28      	it	cs
878018fc:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
87801900:	ebb0 0f01 	cmp.w	r0, r1
87801904:	bf00      	nop
87801906:	eb42 0202 	adc.w	r2, r2, r2
8780190a:	bf28      	it	cs
8780190c:	eba0 0001 	subcs.w	r0, r0, r1
87801910:	4610      	mov	r0, r2
87801912:	4770      	bx	lr
87801914:	bf0c      	ite	eq
87801916:	2001      	moveq	r0, #1
87801918:	2000      	movne	r0, #0
8780191a:	4770      	bx	lr
8780191c:	fab1 f281 	clz	r2, r1
87801920:	f1c2 021f 	rsb	r2, r2, #31
87801924:	fa20 f002 	lsr.w	r0, r0, r2
87801928:	4770      	bx	lr
8780192a:	b108      	cbz	r0, 87801930 <__aeabi_uidiv+0x258>
8780192c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
87801930:	f000 b826 	b.w	87801980 <__aeabi_idiv0>

87801934 <__aeabi_uidivmod>:
87801934:	2900      	cmp	r1, #0
87801936:	d0f8      	beq.n	8780192a <__aeabi_uidiv+0x252>
87801938:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
8780193c:	f7ff fecc 	bl	878016d8 <__aeabi_uidiv>
87801940:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87801944:	fb02 f300 	mul.w	r3, r2, r0
87801948:	eba1 0103 	sub.w	r1, r1, r3
8780194c:	4770      	bx	lr
8780194e:	bf00      	nop

87801950 <__aeabi_uldivmod>:
87801950:	b953      	cbnz	r3, 87801968 <__aeabi_uldivmod+0x18>
87801952:	b94a      	cbnz	r2, 87801968 <__aeabi_uldivmod+0x18>
87801954:	2900      	cmp	r1, #0
87801956:	bf08      	it	eq
87801958:	2800      	cmpeq	r0, #0
8780195a:	bf1c      	itt	ne
8780195c:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
87801960:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
87801964:	f000 b80c 	b.w	87801980 <__aeabi_idiv0>
87801968:	f1ad 0c08 	sub.w	ip, sp, #8
8780196c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
87801970:	f000 f80c 	bl	8780198c <__udivmoddi4>
87801974:	f8dd e004 	ldr.w	lr, [sp, #4]
87801978:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
8780197c:	b004      	add	sp, #16
8780197e:	4770      	bx	lr

87801980 <__aeabi_idiv0>:
87801980:	b502      	push	{r1, lr}
87801982:	f04f 0008 	mov.w	r0, #8
87801986:	f7ff fe9b 	bl	878016c0 <raise>
8780198a:	bd02      	pop	{r1, pc}

8780198c <__udivmoddi4>:
8780198c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
87801990:	460d      	mov	r5, r1
87801992:	429d      	cmp	r5, r3
87801994:	4604      	mov	r4, r0
87801996:	4610      	mov	r0, r2
87801998:	4619      	mov	r1, r3
8780199a:	bf08      	it	eq
8780199c:	4284      	cmpeq	r4, r0
8780199e:	9a07      	ldr	r2, [sp, #28]
878019a0:	bf3c      	itt	cc
878019a2:	2000      	movcc	r0, #0
878019a4:	2100      	movcc	r1, #0
878019a6:	d36a      	bcc.n	87801a7e <__udivmoddi4+0xf2>
878019a8:	fab1 f681 	clz	r6, r1
878019ac:	2900      	cmp	r1, #0
878019ae:	d06f      	beq.n	87801a90 <__udivmoddi4+0x104>
878019b0:	fab5 f385 	clz	r3, r5
878019b4:	2d00      	cmp	r5, #0
878019b6:	d067      	beq.n	87801a88 <__udivmoddi4+0xfc>
878019b8:	1af3      	subs	r3, r6, r3
878019ba:	f1a3 0c20 	sub.w	ip, r3, #32
878019be:	fa01 f703 	lsl.w	r7, r1, r3
878019c2:	fa00 fe0c 	lsl.w	lr, r0, ip
878019c6:	f1c3 0820 	rsb	r8, r3, #32
878019ca:	fa20 f108 	lsr.w	r1, r0, r8
878019ce:	fa00 f603 	lsl.w	r6, r0, r3
878019d2:	ea47 070e 	orr.w	r7, r7, lr
878019d6:	469e      	mov	lr, r3
878019d8:	430f      	orrs	r7, r1
878019da:	42bd      	cmp	r5, r7
878019dc:	bf08      	it	eq
878019de:	42b4      	cmpeq	r4, r6
878019e0:	bf3c      	itt	cc
878019e2:	2000      	movcc	r0, #0
878019e4:	2100      	movcc	r1, #0
878019e6:	d30c      	bcc.n	87801a02 <__udivmoddi4+0x76>
878019e8:	f04f 0901 	mov.w	r9, #1
878019ec:	1ba4      	subs	r4, r4, r6
878019ee:	fa29 f808 	lsr.w	r8, r9, r8
878019f2:	fa09 f10c 	lsl.w	r1, r9, ip
878019f6:	fa09 f003 	lsl.w	r0, r9, r3
878019fa:	ea41 0108 	orr.w	r1, r1, r8
878019fe:	eb65 0507 	sbc.w	r5, r5, r7
87801a02:	2b00      	cmp	r3, #0
87801a04:	d03b      	beq.n	87801a7e <__udivmoddi4+0xf2>
87801a06:	087f      	lsrs	r7, r7, #1
87801a08:	ea4f 0636 	mov.w	r6, r6, rrx
87801a0c:	e009      	b.n	87801a22 <__udivmoddi4+0x96>
87801a0e:	1ba4      	subs	r4, r4, r6
87801a10:	eb65 0507 	sbc.w	r5, r5, r7
87801a14:	1924      	adds	r4, r4, r4
87801a16:	416d      	adcs	r5, r5
87801a18:	3401      	adds	r4, #1
87801a1a:	f145 0500 	adc.w	r5, r5, #0
87801a1e:	3b01      	subs	r3, #1
87801a20:	d007      	beq.n	87801a32 <__udivmoddi4+0xa6>
87801a22:	42bd      	cmp	r5, r7
87801a24:	bf08      	it	eq
87801a26:	42b4      	cmpeq	r4, r6
87801a28:	d2f1      	bcs.n	87801a0e <__udivmoddi4+0x82>
87801a2a:	1924      	adds	r4, r4, r4
87801a2c:	416d      	adcs	r5, r5
87801a2e:	3b01      	subs	r3, #1
87801a30:	d1f7      	bne.n	87801a22 <__udivmoddi4+0x96>
87801a32:	f1ce 0720 	rsb	r7, lr, #32
87801a36:	fa24 f60e 	lsr.w	r6, r4, lr
87801a3a:	fa05 f707 	lsl.w	r7, r5, r7
87801a3e:	f1ae 0320 	sub.w	r3, lr, #32
87801a42:	fa25 f303 	lsr.w	r3, r5, r3
87801a46:	fa25 fc0e 	lsr.w	ip, r5, lr
87801a4a:	1900      	adds	r0, r0, r4
87801a4c:	ea46 0607 	orr.w	r6, r6, r7
87801a50:	ea46 0403 	orr.w	r4, r6, r3
87801a54:	4169      	adcs	r1, r5
87801a56:	4665      	mov	r5, ip
87801a58:	f1ae 0c20 	sub.w	ip, lr, #32
87801a5c:	fa05 f70e 	lsl.w	r7, r5, lr
87801a60:	fa04 fc0c 	lsl.w	ip, r4, ip
87801a64:	fa04 f60e 	lsl.w	r6, r4, lr
87801a68:	f1ce 0320 	rsb	r3, lr, #32
87801a6c:	fa24 f303 	lsr.w	r3, r4, r3
87801a70:	ea47 070c 	orr.w	r7, r7, ip
87801a74:	1b80      	subs	r0, r0, r6
87801a76:	ea47 0703 	orr.w	r7, r7, r3
87801a7a:	eb61 0107 	sbc.w	r1, r1, r7
87801a7e:	b10a      	cbz	r2, 87801a84 <__udivmoddi4+0xf8>
87801a80:	e9c2 4500 	strd	r4, r5, [r2]
87801a84:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
87801a88:	fab4 f384 	clz	r3, r4
87801a8c:	3320      	adds	r3, #32
87801a8e:	e793      	b.n	878019b8 <__udivmoddi4+0x2c>
87801a90:	fab0 f380 	clz	r3, r0
87801a94:	f103 0620 	add.w	r6, r3, #32
87801a98:	fab5 f385 	clz	r3, r5
87801a9c:	2d00      	cmp	r5, #0
87801a9e:	d18b      	bne.n	878019b8 <__udivmoddi4+0x2c>
87801aa0:	e7f2      	b.n	87801a88 <__udivmoddi4+0xfc>
87801aa2:	bf00      	nop
87801aa4:	0000      	movs	r0, r0
	...

87801aa8 <__main_from_arm>:
87801aa8:	e51ff004 	ldr	pc, [pc, #-4]	; 87801aac <__main_from_arm+0x4>
87801aac:	87801ab1 			; <UNDEFINED> instruction: 0x87801ab1

Disassembly of section .text.startup:

87801ab0 <main>:
87801ab0:	b538      	push	{r3, r4, r5, lr}
87801ab2:	2400      	movs	r4, #0
87801ab4:	f7ff f816 	bl	87800ae4 <int_init>
87801ab8:	f7fe fb86 	bl	878001c8 <imx6u_clkinit>
87801abc:	f7fe fd08 	bl	878004d0 <delay_init>
87801ac0:	f7fe fb4a 	bl	87800158 <clk_enable>
87801ac4:	f7fe fc9a 	bl	878003fc <led_init>
87801ac8:	f7fe fde0 	bl	8780068c <beep_init>
87801acc:	f7ff fb7a 	bl	878011c4 <uart_init>
87801ad0:	f641 3020 	movw	r0, #6944	; 0x1b20
87801ad4:	f084 0401 	eor.w	r4, r4, #1
87801ad8:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801adc:	f7ff fdc4 	bl	87801668 <puts>
87801ae0:	f7ff fdd8 	bl	87801694 <getc>
87801ae4:	4605      	mov	r5, r0
87801ae6:	f7ff fda5 	bl	87801634 <putc>
87801aea:	f641 3038 	movw	r0, #6968	; 0x1b38
87801aee:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801af2:	f7ff fdb9 	bl	87801668 <puts>
87801af6:	f641 303c 	movw	r0, #6972	; 0x1b3c
87801afa:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801afe:	f7ff fdb3 	bl	87801668 <puts>
87801b02:	4628      	mov	r0, r5
87801b04:	f7ff fd96 	bl	87801634 <putc>
87801b08:	f641 3054 	movw	r0, #6996	; 0x1b54
87801b0c:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801b10:	f7ff fdaa 	bl	87801668 <puts>
87801b14:	4621      	mov	r1, r4
87801b16:	2000      	movs	r0, #0
87801b18:	f7fe fcac 	bl	87800474 <led_switch>
87801b1c:	e7d8      	b.n	87801ad0 <main+0x20>
87801b1e:	bf00      	nop

Disassembly of section .rodata:

87801b20 <.rodata>:
87801b20:	e8b7afe8 	ldm	r7!, {r3, r5, r6, r7, r8, r9, sl, fp, sp, pc}
87801b24:	85e593be 	strbhi	r9, [r5, #958]!	; 0x3be
87801b28:	b8e431a5 	stmialt	r4!, {r0, r2, r5, r7, r8, ip, sp}^
87801b2c:	97ade5aa 	strls	lr, [sp, sl, lsr #11]!
87801b30:	3aa6ace7 	bcc	861aced4 <shift+0x861aced4>
87801b34:	00000000 	andeq	r0, r0, r0
87801b38:	00000a0d 	andeq	r0, r0, sp, lsl #20
87801b3c:	e8a882e6 	stmia	r8!, {r1, r2, r5, r6, r7, r9, pc}
87801b40:	85e593be 	strbhi	r9, [r5, #958]!	; 0x3be
87801b44:	849ae7a5 	ldrhi	lr, [sl], #1957	; 0x7a5
87801b48:	e797ade5 	ldr	sl, [r7, r5, ror #27]
87801b4c:	b8e4a6ac 	stmialt	r4!, {r2, r3, r5, r7, r9, sl, sp, pc}^
87801b50:	00003aba 			; <UNDEFINED> instruction: 0x00003aba
87801b54:	0a0d0a0d 	beq	87b44390 <__bss_end+0x342321>
87801b58:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.exidx:

87801b5c <.ARM.exidx>:
87801b5c:	7ffffe30 	svcvc	0x00fffe30
87801b60:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

87801b64 <release.7556>:
87801b64:	Address 0x0000000087801b64 is out of bounds.


Disassembly of section .bss:

87801b68 <irqNesting>:
87801b68:	00000000 	andeq	r0, r0, r0

87801b6c <irqTable>:
	...

8780206c <state.7574>:
	...

8780206d <state.7525>:
	...

8780206e <state.7590>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <shift+0x10d0d24>
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
  28:	1b021a01 	blne	86834 <shift+0x86834>
  2c:	22011c03 	andcs	r1, r1, #768	; 0x300
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c010001 	stcvc	0, cr0, [r1], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000000c 	andeq	r0, r0, ip
  14:	00000000 	andeq	r0, r0, r0
  18:	878016d9 			; <UNDEFINED> instruction: 0x878016d9
  1c:	0000025c 	andeq	r0, r0, ip, asr r2
  20:	0000000c 	andeq	r0, r0, ip
  24:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  28:	7c020001 	stcvc	0, cr0, [r2], {1}
  2c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  30:	00000018 	andeq	r0, r0, r8, lsl r0
  34:	00000020 	andeq	r0, r0, r0, lsr #32
  38:	87801950 			; <UNDEFINED> instruction: 0x87801950
  3c:	00000030 	andeq	r0, r0, r0, lsr r0
  40:	8e100e50 	mrchi	14, 0, r0, cr0, cr0, {2}
  44:	0ece4703 	cdpeq	7, 12, cr4, cr14, cr3, {0}
  48:	00000010 	andeq	r0, r0, r0, lsl r0
  4c:	0000000c 	andeq	r0, r0, ip
  50:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  54:	7c020001 	stcvc	0, cr0, [r2], {1}
  58:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  5c:	00000020 	andeq	r0, r0, r0, lsr #32
  60:	0000004c 	andeq	r0, r0, ip, asr #32
  64:	8780198c 	strhi	r1, [r0, ip, lsl #19]
  68:	00000116 	andeq	r0, r0, r6, lsl r1
  6c:	841c0e42 	ldrhi	r0, [ip], #-3650	; 0xe42
  70:	86068507 	strhi	r8, [r6], -r7, lsl #10
  74:	88048705 	stmdahi	r4, {r0, r2, r8, r9, sl, pc}
  78:	8e028903 	cdphi	9, 0, cr8, cr2, cr3, {0}
  7c:	00000001 	andeq	r0, r0, r1

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000100 	andeq	r0, r0, r0, lsl #2
   4:	00c70002 	sbceq	r0, r7, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	2f010000 	svccs	0x00010000
  1c:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
  20:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
  24:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
  28:	73646c69 	cmnvc	r4, #26880	; 0x6900
  2c:	6576616c 	ldrbvs	r6, [r6, #-364]!	; 0x16c
  30:	726f772f 	rsbvc	r7, pc, #12320768	; 0xbc0000
  34:	6170736b 	cmnvs	r0, fp, ror #6
  38:	742f6563 	strtvc	r6, [pc], #-1379	; 40 <shift+0x40>
  3c:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
  40:	656b616d 	strbvs	r6, [fp, #-365]!	; 0x16d
  44:	6c65722d 	sfmvs	f7, 2, [r5], #-180	; 0xffffff4c
  48:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
  4c:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
  50:	642f6c65 	strtvs	r6, [pc], #-3173	; 58 <shift+0x58>
  54:	656b636f 	strbvs	r6, [fp, #-879]!	; 0x36f
  58:	72742d72 	rsbsvc	r2, r4, #7296	; 0x1c80
  5c:	79747375 	ldmdbvc	r4!, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}^
  60:	646d612d 	strbtvs	r6, [sp], #-301	; 0x12d
  64:	742d3436 	strtvc	r3, [sp], #-1078	; 0x436
  68:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
  6c:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
  70:	61742f64 	cmnvs	r4, r4, ror #30
  74:	74656772 	strbtvc	r6, [r5], #-1906	; 0x772
  78:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
  7c:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
  80:	672d7875 			; <UNDEFINED> instruction: 0x672d7875
  84:	6165756e 	cmnvs	r5, lr, ror #10
  88:	66686962 	strbtvs	r6, [r8], -r2, ror #18
  8c:	616e732f 	cmnvs	lr, pc, lsr #6
  90:	6f687370 	svcvs	0x00687370
  94:	672f7374 			; <UNDEFINED> instruction: 0x672f7374
  98:	6c2d6363 	stcvs	3, cr6, [sp], #-396	; 0xfffffe74
  9c:	72616e69 	rsbvc	r6, r1, #1680	; 0x690
  a0:	2e342d6f 	cdpcs	13, 3, cr2, cr4, cr15, {3}
  a4:	30322d39 	eorscc	r2, r2, r9, lsr sp
  a8:	302e3731 	eorcc	r3, lr, r1, lsr r7
  ac:	696c2f31 	stmdbvs	ip!, {r0, r4, r5, r8, r9, sl, fp, sp}^
  b0:	63636762 	cmnvs	r3, #25690112	; 0x1880000
  b4:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
  b8:	2f676966 	svccs	0x00676966
  bc:	006d7261 	rsbeq	r7, sp, r1, ror #4
  c0:	62696c00 	rsbvs	r6, r9, #0, 24
  c4:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
  c8:	532e7363 	teqpl	lr, #-1946157055	; 0x8c000001
  cc:	00000100 	andeq	r0, r0, r0, lsl #2
  d0:	02050000 	andeq	r0, r5, #0
  d4:	878016d8 			; <UNDEFINED> instruction: 0x878016d8
  d8:	0107cf03 	tsteq	r7, r3, lsl #30
  dc:	2f212121 	svccs	0x00212121
  e0:	30212f21 	eorcc	r2, r1, r1, lsr #30
  e4:	14029102 	strne	r9, [r2], #-258	; 0x102
  e8:	21212221 	teqcs	r1, r1, lsr #4
  ec:	2f4c2221 	svccs	0x004c2221
  f0:	207aeb03 	rsbscs	lr, sl, r3, lsl #22
  f4:	5805af03 	stmdapl	r5, {r0, r1, r8, r9, sl, fp, sp, pc}
  f8:	2f2f2121 	svccs	0x002f2121
  fc:	022f2f2f 	eoreq	r2, pc, #47, 30	; 0xbc
 100:	01010001 	tsteq	r1, r1
 104:	000000dd 	ldrdeq	r0, [r0], -sp
 108:	00c30002 	sbceq	r0, r3, r2
 10c:	01020000 	mrseq	r0, (UNDEF: 2)
 110:	000d0efb 	strdeq	r0, [sp], -fp
 114:	01010101 	tsteq	r1, r1, lsl #2
 118:	01000000 	mrseq	r0, (UNDEF: 0)
 11c:	2f010000 	svccs	0x00010000
 120:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
 124:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
 128:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
 12c:	73646c69 	cmnvc	r4, #26880	; 0x6900
 130:	6576616c 	ldrbvs	r6, [r6, #-364]!	; 0x16c
 134:	726f772f 	rsbvc	r7, pc, #12320768	; 0xbc0000
 138:	6170736b 	cmnvs	r0, fp, ror #6
 13c:	742f6563 	strtvc	r6, [pc], #-1379	; 144 <shift+0x144>
 140:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 144:	656b616d 	strbvs	r6, [fp, #-365]!	; 0x16d
 148:	6c65722d 	sfmvs	f7, 2, [r5], #-180	; 0xffffff4c
 14c:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
 150:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
 154:	642f6c65 	strtvs	r6, [pc], #-3173	; 15c <shift+0x15c>
 158:	656b636f 	strbvs	r6, [fp, #-879]!	; 0x36f
 15c:	72742d72 	rsbsvc	r2, r4, #7296	; 0x1c80
 160:	79747375 	ldmdbvc	r4!, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}^
 164:	646d612d 	strbtvs	r6, [sp], #-301	; 0x12d
 168:	742d3436 	strtvc	r3, [sp], #-1078	; 0x436
 16c:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 170:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 174:	61742f64 	cmnvs	r4, r4, ror #30
 178:	74656772 	strbtvc	r6, [r5], #-1906	; 0x772
 17c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 180:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
 184:	672d7875 			; <UNDEFINED> instruction: 0x672d7875
 188:	6165756e 	cmnvs	r5, lr, ror #10
 18c:	66686962 	strbtvs	r6, [r8], -r2, ror #18
 190:	616e732f 	cmnvs	lr, pc, lsr #6
 194:	6f687370 	svcvs	0x00687370
 198:	672f7374 			; <UNDEFINED> instruction: 0x672f7374
 19c:	6c2d6363 	stcvs	3, cr6, [sp], #-396	; 0xfffffe74
 1a0:	72616e69 	rsbvc	r6, r1, #1680	; 0x690
 1a4:	2e342d6f 	cdpcs	13, 3, cr2, cr4, cr15, {3}
 1a8:	30322d39 	eorscc	r2, r2, r9, lsr sp
 1ac:	302e3731 	eorcc	r3, lr, r1, lsr r7
 1b0:	696c2f31 	stmdbvs	ip!, {r0, r4, r5, r8, r9, sl, fp, sp}^
 1b4:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 1b8:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 1bc:	2f676966 	svccs	0x00676966
 1c0:	006d7261 	rsbeq	r7, sp, r1, ror #4
 1c4:	61706200 	cmnvs	r0, r0, lsl #4
 1c8:	532e6962 	teqpl	lr, #1605632	; 0x188000
 1cc:	00000100 	andeq	r0, r0, r0, lsl #2
 1d0:	02050000 	andeq	r0, r5, #0
 1d4:	87801950 			; <UNDEFINED> instruction: 0x87801950
 1d8:	0101fd03 	tsteq	r1, r3, lsl #26
 1dc:	592f4cbc 	stmdbpl	pc!, {r2, r3, r4, r5, r7, sl, fp, lr}	; <UNPREDICTABLE>
 1e0:	01000102 	tsteq	r0, r2, lsl #2
 1e4:	0000e301 	andeq	lr, r0, r1, lsl #6
 1e8:	c7000200 	strgt	r0, [r0, -r0, lsl #4]
 1ec:	02000000 	andeq	r0, r0, #0
 1f0:	0d0efb01 	vstreq	d15, [lr, #-4]
 1f4:	01010100 	mrseq	r0, (UNDEF: 17)
 1f8:	00000001 	andeq	r0, r0, r1
 1fc:	01000001 	tsteq	r0, r1
 200:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 14c <shift+0x14c>
 204:	63742f65 	cmnvs	r4, #404	; 0x194
 208:	622d6777 	eorvs	r6, sp, #31195136	; 0x1dc0000
 20c:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
 210:	76616c73 			; <UNDEFINED> instruction: 0x76616c73
 214:	6f772f65 	svcvs	0x00772f65
 218:	70736b72 	rsbsvc	r6, r3, r2, ror fp
 21c:	2f656361 	svccs	0x00656361
 220:	67776374 			; <UNDEFINED> instruction: 0x67776374
 224:	6b616d2d 	blvs	185b6e0 <shift+0x185b6e0>
 228:	65722d65 	ldrbvs	r2, [r2, #-3429]!	; 0xd65
 22c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 230:	616c2f65 	cmnvs	ip, r5, ror #30
 234:	2f6c6562 	svccs	0x006c6562
 238:	6b636f64 	blvs	18dbfd0 <shift+0x18dbfd0>
 23c:	742d7265 	strtvc	r7, [sp], #-613	; 0x265
 240:	74737572 	ldrbtvc	r7, [r3], #-1394	; 0x572
 244:	6d612d79 	stclvs	13, cr2, [r1, #-484]!	; 0xfffffe1c
 248:	2d343664 	ldccs	6, cr3, [r4, #-400]!	; 0xfffffe70
 24c:	67776374 			; <UNDEFINED> instruction: 0x67776374
 250:	6975622d 	ldmdbvs	r5!, {r0, r2, r3, r5, r9, sp, lr}^
 254:	742f646c 	strtvc	r6, [pc], #-1132	; 25c <shift+0x25c>
 258:	65677261 	strbvs	r7, [r7, #-609]!	; 0x261
 25c:	72612f74 	rsbvc	r2, r1, #116, 30	; 0x1d0
 260:	696c2d6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, sl, fp, sp}^
 264:	2d78756e 	cfldr64cs	mvdx7, [r8, #-440]!	; 0xfffffe48
 268:	65756e67 	ldrbvs	r6, [r5, #-3687]!	; 0xe67
 26c:	68696261 	stmdavs	r9!, {r0, r5, r6, r9, sp, lr}^
 270:	6e732f66 	cdpvs	15, 7, cr2, cr3, cr6, {3}
 274:	68737061 	ldmdavs	r3!, {r0, r5, r6, ip, sp, lr}^
 278:	2f73746f 	svccs	0x0073746f
 27c:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 280:	616e696c 	cmnvs	lr, ip, ror #18
 284:	342d6f72 	strtcc	r6, [sp], #-3954	; 0xf72
 288:	322d392e 	eorcc	r3, sp, #753664	; 0xb8000
 28c:	2e373130 	mrccs	1, 1, r3, cr7, cr0, {1}
 290:	6c2f3130 	stfvss	f3, [pc], #-192	; 1d8 <shift+0x1d8>
 294:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 298:	6f632f63 	svcvs	0x00632f63
 29c:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 2a0:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 2a4:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 2a8:	75663162 	strbvc	r3, [r6, #-354]!	; 0x162
 2ac:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 2b0:	00010053 	andeq	r0, r1, r3, asr r0
 2b4:	05000000 	streq	r0, [r0, #-0]
 2b8:	80198002 	andshi	r8, r9, r2
 2bc:	0ab00387 	beq	fec010e0 <__bss_end+0x773ff071>
 2c0:	032f2101 	teqeq	pc, #1073741824	; 0x40000000
 2c4:	022e77bb 	eoreq	r7, lr, #49020928	; 0x2ec0000
 2c8:	01010001 	tsteq	r1, r1
 2cc:	00000113 	andeq	r0, r0, r3, lsl r1
 2d0:	00c70002 	sbceq	r0, r7, r2
 2d4:	01020000 	mrseq	r0, (UNDEF: 2)
 2d8:	000d0efb 	strdeq	r0, [sp], -fp
 2dc:	01010101 	tsteq	r1, r1, lsl #2
 2e0:	01000000 	mrseq	r0, (UNDEF: 0)
 2e4:	2f010000 	svccs	0x00010000
 2e8:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
 2ec:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
 2f0:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
 2f4:	73646c69 	cmnvc	r4, #26880	; 0x6900
 2f8:	6576616c 	ldrbvs	r6, [r6, #-364]!	; 0x16c
 2fc:	726f772f 	rsbvc	r7, pc, #12320768	; 0xbc0000
 300:	6170736b 	cmnvs	r0, fp, ror #6
 304:	742f6563 	strtvc	r6, [pc], #-1379	; 30c <shift+0x30c>
 308:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 30c:	656b616d 	strbvs	r6, [fp, #-365]!	; 0x16d
 310:	6c65722d 	sfmvs	f7, 2, [r5], #-180	; 0xffffff4c
 314:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
 318:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
 31c:	642f6c65 	strtvs	r6, [pc], #-3173	; 324 <shift+0x324>
 320:	656b636f 	strbvs	r6, [fp, #-879]!	; 0x36f
 324:	72742d72 	rsbsvc	r2, r4, #7296	; 0x1c80
 328:	79747375 	ldmdbvc	r4!, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}^
 32c:	646d612d 	strbtvs	r6, [sp], #-301	; 0x12d
 330:	742d3436 	strtvc	r3, [sp], #-1078	; 0x436
 334:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 338:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 33c:	61742f64 	cmnvs	r4, r4, ror #30
 340:	74656772 	strbtvc	r6, [r5], #-1906	; 0x772
 344:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 348:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
 34c:	672d7875 			; <UNDEFINED> instruction: 0x672d7875
 350:	6165756e 	cmnvs	r5, lr, ror #10
 354:	66686962 	strbtvs	r6, [r8], -r2, ror #18
 358:	616e732f 	cmnvs	lr, pc, lsr #6
 35c:	6f687370 	svcvs	0x00687370
 360:	672f7374 			; <UNDEFINED> instruction: 0x672f7374
 364:	6c2d6363 	stcvs	3, cr6, [sp], #-396	; 0xfffffe74
 368:	72616e69 	rsbvc	r6, r1, #1680	; 0x690
 36c:	2e342d6f 	cdpcs	13, 3, cr2, cr4, cr15, {3}
 370:	30322d39 	eorscc	r2, r2, r9, lsr sp
 374:	302e3731 	eorcc	r3, lr, r1, lsr r7
 378:	696c2f31 	stmdbvs	ip!, {r0, r4, r5, r8, r9, sl, fp, sp}^
 37c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 380:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 384:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 388:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 38c:	6c000001 	stcvs	0, cr0, [r0], {1}
 390:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 394:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 398:	00000100 	andeq	r0, r0, r0, lsl #2
 39c:	02050000 	andeq	r0, r5, #0
 3a0:	8780198c 	strhi	r1, [r0, ip, lsl #19]
 3a4:	0107b003 	tsteq	r7, r3
 3a8:	200c032e 	andcs	r0, ip, lr, lsr #6
 3ac:	03207403 	teqeq	r0, #50331648	; 0x3000000
 3b0:	74033c0c 	strvc	r3, [r3], #-3084	; 0xc0c
 3b4:	0b03212e 	bleq	c8874 <shift+0xc8874>
 3b8:	4c4b223c 	sfmmi	f2, 2, [fp], {60}	; 0x3c
 3bc:	6803f921 	stmdavs	r3, {r0, r5, r8, fp, ip, sp, lr, pc}
 3c0:	3c18033c 	ldccc	3, cr0, [r8], {60}	; 0x3c
 3c4:	81212d23 	teqhi	r1, r3, lsr #26
 3c8:	86523032 			; <UNDEFINED> instruction: 0x86523032
 3cc:	33304d29 	teqcc	r0, #2624	; 0xa40
 3d0:	214921b9 	strhcs	r2, [r9, #-25]	; 0xffffffe7
 3d4:	21320821 	teqcs	r2, r1, lsr #16
 3d8:	2e550330 	mrccs	3, 2, r0, cr5, cr0, {1}
 3dc:	05024b49 	streq	r4, [r2, #-2889]	; 0xb49
 3e0:	Address 0x00000000000003e0 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000001bb 			; <UNDEFINED> instruction: 0x000001bb
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000000 	andeq	r0, r0, r0
  10:	878016d8 			; <UNDEFINED> instruction: 0x878016d8
  14:	8780194e 	strhi	r1, [r0, lr, asr #18]
  18:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; ffffff64 <__bss_end+0x787fdef5>
  1c:	63742f65 	cmnvs	r4, #404	; 0x194
  20:	622d6777 	eorvs	r6, sp, #31195136	; 0x1dc0000
  24:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
  28:	76616c73 			; <UNDEFINED> instruction: 0x76616c73
  2c:	6f772f65 	svcvs	0x00772f65
  30:	70736b72 	rsbsvc	r6, r3, r2, ror fp
  34:	2f656361 	svccs	0x00656361
  38:	67776374 			; <UNDEFINED> instruction: 0x67776374
  3c:	6b616d2d 	blvs	185b4f8 <shift+0x185b4f8>
  40:	65722d65 	ldrbvs	r2, [r2, #-3429]!	; 0xd65
  44:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  48:	616c2f65 	cmnvs	ip, r5, ror #30
  4c:	2f6c6562 	svccs	0x006c6562
  50:	6b636f64 	blvs	18dbde8 <shift+0x18dbde8>
  54:	742d7265 	strtvc	r7, [sp], #-613	; 0x265
  58:	74737572 	ldrbtvc	r7, [r3], #-1394	; 0x572
  5c:	6d612d79 	stclvs	13, cr2, [r1, #-484]!	; 0xfffffe1c
  60:	2d343664 	ldccs	6, cr3, [r4, #-400]!	; 0xfffffe70
  64:	67776374 			; <UNDEFINED> instruction: 0x67776374
  68:	6975622d 	ldmdbvs	r5!, {r0, r2, r3, r5, r9, sp, lr}^
  6c:	742f646c 	strtvc	r6, [pc], #-1132	; 74 <shift+0x74>
  70:	65677261 	strbvs	r7, [r7, #-609]!	; 0x261
  74:	72612f74 	rsbvc	r2, r1, #116, 30	; 0x1d0
  78:	696c2d6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, sl, fp, sp}^
  7c:	2d78756e 	cfldr64cs	mvdx7, [r8, #-440]!	; 0xfffffe48
  80:	65756e67 	ldrbvs	r6, [r5, #-3687]!	; 0xe67
  84:	68696261 	stmdavs	r9!, {r0, r5, r6, r9, sp, lr}^
  88:	6e732f66 	cdpvs	15, 7, cr2, cr3, cr6, {3}
  8c:	68737061 	ldmdavs	r3!, {r0, r5, r6, ip, sp, lr}^
  90:	2f73746f 	svccs	0x0073746f
  94:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
  98:	616e696c 	cmnvs	lr, ip, ror #18
  9c:	342d6f72 	strtcc	r6, [sp], #-3954	; 0xf72
  a0:	322d392e 	eorcc	r3, sp, #753664	; 0xb8000
  a4:	2e373130 	mrccs	1, 1, r3, cr7, cr0, {1}
  a8:	6c2f3130 	stfvss	f3, [pc], #-192	; fffffff0 <__bss_end+0x787fdf81>
  ac:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
  b0:	6f632f63 	svcvs	0x00632f63
  b4:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
  b8:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
  bc:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
  c0:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
  c4:	532e7363 	teqpl	lr, #-1946157055	; 0x8c000001
  c8:	6f682f00 	svcvs	0x00682f00
  cc:	742f656d 	strtvc	r6, [pc], #-1389	; d4 <shift+0xd4>
  d0:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
  d4:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
  d8:	616c7364 	cmnvs	ip, r4, ror #6
  dc:	772f6576 			; <UNDEFINED> instruction: 0x772f6576
  e0:	736b726f 	cmnvc	fp, #-268435450	; 0xf0000006
  e4:	65636170 	strbvs	r6, [r3, #-368]!	; 0x170
  e8:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
  ec:	616d2d67 	cmnvs	sp, r7, ror #26
  f0:	722d656b 	eorvc	r6, sp, #448790528	; 0x1ac00000
  f4:	61656c65 	cmnvs	r5, r5, ror #24
  f8:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; ffffff34 <__bss_end+0x787fdec5>
  fc:	6c656261 	sfmvs	f6, 2, [r5], #-388	; 0xfffffe7c
 100:	636f642f 	cmnvs	pc, #788529152	; 0x2f000000
 104:	2d72656b 	cfldr64cs	mvdx6, [r2, #-428]!	; 0xfffffe54
 108:	73757274 	cmnvc	r5, #116, 4	; 0x40000007
 10c:	612d7974 	teqvs	sp, r4, ror r9
 110:	3436646d 	ldrtcc	r6, [r6], #-1133	; 0x46d
 114:	7763742d 	strbvc	r7, [r3, -sp, lsr #8]!
 118:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
 11c:	2f646c69 	svccs	0x00646c69
 120:	67726174 			; <UNDEFINED> instruction: 0x67726174
 124:	612f7465 	teqvs	pc, r5, ror #8
 128:	6c2d6d72 	stcvs	13, cr6, [sp], #-456	; 0xfffffe38
 12c:	78756e69 	ldmdavc	r5!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 130:	756e672d 	strbvc	r6, [lr, #-1837]!	; 0x72d
 134:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 138:	5f2f6668 	svcpl	0x002f6668
 13c:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 140:	75622f64 	strbvc	r2, [r2, #-3940]!	; 0xf64
 144:	73646c69 	cmnvc	r4, #26880	; 0x6900
 148:	3638782f 	ldrtcc	r7, [r8], -pc, lsr #16
 14c:	2d34365f 	ldccs	6, cr3, [r4, #-380]!	; 0xfffffe84
 150:	6e6b6e75 	mcrvs	14, 3, r6, cr11, cr5, {3}
 154:	2d6e776f 	stclcs	7, cr7, [lr, #-444]!	; 0xfffffe44
 158:	756e696c 	strbvc	r6, [lr, #-2412]!	; 0x96c
 15c:	6e672d78 	mcrvs	13, 3, r2, cr7, cr8, {3}
 160:	72612f75 	rsbvc	r2, r1, #468	; 0x1d4
 164:	696c2d6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, sl, fp, sp}^
 168:	2d78756e 	cfldr64cs	mvdx7, [r8, #-440]!	; 0xfffffe48
 16c:	65756e67 	ldrbvs	r6, [r5, #-3687]!	; 0xe67
 170:	68696261 	stmdavs	r9!, {r0, r5, r6, r9, sp, lr}^
 174:	63672f66 	cmnvs	r7, #408	; 0x198
 178:	696c2d63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, sl, fp, sp}^
 17c:	6f72616e 	svcvs	0x0072616e
 180:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
 184:	3130322d 	teqcc	r0, sp, lsr #4
 188:	31302e37 	teqcc	r0, r7, lsr lr
 18c:	6174732d 	cmnvs	r4, sp, lsr #6
 190:	2f326567 	svccs	0x00326567
 194:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 198:	756e696c 	strbvc	r6, [lr, #-2412]!	; 0x96c
 19c:	6e672d78 	mcrvs	13, 3, r2, cr7, cr8, {3}
 1a0:	62616575 	rsbvs	r6, r1, #490733568	; 0x1d400000
 1a4:	2f666869 	svccs	0x00666869
 1a8:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 1ac:	47006363 	strmi	r6, [r0, -r3, ror #6]
 1b0:	4120554e 	teqmi	r0, lr, asr #10
 1b4:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
 1b8:	302e3432 	eorcc	r3, lr, r2, lsr r4
 1bc:	b7800100 	strlt	r0, [r0, r0, lsl #2]
 1c0:	02000001 	andeq	r0, r0, #1
 1c4:	00001400 	andeq	r1, r0, r0, lsl #8
 1c8:	04010400 	streq	r0, [r1], #-1024	; 0x400
 1cc:	50000001 	andpl	r0, r0, r1
 1d0:	80878019 	addhi	r8, r7, r9, lsl r0
 1d4:	2f878019 	svccs	0x00878019
 1d8:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
 1dc:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
 1e0:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
 1e4:	73646c69 	cmnvc	r4, #26880	; 0x6900
 1e8:	6576616c 	ldrbvs	r6, [r6, #-364]!	; 0x16c
 1ec:	726f772f 	rsbvc	r7, pc, #12320768	; 0xbc0000
 1f0:	6170736b 	cmnvs	r0, fp, ror #6
 1f4:	742f6563 	strtvc	r6, [pc], #-1379	; 1fc <shift+0x1fc>
 1f8:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 1fc:	656b616d 	strbvs	r6, [fp, #-365]!	; 0x16d
 200:	6c65722d 	sfmvs	f7, 2, [r5], #-180	; 0xffffff4c
 204:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
 208:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
 20c:	642f6c65 	strtvs	r6, [pc], #-3173	; 214 <shift+0x214>
 210:	656b636f 	strbvs	r6, [fp, #-879]!	; 0x36f
 214:	72742d72 	rsbsvc	r2, r4, #7296	; 0x1c80
 218:	79747375 	ldmdbvc	r4!, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}^
 21c:	646d612d 	strbtvs	r6, [sp], #-301	; 0x12d
 220:	742d3436 	strtvc	r3, [sp], #-1078	; 0x436
 224:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 228:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 22c:	61742f64 	cmnvs	r4, r4, ror #30
 230:	74656772 	strbtvc	r6, [r5], #-1906	; 0x772
 234:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 238:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
 23c:	672d7875 			; <UNDEFINED> instruction: 0x672d7875
 240:	6165756e 	cmnvs	r5, lr, ror #10
 244:	66686962 	strbtvs	r6, [r8], -r2, ror #18
 248:	616e732f 	cmnvs	lr, pc, lsr #6
 24c:	6f687370 	svcvs	0x00687370
 250:	672f7374 			; <UNDEFINED> instruction: 0x672f7374
 254:	6c2d6363 	stcvs	3, cr6, [sp], #-396	; 0xfffffe74
 258:	72616e69 	rsbvc	r6, r1, #1680	; 0x690
 25c:	2e342d6f 	cdpcs	13, 3, cr2, cr4, cr15, {3}
 260:	30322d39 	eorscc	r2, r2, r9, lsr sp
 264:	302e3731 	eorcc	r3, lr, r1, lsr r7
 268:	696c2f31 	stmdbvs	ip!, {r0, r4, r5, r8, r9, sl, fp, sp}^
 26c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 270:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 274:	2f676966 	svccs	0x00676966
 278:	2f6d7261 	svccs	0x006d7261
 27c:	62617062 	rsbvs	r7, r1, #98	; 0x62
 280:	00532e69 	subseq	r2, r3, r9, ror #28
 284:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 1d0 <shift+0x1d0>
 288:	63742f65 	cmnvs	r4, #404	; 0x194
 28c:	622d6777 	eorvs	r6, sp, #31195136	; 0x1dc0000
 290:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
 294:	76616c73 			; <UNDEFINED> instruction: 0x76616c73
 298:	6f772f65 	svcvs	0x00772f65
 29c:	70736b72 	rsbsvc	r6, r3, r2, ror fp
 2a0:	2f656361 	svccs	0x00656361
 2a4:	67776374 			; <UNDEFINED> instruction: 0x67776374
 2a8:	6b616d2d 	blvs	185b764 <shift+0x185b764>
 2ac:	65722d65 	ldrbvs	r2, [r2, #-3429]!	; 0xd65
 2b0:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 2b4:	616c2f65 	cmnvs	ip, r5, ror #30
 2b8:	2f6c6562 	svccs	0x006c6562
 2bc:	6b636f64 	blvs	18dc054 <shift+0x18dc054>
 2c0:	742d7265 	strtvc	r7, [sp], #-613	; 0x265
 2c4:	74737572 	ldrbtvc	r7, [r3], #-1394	; 0x572
 2c8:	6d612d79 	stclvs	13, cr2, [r1, #-484]!	; 0xfffffe1c
 2cc:	2d343664 	ldccs	6, cr3, [r4, #-400]!	; 0xfffffe70
 2d0:	67776374 			; <UNDEFINED> instruction: 0x67776374
 2d4:	6975622d 	ldmdbvs	r5!, {r0, r2, r3, r5, r9, sp, lr}^
 2d8:	742f646c 	strtvc	r6, [pc], #-1132	; 2e0 <shift+0x2e0>
 2dc:	65677261 	strbvs	r7, [r7, #-609]!	; 0x261
 2e0:	72612f74 	rsbvc	r2, r1, #116, 30	; 0x1d0
 2e4:	696c2d6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, sl, fp, sp}^
 2e8:	2d78756e 	cfldr64cs	mvdx7, [r8, #-440]!	; 0xfffffe48
 2ec:	65756e67 	ldrbvs	r6, [r5, #-3687]!	; 0xe67
 2f0:	68696261 	stmdavs	r9!, {r0, r5, r6, r9, sp, lr}^
 2f4:	625f2f66 	subsvs	r2, pc, #408	; 0x198
 2f8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
 2fc:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
 300:	2f73646c 	svccs	0x0073646c
 304:	5f363878 	svcpl	0x00363878
 308:	752d3436 	strvc	r3, [sp, #-1078]!	; 0x436
 30c:	6f6e6b6e 	svcvs	0x006e6b6e
 310:	6c2d6e77 	stcvs	14, cr6, [sp], #-476	; 0xfffffe24
 314:	78756e69 	ldmdavc	r5!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 318:	756e672d 	strbvc	r6, [lr, #-1837]!	; 0x72d
 31c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 320:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
 324:	672d7875 			; <UNDEFINED> instruction: 0x672d7875
 328:	6165756e 	cmnvs	r5, lr, ror #10
 32c:	66686962 	strbtvs	r6, [r8], -r2, ror #18
 330:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 334:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
 338:	2d6f7261 	sfmcs	f7, 2, [pc, #-388]!	; 1bc <shift+0x1bc>
 33c:	2d392e34 	ldccs	14, cr2, [r9, #-208]!	; 0xffffff30
 340:	37313032 			; <UNDEFINED> instruction: 0x37313032
 344:	2d31302e 	ldccs	0, cr3, [r1, #-184]!	; 0xffffff48
 348:	67617473 			; <UNDEFINED> instruction: 0x67617473
 34c:	612f3265 	teqvs	pc, r5, ror #4
 350:	6c2d6d72 	stcvs	13, cr6, [sp], #-456	; 0xfffffe38
 354:	78756e69 	ldmdavc	r5!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
 358:	756e672d 	strbvc	r6, [lr, #-1837]!	; 0x72d
 35c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 360:	6c2f6668 	stcvs	6, cr6, [pc], #-416	; 1c8 <shift+0x1c8>
 364:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 368:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
 36c:	53412055 	movtpl	r2, #4181	; 0x1055
 370:	322e3220 	eorcc	r3, lr, #32, 4
 374:	00302e34 	eorseq	r2, r0, r4, lsr lr
 378:	01bb8001 			; <UNDEFINED> instruction: 0x01bb8001
 37c:	00020000 	andeq	r0, r2, r0
 380:	00000028 	andeq	r0, r0, r8, lsr #32
 384:	01e50104 	mvneq	r0, r4, lsl #2
 388:	19800000 	stmibne	r0, {}	; <UNPREDICTABLE>
 38c:	198c8780 	stmibne	ip, {r7, r8, r9, sl, pc}
 390:	682f8780 	stmdavs	pc!, {r7, r8, r9, sl, pc}	; <UNPREDICTABLE>
 394:	2f656d6f 	svccs	0x00656d6f
 398:	67776374 			; <UNDEFINED> instruction: 0x67776374
 39c:	6975622d 	ldmdbvs	r5!, {r0, r2, r3, r5, r9, sp, lr}^
 3a0:	6c73646c 	cfldrdvs	mvd6, [r3], #-432	; 0xfffffe50
 3a4:	2f657661 	svccs	0x00657661
 3a8:	6b726f77 	blvs	1c9c18c <shift+0x1c9c18c>
 3ac:	63617073 	cmnvs	r1, #115	; 0x73
 3b0:	63742f65 	cmnvs	r4, #404	; 0x194
 3b4:	6d2d6777 	stcvs	7, cr6, [sp, #-476]!	; 0xfffffe24
 3b8:	2d656b61 	fstmdbxcs	r5!, {d22-d69}	;@ Deprecated
 3bc:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0x572
 3c0:	2f657361 	svccs	0x00657361
 3c4:	6562616c 	strbvs	r6, [r2, #-364]!	; 0x16c
 3c8:	6f642f6c 	svcvs	0x00642f6c
 3cc:	72656b63 	rsbvc	r6, r5, #101376	; 0x18c00
 3d0:	7572742d 	ldrbvc	r7, [r2, #-1069]!	; 0x42d
 3d4:	2d797473 	cfldrdcs	mvd7, [r9, #-460]!	; 0xfffffe34
 3d8:	36646d61 	strbtcc	r6, [r4], -r1, ror #26
 3dc:	63742d34 	cmnvs	r4, #52, 26	; 0xd00
 3e0:	622d6777 	eorvs	r6, sp, #31195136	; 0x1dc0000
 3e4:	646c6975 	strbtvs	r6, [ip], #-2421	; 0x975
 3e8:	7261742f 	rsbvc	r7, r1, #788529152	; 0x2f000000
 3ec:	2f746567 	svccs	0x00746567
 3f0:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 3f4:	756e696c 	strbvc	r6, [lr, #-2412]!	; 0x96c
 3f8:	6e672d78 	mcrvs	13, 3, r2, cr7, cr8, {3}
 3fc:	62616575 	rsbvs	r6, r1, #490733568	; 0x1d400000
 400:	2f666869 	svccs	0x00666869
 404:	70616e73 	rsbvc	r6, r1, r3, ror lr
 408:	746f6873 	strbtvc	r6, [pc], #-2163	; 410 <shift+0x410>
 40c:	63672f73 	cmnvs	r7, #460	; 0x1cc
 410:	696c2d63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, sl, fp, sp}^
 414:	6f72616e 	svcvs	0x0072616e
 418:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
 41c:	3130322d 	teqcc	r0, sp, lsr #4
 420:	31302e37 	teqcc	r0, r7, lsr lr
 424:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 428:	2f636367 	svccs	0x00636367
 42c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 430:	612f6769 	teqvs	pc, r9, ror #14
 434:	6c2f6d72 	stcvs	13, cr6, [pc], #-456	; 274 <shift+0x274>
 438:	66316269 	ldrtvs	r6, [r1], -r9, ror #4
 43c:	73636e75 	cmnvc	r3, #1872	; 0x750
 440:	2f00532e 	svccs	0x0000532e
 444:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
 448:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
 44c:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
 450:	73646c69 	cmnvc	r4, #26880	; 0x6900
 454:	6576616c 	ldrbvs	r6, [r6, #-364]!	; 0x16c
 458:	726f772f 	rsbvc	r7, pc, #12320768	; 0xbc0000
 45c:	6170736b 	cmnvs	r0, fp, ror #6
 460:	742f6563 	strtvc	r6, [pc], #-1379	; 468 <shift+0x468>
 464:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 468:	656b616d 	strbvs	r6, [fp, #-365]!	; 0x16d
 46c:	6c65722d 	sfmvs	f7, 2, [r5], #-180	; 0xffffff4c
 470:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
 474:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
 478:	642f6c65 	strtvs	r6, [pc], #-3173	; 480 <shift+0x480>
 47c:	656b636f 	strbvs	r6, [fp, #-879]!	; 0x36f
 480:	72742d72 	rsbsvc	r2, r4, #7296	; 0x1c80
 484:	79747375 	ldmdbvc	r4!, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}^
 488:	646d612d 	strbtvs	r6, [sp], #-301	; 0x12d
 48c:	742d3436 	strtvc	r3, [sp], #-1078	; 0x436
 490:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 494:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 498:	61742f64 	cmnvs	r4, r4, ror #30
 49c:	74656772 	strbtvc	r6, [r5], #-1906	; 0x772
 4a0:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 4a4:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
 4a8:	672d7875 			; <UNDEFINED> instruction: 0x672d7875
 4ac:	6165756e 	cmnvs	r5, lr, ror #10
 4b0:	66686962 	strbtvs	r6, [r8], -r2, ror #18
 4b4:	75625f2f 	strbvc	r5, [r2, #-3887]!	; 0xf2f
 4b8:	2f646c69 	svccs	0x00646c69
 4bc:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 4c0:	782f7364 	stmdavc	pc!, {r2, r5, r6, r8, r9, ip, sp, lr}	; <UNPREDICTABLE>
 4c4:	365f3638 			; <UNDEFINED> instruction: 0x365f3638
 4c8:	6e752d34 	mrcvs	13, 3, r2, cr5, cr4, {1}
 4cc:	776f6e6b 	strbvc	r6, [pc, -fp, ror #28]!
 4d0:	696c2d6e 	stmdbvs	ip!, {r1, r2, r3, r5, r6, r8, sl, fp, sp}^
 4d4:	2d78756e 	cfldr64cs	mvdx7, [r8, #-440]!	; 0xfffffe48
 4d8:	2f756e67 	svccs	0x00756e67
 4dc:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 4e0:	756e696c 	strbvc	r6, [lr, #-2412]!	; 0x96c
 4e4:	6e672d78 	mcrvs	13, 3, r2, cr7, cr8, {3}
 4e8:	62616575 	rsbvs	r6, r1, #490733568	; 0x1d400000
 4ec:	2f666869 	svccs	0x00666869
 4f0:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 4f4:	616e696c 	cmnvs	lr, ip, ror #18
 4f8:	342d6f72 	strtcc	r6, [sp], #-3954	; 0xf72
 4fc:	322d392e 	eorcc	r3, sp, #753664	; 0xb8000
 500:	2e373130 	mrccs	1, 1, r3, cr7, cr0, {1}
 504:	732d3130 	teqvc	sp, #48, 2
 508:	65676174 	strbvs	r6, [r7, #-372]!	; 0x174
 50c:	72612f32 	rsbvc	r2, r1, #50, 30	; 0xc8
 510:	696c2d6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, sl, fp, sp}^
 514:	2d78756e 	cfldr64cs	mvdx7, [r8, #-440]!	; 0xfffffe48
 518:	65756e67 	ldrbvs	r6, [r5, #-3687]!	; 0xe67
 51c:	68696261 	stmdavs	r9!, {r0, r5, r6, r9, sp, lr}^
 520:	696c2f66 	stmdbvs	ip!, {r1, r2, r5, r6, r8, r9, sl, fp, sp}^
 524:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 528:	554e4700 	strbpl	r4, [lr, #-1792]	; 0x700
 52c:	20534120 	subscs	r4, r3, r0, lsr #2
 530:	34322e32 	ldrtcc	r2, [r2], #-3634	; 0xe32
 534:	0100302e 	tsteq	r0, lr, lsr #32
 538:	00015a80 	andeq	r5, r1, r0, lsl #21
 53c:	3c000400 	cfstrscc	mvf0, [r0], {-0}
 540:	04000000 	streq	r0, [r0], #-0
 544:	00012b01 	andeq	r2, r1, r1, lsl #22
 548:	024f0100 	subeq	r0, pc, #0, 2
 54c:	000d0000 	andeq	r0, sp, r0
 550:	198c0000 	stmibne	ip, {}	; <UNPREDICTABLE>
 554:	01168780 	tsteq	r6, r0, lsl #15
 558:	02cc0000 	sbceq	r0, ip, #0
 55c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 560:	0000f307 	andeq	pc, r0, r7, lsl #6
 564:	05040300 	streq	r0, [r4, #-768]	; 0x300
 568:	00746e69 	rsbseq	r6, r4, r9, ror #28
 56c:	fd070402 	stc2	4, cr0, [r7, #-8]
 570:	02000000 	andeq	r0, r0, #0
 574:	010a0801 	tsteq	sl, r1, lsl #16
 578:	02020000 	andeq	r0, r2, #0
 57c:	00011807 	andeq	r1, r1, r7, lsl #16
 580:	07040200 	streq	r0, [r4, -r0, lsl #4]
 584:	000000f8 	strdeq	r0, [r0], -r8
 588:	0c060102 	stfeqs	f0, [r6], {2}
 58c:	02000001 	andeq	r0, r0, #1
 590:	02360502 	eorseq	r0, r6, #8388608	; 0x800000
 594:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 598:	00022005 	andeq	r2, r2, r5
 59c:	05040200 	streq	r0, [r4, #-512]	; 0x200
 5a0:	00000225 	andeq	r0, r0, r5, lsr #4
 5a4:	17070402 	strne	r0, [r7, -r2, lsl #8]
 5a8:	02000002 	andeq	r0, r0, #2
 5ac:	01130801 	tsteq	r3, r1, lsl #16
 5b0:	2e040000 	cdpcs	0, 0, cr0, cr4, cr0, {0}
 5b4:	02000002 	andeq	r0, r0, #2
 5b8:	00003382 	andeq	r3, r0, r2, lsl #7
 5bc:	02010400 	andeq	r0, r1, #0, 8
 5c0:	86020000 	strhi	r0, [r2], -r0
 5c4:	00000025 	andeq	r0, r0, r5, lsr #32
 5c8:	11040402 	tstne	r4, r2, lsl #8
 5cc:	02000002 	andeq	r0, r0, #2
 5d0:	02090308 	andeq	r0, r9, #8, 6	; 0x20000000
 5d4:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 5d8:	00024804 	andeq	r4, r2, r4, lsl #16
 5dc:	03100200 	tsteq	r0, #0, 4
 5e0:	00000240 	andeq	r0, r0, r0, asr #4
 5e4:	00000005 	andeq	r0, r0, r5
 5e8:	03b00100 	movseq	r0, #0, 2
 5ec:	00000084 	andeq	r0, r0, r4, lsl #1
 5f0:	8780198c 	strhi	r1, [r0, ip, lsl #19]
 5f4:	00000116 	andeq	r0, r0, r6, lsl r1
 5f8:	01579c01 	cmpeq	r7, r1, lsl #24
 5fc:	6e060000 	cdpvs	0, 0, cr0, cr6, cr0, {0}
 600:	03b00100 	movseq	r0, #0, 2
 604:	00000084 	andeq	r0, r0, r4, lsl #1
 608:	00000000 	andeq	r0, r0, r0
 60c:	01006406 	tsteq	r0, r6, lsl #8
 610:	008403b0 			; <UNDEFINED> instruction: 0x008403b0
 614:	00280000 	eoreq	r0, r8, r0
 618:	72060000 	andvc	r0, r6, #0
 61c:	b0010070 	andlt	r0, r1, r0, ror r0
 620:	00015703 	andeq	r5, r1, r3, lsl #14
 624:	00005000 	andeq	r5, r0, r0
 628:	00710700 	rsbseq	r0, r1, r0, lsl #14
 62c:	8403b201 	strhi	fp, [r3], #-513	; 0x201
 630:	70000000 	andvc	r0, r0, r0
 634:	07000000 	streq	r0, [r0, -r0]
 638:	b2010072 	andlt	r0, r1, #114	; 0x72
 63c:	00008403 	andeq	r8, r0, r3, lsl #8
 640:	0000d000 	andeq	sp, r0, r0
 644:	00790700 	rsbseq	r0, r9, r0, lsl #14
 648:	8403b201 	strhi	fp, [r3], #-513	; 0x201
 64c:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
 650:	07000001 	streq	r0, [r0, -r1]
 654:	00317a6c 	eorseq	r7, r1, ip, ror #20
 658:	7903b301 	stmdbvc	r3, {r0, r8, r9, ip, sp, pc}
 65c:	50000000 	andpl	r0, r0, r0
 660:	07000001 	streq	r0, [r0, -r1]
 664:	00327a6c 	eorseq	r7, r2, ip, ror #20
 668:	7903b301 	stmdbvc	r3, {r0, r8, r9, ip, sp, pc}
 66c:	63000000 	movwvs	r0, #0
 670:	07000001 	streq	r0, [r0, -r1]
 674:	b3010069 	movwlt	r0, #4201	; 0x1069
 678:	00007903 	andeq	r7, r0, r3, lsl #18
 67c:	00017600 	andeq	r7, r1, r0, lsl #12
 680:	006b0700 	rsbeq	r0, fp, r0, lsl #14
 684:	7903b301 	stmdbvc	r3, {r0, r8, r9, ip, sp, pc}
 688:	b9000000 	stmdblt	r0, {}	; <UNPREDICTABLE>
 68c:	00000001 	andeq	r0, r0, r1
 690:	00840408 	addeq	r0, r4, r8, lsl #8
 694:	Address 0x0000000000000694 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	10001101 	andne	r1, r0, r1, lsl #2
   4:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
   8:	1b080301 	blne	200c14 <shift+0x200c14>
   c:	13082508 	movwne	r2, #34056	; 0x8508
  10:	00000005 	andeq	r0, r0, r5
  14:	10001101 	andne	r1, r0, r1, lsl #2
  18:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
  1c:	1b080301 	blne	200c28 <shift+0x200c28>
  20:	13082508 	movwne	r2, #34056	; 0x8508
  24:	00000005 	andeq	r0, r0, r5
  28:	10001101 	andne	r1, r0, r1, lsl #2
  2c:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
  30:	1b080301 	blne	200c3c <shift+0x200c3c>
  34:	13082508 	movwne	r2, #34056	; 0x8508
  38:	00000005 	andeq	r0, r0, r5
  3c:	25011101 	strcs	r1, [r1, #-257]	; 0x101
  40:	030b130e 	movweq	r1, #45838	; 0xb30e
  44:	110e1b0e 	tstne	lr, lr, lsl #22
  48:	10061201 	andne	r1, r6, r1, lsl #4
  4c:	02000017 	andeq	r0, r0, #23
  50:	0b0b0024 	bleq	2c00e8 <shift+0x2c00e8>
  54:	0e030b3e 	vmoveq.16	d3[0], r0
  58:	24030000 	strcs	r0, [r3], #-0
  5c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  60:	0008030b 	andeq	r0, r8, fp, lsl #6
  64:	00160400 	andseq	r0, r6, r0, lsl #8
  68:	0b3a0e03 	bleq	e8387c <shift+0xe8387c>
  6c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  70:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
  74:	03193f01 	tsteq	r9, #1, 30
  78:	3b0b3a0e 	blcc	2ce8b8 <shift+0x2ce8b8>
  7c:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
  80:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
  84:	97184006 	ldrls	r4, [r8, -r6]
  88:	13011942 	movwne	r1, #6466	; 0x1942
  8c:	05060000 	streq	r0, [r6, #-0]
  90:	3a080300 	bcc	200c98 <shift+0x200c98>
  94:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
  98:	00170213 	andseq	r0, r7, r3, lsl r2
  9c:	00340700 	eorseq	r0, r4, r0, lsl #14
  a0:	0b3a0803 	bleq	e820b4 <shift+0xe820b4>
  a4:	1349053b 	movtne	r0, #38203	; 0x953b
  a8:	00001702 	andeq	r1, r0, r2, lsl #14
  ac:	0b000f08 	bleq	3cd4 <shift+0x3cd4>
  b0:	0013490b 	andseq	r4, r3, fp, lsl #18
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	878016d8 			; <UNDEFINED> instruction: 0x878016d8
  14:	00000276 	andeq	r0, r0, r6, ror r2
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01bf0002 			; <UNDEFINED> instruction: 0x01bf0002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	87801950 			; <UNDEFINED> instruction: 0x87801950
  34:	00000030 	andeq	r0, r0, r0, lsr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	037a0002 	cmneq	sl, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	87801980 	strhi	r1, [r0, r0, lsl #19]
  54:	0000000c 	andeq	r0, r0, ip
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	05390002 	ldreq	r0, [r9, #-2]!
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	8780198c 	strhi	r1, [r0, ip, lsl #19]
  74:	00000116 	andeq	r0, r0, r6, lsl r1
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	0000000c 	andeq	r0, r0, ip
   8:	93500006 	cmpls	r0, #6
   c:	04935104 	ldreq	r5, [r3], #260	; 0x104
  10:	0000000c 	andeq	r0, r0, ip
  14:	00000116 	andeq	r0, r0, r6, lsl r1
  18:	03f30006 	mvnseq	r0, #6
  1c:	9f2500f5 	svcls	0x002500f5
	...
  2c:	00000014 	andeq	r0, r0, r4, lsl r0
  30:	93520006 	cmpls	r2, #6
  34:	04935304 	ldreq	r5, [r3], #772	; 0x304
  38:	00000014 	andeq	r0, r0, r4, lsl r0
  3c:	00000116 	andeq	r0, r0, r6, lsl r1
  40:	03f30006 	mvnseq	r0, #6
  44:	9f2502f5 	svcls	0x002502f5
	...
  54:	000000fc 	strdeq	r0, [r0], -ip
  58:	00910002 	addseq	r0, r1, r2
  5c:	000000fc 	strdeq	r0, [r0], -ip
  60:	00000116 	andeq	r0, r0, r6, lsl r1
  64:	00910002 	addseq	r0, r1, r2
	...
  74:	00000076 	andeq	r0, r0, r6, ror r0
  78:	089e000a 	ldmeq	lr, {r1, r3}
	...
  84:	00000076 	andeq	r0, r0, r6, ror r0
  88:	000000c0 	andeq	r0, r0, r0, asr #1
  8c:	93500006 	cmpls	r0, #6
  90:	04935104 	ldreq	r5, [r3], #260	; 0x104
  94:	000000ca 	andeq	r0, r0, sl, asr #1
  98:	000000ea 	andeq	r0, r0, sl, ror #1
  9c:	93500006 	cmpls	r0, #6
  a0:	04935104 	ldreq	r5, [r3], #260	; 0x104
  a4:	000000f2 	strdeq	r0, [r0], -r2
  a8:	000000fc 	strdeq	r0, [r0], -ip
  ac:	93500006 	cmpls	r0, #6
  b0:	04935104 	ldreq	r5, [r3], #260	; 0x104
  b4:	000000fc 	strdeq	r0, [r0], -ip
  b8:	00000116 	andeq	r0, r0, r6, lsl r1
  bc:	089e000a 	ldmeq	lr, {r1, r3}
	...
  d0:	0000000a 	andeq	r0, r0, sl
  d4:	00000062 	andeq	r0, r0, r2, rrx
  d8:	93540006 	cmpls	r4, #6
  dc:	04935504 	ldreq	r5, [r3], #1284	; 0x504
  e0:	00000076 	andeq	r0, r0, r6, ror r0
  e4:	00000084 	andeq	r0, r0, r4, lsl #1
  e8:	93540006 	cmpls	r4, #6
  ec:	04935504 	ldreq	r5, [r3], #1284	; 0x504
  f0:	00000092 	muleq	r0, r2, r0
  f4:	000000a0 	andeq	r0, r0, r0, lsr #1
  f8:	93540006 	cmpls	r4, #6
  fc:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 100:	000000a2 	andeq	r0, r0, r2, lsr #1
 104:	000000c8 	andeq	r0, r0, r8, asr #1
 108:	93540006 	cmpls	r4, #6
 10c:	04935504 	ldreq	r5, [r3], #1284	; 0x504
 110:	000000cc 	andeq	r0, r0, ip, asr #1
 114:	00000116 	andeq	r0, r0, r6, lsl r1
 118:	93540006 	cmpls	r4, #6
 11c:	04935504 	ldreq	r5, [r3], #1284	; 0x504
	...
 128:	0000000e 	andeq	r0, r0, lr
 12c:	00000018 	andeq	r0, r0, r8, lsl r0
 130:	93500006 	cmpls	r0, #6
 134:	04935104 	ldreq	r5, [r3], #260	; 0x104
 138:	0000004e 	andeq	r0, r0, lr, asr #32
 13c:	000000ae 	andeq	r0, r0, lr, lsr #1
 140:	93560006 	cmpls	r6, #6
 144:	04935704 	ldreq	r5, [r3], #1796	; 0x704
	...
 150:	0000010c 	andeq	r0, r0, ip, lsl #2
 154:	00000116 	andeq	r0, r0, r6, lsl r1
 158:	00560001 	subseq	r0, r6, r1
 15c:	00000000 	andeq	r0, r0, r0
 160:	2c000000 	stccs	0, cr0, [r0], {-0}
 164:	2e000000 	cdpcs	0, 0, cr0, cr0, cr0, {0}
 168:	01000000 	mrseq	r0, (UNDEF: 0)
 16c:	00005300 	andeq	r5, r0, r0, lsl #6
 170:	00000000 	andeq	r0, r0, r0
 174:	00800000 	addeq	r0, r0, r0
 178:	00920000 	addseq	r0, r2, r0
 17c:	00010000 	andeq	r0, r1, r0
 180:	00009253 	andeq	r9, r0, r3, asr r2
 184:	00009400 	andeq	r9, r0, r0, lsl #8
 188:	73000300 	movwvc	r0, #768	; 0x300
 18c:	00949f7f 	addseq	r9, r4, pc, ror pc
 190:	00a20000 	adceq	r0, r2, r0
 194:	00010000 	andeq	r0, r1, r0
 198:	0000a253 	andeq	sl, r0, r3, asr r2
 19c:	0000a400 	andeq	sl, r0, r0, lsl #8
 1a0:	73000300 	movwvc	r0, #768	; 0x300
 1a4:	00a49f7f 	adceq	r9, r4, pc, ror pc
 1a8:	00b60000 	adcseq	r0, r6, r0
 1ac:	00010000 	andeq	r0, r1, r0
 1b0:	00000053 	andeq	r0, r0, r3, asr r0
 1b4:	00000000 	andeq	r0, r0, r0
 1b8:	00002e00 	andeq	r2, r0, r0, lsl #28
 1bc:	00008200 	andeq	r8, r0, r0, lsl #4
 1c0:	53000100 	movwpl	r0, #256	; 0x100
 1c4:	00000082 	andeq	r0, r0, r2, lsl #1
 1c8:	000000f2 	strdeq	r0, [r0], -r2
 1cc:	005e0001 	subseq	r0, lr, r1
 1d0:	00000000 	andeq	r0, r0, r0
 1d4:	Address 0x00000000000001d4 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	64755f5f 	ldrbtvs	r5, [r5], #-3935	; 0xf5f
   4:	6f6d7669 	svcvs	0x006d7669
   8:	34696464 	strbtcc	r6, [r9], #-1124	; 0x464
   c:	6f682f00 	svcvs	0x00682f00
  10:	742f656d 	strtvc	r6, [pc], #-1389	; 18 <shift+0x18>
  14:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
  18:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
  1c:	616c7364 	cmnvs	ip, r4, ror #6
  20:	772f6576 			; <UNDEFINED> instruction: 0x772f6576
  24:	736b726f 	cmnvc	fp, #-268435450	; 0xf0000006
  28:	65636170 	strbvs	r6, [r3, #-368]!	; 0x170
  2c:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
  30:	616d2d67 	cmnvs	sp, r7, ror #26
  34:	722d656b 	eorvc	r6, sp, #448790528	; 0x1ac00000
  38:	61656c65 	cmnvs	r5, r5, ror #24
  3c:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; fffffe78 <__bss_end+0x787fde09>
  40:	6c656261 	sfmvs	f6, 2, [r5], #-388	; 0xfffffe7c
  44:	636f642f 	cmnvs	pc, #788529152	; 0x2f000000
  48:	2d72656b 	cfldr64cs	mvdx6, [r2, #-428]!	; 0xfffffe54
  4c:	73757274 	cmnvc	r5, #116, 4	; 0x40000007
  50:	612d7974 	teqvs	sp, r4, ror r9
  54:	3436646d 	ldrtcc	r6, [r6], #-1133	; 0x46d
  58:	7763742d 	strbvc	r7, [r3, -sp, lsr #8]!
  5c:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
  60:	2f646c69 	svccs	0x00646c69
  64:	67726174 			; <UNDEFINED> instruction: 0x67726174
  68:	612f7465 	teqvs	pc, r5, ror #8
  6c:	6c2d6d72 	stcvs	13, cr6, [sp], #-456	; 0xfffffe38
  70:	78756e69 	ldmdavc	r5!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  74:	756e672d 	strbvc	r6, [lr, #-1837]!	; 0x72d
  78:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  7c:	5f2f6668 	svcpl	0x002f6668
  80:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
  84:	75622f64 	strbvc	r2, [r2, #-3940]!	; 0xf64
  88:	73646c69 	cmnvc	r4, #26880	; 0x6900
  8c:	3638782f 	ldrtcc	r7, [r8], -pc, lsr #16
  90:	2d34365f 	ldccs	6, cr3, [r4, #-380]!	; 0xfffffe84
  94:	6e6b6e75 	mcrvs	14, 3, r6, cr11, cr5, {3}
  98:	2d6e776f 	stclcs	7, cr7, [lr, #-444]!	; 0xfffffe44
  9c:	756e696c 	strbvc	r6, [lr, #-2412]!	; 0x96c
  a0:	6e672d78 	mcrvs	13, 3, r2, cr7, cr8, {3}
  a4:	72612f75 	rsbvc	r2, r1, #468	; 0x1d4
  a8:	696c2d6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, sl, fp, sp}^
  ac:	2d78756e 	cfldr64cs	mvdx7, [r8, #-440]!	; 0xfffffe48
  b0:	65756e67 	ldrbvs	r6, [r5, #-3687]!	; 0xe67
  b4:	68696261 	stmdavs	r9!, {r0, r5, r6, r9, sp, lr}^
  b8:	63672f66 	cmnvs	r7, #408	; 0x198
  bc:	696c2d63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, sl, fp, sp}^
  c0:	6f72616e 	svcvs	0x0072616e
  c4:	392e342d 	stmdbcc	lr!, {r0, r2, r3, r5, sl, ip, sp}
  c8:	3130322d 	teqcc	r0, sp, lsr #4
  cc:	31302e37 	teqcc	r0, r7, lsr lr
  d0:	6174732d 	cmnvs	r4, sp, lsr #6
  d4:	2f326567 	svccs	0x00326567
  d8:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
  dc:	756e696c 	strbvc	r6, [lr, #-2412]!	; 0x96c
  e0:	6e672d78 	mcrvs	13, 3, r2, cr7, cr8, {3}
  e4:	62616575 	rsbvs	r6, r1, #490733568	; 0x1d400000
  e8:	2f666869 	svccs	0x00666869
  ec:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
  f0:	6c006363 	stcvs	3, cr6, [r0], {99}	; 0x63
  f4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  f8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  fc:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 100:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0x769
 104:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 108:	6e750074 	mrcvs	0, 3, r0, cr5, cr4, {3}
 10c:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
 110:	63206465 	teqvs	r0, #1694498816	; 0x65000000
 114:	00726168 	rsbseq	r6, r2, r8, ror #2
 118:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 11c:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
 120:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
 124:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
 128:	4700746e 	strmi	r7, [r0, -lr, ror #8]
 12c:	4320554e 	teqmi	r0, #327155712	; 0x13800000
 130:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
 134:	2d20342e 	cfstrscs	mvf3, [r0, #-184]!	; 0xffffff48
 138:	6372616d 	cmnvs	r2, #1073741851	; 0x4000001b
 13c:	72613d68 	rsbvc	r3, r1, #104, 26	; 0x1a00
 140:	2d37766d 	ldccs	6, cr7, [r7, #-436]!	; 0xfffffe4c
 144:	6d2d2061 	stcvs	0, cr2, [sp, #-388]!	; 0xfffffe7c
 148:	656e7574 	strbvs	r7, [lr, #-1396]!	; 0x574
 14c:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
 150:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
 154:	2d203961 	stccs	9, cr3, [r0, #-388]!	; 0xfffffe7c
 158:	6f6c666d 	svcvs	0x006c666d
 15c:	612d7461 	teqvs	sp, r1, ror #8
 160:	683d6962 	ldmdavs	sp!, {r1, r5, r6, r8, fp, sp, lr}
 164:	20647261 	rsbcs	r7, r4, r1, ror #4
 168:	70666d2d 	rsbvc	r6, r6, sp, lsr #26
 16c:	66763d75 			; <UNDEFINED> instruction: 0x66763d75
 170:	2d337670 	ldccs	6, cr7, [r3, #-448]!	; 0xfffffe40
 174:	20363164 	eorscs	r3, r6, r4, ror #2
 178:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
 17c:	20626d75 	rsbcs	r6, r2, r5, ror sp
 180:	6c746d2d 	ldclvs	13, cr6, [r4], #-180	; 0xffffff4c
 184:	69642d73 	stmdbvs	r4!, {r0, r1, r4, r5, r6, r8, sl, fp, sp}^
 188:	63656c61 	cmnvs	r5, #24832	; 0x6100
 18c:	6e673d74 	mcrvs	13, 3, r3, cr7, cr4, {3}
 190:	672d2075 			; <UNDEFINED> instruction: 0x672d2075
 194:	20672d20 	rsbcs	r2, r7, r0, lsr #26
 198:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 19c:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 1a0:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 1a4:	2d20324f 	sfmcs	f3, 4, [r0, #-316]!	; 0xfffffec4
 1a8:	69756266 	ldmdbvs	r5!, {r1, r2, r5, r6, r9, sp, lr}^
 1ac:	6e69646c 	cdpvs	4, 6, cr6, cr9, cr12, {3}
 1b0:	696c2d67 	stmdbvs	ip!, {r0, r1, r2, r5, r6, r8, sl, fp, sp}^
 1b4:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 1b8:	6e662d20 	cdpvs	13, 6, cr2, cr6, cr0, {1}
 1bc:	74732d6f 	ldrbtvc	r2, [r3], #-3439	; 0xd6f
 1c0:	2d6b6361 	stclcs	3, cr6, [fp, #-388]!	; 0xfffffe7c
 1c4:	746f7270 	strbtvc	r7, [pc], #-624	; 1cc <shift+0x1cc>
 1c8:	6f746365 	svcvs	0x00746365
 1cc:	662d2072 			; <UNDEFINED> instruction: 0x662d2072
 1d0:	20434950 	subcs	r4, r3, r0, asr r9
 1d4:	6f6e662d 	svcvs	0x006e662d
 1d8:	6c6e692d 	stclvs	9, cr6, [lr], #-180	; 0xffffff4c
 1dc:	20656e69 	rsbcs	r6, r5, r9, ror #28
 1e0:	7865662d 	stmdavc	r5!, {r0, r2, r3, r5, r9, sl, sp, lr}^
 1e4:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0x563
 1e8:	736e6f69 	cmnvc	lr, #420	; 0x1a4
 1ec:	76662d20 	strbtvc	r2, [r6], -r0, lsr #26
 1f0:	62697369 	rsbvs	r7, r9, #-1543503871	; 0xa4000001
 1f4:	74696c69 	strbtvc	r6, [r9], #-3177	; 0xc69
 1f8:	69683d79 	stmdbvs	r8!, {r0, r3, r4, r5, r6, r8, sl, fp, ip, sp}^
 1fc:	6e656464 	cdpvs	4, 6, cr6, cr5, cr4, {3}
 200:	49445500 	stmdbmi	r4, {r8, sl, ip, lr}^
 204:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
 208:	6d6f6300 	stclvs	3, cr6, [pc, #-0]	; 210 <shift+0x210>
 20c:	78656c70 	stmdavc	r5!, {r4, r5, r6, sl, fp, sp, lr}^
 210:	6f6c6620 	svcvs	0x006c6620
 214:	73007461 	movwvc	r7, #1121	; 0x461
 218:	74657a69 	strbtvc	r7, [r5], #-2665	; 0xa69
 21c:	00657079 	rsbeq	r7, r5, r9, ror r0
 220:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 224:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
 228:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
 22c:	53550074 	cmppl	r5, #116	; 0x74
 230:	70797449 	rsbsvc	r7, r9, r9, asr #8
 234:	68730065 	ldmdavs	r3!, {r0, r2, r5, r6}^
 238:	2074726f 	rsbscs	r7, r4, pc, ror #4
 23c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 240:	706d6f63 	rsbvc	r6, sp, r3, ror #30
 244:	2078656c 	rsbscs	r6, r8, ip, ror #10
 248:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
 24c:	2f00656c 	svccs	0x0000656c
 250:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
 254:	7763742f 	strbvc	r7, [r3, -pc, lsr #8]!
 258:	75622d67 	strbvc	r2, [r2, #-3431]!	; 0xd67
 25c:	73646c69 	cmnvc	r4, #26880	; 0x6900
 260:	6576616c 	ldrbvs	r6, [r6, #-364]!	; 0x16c
 264:	726f772f 	rsbvc	r7, pc, #12320768	; 0xbc0000
 268:	6170736b 	cmnvs	r0, fp, ror #6
 26c:	742f6563 	strtvc	r6, [pc], #-1379	; 274 <shift+0x274>
 270:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 274:	656b616d 	strbvs	r6, [fp, #-365]!	; 0x16d
 278:	6c65722d 	sfmvs	f7, 2, [r5], #-180	; 0xffffff4c
 27c:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
 280:	62616c2f 	rsbvs	r6, r1, #12032	; 0x2f00
 284:	642f6c65 	strtvs	r6, [pc], #-3173	; 28c <shift+0x28c>
 288:	656b636f 	strbvs	r6, [fp, #-879]!	; 0x36f
 28c:	72742d72 	rsbsvc	r2, r4, #7296	; 0x1c80
 290:	79747375 	ldmdbvc	r4!, {r0, r2, r4, r5, r6, r8, r9, ip, sp, lr}^
 294:	646d612d 	strbtvs	r6, [sp], #-301	; 0x12d
 298:	742d3436 	strtvc	r3, [sp], #-1078	; 0x436
 29c:	2d677763 	stclcs	7, cr7, [r7, #-396]!	; 0xfffffe74
 2a0:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 2a4:	61742f64 	cmnvs	r4, r4, ror #30
 2a8:	74656772 	strbtvc	r6, [r5], #-1906	; 0x772
 2ac:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 2b0:	6e696c2d 	cdpvs	12, 6, cr6, cr9, cr13, {1}
 2b4:	672d7875 			; <UNDEFINED> instruction: 0x672d7875
 2b8:	6165756e 	cmnvs	r5, lr, ror #10
 2bc:	66686962 	strbtvs	r6, [r8], -r2, ror #18
 2c0:	616e732f 	cmnvs	lr, pc, lsr #6
 2c4:	6f687370 	svcvs	0x00687370
 2c8:	672f7374 			; <UNDEFINED> instruction: 0x672f7374
 2cc:	6c2d6363 	stcvs	3, cr6, [sp], #-396	; 0xfffffe74
 2d0:	72616e69 	rsbvc	r6, r1, #1680	; 0x690
 2d4:	2e342d6f 	cdpcs	13, 3, cr2, cr4, cr15, {3}
 2d8:	30322d39 	eorscc	r2, r2, r9, lsr sp
 2dc:	302e3731 	eorcc	r3, lr, r1, lsr r7
 2e0:	696c2f31 	stmdbvs	ip!, {r0, r4, r5, r8, r9, sl, fp, sp}^
 2e4:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 2e8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 2ec:	32636367 	rsbcc	r6, r3, #-1677721599	; 0x9c000001
 2f0:	Address 0x00000000000002f0 is out of bounds.

