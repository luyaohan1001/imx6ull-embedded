
build/key-debounce.elf:     file format elf32-littlearm


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
87800080:	ea000438 	b	87801168 <__main_from_arm>

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
8780081a:	f241 13a4 	movw	r3, #4516	; 0x11a4
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
87800842:	f241 13a4 	movw	r3, #4516	; 0x11a4
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
87800882:	f241 13a4 	movw	r3, #4516	; 0x11a4
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
87800b7e:	f241 13a8 	movw	r3, #4520	; 0x11a8
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
87800bc0:	f241 13ac 	movw	r3, #4524	; 0x11ac
87800bc4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800bc8:	68fa      	ldr	r2, [r7, #12]
87800bca:	68b9      	ldr	r1, [r7, #8]
87800bcc:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
87800bd0:	f241 12ac 	movw	r2, #4524	; 0x11ac
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
87800c0e:	f241 13a8 	movw	r3, #4520	; 0x11a8
87800c12:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c16:	681b      	ldr	r3, [r3, #0]
87800c18:	1c5a      	adds	r2, r3, #1
87800c1a:	f241 13a8 	movw	r3, #4520	; 0x11a8
87800c1e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c22:	601a      	str	r2, [r3, #0]
87800c24:	f241 13ac 	movw	r3, #4524	; 0x11ac
87800c28:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c2c:	68fa      	ldr	r2, [r7, #12]
87800c2e:	f853 4032 	ldr.w	r4, [r3, r2, lsl #3]
87800c32:	f241 12ac 	movw	r2, #4524	; 0x11ac
87800c36:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800c3a:	68fb      	ldr	r3, [r7, #12]
87800c3c:	00db      	lsls	r3, r3, #3
87800c3e:	4413      	add	r3, r2
87800c40:	685b      	ldr	r3, [r3, #4]
87800c42:	4619      	mov	r1, r3
87800c44:	68f8      	ldr	r0, [r7, #12]
87800c46:	47a0      	blx	r4
87800c48:	f241 13a8 	movw	r3, #4520	; 0x11a8
87800c4c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c50:	681b      	ldr	r3, [r3, #0]
87800c52:	1e5a      	subs	r2, r3, #1
87800c54:	f241 13a8 	movw	r3, #4520	; 0x11a8
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
87800d9e:	f241 63ac 	movw	r3, #5804	; 0x16ac
87800da2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800da6:	781b      	ldrb	r3, [r3, #0]
87800da8:	2b00      	cmp	r3, #0
87800daa:	bf0c      	ite	eq
87800dac:	2301      	moveq	r3, #1
87800dae:	2300      	movne	r3, #0
87800db0:	b2db      	uxtb	r3, r3
87800db2:	461a      	mov	r2, r3
87800db4:	f241 63ac 	movw	r3, #5804	; 0x16ac
87800db8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800dbc:	701a      	strb	r2, [r3, #0]
87800dbe:	f241 63ac 	movw	r3, #5804	; 0x16ac
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
87800e84:	f241 63ad 	movw	r3, #5805	; 0x16ad
87800e88:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800e8c:	781b      	ldrb	r3, [r3, #0]
87800e8e:	2b00      	cmp	r3, #0
87800e90:	bf0c      	ite	eq
87800e92:	2301      	moveq	r3, #1
87800e94:	2300      	movne	r3, #0
87800e96:	b2db      	uxtb	r3, r3
87800e98:	461a      	mov	r2, r3
87800e9a:	f241 63ad 	movw	r3, #5805	; 0x16ad
87800e9e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800ea2:	701a      	strb	r2, [r3, #0]
87800ea4:	2300      	movs	r3, #0
87800ea6:	f2c0 230d 	movt	r3, #525	; 0x20d
87800eaa:	685b      	ldr	r3, [r3, #4]
87800eac:	f003 0301 	and.w	r3, r3, #1
87800eb0:	2b00      	cmp	r3, #0
87800eb2:	d008      	beq.n	87800ec6 <epit1_irqhandler+0x46>
87800eb4:	f241 63ad 	movw	r3, #5805	; 0x16ad
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
878010fc:	f241 63ae 	movw	r3, #5806	; 0x16ae
87801100:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801104:	781b      	ldrb	r3, [r3, #0]
87801106:	2b00      	cmp	r3, #0
87801108:	bf0c      	ite	eq
8780110a:	2301      	moveq	r3, #1
8780110c:	2300      	movne	r3, #0
8780110e:	b2db      	uxtb	r3, r3
87801110:	461a      	mov	r2, r3
87801112:	f241 63ae 	movw	r3, #5806	; 0x16ae
87801116:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780111a:	701a      	strb	r2, [r3, #0]
8780111c:	f241 63ae 	movw	r3, #5806	; 0x16ae
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
87801164:	0000      	movs	r0, r0
	...

87801168 <__main_from_arm>:
87801168:	e51ff004 	ldr	pc, [pc, #-4]	; 8780116c <__main_from_arm+0x4>
8780116c:	87801171 			; <UNDEFINED> instruction: 0x87801171

Disassembly of section .text.startup:

87801170 <main>:
87801170:	b510      	push	{r4, lr}
87801172:	2400      	movs	r4, #0
87801174:	f7ff fcb6 	bl	87800ae4 <int_init>
87801178:	f7ff f826 	bl	878001c8 <imx6u_clkinit>
8780117c:	f7fe ffec 	bl	87800158 <clk_enable>
87801180:	f7ff f93c 	bl	878003fc <led_init>
87801184:	f7ff fa82 	bl	8780068c <beep_init>
87801188:	f7ff fed8 	bl	87800f3c <filterkey_init>
8780118c:	f084 0401 	eor.w	r4, r4, #1
87801190:	2000      	movs	r0, #0
87801192:	4621      	mov	r1, r4
87801194:	f7ff f96e 	bl	87800474 <led_switch>
87801198:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
8780119c:	f7ff fa34 	bl	87800608 <delay>
878011a0:	e7f4      	b.n	8780118c <main+0x1c>
878011a2:	bf00      	nop

Disassembly of section .data:

878011a4 <release.8002>:
878011a4:	Address 0x00000000878011a4 is out of bounds.


Disassembly of section .bss:

878011a8 <irqNesting>:
878011a8:	00000000 	andeq	r0, r0, r0

878011ac <irqTable>:
	...

878016ac <state.8020>:
	...

878016ad <state.7971>:
	...

878016ae <state.8036>:
	...

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

