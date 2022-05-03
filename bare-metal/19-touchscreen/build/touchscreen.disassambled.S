
build/touchscreen.elf:     file format elf32-littlearm


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
87800080:	ea001dcc 	b	878077b8 <__main_from_arm>

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
87800134:	87800c11 	usada8hi	r0, r1, ip, r0
87800138:	00001e41 	andeq	r1, r0, r1, asr #28
8780013c:	61656100 	cmnvs	r5, r0, lsl #2
87800140:	01006962 	tsteq	r0, r2, ror #18
87800144:	00000014 	andeq	r0, r0, r4, lsl r0
87800148:	412d3705 	teqmi	sp, r5, lsl #14
8780014c:	070a0600 	streq	r0, [sl, -r0, lsl #12]
87800150:	09010841 	stmdbeq	r1, {r0, r6, fp}
87800154:	00040a02 	andeq	r0, r4, r2, lsl #20

87800158 <imx6ul_hardfpu_enable>:
87800158:	ee11 3f50 	mrc	15, 0, r3, cr1, cr0, {2}
8780015c:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
87800160:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
87800164:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
87800168:	ee01 3f50 	mcr	15, 0, r3, cr1, cr0, {2}
8780016c:	eef8 3a10 	vmrs	r3, fpexc
87800170:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
87800174:	eee8 3a10 	vmsr	fpexc, r3
87800178:	4770      	bx	lr
8780017a:	bf00      	nop

8780017c <clk_enable>:
8780017c:	b480      	push	{r7}
8780017e:	af00      	add	r7, sp, #0
87800180:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800184:	f2c0 230c 	movt	r3, #524	; 0x20c
87800188:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780018c:	669a      	str	r2, [r3, #104]	; 0x68
8780018e:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800192:	f2c0 230c 	movt	r3, #524	; 0x20c
87800196:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780019a:	66da      	str	r2, [r3, #108]	; 0x6c
8780019c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001a0:	f2c0 230c 	movt	r3, #524	; 0x20c
878001a4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001a8:	671a      	str	r2, [r3, #112]	; 0x70
878001aa:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001ae:	f2c0 230c 	movt	r3, #524	; 0x20c
878001b2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001b6:	675a      	str	r2, [r3, #116]	; 0x74
878001b8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001bc:	f2c0 230c 	movt	r3, #524	; 0x20c
878001c0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001c4:	679a      	str	r2, [r3, #120]	; 0x78
878001c6:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001ca:	f2c0 230c 	movt	r3, #524	; 0x20c
878001ce:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001d2:	67da      	str	r2, [r3, #124]	; 0x7c
878001d4:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001d8:	f2c0 230c 	movt	r3, #524	; 0x20c
878001dc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878001e0:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878001e4:	46bd      	mov	sp, r7
878001e6:	f85d 7b04 	ldr.w	r7, [sp], #4
878001ea:	4770      	bx	lr

878001ec <imx6u_clkinit>:
878001ec:	b480      	push	{r7}
878001ee:	b083      	sub	sp, #12
878001f0:	af00      	add	r7, sp, #0
878001f2:	2300      	movs	r3, #0
878001f4:	607b      	str	r3, [r7, #4]
878001f6:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878001fa:	f2c0 230c 	movt	r3, #524	; 0x20c
878001fe:	68db      	ldr	r3, [r3, #12]
87800200:	089b      	lsrs	r3, r3, #2
87800202:	f003 0301 	and.w	r3, r3, #1
87800206:	2b00      	cmp	r3, #0
87800208:	d117      	bne.n	8780023a <imx6u_clkinit+0x4e>
8780020a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780020e:	f2c0 230c 	movt	r3, #524	; 0x20c
87800212:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800216:	f2c0 220c 	movt	r2, #524	; 0x20c
8780021a:	68d2      	ldr	r2, [r2, #12]
8780021c:	f422 7280 	bic.w	r2, r2, #256	; 0x100
87800220:	60da      	str	r2, [r3, #12]
87800222:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800226:	f2c0 230c 	movt	r3, #524	; 0x20c
8780022a:	f44f 4280 	mov.w	r2, #16384	; 0x4000
8780022e:	f2c0 220c 	movt	r2, #524	; 0x20c
87800232:	68d2      	ldr	r2, [r2, #12]
87800234:	f042 0204 	orr.w	r2, r2, #4
87800238:	60da      	str	r2, [r3, #12]
8780023a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780023e:	f2c0 230c 	movt	r3, #524	; 0x20c
87800242:	f242 0242 	movw	r2, #8258	; 0x2042
87800246:	601a      	str	r2, [r3, #0]
87800248:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780024c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800250:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800254:	f2c0 220c 	movt	r2, #524	; 0x20c
87800258:	68d2      	ldr	r2, [r2, #12]
8780025a:	f022 0204 	bic.w	r2, r2, #4
8780025e:	60da      	str	r2, [r3, #12]
87800260:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800264:	f2c0 230c 	movt	r3, #524	; 0x20c
87800268:	2200      	movs	r2, #0
8780026a:	611a      	str	r2, [r3, #16]
8780026c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800270:	f2c0 230c 	movt	r3, #524	; 0x20c
87800274:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
87800278:	607b      	str	r3, [r7, #4]
8780027a:	687b      	ldr	r3, [r7, #4]
8780027c:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
87800280:	607b      	str	r3, [r7, #4]
87800282:	687b      	ldr	r3, [r7, #4]
87800284:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
87800288:	607b      	str	r3, [r7, #4]
8780028a:	687b      	ldr	r3, [r7, #4]
8780028c:	f443 13c0 	orr.w	r3, r3, #1572864	; 0x180000
87800290:	607b      	str	r3, [r7, #4]
87800292:	687b      	ldr	r3, [r7, #4]
87800294:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
87800298:	607b      	str	r3, [r7, #4]
8780029a:	687b      	ldr	r3, [r7, #4]
8780029c:	f043 031b 	orr.w	r3, r3, #27
878002a0:	607b      	str	r3, [r7, #4]
878002a2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878002a6:	f2c0 230c 	movt	r3, #524	; 0x20c
878002aa:	687a      	ldr	r2, [r7, #4]
878002ac:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
878002b0:	2300      	movs	r3, #0
878002b2:	607b      	str	r3, [r7, #4]
878002b4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878002b8:	f2c0 230c 	movt	r3, #524	; 0x20c
878002bc:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
878002c0:	607b      	str	r3, [r7, #4]
878002c2:	687b      	ldr	r3, [r7, #4]
878002c4:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
878002c8:	607b      	str	r3, [r7, #4]
878002ca:	687b      	ldr	r3, [r7, #4]
878002cc:	f043 5398 	orr.w	r3, r3, #318767104	; 0x13000000
878002d0:	607b      	str	r3, [r7, #4]
878002d2:	687b      	ldr	r3, [r7, #4]
878002d4:	f443 1388 	orr.w	r3, r3, #1114112	; 0x110000
878002d8:	607b      	str	r3, [r7, #4]
878002da:	687b      	ldr	r3, [r7, #4]
878002dc:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
878002e0:	607b      	str	r3, [r7, #4]
878002e2:	687b      	ldr	r3, [r7, #4]
878002e4:	f043 030c 	orr.w	r3, r3, #12
878002e8:	607b      	str	r3, [r7, #4]
878002ea:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878002ee:	f2c0 230c 	movt	r3, #524	; 0x20c
878002f2:	687a      	ldr	r2, [r7, #4]
878002f4:	f8c3 20f0 	str.w	r2, [r3, #240]	; 0xf0
878002f8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002fc:	f2c0 230c 	movt	r3, #524	; 0x20c
87800300:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800304:	f2c0 220c 	movt	r2, #524	; 0x20c
87800308:	6992      	ldr	r2, [r2, #24]
8780030a:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
8780030e:	619a      	str	r2, [r3, #24]
87800310:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800314:	f2c0 230c 	movt	r3, #524	; 0x20c
87800318:	f44f 4280 	mov.w	r2, #16384	; 0x4000
8780031c:	f2c0 220c 	movt	r2, #524	; 0x20c
87800320:	6992      	ldr	r2, [r2, #24]
87800322:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
87800326:	619a      	str	r2, [r3, #24]
87800328:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780032c:	f2c0 230c 	movt	r3, #524	; 0x20c
87800330:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800334:	f2c0 220c 	movt	r2, #524	; 0x20c
87800338:	6952      	ldr	r2, [r2, #20]
8780033a:	f022 7200 	bic.w	r2, r2, #33554432	; 0x2000000
8780033e:	615a      	str	r2, [r3, #20]
87800340:	bf00      	nop
87800342:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800346:	f2c0 230c 	movt	r3, #524	; 0x20c
8780034a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
8780034c:	f003 0320 	and.w	r3, r3, #32
87800350:	2b00      	cmp	r3, #0
87800352:	d1f6      	bne.n	87800342 <imx6u_clkinit+0x156>
87800354:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800358:	f2c0 230c 	movt	r3, #524	; 0x20c
8780035c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800360:	f2c0 220c 	movt	r2, #524	; 0x20c
87800364:	6952      	ldr	r2, [r2, #20]
87800366:	f422 7240 	bic.w	r2, r2, #768	; 0x300
8780036a:	615a      	str	r2, [r3, #20]
8780036c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800370:	f2c0 230c 	movt	r3, #524	; 0x20c
87800374:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800378:	f2c0 220c 	movt	r2, #524	; 0x20c
8780037c:	6952      	ldr	r2, [r2, #20]
8780037e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
87800382:	615a      	str	r2, [r3, #20]
87800384:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800388:	f2c0 230c 	movt	r3, #524	; 0x20c
8780038c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800390:	f2c0 220c 	movt	r2, #524	; 0x20c
87800394:	69d2      	ldr	r2, [r2, #28]
87800396:	f022 0240 	bic.w	r2, r2, #64	; 0x40
8780039a:	61da      	str	r2, [r3, #28]
8780039c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878003a0:	f2c0 230c 	movt	r3, #524	; 0x20c
878003a4:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878003a8:	f2c0 220c 	movt	r2, #524	; 0x20c
878003ac:	69d2      	ldr	r2, [r2, #28]
878003ae:	f022 0207 	bic.w	r2, r2, #7
878003b2:	61da      	str	r2, [r3, #28]
878003b4:	370c      	adds	r7, #12
878003b6:	46bd      	mov	sp, r7
878003b8:	f85d 7b04 	ldr.w	r7, [sp], #4
878003bc:	4770      	bx	lr
878003be:	bf00      	nop

878003c0 <IOMUXC_SetPinMux>:
878003c0:	b480      	push	{r7}
878003c2:	b085      	sub	sp, #20
878003c4:	af00      	add	r7, sp, #0
878003c6:	60f8      	str	r0, [r7, #12]
878003c8:	60b9      	str	r1, [r7, #8]
878003ca:	607a      	str	r2, [r7, #4]
878003cc:	603b      	str	r3, [r7, #0]
878003ce:	68fb      	ldr	r3, [r7, #12]
878003d0:	68ba      	ldr	r2, [r7, #8]
878003d2:	f002 010f 	and.w	r1, r2, #15
878003d6:	69fa      	ldr	r2, [r7, #28]
878003d8:	0112      	lsls	r2, r2, #4
878003da:	f002 0210 	and.w	r2, r2, #16
878003de:	430a      	orrs	r2, r1
878003e0:	601a      	str	r2, [r3, #0]
878003e2:	687b      	ldr	r3, [r7, #4]
878003e4:	2b00      	cmp	r3, #0
878003e6:	d004      	beq.n	878003f2 <IOMUXC_SetPinMux+0x32>
878003e8:	687b      	ldr	r3, [r7, #4]
878003ea:	683a      	ldr	r2, [r7, #0]
878003ec:	f002 0207 	and.w	r2, r2, #7
878003f0:	601a      	str	r2, [r3, #0]
878003f2:	3714      	adds	r7, #20
878003f4:	46bd      	mov	sp, r7
878003f6:	f85d 7b04 	ldr.w	r7, [sp], #4
878003fa:	4770      	bx	lr

878003fc <IOMUXC_SetPinConfig>:
878003fc:	b480      	push	{r7}
878003fe:	b085      	sub	sp, #20
87800400:	af00      	add	r7, sp, #0
87800402:	60f8      	str	r0, [r7, #12]
87800404:	60b9      	str	r1, [r7, #8]
87800406:	607a      	str	r2, [r7, #4]
87800408:	603b      	str	r3, [r7, #0]
8780040a:	69bb      	ldr	r3, [r7, #24]
8780040c:	2b00      	cmp	r3, #0
8780040e:	d002      	beq.n	87800416 <IOMUXC_SetPinConfig+0x1a>
87800410:	69bb      	ldr	r3, [r7, #24]
87800412:	69fa      	ldr	r2, [r7, #28]
87800414:	601a      	str	r2, [r3, #0]
87800416:	3714      	adds	r7, #20
87800418:	46bd      	mov	sp, r7
8780041a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780041e:	4770      	bx	lr

87800420 <led_init>:
87800420:	b580      	push	{r7, lr}
87800422:	b082      	sub	sp, #8
87800424:	af02      	add	r7, sp, #8
87800426:	2300      	movs	r3, #0
87800428:	9301      	str	r3, [sp, #4]
8780042a:	f44f 733d 	mov.w	r3, #756	; 0x2f4
8780042e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800432:	9300      	str	r3, [sp, #0]
87800434:	2300      	movs	r3, #0
87800436:	2200      	movs	r2, #0
87800438:	2105      	movs	r1, #5
8780043a:	2068      	movs	r0, #104	; 0x68
8780043c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800440:	f7ff ffbe 	bl	878003c0 <IOMUXC_SetPinMux>
87800444:	f241 03b0 	movw	r3, #4272	; 0x10b0
87800448:	9301      	str	r3, [sp, #4]
8780044a:	f44f 733d 	mov.w	r3, #756	; 0x2f4
8780044e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800452:	9300      	str	r3, [sp, #0]
87800454:	2300      	movs	r3, #0
87800456:	2200      	movs	r2, #0
87800458:	2105      	movs	r1, #5
8780045a:	2068      	movs	r0, #104	; 0x68
8780045c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800460:	f7ff ffcc 	bl	878003fc <IOMUXC_SetPinConfig>
87800464:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800468:	f2c0 2309 	movt	r3, #521	; 0x209
8780046c:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800470:	f2c0 2209 	movt	r2, #521	; 0x209
87800474:	6852      	ldr	r2, [r2, #4]
87800476:	f042 0208 	orr.w	r2, r2, #8
8780047a:	605a      	str	r2, [r3, #4]
8780047c:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800480:	f2c0 2309 	movt	r3, #521	; 0x209
87800484:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800488:	f2c0 2209 	movt	r2, #521	; 0x209
8780048c:	6812      	ldr	r2, [r2, #0]
8780048e:	f022 0208 	bic.w	r2, r2, #8
87800492:	601a      	str	r2, [r3, #0]
87800494:	46bd      	mov	sp, r7
87800496:	bd80      	pop	{r7, pc}

87800498 <led_switch>:
87800498:	b480      	push	{r7}
8780049a:	b083      	sub	sp, #12
8780049c:	af00      	add	r7, sp, #0
8780049e:	6078      	str	r0, [r7, #4]
878004a0:	6039      	str	r1, [r7, #0]
878004a2:	687b      	ldr	r3, [r7, #4]
878004a4:	2b00      	cmp	r3, #0
878004a6:	d11f      	bne.n	878004e8 <led_switch+0x50>
878004a8:	683b      	ldr	r3, [r7, #0]
878004aa:	2b01      	cmp	r3, #1
878004ac:	d10c      	bne.n	878004c8 <led_switch+0x30>
878004ae:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878004b2:	f2c0 2309 	movt	r3, #521	; 0x209
878004b6:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878004ba:	f2c0 2209 	movt	r2, #521	; 0x209
878004be:	6812      	ldr	r2, [r2, #0]
878004c0:	f022 0208 	bic.w	r2, r2, #8
878004c4:	601a      	str	r2, [r3, #0]
878004c6:	e00e      	b.n	878004e6 <led_switch+0x4e>
878004c8:	683b      	ldr	r3, [r7, #0]
878004ca:	2b00      	cmp	r3, #0
878004cc:	d10b      	bne.n	878004e6 <led_switch+0x4e>
878004ce:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878004d2:	f2c0 2309 	movt	r3, #521	; 0x209
878004d6:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878004da:	f2c0 2209 	movt	r2, #521	; 0x209
878004de:	6812      	ldr	r2, [r2, #0]
878004e0:	f042 0208 	orr.w	r2, r2, #8
878004e4:	601a      	str	r2, [r3, #0]
878004e6:	bf00      	nop
878004e8:	370c      	adds	r7, #12
878004ea:	46bd      	mov	sp, r7
878004ec:	f85d 7b04 	ldr.w	r7, [sp], #4
878004f0:	4770      	bx	lr
878004f2:	bf00      	nop

878004f4 <delay_init>:
878004f4:	b480      	push	{r7}
878004f6:	af00      	add	r7, sp, #0
878004f8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878004fc:	f2c0 2309 	movt	r3, #521	; 0x209
87800500:	2200      	movs	r2, #0
87800502:	601a      	str	r2, [r3, #0]
87800504:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800508:	f2c0 2309 	movt	r3, #521	; 0x209
8780050c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87800510:	601a      	str	r2, [r3, #0]
87800512:	bf00      	nop
87800514:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800518:	f2c0 2309 	movt	r3, #521	; 0x209
8780051c:	681b      	ldr	r3, [r3, #0]
8780051e:	0bdb      	lsrs	r3, r3, #15
87800520:	f003 0301 	and.w	r3, r3, #1
87800524:	2b00      	cmp	r3, #0
87800526:	d1f5      	bne.n	87800514 <delay_init+0x20>
87800528:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780052c:	f2c0 2309 	movt	r3, #521	; 0x209
87800530:	2240      	movs	r2, #64	; 0x40
87800532:	601a      	str	r2, [r3, #0]
87800534:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800538:	f2c0 2309 	movt	r3, #521	; 0x209
8780053c:	2241      	movs	r2, #65	; 0x41
8780053e:	605a      	str	r2, [r3, #4]
87800540:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800544:	f2c0 2309 	movt	r3, #521	; 0x209
87800548:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780054c:	611a      	str	r2, [r3, #16]
8780054e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800552:	f2c0 2309 	movt	r3, #521	; 0x209
87800556:	f44f 4200 	mov.w	r2, #32768	; 0x8000
8780055a:	f2c0 2209 	movt	r2, #521	; 0x209
8780055e:	6812      	ldr	r2, [r2, #0]
87800560:	f042 0201 	orr.w	r2, r2, #1
87800564:	601a      	str	r2, [r3, #0]
87800566:	46bd      	mov	sp, r7
87800568:	f85d 7b04 	ldr.w	r7, [sp], #4
8780056c:	4770      	bx	lr
8780056e:	bf00      	nop

87800570 <delayus>:
87800570:	b480      	push	{r7}
87800572:	b087      	sub	sp, #28
87800574:	af00      	add	r7, sp, #0
87800576:	6078      	str	r0, [r7, #4]
87800578:	2300      	movs	r3, #0
8780057a:	613b      	str	r3, [r7, #16]
8780057c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800580:	f2c0 2309 	movt	r3, #521	; 0x209
87800584:	6a5b      	ldr	r3, [r3, #36]	; 0x24
87800586:	617b      	str	r3, [r7, #20]
87800588:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780058c:	f2c0 2309 	movt	r3, #521	; 0x209
87800590:	6a5b      	ldr	r3, [r3, #36]	; 0x24
87800592:	60fb      	str	r3, [r7, #12]
87800594:	68fa      	ldr	r2, [r7, #12]
87800596:	697b      	ldr	r3, [r7, #20]
87800598:	429a      	cmp	r2, r3
8780059a:	d018      	beq.n	878005ce <delayus+0x5e>
8780059c:	68fa      	ldr	r2, [r7, #12]
8780059e:	697b      	ldr	r3, [r7, #20]
878005a0:	429a      	cmp	r2, r3
878005a2:	d906      	bls.n	878005b2 <delayus+0x42>
878005a4:	68fa      	ldr	r2, [r7, #12]
878005a6:	697b      	ldr	r3, [r7, #20]
878005a8:	1ad3      	subs	r3, r2, r3
878005aa:	693a      	ldr	r2, [r7, #16]
878005ac:	4413      	add	r3, r2
878005ae:	613b      	str	r3, [r7, #16]
878005b0:	e006      	b.n	878005c0 <delayus+0x50>
878005b2:	68fa      	ldr	r2, [r7, #12]
878005b4:	697b      	ldr	r3, [r7, #20]
878005b6:	1ad2      	subs	r2, r2, r3
878005b8:	693b      	ldr	r3, [r7, #16]
878005ba:	4413      	add	r3, r2
878005bc:	3b01      	subs	r3, #1
878005be:	613b      	str	r3, [r7, #16]
878005c0:	68fb      	ldr	r3, [r7, #12]
878005c2:	617b      	str	r3, [r7, #20]
878005c4:	693a      	ldr	r2, [r7, #16]
878005c6:	687b      	ldr	r3, [r7, #4]
878005c8:	429a      	cmp	r2, r3
878005ca:	d300      	bcc.n	878005ce <delayus+0x5e>
878005cc:	e000      	b.n	878005d0 <delayus+0x60>
878005ce:	e7db      	b.n	87800588 <delayus+0x18>
878005d0:	371c      	adds	r7, #28
878005d2:	46bd      	mov	sp, r7
878005d4:	f85d 7b04 	ldr.w	r7, [sp], #4
878005d8:	4770      	bx	lr
878005da:	bf00      	nop

878005dc <delayms>:
878005dc:	b580      	push	{r7, lr}
878005de:	b084      	sub	sp, #16
878005e0:	af00      	add	r7, sp, #0
878005e2:	6078      	str	r0, [r7, #4]
878005e4:	2300      	movs	r3, #0
878005e6:	60fb      	str	r3, [r7, #12]
878005e8:	2300      	movs	r3, #0
878005ea:	60fb      	str	r3, [r7, #12]
878005ec:	e006      	b.n	878005fc <delayms+0x20>
878005ee:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
878005f2:	f7ff ffbd 	bl	87800570 <delayus>
878005f6:	68fb      	ldr	r3, [r7, #12]
878005f8:	3301      	adds	r3, #1
878005fa:	60fb      	str	r3, [r7, #12]
878005fc:	68fa      	ldr	r2, [r7, #12]
878005fe:	687b      	ldr	r3, [r7, #4]
87800600:	429a      	cmp	r2, r3
87800602:	d3f4      	bcc.n	878005ee <delayms+0x12>
87800604:	3710      	adds	r7, #16
87800606:	46bd      	mov	sp, r7
87800608:	bd80      	pop	{r7, pc}
8780060a:	bf00      	nop

8780060c <delay_short>:
8780060c:	b480      	push	{r7}
8780060e:	b083      	sub	sp, #12
87800610:	af00      	add	r7, sp, #0
87800612:	6078      	str	r0, [r7, #4]
87800614:	bf00      	nop
87800616:	687b      	ldr	r3, [r7, #4]
87800618:	1e5a      	subs	r2, r3, #1
8780061a:	607a      	str	r2, [r7, #4]
8780061c:	2b00      	cmp	r3, #0
8780061e:	d1fa      	bne.n	87800616 <delay_short+0xa>
87800620:	370c      	adds	r7, #12
87800622:	46bd      	mov	sp, r7
87800624:	f85d 7b04 	ldr.w	r7, [sp], #4
87800628:	4770      	bx	lr
8780062a:	bf00      	nop

8780062c <delay>:
8780062c:	b580      	push	{r7, lr}
8780062e:	b082      	sub	sp, #8
87800630:	af00      	add	r7, sp, #0
87800632:	6078      	str	r0, [r7, #4]
87800634:	e003      	b.n	8780063e <delay+0x12>
87800636:	f240 70ff 	movw	r0, #2047	; 0x7ff
8780063a:	f7ff ffe7 	bl	8780060c <delay_short>
8780063e:	687b      	ldr	r3, [r7, #4]
87800640:	1e5a      	subs	r2, r3, #1
87800642:	607a      	str	r2, [r7, #4]
87800644:	2b00      	cmp	r3, #0
87800646:	d1f6      	bne.n	87800636 <delay+0xa>
87800648:	3708      	adds	r7, #8
8780064a:	46bd      	mov	sp, r7
8780064c:	bd80      	pop	{r7, pc}
8780064e:	bf00      	nop

87800650 <IOMUXC_SetPinMux>:
87800650:	b480      	push	{r7}
87800652:	b085      	sub	sp, #20
87800654:	af00      	add	r7, sp, #0
87800656:	60f8      	str	r0, [r7, #12]
87800658:	60b9      	str	r1, [r7, #8]
8780065a:	607a      	str	r2, [r7, #4]
8780065c:	603b      	str	r3, [r7, #0]
8780065e:	68fb      	ldr	r3, [r7, #12]
87800660:	68ba      	ldr	r2, [r7, #8]
87800662:	f002 010f 	and.w	r1, r2, #15
87800666:	69fa      	ldr	r2, [r7, #28]
87800668:	0112      	lsls	r2, r2, #4
8780066a:	f002 0210 	and.w	r2, r2, #16
8780066e:	430a      	orrs	r2, r1
87800670:	601a      	str	r2, [r3, #0]
87800672:	687b      	ldr	r3, [r7, #4]
87800674:	2b00      	cmp	r3, #0
87800676:	d004      	beq.n	87800682 <IOMUXC_SetPinMux+0x32>
87800678:	687b      	ldr	r3, [r7, #4]
8780067a:	683a      	ldr	r2, [r7, #0]
8780067c:	f002 0207 	and.w	r2, r2, #7
87800680:	601a      	str	r2, [r3, #0]
87800682:	3714      	adds	r7, #20
87800684:	46bd      	mov	sp, r7
87800686:	f85d 7b04 	ldr.w	r7, [sp], #4
8780068a:	4770      	bx	lr

8780068c <IOMUXC_SetPinConfig>:
8780068c:	b480      	push	{r7}
8780068e:	b085      	sub	sp, #20
87800690:	af00      	add	r7, sp, #0
87800692:	60f8      	str	r0, [r7, #12]
87800694:	60b9      	str	r1, [r7, #8]
87800696:	607a      	str	r2, [r7, #4]
87800698:	603b      	str	r3, [r7, #0]
8780069a:	69bb      	ldr	r3, [r7, #24]
8780069c:	2b00      	cmp	r3, #0
8780069e:	d002      	beq.n	878006a6 <IOMUXC_SetPinConfig+0x1a>
878006a0:	69bb      	ldr	r3, [r7, #24]
878006a2:	69fa      	ldr	r2, [r7, #28]
878006a4:	601a      	str	r2, [r3, #0]
878006a6:	3714      	adds	r7, #20
878006a8:	46bd      	mov	sp, r7
878006aa:	f85d 7b04 	ldr.w	r7, [sp], #4
878006ae:	4770      	bx	lr

878006b0 <beep_init>:
878006b0:	b580      	push	{r7, lr}
878006b2:	b082      	sub	sp, #8
878006b4:	af02      	add	r7, sp, #8
878006b6:	2300      	movs	r3, #0
878006b8:	9301      	str	r3, [sp, #4]
878006ba:	2350      	movs	r3, #80	; 0x50
878006bc:	f2c0 2329 	movt	r3, #553	; 0x229
878006c0:	9300      	str	r3, [sp, #0]
878006c2:	2300      	movs	r3, #0
878006c4:	2200      	movs	r2, #0
878006c6:	2105      	movs	r1, #5
878006c8:	200c      	movs	r0, #12
878006ca:	f2c0 2029 	movt	r0, #553	; 0x229
878006ce:	f7ff ffbf 	bl	87800650 <IOMUXC_SetPinMux>
878006d2:	f241 03b0 	movw	r3, #4272	; 0x10b0
878006d6:	9301      	str	r3, [sp, #4]
878006d8:	2350      	movs	r3, #80	; 0x50
878006da:	f2c0 2329 	movt	r3, #553	; 0x229
878006de:	9300      	str	r3, [sp, #0]
878006e0:	2300      	movs	r3, #0
878006e2:	2200      	movs	r2, #0
878006e4:	2105      	movs	r1, #5
878006e6:	200c      	movs	r0, #12
878006e8:	f2c0 2029 	movt	r0, #553	; 0x229
878006ec:	f7ff ffce 	bl	8780068c <IOMUXC_SetPinConfig>
878006f0:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878006f4:	f2c0 230a 	movt	r3, #522	; 0x20a
878006f8:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878006fc:	f2c0 220a 	movt	r2, #522	; 0x20a
87800700:	6852      	ldr	r2, [r2, #4]
87800702:	f042 0202 	orr.w	r2, r2, #2
87800706:	605a      	str	r2, [r3, #4]
87800708:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780070c:	f2c0 230a 	movt	r3, #522	; 0x20a
87800710:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800714:	f2c0 220a 	movt	r2, #522	; 0x20a
87800718:	6812      	ldr	r2, [r2, #0]
8780071a:	f042 0202 	orr.w	r2, r2, #2
8780071e:	601a      	str	r2, [r3, #0]
87800720:	46bd      	mov	sp, r7
87800722:	bd80      	pop	{r7, pc}

87800724 <beep_switch>:
87800724:	b480      	push	{r7}
87800726:	b083      	sub	sp, #12
87800728:	af00      	add	r7, sp, #0
8780072a:	6078      	str	r0, [r7, #4]
8780072c:	687b      	ldr	r3, [r7, #4]
8780072e:	2b01      	cmp	r3, #1
87800730:	d10c      	bne.n	8780074c <beep_switch+0x28>
87800732:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800736:	f2c0 230a 	movt	r3, #522	; 0x20a
8780073a:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780073e:	f2c0 220a 	movt	r2, #522	; 0x20a
87800742:	6812      	ldr	r2, [r2, #0]
87800744:	f022 0202 	bic.w	r2, r2, #2
87800748:	601a      	str	r2, [r3, #0]
8780074a:	e00e      	b.n	8780076a <beep_switch+0x46>
8780074c:	687b      	ldr	r3, [r7, #4]
8780074e:	2b00      	cmp	r3, #0
87800750:	d10b      	bne.n	8780076a <beep_switch+0x46>
87800752:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800756:	f2c0 230a 	movt	r3, #522	; 0x20a
8780075a:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780075e:	f2c0 220a 	movt	r2, #522	; 0x20a
87800762:	6812      	ldr	r2, [r2, #0]
87800764:	f042 0202 	orr.w	r2, r2, #2
87800768:	601a      	str	r2, [r3, #0]
8780076a:	370c      	adds	r7, #12
8780076c:	46bd      	mov	sp, r7
8780076e:	f85d 7b04 	ldr.w	r7, [sp], #4
87800772:	4770      	bx	lr

87800774 <IOMUXC_SetPinMux>:
87800774:	b480      	push	{r7}
87800776:	b085      	sub	sp, #20
87800778:	af00      	add	r7, sp, #0
8780077a:	60f8      	str	r0, [r7, #12]
8780077c:	60b9      	str	r1, [r7, #8]
8780077e:	607a      	str	r2, [r7, #4]
87800780:	603b      	str	r3, [r7, #0]
87800782:	68fb      	ldr	r3, [r7, #12]
87800784:	68ba      	ldr	r2, [r7, #8]
87800786:	f002 010f 	and.w	r1, r2, #15
8780078a:	69fa      	ldr	r2, [r7, #28]
8780078c:	0112      	lsls	r2, r2, #4
8780078e:	f002 0210 	and.w	r2, r2, #16
87800792:	430a      	orrs	r2, r1
87800794:	601a      	str	r2, [r3, #0]
87800796:	687b      	ldr	r3, [r7, #4]
87800798:	2b00      	cmp	r3, #0
8780079a:	d004      	beq.n	878007a6 <IOMUXC_SetPinMux+0x32>
8780079c:	687b      	ldr	r3, [r7, #4]
8780079e:	683a      	ldr	r2, [r7, #0]
878007a0:	f002 0207 	and.w	r2, r2, #7
878007a4:	601a      	str	r2, [r3, #0]
878007a6:	3714      	adds	r7, #20
878007a8:	46bd      	mov	sp, r7
878007aa:	f85d 7b04 	ldr.w	r7, [sp], #4
878007ae:	4770      	bx	lr

878007b0 <IOMUXC_SetPinConfig>:
878007b0:	b480      	push	{r7}
878007b2:	b085      	sub	sp, #20
878007b4:	af00      	add	r7, sp, #0
878007b6:	60f8      	str	r0, [r7, #12]
878007b8:	60b9      	str	r1, [r7, #8]
878007ba:	607a      	str	r2, [r7, #4]
878007bc:	603b      	str	r3, [r7, #0]
878007be:	69bb      	ldr	r3, [r7, #24]
878007c0:	2b00      	cmp	r3, #0
878007c2:	d002      	beq.n	878007ca <IOMUXC_SetPinConfig+0x1a>
878007c4:	69bb      	ldr	r3, [r7, #24]
878007c6:	69fa      	ldr	r2, [r7, #28]
878007c8:	601a      	str	r2, [r3, #0]
878007ca:	3714      	adds	r7, #20
878007cc:	46bd      	mov	sp, r7
878007ce:	f85d 7b04 	ldr.w	r7, [sp], #4
878007d2:	4770      	bx	lr

878007d4 <key_init>:
878007d4:	b580      	push	{r7, lr}
878007d6:	b086      	sub	sp, #24
878007d8:	af02      	add	r7, sp, #8
878007da:	2300      	movs	r3, #0
878007dc:	9301      	str	r3, [sp, #4]
878007de:	f44f 7346 	mov.w	r3, #792	; 0x318
878007e2:	f2c0 230e 	movt	r3, #526	; 0x20e
878007e6:	9300      	str	r3, [sp, #0]
878007e8:	2300      	movs	r3, #0
878007ea:	2200      	movs	r2, #0
878007ec:	2105      	movs	r1, #5
878007ee:	208c      	movs	r0, #140	; 0x8c
878007f0:	f2c0 200e 	movt	r0, #526	; 0x20e
878007f4:	f7ff ffbe 	bl	87800774 <IOMUXC_SetPinMux>
878007f8:	f24f 0380 	movw	r3, #61568	; 0xf080
878007fc:	9301      	str	r3, [sp, #4]
878007fe:	f44f 7346 	mov.w	r3, #792	; 0x318
87800802:	f2c0 230e 	movt	r3, #526	; 0x20e
87800806:	9300      	str	r3, [sp, #0]
87800808:	2300      	movs	r3, #0
8780080a:	2200      	movs	r2, #0
8780080c:	2105      	movs	r1, #5
8780080e:	208c      	movs	r0, #140	; 0x8c
87800810:	f2c0 200e 	movt	r0, #526	; 0x20e
87800814:	f7ff ffcc 	bl	878007b0 <IOMUXC_SetPinConfig>
87800818:	2300      	movs	r3, #0
8780081a:	607b      	str	r3, [r7, #4]
8780081c:	1d3b      	adds	r3, r7, #4
8780081e:	461a      	mov	r2, r3
87800820:	2112      	movs	r1, #18
87800822:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800826:	f2c0 2009 	movt	r0, #521	; 0x209
8780082a:	f000 f847 	bl	878008bc <gpio_init>
8780082e:	3710      	adds	r7, #16
87800830:	46bd      	mov	sp, r7
87800832:	bd80      	pop	{r7, pc}

87800834 <key_getvalue>:
87800834:	b580      	push	{r7, lr}
87800836:	b082      	sub	sp, #8
87800838:	af00      	add	r7, sp, #0
8780083a:	2300      	movs	r3, #0
8780083c:	607b      	str	r3, [r7, #4]
8780083e:	f24c 4340 	movw	r3, #50240	; 0xc440
87800842:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800846:	781b      	ldrb	r3, [r3, #0]
87800848:	2b01      	cmp	r3, #1
8780084a:	d120      	bne.n	8780088e <key_getvalue+0x5a>
8780084c:	2112      	movs	r1, #18
8780084e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800852:	f2c0 2009 	movt	r0, #521	; 0x209
87800856:	f000 f86b 	bl	87800930 <gpio_pinread>
8780085a:	4603      	mov	r3, r0
8780085c:	2b00      	cmp	r3, #0
8780085e:	d116      	bne.n	8780088e <key_getvalue+0x5a>
87800860:	200a      	movs	r0, #10
87800862:	f7ff fee3 	bl	8780062c <delay>
87800866:	f24c 4340 	movw	r3, #50240	; 0xc440
8780086a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780086e:	2200      	movs	r2, #0
87800870:	701a      	strb	r2, [r3, #0]
87800872:	2112      	movs	r1, #18
87800874:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800878:	f2c0 2009 	movt	r0, #521	; 0x209
8780087c:	f000 f858 	bl	87800930 <gpio_pinread>
87800880:	4603      	mov	r3, r0
87800882:	2b00      	cmp	r3, #0
87800884:	d102      	bne.n	8780088c <key_getvalue+0x58>
87800886:	2301      	movs	r3, #1
87800888:	607b      	str	r3, [r7, #4]
8780088a:	e012      	b.n	878008b2 <key_getvalue+0x7e>
8780088c:	e011      	b.n	878008b2 <key_getvalue+0x7e>
8780088e:	2112      	movs	r1, #18
87800890:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800894:	f2c0 2009 	movt	r0, #521	; 0x209
87800898:	f000 f84a 	bl	87800930 <gpio_pinread>
8780089c:	4603      	mov	r3, r0
8780089e:	2b01      	cmp	r3, #1
878008a0:	d107      	bne.n	878008b2 <key_getvalue+0x7e>
878008a2:	2300      	movs	r3, #0
878008a4:	607b      	str	r3, [r7, #4]
878008a6:	f24c 4340 	movw	r3, #50240	; 0xc440
878008aa:	f2c8 7380 	movt	r3, #34688	; 0x8780
878008ae:	2201      	movs	r2, #1
878008b0:	701a      	strb	r2, [r3, #0]
878008b2:	687b      	ldr	r3, [r7, #4]
878008b4:	4618      	mov	r0, r3
878008b6:	3708      	adds	r7, #8
878008b8:	46bd      	mov	sp, r7
878008ba:	bd80      	pop	{r7, pc}

878008bc <gpio_init>:
878008bc:	b580      	push	{r7, lr}
878008be:	b084      	sub	sp, #16
878008c0:	af00      	add	r7, sp, #0
878008c2:	60f8      	str	r0, [r7, #12]
878008c4:	60b9      	str	r1, [r7, #8]
878008c6:	607a      	str	r2, [r7, #4]
878008c8:	68fb      	ldr	r3, [r7, #12]
878008ca:	695a      	ldr	r2, [r3, #20]
878008cc:	2101      	movs	r1, #1
878008ce:	68bb      	ldr	r3, [r7, #8]
878008d0:	fa01 f303 	lsl.w	r3, r1, r3
878008d4:	43db      	mvns	r3, r3
878008d6:	401a      	ands	r2, r3
878008d8:	68fb      	ldr	r3, [r7, #12]
878008da:	615a      	str	r2, [r3, #20]
878008dc:	687b      	ldr	r3, [r7, #4]
878008de:	681b      	ldr	r3, [r3, #0]
878008e0:	2b00      	cmp	r3, #0
878008e2:	d10a      	bne.n	878008fa <gpio_init+0x3e>
878008e4:	68fb      	ldr	r3, [r7, #12]
878008e6:	685b      	ldr	r3, [r3, #4]
878008e8:	2101      	movs	r1, #1
878008ea:	68ba      	ldr	r2, [r7, #8]
878008ec:	fa01 f202 	lsl.w	r2, r1, r2
878008f0:	43d2      	mvns	r2, r2
878008f2:	401a      	ands	r2, r3
878008f4:	68fb      	ldr	r3, [r7, #12]
878008f6:	605a      	str	r2, [r3, #4]
878008f8:	e00f      	b.n	8780091a <gpio_init+0x5e>
878008fa:	68fb      	ldr	r3, [r7, #12]
878008fc:	685b      	ldr	r3, [r3, #4]
878008fe:	2101      	movs	r1, #1
87800900:	68ba      	ldr	r2, [r7, #8]
87800902:	fa01 f202 	lsl.w	r2, r1, r2
87800906:	431a      	orrs	r2, r3
87800908:	68fb      	ldr	r3, [r7, #12]
8780090a:	605a      	str	r2, [r3, #4]
8780090c:	687b      	ldr	r3, [r7, #4]
8780090e:	791b      	ldrb	r3, [r3, #4]
87800910:	461a      	mov	r2, r3
87800912:	68b9      	ldr	r1, [r7, #8]
87800914:	68f8      	ldr	r0, [r7, #12]
87800916:	f000 f81d 	bl	87800954 <gpio_pinwrite>
8780091a:	68b9      	ldr	r1, [r7, #8]
8780091c:	687b      	ldr	r3, [r7, #4]
8780091e:	689b      	ldr	r3, [r3, #8]
87800920:	461a      	mov	r2, r3
87800922:	68f8      	ldr	r0, [r7, #12]
87800924:	f000 f838 	bl	87800998 <gpio_intconfig>
87800928:	3710      	adds	r7, #16
8780092a:	46bd      	mov	sp, r7
8780092c:	bd80      	pop	{r7, pc}
8780092e:	bf00      	nop

87800930 <gpio_pinread>:
87800930:	b480      	push	{r7}
87800932:	b083      	sub	sp, #12
87800934:	af00      	add	r7, sp, #0
87800936:	6078      	str	r0, [r7, #4]
87800938:	6039      	str	r1, [r7, #0]
8780093a:	687b      	ldr	r3, [r7, #4]
8780093c:	681a      	ldr	r2, [r3, #0]
8780093e:	683b      	ldr	r3, [r7, #0]
87800940:	fa22 f303 	lsr.w	r3, r2, r3
87800944:	f003 0301 	and.w	r3, r3, #1
87800948:	4618      	mov	r0, r3
8780094a:	370c      	adds	r7, #12
8780094c:	46bd      	mov	sp, r7
8780094e:	f85d 7b04 	ldr.w	r7, [sp], #4
87800952:	4770      	bx	lr

87800954 <gpio_pinwrite>:
87800954:	b480      	push	{r7}
87800956:	b085      	sub	sp, #20
87800958:	af00      	add	r7, sp, #0
8780095a:	60f8      	str	r0, [r7, #12]
8780095c:	60b9      	str	r1, [r7, #8]
8780095e:	607a      	str	r2, [r7, #4]
87800960:	687b      	ldr	r3, [r7, #4]
87800962:	2b00      	cmp	r3, #0
87800964:	d10a      	bne.n	8780097c <gpio_pinwrite+0x28>
87800966:	68fb      	ldr	r3, [r7, #12]
87800968:	681a      	ldr	r2, [r3, #0]
8780096a:	2101      	movs	r1, #1
8780096c:	68bb      	ldr	r3, [r7, #8]
8780096e:	fa01 f303 	lsl.w	r3, r1, r3
87800972:	43db      	mvns	r3, r3
87800974:	401a      	ands	r2, r3
87800976:	68fb      	ldr	r3, [r7, #12]
87800978:	601a      	str	r2, [r3, #0]
8780097a:	e008      	b.n	8780098e <gpio_pinwrite+0x3a>
8780097c:	68fb      	ldr	r3, [r7, #12]
8780097e:	681a      	ldr	r2, [r3, #0]
87800980:	2101      	movs	r1, #1
87800982:	68bb      	ldr	r3, [r7, #8]
87800984:	fa01 f303 	lsl.w	r3, r1, r3
87800988:	431a      	orrs	r2, r3
8780098a:	68fb      	ldr	r3, [r7, #12]
8780098c:	601a      	str	r2, [r3, #0]
8780098e:	3714      	adds	r7, #20
87800990:	46bd      	mov	sp, r7
87800992:	f85d 7b04 	ldr.w	r7, [sp], #4
87800996:	4770      	bx	lr

87800998 <gpio_intconfig>:
87800998:	b480      	push	{r7}
8780099a:	b087      	sub	sp, #28
8780099c:	af00      	add	r7, sp, #0
8780099e:	60f8      	str	r0, [r7, #12]
878009a0:	60b9      	str	r1, [r7, #8]
878009a2:	607a      	str	r2, [r7, #4]
878009a4:	68bb      	ldr	r3, [r7, #8]
878009a6:	613b      	str	r3, [r7, #16]
878009a8:	68fb      	ldr	r3, [r7, #12]
878009aa:	69da      	ldr	r2, [r3, #28]
878009ac:	68bb      	ldr	r3, [r7, #8]
878009ae:	2101      	movs	r1, #1
878009b0:	fa01 f303 	lsl.w	r3, r1, r3
878009b4:	43db      	mvns	r3, r3
878009b6:	401a      	ands	r2, r3
878009b8:	68fb      	ldr	r3, [r7, #12]
878009ba:	61da      	str	r2, [r3, #28]
878009bc:	68bb      	ldr	r3, [r7, #8]
878009be:	2b0f      	cmp	r3, #15
878009c0:	d803      	bhi.n	878009ca <gpio_intconfig+0x32>
878009c2:	68fb      	ldr	r3, [r7, #12]
878009c4:	330c      	adds	r3, #12
878009c6:	617b      	str	r3, [r7, #20]
878009c8:	e005      	b.n	878009d6 <gpio_intconfig+0x3e>
878009ca:	68fb      	ldr	r3, [r7, #12]
878009cc:	3310      	adds	r3, #16
878009ce:	617b      	str	r3, [r7, #20]
878009d0:	693b      	ldr	r3, [r7, #16]
878009d2:	3b10      	subs	r3, #16
878009d4:	613b      	str	r3, [r7, #16]
878009d6:	687b      	ldr	r3, [r7, #4]
878009d8:	3b01      	subs	r3, #1
878009da:	2b04      	cmp	r3, #4
878009dc:	d851      	bhi.n	87800a82 <gpio_intconfig+0xea>
878009de:	a201      	add	r2, pc, #4	; (adr r2, 878009e4 <gpio_intconfig+0x4c>)
878009e0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
878009e4:	878009f9 			; <UNDEFINED> instruction: 0x878009f9
878009e8:	87800a11 	usada8hi	r0, r1, sl, r0
878009ec:	87800a35 			; <UNDEFINED> instruction: 0x87800a35
878009f0:	87800a59 			; <UNDEFINED> instruction: 0x87800a59
878009f4:	87800a6f 	strhi	r0, [r0, pc, ror #20]
878009f8:	697b      	ldr	r3, [r7, #20]
878009fa:	681a      	ldr	r2, [r3, #0]
878009fc:	693b      	ldr	r3, [r7, #16]
878009fe:	005b      	lsls	r3, r3, #1
87800a00:	4619      	mov	r1, r3
87800a02:	2303      	movs	r3, #3
87800a04:	408b      	lsls	r3, r1
87800a06:	43db      	mvns	r3, r3
87800a08:	401a      	ands	r2, r3
87800a0a:	697b      	ldr	r3, [r7, #20]
87800a0c:	601a      	str	r2, [r3, #0]
87800a0e:	e039      	b.n	87800a84 <gpio_intconfig+0xec>
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
87800a28:	2301      	movs	r3, #1
87800a2a:	408b      	lsls	r3, r1
87800a2c:	431a      	orrs	r2, r3
87800a2e:	697b      	ldr	r3, [r7, #20]
87800a30:	601a      	str	r2, [r3, #0]
87800a32:	e027      	b.n	87800a84 <gpio_intconfig+0xec>
87800a34:	697b      	ldr	r3, [r7, #20]
87800a36:	681a      	ldr	r2, [r3, #0]
87800a38:	693b      	ldr	r3, [r7, #16]
87800a3a:	005b      	lsls	r3, r3, #1
87800a3c:	4619      	mov	r1, r3
87800a3e:	2303      	movs	r3, #3
87800a40:	408b      	lsls	r3, r1
87800a42:	43db      	mvns	r3, r3
87800a44:	401a      	ands	r2, r3
87800a46:	693b      	ldr	r3, [r7, #16]
87800a48:	005b      	lsls	r3, r3, #1
87800a4a:	4619      	mov	r1, r3
87800a4c:	2302      	movs	r3, #2
87800a4e:	408b      	lsls	r3, r1
87800a50:	431a      	orrs	r2, r3
87800a52:	697b      	ldr	r3, [r7, #20]
87800a54:	601a      	str	r2, [r3, #0]
87800a56:	e015      	b.n	87800a84 <gpio_intconfig+0xec>
87800a58:	697b      	ldr	r3, [r7, #20]
87800a5a:	681a      	ldr	r2, [r3, #0]
87800a5c:	693b      	ldr	r3, [r7, #16]
87800a5e:	005b      	lsls	r3, r3, #1
87800a60:	4619      	mov	r1, r3
87800a62:	2303      	movs	r3, #3
87800a64:	408b      	lsls	r3, r1
87800a66:	431a      	orrs	r2, r3
87800a68:	697b      	ldr	r3, [r7, #20]
87800a6a:	601a      	str	r2, [r3, #0]
87800a6c:	e00a      	b.n	87800a84 <gpio_intconfig+0xec>
87800a6e:	68fb      	ldr	r3, [r7, #12]
87800a70:	69da      	ldr	r2, [r3, #28]
87800a72:	68bb      	ldr	r3, [r7, #8]
87800a74:	2101      	movs	r1, #1
87800a76:	fa01 f303 	lsl.w	r3, r1, r3
87800a7a:	431a      	orrs	r2, r3
87800a7c:	68fb      	ldr	r3, [r7, #12]
87800a7e:	61da      	str	r2, [r3, #28]
87800a80:	e000      	b.n	87800a84 <gpio_intconfig+0xec>
87800a82:	bf00      	nop
87800a84:	371c      	adds	r7, #28
87800a86:	46bd      	mov	sp, r7
87800a88:	f85d 7b04 	ldr.w	r7, [sp], #4
87800a8c:	4770      	bx	lr
87800a8e:	bf00      	nop

87800a90 <gpio_enableint>:
87800a90:	b480      	push	{r7}
87800a92:	b083      	sub	sp, #12
87800a94:	af00      	add	r7, sp, #0
87800a96:	6078      	str	r0, [r7, #4]
87800a98:	6039      	str	r1, [r7, #0]
87800a9a:	687b      	ldr	r3, [r7, #4]
87800a9c:	695b      	ldr	r3, [r3, #20]
87800a9e:	683a      	ldr	r2, [r7, #0]
87800aa0:	2101      	movs	r1, #1
87800aa2:	fa01 f202 	lsl.w	r2, r1, r2
87800aa6:	431a      	orrs	r2, r3
87800aa8:	687b      	ldr	r3, [r7, #4]
87800aaa:	615a      	str	r2, [r3, #20]
87800aac:	370c      	adds	r7, #12
87800aae:	46bd      	mov	sp, r7
87800ab0:	f85d 7b04 	ldr.w	r7, [sp], #4
87800ab4:	4770      	bx	lr
87800ab6:	bf00      	nop

87800ab8 <gpio_disableint>:
87800ab8:	b480      	push	{r7}
87800aba:	b083      	sub	sp, #12
87800abc:	af00      	add	r7, sp, #0
87800abe:	6078      	str	r0, [r7, #4]
87800ac0:	6039      	str	r1, [r7, #0]
87800ac2:	687b      	ldr	r3, [r7, #4]
87800ac4:	695b      	ldr	r3, [r3, #20]
87800ac6:	683a      	ldr	r2, [r7, #0]
87800ac8:	2101      	movs	r1, #1
87800aca:	fa01 f202 	lsl.w	r2, r1, r2
87800ace:	43d2      	mvns	r2, r2
87800ad0:	401a      	ands	r2, r3
87800ad2:	687b      	ldr	r3, [r7, #4]
87800ad4:	615a      	str	r2, [r3, #20]
87800ad6:	370c      	adds	r7, #12
87800ad8:	46bd      	mov	sp, r7
87800ada:	f85d 7b04 	ldr.w	r7, [sp], #4
87800ade:	4770      	bx	lr

87800ae0 <gpio_clearintflags>:
87800ae0:	b480      	push	{r7}
87800ae2:	b083      	sub	sp, #12
87800ae4:	af00      	add	r7, sp, #0
87800ae6:	6078      	str	r0, [r7, #4]
87800ae8:	6039      	str	r1, [r7, #0]
87800aea:	687b      	ldr	r3, [r7, #4]
87800aec:	699b      	ldr	r3, [r3, #24]
87800aee:	683a      	ldr	r2, [r7, #0]
87800af0:	2101      	movs	r1, #1
87800af2:	fa01 f202 	lsl.w	r2, r1, r2
87800af6:	431a      	orrs	r2, r3
87800af8:	687b      	ldr	r3, [r7, #4]
87800afa:	619a      	str	r2, [r3, #24]
87800afc:	370c      	adds	r7, #12
87800afe:	46bd      	mov	sp, r7
87800b00:	f85d 7b04 	ldr.w	r7, [sp], #4
87800b04:	4770      	bx	lr
87800b06:	bf00      	nop

87800b08 <int_init>:
87800b08:	b580      	push	{r7, lr}
87800b0a:	b086      	sub	sp, #24
87800b0c:	af00      	add	r7, sp, #0
87800b0e:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800b12:	617b      	str	r3, [r7, #20]
87800b14:	697b      	ldr	r3, [r7, #20]
87800b16:	0c1b      	lsrs	r3, r3, #16
87800b18:	041b      	lsls	r3, r3, #16
87800b1a:	613b      	str	r3, [r7, #16]
87800b1c:	693b      	ldr	r3, [r7, #16]
87800b1e:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
87800b22:	3304      	adds	r3, #4
87800b24:	681b      	ldr	r3, [r3, #0]
87800b26:	f003 031f 	and.w	r3, r3, #31
87800b2a:	3301      	adds	r3, #1
87800b2c:	60fb      	str	r3, [r7, #12]
87800b2e:	2300      	movs	r3, #0
87800b30:	60bb      	str	r3, [r7, #8]
87800b32:	e00a      	b.n	87800b4a <int_init+0x42>
87800b34:	693b      	ldr	r3, [r7, #16]
87800b36:	68ba      	ldr	r2, [r7, #8]
87800b38:	f502 628c 	add.w	r2, r2, #1120	; 0x460
87800b3c:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
87800b40:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800b44:	68bb      	ldr	r3, [r7, #8]
87800b46:	3301      	adds	r3, #1
87800b48:	60bb      	str	r3, [r7, #8]
87800b4a:	68fa      	ldr	r2, [r7, #12]
87800b4c:	68bb      	ldr	r3, [r7, #8]
87800b4e:	429a      	cmp	r2, r3
87800b50:	d8f0      	bhi.n	87800b34 <int_init+0x2c>
87800b52:	693b      	ldr	r3, [r7, #16]
87800b54:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800b58:	3304      	adds	r3, #4
87800b5a:	22f8      	movs	r2, #248	; 0xf8
87800b5c:	601a      	str	r2, [r3, #0]
87800b5e:	693b      	ldr	r3, [r7, #16]
87800b60:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800b64:	3308      	adds	r3, #8
87800b66:	2202      	movs	r2, #2
87800b68:	601a      	str	r2, [r3, #0]
87800b6a:	693b      	ldr	r3, [r7, #16]
87800b6c:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
87800b70:	2201      	movs	r2, #1
87800b72:	601a      	str	r2, [r3, #0]
87800b74:	693b      	ldr	r3, [r7, #16]
87800b76:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800b7a:	2201      	movs	r2, #1
87800b7c:	601a      	str	r2, [r3, #0]
87800b7e:	f000 f80b 	bl	87800b98 <system_irqtable_init>
87800b82:	2300      	movs	r3, #0
87800b84:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800b88:	607b      	str	r3, [r7, #4]
87800b8a:	687b      	ldr	r3, [r7, #4]
87800b8c:	ee0c 3f10 	mcr	15, 0, r3, cr12, cr0, {0}
87800b90:	3718      	adds	r7, #24
87800b92:	46bd      	mov	sp, r7
87800b94:	bd80      	pop	{r7, pc}
87800b96:	bf00      	nop

87800b98 <system_irqtable_init>:
87800b98:	b580      	push	{r7, lr}
87800b9a:	b082      	sub	sp, #8
87800b9c:	af00      	add	r7, sp, #0
87800b9e:	2300      	movs	r3, #0
87800ba0:	607b      	str	r3, [r7, #4]
87800ba2:	f24c 53fc 	movw	r3, #50684	; 0xc5fc
87800ba6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800baa:	2200      	movs	r2, #0
87800bac:	601a      	str	r2, [r3, #0]
87800bae:	2300      	movs	r3, #0
87800bb0:	607b      	str	r3, [r7, #4]
87800bb2:	e00b      	b.n	87800bcc <system_irqtable_init+0x34>
87800bb4:	687b      	ldr	r3, [r7, #4]
87800bb6:	2200      	movs	r2, #0
87800bb8:	f640 4189 	movw	r1, #3209	; 0xc89
87800bbc:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800bc0:	4618      	mov	r0, r3
87800bc2:	f000 f809 	bl	87800bd8 <system_register_irqhandler>
87800bc6:	687b      	ldr	r3, [r7, #4]
87800bc8:	3301      	adds	r3, #1
87800bca:	607b      	str	r3, [r7, #4]
87800bcc:	687b      	ldr	r3, [r7, #4]
87800bce:	2b9f      	cmp	r3, #159	; 0x9f
87800bd0:	d9f0      	bls.n	87800bb4 <system_irqtable_init+0x1c>
87800bd2:	3708      	adds	r7, #8
87800bd4:	46bd      	mov	sp, r7
87800bd6:	bd80      	pop	{r7, pc}

87800bd8 <system_register_irqhandler>:
87800bd8:	b480      	push	{r7}
87800bda:	b085      	sub	sp, #20
87800bdc:	af00      	add	r7, sp, #0
87800bde:	60f8      	str	r0, [r7, #12]
87800be0:	60b9      	str	r1, [r7, #8]
87800be2:	607a      	str	r2, [r7, #4]
87800be4:	f24c 6300 	movw	r3, #50688	; 0xc600
87800be8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800bec:	68fa      	ldr	r2, [r7, #12]
87800bee:	68b9      	ldr	r1, [r7, #8]
87800bf0:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
87800bf4:	f24c 6200 	movw	r2, #50688	; 0xc600
87800bf8:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800bfc:	68fb      	ldr	r3, [r7, #12]
87800bfe:	00db      	lsls	r3, r3, #3
87800c00:	4413      	add	r3, r2
87800c02:	687a      	ldr	r2, [r7, #4]
87800c04:	605a      	str	r2, [r3, #4]
87800c06:	3714      	adds	r7, #20
87800c08:	46bd      	mov	sp, r7
87800c0a:	f85d 7b04 	ldr.w	r7, [sp], #4
87800c0e:	4770      	bx	lr

87800c10 <system_irqhandler>:
87800c10:	b590      	push	{r4, r7, lr}
87800c12:	b085      	sub	sp, #20
87800c14:	af00      	add	r7, sp, #0
87800c16:	6078      	str	r0, [r7, #4]
87800c18:	687b      	ldr	r3, [r7, #4]
87800c1a:	f3c3 0309 	ubfx	r3, r3, #0, #10
87800c1e:	60fb      	str	r3, [r7, #12]
87800c20:	68fb      	ldr	r3, [r7, #12]
87800c22:	f240 32ff 	movw	r2, #1023	; 0x3ff
87800c26:	4293      	cmp	r3, r2
87800c28:	d002      	beq.n	87800c30 <system_irqhandler+0x20>
87800c2a:	68fb      	ldr	r3, [r7, #12]
87800c2c:	2b9f      	cmp	r3, #159	; 0x9f
87800c2e:	d900      	bls.n	87800c32 <system_irqhandler+0x22>
87800c30:	e027      	b.n	87800c82 <system_irqhandler+0x72>
87800c32:	f24c 53fc 	movw	r3, #50684	; 0xc5fc
87800c36:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c3a:	681b      	ldr	r3, [r3, #0]
87800c3c:	1c5a      	adds	r2, r3, #1
87800c3e:	f24c 53fc 	movw	r3, #50684	; 0xc5fc
87800c42:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c46:	601a      	str	r2, [r3, #0]
87800c48:	f24c 6300 	movw	r3, #50688	; 0xc600
87800c4c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c50:	68fa      	ldr	r2, [r7, #12]
87800c52:	f853 4032 	ldr.w	r4, [r3, r2, lsl #3]
87800c56:	f24c 6200 	movw	r2, #50688	; 0xc600
87800c5a:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800c5e:	68fb      	ldr	r3, [r7, #12]
87800c60:	00db      	lsls	r3, r3, #3
87800c62:	4413      	add	r3, r2
87800c64:	685b      	ldr	r3, [r3, #4]
87800c66:	4619      	mov	r1, r3
87800c68:	68f8      	ldr	r0, [r7, #12]
87800c6a:	47a0      	blx	r4
87800c6c:	f24c 53fc 	movw	r3, #50684	; 0xc5fc
87800c70:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c74:	681b      	ldr	r3, [r3, #0]
87800c76:	1e5a      	subs	r2, r3, #1
87800c78:	f24c 53fc 	movw	r3, #50684	; 0xc5fc
87800c7c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c80:	601a      	str	r2, [r3, #0]
87800c82:	3714      	adds	r7, #20
87800c84:	46bd      	mov	sp, r7
87800c86:	bd90      	pop	{r4, r7, pc}

87800c88 <default_irqhandler>:
87800c88:	b480      	push	{r7}
87800c8a:	b083      	sub	sp, #12
87800c8c:	af00      	add	r7, sp, #0
87800c8e:	6078      	str	r0, [r7, #4]
87800c90:	6039      	str	r1, [r7, #0]
87800c92:	e7fe      	b.n	87800c92 <default_irqhandler+0xa>

87800c94 <IOMUXC_SetPinMux>:
87800c94:	b480      	push	{r7}
87800c96:	b085      	sub	sp, #20
87800c98:	af00      	add	r7, sp, #0
87800c9a:	60f8      	str	r0, [r7, #12]
87800c9c:	60b9      	str	r1, [r7, #8]
87800c9e:	607a      	str	r2, [r7, #4]
87800ca0:	603b      	str	r3, [r7, #0]
87800ca2:	68fb      	ldr	r3, [r7, #12]
87800ca4:	68ba      	ldr	r2, [r7, #8]
87800ca6:	f002 010f 	and.w	r1, r2, #15
87800caa:	69fa      	ldr	r2, [r7, #28]
87800cac:	0112      	lsls	r2, r2, #4
87800cae:	f002 0210 	and.w	r2, r2, #16
87800cb2:	430a      	orrs	r2, r1
87800cb4:	601a      	str	r2, [r3, #0]
87800cb6:	687b      	ldr	r3, [r7, #4]
87800cb8:	2b00      	cmp	r3, #0
87800cba:	d004      	beq.n	87800cc6 <IOMUXC_SetPinMux+0x32>
87800cbc:	687b      	ldr	r3, [r7, #4]
87800cbe:	683a      	ldr	r2, [r7, #0]
87800cc0:	f002 0207 	and.w	r2, r2, #7
87800cc4:	601a      	str	r2, [r3, #0]
87800cc6:	3714      	adds	r7, #20
87800cc8:	46bd      	mov	sp, r7
87800cca:	f85d 7b04 	ldr.w	r7, [sp], #4
87800cce:	4770      	bx	lr

87800cd0 <IOMUXC_SetPinConfig>:
87800cd0:	b480      	push	{r7}
87800cd2:	b085      	sub	sp, #20
87800cd4:	af00      	add	r7, sp, #0
87800cd6:	60f8      	str	r0, [r7, #12]
87800cd8:	60b9      	str	r1, [r7, #8]
87800cda:	607a      	str	r2, [r7, #4]
87800cdc:	603b      	str	r3, [r7, #0]
87800cde:	69bb      	ldr	r3, [r7, #24]
87800ce0:	2b00      	cmp	r3, #0
87800ce2:	d002      	beq.n	87800cea <IOMUXC_SetPinConfig+0x1a>
87800ce4:	69bb      	ldr	r3, [r7, #24]
87800ce6:	69fa      	ldr	r2, [r7, #28]
87800ce8:	601a      	str	r2, [r3, #0]
87800cea:	3714      	adds	r7, #20
87800cec:	46bd      	mov	sp, r7
87800cee:	f85d 7b04 	ldr.w	r7, [sp], #4
87800cf2:	4770      	bx	lr

87800cf4 <exit_init>:
87800cf4:	b580      	push	{r7, lr}
87800cf6:	b088      	sub	sp, #32
87800cf8:	af02      	add	r7, sp, #8
87800cfa:	2300      	movs	r3, #0
87800cfc:	9301      	str	r3, [sp, #4]
87800cfe:	f44f 7346 	mov.w	r3, #792	; 0x318
87800d02:	f2c0 230e 	movt	r3, #526	; 0x20e
87800d06:	9300      	str	r3, [sp, #0]
87800d08:	2300      	movs	r3, #0
87800d0a:	2200      	movs	r2, #0
87800d0c:	2105      	movs	r1, #5
87800d0e:	208c      	movs	r0, #140	; 0x8c
87800d10:	f2c0 200e 	movt	r0, #526	; 0x20e
87800d14:	f7ff ffbe 	bl	87800c94 <IOMUXC_SetPinMux>
87800d18:	f24f 0380 	movw	r3, #61568	; 0xf080
87800d1c:	9301      	str	r3, [sp, #4]
87800d1e:	f44f 7346 	mov.w	r3, #792	; 0x318
87800d22:	f2c0 230e 	movt	r3, #526	; 0x20e
87800d26:	9300      	str	r3, [sp, #0]
87800d28:	2300      	movs	r3, #0
87800d2a:	2200      	movs	r2, #0
87800d2c:	2105      	movs	r1, #5
87800d2e:	208c      	movs	r0, #140	; 0x8c
87800d30:	f2c0 200e 	movt	r0, #526	; 0x20e
87800d34:	f7ff ffcc 	bl	87800cd0 <IOMUXC_SetPinConfig>
87800d38:	2300      	movs	r3, #0
87800d3a:	603b      	str	r3, [r7, #0]
87800d3c:	2304      	movs	r3, #4
87800d3e:	60bb      	str	r3, [r7, #8]
87800d40:	2301      	movs	r3, #1
87800d42:	713b      	strb	r3, [r7, #4]
87800d44:	463b      	mov	r3, r7
87800d46:	461a      	mov	r2, r3
87800d48:	2112      	movs	r1, #18
87800d4a:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800d4e:	f2c0 2009 	movt	r0, #521	; 0x209
87800d52:	f7ff fdb3 	bl	878008bc <gpio_init>
87800d56:	2363      	movs	r3, #99	; 0x63
87800d58:	617b      	str	r3, [r7, #20]
87800d5a:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800d5e:	613b      	str	r3, [r7, #16]
87800d60:	693b      	ldr	r3, [r7, #16]
87800d62:	0c1b      	lsrs	r3, r3, #16
87800d64:	041b      	lsls	r3, r3, #16
87800d66:	60fb      	str	r3, [r7, #12]
87800d68:	697b      	ldr	r3, [r7, #20]
87800d6a:	095a      	lsrs	r2, r3, #5
87800d6c:	697b      	ldr	r3, [r7, #20]
87800d6e:	f003 031f 	and.w	r3, r3, #31
87800d72:	2101      	movs	r1, #1
87800d74:	4099      	lsls	r1, r3
87800d76:	68fb      	ldr	r3, [r7, #12]
87800d78:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800d7c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800d80:	2200      	movs	r2, #0
87800d82:	f640 51a5 	movw	r1, #3493	; 0xda5
87800d86:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800d8a:	2063      	movs	r0, #99	; 0x63
87800d8c:	f7ff ff24 	bl	87800bd8 <system_register_irqhandler>
87800d90:	2112      	movs	r1, #18
87800d92:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800d96:	f2c0 2009 	movt	r0, #521	; 0x209
87800d9a:	f7ff fe79 	bl	87800a90 <gpio_enableint>
87800d9e:	3718      	adds	r7, #24
87800da0:	46bd      	mov	sp, r7
87800da2:	bd80      	pop	{r7, pc}

87800da4 <gpio1_io18_irqhandler>:
87800da4:	b580      	push	{r7, lr}
87800da6:	af00      	add	r7, sp, #0
87800da8:	200a      	movs	r0, #10
87800daa:	f7ff fc3f 	bl	8780062c <delay>
87800dae:	2112      	movs	r1, #18
87800db0:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800db4:	f2c0 2009 	movt	r0, #521	; 0x209
87800db8:	f7ff fdba 	bl	87800930 <gpio_pinread>
87800dbc:	4603      	mov	r3, r0
87800dbe:	2b00      	cmp	r3, #0
87800dc0:	d117      	bne.n	87800df2 <gpio1_io18_irqhandler+0x4e>
87800dc2:	f64c 3300 	movw	r3, #51968	; 0xcb00
87800dc6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800dca:	781b      	ldrb	r3, [r3, #0]
87800dcc:	2b00      	cmp	r3, #0
87800dce:	bf0c      	ite	eq
87800dd0:	2301      	moveq	r3, #1
87800dd2:	2300      	movne	r3, #0
87800dd4:	b2db      	uxtb	r3, r3
87800dd6:	461a      	mov	r2, r3
87800dd8:	f64c 3300 	movw	r3, #51968	; 0xcb00
87800ddc:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800de0:	701a      	strb	r2, [r3, #0]
87800de2:	f64c 3300 	movw	r3, #51968	; 0xcb00
87800de6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800dea:	781b      	ldrb	r3, [r3, #0]
87800dec:	4618      	mov	r0, r3
87800dee:	f7ff fc99 	bl	87800724 <beep_switch>
87800df2:	2112      	movs	r1, #18
87800df4:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800df8:	f2c0 2009 	movt	r0, #521	; 0x209
87800dfc:	f7ff fe70 	bl	87800ae0 <gpio_clearintflags>
87800e00:	bd80      	pop	{r7, pc}
87800e02:	bf00      	nop

87800e04 <epit1_init>:
87800e04:	b580      	push	{r7, lr}
87800e06:	b086      	sub	sp, #24
87800e08:	af00      	add	r7, sp, #0
87800e0a:	6078      	str	r0, [r7, #4]
87800e0c:	6039      	str	r1, [r7, #0]
87800e0e:	687b      	ldr	r3, [r7, #4]
87800e10:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
87800e14:	d302      	bcc.n	87800e1c <epit1_init+0x18>
87800e16:	f640 73ff 	movw	r3, #4095	; 0xfff
87800e1a:	607b      	str	r3, [r7, #4]
87800e1c:	2300      	movs	r3, #0
87800e1e:	f2c0 230d 	movt	r3, #525	; 0x20d
87800e22:	2200      	movs	r2, #0
87800e24:	601a      	str	r2, [r3, #0]
87800e26:	2200      	movs	r2, #0
87800e28:	f2c0 220d 	movt	r2, #525	; 0x20d
87800e2c:	687b      	ldr	r3, [r7, #4]
87800e2e:	011b      	lsls	r3, r3, #4
87800e30:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
87800e34:	f043 030e 	orr.w	r3, r3, #14
87800e38:	6013      	str	r3, [r2, #0]
87800e3a:	2300      	movs	r3, #0
87800e3c:	f2c0 230d 	movt	r3, #525	; 0x20d
87800e40:	683a      	ldr	r2, [r7, #0]
87800e42:	609a      	str	r2, [r3, #8]
87800e44:	2300      	movs	r3, #0
87800e46:	f2c0 230d 	movt	r3, #525	; 0x20d
87800e4a:	2200      	movs	r2, #0
87800e4c:	60da      	str	r2, [r3, #12]
87800e4e:	2358      	movs	r3, #88	; 0x58
87800e50:	617b      	str	r3, [r7, #20]
87800e52:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800e56:	613b      	str	r3, [r7, #16]
87800e58:	693b      	ldr	r3, [r7, #16]
87800e5a:	0c1b      	lsrs	r3, r3, #16
87800e5c:	041b      	lsls	r3, r3, #16
87800e5e:	60fb      	str	r3, [r7, #12]
87800e60:	697b      	ldr	r3, [r7, #20]
87800e62:	095a      	lsrs	r2, r3, #5
87800e64:	697b      	ldr	r3, [r7, #20]
87800e66:	f003 031f 	and.w	r3, r3, #31
87800e6a:	2101      	movs	r1, #1
87800e6c:	4099      	lsls	r1, r3
87800e6e:	68fb      	ldr	r3, [r7, #12]
87800e70:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800e74:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800e78:	2200      	movs	r2, #0
87800e7a:	f640 61a5 	movw	r1, #3749	; 0xea5
87800e7e:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800e82:	2058      	movs	r0, #88	; 0x58
87800e84:	f7ff fea8 	bl	87800bd8 <system_register_irqhandler>
87800e88:	2300      	movs	r3, #0
87800e8a:	f2c0 230d 	movt	r3, #525	; 0x20d
87800e8e:	2200      	movs	r2, #0
87800e90:	f2c0 220d 	movt	r2, #525	; 0x20d
87800e94:	6812      	ldr	r2, [r2, #0]
87800e96:	f042 0201 	orr.w	r2, r2, #1
87800e9a:	601a      	str	r2, [r3, #0]
87800e9c:	3718      	adds	r7, #24
87800e9e:	46bd      	mov	sp, r7
87800ea0:	bd80      	pop	{r7, pc}
87800ea2:	bf00      	nop

87800ea4 <epit1_irqhandler>:
87800ea4:	b580      	push	{r7, lr}
87800ea6:	af00      	add	r7, sp, #0
87800ea8:	f64c 3301 	movw	r3, #51969	; 0xcb01
87800eac:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800eb0:	781b      	ldrb	r3, [r3, #0]
87800eb2:	2b00      	cmp	r3, #0
87800eb4:	bf0c      	ite	eq
87800eb6:	2301      	moveq	r3, #1
87800eb8:	2300      	movne	r3, #0
87800eba:	b2db      	uxtb	r3, r3
87800ebc:	461a      	mov	r2, r3
87800ebe:	f64c 3301 	movw	r3, #51969	; 0xcb01
87800ec2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800ec6:	701a      	strb	r2, [r3, #0]
87800ec8:	2300      	movs	r3, #0
87800eca:	f2c0 230d 	movt	r3, #525	; 0x20d
87800ece:	685b      	ldr	r3, [r3, #4]
87800ed0:	f003 0301 	and.w	r3, r3, #1
87800ed4:	2b00      	cmp	r3, #0
87800ed6:	d008      	beq.n	87800eea <epit1_irqhandler+0x46>
87800ed8:	f64c 3301 	movw	r3, #51969	; 0xcb01
87800edc:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800ee0:	781b      	ldrb	r3, [r3, #0]
87800ee2:	4619      	mov	r1, r3
87800ee4:	2000      	movs	r0, #0
87800ee6:	f7ff fad7 	bl	87800498 <led_switch>
87800eea:	2300      	movs	r3, #0
87800eec:	f2c0 230d 	movt	r3, #525	; 0x20d
87800ef0:	2200      	movs	r2, #0
87800ef2:	f2c0 220d 	movt	r2, #525	; 0x20d
87800ef6:	6852      	ldr	r2, [r2, #4]
87800ef8:	f042 0201 	orr.w	r2, r2, #1
87800efc:	605a      	str	r2, [r3, #4]
87800efe:	bd80      	pop	{r7, pc}

87800f00 <IOMUXC_SetPinMux>:
87800f00:	b480      	push	{r7}
87800f02:	b085      	sub	sp, #20
87800f04:	af00      	add	r7, sp, #0
87800f06:	60f8      	str	r0, [r7, #12]
87800f08:	60b9      	str	r1, [r7, #8]
87800f0a:	607a      	str	r2, [r7, #4]
87800f0c:	603b      	str	r3, [r7, #0]
87800f0e:	68fb      	ldr	r3, [r7, #12]
87800f10:	68ba      	ldr	r2, [r7, #8]
87800f12:	f002 010f 	and.w	r1, r2, #15
87800f16:	69fa      	ldr	r2, [r7, #28]
87800f18:	0112      	lsls	r2, r2, #4
87800f1a:	f002 0210 	and.w	r2, r2, #16
87800f1e:	430a      	orrs	r2, r1
87800f20:	601a      	str	r2, [r3, #0]
87800f22:	687b      	ldr	r3, [r7, #4]
87800f24:	2b00      	cmp	r3, #0
87800f26:	d004      	beq.n	87800f32 <IOMUXC_SetPinMux+0x32>
87800f28:	687b      	ldr	r3, [r7, #4]
87800f2a:	683a      	ldr	r2, [r7, #0]
87800f2c:	f002 0207 	and.w	r2, r2, #7
87800f30:	601a      	str	r2, [r3, #0]
87800f32:	3714      	adds	r7, #20
87800f34:	46bd      	mov	sp, r7
87800f36:	f85d 7b04 	ldr.w	r7, [sp], #4
87800f3a:	4770      	bx	lr

87800f3c <IOMUXC_SetPinConfig>:
87800f3c:	b480      	push	{r7}
87800f3e:	b085      	sub	sp, #20
87800f40:	af00      	add	r7, sp, #0
87800f42:	60f8      	str	r0, [r7, #12]
87800f44:	60b9      	str	r1, [r7, #8]
87800f46:	607a      	str	r2, [r7, #4]
87800f48:	603b      	str	r3, [r7, #0]
87800f4a:	69bb      	ldr	r3, [r7, #24]
87800f4c:	2b00      	cmp	r3, #0
87800f4e:	d002      	beq.n	87800f56 <IOMUXC_SetPinConfig+0x1a>
87800f50:	69bb      	ldr	r3, [r7, #24]
87800f52:	69fa      	ldr	r2, [r7, #28]
87800f54:	601a      	str	r2, [r3, #0]
87800f56:	3714      	adds	r7, #20
87800f58:	46bd      	mov	sp, r7
87800f5a:	f85d 7b04 	ldr.w	r7, [sp], #4
87800f5e:	4770      	bx	lr

87800f60 <filterkey_init>:
87800f60:	b580      	push	{r7, lr}
87800f62:	b088      	sub	sp, #32
87800f64:	af02      	add	r7, sp, #8
87800f66:	2300      	movs	r3, #0
87800f68:	9301      	str	r3, [sp, #4]
87800f6a:	f44f 7346 	mov.w	r3, #792	; 0x318
87800f6e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800f72:	9300      	str	r3, [sp, #0]
87800f74:	2300      	movs	r3, #0
87800f76:	2200      	movs	r2, #0
87800f78:	2105      	movs	r1, #5
87800f7a:	208c      	movs	r0, #140	; 0x8c
87800f7c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800f80:	f7ff ffbe 	bl	87800f00 <IOMUXC_SetPinMux>
87800f84:	f24f 0380 	movw	r3, #61568	; 0xf080
87800f88:	9301      	str	r3, [sp, #4]
87800f8a:	f44f 7346 	mov.w	r3, #792	; 0x318
87800f8e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800f92:	9300      	str	r3, [sp, #0]
87800f94:	2300      	movs	r3, #0
87800f96:	2200      	movs	r2, #0
87800f98:	2105      	movs	r1, #5
87800f9a:	208c      	movs	r0, #140	; 0x8c
87800f9c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800fa0:	f7ff ffcc 	bl	87800f3c <IOMUXC_SetPinConfig>
87800fa4:	2300      	movs	r3, #0
87800fa6:	603b      	str	r3, [r7, #0]
87800fa8:	2304      	movs	r3, #4
87800faa:	60bb      	str	r3, [r7, #8]
87800fac:	2301      	movs	r3, #1
87800fae:	713b      	strb	r3, [r7, #4]
87800fb0:	463b      	mov	r3, r7
87800fb2:	461a      	mov	r2, r3
87800fb4:	2112      	movs	r1, #18
87800fb6:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800fba:	f2c0 2009 	movt	r0, #521	; 0x209
87800fbe:	f7ff fc7d 	bl	878008bc <gpio_init>
87800fc2:	2363      	movs	r3, #99	; 0x63
87800fc4:	617b      	str	r3, [r7, #20]
87800fc6:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800fca:	613b      	str	r3, [r7, #16]
87800fcc:	693b      	ldr	r3, [r7, #16]
87800fce:	0c1b      	lsrs	r3, r3, #16
87800fd0:	041b      	lsls	r3, r3, #16
87800fd2:	60fb      	str	r3, [r7, #12]
87800fd4:	697b      	ldr	r3, [r7, #20]
87800fd6:	095a      	lsrs	r2, r3, #5
87800fd8:	697b      	ldr	r3, [r7, #20]
87800fda:	f003 031f 	and.w	r3, r3, #31
87800fde:	2101      	movs	r1, #1
87800fe0:	4099      	lsls	r1, r3
87800fe2:	68fb      	ldr	r3, [r7, #12]
87800fe4:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800fe8:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800fec:	2200      	movs	r2, #0
87800fee:	f241 1169 	movw	r1, #4457	; 0x1169
87800ff2:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800ff6:	2063      	movs	r0, #99	; 0x63
87800ff8:	f7ff fdee 	bl	87800bd8 <system_register_irqhandler>
87800ffc:	2112      	movs	r1, #18
87800ffe:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87801002:	f2c0 2009 	movt	r0, #521	; 0x209
87801006:	f7ff fd43 	bl	87800a90 <gpio_enableint>
8780100a:	f44f 5091 	mov.w	r0, #4640	; 0x1220
8780100e:	f2c0 000a 	movt	r0, #10
87801012:	f000 f803 	bl	8780101c <filtertimer_init>
87801016:	3718      	adds	r7, #24
87801018:	46bd      	mov	sp, r7
8780101a:	bd80      	pop	{r7, pc}

8780101c <filtertimer_init>:
8780101c:	b580      	push	{r7, lr}
8780101e:	b086      	sub	sp, #24
87801020:	af00      	add	r7, sp, #0
87801022:	6078      	str	r0, [r7, #4]
87801024:	2300      	movs	r3, #0
87801026:	f2c0 230d 	movt	r3, #525	; 0x20d
8780102a:	2200      	movs	r2, #0
8780102c:	601a      	str	r2, [r3, #0]
8780102e:	2300      	movs	r3, #0
87801030:	f2c0 230d 	movt	r3, #525	; 0x20d
87801034:	220e      	movs	r2, #14
87801036:	f2c0 1200 	movt	r2, #256	; 0x100
8780103a:	601a      	str	r2, [r3, #0]
8780103c:	2300      	movs	r3, #0
8780103e:	f2c0 230d 	movt	r3, #525	; 0x20d
87801042:	687a      	ldr	r2, [r7, #4]
87801044:	609a      	str	r2, [r3, #8]
87801046:	2300      	movs	r3, #0
87801048:	f2c0 230d 	movt	r3, #525	; 0x20d
8780104c:	2200      	movs	r2, #0
8780104e:	60da      	str	r2, [r3, #12]
87801050:	2358      	movs	r3, #88	; 0x58
87801052:	617b      	str	r3, [r7, #20]
87801054:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87801058:	613b      	str	r3, [r7, #16]
8780105a:	693b      	ldr	r3, [r7, #16]
8780105c:	0c1b      	lsrs	r3, r3, #16
8780105e:	041b      	lsls	r3, r3, #16
87801060:	60fb      	str	r3, [r7, #12]
87801062:	697b      	ldr	r3, [r7, #20]
87801064:	095a      	lsrs	r2, r3, #5
87801066:	697b      	ldr	r3, [r7, #20]
87801068:	f003 031f 	and.w	r3, r3, #31
8780106c:	2101      	movs	r1, #1
8780106e:	4099      	lsls	r1, r3
87801070:	68fb      	ldr	r3, [r7, #12]
87801072:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87801076:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
8780107a:	2200      	movs	r2, #0
8780107c:	f241 01f5 	movw	r1, #4341	; 0x10f5
87801080:	f2c8 7180 	movt	r1, #34688	; 0x8780
87801084:	2058      	movs	r0, #88	; 0x58
87801086:	f7ff fda7 	bl	87800bd8 <system_register_irqhandler>
8780108a:	3718      	adds	r7, #24
8780108c:	46bd      	mov	sp, r7
8780108e:	bd80      	pop	{r7, pc}

87801090 <filtertimer_stop>:
87801090:	b480      	push	{r7}
87801092:	af00      	add	r7, sp, #0
87801094:	2300      	movs	r3, #0
87801096:	f2c0 230d 	movt	r3, #525	; 0x20d
8780109a:	2200      	movs	r2, #0
8780109c:	f2c0 220d 	movt	r2, #525	; 0x20d
878010a0:	6812      	ldr	r2, [r2, #0]
878010a2:	f022 0201 	bic.w	r2, r2, #1
878010a6:	601a      	str	r2, [r3, #0]
878010a8:	46bd      	mov	sp, r7
878010aa:	f85d 7b04 	ldr.w	r7, [sp], #4
878010ae:	4770      	bx	lr

878010b0 <filtertimer_restart>:
878010b0:	b480      	push	{r7}
878010b2:	b083      	sub	sp, #12
878010b4:	af00      	add	r7, sp, #0
878010b6:	6078      	str	r0, [r7, #4]
878010b8:	2300      	movs	r3, #0
878010ba:	f2c0 230d 	movt	r3, #525	; 0x20d
878010be:	2200      	movs	r2, #0
878010c0:	f2c0 220d 	movt	r2, #525	; 0x20d
878010c4:	6812      	ldr	r2, [r2, #0]
878010c6:	f022 0201 	bic.w	r2, r2, #1
878010ca:	601a      	str	r2, [r3, #0]
878010cc:	2300      	movs	r3, #0
878010ce:	f2c0 230d 	movt	r3, #525	; 0x20d
878010d2:	687a      	ldr	r2, [r7, #4]
878010d4:	609a      	str	r2, [r3, #8]
878010d6:	2300      	movs	r3, #0
878010d8:	f2c0 230d 	movt	r3, #525	; 0x20d
878010dc:	2200      	movs	r2, #0
878010de:	f2c0 220d 	movt	r2, #525	; 0x20d
878010e2:	6812      	ldr	r2, [r2, #0]
878010e4:	f042 0201 	orr.w	r2, r2, #1
878010e8:	601a      	str	r2, [r3, #0]
878010ea:	370c      	adds	r7, #12
878010ec:	46bd      	mov	sp, r7
878010ee:	f85d 7b04 	ldr.w	r7, [sp], #4
878010f2:	4770      	bx	lr

878010f4 <filtertimer_irqhandler>:
878010f4:	b580      	push	{r7, lr}
878010f6:	af00      	add	r7, sp, #0
878010f8:	2300      	movs	r3, #0
878010fa:	f2c0 230d 	movt	r3, #525	; 0x20d
878010fe:	685b      	ldr	r3, [r3, #4]
87801100:	f003 0301 	and.w	r3, r3, #1
87801104:	2b00      	cmp	r3, #0
87801106:	d023      	beq.n	87801150 <filtertimer_irqhandler+0x5c>
87801108:	f7ff ffc2 	bl	87801090 <filtertimer_stop>
8780110c:	2112      	movs	r1, #18
8780110e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87801112:	f2c0 2009 	movt	r0, #521	; 0x209
87801116:	f7ff fc0b 	bl	87800930 <gpio_pinread>
8780111a:	4603      	mov	r3, r0
8780111c:	2b00      	cmp	r3, #0
8780111e:	d117      	bne.n	87801150 <filtertimer_irqhandler+0x5c>
87801120:	f64c 3302 	movw	r3, #51970	; 0xcb02
87801124:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801128:	781b      	ldrb	r3, [r3, #0]
8780112a:	2b00      	cmp	r3, #0
8780112c:	bf0c      	ite	eq
8780112e:	2301      	moveq	r3, #1
87801130:	2300      	movne	r3, #0
87801132:	b2db      	uxtb	r3, r3
87801134:	461a      	mov	r2, r3
87801136:	f64c 3302 	movw	r3, #51970	; 0xcb02
8780113a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780113e:	701a      	strb	r2, [r3, #0]
87801140:	f64c 3302 	movw	r3, #51970	; 0xcb02
87801144:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801148:	781b      	ldrb	r3, [r3, #0]
8780114a:	4618      	mov	r0, r3
8780114c:	f7ff faea 	bl	87800724 <beep_switch>
87801150:	2300      	movs	r3, #0
87801152:	f2c0 230d 	movt	r3, #525	; 0x20d
87801156:	2200      	movs	r2, #0
87801158:	f2c0 220d 	movt	r2, #525	; 0x20d
8780115c:	6852      	ldr	r2, [r2, #4]
8780115e:	f042 0201 	orr.w	r2, r2, #1
87801162:	605a      	str	r2, [r3, #4]
87801164:	bd80      	pop	{r7, pc}
87801166:	bf00      	nop

87801168 <gpio1_16_31_irqhandler>:
87801168:	b580      	push	{r7, lr}
8780116a:	af00      	add	r7, sp, #0
8780116c:	f44f 5091 	mov.w	r0, #4640	; 0x1220
87801170:	f2c0 000a 	movt	r0, #10
87801174:	f7ff ff9c 	bl	878010b0 <filtertimer_restart>
87801178:	2112      	movs	r1, #18
8780117a:	f44f 4040 	mov.w	r0, #49152	; 0xc000
8780117e:	f2c0 2009 	movt	r0, #521	; 0x209
87801182:	f7ff fcad 	bl	87800ae0 <gpio_clearintflags>
87801186:	bd80      	pop	{r7, pc}

87801188 <IOMUXC_SetPinMux>:
87801188:	b480      	push	{r7}
8780118a:	b085      	sub	sp, #20
8780118c:	af00      	add	r7, sp, #0
8780118e:	60f8      	str	r0, [r7, #12]
87801190:	60b9      	str	r1, [r7, #8]
87801192:	607a      	str	r2, [r7, #4]
87801194:	603b      	str	r3, [r7, #0]
87801196:	68fb      	ldr	r3, [r7, #12]
87801198:	68ba      	ldr	r2, [r7, #8]
8780119a:	f002 010f 	and.w	r1, r2, #15
8780119e:	69fa      	ldr	r2, [r7, #28]
878011a0:	0112      	lsls	r2, r2, #4
878011a2:	f002 0210 	and.w	r2, r2, #16
878011a6:	430a      	orrs	r2, r1
878011a8:	601a      	str	r2, [r3, #0]
878011aa:	687b      	ldr	r3, [r7, #4]
878011ac:	2b00      	cmp	r3, #0
878011ae:	d004      	beq.n	878011ba <IOMUXC_SetPinMux+0x32>
878011b0:	687b      	ldr	r3, [r7, #4]
878011b2:	683a      	ldr	r2, [r7, #0]
878011b4:	f002 0207 	and.w	r2, r2, #7
878011b8:	601a      	str	r2, [r3, #0]
878011ba:	3714      	adds	r7, #20
878011bc:	46bd      	mov	sp, r7
878011be:	f85d 7b04 	ldr.w	r7, [sp], #4
878011c2:	4770      	bx	lr

878011c4 <IOMUXC_SetPinConfig>:
878011c4:	b480      	push	{r7}
878011c6:	b085      	sub	sp, #20
878011c8:	af00      	add	r7, sp, #0
878011ca:	60f8      	str	r0, [r7, #12]
878011cc:	60b9      	str	r1, [r7, #8]
878011ce:	607a      	str	r2, [r7, #4]
878011d0:	603b      	str	r3, [r7, #0]
878011d2:	69bb      	ldr	r3, [r7, #24]
878011d4:	2b00      	cmp	r3, #0
878011d6:	d002      	beq.n	878011de <IOMUXC_SetPinConfig+0x1a>
878011d8:	69bb      	ldr	r3, [r7, #24]
878011da:	69fa      	ldr	r2, [r7, #28]
878011dc:	601a      	str	r2, [r3, #0]
878011de:	3714      	adds	r7, #20
878011e0:	46bd      	mov	sp, r7
878011e2:	f85d 7b04 	ldr.w	r7, [sp], #4
878011e6:	4770      	bx	lr

878011e8 <uart_init>:
878011e8:	b580      	push	{r7, lr}
878011ea:	af00      	add	r7, sp, #0
878011ec:	f000 f850 	bl	87801290 <uart_io_init>
878011f0:	2000      	movs	r0, #0
878011f2:	f2c0 2002 	movt	r0, #514	; 0x202
878011f6:	f000 f9f1 	bl	878015dc <uart_disable>
878011fa:	2000      	movs	r0, #0
878011fc:	f2c0 2002 	movt	r0, #514	; 0x202
87801200:	f000 fa10 	bl	87801624 <uart_softreset>
87801204:	2300      	movs	r3, #0
87801206:	f2c0 2302 	movt	r3, #514	; 0x202
8780120a:	2200      	movs	r2, #0
8780120c:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
87801210:	2200      	movs	r2, #0
87801212:	f2c0 2202 	movt	r2, #514	; 0x202
87801216:	2300      	movs	r3, #0
87801218:	f2c0 2302 	movt	r3, #514	; 0x202
8780121c:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
87801220:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
87801224:	f043 0326 	orr.w	r3, r3, #38	; 0x26
87801228:	f8c2 3084 	str.w	r3, [r2, #132]	; 0x84
8780122c:	2300      	movs	r3, #0
8780122e:	f2c0 2302 	movt	r3, #514	; 0x202
87801232:	2200      	movs	r2, #0
87801234:	f2c0 2202 	movt	r2, #514	; 0x202
87801238:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
8780123c:	f042 0204 	orr.w	r2, r2, #4
87801240:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
87801244:	2300      	movs	r3, #0
87801246:	f2c0 2302 	movt	r3, #514	; 0x202
8780124a:	2200      	movs	r2, #0
8780124c:	f2c0 2202 	movt	r2, #514	; 0x202
87801250:	f8d2 2080 	ldr.w	r2, [r2, #128]	; 0x80
87801254:	f422 4280 	bic.w	r2, r2, #16384	; 0x4000
87801258:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
8780125c:	2300      	movs	r3, #0
8780125e:	f2c0 2302 	movt	r3, #514	; 0x202
87801262:	f44f 7220 	mov.w	r2, #640	; 0x280
87801266:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
8780126a:	2300      	movs	r3, #0
8780126c:	f2c0 2302 	movt	r3, #514	; 0x202
87801270:	2247      	movs	r2, #71	; 0x47
87801272:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
87801276:	2300      	movs	r3, #0
87801278:	f2c0 2302 	movt	r3, #514	; 0x202
8780127c:	f640 4234 	movw	r2, #3124	; 0xc34
87801280:	f8c3 20a8 	str.w	r2, [r3, #168]	; 0xa8
87801284:	2000      	movs	r0, #0
87801286:	f2c0 2002 	movt	r0, #514	; 0x202
8780128a:	f000 f9b9 	bl	87801600 <uart_enable>
8780128e:	bd80      	pop	{r7, pc}

87801290 <uart_io_init>:
87801290:	b580      	push	{r7, lr}
87801292:	b082      	sub	sp, #8
87801294:	af02      	add	r7, sp, #8
87801296:	2300      	movs	r3, #0
87801298:	9301      	str	r3, [sp, #4]
8780129a:	f44f 7344 	mov.w	r3, #784	; 0x310
8780129e:	f2c0 230e 	movt	r3, #526	; 0x20e
878012a2:	9300      	str	r3, [sp, #0]
878012a4:	2300      	movs	r3, #0
878012a6:	2200      	movs	r2, #0
878012a8:	2100      	movs	r1, #0
878012aa:	2084      	movs	r0, #132	; 0x84
878012ac:	f2c0 200e 	movt	r0, #526	; 0x20e
878012b0:	f7ff ff6a 	bl	87801188 <IOMUXC_SetPinMux>
878012b4:	2300      	movs	r3, #0
878012b6:	9301      	str	r3, [sp, #4]
878012b8:	f44f 7345 	mov.w	r3, #788	; 0x314
878012bc:	f2c0 230e 	movt	r3, #526	; 0x20e
878012c0:	9300      	str	r3, [sp, #0]
878012c2:	2303      	movs	r3, #3
878012c4:	f240 6224 	movw	r2, #1572	; 0x624
878012c8:	f2c0 220e 	movt	r2, #526	; 0x20e
878012cc:	2100      	movs	r1, #0
878012ce:	2088      	movs	r0, #136	; 0x88
878012d0:	f2c0 200e 	movt	r0, #526	; 0x20e
878012d4:	f7ff ff58 	bl	87801188 <IOMUXC_SetPinMux>
878012d8:	f241 03b0 	movw	r3, #4272	; 0x10b0
878012dc:	9301      	str	r3, [sp, #4]
878012de:	f44f 7344 	mov.w	r3, #784	; 0x310
878012e2:	f2c0 230e 	movt	r3, #526	; 0x20e
878012e6:	9300      	str	r3, [sp, #0]
878012e8:	2300      	movs	r3, #0
878012ea:	2200      	movs	r2, #0
878012ec:	2100      	movs	r1, #0
878012ee:	2084      	movs	r0, #132	; 0x84
878012f0:	f2c0 200e 	movt	r0, #526	; 0x20e
878012f4:	f7ff ff66 	bl	878011c4 <IOMUXC_SetPinConfig>
878012f8:	f241 03b0 	movw	r3, #4272	; 0x10b0
878012fc:	9301      	str	r3, [sp, #4]
878012fe:	f44f 7345 	mov.w	r3, #788	; 0x314
87801302:	f2c0 230e 	movt	r3, #526	; 0x20e
87801306:	9300      	str	r3, [sp, #0]
87801308:	2303      	movs	r3, #3
8780130a:	f240 6224 	movw	r2, #1572	; 0x624
8780130e:	f2c0 220e 	movt	r2, #526	; 0x20e
87801312:	2100      	movs	r1, #0
87801314:	2088      	movs	r0, #136	; 0x88
87801316:	f2c0 200e 	movt	r0, #526	; 0x20e
8780131a:	f7ff ff53 	bl	878011c4 <IOMUXC_SetPinConfig>
8780131e:	46bd      	mov	sp, r7
87801320:	bd80      	pop	{r7, pc}
87801322:	bf00      	nop

87801324 <uart_setbaudrate>:
87801324:	b590      	push	{r4, r7, lr}
87801326:	b093      	sub	sp, #76	; 0x4c
87801328:	af00      	add	r7, sp, #0
8780132a:	60f8      	str	r0, [r7, #12]
8780132c:	60b9      	str	r1, [r7, #8]
8780132e:	607a      	str	r2, [r7, #4]
87801330:	2300      	movs	r3, #0
87801332:	647b      	str	r3, [r7, #68]	; 0x44
87801334:	2300      	movs	r3, #0
87801336:	643b      	str	r3, [r7, #64]	; 0x40
87801338:	2300      	movs	r3, #0
8780133a:	63fb      	str	r3, [r7, #60]	; 0x3c
8780133c:	2300      	movs	r3, #0
8780133e:	63bb      	str	r3, [r7, #56]	; 0x38
87801340:	2301      	movs	r3, #1
87801342:	62bb      	str	r3, [r7, #40]	; 0x28
87801344:	f04f 0300 	mov.w	r3, #0
87801348:	f04f 0400 	mov.w	r4, #0
8780134c:	e9c7 3408 	strd	r3, r4, [r7, #32]
87801350:	f04f 0300 	mov.w	r3, #0
87801354:	f04f 0400 	mov.w	r4, #0
87801358:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
8780135c:	2300      	movs	r3, #0
8780135e:	62fb      	str	r3, [r7, #44]	; 0x2c
87801360:	687b      	ldr	r3, [r7, #4]
87801362:	647b      	str	r3, [r7, #68]	; 0x44
87801364:	68bb      	ldr	r3, [r7, #8]
87801366:	011b      	lsls	r3, r3, #4
87801368:	643b      	str	r3, [r7, #64]	; 0x40
8780136a:	2301      	movs	r3, #1
8780136c:	63fb      	str	r3, [r7, #60]	; 0x3c
8780136e:	e00a      	b.n	87801386 <uart_setbaudrate+0x62>
87801370:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801372:	63fb      	str	r3, [r7, #60]	; 0x3c
87801374:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87801376:	6c39      	ldr	r1, [r7, #64]	; 0x40
87801378:	4618      	mov	r0, r3
8780137a:	f006 f963 	bl	87807644 <__aeabi_uidivmod>
8780137e:	460b      	mov	r3, r1
87801380:	643b      	str	r3, [r7, #64]	; 0x40
87801382:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87801384:	647b      	str	r3, [r7, #68]	; 0x44
87801386:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801388:	2b00      	cmp	r3, #0
8780138a:	d1f1      	bne.n	87801370 <uart_setbaudrate+0x4c>
8780138c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
8780138e:	6878      	ldr	r0, [r7, #4]
87801390:	f006 f82a 	bl	878073e8 <__aeabi_uidiv>
87801394:	4603      	mov	r3, r0
87801396:	647b      	str	r3, [r7, #68]	; 0x44
87801398:	68bb      	ldr	r3, [r7, #8]
8780139a:	011b      	lsls	r3, r3, #4
8780139c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
8780139e:	4618      	mov	r0, r3
878013a0:	f006 f822 	bl	878073e8 <__aeabi_uidiv>
878013a4:	4603      	mov	r3, r0
878013a6:	643b      	str	r3, [r7, #64]	; 0x40
878013a8:	6c7a      	ldr	r2, [r7, #68]	; 0x44
878013aa:	f64f 73f9 	movw	r3, #65529	; 0xfff9
878013ae:	f2c0 0306 	movt	r3, #6
878013b2:	429a      	cmp	r2, r3
878013b4:	d803      	bhi.n	878013be <uart_setbaudrate+0x9a>
878013b6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878013b8:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
878013bc:	d334      	bcc.n	87801428 <uart_setbaudrate+0x104>
878013be:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878013c0:	1e5a      	subs	r2, r3, #1
878013c2:	f646 53b9 	movw	r3, #28089	; 0x6db9
878013c6:	f2c2 4393 	movt	r3, #9363	; 0x2493
878013ca:	fba2 3403 	umull	r3, r4, r2, r3
878013ce:	1b12      	subs	r2, r2, r4
878013d0:	0852      	lsrs	r2, r2, #1
878013d2:	1913      	adds	r3, r2, r4
878013d4:	0c9b      	lsrs	r3, r3, #18
878013d6:	3301      	adds	r3, #1
878013d8:	61fb      	str	r3, [r7, #28]
878013da:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878013dc:	1e5a      	subs	r2, r3, #1
878013de:	f248 0301 	movw	r3, #32769	; 0x8001
878013e2:	f2c8 0300 	movt	r3, #32768	; 0x8000
878013e6:	fba2 3403 	umull	r3, r4, r2, r3
878013ea:	0be3      	lsrs	r3, r4, #15
878013ec:	3301      	adds	r3, #1
878013ee:	61bb      	str	r3, [r7, #24]
878013f0:	69ba      	ldr	r2, [r7, #24]
878013f2:	69fb      	ldr	r3, [r7, #28]
878013f4:	4293      	cmp	r3, r2
878013f6:	bf38      	it	cc
878013f8:	4613      	movcc	r3, r2
878013fa:	617b      	str	r3, [r7, #20]
878013fc:	6979      	ldr	r1, [r7, #20]
878013fe:	6c78      	ldr	r0, [r7, #68]	; 0x44
87801400:	f005 fff2 	bl	878073e8 <__aeabi_uidiv>
87801404:	4603      	mov	r3, r0
87801406:	647b      	str	r3, [r7, #68]	; 0x44
87801408:	6979      	ldr	r1, [r7, #20]
8780140a:	6c38      	ldr	r0, [r7, #64]	; 0x40
8780140c:	f005 ffec 	bl	878073e8 <__aeabi_uidiv>
87801410:	4603      	mov	r3, r0
87801412:	643b      	str	r3, [r7, #64]	; 0x40
87801414:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87801416:	2b00      	cmp	r3, #0
87801418:	d101      	bne.n	8780141e <uart_setbaudrate+0xfa>
8780141a:	2301      	movs	r3, #1
8780141c:	647b      	str	r3, [r7, #68]	; 0x44
8780141e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801420:	2b00      	cmp	r3, #0
87801422:	d101      	bne.n	87801428 <uart_setbaudrate+0x104>
87801424:	2301      	movs	r3, #1
87801426:	643b      	str	r3, [r7, #64]	; 0x40
87801428:	6c7b      	ldr	r3, [r7, #68]	; 0x44
8780142a:	1e5a      	subs	r2, r3, #1
8780142c:	f248 0301 	movw	r3, #32769	; 0x8001
87801430:	f2c8 0300 	movt	r3, #32768	; 0x8000
87801434:	fba2 3403 	umull	r3, r4, r2, r3
87801438:	0be3      	lsrs	r3, r4, #15
8780143a:	3301      	adds	r3, #1
8780143c:	62bb      	str	r3, [r7, #40]	; 0x28
8780143e:	6abb      	ldr	r3, [r7, #40]	; 0x28
87801440:	3b01      	subs	r3, #1
87801442:	2b06      	cmp	r3, #6
87801444:	d825      	bhi.n	87801492 <uart_setbaudrate+0x16e>
87801446:	a201      	add	r2, pc, #4	; (adr r2, 8780144c <uart_setbaudrate+0x128>)
87801448:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
8780144c:	87801469 	strhi	r1, [r0, r9, ror #8]
87801450:	8780146f 	strhi	r1, [r0, pc, ror #8]
87801454:	87801475 			; <UNDEFINED> instruction: 0x87801475
87801458:	8780147b 			; <UNDEFINED> instruction: 0x8780147b
8780145c:	87801481 	strhi	r1, [r0, r1, lsl #9]
87801460:	87801487 	strhi	r1, [r0, r7, lsl #9]
87801464:	8780148d 	strhi	r1, [r0, sp, lsl #9]
87801468:	2305      	movs	r3, #5
8780146a:	63bb      	str	r3, [r7, #56]	; 0x38
8780146c:	e014      	b.n	87801498 <uart_setbaudrate+0x174>
8780146e:	2304      	movs	r3, #4
87801470:	63bb      	str	r3, [r7, #56]	; 0x38
87801472:	e011      	b.n	87801498 <uart_setbaudrate+0x174>
87801474:	2303      	movs	r3, #3
87801476:	63bb      	str	r3, [r7, #56]	; 0x38
87801478:	e00e      	b.n	87801498 <uart_setbaudrate+0x174>
8780147a:	2302      	movs	r3, #2
8780147c:	63bb      	str	r3, [r7, #56]	; 0x38
8780147e:	e00b      	b.n	87801498 <uart_setbaudrate+0x174>
87801480:	2301      	movs	r3, #1
87801482:	63bb      	str	r3, [r7, #56]	; 0x38
87801484:	e008      	b.n	87801498 <uart_setbaudrate+0x174>
87801486:	2300      	movs	r3, #0
87801488:	63bb      	str	r3, [r7, #56]	; 0x38
8780148a:	e005      	b.n	87801498 <uart_setbaudrate+0x174>
8780148c:	2306      	movs	r3, #6
8780148e:	63bb      	str	r3, [r7, #56]	; 0x38
87801490:	e002      	b.n	87801498 <uart_setbaudrate+0x174>
87801492:	2305      	movs	r3, #5
87801494:	63bb      	str	r3, [r7, #56]	; 0x38
87801496:	bf00      	nop
87801498:	687b      	ldr	r3, [r7, #4]
8780149a:	f04f 0400 	mov.w	r4, #0
8780149e:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
878014a2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878014a4:	011b      	lsls	r3, r3, #4
878014a6:	62fb      	str	r3, [r7, #44]	; 0x2c
878014a8:	2301      	movs	r3, #1
878014aa:	63fb      	str	r3, [r7, #60]	; 0x3c
878014ac:	e012      	b.n	878014d4 <uart_setbaudrate+0x1b0>
878014ae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878014b0:	63fb      	str	r3, [r7, #60]	; 0x3c
878014b2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878014b4:	f04f 0400 	mov.w	r4, #0
878014b8:	e9d7 010c 	ldrd	r0, r1, [r7, #48]	; 0x30
878014bc:	461a      	mov	r2, r3
878014be:	4623      	mov	r3, r4
878014c0:	f006 f8ce 	bl	87807660 <__aeabi_uldivmod>
878014c4:	461c      	mov	r4, r3
878014c6:	4613      	mov	r3, r2
878014c8:	62fb      	str	r3, [r7, #44]	; 0x2c
878014ca:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878014cc:	f04f 0400 	mov.w	r4, #0
878014d0:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
878014d4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878014d6:	2b00      	cmp	r3, #0
878014d8:	d1e9      	bne.n	878014ae <uart_setbaudrate+0x18a>
878014da:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
878014dc:	6878      	ldr	r0, [r7, #4]
878014de:	f005 ff83 	bl	878073e8 <__aeabi_uidiv>
878014e2:	4603      	mov	r3, r0
878014e4:	f04f 0400 	mov.w	r4, #0
878014e8:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
878014ec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878014ee:	011b      	lsls	r3, r3, #4
878014f0:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
878014f2:	4618      	mov	r0, r3
878014f4:	f005 ff78 	bl	878073e8 <__aeabi_uidiv>
878014f8:	4603      	mov	r3, r0
878014fa:	62fb      	str	r3, [r7, #44]	; 0x2c
878014fc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878014fe:	f04f 0400 	mov.w	r4, #0
87801502:	6b3a      	ldr	r2, [r7, #48]	; 0x30
87801504:	fb04 f102 	mul.w	r1, r4, r2
87801508:	6b7a      	ldr	r2, [r7, #52]	; 0x34
8780150a:	fb03 f202 	mul.w	r2, r3, r2
8780150e:	440a      	add	r2, r1
87801510:	6b39      	ldr	r1, [r7, #48]	; 0x30
87801512:	fba1 0103 	umull	r0, r1, r1, r3
87801516:	1853      	adds	r3, r2, r1
87801518:	4619      	mov	r1, r3
8780151a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
8780151c:	f04f 0400 	mov.w	r4, #0
87801520:	461a      	mov	r2, r3
87801522:	4623      	mov	r3, r4
87801524:	f006 f89c 	bl	87807660 <__aeabi_uldivmod>
87801528:	4603      	mov	r3, r0
8780152a:	460c      	mov	r4, r1
8780152c:	e9c7 3408 	strd	r3, r4, [r7, #32]
87801530:	68bb      	ldr	r3, [r7, #8]
87801532:	f04f 0400 	mov.w	r4, #0
87801536:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
8780153a:	42a2      	cmp	r2, r4
8780153c:	bf08      	it	eq
8780153e:	4299      	cmpeq	r1, r3
87801540:	d308      	bcc.n	87801554 <uart_setbaudrate+0x230>
87801542:	68bb      	ldr	r3, [r7, #8]
87801544:	f04f 0400 	mov.w	r4, #0
87801548:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
8780154c:	1acb      	subs	r3, r1, r3
8780154e:	eb62 0404 	sbc.w	r4, r2, r4
87801552:	e008      	b.n	87801566 <uart_setbaudrate+0x242>
87801554:	68bb      	ldr	r3, [r7, #8]
87801556:	4619      	mov	r1, r3
87801558:	f04f 0200 	mov.w	r2, #0
8780155c:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801560:	1acb      	subs	r3, r1, r3
87801562:	eb62 0404 	sbc.w	r4, r2, r4
87801566:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780156a:	68ba      	ldr	r2, [r7, #8]
8780156c:	f248 531f 	movw	r3, #34079	; 0x851f
87801570:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
87801574:	fba2 3403 	umull	r3, r4, r2, r3
87801578:	0962      	lsrs	r2, r4, #5
8780157a:	4613      	mov	r3, r2
8780157c:	005b      	lsls	r3, r3, #1
8780157e:	4413      	add	r3, r2
87801580:	f04f 0400 	mov.w	r4, #0
87801584:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
87801588:	42a2      	cmp	r2, r4
8780158a:	bf08      	it	eq
8780158c:	4299      	cmpeq	r1, r3
8780158e:	d222      	bcs.n	878015d6 <uart_setbaudrate+0x2b2>
87801590:	68fb      	ldr	r3, [r7, #12]
87801592:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
87801596:	f423 7260 	bic.w	r2, r3, #896	; 0x380
8780159a:	68fb      	ldr	r3, [r7, #12]
8780159c:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
878015a0:	68fb      	ldr	r3, [r7, #12]
878015a2:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
878015a6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878015a8:	01db      	lsls	r3, r3, #7
878015aa:	f403 7360 	and.w	r3, r3, #896	; 0x380
878015ae:	431a      	orrs	r2, r3
878015b0:	68fb      	ldr	r3, [r7, #12]
878015b2:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
878015b6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878015b8:	3b01      	subs	r3, #1
878015ba:	b29a      	uxth	r2, r3
878015bc:	68fb      	ldr	r3, [r7, #12]
878015be:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
878015c2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
878015c4:	6c78      	ldr	r0, [r7, #68]	; 0x44
878015c6:	f005 ff0f 	bl	878073e8 <__aeabi_uidiv>
878015ca:	4603      	mov	r3, r0
878015cc:	3b01      	subs	r3, #1
878015ce:	b29a      	uxth	r2, r3
878015d0:	68fb      	ldr	r3, [r7, #12]
878015d2:	f8c3 20a8 	str.w	r2, [r3, #168]	; 0xa8
878015d6:	374c      	adds	r7, #76	; 0x4c
878015d8:	46bd      	mov	sp, r7
878015da:	bd90      	pop	{r4, r7, pc}

878015dc <uart_disable>:
878015dc:	b480      	push	{r7}
878015de:	b083      	sub	sp, #12
878015e0:	af00      	add	r7, sp, #0
878015e2:	6078      	str	r0, [r7, #4]
878015e4:	687b      	ldr	r3, [r7, #4]
878015e6:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
878015ea:	f023 0201 	bic.w	r2, r3, #1
878015ee:	687b      	ldr	r3, [r7, #4]
878015f0:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878015f4:	370c      	adds	r7, #12
878015f6:	46bd      	mov	sp, r7
878015f8:	f85d 7b04 	ldr.w	r7, [sp], #4
878015fc:	4770      	bx	lr
878015fe:	bf00      	nop

87801600 <uart_enable>:
87801600:	b480      	push	{r7}
87801602:	b083      	sub	sp, #12
87801604:	af00      	add	r7, sp, #0
87801606:	6078      	str	r0, [r7, #4]
87801608:	687b      	ldr	r3, [r7, #4]
8780160a:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
8780160e:	f043 0201 	orr.w	r2, r3, #1
87801612:	687b      	ldr	r3, [r7, #4]
87801614:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
87801618:	370c      	adds	r7, #12
8780161a:	46bd      	mov	sp, r7
8780161c:	f85d 7b04 	ldr.w	r7, [sp], #4
87801620:	4770      	bx	lr
87801622:	bf00      	nop

87801624 <uart_softreset>:
87801624:	b480      	push	{r7}
87801626:	b083      	sub	sp, #12
87801628:	af00      	add	r7, sp, #0
8780162a:	6078      	str	r0, [r7, #4]
8780162c:	687b      	ldr	r3, [r7, #4]
8780162e:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
87801632:	f023 0201 	bic.w	r2, r3, #1
87801636:	687b      	ldr	r3, [r7, #4]
87801638:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
8780163c:	bf00      	nop
8780163e:	687b      	ldr	r3, [r7, #4]
87801640:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
87801644:	f003 0301 	and.w	r3, r3, #1
87801648:	2b00      	cmp	r3, #0
8780164a:	d0f8      	beq.n	8780163e <uart_softreset+0x1a>
8780164c:	370c      	adds	r7, #12
8780164e:	46bd      	mov	sp, r7
87801650:	f85d 7b04 	ldr.w	r7, [sp], #4
87801654:	4770      	bx	lr
87801656:	bf00      	nop

87801658 <putc>:
87801658:	b480      	push	{r7}
8780165a:	b083      	sub	sp, #12
8780165c:	af00      	add	r7, sp, #0
8780165e:	4603      	mov	r3, r0
87801660:	71fb      	strb	r3, [r7, #7]
87801662:	bf00      	nop
87801664:	2300      	movs	r3, #0
87801666:	f2c0 2302 	movt	r3, #514	; 0x202
8780166a:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
8780166e:	08db      	lsrs	r3, r3, #3
87801670:	f003 0301 	and.w	r3, r3, #1
87801674:	2b00      	cmp	r3, #0
87801676:	d0f5      	beq.n	87801664 <putc+0xc>
87801678:	2300      	movs	r3, #0
8780167a:	f2c0 2302 	movt	r3, #514	; 0x202
8780167e:	79fa      	ldrb	r2, [r7, #7]
87801680:	641a      	str	r2, [r3, #64]	; 0x40
87801682:	370c      	adds	r7, #12
87801684:	46bd      	mov	sp, r7
87801686:	f85d 7b04 	ldr.w	r7, [sp], #4
8780168a:	4770      	bx	lr

8780168c <puts>:
8780168c:	b580      	push	{r7, lr}
8780168e:	b084      	sub	sp, #16
87801690:	af00      	add	r7, sp, #0
87801692:	6078      	str	r0, [r7, #4]
87801694:	687b      	ldr	r3, [r7, #4]
87801696:	60fb      	str	r3, [r7, #12]
87801698:	e006      	b.n	878016a8 <puts+0x1c>
8780169a:	68fb      	ldr	r3, [r7, #12]
8780169c:	1c5a      	adds	r2, r3, #1
8780169e:	60fa      	str	r2, [r7, #12]
878016a0:	781b      	ldrb	r3, [r3, #0]
878016a2:	4618      	mov	r0, r3
878016a4:	f7ff ffd8 	bl	87801658 <putc>
878016a8:	68fb      	ldr	r3, [r7, #12]
878016aa:	781b      	ldrb	r3, [r3, #0]
878016ac:	2b00      	cmp	r3, #0
878016ae:	d1f4      	bne.n	8780169a <puts+0xe>
878016b0:	3710      	adds	r7, #16
878016b2:	46bd      	mov	sp, r7
878016b4:	bd80      	pop	{r7, pc}
878016b6:	bf00      	nop

878016b8 <getc>:
878016b8:	b480      	push	{r7}
878016ba:	af00      	add	r7, sp, #0
878016bc:	bf00      	nop
878016be:	2300      	movs	r3, #0
878016c0:	f2c0 2302 	movt	r3, #514	; 0x202
878016c4:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
878016c8:	f003 0301 	and.w	r3, r3, #1
878016cc:	2b00      	cmp	r3, #0
878016ce:	d0f6      	beq.n	878016be <getc+0x6>
878016d0:	2300      	movs	r3, #0
878016d2:	f2c0 2302 	movt	r3, #514	; 0x202
878016d6:	681b      	ldr	r3, [r3, #0]
878016d8:	b2db      	uxtb	r3, r3
878016da:	4618      	mov	r0, r3
878016dc:	46bd      	mov	sp, r7
878016de:	f85d 7b04 	ldr.w	r7, [sp], #4
878016e2:	4770      	bx	lr

878016e4 <raise>:
878016e4:	b480      	push	{r7}
878016e6:	b083      	sub	sp, #12
878016e8:	af00      	add	r7, sp, #0
878016ea:	6078      	str	r0, [r7, #4]
878016ec:	370c      	adds	r7, #12
878016ee:	46bd      	mov	sp, r7
878016f0:	f85d 7b04 	ldr.w	r7, [sp], #4
878016f4:	4770      	bx	lr
878016f6:	bf00      	nop

878016f8 <__div64_32>:
878016f8:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
878016fc:	b08c      	sub	sp, #48	; 0x30
878016fe:	af00      	add	r7, sp, #0
87801700:	6078      	str	r0, [r7, #4]
87801702:	6039      	str	r1, [r7, #0]
87801704:	687b      	ldr	r3, [r7, #4]
87801706:	e9d3 2300 	ldrd	r2, r3, [r3]
8780170a:	e9c7 230a 	strd	r2, r3, [r7, #40]	; 0x28
8780170e:	683b      	ldr	r3, [r7, #0]
87801710:	461a      	mov	r2, r3
87801712:	f04f 0300 	mov.w	r3, #0
87801716:	e9c7 2308 	strd	r2, r3, [r7, #32]
8780171a:	f04f 0201 	mov.w	r2, #1
8780171e:	f04f 0300 	mov.w	r3, #0
87801722:	e9c7 2304 	strd	r2, r3, [r7, #16]
87801726:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	; 0x28
8780172a:	469a      	mov	sl, r3
8780172c:	f04f 0b00 	mov.w	fp, #0
87801730:	4653      	mov	r3, sl
87801732:	60fb      	str	r3, [r7, #12]
87801734:	f04f 0200 	mov.w	r2, #0
87801738:	f04f 0300 	mov.w	r3, #0
8780173c:	e9c7 2306 	strd	r2, r3, [r7, #24]
87801740:	68fa      	ldr	r2, [r7, #12]
87801742:	683b      	ldr	r3, [r7, #0]
87801744:	429a      	cmp	r2, r3
87801746:	d320      	bcc.n	8780178a <__div64_32+0x92>
87801748:	6839      	ldr	r1, [r7, #0]
8780174a:	68f8      	ldr	r0, [r7, #12]
8780174c:	f005 fe4c 	bl	878073e8 <__aeabi_uidiv>
87801750:	4603      	mov	r3, r0
87801752:	60fb      	str	r3, [r7, #12]
87801754:	68fb      	ldr	r3, [r7, #12]
87801756:	461a      	mov	r2, r3
87801758:	f04f 0300 	mov.w	r3, #0
8780175c:	4691      	mov	r9, r2
8780175e:	f04f 0800 	mov.w	r8, #0
87801762:	e9c7 8906 	strd	r8, r9, [r7, #24]
87801766:	68fb      	ldr	r3, [r7, #12]
87801768:	683a      	ldr	r2, [r7, #0]
8780176a:	fb02 f303 	mul.w	r3, r2, r3
8780176e:	461a      	mov	r2, r3
87801770:	f04f 0300 	mov.w	r3, #0
87801774:	0015      	movs	r5, r2
87801776:	2400      	movs	r4, #0
87801778:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	; 0x28
8780177c:	1b12      	subs	r2, r2, r4
8780177e:	eb63 0305 	sbc.w	r3, r3, r5
87801782:	461c      	mov	r4, r3
87801784:	4613      	mov	r3, r2
87801786:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
8780178a:	e011      	b.n	878017b0 <__div64_32+0xb8>
8780178c:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
87801790:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801794:	185b      	adds	r3, r3, r1
87801796:	eb44 0402 	adc.w	r4, r4, r2
8780179a:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780179e:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
878017a2:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
878017a6:	185b      	adds	r3, r3, r1
878017a8:	eb44 0402 	adc.w	r4, r4, r2
878017ac:	e9c7 3404 	strd	r3, r4, [r7, #16]
878017b0:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878017b4:	2b01      	cmp	r3, #1
878017b6:	f174 0300 	sbcs.w	r3, r4, #0
878017ba:	db07      	blt.n	878017cc <__div64_32+0xd4>
878017bc:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
878017c0:	e9d7 340a 	ldrd	r3, r4, [r7, #40]	; 0x28
878017c4:	42a2      	cmp	r2, r4
878017c6:	bf08      	it	eq
878017c8:	4299      	cmpeq	r1, r3
878017ca:	d3df      	bcc.n	8780178c <__div64_32+0x94>
878017cc:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	; 0x28
878017d0:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878017d4:	42a2      	cmp	r2, r4
878017d6:	bf08      	it	eq
878017d8:	4299      	cmpeq	r1, r3
878017da:	d311      	bcc.n	87801800 <__div64_32+0x108>
878017dc:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	; 0x28
878017e0:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878017e4:	1acb      	subs	r3, r1, r3
878017e6:	eb62 0404 	sbc.w	r4, r2, r4
878017ea:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
878017ee:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
878017f2:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
878017f6:	185b      	adds	r3, r3, r1
878017f8:	eb44 0402 	adc.w	r4, r4, r2
878017fc:	e9c7 3406 	strd	r3, r4, [r7, #24]
87801800:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801804:	0864      	lsrs	r4, r4, #1
87801806:	ea4f 0333 	mov.w	r3, r3, rrx
8780180a:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780180e:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
87801812:	0864      	lsrs	r4, r4, #1
87801814:	ea4f 0333 	mov.w	r3, r3, rrx
87801818:	e9c7 3404 	strd	r3, r4, [r7, #16]
8780181c:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
87801820:	4323      	orrs	r3, r4
87801822:	d1d3      	bne.n	878017cc <__div64_32+0xd4>
87801824:	687a      	ldr	r2, [r7, #4]
87801826:	e9d7 3406 	ldrd	r3, r4, [r7, #24]
8780182a:	e9c2 3400 	strd	r3, r4, [r2]
8780182e:	6abb      	ldr	r3, [r7, #40]	; 0x28
87801830:	4618      	mov	r0, r3
87801832:	3730      	adds	r7, #48	; 0x30
87801834:	46bd      	mov	sp, r7
87801836:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
8780183a:	bf00      	nop
8780183c:	0000      	movs	r0, r0
	...

87801840 <__umodsi3>:
87801840:	e2512001 	subs	r2, r1, #1
87801844:	3a000062 	bcc	878019d4 <Ldiv0>
87801848:	11500001 	cmpne	r0, r1
8780184c:	03a00000 	moveq	r0, #0
87801850:	81110002 	tsthi	r1, r2
87801854:	00000002 	andeq	r0, r0, r2
87801858:	91a0f00e 	movls	pc, lr
8780185c:	e3a02000 	mov	r2, #0
87801860:	e3510201 	cmp	r1, #268435456	; 0x10000000
87801864:	31510000 	cmpcc	r1, r0
87801868:	31a01201 	lslcc	r1, r1, #4
8780186c:	32822004 	addcc	r2, r2, #4
87801870:	3afffffa 	bcc	87801860 <__umodsi3+0x20>
87801874:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
87801878:	31510000 	cmpcc	r1, r0
8780187c:	31a01081 	lslcc	r1, r1, #1
87801880:	32822001 	addcc	r2, r2, #1
87801884:	3afffffa 	bcc	87801874 <__umodsi3+0x34>
87801888:	e2522003 	subs	r2, r2, #3
8780188c:	ba00000e 	blt	878018cc <__umodsi3+0x8c>
87801890:	e1500001 	cmp	r0, r1
87801894:	20400001 	subcs	r0, r0, r1
87801898:	e15000a1 	cmp	r0, r1, lsr #1
8780189c:	204000a1 	subcs	r0, r0, r1, lsr #1
878018a0:	e1500121 	cmp	r0, r1, lsr #2
878018a4:	20400121 	subcs	r0, r0, r1, lsr #2
878018a8:	e15001a1 	cmp	r0, r1, lsr #3
878018ac:	204001a1 	subcs	r0, r0, r1, lsr #3
878018b0:	e3500001 	cmp	r0, #1
878018b4:	e1a01221 	lsr	r1, r1, #4
878018b8:	a2522004 	subsge	r2, r2, #4
878018bc:	aafffff3 	bge	87801890 <__umodsi3+0x50>
878018c0:	e3120003 	tst	r2, #3
878018c4:	13300000 	teqne	r0, #0
878018c8:	0a00000a 	beq	878018f8 <__umodsi3+0xb8>
878018cc:	e3720002 	cmn	r2, #2
878018d0:	ba000006 	blt	878018f0 <__umodsi3+0xb0>
878018d4:	0a000002 	beq	878018e4 <__umodsi3+0xa4>
878018d8:	e1500001 	cmp	r0, r1
878018dc:	20400001 	subcs	r0, r0, r1
878018e0:	e1a010a1 	lsr	r1, r1, #1
878018e4:	e1500001 	cmp	r0, r1
878018e8:	20400001 	subcs	r0, r0, r1
878018ec:	e1a010a1 	lsr	r1, r1, #1
878018f0:	e1500001 	cmp	r0, r1
878018f4:	20400001 	subcs	r0, r0, r1
878018f8:	e1a0f00e 	mov	pc, lr
878018fc:	90909090 	umullsls	r9, r0, r0, r0

87801900 <__modsi3>:
87801900:	e3510000 	cmp	r1, #0
87801904:	0a000032 	beq	878019d4 <Ldiv0>
87801908:	42611000 	rsbmi	r1, r1, #0
8780190c:	e1b0c000 	movs	ip, r0
87801910:	42600000 	rsbmi	r0, r0, #0
87801914:	e2512001 	subs	r2, r1, #1
87801918:	11500001 	cmpne	r0, r1
8780191c:	03a00000 	moveq	r0, #0
87801920:	81110002 	tsthi	r1, r2
87801924:	00000002 	andeq	r0, r0, r2
87801928:	9a000026 	bls	878019c8 <__modsi3+0xc8>
8780192c:	e3a02000 	mov	r2, #0
87801930:	e3510201 	cmp	r1, #268435456	; 0x10000000
87801934:	31510000 	cmpcc	r1, r0
87801938:	31a01201 	lslcc	r1, r1, #4
8780193c:	32822004 	addcc	r2, r2, #4
87801940:	3afffffa 	bcc	87801930 <__modsi3+0x30>
87801944:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
87801948:	31510000 	cmpcc	r1, r0
8780194c:	31a01081 	lslcc	r1, r1, #1
87801950:	32822001 	addcc	r2, r2, #1
87801954:	3afffffa 	bcc	87801944 <__modsi3+0x44>
87801958:	e2522003 	subs	r2, r2, #3
8780195c:	ba00000e 	blt	8780199c <__modsi3+0x9c>
87801960:	e1500001 	cmp	r0, r1
87801964:	20400001 	subcs	r0, r0, r1
87801968:	e15000a1 	cmp	r0, r1, lsr #1
8780196c:	204000a1 	subcs	r0, r0, r1, lsr #1
87801970:	e1500121 	cmp	r0, r1, lsr #2
87801974:	20400121 	subcs	r0, r0, r1, lsr #2
87801978:	e15001a1 	cmp	r0, r1, lsr #3
8780197c:	204001a1 	subcs	r0, r0, r1, lsr #3
87801980:	e3500001 	cmp	r0, #1
87801984:	e1a01221 	lsr	r1, r1, #4
87801988:	a2522004 	subsge	r2, r2, #4
8780198c:	aafffff3 	bge	87801960 <__modsi3+0x60>
87801990:	e3120003 	tst	r2, #3
87801994:	13300000 	teqne	r0, #0
87801998:	0a00000a 	beq	878019c8 <__modsi3+0xc8>
8780199c:	e3720002 	cmn	r2, #2
878019a0:	ba000006 	blt	878019c0 <__modsi3+0xc0>
878019a4:	0a000002 	beq	878019b4 <__modsi3+0xb4>
878019a8:	e1500001 	cmp	r0, r1
878019ac:	20400001 	subcs	r0, r0, r1
878019b0:	e1a010a1 	lsr	r1, r1, #1
878019b4:	e1500001 	cmp	r0, r1
878019b8:	20400001 	subcs	r0, r0, r1
878019bc:	e1a010a1 	lsr	r1, r1, #1
878019c0:	e1500001 	cmp	r0, r1
878019c4:	20400001 	subcs	r0, r0, r1
878019c8:	e35c0000 	cmp	ip, #0
878019cc:	42600000 	rsbmi	r0, r0, #0
878019d0:	e1a0f00e 	mov	pc, lr

878019d4 <Ldiv0>:
878019d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
878019d8:	e3a00000 	mov	r0, #0
878019dc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

878019e0 <__muldi3>:
878019e0:	b490      	push	{r4, r7}
878019e2:	b08c      	sub	sp, #48	; 0x30
878019e4:	af00      	add	r7, sp, #0
878019e6:	e9c7 0102 	strd	r0, r1, [r7, #8]
878019ea:	e9c7 2300 	strd	r2, r3, [r7]
878019ee:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
878019f2:	e9c7 3408 	strd	r3, r4, [r7, #32]
878019f6:	e9d7 3400 	ldrd	r3, r4, [r7]
878019fa:	e9c7 3406 	strd	r3, r4, [r7, #24]
878019fe:	6a3b      	ldr	r3, [r7, #32]
87801a00:	69ba      	ldr	r2, [r7, #24]
87801a02:	4611      	mov	r1, r2
87801a04:	ea4f 4013 	mov.w	r0, r3, lsr #16
87801a08:	ea4f 4211 	mov.w	r2, r1, lsr #16
87801a0c:	ea23 4400 	bic.w	r4, r3, r0, lsl #16
87801a10:	ea21 4102 	bic.w	r1, r1, r2, lsl #16
87801a14:	fb04 f301 	mul.w	r3, r4, r1
87801a18:	fb00 f101 	mul.w	r1, r0, r1
87801a1c:	fb02 f404 	mul.w	r4, r2, r4
87801a20:	fb00 f202 	mul.w	r2, r0, r2
87801a24:	190c      	adds	r4, r1, r4
87801a26:	bf28      	it	cs
87801a28:	f502 3280 	addcs.w	r2, r2, #65536	; 0x10000
87801a2c:	eb13 4304 	adds.w	r3, r3, r4, lsl #16
87801a30:	eb42 4214 	adc.w	r2, r2, r4, lsr #16
87801a34:	617a      	str	r2, [r7, #20]
87801a36:	613b      	str	r3, [r7, #16]
87801a38:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
87801a3c:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
87801a40:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87801a42:	4619      	mov	r1, r3
87801a44:	6a3b      	ldr	r3, [r7, #32]
87801a46:	69fa      	ldr	r2, [r7, #28]
87801a48:	fb02 f203 	mul.w	r2, r2, r3
87801a4c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87801a4e:	69b8      	ldr	r0, [r7, #24]
87801a50:	fb00 f303 	mul.w	r3, r0, r3
87801a54:	4413      	add	r3, r2
87801a56:	440b      	add	r3, r1
87801a58:	62fb      	str	r3, [r7, #44]	; 0x2c
87801a5a:	e9d7 340a 	ldrd	r3, r4, [r7, #40]	; 0x28
87801a5e:	4618      	mov	r0, r3
87801a60:	4621      	mov	r1, r4
87801a62:	3730      	adds	r7, #48	; 0x30
87801a64:	46bd      	mov	sp, r7
87801a66:	bc90      	pop	{r4, r7}
87801a68:	4770      	bx	lr
87801a6a:	bf00      	nop

87801a6c <printf>:
87801a6c:	b40f      	push	{r0, r1, r2, r3}
87801a6e:	b590      	push	{r4, r7, lr}
87801a70:	b085      	sub	sp, #20
87801a72:	af00      	add	r7, sp, #0
87801a74:	f107 0324 	add.w	r3, r7, #36	; 0x24
87801a78:	60bb      	str	r3, [r7, #8]
87801a7a:	6a3b      	ldr	r3, [r7, #32]
87801a7c:	68ba      	ldr	r2, [r7, #8]
87801a7e:	4619      	mov	r1, r3
87801a80:	f64c 3004 	movw	r0, #51972	; 0xcb04
87801a84:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801a88:	f001 fca6 	bl	878033d8 <vsprintf>
87801a8c:	6078      	str	r0, [r7, #4]
87801a8e:	2300      	movs	r3, #0
87801a90:	60fb      	str	r3, [r7, #12]
87801a92:	e00c      	b.n	87801aae <printf+0x42>
87801a94:	f64c 3304 	movw	r3, #51972	; 0xcb04
87801a98:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801a9c:	68fa      	ldr	r2, [r7, #12]
87801a9e:	4413      	add	r3, r2
87801aa0:	781b      	ldrb	r3, [r3, #0]
87801aa2:	4618      	mov	r0, r3
87801aa4:	f7ff fdd8 	bl	87801658 <putc>
87801aa8:	68fb      	ldr	r3, [r7, #12]
87801aaa:	3301      	adds	r3, #1
87801aac:	60fb      	str	r3, [r7, #12]
87801aae:	68fc      	ldr	r4, [r7, #12]
87801ab0:	f64c 3004 	movw	r0, #51972	; 0xcb04
87801ab4:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801ab8:	f000 f9b2 	bl	87801e20 <strlen>
87801abc:	4603      	mov	r3, r0
87801abe:	429c      	cmp	r4, r3
87801ac0:	d3e8      	bcc.n	87801a94 <printf+0x28>
87801ac2:	687b      	ldr	r3, [r7, #4]
87801ac4:	4618      	mov	r0, r3
87801ac6:	3714      	adds	r7, #20
87801ac8:	46bd      	mov	sp, r7
87801aca:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
87801ace:	b004      	add	sp, #16
87801ad0:	4770      	bx	lr
87801ad2:	bf00      	nop

87801ad4 <scanf>:
87801ad4:	b40f      	push	{r0, r1, r2, r3}
87801ad6:	b580      	push	{r7, lr}
87801ad8:	b084      	sub	sp, #16
87801ada:	af00      	add	r7, sp, #0
87801adc:	2300      	movs	r3, #0
87801ade:	60fb      	str	r3, [r7, #12]
87801ae0:	f7ff fdea 	bl	878016b8 <getc>
87801ae4:	4603      	mov	r3, r0
87801ae6:	72fb      	strb	r3, [r7, #11]
87801ae8:	7afb      	ldrb	r3, [r7, #11]
87801aea:	4618      	mov	r0, r3
87801aec:	f7ff fdb4 	bl	87801658 <putc>
87801af0:	7afb      	ldrb	r3, [r7, #11]
87801af2:	2b0d      	cmp	r3, #13
87801af4:	d002      	beq.n	87801afc <scanf+0x28>
87801af6:	7afb      	ldrb	r3, [r7, #11]
87801af8:	2b0a      	cmp	r3, #10
87801afa:	d108      	bne.n	87801b0e <scanf+0x3a>
87801afc:	f64c 7304 	movw	r3, #52996	; 0xcf04
87801b00:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801b04:	68fa      	ldr	r2, [r7, #12]
87801b06:	4413      	add	r3, r2
87801b08:	2200      	movs	r2, #0
87801b0a:	701a      	strb	r2, [r3, #0]
87801b0c:	e009      	b.n	87801b22 <scanf+0x4e>
87801b0e:	68fa      	ldr	r2, [r7, #12]
87801b10:	1c53      	adds	r3, r2, #1
87801b12:	60fb      	str	r3, [r7, #12]
87801b14:	f64c 7304 	movw	r3, #52996	; 0xcf04
87801b18:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801b1c:	7af9      	ldrb	r1, [r7, #11]
87801b1e:	5499      	strb	r1, [r3, r2]
87801b20:	e7de      	b.n	87801ae0 <scanf+0xc>
87801b22:	f107 031c 	add.w	r3, r7, #28
87801b26:	607b      	str	r3, [r7, #4]
87801b28:	69bb      	ldr	r3, [r7, #24]
87801b2a:	687a      	ldr	r2, [r7, #4]
87801b2c:	4619      	mov	r1, r3
87801b2e:	f64c 7004 	movw	r0, #52996	; 0xcf04
87801b32:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801b36:	f001 fc79 	bl	8780342c <vsscanf>
87801b3a:	60f8      	str	r0, [r7, #12]
87801b3c:	68fb      	ldr	r3, [r7, #12]
87801b3e:	4618      	mov	r0, r3
87801b40:	3710      	adds	r7, #16
87801b42:	46bd      	mov	sp, r7
87801b44:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87801b48:	b004      	add	sp, #16
87801b4a:	4770      	bx	lr

87801b4c <__tolower>:
87801b4c:	b480      	push	{r7}
87801b4e:	b083      	sub	sp, #12
87801b50:	af00      	add	r7, sp, #0
87801b52:	4603      	mov	r3, r0
87801b54:	71fb      	strb	r3, [r7, #7]
87801b56:	79fa      	ldrb	r2, [r7, #7]
87801b58:	f24c 4344 	movw	r3, #50244	; 0xc444
87801b5c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801b60:	5c9b      	ldrb	r3, [r3, r2]
87801b62:	f003 0301 	and.w	r3, r3, #1
87801b66:	2b00      	cmp	r3, #0
87801b68:	d002      	beq.n	87801b70 <__tolower+0x24>
87801b6a:	79fb      	ldrb	r3, [r7, #7]
87801b6c:	3320      	adds	r3, #32
87801b6e:	71fb      	strb	r3, [r7, #7]
87801b70:	79fb      	ldrb	r3, [r7, #7]
87801b72:	4618      	mov	r0, r3
87801b74:	370c      	adds	r7, #12
87801b76:	46bd      	mov	sp, r7
87801b78:	f85d 7b04 	ldr.w	r7, [sp], #4
87801b7c:	4770      	bx	lr
87801b7e:	bf00      	nop

87801b80 <strnicmp>:
87801b80:	b580      	push	{r7, lr}
87801b82:	b086      	sub	sp, #24
87801b84:	af00      	add	r7, sp, #0
87801b86:	60f8      	str	r0, [r7, #12]
87801b88:	60b9      	str	r1, [r7, #8]
87801b8a:	607a      	str	r2, [r7, #4]
87801b8c:	2300      	movs	r3, #0
87801b8e:	75fb      	strb	r3, [r7, #23]
87801b90:	2300      	movs	r3, #0
87801b92:	75bb      	strb	r3, [r7, #22]
87801b94:	687b      	ldr	r3, [r7, #4]
87801b96:	2b00      	cmp	r3, #0
87801b98:	d02f      	beq.n	87801bfa <strnicmp+0x7a>
87801b9a:	68fb      	ldr	r3, [r7, #12]
87801b9c:	781b      	ldrb	r3, [r3, #0]
87801b9e:	75fb      	strb	r3, [r7, #23]
87801ba0:	68bb      	ldr	r3, [r7, #8]
87801ba2:	781b      	ldrb	r3, [r3, #0]
87801ba4:	75bb      	strb	r3, [r7, #22]
87801ba6:	68fb      	ldr	r3, [r7, #12]
87801ba8:	3301      	adds	r3, #1
87801baa:	60fb      	str	r3, [r7, #12]
87801bac:	68bb      	ldr	r3, [r7, #8]
87801bae:	3301      	adds	r3, #1
87801bb0:	60bb      	str	r3, [r7, #8]
87801bb2:	7dfb      	ldrb	r3, [r7, #23]
87801bb4:	2b00      	cmp	r3, #0
87801bb6:	d100      	bne.n	87801bba <strnicmp+0x3a>
87801bb8:	e01f      	b.n	87801bfa <strnicmp+0x7a>
87801bba:	7dbb      	ldrb	r3, [r7, #22]
87801bbc:	2b00      	cmp	r3, #0
87801bbe:	d100      	bne.n	87801bc2 <strnicmp+0x42>
87801bc0:	e01b      	b.n	87801bfa <strnicmp+0x7a>
87801bc2:	7dfa      	ldrb	r2, [r7, #23]
87801bc4:	7dbb      	ldrb	r3, [r7, #22]
87801bc6:	429a      	cmp	r2, r3
87801bc8:	d100      	bne.n	87801bcc <strnicmp+0x4c>
87801bca:	e010      	b.n	87801bee <strnicmp+0x6e>
87801bcc:	7dfb      	ldrb	r3, [r7, #23]
87801bce:	4618      	mov	r0, r3
87801bd0:	f7ff ffbc 	bl	87801b4c <__tolower>
87801bd4:	4603      	mov	r3, r0
87801bd6:	75fb      	strb	r3, [r7, #23]
87801bd8:	7dbb      	ldrb	r3, [r7, #22]
87801bda:	4618      	mov	r0, r3
87801bdc:	f7ff ffb6 	bl	87801b4c <__tolower>
87801be0:	4603      	mov	r3, r0
87801be2:	75bb      	strb	r3, [r7, #22]
87801be4:	7dfa      	ldrb	r2, [r7, #23]
87801be6:	7dbb      	ldrb	r3, [r7, #22]
87801be8:	429a      	cmp	r2, r3
87801bea:	d000      	beq.n	87801bee <strnicmp+0x6e>
87801bec:	e005      	b.n	87801bfa <strnicmp+0x7a>
87801bee:	687b      	ldr	r3, [r7, #4]
87801bf0:	3b01      	subs	r3, #1
87801bf2:	607b      	str	r3, [r7, #4]
87801bf4:	687b      	ldr	r3, [r7, #4]
87801bf6:	2b00      	cmp	r3, #0
87801bf8:	d1cf      	bne.n	87801b9a <strnicmp+0x1a>
87801bfa:	7dfa      	ldrb	r2, [r7, #23]
87801bfc:	7dbb      	ldrb	r3, [r7, #22]
87801bfe:	1ad3      	subs	r3, r2, r3
87801c00:	4618      	mov	r0, r3
87801c02:	3718      	adds	r7, #24
87801c04:	46bd      	mov	sp, r7
87801c06:	bd80      	pop	{r7, pc}

87801c08 <strcpy>:
87801c08:	b480      	push	{r7}
87801c0a:	b085      	sub	sp, #20
87801c0c:	af00      	add	r7, sp, #0
87801c0e:	6078      	str	r0, [r7, #4]
87801c10:	6039      	str	r1, [r7, #0]
87801c12:	687b      	ldr	r3, [r7, #4]
87801c14:	60fb      	str	r3, [r7, #12]
87801c16:	bf00      	nop
87801c18:	687b      	ldr	r3, [r7, #4]
87801c1a:	1c5a      	adds	r2, r3, #1
87801c1c:	607a      	str	r2, [r7, #4]
87801c1e:	683a      	ldr	r2, [r7, #0]
87801c20:	1c51      	adds	r1, r2, #1
87801c22:	6039      	str	r1, [r7, #0]
87801c24:	7812      	ldrb	r2, [r2, #0]
87801c26:	701a      	strb	r2, [r3, #0]
87801c28:	781b      	ldrb	r3, [r3, #0]
87801c2a:	2b00      	cmp	r3, #0
87801c2c:	d1f4      	bne.n	87801c18 <strcpy+0x10>
87801c2e:	68fb      	ldr	r3, [r7, #12]
87801c30:	4618      	mov	r0, r3
87801c32:	3714      	adds	r7, #20
87801c34:	46bd      	mov	sp, r7
87801c36:	f85d 7b04 	ldr.w	r7, [sp], #4
87801c3a:	4770      	bx	lr

87801c3c <strncpy>:
87801c3c:	b480      	push	{r7}
87801c3e:	b087      	sub	sp, #28
87801c40:	af00      	add	r7, sp, #0
87801c42:	60f8      	str	r0, [r7, #12]
87801c44:	60b9      	str	r1, [r7, #8]
87801c46:	607a      	str	r2, [r7, #4]
87801c48:	68fb      	ldr	r3, [r7, #12]
87801c4a:	617b      	str	r3, [r7, #20]
87801c4c:	bf00      	nop
87801c4e:	687b      	ldr	r3, [r7, #4]
87801c50:	1e5a      	subs	r2, r3, #1
87801c52:	607a      	str	r2, [r7, #4]
87801c54:	2b00      	cmp	r3, #0
87801c56:	d00a      	beq.n	87801c6e <strncpy+0x32>
87801c58:	68fb      	ldr	r3, [r7, #12]
87801c5a:	1c5a      	adds	r2, r3, #1
87801c5c:	60fa      	str	r2, [r7, #12]
87801c5e:	68ba      	ldr	r2, [r7, #8]
87801c60:	1c51      	adds	r1, r2, #1
87801c62:	60b9      	str	r1, [r7, #8]
87801c64:	7812      	ldrb	r2, [r2, #0]
87801c66:	701a      	strb	r2, [r3, #0]
87801c68:	781b      	ldrb	r3, [r3, #0]
87801c6a:	2b00      	cmp	r3, #0
87801c6c:	d1ef      	bne.n	87801c4e <strncpy+0x12>
87801c6e:	697b      	ldr	r3, [r7, #20]
87801c70:	4618      	mov	r0, r3
87801c72:	371c      	adds	r7, #28
87801c74:	46bd      	mov	sp, r7
87801c76:	f85d 7b04 	ldr.w	r7, [sp], #4
87801c7a:	4770      	bx	lr

87801c7c <strcat>:
87801c7c:	b480      	push	{r7}
87801c7e:	b085      	sub	sp, #20
87801c80:	af00      	add	r7, sp, #0
87801c82:	6078      	str	r0, [r7, #4]
87801c84:	6039      	str	r1, [r7, #0]
87801c86:	687b      	ldr	r3, [r7, #4]
87801c88:	60fb      	str	r3, [r7, #12]
87801c8a:	e002      	b.n	87801c92 <strcat+0x16>
87801c8c:	687b      	ldr	r3, [r7, #4]
87801c8e:	3301      	adds	r3, #1
87801c90:	607b      	str	r3, [r7, #4]
87801c92:	687b      	ldr	r3, [r7, #4]
87801c94:	781b      	ldrb	r3, [r3, #0]
87801c96:	2b00      	cmp	r3, #0
87801c98:	d1f8      	bne.n	87801c8c <strcat+0x10>
87801c9a:	bf00      	nop
87801c9c:	687b      	ldr	r3, [r7, #4]
87801c9e:	1c5a      	adds	r2, r3, #1
87801ca0:	607a      	str	r2, [r7, #4]
87801ca2:	683a      	ldr	r2, [r7, #0]
87801ca4:	1c51      	adds	r1, r2, #1
87801ca6:	6039      	str	r1, [r7, #0]
87801ca8:	7812      	ldrb	r2, [r2, #0]
87801caa:	701a      	strb	r2, [r3, #0]
87801cac:	781b      	ldrb	r3, [r3, #0]
87801cae:	2b00      	cmp	r3, #0
87801cb0:	d1f4      	bne.n	87801c9c <strcat+0x20>
87801cb2:	68fb      	ldr	r3, [r7, #12]
87801cb4:	4618      	mov	r0, r3
87801cb6:	3714      	adds	r7, #20
87801cb8:	46bd      	mov	sp, r7
87801cba:	f85d 7b04 	ldr.w	r7, [sp], #4
87801cbe:	4770      	bx	lr

87801cc0 <strncat>:
87801cc0:	b480      	push	{r7}
87801cc2:	b087      	sub	sp, #28
87801cc4:	af00      	add	r7, sp, #0
87801cc6:	60f8      	str	r0, [r7, #12]
87801cc8:	60b9      	str	r1, [r7, #8]
87801cca:	607a      	str	r2, [r7, #4]
87801ccc:	68fb      	ldr	r3, [r7, #12]
87801cce:	617b      	str	r3, [r7, #20]
87801cd0:	687b      	ldr	r3, [r7, #4]
87801cd2:	2b00      	cmp	r3, #0
87801cd4:	d01d      	beq.n	87801d12 <strncat+0x52>
87801cd6:	e002      	b.n	87801cde <strncat+0x1e>
87801cd8:	68fb      	ldr	r3, [r7, #12]
87801cda:	3301      	adds	r3, #1
87801cdc:	60fb      	str	r3, [r7, #12]
87801cde:	68fb      	ldr	r3, [r7, #12]
87801ce0:	781b      	ldrb	r3, [r3, #0]
87801ce2:	2b00      	cmp	r3, #0
87801ce4:	d1f8      	bne.n	87801cd8 <strncat+0x18>
87801ce6:	e009      	b.n	87801cfc <strncat+0x3c>
87801ce8:	687b      	ldr	r3, [r7, #4]
87801cea:	3b01      	subs	r3, #1
87801cec:	607b      	str	r3, [r7, #4]
87801cee:	687b      	ldr	r3, [r7, #4]
87801cf0:	2b00      	cmp	r3, #0
87801cf2:	d103      	bne.n	87801cfc <strncat+0x3c>
87801cf4:	68fb      	ldr	r3, [r7, #12]
87801cf6:	2200      	movs	r2, #0
87801cf8:	701a      	strb	r2, [r3, #0]
87801cfa:	e00a      	b.n	87801d12 <strncat+0x52>
87801cfc:	68fb      	ldr	r3, [r7, #12]
87801cfe:	1c5a      	adds	r2, r3, #1
87801d00:	60fa      	str	r2, [r7, #12]
87801d02:	68ba      	ldr	r2, [r7, #8]
87801d04:	1c51      	adds	r1, r2, #1
87801d06:	60b9      	str	r1, [r7, #8]
87801d08:	7812      	ldrb	r2, [r2, #0]
87801d0a:	701a      	strb	r2, [r3, #0]
87801d0c:	781b      	ldrb	r3, [r3, #0]
87801d0e:	2b00      	cmp	r3, #0
87801d10:	d1ea      	bne.n	87801ce8 <strncat+0x28>
87801d12:	697b      	ldr	r3, [r7, #20]
87801d14:	4618      	mov	r0, r3
87801d16:	371c      	adds	r7, #28
87801d18:	46bd      	mov	sp, r7
87801d1a:	f85d 7b04 	ldr.w	r7, [sp], #4
87801d1e:	4770      	bx	lr

87801d20 <strcmp>:
87801d20:	b490      	push	{r4, r7}
87801d22:	b082      	sub	sp, #8
87801d24:	af00      	add	r7, sp, #0
87801d26:	6078      	str	r0, [r7, #4]
87801d28:	6039      	str	r1, [r7, #0]
87801d2a:	687b      	ldr	r3, [r7, #4]
87801d2c:	781a      	ldrb	r2, [r3, #0]
87801d2e:	683b      	ldr	r3, [r7, #0]
87801d30:	1c59      	adds	r1, r3, #1
87801d32:	6039      	str	r1, [r7, #0]
87801d34:	781b      	ldrb	r3, [r3, #0]
87801d36:	1ad3      	subs	r3, r2, r3
87801d38:	b2db      	uxtb	r3, r3
87801d3a:	b2dc      	uxtb	r4, r3
87801d3c:	2c00      	cmp	r4, #0
87801d3e:	d106      	bne.n	87801d4e <strcmp+0x2e>
87801d40:	687b      	ldr	r3, [r7, #4]
87801d42:	1c5a      	adds	r2, r3, #1
87801d44:	607a      	str	r2, [r7, #4]
87801d46:	781b      	ldrb	r3, [r3, #0]
87801d48:	2b00      	cmp	r3, #0
87801d4a:	d000      	beq.n	87801d4e <strcmp+0x2e>
87801d4c:	e7ed      	b.n	87801d2a <strcmp+0xa>
87801d4e:	b263      	sxtb	r3, r4
87801d50:	4618      	mov	r0, r3
87801d52:	3708      	adds	r7, #8
87801d54:	46bd      	mov	sp, r7
87801d56:	bc90      	pop	{r4, r7}
87801d58:	4770      	bx	lr
87801d5a:	bf00      	nop

87801d5c <strncmp>:
87801d5c:	b490      	push	{r4, r7}
87801d5e:	b084      	sub	sp, #16
87801d60:	af00      	add	r7, sp, #0
87801d62:	60f8      	str	r0, [r7, #12]
87801d64:	60b9      	str	r1, [r7, #8]
87801d66:	607a      	str	r2, [r7, #4]
87801d68:	2400      	movs	r4, #0
87801d6a:	e013      	b.n	87801d94 <strncmp+0x38>
87801d6c:	68fb      	ldr	r3, [r7, #12]
87801d6e:	781a      	ldrb	r2, [r3, #0]
87801d70:	68bb      	ldr	r3, [r7, #8]
87801d72:	1c59      	adds	r1, r3, #1
87801d74:	60b9      	str	r1, [r7, #8]
87801d76:	781b      	ldrb	r3, [r3, #0]
87801d78:	1ad3      	subs	r3, r2, r3
87801d7a:	b2db      	uxtb	r3, r3
87801d7c:	b2dc      	uxtb	r4, r3
87801d7e:	2c00      	cmp	r4, #0
87801d80:	d10b      	bne.n	87801d9a <strncmp+0x3e>
87801d82:	68fb      	ldr	r3, [r7, #12]
87801d84:	1c5a      	adds	r2, r3, #1
87801d86:	60fa      	str	r2, [r7, #12]
87801d88:	781b      	ldrb	r3, [r3, #0]
87801d8a:	2b00      	cmp	r3, #0
87801d8c:	d005      	beq.n	87801d9a <strncmp+0x3e>
87801d8e:	687b      	ldr	r3, [r7, #4]
87801d90:	3b01      	subs	r3, #1
87801d92:	607b      	str	r3, [r7, #4]
87801d94:	687b      	ldr	r3, [r7, #4]
87801d96:	2b00      	cmp	r3, #0
87801d98:	d1e8      	bne.n	87801d6c <strncmp+0x10>
87801d9a:	b263      	sxtb	r3, r4
87801d9c:	4618      	mov	r0, r3
87801d9e:	3710      	adds	r7, #16
87801da0:	46bd      	mov	sp, r7
87801da2:	bc90      	pop	{r4, r7}
87801da4:	4770      	bx	lr
87801da6:	bf00      	nop

87801da8 <strchr>:
87801da8:	b480      	push	{r7}
87801daa:	b083      	sub	sp, #12
87801dac:	af00      	add	r7, sp, #0
87801dae:	6078      	str	r0, [r7, #4]
87801db0:	6039      	str	r1, [r7, #0]
87801db2:	e008      	b.n	87801dc6 <strchr+0x1e>
87801db4:	687b      	ldr	r3, [r7, #4]
87801db6:	781b      	ldrb	r3, [r3, #0]
87801db8:	2b00      	cmp	r3, #0
87801dba:	d101      	bne.n	87801dc0 <strchr+0x18>
87801dbc:	2300      	movs	r3, #0
87801dbe:	e009      	b.n	87801dd4 <strchr+0x2c>
87801dc0:	687b      	ldr	r3, [r7, #4]
87801dc2:	3301      	adds	r3, #1
87801dc4:	607b      	str	r3, [r7, #4]
87801dc6:	687b      	ldr	r3, [r7, #4]
87801dc8:	781a      	ldrb	r2, [r3, #0]
87801dca:	683b      	ldr	r3, [r7, #0]
87801dcc:	b2db      	uxtb	r3, r3
87801dce:	429a      	cmp	r2, r3
87801dd0:	d1f0      	bne.n	87801db4 <strchr+0xc>
87801dd2:	687b      	ldr	r3, [r7, #4]
87801dd4:	4618      	mov	r0, r3
87801dd6:	370c      	adds	r7, #12
87801dd8:	46bd      	mov	sp, r7
87801dda:	f85d 7b04 	ldr.w	r7, [sp], #4
87801dde:	4770      	bx	lr

87801de0 <strrchr>:
87801de0:	b580      	push	{r7, lr}
87801de2:	b084      	sub	sp, #16
87801de4:	af00      	add	r7, sp, #0
87801de6:	6078      	str	r0, [r7, #4]
87801de8:	6039      	str	r1, [r7, #0]
87801dea:	6878      	ldr	r0, [r7, #4]
87801dec:	f000 f818 	bl	87801e20 <strlen>
87801df0:	4602      	mov	r2, r0
87801df2:	687b      	ldr	r3, [r7, #4]
87801df4:	4413      	add	r3, r2
87801df6:	60fb      	str	r3, [r7, #12]
87801df8:	68fb      	ldr	r3, [r7, #12]
87801dfa:	781a      	ldrb	r2, [r3, #0]
87801dfc:	683b      	ldr	r3, [r7, #0]
87801dfe:	b2db      	uxtb	r3, r3
87801e00:	429a      	cmp	r2, r3
87801e02:	d101      	bne.n	87801e08 <strrchr+0x28>
87801e04:	68fb      	ldr	r3, [r7, #12]
87801e06:	e007      	b.n	87801e18 <strrchr+0x38>
87801e08:	68fb      	ldr	r3, [r7, #12]
87801e0a:	3b01      	subs	r3, #1
87801e0c:	60fb      	str	r3, [r7, #12]
87801e0e:	68fa      	ldr	r2, [r7, #12]
87801e10:	687b      	ldr	r3, [r7, #4]
87801e12:	429a      	cmp	r2, r3
87801e14:	d2f0      	bcs.n	87801df8 <strrchr+0x18>
87801e16:	2300      	movs	r3, #0
87801e18:	4618      	mov	r0, r3
87801e1a:	3710      	adds	r7, #16
87801e1c:	46bd      	mov	sp, r7
87801e1e:	bd80      	pop	{r7, pc}

87801e20 <strlen>:
87801e20:	b480      	push	{r7}
87801e22:	b085      	sub	sp, #20
87801e24:	af00      	add	r7, sp, #0
87801e26:	6078      	str	r0, [r7, #4]
87801e28:	687b      	ldr	r3, [r7, #4]
87801e2a:	60fb      	str	r3, [r7, #12]
87801e2c:	e002      	b.n	87801e34 <strlen+0x14>
87801e2e:	68fb      	ldr	r3, [r7, #12]
87801e30:	3301      	adds	r3, #1
87801e32:	60fb      	str	r3, [r7, #12]
87801e34:	68fb      	ldr	r3, [r7, #12]
87801e36:	781b      	ldrb	r3, [r3, #0]
87801e38:	2b00      	cmp	r3, #0
87801e3a:	d1f8      	bne.n	87801e2e <strlen+0xe>
87801e3c:	68fa      	ldr	r2, [r7, #12]
87801e3e:	687b      	ldr	r3, [r7, #4]
87801e40:	1ad3      	subs	r3, r2, r3
87801e42:	4618      	mov	r0, r3
87801e44:	3714      	adds	r7, #20
87801e46:	46bd      	mov	sp, r7
87801e48:	f85d 7b04 	ldr.w	r7, [sp], #4
87801e4c:	4770      	bx	lr
87801e4e:	bf00      	nop

87801e50 <strnlen>:
87801e50:	b480      	push	{r7}
87801e52:	b085      	sub	sp, #20
87801e54:	af00      	add	r7, sp, #0
87801e56:	6078      	str	r0, [r7, #4]
87801e58:	6039      	str	r1, [r7, #0]
87801e5a:	687b      	ldr	r3, [r7, #4]
87801e5c:	60fb      	str	r3, [r7, #12]
87801e5e:	e002      	b.n	87801e66 <strnlen+0x16>
87801e60:	68fb      	ldr	r3, [r7, #12]
87801e62:	3301      	adds	r3, #1
87801e64:	60fb      	str	r3, [r7, #12]
87801e66:	683b      	ldr	r3, [r7, #0]
87801e68:	1e5a      	subs	r2, r3, #1
87801e6a:	603a      	str	r2, [r7, #0]
87801e6c:	2b00      	cmp	r3, #0
87801e6e:	d003      	beq.n	87801e78 <strnlen+0x28>
87801e70:	68fb      	ldr	r3, [r7, #12]
87801e72:	781b      	ldrb	r3, [r3, #0]
87801e74:	2b00      	cmp	r3, #0
87801e76:	d1f3      	bne.n	87801e60 <strnlen+0x10>
87801e78:	68fa      	ldr	r2, [r7, #12]
87801e7a:	687b      	ldr	r3, [r7, #4]
87801e7c:	1ad3      	subs	r3, r2, r3
87801e7e:	4618      	mov	r0, r3
87801e80:	3714      	adds	r7, #20
87801e82:	46bd      	mov	sp, r7
87801e84:	f85d 7b04 	ldr.w	r7, [sp], #4
87801e88:	4770      	bx	lr
87801e8a:	bf00      	nop

87801e8c <strspn>:
87801e8c:	b480      	push	{r7}
87801e8e:	b087      	sub	sp, #28
87801e90:	af00      	add	r7, sp, #0
87801e92:	6078      	str	r0, [r7, #4]
87801e94:	6039      	str	r1, [r7, #0]
87801e96:	2300      	movs	r3, #0
87801e98:	60fb      	str	r3, [r7, #12]
87801e9a:	687b      	ldr	r3, [r7, #4]
87801e9c:	617b      	str	r3, [r7, #20]
87801e9e:	e01c      	b.n	87801eda <strspn+0x4e>
87801ea0:	683b      	ldr	r3, [r7, #0]
87801ea2:	613b      	str	r3, [r7, #16]
87801ea4:	e009      	b.n	87801eba <strspn+0x2e>
87801ea6:	697b      	ldr	r3, [r7, #20]
87801ea8:	781a      	ldrb	r2, [r3, #0]
87801eaa:	693b      	ldr	r3, [r7, #16]
87801eac:	781b      	ldrb	r3, [r3, #0]
87801eae:	429a      	cmp	r2, r3
87801eb0:	d100      	bne.n	87801eb4 <strspn+0x28>
87801eb2:	e006      	b.n	87801ec2 <strspn+0x36>
87801eb4:	693b      	ldr	r3, [r7, #16]
87801eb6:	3301      	adds	r3, #1
87801eb8:	613b      	str	r3, [r7, #16]
87801eba:	693b      	ldr	r3, [r7, #16]
87801ebc:	781b      	ldrb	r3, [r3, #0]
87801ebe:	2b00      	cmp	r3, #0
87801ec0:	d1f1      	bne.n	87801ea6 <strspn+0x1a>
87801ec2:	693b      	ldr	r3, [r7, #16]
87801ec4:	781b      	ldrb	r3, [r3, #0]
87801ec6:	2b00      	cmp	r3, #0
87801ec8:	d101      	bne.n	87801ece <strspn+0x42>
87801eca:	68fb      	ldr	r3, [r7, #12]
87801ecc:	e00a      	b.n	87801ee4 <strspn+0x58>
87801ece:	68fb      	ldr	r3, [r7, #12]
87801ed0:	3301      	adds	r3, #1
87801ed2:	60fb      	str	r3, [r7, #12]
87801ed4:	697b      	ldr	r3, [r7, #20]
87801ed6:	3301      	adds	r3, #1
87801ed8:	617b      	str	r3, [r7, #20]
87801eda:	697b      	ldr	r3, [r7, #20]
87801edc:	781b      	ldrb	r3, [r3, #0]
87801ede:	2b00      	cmp	r3, #0
87801ee0:	d1de      	bne.n	87801ea0 <strspn+0x14>
87801ee2:	68fb      	ldr	r3, [r7, #12]
87801ee4:	4618      	mov	r0, r3
87801ee6:	371c      	adds	r7, #28
87801ee8:	46bd      	mov	sp, r7
87801eea:	f85d 7b04 	ldr.w	r7, [sp], #4
87801eee:	4770      	bx	lr

87801ef0 <strpbrk>:
87801ef0:	b480      	push	{r7}
87801ef2:	b085      	sub	sp, #20
87801ef4:	af00      	add	r7, sp, #0
87801ef6:	6078      	str	r0, [r7, #4]
87801ef8:	6039      	str	r1, [r7, #0]
87801efa:	687b      	ldr	r3, [r7, #4]
87801efc:	60fb      	str	r3, [r7, #12]
87801efe:	e014      	b.n	87801f2a <strpbrk+0x3a>
87801f00:	683b      	ldr	r3, [r7, #0]
87801f02:	60bb      	str	r3, [r7, #8]
87801f04:	e00a      	b.n	87801f1c <strpbrk+0x2c>
87801f06:	68fb      	ldr	r3, [r7, #12]
87801f08:	781a      	ldrb	r2, [r3, #0]
87801f0a:	68bb      	ldr	r3, [r7, #8]
87801f0c:	781b      	ldrb	r3, [r3, #0]
87801f0e:	429a      	cmp	r2, r3
87801f10:	d101      	bne.n	87801f16 <strpbrk+0x26>
87801f12:	68fb      	ldr	r3, [r7, #12]
87801f14:	e00e      	b.n	87801f34 <strpbrk+0x44>
87801f16:	68bb      	ldr	r3, [r7, #8]
87801f18:	3301      	adds	r3, #1
87801f1a:	60bb      	str	r3, [r7, #8]
87801f1c:	68bb      	ldr	r3, [r7, #8]
87801f1e:	781b      	ldrb	r3, [r3, #0]
87801f20:	2b00      	cmp	r3, #0
87801f22:	d1f0      	bne.n	87801f06 <strpbrk+0x16>
87801f24:	68fb      	ldr	r3, [r7, #12]
87801f26:	3301      	adds	r3, #1
87801f28:	60fb      	str	r3, [r7, #12]
87801f2a:	68fb      	ldr	r3, [r7, #12]
87801f2c:	781b      	ldrb	r3, [r3, #0]
87801f2e:	2b00      	cmp	r3, #0
87801f30:	d1e6      	bne.n	87801f00 <strpbrk+0x10>
87801f32:	2300      	movs	r3, #0
87801f34:	4618      	mov	r0, r3
87801f36:	3714      	adds	r7, #20
87801f38:	46bd      	mov	sp, r7
87801f3a:	f85d 7b04 	ldr.w	r7, [sp], #4
87801f3e:	4770      	bx	lr

87801f40 <strtok>:
87801f40:	b580      	push	{r7, lr}
87801f42:	b084      	sub	sp, #16
87801f44:	af00      	add	r7, sp, #0
87801f46:	6078      	str	r0, [r7, #4]
87801f48:	6039      	str	r1, [r7, #0]
87801f4a:	687b      	ldr	r3, [r7, #4]
87801f4c:	2b00      	cmp	r3, #0
87801f4e:	d001      	beq.n	87801f54 <strtok+0x14>
87801f50:	687b      	ldr	r3, [r7, #4]
87801f52:	e004      	b.n	87801f5e <strtok+0x1e>
87801f54:	f24d 3304 	movw	r3, #54020	; 0xd304
87801f58:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801f5c:	681b      	ldr	r3, [r3, #0]
87801f5e:	60bb      	str	r3, [r7, #8]
87801f60:	68bb      	ldr	r3, [r7, #8]
87801f62:	2b00      	cmp	r3, #0
87801f64:	d101      	bne.n	87801f6a <strtok+0x2a>
87801f66:	2300      	movs	r3, #0
87801f68:	e02b      	b.n	87801fc2 <strtok+0x82>
87801f6a:	6839      	ldr	r1, [r7, #0]
87801f6c:	68b8      	ldr	r0, [r7, #8]
87801f6e:	f7ff ff8d 	bl	87801e8c <strspn>
87801f72:	4602      	mov	r2, r0
87801f74:	68bb      	ldr	r3, [r7, #8]
87801f76:	4413      	add	r3, r2
87801f78:	60bb      	str	r3, [r7, #8]
87801f7a:	68bb      	ldr	r3, [r7, #8]
87801f7c:	781b      	ldrb	r3, [r3, #0]
87801f7e:	2b00      	cmp	r3, #0
87801f80:	d107      	bne.n	87801f92 <strtok+0x52>
87801f82:	f24d 3304 	movw	r3, #54020	; 0xd304
87801f86:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801f8a:	2200      	movs	r2, #0
87801f8c:	601a      	str	r2, [r3, #0]
87801f8e:	2300      	movs	r3, #0
87801f90:	e017      	b.n	87801fc2 <strtok+0x82>
87801f92:	6839      	ldr	r1, [r7, #0]
87801f94:	68b8      	ldr	r0, [r7, #8]
87801f96:	f7ff ffab 	bl	87801ef0 <strpbrk>
87801f9a:	60f8      	str	r0, [r7, #12]
87801f9c:	68fb      	ldr	r3, [r7, #12]
87801f9e:	2b00      	cmp	r3, #0
87801fa0:	d008      	beq.n	87801fb4 <strtok+0x74>
87801fa2:	68fb      	ldr	r3, [r7, #12]
87801fa4:	781b      	ldrb	r3, [r3, #0]
87801fa6:	2b00      	cmp	r3, #0
87801fa8:	d004      	beq.n	87801fb4 <strtok+0x74>
87801faa:	68fb      	ldr	r3, [r7, #12]
87801fac:	1c5a      	adds	r2, r3, #1
87801fae:	60fa      	str	r2, [r7, #12]
87801fb0:	2200      	movs	r2, #0
87801fb2:	701a      	strb	r2, [r3, #0]
87801fb4:	f24d 3304 	movw	r3, #54020	; 0xd304
87801fb8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801fbc:	68fa      	ldr	r2, [r7, #12]
87801fbe:	601a      	str	r2, [r3, #0]
87801fc0:	68bb      	ldr	r3, [r7, #8]
87801fc2:	4618      	mov	r0, r3
87801fc4:	3710      	adds	r7, #16
87801fc6:	46bd      	mov	sp, r7
87801fc8:	bd80      	pop	{r7, pc}
87801fca:	bf00      	nop

87801fcc <strsep>:
87801fcc:	b580      	push	{r7, lr}
87801fce:	b084      	sub	sp, #16
87801fd0:	af00      	add	r7, sp, #0
87801fd2:	6078      	str	r0, [r7, #4]
87801fd4:	6039      	str	r1, [r7, #0]
87801fd6:	687b      	ldr	r3, [r7, #4]
87801fd8:	681b      	ldr	r3, [r3, #0]
87801fda:	60bb      	str	r3, [r7, #8]
87801fdc:	68bb      	ldr	r3, [r7, #8]
87801fde:	2b00      	cmp	r3, #0
87801fe0:	d101      	bne.n	87801fe6 <strsep+0x1a>
87801fe2:	2300      	movs	r3, #0
87801fe4:	e010      	b.n	87802008 <strsep+0x3c>
87801fe6:	6839      	ldr	r1, [r7, #0]
87801fe8:	68b8      	ldr	r0, [r7, #8]
87801fea:	f7ff ff81 	bl	87801ef0 <strpbrk>
87801fee:	60f8      	str	r0, [r7, #12]
87801ff0:	68fb      	ldr	r3, [r7, #12]
87801ff2:	2b00      	cmp	r3, #0
87801ff4:	d004      	beq.n	87802000 <strsep+0x34>
87801ff6:	68fb      	ldr	r3, [r7, #12]
87801ff8:	1c5a      	adds	r2, r3, #1
87801ffa:	60fa      	str	r2, [r7, #12]
87801ffc:	2200      	movs	r2, #0
87801ffe:	701a      	strb	r2, [r3, #0]
87802000:	687b      	ldr	r3, [r7, #4]
87802002:	68fa      	ldr	r2, [r7, #12]
87802004:	601a      	str	r2, [r3, #0]
87802006:	68bb      	ldr	r3, [r7, #8]
87802008:	4618      	mov	r0, r3
8780200a:	3710      	adds	r7, #16
8780200c:	46bd      	mov	sp, r7
8780200e:	bd80      	pop	{r7, pc}

87802010 <memset>:
87802010:	b480      	push	{r7}
87802012:	b087      	sub	sp, #28
87802014:	af00      	add	r7, sp, #0
87802016:	60f8      	str	r0, [r7, #12]
87802018:	60b9      	str	r1, [r7, #8]
8780201a:	607a      	str	r2, [r7, #4]
8780201c:	68fb      	ldr	r3, [r7, #12]
8780201e:	617b      	str	r3, [r7, #20]
87802020:	e005      	b.n	8780202e <memset+0x1e>
87802022:	697b      	ldr	r3, [r7, #20]
87802024:	1c5a      	adds	r2, r3, #1
87802026:	617a      	str	r2, [r7, #20]
87802028:	68ba      	ldr	r2, [r7, #8]
8780202a:	b2d2      	uxtb	r2, r2
8780202c:	701a      	strb	r2, [r3, #0]
8780202e:	687b      	ldr	r3, [r7, #4]
87802030:	1e5a      	subs	r2, r3, #1
87802032:	607a      	str	r2, [r7, #4]
87802034:	2b00      	cmp	r3, #0
87802036:	d1f4      	bne.n	87802022 <memset+0x12>
87802038:	68fb      	ldr	r3, [r7, #12]
8780203a:	4618      	mov	r0, r3
8780203c:	371c      	adds	r7, #28
8780203e:	46bd      	mov	sp, r7
87802040:	f85d 7b04 	ldr.w	r7, [sp], #4
87802044:	4770      	bx	lr
87802046:	bf00      	nop

87802048 <bcopy>:
87802048:	b480      	push	{r7}
8780204a:	b087      	sub	sp, #28
8780204c:	af00      	add	r7, sp, #0
8780204e:	60f8      	str	r0, [r7, #12]
87802050:	60b9      	str	r1, [r7, #8]
87802052:	607a      	str	r2, [r7, #4]
87802054:	68bb      	ldr	r3, [r7, #8]
87802056:	617b      	str	r3, [r7, #20]
87802058:	68fb      	ldr	r3, [r7, #12]
8780205a:	613b      	str	r3, [r7, #16]
8780205c:	e007      	b.n	8780206e <bcopy+0x26>
8780205e:	697b      	ldr	r3, [r7, #20]
87802060:	1c5a      	adds	r2, r3, #1
87802062:	617a      	str	r2, [r7, #20]
87802064:	693a      	ldr	r2, [r7, #16]
87802066:	1c51      	adds	r1, r2, #1
87802068:	6139      	str	r1, [r7, #16]
8780206a:	7812      	ldrb	r2, [r2, #0]
8780206c:	701a      	strb	r2, [r3, #0]
8780206e:	687b      	ldr	r3, [r7, #4]
87802070:	1e5a      	subs	r2, r3, #1
87802072:	607a      	str	r2, [r7, #4]
87802074:	2b00      	cmp	r3, #0
87802076:	d1f2      	bne.n	8780205e <bcopy+0x16>
87802078:	371c      	adds	r7, #28
8780207a:	46bd      	mov	sp, r7
8780207c:	f85d 7b04 	ldr.w	r7, [sp], #4
87802080:	4770      	bx	lr
87802082:	bf00      	nop

87802084 <memcpy>:
87802084:	b480      	push	{r7}
87802086:	b087      	sub	sp, #28
87802088:	af00      	add	r7, sp, #0
8780208a:	60f8      	str	r0, [r7, #12]
8780208c:	60b9      	str	r1, [r7, #8]
8780208e:	607a      	str	r2, [r7, #4]
87802090:	68fb      	ldr	r3, [r7, #12]
87802092:	617b      	str	r3, [r7, #20]
87802094:	68bb      	ldr	r3, [r7, #8]
87802096:	613b      	str	r3, [r7, #16]
87802098:	e007      	b.n	878020aa <memcpy+0x26>
8780209a:	697b      	ldr	r3, [r7, #20]
8780209c:	1c5a      	adds	r2, r3, #1
8780209e:	617a      	str	r2, [r7, #20]
878020a0:	693a      	ldr	r2, [r7, #16]
878020a2:	1c51      	adds	r1, r2, #1
878020a4:	6139      	str	r1, [r7, #16]
878020a6:	7812      	ldrb	r2, [r2, #0]
878020a8:	701a      	strb	r2, [r3, #0]
878020aa:	687b      	ldr	r3, [r7, #4]
878020ac:	1e5a      	subs	r2, r3, #1
878020ae:	607a      	str	r2, [r7, #4]
878020b0:	2b00      	cmp	r3, #0
878020b2:	d1f2      	bne.n	8780209a <memcpy+0x16>
878020b4:	68fb      	ldr	r3, [r7, #12]
878020b6:	4618      	mov	r0, r3
878020b8:	371c      	adds	r7, #28
878020ba:	46bd      	mov	sp, r7
878020bc:	f85d 7b04 	ldr.w	r7, [sp], #4
878020c0:	4770      	bx	lr
878020c2:	bf00      	nop

878020c4 <memmove>:
878020c4:	b480      	push	{r7}
878020c6:	b087      	sub	sp, #28
878020c8:	af00      	add	r7, sp, #0
878020ca:	60f8      	str	r0, [r7, #12]
878020cc:	60b9      	str	r1, [r7, #8]
878020ce:	607a      	str	r2, [r7, #4]
878020d0:	68fa      	ldr	r2, [r7, #12]
878020d2:	68bb      	ldr	r3, [r7, #8]
878020d4:	429a      	cmp	r2, r3
878020d6:	d812      	bhi.n	878020fe <memmove+0x3a>
878020d8:	68fb      	ldr	r3, [r7, #12]
878020da:	617b      	str	r3, [r7, #20]
878020dc:	68bb      	ldr	r3, [r7, #8]
878020de:	613b      	str	r3, [r7, #16]
878020e0:	e007      	b.n	878020f2 <memmove+0x2e>
878020e2:	697b      	ldr	r3, [r7, #20]
878020e4:	1c5a      	adds	r2, r3, #1
878020e6:	617a      	str	r2, [r7, #20]
878020e8:	693a      	ldr	r2, [r7, #16]
878020ea:	1c51      	adds	r1, r2, #1
878020ec:	6139      	str	r1, [r7, #16]
878020ee:	7812      	ldrb	r2, [r2, #0]
878020f0:	701a      	strb	r2, [r3, #0]
878020f2:	687b      	ldr	r3, [r7, #4]
878020f4:	1e5a      	subs	r2, r3, #1
878020f6:	607a      	str	r2, [r7, #4]
878020f8:	2b00      	cmp	r3, #0
878020fa:	d1f2      	bne.n	878020e2 <memmove+0x1e>
878020fc:	e017      	b.n	8780212e <memmove+0x6a>
878020fe:	68fa      	ldr	r2, [r7, #12]
87802100:	687b      	ldr	r3, [r7, #4]
87802102:	4413      	add	r3, r2
87802104:	617b      	str	r3, [r7, #20]
87802106:	68ba      	ldr	r2, [r7, #8]
87802108:	687b      	ldr	r3, [r7, #4]
8780210a:	4413      	add	r3, r2
8780210c:	613b      	str	r3, [r7, #16]
8780210e:	e009      	b.n	87802124 <memmove+0x60>
87802110:	697b      	ldr	r3, [r7, #20]
87802112:	3b01      	subs	r3, #1
87802114:	617b      	str	r3, [r7, #20]
87802116:	693b      	ldr	r3, [r7, #16]
87802118:	3b01      	subs	r3, #1
8780211a:	613b      	str	r3, [r7, #16]
8780211c:	693b      	ldr	r3, [r7, #16]
8780211e:	781a      	ldrb	r2, [r3, #0]
87802120:	697b      	ldr	r3, [r7, #20]
87802122:	701a      	strb	r2, [r3, #0]
87802124:	687b      	ldr	r3, [r7, #4]
87802126:	1e5a      	subs	r2, r3, #1
87802128:	607a      	str	r2, [r7, #4]
8780212a:	2b00      	cmp	r3, #0
8780212c:	d1f0      	bne.n	87802110 <memmove+0x4c>
8780212e:	68fb      	ldr	r3, [r7, #12]
87802130:	4618      	mov	r0, r3
87802132:	371c      	adds	r7, #28
87802134:	46bd      	mov	sp, r7
87802136:	f85d 7b04 	ldr.w	r7, [sp], #4
8780213a:	4770      	bx	lr

8780213c <memcmp>:
8780213c:	b480      	push	{r7}
8780213e:	b089      	sub	sp, #36	; 0x24
87802140:	af00      	add	r7, sp, #0
87802142:	60f8      	str	r0, [r7, #12]
87802144:	60b9      	str	r1, [r7, #8]
87802146:	607a      	str	r2, [r7, #4]
87802148:	2300      	movs	r3, #0
8780214a:	617b      	str	r3, [r7, #20]
8780214c:	68fb      	ldr	r3, [r7, #12]
8780214e:	61fb      	str	r3, [r7, #28]
87802150:	68bb      	ldr	r3, [r7, #8]
87802152:	61bb      	str	r3, [r7, #24]
87802154:	e013      	b.n	8780217e <memcmp+0x42>
87802156:	69fb      	ldr	r3, [r7, #28]
87802158:	781b      	ldrb	r3, [r3, #0]
8780215a:	461a      	mov	r2, r3
8780215c:	69bb      	ldr	r3, [r7, #24]
8780215e:	781b      	ldrb	r3, [r3, #0]
87802160:	1ad3      	subs	r3, r2, r3
87802162:	617b      	str	r3, [r7, #20]
87802164:	697b      	ldr	r3, [r7, #20]
87802166:	2b00      	cmp	r3, #0
87802168:	d000      	beq.n	8780216c <memcmp+0x30>
8780216a:	e00b      	b.n	87802184 <memcmp+0x48>
8780216c:	69fb      	ldr	r3, [r7, #28]
8780216e:	3301      	adds	r3, #1
87802170:	61fb      	str	r3, [r7, #28]
87802172:	69bb      	ldr	r3, [r7, #24]
87802174:	3301      	adds	r3, #1
87802176:	61bb      	str	r3, [r7, #24]
87802178:	687b      	ldr	r3, [r7, #4]
8780217a:	3b01      	subs	r3, #1
8780217c:	607b      	str	r3, [r7, #4]
8780217e:	687b      	ldr	r3, [r7, #4]
87802180:	2b00      	cmp	r3, #0
87802182:	d1e8      	bne.n	87802156 <memcmp+0x1a>
87802184:	697b      	ldr	r3, [r7, #20]
87802186:	4618      	mov	r0, r3
87802188:	3724      	adds	r7, #36	; 0x24
8780218a:	46bd      	mov	sp, r7
8780218c:	f85d 7b04 	ldr.w	r7, [sp], #4
87802190:	4770      	bx	lr
87802192:	bf00      	nop

87802194 <memscan>:
87802194:	b480      	push	{r7}
87802196:	b087      	sub	sp, #28
87802198:	af00      	add	r7, sp, #0
8780219a:	60f8      	str	r0, [r7, #12]
8780219c:	60b9      	str	r1, [r7, #8]
8780219e:	607a      	str	r2, [r7, #4]
878021a0:	68fb      	ldr	r3, [r7, #12]
878021a2:	617b      	str	r3, [r7, #20]
878021a4:	e00d      	b.n	878021c2 <memscan+0x2e>
878021a6:	697b      	ldr	r3, [r7, #20]
878021a8:	781b      	ldrb	r3, [r3, #0]
878021aa:	461a      	mov	r2, r3
878021ac:	68bb      	ldr	r3, [r7, #8]
878021ae:	429a      	cmp	r2, r3
878021b0:	d101      	bne.n	878021b6 <memscan+0x22>
878021b2:	697b      	ldr	r3, [r7, #20]
878021b4:	e009      	b.n	878021ca <memscan+0x36>
878021b6:	697b      	ldr	r3, [r7, #20]
878021b8:	3301      	adds	r3, #1
878021ba:	617b      	str	r3, [r7, #20]
878021bc:	687b      	ldr	r3, [r7, #4]
878021be:	3b01      	subs	r3, #1
878021c0:	607b      	str	r3, [r7, #4]
878021c2:	687b      	ldr	r3, [r7, #4]
878021c4:	2b00      	cmp	r3, #0
878021c6:	d1ee      	bne.n	878021a6 <memscan+0x12>
878021c8:	697b      	ldr	r3, [r7, #20]
878021ca:	4618      	mov	r0, r3
878021cc:	371c      	adds	r7, #28
878021ce:	46bd      	mov	sp, r7
878021d0:	f85d 7b04 	ldr.w	r7, [sp], #4
878021d4:	4770      	bx	lr
878021d6:	bf00      	nop

878021d8 <strstr>:
878021d8:	b580      	push	{r7, lr}
878021da:	b084      	sub	sp, #16
878021dc:	af00      	add	r7, sp, #0
878021de:	6078      	str	r0, [r7, #4]
878021e0:	6039      	str	r1, [r7, #0]
878021e2:	6838      	ldr	r0, [r7, #0]
878021e4:	f7ff fe1c 	bl	87801e20 <strlen>
878021e8:	4603      	mov	r3, r0
878021ea:	60bb      	str	r3, [r7, #8]
878021ec:	68bb      	ldr	r3, [r7, #8]
878021ee:	2b00      	cmp	r3, #0
878021f0:	d101      	bne.n	878021f6 <strstr+0x1e>
878021f2:	687b      	ldr	r3, [r7, #4]
878021f4:	e01b      	b.n	8780222e <strstr+0x56>
878021f6:	6878      	ldr	r0, [r7, #4]
878021f8:	f7ff fe12 	bl	87801e20 <strlen>
878021fc:	4603      	mov	r3, r0
878021fe:	60fb      	str	r3, [r7, #12]
87802200:	e010      	b.n	87802224 <strstr+0x4c>
87802202:	68fb      	ldr	r3, [r7, #12]
87802204:	3b01      	subs	r3, #1
87802206:	60fb      	str	r3, [r7, #12]
87802208:	68bb      	ldr	r3, [r7, #8]
8780220a:	461a      	mov	r2, r3
8780220c:	6839      	ldr	r1, [r7, #0]
8780220e:	6878      	ldr	r0, [r7, #4]
87802210:	f7ff ff94 	bl	8780213c <memcmp>
87802214:	4603      	mov	r3, r0
87802216:	2b00      	cmp	r3, #0
87802218:	d101      	bne.n	8780221e <strstr+0x46>
8780221a:	687b      	ldr	r3, [r7, #4]
8780221c:	e007      	b.n	8780222e <strstr+0x56>
8780221e:	687b      	ldr	r3, [r7, #4]
87802220:	3301      	adds	r3, #1
87802222:	607b      	str	r3, [r7, #4]
87802224:	68fa      	ldr	r2, [r7, #12]
87802226:	68bb      	ldr	r3, [r7, #8]
87802228:	429a      	cmp	r2, r3
8780222a:	daea      	bge.n	87802202 <strstr+0x2a>
8780222c:	2300      	movs	r3, #0
8780222e:	4618      	mov	r0, r3
87802230:	3710      	adds	r7, #16
87802232:	46bd      	mov	sp, r7
87802234:	bd80      	pop	{r7, pc}
87802236:	bf00      	nop

87802238 <memchr>:
87802238:	b480      	push	{r7}
8780223a:	b087      	sub	sp, #28
8780223c:	af00      	add	r7, sp, #0
8780223e:	60f8      	str	r0, [r7, #12]
87802240:	60b9      	str	r1, [r7, #8]
87802242:	607a      	str	r2, [r7, #4]
87802244:	68fb      	ldr	r3, [r7, #12]
87802246:	617b      	str	r3, [r7, #20]
87802248:	e00a      	b.n	87802260 <memchr+0x28>
8780224a:	68bb      	ldr	r3, [r7, #8]
8780224c:	b2da      	uxtb	r2, r3
8780224e:	697b      	ldr	r3, [r7, #20]
87802250:	1c59      	adds	r1, r3, #1
87802252:	6179      	str	r1, [r7, #20]
87802254:	781b      	ldrb	r3, [r3, #0]
87802256:	429a      	cmp	r2, r3
87802258:	d102      	bne.n	87802260 <memchr+0x28>
8780225a:	697b      	ldr	r3, [r7, #20]
8780225c:	3b01      	subs	r3, #1
8780225e:	e005      	b.n	8780226c <memchr+0x34>
87802260:	687b      	ldr	r3, [r7, #4]
87802262:	1e5a      	subs	r2, r3, #1
87802264:	607a      	str	r2, [r7, #4]
87802266:	2b00      	cmp	r3, #0
87802268:	d1ef      	bne.n	8780224a <memchr+0x12>
8780226a:	2300      	movs	r3, #0
8780226c:	4618      	mov	r0, r3
8780226e:	371c      	adds	r7, #28
87802270:	46bd      	mov	sp, r7
87802272:	f85d 7b04 	ldr.w	r7, [sp], #4
87802276:	4770      	bx	lr

87802278 <__toupper>:
87802278:	b480      	push	{r7}
8780227a:	b083      	sub	sp, #12
8780227c:	af00      	add	r7, sp, #0
8780227e:	4603      	mov	r3, r0
87802280:	71fb      	strb	r3, [r7, #7]
87802282:	79fa      	ldrb	r2, [r7, #7]
87802284:	f24c 4344 	movw	r3, #50244	; 0xc444
87802288:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780228c:	5c9b      	ldrb	r3, [r3, r2]
8780228e:	f003 0302 	and.w	r3, r3, #2
87802292:	2b00      	cmp	r3, #0
87802294:	d002      	beq.n	8780229c <__toupper+0x24>
87802296:	79fb      	ldrb	r3, [r7, #7]
87802298:	3b20      	subs	r3, #32
8780229a:	71fb      	strb	r3, [r7, #7]
8780229c:	79fb      	ldrb	r3, [r7, #7]
8780229e:	4618      	mov	r0, r3
878022a0:	370c      	adds	r7, #12
878022a2:	46bd      	mov	sp, r7
878022a4:	f85d 7b04 	ldr.w	r7, [sp], #4
878022a8:	4770      	bx	lr
878022aa:	bf00      	nop

878022ac <simple_strtoul>:
878022ac:	b580      	push	{r7, lr}
878022ae:	b086      	sub	sp, #24
878022b0:	af00      	add	r7, sp, #0
878022b2:	60f8      	str	r0, [r7, #12]
878022b4:	60b9      	str	r1, [r7, #8]
878022b6:	607a      	str	r2, [r7, #4]
878022b8:	2300      	movs	r3, #0
878022ba:	617b      	str	r3, [r7, #20]
878022bc:	687b      	ldr	r3, [r7, #4]
878022be:	2b00      	cmp	r3, #0
878022c0:	d125      	bne.n	8780230e <simple_strtoul+0x62>
878022c2:	230a      	movs	r3, #10
878022c4:	607b      	str	r3, [r7, #4]
878022c6:	68fb      	ldr	r3, [r7, #12]
878022c8:	781b      	ldrb	r3, [r3, #0]
878022ca:	2b30      	cmp	r3, #48	; 0x30
878022cc:	d132      	bne.n	87802334 <simple_strtoul+0x88>
878022ce:	2308      	movs	r3, #8
878022d0:	607b      	str	r3, [r7, #4]
878022d2:	68fb      	ldr	r3, [r7, #12]
878022d4:	3301      	adds	r3, #1
878022d6:	60fb      	str	r3, [r7, #12]
878022d8:	68fb      	ldr	r3, [r7, #12]
878022da:	781b      	ldrb	r3, [r3, #0]
878022dc:	4618      	mov	r0, r3
878022de:	f7ff ffcb 	bl	87802278 <__toupper>
878022e2:	4603      	mov	r3, r0
878022e4:	2b58      	cmp	r3, #88	; 0x58
878022e6:	d125      	bne.n	87802334 <simple_strtoul+0x88>
878022e8:	68fb      	ldr	r3, [r7, #12]
878022ea:	3301      	adds	r3, #1
878022ec:	781b      	ldrb	r3, [r3, #0]
878022ee:	461a      	mov	r2, r3
878022f0:	f24c 4344 	movw	r3, #50244	; 0xc444
878022f4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878022f8:	5c9b      	ldrb	r3, [r3, r2]
878022fa:	f003 0344 	and.w	r3, r3, #68	; 0x44
878022fe:	2b00      	cmp	r3, #0
87802300:	d018      	beq.n	87802334 <simple_strtoul+0x88>
87802302:	68fb      	ldr	r3, [r7, #12]
87802304:	3301      	adds	r3, #1
87802306:	60fb      	str	r3, [r7, #12]
87802308:	2310      	movs	r3, #16
8780230a:	607b      	str	r3, [r7, #4]
8780230c:	e01d      	b.n	8780234a <simple_strtoul+0x9e>
8780230e:	687b      	ldr	r3, [r7, #4]
87802310:	2b10      	cmp	r3, #16
87802312:	d10f      	bne.n	87802334 <simple_strtoul+0x88>
87802314:	68fb      	ldr	r3, [r7, #12]
87802316:	781b      	ldrb	r3, [r3, #0]
87802318:	2b30      	cmp	r3, #48	; 0x30
8780231a:	d10b      	bne.n	87802334 <simple_strtoul+0x88>
8780231c:	68fb      	ldr	r3, [r7, #12]
8780231e:	3301      	adds	r3, #1
87802320:	781b      	ldrb	r3, [r3, #0]
87802322:	4618      	mov	r0, r3
87802324:	f7ff ffa8 	bl	87802278 <__toupper>
87802328:	4603      	mov	r3, r0
8780232a:	2b58      	cmp	r3, #88	; 0x58
8780232c:	d102      	bne.n	87802334 <simple_strtoul+0x88>
8780232e:	68fb      	ldr	r3, [r7, #12]
87802330:	3302      	adds	r3, #2
87802332:	60fb      	str	r3, [r7, #12]
87802334:	e009      	b.n	8780234a <simple_strtoul+0x9e>
87802336:	697b      	ldr	r3, [r7, #20]
87802338:	687a      	ldr	r2, [r7, #4]
8780233a:	fb02 f203 	mul.w	r2, r2, r3
8780233e:	693b      	ldr	r3, [r7, #16]
87802340:	4413      	add	r3, r2
87802342:	617b      	str	r3, [r7, #20]
87802344:	68fb      	ldr	r3, [r7, #12]
87802346:	3301      	adds	r3, #1
87802348:	60fb      	str	r3, [r7, #12]
8780234a:	68fb      	ldr	r3, [r7, #12]
8780234c:	781b      	ldrb	r3, [r3, #0]
8780234e:	461a      	mov	r2, r3
87802350:	f24c 4344 	movw	r3, #50244	; 0xc444
87802354:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802358:	5c9b      	ldrb	r3, [r3, r2]
8780235a:	f003 0344 	and.w	r3, r3, #68	; 0x44
8780235e:	2b00      	cmp	r3, #0
87802360:	d01b      	beq.n	8780239a <simple_strtoul+0xee>
87802362:	68fb      	ldr	r3, [r7, #12]
87802364:	781b      	ldrb	r3, [r3, #0]
87802366:	461a      	mov	r2, r3
87802368:	f24c 4344 	movw	r3, #50244	; 0xc444
8780236c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802370:	5c9b      	ldrb	r3, [r3, r2]
87802372:	f003 0304 	and.w	r3, r3, #4
87802376:	2b00      	cmp	r3, #0
87802378:	d003      	beq.n	87802382 <simple_strtoul+0xd6>
8780237a:	68fb      	ldr	r3, [r7, #12]
8780237c:	781b      	ldrb	r3, [r3, #0]
8780237e:	3b30      	subs	r3, #48	; 0x30
87802380:	e006      	b.n	87802390 <simple_strtoul+0xe4>
87802382:	68fb      	ldr	r3, [r7, #12]
87802384:	781b      	ldrb	r3, [r3, #0]
87802386:	4618      	mov	r0, r3
87802388:	f7ff ff76 	bl	87802278 <__toupper>
8780238c:	4603      	mov	r3, r0
8780238e:	3b37      	subs	r3, #55	; 0x37
87802390:	613b      	str	r3, [r7, #16]
87802392:	693a      	ldr	r2, [r7, #16]
87802394:	687b      	ldr	r3, [r7, #4]
87802396:	429a      	cmp	r2, r3
87802398:	d3cd      	bcc.n	87802336 <simple_strtoul+0x8a>
8780239a:	68bb      	ldr	r3, [r7, #8]
8780239c:	2b00      	cmp	r3, #0
8780239e:	d002      	beq.n	878023a6 <simple_strtoul+0xfa>
878023a0:	68bb      	ldr	r3, [r7, #8]
878023a2:	68fa      	ldr	r2, [r7, #12]
878023a4:	601a      	str	r2, [r3, #0]
878023a6:	697b      	ldr	r3, [r7, #20]
878023a8:	4618      	mov	r0, r3
878023aa:	3718      	adds	r7, #24
878023ac:	46bd      	mov	sp, r7
878023ae:	bd80      	pop	{r7, pc}

878023b0 <simple_strtol>:
878023b0:	b580      	push	{r7, lr}
878023b2:	b084      	sub	sp, #16
878023b4:	af00      	add	r7, sp, #0
878023b6:	60f8      	str	r0, [r7, #12]
878023b8:	60b9      	str	r1, [r7, #8]
878023ba:	607a      	str	r2, [r7, #4]
878023bc:	68fb      	ldr	r3, [r7, #12]
878023be:	781b      	ldrb	r3, [r3, #0]
878023c0:	2b2d      	cmp	r3, #45	; 0x2d
878023c2:	d109      	bne.n	878023d8 <simple_strtol+0x28>
878023c4:	68fb      	ldr	r3, [r7, #12]
878023c6:	3301      	adds	r3, #1
878023c8:	687a      	ldr	r2, [r7, #4]
878023ca:	68b9      	ldr	r1, [r7, #8]
878023cc:	4618      	mov	r0, r3
878023ce:	f7ff ff6d 	bl	878022ac <simple_strtoul>
878023d2:	4603      	mov	r3, r0
878023d4:	425b      	negs	r3, r3
878023d6:	e005      	b.n	878023e4 <simple_strtol+0x34>
878023d8:	687a      	ldr	r2, [r7, #4]
878023da:	68b9      	ldr	r1, [r7, #8]
878023dc:	68f8      	ldr	r0, [r7, #12]
878023de:	f7ff ff65 	bl	878022ac <simple_strtoul>
878023e2:	4603      	mov	r3, r0
878023e4:	4618      	mov	r0, r3
878023e6:	3710      	adds	r7, #16
878023e8:	46bd      	mov	sp, r7
878023ea:	bd80      	pop	{r7, pc}

878023ec <simple_strtoull>:
878023ec:	b590      	push	{r4, r7, lr}
878023ee:	b089      	sub	sp, #36	; 0x24
878023f0:	af00      	add	r7, sp, #0
878023f2:	60f8      	str	r0, [r7, #12]
878023f4:	60b9      	str	r1, [r7, #8]
878023f6:	607a      	str	r2, [r7, #4]
878023f8:	f04f 0300 	mov.w	r3, #0
878023fc:	f04f 0400 	mov.w	r4, #0
87802400:	e9c7 3406 	strd	r3, r4, [r7, #24]
87802404:	687b      	ldr	r3, [r7, #4]
87802406:	2b00      	cmp	r3, #0
87802408:	d125      	bne.n	87802456 <simple_strtoull+0x6a>
8780240a:	230a      	movs	r3, #10
8780240c:	607b      	str	r3, [r7, #4]
8780240e:	68fb      	ldr	r3, [r7, #12]
87802410:	781b      	ldrb	r3, [r3, #0]
87802412:	2b30      	cmp	r3, #48	; 0x30
87802414:	d132      	bne.n	8780247c <simple_strtoull+0x90>
87802416:	2308      	movs	r3, #8
87802418:	607b      	str	r3, [r7, #4]
8780241a:	68fb      	ldr	r3, [r7, #12]
8780241c:	3301      	adds	r3, #1
8780241e:	60fb      	str	r3, [r7, #12]
87802420:	68fb      	ldr	r3, [r7, #12]
87802422:	781b      	ldrb	r3, [r3, #0]
87802424:	4618      	mov	r0, r3
87802426:	f7ff ff27 	bl	87802278 <__toupper>
8780242a:	4603      	mov	r3, r0
8780242c:	2b58      	cmp	r3, #88	; 0x58
8780242e:	d125      	bne.n	8780247c <simple_strtoull+0x90>
87802430:	68fb      	ldr	r3, [r7, #12]
87802432:	3301      	adds	r3, #1
87802434:	781b      	ldrb	r3, [r3, #0]
87802436:	461a      	mov	r2, r3
87802438:	f24c 4344 	movw	r3, #50244	; 0xc444
8780243c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802440:	5c9b      	ldrb	r3, [r3, r2]
87802442:	f003 0344 	and.w	r3, r3, #68	; 0x44
87802446:	2b00      	cmp	r3, #0
87802448:	d018      	beq.n	8780247c <simple_strtoull+0x90>
8780244a:	68fb      	ldr	r3, [r7, #12]
8780244c:	3301      	adds	r3, #1
8780244e:	60fb      	str	r3, [r7, #12]
87802450:	2310      	movs	r3, #16
87802452:	607b      	str	r3, [r7, #4]
87802454:	e02c      	b.n	878024b0 <simple_strtoull+0xc4>
87802456:	687b      	ldr	r3, [r7, #4]
87802458:	2b10      	cmp	r3, #16
8780245a:	d10f      	bne.n	8780247c <simple_strtoull+0x90>
8780245c:	68fb      	ldr	r3, [r7, #12]
8780245e:	781b      	ldrb	r3, [r3, #0]
87802460:	2b30      	cmp	r3, #48	; 0x30
87802462:	d10b      	bne.n	8780247c <simple_strtoull+0x90>
87802464:	68fb      	ldr	r3, [r7, #12]
87802466:	3301      	adds	r3, #1
87802468:	781b      	ldrb	r3, [r3, #0]
8780246a:	4618      	mov	r0, r3
8780246c:	f7ff ff04 	bl	87802278 <__toupper>
87802470:	4603      	mov	r3, r0
87802472:	2b58      	cmp	r3, #88	; 0x58
87802474:	d102      	bne.n	8780247c <simple_strtoull+0x90>
87802476:	68fb      	ldr	r3, [r7, #12]
87802478:	3302      	adds	r3, #2
8780247a:	60fb      	str	r3, [r7, #12]
8780247c:	e018      	b.n	878024b0 <simple_strtoull+0xc4>
8780247e:	687b      	ldr	r3, [r7, #4]
87802480:	f04f 0400 	mov.w	r4, #0
87802484:	69ba      	ldr	r2, [r7, #24]
87802486:	fb04 f102 	mul.w	r1, r4, r2
8780248a:	69fa      	ldr	r2, [r7, #28]
8780248c:	fb03 f202 	mul.w	r2, r3, r2
87802490:	440a      	add	r2, r1
87802492:	69b9      	ldr	r1, [r7, #24]
87802494:	fba1 3403 	umull	r3, r4, r1, r3
87802498:	4422      	add	r2, r4
8780249a:	4614      	mov	r4, r2
8780249c:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
878024a0:	185b      	adds	r3, r3, r1
878024a2:	eb44 0402 	adc.w	r4, r4, r2
878024a6:	e9c7 3406 	strd	r3, r4, [r7, #24]
878024aa:	68fb      	ldr	r3, [r7, #12]
878024ac:	3301      	adds	r3, #1
878024ae:	60fb      	str	r3, [r7, #12]
878024b0:	68fb      	ldr	r3, [r7, #12]
878024b2:	781b      	ldrb	r3, [r3, #0]
878024b4:	461a      	mov	r2, r3
878024b6:	f24c 4344 	movw	r3, #50244	; 0xc444
878024ba:	f2c8 7380 	movt	r3, #34688	; 0x8780
878024be:	5c9b      	ldrb	r3, [r3, r2]
878024c0:	f003 0344 	and.w	r3, r3, #68	; 0x44
878024c4:	2b00      	cmp	r3, #0
878024c6:	d033      	beq.n	87802530 <simple_strtoull+0x144>
878024c8:	68fb      	ldr	r3, [r7, #12]
878024ca:	781b      	ldrb	r3, [r3, #0]
878024cc:	461a      	mov	r2, r3
878024ce:	f24c 4344 	movw	r3, #50244	; 0xc444
878024d2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878024d6:	5c9b      	ldrb	r3, [r3, r2]
878024d8:	f003 0304 	and.w	r3, r3, #4
878024dc:	2b00      	cmp	r3, #0
878024de:	d003      	beq.n	878024e8 <simple_strtoull+0xfc>
878024e0:	68fb      	ldr	r3, [r7, #12]
878024e2:	781b      	ldrb	r3, [r3, #0]
878024e4:	3b30      	subs	r3, #48	; 0x30
878024e6:	e016      	b.n	87802516 <simple_strtoull+0x12a>
878024e8:	68fb      	ldr	r3, [r7, #12]
878024ea:	781b      	ldrb	r3, [r3, #0]
878024ec:	461a      	mov	r2, r3
878024ee:	f24c 4344 	movw	r3, #50244	; 0xc444
878024f2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878024f6:	5c9b      	ldrb	r3, [r3, r2]
878024f8:	f003 0302 	and.w	r3, r3, #2
878024fc:	2b00      	cmp	r3, #0
878024fe:	d007      	beq.n	87802510 <simple_strtoull+0x124>
87802500:	68fb      	ldr	r3, [r7, #12]
87802502:	781b      	ldrb	r3, [r3, #0]
87802504:	4618      	mov	r0, r3
87802506:	f7ff feb7 	bl	87802278 <__toupper>
8780250a:	4603      	mov	r3, r0
8780250c:	3b37      	subs	r3, #55	; 0x37
8780250e:	e002      	b.n	87802516 <simple_strtoull+0x12a>
87802510:	68fb      	ldr	r3, [r7, #12]
87802512:	781b      	ldrb	r3, [r3, #0]
87802514:	3b37      	subs	r3, #55	; 0x37
87802516:	ea4f 74e3 	mov.w	r4, r3, asr #31
8780251a:	e9c7 3404 	strd	r3, r4, [r7, #16]
8780251e:	687b      	ldr	r3, [r7, #4]
87802520:	f04f 0400 	mov.w	r4, #0
87802524:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
87802528:	42a2      	cmp	r2, r4
8780252a:	bf08      	it	eq
8780252c:	4299      	cmpeq	r1, r3
8780252e:	d3a6      	bcc.n	8780247e <simple_strtoull+0x92>
87802530:	68bb      	ldr	r3, [r7, #8]
87802532:	2b00      	cmp	r3, #0
87802534:	d002      	beq.n	8780253c <simple_strtoull+0x150>
87802536:	68bb      	ldr	r3, [r7, #8]
87802538:	68fa      	ldr	r2, [r7, #12]
8780253a:	601a      	str	r2, [r3, #0]
8780253c:	e9d7 3406 	ldrd	r3, r4, [r7, #24]
87802540:	4618      	mov	r0, r3
87802542:	4621      	mov	r1, r4
87802544:	3724      	adds	r7, #36	; 0x24
87802546:	46bd      	mov	sp, r7
87802548:	bd90      	pop	{r4, r7, pc}
8780254a:	bf00      	nop

8780254c <simple_strtoll>:
8780254c:	b590      	push	{r4, r7, lr}
8780254e:	b085      	sub	sp, #20
87802550:	af00      	add	r7, sp, #0
87802552:	60f8      	str	r0, [r7, #12]
87802554:	60b9      	str	r1, [r7, #8]
87802556:	607a      	str	r2, [r7, #4]
87802558:	68fb      	ldr	r3, [r7, #12]
8780255a:	781b      	ldrb	r3, [r3, #0]
8780255c:	2b2d      	cmp	r3, #45	; 0x2d
8780255e:	d10c      	bne.n	8780257a <simple_strtoll+0x2e>
87802560:	68fb      	ldr	r3, [r7, #12]
87802562:	3301      	adds	r3, #1
87802564:	687a      	ldr	r2, [r7, #4]
87802566:	68b9      	ldr	r1, [r7, #8]
87802568:	4618      	mov	r0, r3
8780256a:	f7ff ff3f 	bl	878023ec <simple_strtoull>
8780256e:	4603      	mov	r3, r0
87802570:	460c      	mov	r4, r1
87802572:	425b      	negs	r3, r3
87802574:	eb64 0444 	sbc.w	r4, r4, r4, lsl #1
87802578:	e006      	b.n	87802588 <simple_strtoll+0x3c>
8780257a:	687a      	ldr	r2, [r7, #4]
8780257c:	68b9      	ldr	r1, [r7, #8]
8780257e:	68f8      	ldr	r0, [r7, #12]
87802580:	f7ff ff34 	bl	878023ec <simple_strtoull>
87802584:	4603      	mov	r3, r0
87802586:	460c      	mov	r4, r1
87802588:	4618      	mov	r0, r3
8780258a:	4621      	mov	r1, r4
8780258c:	3714      	adds	r7, #20
8780258e:	46bd      	mov	sp, r7
87802590:	bd90      	pop	{r4, r7, pc}
87802592:	bf00      	nop

87802594 <skip_atoi>:
87802594:	b480      	push	{r7}
87802596:	b085      	sub	sp, #20
87802598:	af00      	add	r7, sp, #0
8780259a:	6078      	str	r0, [r7, #4]
8780259c:	2300      	movs	r3, #0
8780259e:	60fb      	str	r3, [r7, #12]
878025a0:	e00c      	b.n	878025bc <skip_atoi+0x28>
878025a2:	68fb      	ldr	r3, [r7, #12]
878025a4:	005b      	lsls	r3, r3, #1
878025a6:	009a      	lsls	r2, r3, #2
878025a8:	441a      	add	r2, r3
878025aa:	687b      	ldr	r3, [r7, #4]
878025ac:	681b      	ldr	r3, [r3, #0]
878025ae:	1c58      	adds	r0, r3, #1
878025b0:	6879      	ldr	r1, [r7, #4]
878025b2:	6008      	str	r0, [r1, #0]
878025b4:	781b      	ldrb	r3, [r3, #0]
878025b6:	4413      	add	r3, r2
878025b8:	3b30      	subs	r3, #48	; 0x30
878025ba:	60fb      	str	r3, [r7, #12]
878025bc:	687b      	ldr	r3, [r7, #4]
878025be:	681b      	ldr	r3, [r3, #0]
878025c0:	781b      	ldrb	r3, [r3, #0]
878025c2:	461a      	mov	r2, r3
878025c4:	f24c 4344 	movw	r3, #50244	; 0xc444
878025c8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878025cc:	5c9b      	ldrb	r3, [r3, r2]
878025ce:	f003 0304 	and.w	r3, r3, #4
878025d2:	2b00      	cmp	r3, #0
878025d4:	d1e5      	bne.n	878025a2 <skip_atoi+0xe>
878025d6:	68fb      	ldr	r3, [r7, #12]
878025d8:	4618      	mov	r0, r3
878025da:	3714      	adds	r7, #20
878025dc:	46bd      	mov	sp, r7
878025de:	f85d 7b04 	ldr.w	r7, [sp], #4
878025e2:	4770      	bx	lr

878025e4 <put_dec_trunc>:
878025e4:	b480      	push	{r7}
878025e6:	b087      	sub	sp, #28
878025e8:	af00      	add	r7, sp, #0
878025ea:	6078      	str	r0, [r7, #4]
878025ec:	6039      	str	r1, [r7, #0]
878025ee:	683b      	ldr	r3, [r7, #0]
878025f0:	091b      	lsrs	r3, r3, #4
878025f2:	f003 030f 	and.w	r3, r3, #15
878025f6:	617b      	str	r3, [r7, #20]
878025f8:	683b      	ldr	r3, [r7, #0]
878025fa:	0a1b      	lsrs	r3, r3, #8
878025fc:	f003 030f 	and.w	r3, r3, #15
87802600:	613b      	str	r3, [r7, #16]
87802602:	683b      	ldr	r3, [r7, #0]
87802604:	0b1b      	lsrs	r3, r3, #12
87802606:	60fb      	str	r3, [r7, #12]
87802608:	68fa      	ldr	r2, [r7, #12]
8780260a:	693b      	ldr	r3, [r7, #16]
8780260c:	441a      	add	r2, r3
8780260e:	697b      	ldr	r3, [r7, #20]
87802610:	4413      	add	r3, r2
87802612:	005b      	lsls	r3, r3, #1
87802614:	009a      	lsls	r2, r3, #2
87802616:	1ad2      	subs	r2, r2, r3
87802618:	683b      	ldr	r3, [r7, #0]
8780261a:	f003 030f 	and.w	r3, r3, #15
8780261e:	4413      	add	r3, r2
87802620:	60bb      	str	r3, [r7, #8]
87802622:	68bb      	ldr	r3, [r7, #8]
87802624:	22cd      	movs	r2, #205	; 0xcd
87802626:	fb02 f303 	mul.w	r3, r2, r3
8780262a:	0adb      	lsrs	r3, r3, #11
8780262c:	603b      	str	r3, [r7, #0]
8780262e:	683b      	ldr	r3, [r7, #0]
87802630:	005b      	lsls	r3, r3, #1
87802632:	009a      	lsls	r2, r3, #2
87802634:	4413      	add	r3, r2
87802636:	68ba      	ldr	r2, [r7, #8]
87802638:	1ad3      	subs	r3, r2, r3
8780263a:	60bb      	str	r3, [r7, #8]
8780263c:	687b      	ldr	r3, [r7, #4]
8780263e:	1c5a      	adds	r2, r3, #1
87802640:	607a      	str	r2, [r7, #4]
87802642:	68ba      	ldr	r2, [r7, #8]
87802644:	b2d2      	uxtb	r2, r2
87802646:	3230      	adds	r2, #48	; 0x30
87802648:	b2d2      	uxtb	r2, r2
8780264a:	701a      	strb	r2, [r3, #0]
8780264c:	68fa      	ldr	r2, [r7, #12]
8780264e:	4613      	mov	r3, r2
87802650:	00db      	lsls	r3, r3, #3
87802652:	1899      	adds	r1, r3, r2
87802654:	693a      	ldr	r2, [r7, #16]
87802656:	4613      	mov	r3, r2
87802658:	009b      	lsls	r3, r3, #2
8780265a:	4413      	add	r3, r2
8780265c:	18ca      	adds	r2, r1, r3
8780265e:	683b      	ldr	r3, [r7, #0]
87802660:	4413      	add	r3, r2
87802662:	697a      	ldr	r2, [r7, #20]
87802664:	4413      	add	r3, r2
87802666:	617b      	str	r3, [r7, #20]
87802668:	697b      	ldr	r3, [r7, #20]
8780266a:	2b00      	cmp	r3, #0
8780266c:	d05f      	beq.n	8780272e <put_dec_trunc+0x14a>
8780266e:	697b      	ldr	r3, [r7, #20]
87802670:	22cd      	movs	r2, #205	; 0xcd
87802672:	fb02 f303 	mul.w	r3, r2, r3
87802676:	0adb      	lsrs	r3, r3, #11
87802678:	603b      	str	r3, [r7, #0]
8780267a:	683b      	ldr	r3, [r7, #0]
8780267c:	005b      	lsls	r3, r3, #1
8780267e:	009a      	lsls	r2, r3, #2
87802680:	4413      	add	r3, r2
87802682:	697a      	ldr	r2, [r7, #20]
87802684:	1ad3      	subs	r3, r2, r3
87802686:	617b      	str	r3, [r7, #20]
87802688:	687b      	ldr	r3, [r7, #4]
8780268a:	1c5a      	adds	r2, r3, #1
8780268c:	607a      	str	r2, [r7, #4]
8780268e:	697a      	ldr	r2, [r7, #20]
87802690:	b2d2      	uxtb	r2, r2
87802692:	3230      	adds	r2, #48	; 0x30
87802694:	b2d2      	uxtb	r2, r2
87802696:	701a      	strb	r2, [r3, #0]
87802698:	693b      	ldr	r3, [r7, #16]
8780269a:	005a      	lsls	r2, r3, #1
8780269c:	683b      	ldr	r3, [r7, #0]
8780269e:	4413      	add	r3, r2
878026a0:	613b      	str	r3, [r7, #16]
878026a2:	693b      	ldr	r3, [r7, #16]
878026a4:	2b00      	cmp	r3, #0
878026a6:	d102      	bne.n	878026ae <put_dec_trunc+0xca>
878026a8:	68fb      	ldr	r3, [r7, #12]
878026aa:	2b00      	cmp	r3, #0
878026ac:	d03f      	beq.n	8780272e <put_dec_trunc+0x14a>
878026ae:	6939      	ldr	r1, [r7, #16]
878026b0:	460a      	mov	r2, r1
878026b2:	0093      	lsls	r3, r2, #2
878026b4:	461a      	mov	r2, r3
878026b6:	0093      	lsls	r3, r2, #2
878026b8:	1a9b      	subs	r3, r3, r2
878026ba:	440b      	add	r3, r1
878026bc:	09db      	lsrs	r3, r3, #7
878026be:	603b      	str	r3, [r7, #0]
878026c0:	683b      	ldr	r3, [r7, #0]
878026c2:	005b      	lsls	r3, r3, #1
878026c4:	009a      	lsls	r2, r3, #2
878026c6:	4413      	add	r3, r2
878026c8:	693a      	ldr	r2, [r7, #16]
878026ca:	1ad3      	subs	r3, r2, r3
878026cc:	613b      	str	r3, [r7, #16]
878026ce:	687b      	ldr	r3, [r7, #4]
878026d0:	1c5a      	adds	r2, r3, #1
878026d2:	607a      	str	r2, [r7, #4]
878026d4:	693a      	ldr	r2, [r7, #16]
878026d6:	b2d2      	uxtb	r2, r2
878026d8:	3230      	adds	r2, #48	; 0x30
878026da:	b2d2      	uxtb	r2, r2
878026dc:	701a      	strb	r2, [r3, #0]
878026de:	68fb      	ldr	r3, [r7, #12]
878026e0:	009a      	lsls	r2, r3, #2
878026e2:	683b      	ldr	r3, [r7, #0]
878026e4:	4413      	add	r3, r2
878026e6:	60fb      	str	r3, [r7, #12]
878026e8:	68fb      	ldr	r3, [r7, #12]
878026ea:	2b00      	cmp	r3, #0
878026ec:	d01f      	beq.n	8780272e <put_dec_trunc+0x14a>
878026ee:	68fb      	ldr	r3, [r7, #12]
878026f0:	22cd      	movs	r2, #205	; 0xcd
878026f2:	fb02 f303 	mul.w	r3, r2, r3
878026f6:	0adb      	lsrs	r3, r3, #11
878026f8:	603b      	str	r3, [r7, #0]
878026fa:	683b      	ldr	r3, [r7, #0]
878026fc:	005b      	lsls	r3, r3, #1
878026fe:	009a      	lsls	r2, r3, #2
87802700:	4413      	add	r3, r2
87802702:	68fa      	ldr	r2, [r7, #12]
87802704:	1ad3      	subs	r3, r2, r3
87802706:	60fb      	str	r3, [r7, #12]
87802708:	687b      	ldr	r3, [r7, #4]
8780270a:	1c5a      	adds	r2, r3, #1
8780270c:	607a      	str	r2, [r7, #4]
8780270e:	68fa      	ldr	r2, [r7, #12]
87802710:	b2d2      	uxtb	r2, r2
87802712:	3230      	adds	r2, #48	; 0x30
87802714:	b2d2      	uxtb	r2, r2
87802716:	701a      	strb	r2, [r3, #0]
87802718:	683b      	ldr	r3, [r7, #0]
8780271a:	2b00      	cmp	r3, #0
8780271c:	d007      	beq.n	8780272e <put_dec_trunc+0x14a>
8780271e:	687b      	ldr	r3, [r7, #4]
87802720:	1c5a      	adds	r2, r3, #1
87802722:	607a      	str	r2, [r7, #4]
87802724:	683a      	ldr	r2, [r7, #0]
87802726:	b2d2      	uxtb	r2, r2
87802728:	3230      	adds	r2, #48	; 0x30
8780272a:	b2d2      	uxtb	r2, r2
8780272c:	701a      	strb	r2, [r3, #0]
8780272e:	687b      	ldr	r3, [r7, #4]
87802730:	4618      	mov	r0, r3
87802732:	371c      	adds	r7, #28
87802734:	46bd      	mov	sp, r7
87802736:	f85d 7b04 	ldr.w	r7, [sp], #4
8780273a:	4770      	bx	lr

8780273c <put_dec_full>:
8780273c:	b480      	push	{r7}
8780273e:	b087      	sub	sp, #28
87802740:	af00      	add	r7, sp, #0
87802742:	6078      	str	r0, [r7, #4]
87802744:	6039      	str	r1, [r7, #0]
87802746:	683b      	ldr	r3, [r7, #0]
87802748:	091b      	lsrs	r3, r3, #4
8780274a:	f003 030f 	and.w	r3, r3, #15
8780274e:	617b      	str	r3, [r7, #20]
87802750:	683b      	ldr	r3, [r7, #0]
87802752:	0a1b      	lsrs	r3, r3, #8
87802754:	f003 030f 	and.w	r3, r3, #15
87802758:	613b      	str	r3, [r7, #16]
8780275a:	683b      	ldr	r3, [r7, #0]
8780275c:	0b1b      	lsrs	r3, r3, #12
8780275e:	60fb      	str	r3, [r7, #12]
87802760:	68fa      	ldr	r2, [r7, #12]
87802762:	693b      	ldr	r3, [r7, #16]
87802764:	441a      	add	r2, r3
87802766:	697b      	ldr	r3, [r7, #20]
87802768:	4413      	add	r3, r2
8780276a:	005b      	lsls	r3, r3, #1
8780276c:	009a      	lsls	r2, r3, #2
8780276e:	1ad2      	subs	r2, r2, r3
87802770:	683b      	ldr	r3, [r7, #0]
87802772:	f003 030f 	and.w	r3, r3, #15
87802776:	4413      	add	r3, r2
87802778:	60bb      	str	r3, [r7, #8]
8780277a:	68bb      	ldr	r3, [r7, #8]
8780277c:	22cd      	movs	r2, #205	; 0xcd
8780277e:	fb02 f303 	mul.w	r3, r2, r3
87802782:	0adb      	lsrs	r3, r3, #11
87802784:	603b      	str	r3, [r7, #0]
87802786:	683b      	ldr	r3, [r7, #0]
87802788:	005b      	lsls	r3, r3, #1
8780278a:	009a      	lsls	r2, r3, #2
8780278c:	4413      	add	r3, r2
8780278e:	68ba      	ldr	r2, [r7, #8]
87802790:	1ad3      	subs	r3, r2, r3
87802792:	60bb      	str	r3, [r7, #8]
87802794:	687b      	ldr	r3, [r7, #4]
87802796:	1c5a      	adds	r2, r3, #1
87802798:	607a      	str	r2, [r7, #4]
8780279a:	68ba      	ldr	r2, [r7, #8]
8780279c:	b2d2      	uxtb	r2, r2
8780279e:	3230      	adds	r2, #48	; 0x30
878027a0:	b2d2      	uxtb	r2, r2
878027a2:	701a      	strb	r2, [r3, #0]
878027a4:	68fa      	ldr	r2, [r7, #12]
878027a6:	4613      	mov	r3, r2
878027a8:	00db      	lsls	r3, r3, #3
878027aa:	1899      	adds	r1, r3, r2
878027ac:	693a      	ldr	r2, [r7, #16]
878027ae:	4613      	mov	r3, r2
878027b0:	009b      	lsls	r3, r3, #2
878027b2:	4413      	add	r3, r2
878027b4:	18ca      	adds	r2, r1, r3
878027b6:	683b      	ldr	r3, [r7, #0]
878027b8:	4413      	add	r3, r2
878027ba:	697a      	ldr	r2, [r7, #20]
878027bc:	4413      	add	r3, r2
878027be:	617b      	str	r3, [r7, #20]
878027c0:	697b      	ldr	r3, [r7, #20]
878027c2:	22cd      	movs	r2, #205	; 0xcd
878027c4:	fb02 f303 	mul.w	r3, r2, r3
878027c8:	0adb      	lsrs	r3, r3, #11
878027ca:	603b      	str	r3, [r7, #0]
878027cc:	683b      	ldr	r3, [r7, #0]
878027ce:	005b      	lsls	r3, r3, #1
878027d0:	009a      	lsls	r2, r3, #2
878027d2:	4413      	add	r3, r2
878027d4:	697a      	ldr	r2, [r7, #20]
878027d6:	1ad3      	subs	r3, r2, r3
878027d8:	617b      	str	r3, [r7, #20]
878027da:	687b      	ldr	r3, [r7, #4]
878027dc:	1c5a      	adds	r2, r3, #1
878027de:	607a      	str	r2, [r7, #4]
878027e0:	697a      	ldr	r2, [r7, #20]
878027e2:	b2d2      	uxtb	r2, r2
878027e4:	3230      	adds	r2, #48	; 0x30
878027e6:	b2d2      	uxtb	r2, r2
878027e8:	701a      	strb	r2, [r3, #0]
878027ea:	693b      	ldr	r3, [r7, #16]
878027ec:	005a      	lsls	r2, r3, #1
878027ee:	683b      	ldr	r3, [r7, #0]
878027f0:	4413      	add	r3, r2
878027f2:	613b      	str	r3, [r7, #16]
878027f4:	6939      	ldr	r1, [r7, #16]
878027f6:	460a      	mov	r2, r1
878027f8:	0093      	lsls	r3, r2, #2
878027fa:	461a      	mov	r2, r3
878027fc:	0093      	lsls	r3, r2, #2
878027fe:	1a9b      	subs	r3, r3, r2
87802800:	440b      	add	r3, r1
87802802:	09db      	lsrs	r3, r3, #7
87802804:	603b      	str	r3, [r7, #0]
87802806:	683b      	ldr	r3, [r7, #0]
87802808:	005b      	lsls	r3, r3, #1
8780280a:	009a      	lsls	r2, r3, #2
8780280c:	4413      	add	r3, r2
8780280e:	693a      	ldr	r2, [r7, #16]
87802810:	1ad3      	subs	r3, r2, r3
87802812:	613b      	str	r3, [r7, #16]
87802814:	687b      	ldr	r3, [r7, #4]
87802816:	1c5a      	adds	r2, r3, #1
87802818:	607a      	str	r2, [r7, #4]
8780281a:	693a      	ldr	r2, [r7, #16]
8780281c:	b2d2      	uxtb	r2, r2
8780281e:	3230      	adds	r2, #48	; 0x30
87802820:	b2d2      	uxtb	r2, r2
87802822:	701a      	strb	r2, [r3, #0]
87802824:	68fb      	ldr	r3, [r7, #12]
87802826:	009a      	lsls	r2, r3, #2
87802828:	683b      	ldr	r3, [r7, #0]
8780282a:	4413      	add	r3, r2
8780282c:	60fb      	str	r3, [r7, #12]
8780282e:	68fb      	ldr	r3, [r7, #12]
87802830:	22cd      	movs	r2, #205	; 0xcd
87802832:	fb02 f303 	mul.w	r3, r2, r3
87802836:	0adb      	lsrs	r3, r3, #11
87802838:	603b      	str	r3, [r7, #0]
8780283a:	683b      	ldr	r3, [r7, #0]
8780283c:	005b      	lsls	r3, r3, #1
8780283e:	009a      	lsls	r2, r3, #2
87802840:	4413      	add	r3, r2
87802842:	68fa      	ldr	r2, [r7, #12]
87802844:	1ad3      	subs	r3, r2, r3
87802846:	60fb      	str	r3, [r7, #12]
87802848:	687b      	ldr	r3, [r7, #4]
8780284a:	1c5a      	adds	r2, r3, #1
8780284c:	607a      	str	r2, [r7, #4]
8780284e:	68fa      	ldr	r2, [r7, #12]
87802850:	b2d2      	uxtb	r2, r2
87802852:	3230      	adds	r2, #48	; 0x30
87802854:	b2d2      	uxtb	r2, r2
87802856:	701a      	strb	r2, [r3, #0]
87802858:	687b      	ldr	r3, [r7, #4]
8780285a:	1c5a      	adds	r2, r3, #1
8780285c:	607a      	str	r2, [r7, #4]
8780285e:	683a      	ldr	r2, [r7, #0]
87802860:	b2d2      	uxtb	r2, r2
87802862:	3230      	adds	r2, #48	; 0x30
87802864:	b2d2      	uxtb	r2, r2
87802866:	701a      	strb	r2, [r3, #0]
87802868:	687b      	ldr	r3, [r7, #4]
8780286a:	4618      	mov	r0, r3
8780286c:	371c      	adds	r7, #28
8780286e:	46bd      	mov	sp, r7
87802870:	f85d 7b04 	ldr.w	r7, [sp], #4
87802874:	4770      	bx	lr
87802876:	bf00      	nop

87802878 <put_dec>:
87802878:	b5b0      	push	{r4, r5, r7, lr}
8780287a:	b088      	sub	sp, #32
8780287c:	af00      	add	r7, sp, #0
8780287e:	60f8      	str	r0, [r7, #12]
87802880:	e9c7 2300 	strd	r2, r3, [r7]
87802884:	e9d7 2300 	ldrd	r2, r3, [r7]
87802888:	f248 609f 	movw	r0, #34463	; 0x869f
8780288c:	f2c0 0001 	movt	r0, #1
87802890:	f04f 0100 	mov.w	r1, #0
87802894:	4299      	cmp	r1, r3
87802896:	bf08      	it	eq
87802898:	4290      	cmpeq	r0, r2
8780289a:	d307      	bcc.n	878028ac <put_dec+0x34>
8780289c:	e9d7 3400 	ldrd	r3, r4, [r7]
878028a0:	4619      	mov	r1, r3
878028a2:	68f8      	ldr	r0, [r7, #12]
878028a4:	f7ff fe9e 	bl	878025e4 <put_dec_trunc>
878028a8:	4603      	mov	r3, r0
878028aa:	e030      	b.n	8780290e <put_dec+0x96>
878028ac:	f248 63a0 	movw	r3, #34464	; 0x86a0
878028b0:	f2c0 0301 	movt	r3, #1
878028b4:	61bb      	str	r3, [r7, #24]
878028b6:	e9d7 2300 	ldrd	r2, r3, [r7]
878028ba:	001c      	movs	r4, r3
878028bc:	2500      	movs	r5, #0
878028be:	ea54 0305 	orrs.w	r3, r4, r5
878028c2:	d116      	bne.n	878028f2 <put_dec+0x7a>
878028c4:	e9d7 2300 	ldrd	r2, r3, [r7]
878028c8:	4613      	mov	r3, r2
878028ca:	69b9      	ldr	r1, [r7, #24]
878028cc:	4618      	mov	r0, r3
878028ce:	f004 feb9 	bl	87807644 <__aeabi_uidivmod>
878028d2:	460b      	mov	r3, r1
878028d4:	61fb      	str	r3, [r7, #28]
878028d6:	e9d7 2300 	ldrd	r2, r3, [r7]
878028da:	4613      	mov	r3, r2
878028dc:	69b9      	ldr	r1, [r7, #24]
878028de:	4618      	mov	r0, r3
878028e0:	f004 fd82 	bl	878073e8 <__aeabi_uidiv>
878028e4:	4603      	mov	r3, r0
878028e6:	461a      	mov	r2, r3
878028e8:	f04f 0300 	mov.w	r3, #0
878028ec:	e9c7 2300 	strd	r2, r3, [r7]
878028f0:	e005      	b.n	878028fe <put_dec+0x86>
878028f2:	463b      	mov	r3, r7
878028f4:	69b9      	ldr	r1, [r7, #24]
878028f6:	4618      	mov	r0, r3
878028f8:	f7fe fefe 	bl	878016f8 <__div64_32>
878028fc:	61f8      	str	r0, [r7, #28]
878028fe:	69fb      	ldr	r3, [r7, #28]
87802900:	617b      	str	r3, [r7, #20]
87802902:	6979      	ldr	r1, [r7, #20]
87802904:	68f8      	ldr	r0, [r7, #12]
87802906:	f7ff ff19 	bl	8780273c <put_dec_full>
8780290a:	60f8      	str	r0, [r7, #12]
8780290c:	e7ba      	b.n	87802884 <put_dec+0xc>
8780290e:	4618      	mov	r0, r3
87802910:	3720      	adds	r7, #32
87802912:	46bd      	mov	sp, r7
87802914:	bdb0      	pop	{r4, r5, r7, pc}
87802916:	bf00      	nop

87802918 <number>:
87802918:	b5f0      	push	{r4, r5, r6, r7, lr}
8780291a:	b0a5      	sub	sp, #148	; 0x94
8780291c:	af00      	add	r7, sp, #0
8780291e:	60f8      	str	r0, [r7, #12]
87802920:	60b9      	str	r1, [r7, #8]
87802922:	e9c7 2300 	strd	r2, r3, [r7]
87802926:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
8780292a:	f003 0320 	and.w	r3, r3, #32
8780292e:	2b00      	cmp	r3, #0
87802930:	d005      	beq.n	8780293e <number+0x26>
87802932:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802936:	2b0a      	cmp	r3, #10
87802938:	d001      	beq.n	8780293e <number+0x26>
8780293a:	2301      	movs	r3, #1
8780293c:	e000      	b.n	87802940 <number+0x28>
8780293e:	2300      	movs	r3, #0
87802940:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
87802944:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802948:	b2db      	uxtb	r3, r3
8780294a:	f003 0320 	and.w	r3, r3, #32
8780294e:	f887 307f 	strb.w	r3, [r7, #127]	; 0x7f
87802952:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802956:	f003 0310 	and.w	r3, r3, #16
8780295a:	2b00      	cmp	r3, #0
8780295c:	d005      	beq.n	8780296a <number+0x52>
8780295e:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802962:	f023 0301 	bic.w	r3, r3, #1
87802966:	f8c7 30b4 	str.w	r3, [r7, #180]	; 0xb4
8780296a:	2300      	movs	r3, #0
8780296c:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
87802970:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802974:	f003 0302 	and.w	r3, r3, #2
87802978:	2b00      	cmp	r3, #0
8780297a:	d032      	beq.n	878029e2 <number+0xca>
8780297c:	e9d7 2300 	ldrd	r2, r3, [r7]
87802980:	2a00      	cmp	r2, #0
87802982:	f173 0300 	sbcs.w	r3, r3, #0
87802986:	da0f      	bge.n	878029a8 <number+0x90>
87802988:	232d      	movs	r3, #45	; 0x2d
8780298a:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
8780298e:	e9d7 2300 	ldrd	r2, r3, [r7]
87802992:	4252      	negs	r2, r2
87802994:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
87802998:	e9c7 2300 	strd	r2, r3, [r7]
8780299c:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
878029a0:	3b01      	subs	r3, #1
878029a2:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029a6:	e01c      	b.n	878029e2 <number+0xca>
878029a8:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
878029ac:	f003 0304 	and.w	r3, r3, #4
878029b0:	2b00      	cmp	r3, #0
878029b2:	d008      	beq.n	878029c6 <number+0xae>
878029b4:	232b      	movs	r3, #43	; 0x2b
878029b6:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
878029ba:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
878029be:	3b01      	subs	r3, #1
878029c0:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029c4:	e00d      	b.n	878029e2 <number+0xca>
878029c6:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
878029ca:	f003 0308 	and.w	r3, r3, #8
878029ce:	2b00      	cmp	r3, #0
878029d0:	d007      	beq.n	878029e2 <number+0xca>
878029d2:	2320      	movs	r3, #32
878029d4:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
878029d8:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
878029dc:	3b01      	subs	r3, #1
878029de:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029e2:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
878029e6:	2b00      	cmp	r3, #0
878029e8:	d00d      	beq.n	87802a06 <number+0xee>
878029ea:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
878029ee:	3b01      	subs	r3, #1
878029f0:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029f4:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
878029f8:	2b10      	cmp	r3, #16
878029fa:	d104      	bne.n	87802a06 <number+0xee>
878029fc:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802a00:	3b01      	subs	r3, #1
87802a02:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802a06:	2300      	movs	r3, #0
87802a08:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802a0c:	e9d7 2300 	ldrd	r2, r3, [r7]
87802a10:	4313      	orrs	r3, r2
87802a12:	d10b      	bne.n	87802a2c <number+0x114>
87802a14:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802a18:	1c5a      	adds	r2, r3, #1
87802a1a:	f8c7 2088 	str.w	r2, [r7, #136]	; 0x88
87802a1e:	f107 0290 	add.w	r2, r7, #144	; 0x90
87802a22:	4413      	add	r3, r2
87802a24:	2230      	movs	r2, #48	; 0x30
87802a26:	f803 2c80 	strb.w	r2, [r3, #-128]
87802a2a:	e054      	b.n	87802ad6 <number+0x1be>
87802a2c:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802a30:	2b0a      	cmp	r3, #10
87802a32:	d040      	beq.n	87802ab6 <number+0x19e>
87802a34:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802a38:	3b01      	subs	r3, #1
87802a3a:	67bb      	str	r3, [r7, #120]	; 0x78
87802a3c:	2303      	movs	r3, #3
87802a3e:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
87802a42:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802a46:	2b10      	cmp	r3, #16
87802a48:	d102      	bne.n	87802a50 <number+0x138>
87802a4a:	2304      	movs	r3, #4
87802a4c:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
87802a50:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
87802a54:	1c53      	adds	r3, r2, #1
87802a56:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802a5a:	783b      	ldrb	r3, [r7, #0]
87802a5c:	4619      	mov	r1, r3
87802a5e:	6fbb      	ldr	r3, [r7, #120]	; 0x78
87802a60:	4019      	ands	r1, r3
87802a62:	f647 434c 	movw	r3, #31820	; 0x7c4c
87802a66:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802a6a:	5c59      	ldrb	r1, [r3, r1]
87802a6c:	f897 307f 	ldrb.w	r3, [r7, #127]	; 0x7f
87802a70:	430b      	orrs	r3, r1
87802a72:	b2d9      	uxtb	r1, r3
87802a74:	f107 0390 	add.w	r3, r7, #144	; 0x90
87802a78:	4413      	add	r3, r2
87802a7a:	460a      	mov	r2, r1
87802a7c:	f803 2c80 	strb.w	r2, [r3, #-128]
87802a80:	e9d7 2300 	ldrd	r2, r3, [r7]
87802a84:	f8d7 1084 	ldr.w	r1, [r7, #132]	; 0x84
87802a88:	f1c1 0620 	rsb	r6, r1, #32
87802a8c:	f1b1 0020 	subs.w	r0, r1, #32
87802a90:	fa22 f401 	lsr.w	r4, r2, r1
87802a94:	fa03 f606 	lsl.w	r6, r3, r6
87802a98:	ea44 0406 	orr.w	r4, r4, r6
87802a9c:	d402      	bmi.n	87802aa4 <number+0x18c>
87802a9e:	fa43 f000 	asr.w	r0, r3, r0
87802aa2:	4304      	orrs	r4, r0
87802aa4:	fa43 f501 	asr.w	r5, r3, r1
87802aa8:	e9c7 4500 	strd	r4, r5, [r7]
87802aac:	e9d7 2300 	ldrd	r2, r3, [r7]
87802ab0:	4313      	orrs	r3, r2
87802ab2:	d1cd      	bne.n	87802a50 <number+0x138>
87802ab4:	e00f      	b.n	87802ad6 <number+0x1be>
87802ab6:	e9d7 3400 	ldrd	r3, r4, [r7]
87802aba:	f107 0110 	add.w	r1, r7, #16
87802abe:	461a      	mov	r2, r3
87802ac0:	4623      	mov	r3, r4
87802ac2:	4608      	mov	r0, r1
87802ac4:	f7ff fed8 	bl	87802878 <put_dec>
87802ac8:	4603      	mov	r3, r0
87802aca:	461a      	mov	r2, r3
87802acc:	f107 0310 	add.w	r3, r7, #16
87802ad0:	1ad3      	subs	r3, r2, r3
87802ad2:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802ad6:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
87802ada:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802ade:	429a      	cmp	r2, r3
87802ae0:	dd03      	ble.n	87802aea <number+0x1d2>
87802ae2:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802ae6:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
87802aea:	f8d7 20ac 	ldr.w	r2, [r7, #172]	; 0xac
87802aee:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802af2:	1ad3      	subs	r3, r2, r3
87802af4:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802af8:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802afc:	f003 0311 	and.w	r3, r3, #17
87802b00:	2b00      	cmp	r3, #0
87802b02:	d113      	bne.n	87802b2c <number+0x214>
87802b04:	e009      	b.n	87802b1a <number+0x202>
87802b06:	68fa      	ldr	r2, [r7, #12]
87802b08:	68bb      	ldr	r3, [r7, #8]
87802b0a:	429a      	cmp	r2, r3
87802b0c:	d202      	bcs.n	87802b14 <number+0x1fc>
87802b0e:	68fb      	ldr	r3, [r7, #12]
87802b10:	2220      	movs	r2, #32
87802b12:	701a      	strb	r2, [r3, #0]
87802b14:	68fb      	ldr	r3, [r7, #12]
87802b16:	3301      	adds	r3, #1
87802b18:	60fb      	str	r3, [r7, #12]
87802b1a:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802b1e:	3b01      	subs	r3, #1
87802b20:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802b24:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802b28:	2b00      	cmp	r3, #0
87802b2a:	daec      	bge.n	87802b06 <number+0x1ee>
87802b2c:	f897 308f 	ldrb.w	r3, [r7, #143]	; 0x8f
87802b30:	2b00      	cmp	r3, #0
87802b32:	d00a      	beq.n	87802b4a <number+0x232>
87802b34:	68fa      	ldr	r2, [r7, #12]
87802b36:	68bb      	ldr	r3, [r7, #8]
87802b38:	429a      	cmp	r2, r3
87802b3a:	d203      	bcs.n	87802b44 <number+0x22c>
87802b3c:	68fb      	ldr	r3, [r7, #12]
87802b3e:	f897 208f 	ldrb.w	r2, [r7, #143]	; 0x8f
87802b42:	701a      	strb	r2, [r3, #0]
87802b44:	68fb      	ldr	r3, [r7, #12]
87802b46:	3301      	adds	r3, #1
87802b48:	60fb      	str	r3, [r7, #12]
87802b4a:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
87802b4e:	2b00      	cmp	r3, #0
87802b50:	d01b      	beq.n	87802b8a <number+0x272>
87802b52:	68fa      	ldr	r2, [r7, #12]
87802b54:	68bb      	ldr	r3, [r7, #8]
87802b56:	429a      	cmp	r2, r3
87802b58:	d202      	bcs.n	87802b60 <number+0x248>
87802b5a:	68fb      	ldr	r3, [r7, #12]
87802b5c:	2230      	movs	r2, #48	; 0x30
87802b5e:	701a      	strb	r2, [r3, #0]
87802b60:	68fb      	ldr	r3, [r7, #12]
87802b62:	3301      	adds	r3, #1
87802b64:	60fb      	str	r3, [r7, #12]
87802b66:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802b6a:	2b10      	cmp	r3, #16
87802b6c:	d10d      	bne.n	87802b8a <number+0x272>
87802b6e:	68fa      	ldr	r2, [r7, #12]
87802b70:	68bb      	ldr	r3, [r7, #8]
87802b72:	429a      	cmp	r2, r3
87802b74:	d206      	bcs.n	87802b84 <number+0x26c>
87802b76:	f897 307f 	ldrb.w	r3, [r7, #127]	; 0x7f
87802b7a:	f043 0358 	orr.w	r3, r3, #88	; 0x58
87802b7e:	b2da      	uxtb	r2, r3
87802b80:	68fb      	ldr	r3, [r7, #12]
87802b82:	701a      	strb	r2, [r3, #0]
87802b84:	68fb      	ldr	r3, [r7, #12]
87802b86:	3301      	adds	r3, #1
87802b88:	60fb      	str	r3, [r7, #12]
87802b8a:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802b8e:	f003 0310 	and.w	r3, r3, #16
87802b92:	2b00      	cmp	r3, #0
87802b94:	d11f      	bne.n	87802bd6 <number+0x2be>
87802b96:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802b9a:	f003 0301 	and.w	r3, r3, #1
87802b9e:	2b00      	cmp	r3, #0
87802ba0:	d001      	beq.n	87802ba6 <number+0x28e>
87802ba2:	2330      	movs	r3, #48	; 0x30
87802ba4:	e000      	b.n	87802ba8 <number+0x290>
87802ba6:	2320      	movs	r3, #32
87802ba8:	f887 3077 	strb.w	r3, [r7, #119]	; 0x77
87802bac:	e00a      	b.n	87802bc4 <number+0x2ac>
87802bae:	68fa      	ldr	r2, [r7, #12]
87802bb0:	68bb      	ldr	r3, [r7, #8]
87802bb2:	429a      	cmp	r2, r3
87802bb4:	d203      	bcs.n	87802bbe <number+0x2a6>
87802bb6:	68fb      	ldr	r3, [r7, #12]
87802bb8:	f897 2077 	ldrb.w	r2, [r7, #119]	; 0x77
87802bbc:	701a      	strb	r2, [r3, #0]
87802bbe:	68fb      	ldr	r3, [r7, #12]
87802bc0:	3301      	adds	r3, #1
87802bc2:	60fb      	str	r3, [r7, #12]
87802bc4:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802bc8:	3b01      	subs	r3, #1
87802bca:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802bce:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802bd2:	2b00      	cmp	r3, #0
87802bd4:	daeb      	bge.n	87802bae <number+0x296>
87802bd6:	e009      	b.n	87802bec <number+0x2d4>
87802bd8:	68fa      	ldr	r2, [r7, #12]
87802bda:	68bb      	ldr	r3, [r7, #8]
87802bdc:	429a      	cmp	r2, r3
87802bde:	d202      	bcs.n	87802be6 <number+0x2ce>
87802be0:	68fb      	ldr	r3, [r7, #12]
87802be2:	2230      	movs	r2, #48	; 0x30
87802be4:	701a      	strb	r2, [r3, #0]
87802be6:	68fb      	ldr	r3, [r7, #12]
87802be8:	3301      	adds	r3, #1
87802bea:	60fb      	str	r3, [r7, #12]
87802bec:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802bf0:	3b01      	subs	r3, #1
87802bf2:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
87802bf6:	f8d7 20b0 	ldr.w	r2, [r7, #176]	; 0xb0
87802bfa:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802bfe:	429a      	cmp	r2, r3
87802c00:	daea      	bge.n	87802bd8 <number+0x2c0>
87802c02:	e00e      	b.n	87802c22 <number+0x30a>
87802c04:	68fa      	ldr	r2, [r7, #12]
87802c06:	68bb      	ldr	r3, [r7, #8]
87802c08:	429a      	cmp	r2, r3
87802c0a:	d207      	bcs.n	87802c1c <number+0x304>
87802c0c:	f107 0210 	add.w	r2, r7, #16
87802c10:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802c14:	4413      	add	r3, r2
87802c16:	781a      	ldrb	r2, [r3, #0]
87802c18:	68fb      	ldr	r3, [r7, #12]
87802c1a:	701a      	strb	r2, [r3, #0]
87802c1c:	68fb      	ldr	r3, [r7, #12]
87802c1e:	3301      	adds	r3, #1
87802c20:	60fb      	str	r3, [r7, #12]
87802c22:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802c26:	3b01      	subs	r3, #1
87802c28:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802c2c:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802c30:	2b00      	cmp	r3, #0
87802c32:	dae7      	bge.n	87802c04 <number+0x2ec>
87802c34:	e009      	b.n	87802c4a <number+0x332>
87802c36:	68fa      	ldr	r2, [r7, #12]
87802c38:	68bb      	ldr	r3, [r7, #8]
87802c3a:	429a      	cmp	r2, r3
87802c3c:	d202      	bcs.n	87802c44 <number+0x32c>
87802c3e:	68fb      	ldr	r3, [r7, #12]
87802c40:	2220      	movs	r2, #32
87802c42:	701a      	strb	r2, [r3, #0]
87802c44:	68fb      	ldr	r3, [r7, #12]
87802c46:	3301      	adds	r3, #1
87802c48:	60fb      	str	r3, [r7, #12]
87802c4a:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802c4e:	3b01      	subs	r3, #1
87802c50:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802c54:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802c58:	2b00      	cmp	r3, #0
87802c5a:	daec      	bge.n	87802c36 <number+0x31e>
87802c5c:	68fb      	ldr	r3, [r7, #12]
87802c5e:	4618      	mov	r0, r3
87802c60:	3794      	adds	r7, #148	; 0x94
87802c62:	46bd      	mov	sp, r7
87802c64:	bdf0      	pop	{r4, r5, r6, r7, pc}
87802c66:	bf00      	nop

87802c68 <vsnprintf>:
87802c68:	b590      	push	{r4, r7, lr}
87802c6a:	b099      	sub	sp, #100	; 0x64
87802c6c:	af04      	add	r7, sp, #16
87802c6e:	60f8      	str	r0, [r7, #12]
87802c70:	60b9      	str	r1, [r7, #8]
87802c72:	607a      	str	r2, [r7, #4]
87802c74:	603b      	str	r3, [r7, #0]
87802c76:	68bb      	ldr	r3, [r7, #8]
87802c78:	0fdb      	lsrs	r3, r3, #31
87802c7a:	b2db      	uxtb	r3, r3
87802c7c:	2b00      	cmp	r3, #0
87802c7e:	d001      	beq.n	87802c84 <vsnprintf+0x1c>
87802c80:	2300      	movs	r3, #0
87802c82:	e353      	b.n	8780332c <vsnprintf+0x6c4>
87802c84:	68fb      	ldr	r3, [r7, #12]
87802c86:	63fb      	str	r3, [r7, #60]	; 0x3c
87802c88:	68bb      	ldr	r3, [r7, #8]
87802c8a:	3b01      	subs	r3, #1
87802c8c:	68fa      	ldr	r2, [r7, #12]
87802c8e:	4413      	add	r3, r2
87802c90:	63bb      	str	r3, [r7, #56]	; 0x38
87802c92:	68fb      	ldr	r3, [r7, #12]
87802c94:	1e5a      	subs	r2, r3, #1
87802c96:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802c98:	429a      	cmp	r2, r3
87802c9a:	d907      	bls.n	87802cac <vsnprintf+0x44>
87802c9c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802ca0:	63bb      	str	r3, [r7, #56]	; 0x38
87802ca2:	6bba      	ldr	r2, [r7, #56]	; 0x38
87802ca4:	68fb      	ldr	r3, [r7, #12]
87802ca6:	1ad3      	subs	r3, r2, r3
87802ca8:	3301      	adds	r3, #1
87802caa:	60bb      	str	r3, [r7, #8]
87802cac:	e328      	b.n	87803300 <vsnprintf+0x698>
87802cae:	687b      	ldr	r3, [r7, #4]
87802cb0:	781b      	ldrb	r3, [r3, #0]
87802cb2:	2b25      	cmp	r3, #37	; 0x25
87802cb4:	d00b      	beq.n	87802cce <vsnprintf+0x66>
87802cb6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87802cb8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802cba:	429a      	cmp	r2, r3
87802cbc:	d803      	bhi.n	87802cc6 <vsnprintf+0x5e>
87802cbe:	687b      	ldr	r3, [r7, #4]
87802cc0:	781a      	ldrb	r2, [r3, #0]
87802cc2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802cc4:	701a      	strb	r2, [r3, #0]
87802cc6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802cc8:	3301      	adds	r3, #1
87802cca:	63fb      	str	r3, [r7, #60]	; 0x3c
87802ccc:	e315      	b.n	878032fa <vsnprintf+0x692>
87802cce:	2300      	movs	r3, #0
87802cd0:	633b      	str	r3, [r7, #48]	; 0x30
87802cd2:	687b      	ldr	r3, [r7, #4]
87802cd4:	3301      	adds	r3, #1
87802cd6:	607b      	str	r3, [r7, #4]
87802cd8:	687b      	ldr	r3, [r7, #4]
87802cda:	781b      	ldrb	r3, [r3, #0]
87802cdc:	3b20      	subs	r3, #32
87802cde:	2b10      	cmp	r3, #16
87802ce0:	d83d      	bhi.n	87802d5e <vsnprintf+0xf6>
87802ce2:	a201      	add	r2, pc, #4	; (adr r2, 87802ce8 <vsnprintf+0x80>)
87802ce4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87802ce8:	87802d41 	strhi	r2, [r0, r1, asr #26]
87802cec:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802cf0:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802cf4:	87802d4b 	strhi	r2, [r0, fp, asr #26]
87802cf8:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802cfc:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d00:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d04:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d08:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d0c:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d10:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d14:	87802d37 			; <UNDEFINED> instruction: 0x87802d37
87802d18:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d1c:	87802d2d 	strhi	r2, [r0, sp, lsr #26]
87802d20:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d24:	87802d5f 			; <UNDEFINED> instruction: 0x87802d5f
87802d28:	87802d55 			; <UNDEFINED> instruction: 0x87802d55
87802d2c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d2e:	f043 0310 	orr.w	r3, r3, #16
87802d32:	633b      	str	r3, [r7, #48]	; 0x30
87802d34:	e7cd      	b.n	87802cd2 <vsnprintf+0x6a>
87802d36:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d38:	f043 0304 	orr.w	r3, r3, #4
87802d3c:	633b      	str	r3, [r7, #48]	; 0x30
87802d3e:	e7c8      	b.n	87802cd2 <vsnprintf+0x6a>
87802d40:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d42:	f043 0308 	orr.w	r3, r3, #8
87802d46:	633b      	str	r3, [r7, #48]	; 0x30
87802d48:	e7c3      	b.n	87802cd2 <vsnprintf+0x6a>
87802d4a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d4c:	f043 0320 	orr.w	r3, r3, #32
87802d50:	633b      	str	r3, [r7, #48]	; 0x30
87802d52:	e7be      	b.n	87802cd2 <vsnprintf+0x6a>
87802d54:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d56:	f043 0301 	orr.w	r3, r3, #1
87802d5a:	633b      	str	r3, [r7, #48]	; 0x30
87802d5c:	e7b9      	b.n	87802cd2 <vsnprintf+0x6a>
87802d5e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802d62:	62fb      	str	r3, [r7, #44]	; 0x2c
87802d64:	687b      	ldr	r3, [r7, #4]
87802d66:	781b      	ldrb	r3, [r3, #0]
87802d68:	461a      	mov	r2, r3
87802d6a:	f24c 4344 	movw	r3, #50244	; 0xc444
87802d6e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802d72:	5c9b      	ldrb	r3, [r3, r2]
87802d74:	f003 0304 	and.w	r3, r3, #4
87802d78:	2b00      	cmp	r3, #0
87802d7a:	d005      	beq.n	87802d88 <vsnprintf+0x120>
87802d7c:	1d3b      	adds	r3, r7, #4
87802d7e:	4618      	mov	r0, r3
87802d80:	f7ff fc08 	bl	87802594 <skip_atoi>
87802d84:	62f8      	str	r0, [r7, #44]	; 0x2c
87802d86:	e017      	b.n	87802db8 <vsnprintf+0x150>
87802d88:	687b      	ldr	r3, [r7, #4]
87802d8a:	781b      	ldrb	r3, [r3, #0]
87802d8c:	2b2a      	cmp	r3, #42	; 0x2a
87802d8e:	d113      	bne.n	87802db8 <vsnprintf+0x150>
87802d90:	687b      	ldr	r3, [r7, #4]
87802d92:	3301      	adds	r3, #1
87802d94:	607b      	str	r3, [r7, #4]
87802d96:	683b      	ldr	r3, [r7, #0]
87802d98:	3304      	adds	r3, #4
87802d9a:	603b      	str	r3, [r7, #0]
87802d9c:	683b      	ldr	r3, [r7, #0]
87802d9e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87802da2:	62fb      	str	r3, [r7, #44]	; 0x2c
87802da4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802da6:	2b00      	cmp	r3, #0
87802da8:	da06      	bge.n	87802db8 <vsnprintf+0x150>
87802daa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802dac:	425b      	negs	r3, r3
87802dae:	62fb      	str	r3, [r7, #44]	; 0x2c
87802db0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802db2:	f043 0310 	orr.w	r3, r3, #16
87802db6:	633b      	str	r3, [r7, #48]	; 0x30
87802db8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802dbc:	62bb      	str	r3, [r7, #40]	; 0x28
87802dbe:	687b      	ldr	r3, [r7, #4]
87802dc0:	781b      	ldrb	r3, [r3, #0]
87802dc2:	2b2e      	cmp	r3, #46	; 0x2e
87802dc4:	d127      	bne.n	87802e16 <vsnprintf+0x1ae>
87802dc6:	687b      	ldr	r3, [r7, #4]
87802dc8:	3301      	adds	r3, #1
87802dca:	607b      	str	r3, [r7, #4]
87802dcc:	687b      	ldr	r3, [r7, #4]
87802dce:	781b      	ldrb	r3, [r3, #0]
87802dd0:	461a      	mov	r2, r3
87802dd2:	f24c 4344 	movw	r3, #50244	; 0xc444
87802dd6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802dda:	5c9b      	ldrb	r3, [r3, r2]
87802ddc:	f003 0304 	and.w	r3, r3, #4
87802de0:	2b00      	cmp	r3, #0
87802de2:	d005      	beq.n	87802df0 <vsnprintf+0x188>
87802de4:	1d3b      	adds	r3, r7, #4
87802de6:	4618      	mov	r0, r3
87802de8:	f7ff fbd4 	bl	87802594 <skip_atoi>
87802dec:	62b8      	str	r0, [r7, #40]	; 0x28
87802dee:	e00d      	b.n	87802e0c <vsnprintf+0x1a4>
87802df0:	687b      	ldr	r3, [r7, #4]
87802df2:	781b      	ldrb	r3, [r3, #0]
87802df4:	2b2a      	cmp	r3, #42	; 0x2a
87802df6:	d109      	bne.n	87802e0c <vsnprintf+0x1a4>
87802df8:	687b      	ldr	r3, [r7, #4]
87802dfa:	3301      	adds	r3, #1
87802dfc:	607b      	str	r3, [r7, #4]
87802dfe:	683b      	ldr	r3, [r7, #0]
87802e00:	3304      	adds	r3, #4
87802e02:	603b      	str	r3, [r7, #0]
87802e04:	683b      	ldr	r3, [r7, #0]
87802e06:	f853 3c04 	ldr.w	r3, [r3, #-4]
87802e0a:	62bb      	str	r3, [r7, #40]	; 0x28
87802e0c:	6abb      	ldr	r3, [r7, #40]	; 0x28
87802e0e:	2b00      	cmp	r3, #0
87802e10:	da01      	bge.n	87802e16 <vsnprintf+0x1ae>
87802e12:	2300      	movs	r3, #0
87802e14:	62bb      	str	r3, [r7, #40]	; 0x28
87802e16:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802e1a:	627b      	str	r3, [r7, #36]	; 0x24
87802e1c:	687b      	ldr	r3, [r7, #4]
87802e1e:	781b      	ldrb	r3, [r3, #0]
87802e20:	2b68      	cmp	r3, #104	; 0x68
87802e22:	d00f      	beq.n	87802e44 <vsnprintf+0x1dc>
87802e24:	687b      	ldr	r3, [r7, #4]
87802e26:	781b      	ldrb	r3, [r3, #0]
87802e28:	2b6c      	cmp	r3, #108	; 0x6c
87802e2a:	d00b      	beq.n	87802e44 <vsnprintf+0x1dc>
87802e2c:	687b      	ldr	r3, [r7, #4]
87802e2e:	781b      	ldrb	r3, [r3, #0]
87802e30:	2b4c      	cmp	r3, #76	; 0x4c
87802e32:	d007      	beq.n	87802e44 <vsnprintf+0x1dc>
87802e34:	687b      	ldr	r3, [r7, #4]
87802e36:	781b      	ldrb	r3, [r3, #0]
87802e38:	2b5a      	cmp	r3, #90	; 0x5a
87802e3a:	d003      	beq.n	87802e44 <vsnprintf+0x1dc>
87802e3c:	687b      	ldr	r3, [r7, #4]
87802e3e:	781b      	ldrb	r3, [r3, #0]
87802e40:	2b7a      	cmp	r3, #122	; 0x7a
87802e42:	d111      	bne.n	87802e68 <vsnprintf+0x200>
87802e44:	687b      	ldr	r3, [r7, #4]
87802e46:	781b      	ldrb	r3, [r3, #0]
87802e48:	627b      	str	r3, [r7, #36]	; 0x24
87802e4a:	687b      	ldr	r3, [r7, #4]
87802e4c:	3301      	adds	r3, #1
87802e4e:	607b      	str	r3, [r7, #4]
87802e50:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87802e52:	2b6c      	cmp	r3, #108	; 0x6c
87802e54:	d108      	bne.n	87802e68 <vsnprintf+0x200>
87802e56:	687b      	ldr	r3, [r7, #4]
87802e58:	781b      	ldrb	r3, [r3, #0]
87802e5a:	2b6c      	cmp	r3, #108	; 0x6c
87802e5c:	d104      	bne.n	87802e68 <vsnprintf+0x200>
87802e5e:	234c      	movs	r3, #76	; 0x4c
87802e60:	627b      	str	r3, [r7, #36]	; 0x24
87802e62:	687b      	ldr	r3, [r7, #4]
87802e64:	3301      	adds	r3, #1
87802e66:	607b      	str	r3, [r7, #4]
87802e68:	230a      	movs	r3, #10
87802e6a:	643b      	str	r3, [r7, #64]	; 0x40
87802e6c:	687b      	ldr	r3, [r7, #4]
87802e6e:	781b      	ldrb	r3, [r3, #0]
87802e70:	3b25      	subs	r3, #37	; 0x25
87802e72:	2b53      	cmp	r3, #83	; 0x53
87802e74:	f200 81ac 	bhi.w	878031d0 <vsnprintf+0x568>
87802e78:	a201      	add	r2, pc, #4	; (adr r2, 87802e80 <vsnprintf+0x218>)
87802e7a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87802e7e:	bf00      	nop
87802e80:	8780319d 			; <UNDEFINED> instruction: 0x8780319d
87802e84:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802e88:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802e8c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802e90:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802e94:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802e98:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802e9c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ea0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ea4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ea8:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802eac:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802eb0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802eb4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802eb8:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ebc:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ec0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ec4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ec8:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ecc:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ed0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ed4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ed8:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802edc:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ee0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ee4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ee8:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802eec:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ef0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ef4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802ef8:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802efc:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f00:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f04:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f08:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f0c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f10:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f14:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f18:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f1c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f20:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f24:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f28:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f2c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f30:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f34:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f38:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f3c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f40:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f44:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f48:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f4c:	878031b9 			; <UNDEFINED> instruction: 0x878031b9
87802f50:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f54:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f58:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f5c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f60:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f64:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f68:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f6c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f70:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f74:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f78:	87802fd1 			; <UNDEFINED> instruction: 0x87802fd1
87802f7c:	878031c7 	strhi	r3, [r0, r7, asr #3]
87802f80:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f84:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f88:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f8c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f90:	878031c7 	strhi	r3, [r0, r7, asr #3]
87802f94:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f98:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802f9c:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802fa0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802fa4:	87803139 			; <UNDEFINED> instruction: 0x87803139
87802fa8:	878031b3 			; <UNDEFINED> instruction: 0x878031b3
87802fac:	878030f5 			; <UNDEFINED> instruction: 0x878030f5
87802fb0:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802fb4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802fb8:	87803047 	strhi	r3, [r0, r7, asr #32]
87802fbc:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802fc0:	8780320d 	strhi	r3, [r0, sp, lsl #4]
87802fc4:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802fc8:	878031d1 			; <UNDEFINED> instruction: 0x878031d1
87802fcc:	878031c1 	strhi	r3, [r0, r1, asr #3]
87802fd0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802fd2:	f003 0310 	and.w	r3, r3, #16
87802fd6:	2b00      	cmp	r3, #0
87802fd8:	d110      	bne.n	87802ffc <vsnprintf+0x394>
87802fda:	e009      	b.n	87802ff0 <vsnprintf+0x388>
87802fdc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87802fde:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802fe0:	429a      	cmp	r2, r3
87802fe2:	d802      	bhi.n	87802fea <vsnprintf+0x382>
87802fe4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802fe6:	2220      	movs	r2, #32
87802fe8:	701a      	strb	r2, [r3, #0]
87802fea:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802fec:	3301      	adds	r3, #1
87802fee:	63fb      	str	r3, [r7, #60]	; 0x3c
87802ff0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802ff2:	3b01      	subs	r3, #1
87802ff4:	62fb      	str	r3, [r7, #44]	; 0x2c
87802ff6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802ff8:	2b00      	cmp	r3, #0
87802ffa:	dcef      	bgt.n	87802fdc <vsnprintf+0x374>
87802ffc:	683b      	ldr	r3, [r7, #0]
87802ffe:	3304      	adds	r3, #4
87803000:	603b      	str	r3, [r7, #0]
87803002:	683b      	ldr	r3, [r7, #0]
87803004:	3b04      	subs	r3, #4
87803006:	681b      	ldr	r3, [r3, #0]
87803008:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
8780300c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780300e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803010:	429a      	cmp	r2, r3
87803012:	d803      	bhi.n	8780301c <vsnprintf+0x3b4>
87803014:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803016:	f897 2023 	ldrb.w	r2, [r7, #35]	; 0x23
8780301a:	701a      	strb	r2, [r3, #0]
8780301c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780301e:	3301      	adds	r3, #1
87803020:	63fb      	str	r3, [r7, #60]	; 0x3c
87803022:	e009      	b.n	87803038 <vsnprintf+0x3d0>
87803024:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803026:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803028:	429a      	cmp	r2, r3
8780302a:	d802      	bhi.n	87803032 <vsnprintf+0x3ca>
8780302c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780302e:	2220      	movs	r2, #32
87803030:	701a      	strb	r2, [r3, #0]
87803032:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803034:	3301      	adds	r3, #1
87803036:	63fb      	str	r3, [r7, #60]	; 0x3c
87803038:	6afb      	ldr	r3, [r7, #44]	; 0x2c
8780303a:	3b01      	subs	r3, #1
8780303c:	62fb      	str	r3, [r7, #44]	; 0x2c
8780303e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803040:	2b00      	cmp	r3, #0
87803042:	dcef      	bgt.n	87803024 <vsnprintf+0x3bc>
87803044:	e159      	b.n	878032fa <vsnprintf+0x692>
87803046:	683b      	ldr	r3, [r7, #0]
87803048:	3304      	adds	r3, #4
8780304a:	603b      	str	r3, [r7, #0]
8780304c:	683b      	ldr	r3, [r7, #0]
8780304e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803052:	637b      	str	r3, [r7, #52]	; 0x34
87803054:	6b7b      	ldr	r3, [r7, #52]	; 0x34
87803056:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
8780305a:	d204      	bcs.n	87803066 <vsnprintf+0x3fe>
8780305c:	f647 4344 	movw	r3, #31812	; 0x7c44
87803060:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803064:	637b      	str	r3, [r7, #52]	; 0x34
87803066:	6abb      	ldr	r3, [r7, #40]	; 0x28
87803068:	4619      	mov	r1, r3
8780306a:	6b78      	ldr	r0, [r7, #52]	; 0x34
8780306c:	f7fe fef0 	bl	87801e50 <strnlen>
87803070:	4603      	mov	r3, r0
87803072:	61fb      	str	r3, [r7, #28]
87803074:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803076:	f003 0310 	and.w	r3, r3, #16
8780307a:	2b00      	cmp	r3, #0
8780307c:	d110      	bne.n	878030a0 <vsnprintf+0x438>
8780307e:	e009      	b.n	87803094 <vsnprintf+0x42c>
87803080:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803082:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803084:	429a      	cmp	r2, r3
87803086:	d802      	bhi.n	8780308e <vsnprintf+0x426>
87803088:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780308a:	2220      	movs	r2, #32
8780308c:	701a      	strb	r2, [r3, #0]
8780308e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803090:	3301      	adds	r3, #1
87803092:	63fb      	str	r3, [r7, #60]	; 0x3c
87803094:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803096:	1e5a      	subs	r2, r3, #1
87803098:	62fa      	str	r2, [r7, #44]	; 0x2c
8780309a:	69fa      	ldr	r2, [r7, #28]
8780309c:	4293      	cmp	r3, r2
8780309e:	dcef      	bgt.n	87803080 <vsnprintf+0x418>
878030a0:	2300      	movs	r3, #0
878030a2:	647b      	str	r3, [r7, #68]	; 0x44
878030a4:	e010      	b.n	878030c8 <vsnprintf+0x460>
878030a6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878030a8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878030aa:	429a      	cmp	r2, r3
878030ac:	d803      	bhi.n	878030b6 <vsnprintf+0x44e>
878030ae:	6b7b      	ldr	r3, [r7, #52]	; 0x34
878030b0:	781a      	ldrb	r2, [r3, #0]
878030b2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878030b4:	701a      	strb	r2, [r3, #0]
878030b6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878030b8:	3301      	adds	r3, #1
878030ba:	63fb      	str	r3, [r7, #60]	; 0x3c
878030bc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
878030be:	3301      	adds	r3, #1
878030c0:	637b      	str	r3, [r7, #52]	; 0x34
878030c2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878030c4:	3301      	adds	r3, #1
878030c6:	647b      	str	r3, [r7, #68]	; 0x44
878030c8:	6c7a      	ldr	r2, [r7, #68]	; 0x44
878030ca:	69fb      	ldr	r3, [r7, #28]
878030cc:	429a      	cmp	r2, r3
878030ce:	dbea      	blt.n	878030a6 <vsnprintf+0x43e>
878030d0:	e009      	b.n	878030e6 <vsnprintf+0x47e>
878030d2:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878030d4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878030d6:	429a      	cmp	r2, r3
878030d8:	d802      	bhi.n	878030e0 <vsnprintf+0x478>
878030da:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878030dc:	2220      	movs	r2, #32
878030de:	701a      	strb	r2, [r3, #0]
878030e0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878030e2:	3301      	adds	r3, #1
878030e4:	63fb      	str	r3, [r7, #60]	; 0x3c
878030e6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878030e8:	1e5a      	subs	r2, r3, #1
878030ea:	62fa      	str	r2, [r7, #44]	; 0x2c
878030ec:	69fa      	ldr	r2, [r7, #28]
878030ee:	4293      	cmp	r3, r2
878030f0:	dcef      	bgt.n	878030d2 <vsnprintf+0x46a>
878030f2:	e102      	b.n	878032fa <vsnprintf+0x692>
878030f4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878030f6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
878030fa:	d105      	bne.n	87803108 <vsnprintf+0x4a0>
878030fc:	2308      	movs	r3, #8
878030fe:	62fb      	str	r3, [r7, #44]	; 0x2c
87803100:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803102:	f043 0301 	orr.w	r3, r3, #1
87803106:	633b      	str	r3, [r7, #48]	; 0x30
87803108:	683b      	ldr	r3, [r7, #0]
8780310a:	3304      	adds	r3, #4
8780310c:	603b      	str	r3, [r7, #0]
8780310e:	683b      	ldr	r3, [r7, #0]
87803110:	3b04      	subs	r3, #4
87803112:	681b      	ldr	r3, [r3, #0]
87803114:	f04f 0400 	mov.w	r4, #0
87803118:	6b3a      	ldr	r2, [r7, #48]	; 0x30
8780311a:	9203      	str	r2, [sp, #12]
8780311c:	6aba      	ldr	r2, [r7, #40]	; 0x28
8780311e:	9202      	str	r2, [sp, #8]
87803120:	6afa      	ldr	r2, [r7, #44]	; 0x2c
87803122:	9201      	str	r2, [sp, #4]
87803124:	2210      	movs	r2, #16
87803126:	9200      	str	r2, [sp, #0]
87803128:	461a      	mov	r2, r3
8780312a:	4623      	mov	r3, r4
8780312c:	6bb9      	ldr	r1, [r7, #56]	; 0x38
8780312e:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
87803130:	f7ff fbf2 	bl	87802918 <number>
87803134:	63f8      	str	r0, [r7, #60]	; 0x3c
87803136:	e0e0      	b.n	878032fa <vsnprintf+0x692>
87803138:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780313a:	2b6c      	cmp	r3, #108	; 0x6c
8780313c:	d10c      	bne.n	87803158 <vsnprintf+0x4f0>
8780313e:	683b      	ldr	r3, [r7, #0]
87803140:	3304      	adds	r3, #4
87803142:	603b      	str	r3, [r7, #0]
87803144:	683b      	ldr	r3, [r7, #0]
87803146:	f853 3c04 	ldr.w	r3, [r3, #-4]
8780314a:	61bb      	str	r3, [r7, #24]
8780314c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780314e:	68fb      	ldr	r3, [r7, #12]
87803150:	1ad2      	subs	r2, r2, r3
87803152:	69bb      	ldr	r3, [r7, #24]
87803154:	601a      	str	r2, [r3, #0]
87803156:	e020      	b.n	8780319a <vsnprintf+0x532>
87803158:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780315a:	2b5a      	cmp	r3, #90	; 0x5a
8780315c:	d002      	beq.n	87803164 <vsnprintf+0x4fc>
8780315e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803160:	2b7a      	cmp	r3, #122	; 0x7a
87803162:	d10d      	bne.n	87803180 <vsnprintf+0x518>
87803164:	683b      	ldr	r3, [r7, #0]
87803166:	3304      	adds	r3, #4
87803168:	603b      	str	r3, [r7, #0]
8780316a:	683b      	ldr	r3, [r7, #0]
8780316c:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803170:	613b      	str	r3, [r7, #16]
87803172:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803174:	68fb      	ldr	r3, [r7, #12]
87803176:	1ad3      	subs	r3, r2, r3
87803178:	461a      	mov	r2, r3
8780317a:	693b      	ldr	r3, [r7, #16]
8780317c:	601a      	str	r2, [r3, #0]
8780317e:	e00c      	b.n	8780319a <vsnprintf+0x532>
87803180:	683b      	ldr	r3, [r7, #0]
87803182:	3304      	adds	r3, #4
87803184:	603b      	str	r3, [r7, #0]
87803186:	683b      	ldr	r3, [r7, #0]
87803188:	f853 3c04 	ldr.w	r3, [r3, #-4]
8780318c:	617b      	str	r3, [r7, #20]
8780318e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803190:	68fb      	ldr	r3, [r7, #12]
87803192:	1ad2      	subs	r2, r2, r3
87803194:	697b      	ldr	r3, [r7, #20]
87803196:	601a      	str	r2, [r3, #0]
87803198:	e0af      	b.n	878032fa <vsnprintf+0x692>
8780319a:	e0ae      	b.n	878032fa <vsnprintf+0x692>
8780319c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780319e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878031a0:	429a      	cmp	r2, r3
878031a2:	d802      	bhi.n	878031aa <vsnprintf+0x542>
878031a4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031a6:	2225      	movs	r2, #37	; 0x25
878031a8:	701a      	strb	r2, [r3, #0]
878031aa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031ac:	3301      	adds	r3, #1
878031ae:	63fb      	str	r3, [r7, #60]	; 0x3c
878031b0:	e0a3      	b.n	878032fa <vsnprintf+0x692>
878031b2:	2308      	movs	r3, #8
878031b4:	643b      	str	r3, [r7, #64]	; 0x40
878031b6:	e02a      	b.n	8780320e <vsnprintf+0x5a6>
878031b8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878031ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
878031be:	633b      	str	r3, [r7, #48]	; 0x30
878031c0:	2310      	movs	r3, #16
878031c2:	643b      	str	r3, [r7, #64]	; 0x40
878031c4:	e023      	b.n	8780320e <vsnprintf+0x5a6>
878031c6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878031c8:	f043 0302 	orr.w	r3, r3, #2
878031cc:	633b      	str	r3, [r7, #48]	; 0x30
878031ce:	e01d      	b.n	8780320c <vsnprintf+0x5a4>
878031d0:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878031d2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878031d4:	429a      	cmp	r2, r3
878031d6:	d802      	bhi.n	878031de <vsnprintf+0x576>
878031d8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031da:	2225      	movs	r2, #37	; 0x25
878031dc:	701a      	strb	r2, [r3, #0]
878031de:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031e0:	3301      	adds	r3, #1
878031e2:	63fb      	str	r3, [r7, #60]	; 0x3c
878031e4:	687b      	ldr	r3, [r7, #4]
878031e6:	781b      	ldrb	r3, [r3, #0]
878031e8:	2b00      	cmp	r3, #0
878031ea:	d00b      	beq.n	87803204 <vsnprintf+0x59c>
878031ec:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878031ee:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878031f0:	429a      	cmp	r2, r3
878031f2:	d803      	bhi.n	878031fc <vsnprintf+0x594>
878031f4:	687b      	ldr	r3, [r7, #4]
878031f6:	781a      	ldrb	r2, [r3, #0]
878031f8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031fa:	701a      	strb	r2, [r3, #0]
878031fc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031fe:	3301      	adds	r3, #1
87803200:	63fb      	str	r3, [r7, #60]	; 0x3c
87803202:	e07a      	b.n	878032fa <vsnprintf+0x692>
87803204:	687b      	ldr	r3, [r7, #4]
87803206:	3b01      	subs	r3, #1
87803208:	607b      	str	r3, [r7, #4]
8780320a:	e076      	b.n	878032fa <vsnprintf+0x692>
8780320c:	bf00      	nop
8780320e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803210:	2b4c      	cmp	r3, #76	; 0x4c
87803212:	d108      	bne.n	87803226 <vsnprintf+0x5be>
87803214:	683b      	ldr	r3, [r7, #0]
87803216:	3308      	adds	r3, #8
87803218:	603b      	str	r3, [r7, #0]
8780321a:	683b      	ldr	r3, [r7, #0]
8780321c:	e953 3402 	ldrd	r3, r4, [r3, #-8]
87803220:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803224:	e058      	b.n	878032d8 <vsnprintf+0x670>
87803226:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803228:	2b6c      	cmp	r3, #108	; 0x6c
8780322a:	d114      	bne.n	87803256 <vsnprintf+0x5ee>
8780322c:	683b      	ldr	r3, [r7, #0]
8780322e:	3304      	adds	r3, #4
87803230:	603b      	str	r3, [r7, #0]
87803232:	683b      	ldr	r3, [r7, #0]
87803234:	3b04      	subs	r3, #4
87803236:	681b      	ldr	r3, [r3, #0]
87803238:	f04f 0400 	mov.w	r4, #0
8780323c:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803240:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803242:	f003 0302 	and.w	r3, r3, #2
87803246:	2b00      	cmp	r3, #0
87803248:	d046      	beq.n	878032d8 <vsnprintf+0x670>
8780324a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
8780324c:	ea4f 74e3 	mov.w	r4, r3, asr #31
87803250:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803254:	e040      	b.n	878032d8 <vsnprintf+0x670>
87803256:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803258:	2b5a      	cmp	r3, #90	; 0x5a
8780325a:	d002      	beq.n	87803262 <vsnprintf+0x5fa>
8780325c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780325e:	2b7a      	cmp	r3, #122	; 0x7a
87803260:	d10a      	bne.n	87803278 <vsnprintf+0x610>
87803262:	683b      	ldr	r3, [r7, #0]
87803264:	3304      	adds	r3, #4
87803266:	603b      	str	r3, [r7, #0]
87803268:	683b      	ldr	r3, [r7, #0]
8780326a:	3b04      	subs	r3, #4
8780326c:	681b      	ldr	r3, [r3, #0]
8780326e:	f04f 0400 	mov.w	r4, #0
87803272:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803276:	e02f      	b.n	878032d8 <vsnprintf+0x670>
87803278:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780327a:	2b68      	cmp	r3, #104	; 0x68
8780327c:	d118      	bne.n	878032b0 <vsnprintf+0x648>
8780327e:	683b      	ldr	r3, [r7, #0]
87803280:	3304      	adds	r3, #4
87803282:	603b      	str	r3, [r7, #0]
87803284:	683b      	ldr	r3, [r7, #0]
87803286:	3b04      	subs	r3, #4
87803288:	681b      	ldr	r3, [r3, #0]
8780328a:	b29b      	uxth	r3, r3
8780328c:	b29b      	uxth	r3, r3
8780328e:	f04f 0400 	mov.w	r4, #0
87803292:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803296:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803298:	f003 0302 	and.w	r3, r3, #2
8780329c:	2b00      	cmp	r3, #0
8780329e:	d01b      	beq.n	878032d8 <vsnprintf+0x670>
878032a0:	f8b7 3048 	ldrh.w	r3, [r7, #72]	; 0x48
878032a4:	b21b      	sxth	r3, r3
878032a6:	ea4f 74e3 	mov.w	r4, r3, asr #31
878032aa:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878032ae:	e013      	b.n	878032d8 <vsnprintf+0x670>
878032b0:	683b      	ldr	r3, [r7, #0]
878032b2:	3304      	adds	r3, #4
878032b4:	603b      	str	r3, [r7, #0]
878032b6:	683b      	ldr	r3, [r7, #0]
878032b8:	3b04      	subs	r3, #4
878032ba:	681b      	ldr	r3, [r3, #0]
878032bc:	f04f 0400 	mov.w	r4, #0
878032c0:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878032c4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878032c6:	f003 0302 	and.w	r3, r3, #2
878032ca:	2b00      	cmp	r3, #0
878032cc:	d004      	beq.n	878032d8 <vsnprintf+0x670>
878032ce:	6cbb      	ldr	r3, [r7, #72]	; 0x48
878032d0:	ea4f 74e3 	mov.w	r4, r3, asr #31
878032d4:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878032d8:	e9d7 3412 	ldrd	r3, r4, [r7, #72]	; 0x48
878032dc:	6b3a      	ldr	r2, [r7, #48]	; 0x30
878032de:	9203      	str	r2, [sp, #12]
878032e0:	6aba      	ldr	r2, [r7, #40]	; 0x28
878032e2:	9202      	str	r2, [sp, #8]
878032e4:	6afa      	ldr	r2, [r7, #44]	; 0x2c
878032e6:	9201      	str	r2, [sp, #4]
878032e8:	6c3a      	ldr	r2, [r7, #64]	; 0x40
878032ea:	9200      	str	r2, [sp, #0]
878032ec:	461a      	mov	r2, r3
878032ee:	4623      	mov	r3, r4
878032f0:	6bb9      	ldr	r1, [r7, #56]	; 0x38
878032f2:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
878032f4:	f7ff fb10 	bl	87802918 <number>
878032f8:	63f8      	str	r0, [r7, #60]	; 0x3c
878032fa:	687b      	ldr	r3, [r7, #4]
878032fc:	3301      	adds	r3, #1
878032fe:	607b      	str	r3, [r7, #4]
87803300:	687b      	ldr	r3, [r7, #4]
87803302:	781b      	ldrb	r3, [r3, #0]
87803304:	2b00      	cmp	r3, #0
87803306:	f47f acd2 	bne.w	87802cae <vsnprintf+0x46>
8780330a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780330c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
8780330e:	429a      	cmp	r2, r3
87803310:	d803      	bhi.n	8780331a <vsnprintf+0x6b2>
87803312:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803314:	2200      	movs	r2, #0
87803316:	701a      	strb	r2, [r3, #0]
87803318:	e005      	b.n	87803326 <vsnprintf+0x6be>
8780331a:	68bb      	ldr	r3, [r7, #8]
8780331c:	2b00      	cmp	r3, #0
8780331e:	d002      	beq.n	87803326 <vsnprintf+0x6be>
87803320:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803322:	2200      	movs	r2, #0
87803324:	701a      	strb	r2, [r3, #0]
87803326:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803328:	68fb      	ldr	r3, [r7, #12]
8780332a:	1ad3      	subs	r3, r2, r3
8780332c:	4618      	mov	r0, r3
8780332e:	3754      	adds	r7, #84	; 0x54
87803330:	46bd      	mov	sp, r7
87803332:	bd90      	pop	{r4, r7, pc}

87803334 <vscnprintf>:
87803334:	b580      	push	{r7, lr}
87803336:	b086      	sub	sp, #24
87803338:	af00      	add	r7, sp, #0
8780333a:	60f8      	str	r0, [r7, #12]
8780333c:	60b9      	str	r1, [r7, #8]
8780333e:	607a      	str	r2, [r7, #4]
87803340:	603b      	str	r3, [r7, #0]
87803342:	683b      	ldr	r3, [r7, #0]
87803344:	687a      	ldr	r2, [r7, #4]
87803346:	68b9      	ldr	r1, [r7, #8]
87803348:	68f8      	ldr	r0, [r7, #12]
8780334a:	f7ff fc8d 	bl	87802c68 <vsnprintf>
8780334e:	6178      	str	r0, [r7, #20]
87803350:	697a      	ldr	r2, [r7, #20]
87803352:	68bb      	ldr	r3, [r7, #8]
87803354:	429a      	cmp	r2, r3
87803356:	d302      	bcc.n	8780335e <vscnprintf+0x2a>
87803358:	68bb      	ldr	r3, [r7, #8]
8780335a:	3b01      	subs	r3, #1
8780335c:	e000      	b.n	87803360 <vscnprintf+0x2c>
8780335e:	697b      	ldr	r3, [r7, #20]
87803360:	4618      	mov	r0, r3
87803362:	3718      	adds	r7, #24
87803364:	46bd      	mov	sp, r7
87803366:	bd80      	pop	{r7, pc}

87803368 <snprintf>:
87803368:	b40c      	push	{r2, r3}
8780336a:	b580      	push	{r7, lr}
8780336c:	b084      	sub	sp, #16
8780336e:	af00      	add	r7, sp, #0
87803370:	6078      	str	r0, [r7, #4]
87803372:	6039      	str	r1, [r7, #0]
87803374:	f107 031c 	add.w	r3, r7, #28
87803378:	60fb      	str	r3, [r7, #12]
8780337a:	69ba      	ldr	r2, [r7, #24]
8780337c:	68fb      	ldr	r3, [r7, #12]
8780337e:	6839      	ldr	r1, [r7, #0]
87803380:	6878      	ldr	r0, [r7, #4]
87803382:	f7ff fc71 	bl	87802c68 <vsnprintf>
87803386:	60b8      	str	r0, [r7, #8]
87803388:	68bb      	ldr	r3, [r7, #8]
8780338a:	4618      	mov	r0, r3
8780338c:	3710      	adds	r7, #16
8780338e:	46bd      	mov	sp, r7
87803390:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803394:	b002      	add	sp, #8
87803396:	4770      	bx	lr

87803398 <scnprintf>:
87803398:	b40c      	push	{r2, r3}
8780339a:	b580      	push	{r7, lr}
8780339c:	b084      	sub	sp, #16
8780339e:	af00      	add	r7, sp, #0
878033a0:	6078      	str	r0, [r7, #4]
878033a2:	6039      	str	r1, [r7, #0]
878033a4:	f107 031c 	add.w	r3, r7, #28
878033a8:	60fb      	str	r3, [r7, #12]
878033aa:	69ba      	ldr	r2, [r7, #24]
878033ac:	68fb      	ldr	r3, [r7, #12]
878033ae:	6839      	ldr	r1, [r7, #0]
878033b0:	6878      	ldr	r0, [r7, #4]
878033b2:	f7ff fc59 	bl	87802c68 <vsnprintf>
878033b6:	60b8      	str	r0, [r7, #8]
878033b8:	68ba      	ldr	r2, [r7, #8]
878033ba:	683b      	ldr	r3, [r7, #0]
878033bc:	429a      	cmp	r2, r3
878033be:	d302      	bcc.n	878033c6 <scnprintf+0x2e>
878033c0:	683b      	ldr	r3, [r7, #0]
878033c2:	3b01      	subs	r3, #1
878033c4:	e000      	b.n	878033c8 <scnprintf+0x30>
878033c6:	68bb      	ldr	r3, [r7, #8]
878033c8:	4618      	mov	r0, r3
878033ca:	3710      	adds	r7, #16
878033cc:	46bd      	mov	sp, r7
878033ce:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
878033d2:	b002      	add	sp, #8
878033d4:	4770      	bx	lr
878033d6:	bf00      	nop

878033d8 <vsprintf>:
878033d8:	b580      	push	{r7, lr}
878033da:	b084      	sub	sp, #16
878033dc:	af00      	add	r7, sp, #0
878033de:	60f8      	str	r0, [r7, #12]
878033e0:	60b9      	str	r1, [r7, #8]
878033e2:	607a      	str	r2, [r7, #4]
878033e4:	687b      	ldr	r3, [r7, #4]
878033e6:	68ba      	ldr	r2, [r7, #8]
878033e8:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
878033ec:	68f8      	ldr	r0, [r7, #12]
878033ee:	f7ff fc3b 	bl	87802c68 <vsnprintf>
878033f2:	4603      	mov	r3, r0
878033f4:	4618      	mov	r0, r3
878033f6:	3710      	adds	r7, #16
878033f8:	46bd      	mov	sp, r7
878033fa:	bd80      	pop	{r7, pc}

878033fc <sprintf>:
878033fc:	b40e      	push	{r1, r2, r3}
878033fe:	b580      	push	{r7, lr}
87803400:	b085      	sub	sp, #20
87803402:	af00      	add	r7, sp, #0
87803404:	6078      	str	r0, [r7, #4]
87803406:	f107 0320 	add.w	r3, r7, #32
8780340a:	60fb      	str	r3, [r7, #12]
8780340c:	69fb      	ldr	r3, [r7, #28]
8780340e:	68fa      	ldr	r2, [r7, #12]
87803410:	4619      	mov	r1, r3
87803412:	6878      	ldr	r0, [r7, #4]
87803414:	f7ff ffe0 	bl	878033d8 <vsprintf>
87803418:	60b8      	str	r0, [r7, #8]
8780341a:	68bb      	ldr	r3, [r7, #8]
8780341c:	4618      	mov	r0, r3
8780341e:	3714      	adds	r7, #20
87803420:	46bd      	mov	sp, r7
87803422:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803426:	b003      	add	sp, #12
87803428:	4770      	bx	lr
8780342a:	bf00      	nop

8780342c <vsscanf>:
8780342c:	b590      	push	{r4, r7, lr}
8780342e:	b09b      	sub	sp, #108	; 0x6c
87803430:	af00      	add	r7, sp, #0
87803432:	60f8      	str	r0, [r7, #12]
87803434:	60b9      	str	r1, [r7, #8]
87803436:	607a      	str	r2, [r7, #4]
87803438:	68fb      	ldr	r3, [r7, #12]
8780343a:	667b      	str	r3, [r7, #100]	; 0x64
8780343c:	2300      	movs	r3, #0
8780343e:	65fb      	str	r3, [r7, #92]	; 0x5c
87803440:	2300      	movs	r3, #0
87803442:	64fb      	str	r3, [r7, #76]	; 0x4c
87803444:	e3c6      	b.n	87803bd4 <vsscanf+0x7a8>
87803446:	68bb      	ldr	r3, [r7, #8]
87803448:	781b      	ldrb	r3, [r3, #0]
8780344a:	461a      	mov	r2, r3
8780344c:	f24c 4344 	movw	r3, #50244	; 0xc444
87803450:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803454:	5c9b      	ldrb	r3, [r3, r2]
87803456:	f003 0320 	and.w	r3, r3, #32
8780345a:	2b00      	cmp	r3, #0
8780345c:	d01f      	beq.n	8780349e <vsscanf+0x72>
8780345e:	e002      	b.n	87803466 <vsscanf+0x3a>
87803460:	68bb      	ldr	r3, [r7, #8]
87803462:	3301      	adds	r3, #1
87803464:	60bb      	str	r3, [r7, #8]
87803466:	68bb      	ldr	r3, [r7, #8]
87803468:	781b      	ldrb	r3, [r3, #0]
8780346a:	461a      	mov	r2, r3
8780346c:	f24c 4344 	movw	r3, #50244	; 0xc444
87803470:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803474:	5c9b      	ldrb	r3, [r3, r2]
87803476:	f003 0320 	and.w	r3, r3, #32
8780347a:	2b00      	cmp	r3, #0
8780347c:	d1f0      	bne.n	87803460 <vsscanf+0x34>
8780347e:	e002      	b.n	87803486 <vsscanf+0x5a>
87803480:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803482:	3301      	adds	r3, #1
87803484:	667b      	str	r3, [r7, #100]	; 0x64
87803486:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803488:	781b      	ldrb	r3, [r3, #0]
8780348a:	461a      	mov	r2, r3
8780348c:	f24c 4344 	movw	r3, #50244	; 0xc444
87803490:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803494:	5c9b      	ldrb	r3, [r3, r2]
87803496:	f003 0320 	and.w	r3, r3, #32
8780349a:	2b00      	cmp	r3, #0
8780349c:	d1f0      	bne.n	87803480 <vsscanf+0x54>
8780349e:	68bb      	ldr	r3, [r7, #8]
878034a0:	781b      	ldrb	r3, [r3, #0]
878034a2:	2b25      	cmp	r3, #37	; 0x25
878034a4:	d00f      	beq.n	878034c6 <vsscanf+0x9a>
878034a6:	68bb      	ldr	r3, [r7, #8]
878034a8:	781b      	ldrb	r3, [r3, #0]
878034aa:	2b00      	cmp	r3, #0
878034ac:	d00b      	beq.n	878034c6 <vsscanf+0x9a>
878034ae:	68bb      	ldr	r3, [r7, #8]
878034b0:	1c5a      	adds	r2, r3, #1
878034b2:	60ba      	str	r2, [r7, #8]
878034b4:	781a      	ldrb	r2, [r3, #0]
878034b6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878034b8:	1c59      	adds	r1, r3, #1
878034ba:	6679      	str	r1, [r7, #100]	; 0x64
878034bc:	781b      	ldrb	r3, [r3, #0]
878034be:	429a      	cmp	r2, r3
878034c0:	d000      	beq.n	878034c4 <vsscanf+0x98>
878034c2:	e390      	b.n	87803be6 <vsscanf+0x7ba>
878034c4:	e386      	b.n	87803bd4 <vsscanf+0x7a8>
878034c6:	68bb      	ldr	r3, [r7, #8]
878034c8:	781b      	ldrb	r3, [r3, #0]
878034ca:	2b00      	cmp	r3, #0
878034cc:	d100      	bne.n	878034d0 <vsscanf+0xa4>
878034ce:	e38a      	b.n	87803be6 <vsscanf+0x7ba>
878034d0:	68bb      	ldr	r3, [r7, #8]
878034d2:	3301      	adds	r3, #1
878034d4:	60bb      	str	r3, [r7, #8]
878034d6:	68bb      	ldr	r3, [r7, #8]
878034d8:	781b      	ldrb	r3, [r3, #0]
878034da:	2b2a      	cmp	r3, #42	; 0x2a
878034dc:	d128      	bne.n	87803530 <vsscanf+0x104>
878034de:	e002      	b.n	878034e6 <vsscanf+0xba>
878034e0:	68bb      	ldr	r3, [r7, #8]
878034e2:	3301      	adds	r3, #1
878034e4:	60bb      	str	r3, [r7, #8]
878034e6:	68bb      	ldr	r3, [r7, #8]
878034e8:	781b      	ldrb	r3, [r3, #0]
878034ea:	461a      	mov	r2, r3
878034ec:	f24c 4344 	movw	r3, #50244	; 0xc444
878034f0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878034f4:	5c9b      	ldrb	r3, [r3, r2]
878034f6:	f003 0320 	and.w	r3, r3, #32
878034fa:	2b00      	cmp	r3, #0
878034fc:	d103      	bne.n	87803506 <vsscanf+0xda>
878034fe:	68bb      	ldr	r3, [r7, #8]
87803500:	781b      	ldrb	r3, [r3, #0]
87803502:	2b00      	cmp	r3, #0
87803504:	d1ec      	bne.n	878034e0 <vsscanf+0xb4>
87803506:	e002      	b.n	8780350e <vsscanf+0xe2>
87803508:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780350a:	3301      	adds	r3, #1
8780350c:	667b      	str	r3, [r7, #100]	; 0x64
8780350e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803510:	781b      	ldrb	r3, [r3, #0]
87803512:	461a      	mov	r2, r3
87803514:	f24c 4344 	movw	r3, #50244	; 0xc444
87803518:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780351c:	5c9b      	ldrb	r3, [r3, r2]
8780351e:	f003 0320 	and.w	r3, r3, #32
87803522:	2b00      	cmp	r3, #0
87803524:	d103      	bne.n	8780352e <vsscanf+0x102>
87803526:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803528:	781b      	ldrb	r3, [r3, #0]
8780352a:	2b00      	cmp	r3, #0
8780352c:	d1ec      	bne.n	87803508 <vsscanf+0xdc>
8780352e:	e351      	b.n	87803bd4 <vsscanf+0x7a8>
87803530:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87803534:	653b      	str	r3, [r7, #80]	; 0x50
87803536:	68bb      	ldr	r3, [r7, #8]
87803538:	781b      	ldrb	r3, [r3, #0]
8780353a:	461a      	mov	r2, r3
8780353c:	f24c 4344 	movw	r3, #50244	; 0xc444
87803540:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803544:	5c9b      	ldrb	r3, [r3, r2]
87803546:	f003 0304 	and.w	r3, r3, #4
8780354a:	2b00      	cmp	r3, #0
8780354c:	d005      	beq.n	8780355a <vsscanf+0x12e>
8780354e:	f107 0308 	add.w	r3, r7, #8
87803552:	4618      	mov	r0, r3
87803554:	f7ff f81e 	bl	87802594 <skip_atoi>
87803558:	6538      	str	r0, [r7, #80]	; 0x50
8780355a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
8780355e:	65bb      	str	r3, [r7, #88]	; 0x58
87803560:	68bb      	ldr	r3, [r7, #8]
87803562:	781b      	ldrb	r3, [r3, #0]
87803564:	2b68      	cmp	r3, #104	; 0x68
87803566:	d00f      	beq.n	87803588 <vsscanf+0x15c>
87803568:	68bb      	ldr	r3, [r7, #8]
8780356a:	781b      	ldrb	r3, [r3, #0]
8780356c:	2b6c      	cmp	r3, #108	; 0x6c
8780356e:	d00b      	beq.n	87803588 <vsscanf+0x15c>
87803570:	68bb      	ldr	r3, [r7, #8]
87803572:	781b      	ldrb	r3, [r3, #0]
87803574:	2b4c      	cmp	r3, #76	; 0x4c
87803576:	d007      	beq.n	87803588 <vsscanf+0x15c>
87803578:	68bb      	ldr	r3, [r7, #8]
8780357a:	781b      	ldrb	r3, [r3, #0]
8780357c:	2b5a      	cmp	r3, #90	; 0x5a
8780357e:	d003      	beq.n	87803588 <vsscanf+0x15c>
87803580:	68bb      	ldr	r3, [r7, #8]
87803582:	781b      	ldrb	r3, [r3, #0]
87803584:	2b7a      	cmp	r3, #122	; 0x7a
87803586:	d120      	bne.n	878035ca <vsscanf+0x19e>
87803588:	68bb      	ldr	r3, [r7, #8]
8780358a:	1c5a      	adds	r2, r3, #1
8780358c:	60ba      	str	r2, [r7, #8]
8780358e:	781b      	ldrb	r3, [r3, #0]
87803590:	65bb      	str	r3, [r7, #88]	; 0x58
87803592:	68bb      	ldr	r3, [r7, #8]
87803594:	781b      	ldrb	r3, [r3, #0]
87803596:	461a      	mov	r2, r3
87803598:	6dbb      	ldr	r3, [r7, #88]	; 0x58
8780359a:	429a      	cmp	r2, r3
8780359c:	bf0c      	ite	eq
8780359e:	2301      	moveq	r3, #1
878035a0:	2300      	movne	r3, #0
878035a2:	b2db      	uxtb	r3, r3
878035a4:	2b00      	cmp	r3, #0
878035a6:	d010      	beq.n	878035ca <vsscanf+0x19e>
878035a8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
878035aa:	2b68      	cmp	r3, #104	; 0x68
878035ac:	d105      	bne.n	878035ba <vsscanf+0x18e>
878035ae:	2348      	movs	r3, #72	; 0x48
878035b0:	65bb      	str	r3, [r7, #88]	; 0x58
878035b2:	68bb      	ldr	r3, [r7, #8]
878035b4:	3301      	adds	r3, #1
878035b6:	60bb      	str	r3, [r7, #8]
878035b8:	e007      	b.n	878035ca <vsscanf+0x19e>
878035ba:	6dbb      	ldr	r3, [r7, #88]	; 0x58
878035bc:	2b6c      	cmp	r3, #108	; 0x6c
878035be:	d104      	bne.n	878035ca <vsscanf+0x19e>
878035c0:	234c      	movs	r3, #76	; 0x4c
878035c2:	65bb      	str	r3, [r7, #88]	; 0x58
878035c4:	68bb      	ldr	r3, [r7, #8]
878035c6:	3301      	adds	r3, #1
878035c8:	60bb      	str	r3, [r7, #8]
878035ca:	230a      	movs	r3, #10
878035cc:	657b      	str	r3, [r7, #84]	; 0x54
878035ce:	2300      	movs	r3, #0
878035d0:	64fb      	str	r3, [r7, #76]	; 0x4c
878035d2:	68bb      	ldr	r3, [r7, #8]
878035d4:	781b      	ldrb	r3, [r3, #0]
878035d6:	2b00      	cmp	r3, #0
878035d8:	f000 8305 	beq.w	87803be6 <vsscanf+0x7ba>
878035dc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878035de:	781b      	ldrb	r3, [r3, #0]
878035e0:	2b00      	cmp	r3, #0
878035e2:	f000 8300 	beq.w	87803be6 <vsscanf+0x7ba>
878035e6:	68bb      	ldr	r3, [r7, #8]
878035e8:	1c5a      	adds	r2, r3, #1
878035ea:	60ba      	str	r2, [r7, #8]
878035ec:	781b      	ldrb	r3, [r3, #0]
878035ee:	3b25      	subs	r3, #37	; 0x25
878035f0:	2b53      	cmp	r3, #83	; 0x53
878035f2:	f200 8132 	bhi.w	8780385a <vsscanf+0x42e>
878035f6:	a201      	add	r2, pc, #4	; (adr r2, 878035fc <vsscanf+0x1d0>)
878035f8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
878035fc:	87803849 	strhi	r3, [r0, r9, asr #16]
87803600:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803604:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803608:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780360c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803610:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803614:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803618:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780361c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803620:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803624:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803628:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780362c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803630:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803634:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803638:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780363c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803640:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803644:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803648:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780364c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803650:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803654:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803658:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780365c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803660:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803664:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803668:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780366c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803670:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803674:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803678:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780367c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803680:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803684:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803688:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780368c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803690:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803694:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803698:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780369c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036a0:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036a4:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036a8:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036ac:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036b0:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036b4:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036b8:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036bc:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036c0:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036c4:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036c8:	87803839 			; <UNDEFINED> instruction: 0x87803839
878036cc:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036d0:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036d4:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036d8:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036dc:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036e0:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036e4:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036e8:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036ec:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036f0:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
878036f4:	8780374d 	strhi	r3, [r0, sp, asr #14]
878036f8:	87803843 	strhi	r3, [r0, r3, asr #16]
878036fc:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803700:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803704:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803708:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780370c:	8780383f 			; <UNDEFINED> instruction: 0x8780383f
87803710:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803714:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803718:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780371c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803720:	87803819 	usada8hi	r0, r9, r8, r3
87803724:	87803833 			; <UNDEFINED> instruction: 0x87803833
87803728:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780372c:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803730:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803734:	87803793 			; <UNDEFINED> instruction: 0x87803793
87803738:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
8780373c:	8780385f 			; <UNDEFINED> instruction: 0x8780385f
87803740:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803744:	8780385b 			; <UNDEFINED> instruction: 0x8780385b
87803748:	87803839 			; <UNDEFINED> instruction: 0x87803839
8780374c:	687b      	ldr	r3, [r7, #4]
8780374e:	3304      	adds	r3, #4
87803750:	607b      	str	r3, [r7, #4]
87803752:	687b      	ldr	r3, [r7, #4]
87803754:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803758:	64bb      	str	r3, [r7, #72]	; 0x48
8780375a:	6d3b      	ldr	r3, [r7, #80]	; 0x50
8780375c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
87803760:	d101      	bne.n	87803766 <vsscanf+0x33a>
87803762:	2301      	movs	r3, #1
87803764:	653b      	str	r3, [r7, #80]	; 0x50
87803766:	6cbb      	ldr	r3, [r7, #72]	; 0x48
87803768:	1c5a      	adds	r2, r3, #1
8780376a:	64ba      	str	r2, [r7, #72]	; 0x48
8780376c:	6e7a      	ldr	r2, [r7, #100]	; 0x64
8780376e:	1c51      	adds	r1, r2, #1
87803770:	6679      	str	r1, [r7, #100]	; 0x64
87803772:	7812      	ldrb	r2, [r2, #0]
87803774:	701a      	strb	r2, [r3, #0]
87803776:	6d3b      	ldr	r3, [r7, #80]	; 0x50
87803778:	3b01      	subs	r3, #1
8780377a:	653b      	str	r3, [r7, #80]	; 0x50
8780377c:	6d3b      	ldr	r3, [r7, #80]	; 0x50
8780377e:	2b00      	cmp	r3, #0
87803780:	dd03      	ble.n	8780378a <vsscanf+0x35e>
87803782:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803784:	781b      	ldrb	r3, [r3, #0]
87803786:	2b00      	cmp	r3, #0
87803788:	d1ed      	bne.n	87803766 <vsscanf+0x33a>
8780378a:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
8780378c:	3301      	adds	r3, #1
8780378e:	65fb      	str	r3, [r7, #92]	; 0x5c
87803790:	e220      	b.n	87803bd4 <vsscanf+0x7a8>
87803792:	687b      	ldr	r3, [r7, #4]
87803794:	3304      	adds	r3, #4
87803796:	607b      	str	r3, [r7, #4]
87803798:	687b      	ldr	r3, [r7, #4]
8780379a:	f853 3c04 	ldr.w	r3, [r3, #-4]
8780379e:	647b      	str	r3, [r7, #68]	; 0x44
878037a0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
878037a2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
878037a6:	d102      	bne.n	878037ae <vsscanf+0x382>
878037a8:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
878037ac:	653b      	str	r3, [r7, #80]	; 0x50
878037ae:	e002      	b.n	878037b6 <vsscanf+0x38a>
878037b0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878037b2:	3301      	adds	r3, #1
878037b4:	667b      	str	r3, [r7, #100]	; 0x64
878037b6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878037b8:	781b      	ldrb	r3, [r3, #0]
878037ba:	461a      	mov	r2, r3
878037bc:	f24c 4344 	movw	r3, #50244	; 0xc444
878037c0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878037c4:	5c9b      	ldrb	r3, [r3, r2]
878037c6:	f003 0320 	and.w	r3, r3, #32
878037ca:	2b00      	cmp	r3, #0
878037cc:	d1f0      	bne.n	878037b0 <vsscanf+0x384>
878037ce:	e007      	b.n	878037e0 <vsscanf+0x3b4>
878037d0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878037d2:	1c5a      	adds	r2, r3, #1
878037d4:	647a      	str	r2, [r7, #68]	; 0x44
878037d6:	6e7a      	ldr	r2, [r7, #100]	; 0x64
878037d8:	1c51      	adds	r1, r2, #1
878037da:	6679      	str	r1, [r7, #100]	; 0x64
878037dc:	7812      	ldrb	r2, [r2, #0]
878037de:	701a      	strb	r2, [r3, #0]
878037e0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878037e2:	781b      	ldrb	r3, [r3, #0]
878037e4:	2b00      	cmp	r3, #0
878037e6:	d010      	beq.n	8780380a <vsscanf+0x3de>
878037e8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878037ea:	781b      	ldrb	r3, [r3, #0]
878037ec:	461a      	mov	r2, r3
878037ee:	f24c 4344 	movw	r3, #50244	; 0xc444
878037f2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878037f6:	5c9b      	ldrb	r3, [r3, r2]
878037f8:	f003 0320 	and.w	r3, r3, #32
878037fc:	2b00      	cmp	r3, #0
878037fe:	d104      	bne.n	8780380a <vsscanf+0x3de>
87803800:	6d3b      	ldr	r3, [r7, #80]	; 0x50
87803802:	1e5a      	subs	r2, r3, #1
87803804:	653a      	str	r2, [r7, #80]	; 0x50
87803806:	2b00      	cmp	r3, #0
87803808:	d1e2      	bne.n	878037d0 <vsscanf+0x3a4>
8780380a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
8780380c:	2200      	movs	r2, #0
8780380e:	701a      	strb	r2, [r3, #0]
87803810:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803812:	3301      	adds	r3, #1
87803814:	65fb      	str	r3, [r7, #92]	; 0x5c
87803816:	e1dd      	b.n	87803bd4 <vsscanf+0x7a8>
87803818:	687b      	ldr	r3, [r7, #4]
8780381a:	3304      	adds	r3, #4
8780381c:	607b      	str	r3, [r7, #4]
8780381e:	687b      	ldr	r3, [r7, #4]
87803820:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803824:	643b      	str	r3, [r7, #64]	; 0x40
87803826:	6e7a      	ldr	r2, [r7, #100]	; 0x64
87803828:	68fb      	ldr	r3, [r7, #12]
8780382a:	1ad2      	subs	r2, r2, r3
8780382c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
8780382e:	601a      	str	r2, [r3, #0]
87803830:	e1d0      	b.n	87803bd4 <vsscanf+0x7a8>
87803832:	2308      	movs	r3, #8
87803834:	657b      	str	r3, [r7, #84]	; 0x54
87803836:	e013      	b.n	87803860 <vsscanf+0x434>
87803838:	2310      	movs	r3, #16
8780383a:	657b      	str	r3, [r7, #84]	; 0x54
8780383c:	e010      	b.n	87803860 <vsscanf+0x434>
8780383e:	2300      	movs	r3, #0
87803840:	657b      	str	r3, [r7, #84]	; 0x54
87803842:	2301      	movs	r3, #1
87803844:	64fb      	str	r3, [r7, #76]	; 0x4c
87803846:	e00a      	b.n	8780385e <vsscanf+0x432>
87803848:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780384a:	1c5a      	adds	r2, r3, #1
8780384c:	667a      	str	r2, [r7, #100]	; 0x64
8780384e:	781b      	ldrb	r3, [r3, #0]
87803850:	2b25      	cmp	r3, #37	; 0x25
87803852:	d001      	beq.n	87803858 <vsscanf+0x42c>
87803854:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803856:	e1c7      	b.n	87803be8 <vsscanf+0x7bc>
87803858:	e1bc      	b.n	87803bd4 <vsscanf+0x7a8>
8780385a:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
8780385c:	e1c4      	b.n	87803be8 <vsscanf+0x7bc>
8780385e:	bf00      	nop
87803860:	e002      	b.n	87803868 <vsscanf+0x43c>
87803862:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803864:	3301      	adds	r3, #1
87803866:	667b      	str	r3, [r7, #100]	; 0x64
87803868:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780386a:	781b      	ldrb	r3, [r3, #0]
8780386c:	461a      	mov	r2, r3
8780386e:	f24c 4344 	movw	r3, #50244	; 0xc444
87803872:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803876:	5c9b      	ldrb	r3, [r3, r2]
87803878:	f003 0320 	and.w	r3, r3, #32
8780387c:	2b00      	cmp	r3, #0
8780387e:	d1f0      	bne.n	87803862 <vsscanf+0x436>
87803880:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803882:	781b      	ldrb	r3, [r3, #0]
87803884:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
87803888:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
8780388a:	2b00      	cmp	r3, #0
8780388c:	d007      	beq.n	8780389e <vsscanf+0x472>
8780388e:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
87803892:	2b2d      	cmp	r3, #45	; 0x2d
87803894:	d103      	bne.n	8780389e <vsscanf+0x472>
87803896:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803898:	785b      	ldrb	r3, [r3, #1]
8780389a:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
8780389e:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
878038a2:	2b00      	cmp	r3, #0
878038a4:	f000 819f 	beq.w	87803be6 <vsscanf+0x7ba>
878038a8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
878038aa:	2b10      	cmp	r3, #16
878038ac:	d10b      	bne.n	878038c6 <vsscanf+0x49a>
878038ae:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
878038b2:	f24c 4344 	movw	r3, #50244	; 0xc444
878038b6:	f2c8 7380 	movt	r3, #34688	; 0x8780
878038ba:	5c9b      	ldrb	r3, [r3, r2]
878038bc:	f003 0344 	and.w	r3, r3, #68	; 0x44
878038c0:	2b00      	cmp	r3, #0
878038c2:	f000 8190 	beq.w	87803be6 <vsscanf+0x7ba>
878038c6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
878038c8:	2b0a      	cmp	r3, #10
878038ca:	d10b      	bne.n	878038e4 <vsscanf+0x4b8>
878038cc:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
878038d0:	f24c 4344 	movw	r3, #50244	; 0xc444
878038d4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878038d8:	5c9b      	ldrb	r3, [r3, r2]
878038da:	f003 0304 	and.w	r3, r3, #4
878038de:	2b00      	cmp	r3, #0
878038e0:	f000 8181 	beq.w	87803be6 <vsscanf+0x7ba>
878038e4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
878038e6:	2b08      	cmp	r3, #8
878038e8:	d110      	bne.n	8780390c <vsscanf+0x4e0>
878038ea:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
878038ee:	f24c 4344 	movw	r3, #50244	; 0xc444
878038f2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878038f6:	5c9b      	ldrb	r3, [r3, r2]
878038f8:	f003 0304 	and.w	r3, r3, #4
878038fc:	2b00      	cmp	r3, #0
878038fe:	f000 8172 	beq.w	87803be6 <vsscanf+0x7ba>
87803902:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
87803906:	2b37      	cmp	r3, #55	; 0x37
87803908:	f200 816d 	bhi.w	87803be6 <vsscanf+0x7ba>
8780390c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
8780390e:	2b00      	cmp	r3, #0
87803910:	d10b      	bne.n	8780392a <vsscanf+0x4fe>
87803912:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
87803916:	f24c 4344 	movw	r3, #50244	; 0xc444
8780391a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780391e:	5c9b      	ldrb	r3, [r3, r2]
87803920:	f003 0304 	and.w	r3, r3, #4
87803924:	2b00      	cmp	r3, #0
87803926:	f000 815e 	beq.w	87803be6 <vsscanf+0x7ba>
8780392a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
8780392c:	3b48      	subs	r3, #72	; 0x48
8780392e:	2b32      	cmp	r3, #50	; 0x32
87803930:	f200 8120 	bhi.w	87803b74 <vsscanf+0x748>
87803934:	a201      	add	r2, pc, #4	; (adr r2, 8780393c <vsscanf+0x510>)
87803936:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
8780393a:	bf00      	nop
8780393c:	87803a09 	strhi	r3, [r0, r9, lsl #20]
87803940:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803944:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803948:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
8780394c:	87803afb 			; <UNDEFINED> instruction: 0x87803afb
87803950:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803954:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803958:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
8780395c:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803960:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803964:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803968:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
8780396c:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803970:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803974:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803978:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
8780397c:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803980:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803984:	87803b51 			; <UNDEFINED> instruction: 0x87803b51
87803988:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
8780398c:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803990:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803994:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803998:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
8780399c:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039a0:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039a4:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039a8:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039ac:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039b0:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039b4:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039b8:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039bc:	87803a5b 			; <UNDEFINED> instruction: 0x87803a5b
878039c0:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039c4:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039c8:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039cc:	87803aad 	strhi	r3, [r0, sp, lsr #21]
878039d0:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039d4:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039d8:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039dc:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039e0:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039e4:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039e8:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039ec:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039f0:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039f4:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039f8:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
878039fc:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803a00:	87803b75 			; <UNDEFINED> instruction: 0x87803b75
87803a04:	87803b51 			; <UNDEFINED> instruction: 0x87803b51
87803a08:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803a0a:	2b00      	cmp	r3, #0
87803a0c:	d012      	beq.n	87803a34 <vsscanf+0x608>
87803a0e:	687b      	ldr	r3, [r7, #4]
87803a10:	3304      	adds	r3, #4
87803a12:	607b      	str	r3, [r7, #4]
87803a14:	687b      	ldr	r3, [r7, #4]
87803a16:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a1a:	63fb      	str	r3, [r7, #60]	; 0x3c
87803a1c:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803a1e:	f107 0310 	add.w	r3, r7, #16
87803a22:	4619      	mov	r1, r3
87803a24:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a26:	f7fe fcc3 	bl	878023b0 <simple_strtol>
87803a2a:	4603      	mov	r3, r0
87803a2c:	b2da      	uxtb	r2, r3
87803a2e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803a30:	701a      	strb	r2, [r3, #0]
87803a32:	e0c6      	b.n	87803bc2 <vsscanf+0x796>
87803a34:	687b      	ldr	r3, [r7, #4]
87803a36:	3304      	adds	r3, #4
87803a38:	607b      	str	r3, [r7, #4]
87803a3a:	687b      	ldr	r3, [r7, #4]
87803a3c:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a40:	63bb      	str	r3, [r7, #56]	; 0x38
87803a42:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803a44:	f107 0310 	add.w	r3, r7, #16
87803a48:	4619      	mov	r1, r3
87803a4a:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a4c:	f7fe fc2e 	bl	878022ac <simple_strtoul>
87803a50:	4603      	mov	r3, r0
87803a52:	b2da      	uxtb	r2, r3
87803a54:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803a56:	701a      	strb	r2, [r3, #0]
87803a58:	e0b3      	b.n	87803bc2 <vsscanf+0x796>
87803a5a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803a5c:	2b00      	cmp	r3, #0
87803a5e:	d012      	beq.n	87803a86 <vsscanf+0x65a>
87803a60:	687b      	ldr	r3, [r7, #4]
87803a62:	3304      	adds	r3, #4
87803a64:	607b      	str	r3, [r7, #4]
87803a66:	687b      	ldr	r3, [r7, #4]
87803a68:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a6c:	637b      	str	r3, [r7, #52]	; 0x34
87803a6e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803a70:	f107 0310 	add.w	r3, r7, #16
87803a74:	4619      	mov	r1, r3
87803a76:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a78:	f7fe fc9a 	bl	878023b0 <simple_strtol>
87803a7c:	4603      	mov	r3, r0
87803a7e:	b29a      	uxth	r2, r3
87803a80:	6b7b      	ldr	r3, [r7, #52]	; 0x34
87803a82:	801a      	strh	r2, [r3, #0]
87803a84:	e09d      	b.n	87803bc2 <vsscanf+0x796>
87803a86:	687b      	ldr	r3, [r7, #4]
87803a88:	3304      	adds	r3, #4
87803a8a:	607b      	str	r3, [r7, #4]
87803a8c:	687b      	ldr	r3, [r7, #4]
87803a8e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a92:	633b      	str	r3, [r7, #48]	; 0x30
87803a94:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803a96:	f107 0310 	add.w	r3, r7, #16
87803a9a:	4619      	mov	r1, r3
87803a9c:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a9e:	f7fe fc05 	bl	878022ac <simple_strtoul>
87803aa2:	4603      	mov	r3, r0
87803aa4:	b29a      	uxth	r2, r3
87803aa6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803aa8:	801a      	strh	r2, [r3, #0]
87803aaa:	e08a      	b.n	87803bc2 <vsscanf+0x796>
87803aac:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803aae:	2b00      	cmp	r3, #0
87803ab0:	d011      	beq.n	87803ad6 <vsscanf+0x6aa>
87803ab2:	687b      	ldr	r3, [r7, #4]
87803ab4:	3304      	adds	r3, #4
87803ab6:	607b      	str	r3, [r7, #4]
87803ab8:	687b      	ldr	r3, [r7, #4]
87803aba:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803abe:	62fb      	str	r3, [r7, #44]	; 0x2c
87803ac0:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803ac2:	f107 0310 	add.w	r3, r7, #16
87803ac6:	4619      	mov	r1, r3
87803ac8:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803aca:	f7fe fc71 	bl	878023b0 <simple_strtol>
87803ace:	4602      	mov	r2, r0
87803ad0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803ad2:	601a      	str	r2, [r3, #0]
87803ad4:	e075      	b.n	87803bc2 <vsscanf+0x796>
87803ad6:	687b      	ldr	r3, [r7, #4]
87803ad8:	3304      	adds	r3, #4
87803ada:	607b      	str	r3, [r7, #4]
87803adc:	687b      	ldr	r3, [r7, #4]
87803ade:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803ae2:	62bb      	str	r3, [r7, #40]	; 0x28
87803ae4:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803ae6:	f107 0310 	add.w	r3, r7, #16
87803aea:	4619      	mov	r1, r3
87803aec:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803aee:	f7fe fbdd 	bl	878022ac <simple_strtoul>
87803af2:	4602      	mov	r2, r0
87803af4:	6abb      	ldr	r3, [r7, #40]	; 0x28
87803af6:	601a      	str	r2, [r3, #0]
87803af8:	e063      	b.n	87803bc2 <vsscanf+0x796>
87803afa:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803afc:	2b00      	cmp	r3, #0
87803afe:	d013      	beq.n	87803b28 <vsscanf+0x6fc>
87803b00:	687b      	ldr	r3, [r7, #4]
87803b02:	3304      	adds	r3, #4
87803b04:	607b      	str	r3, [r7, #4]
87803b06:	687b      	ldr	r3, [r7, #4]
87803b08:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b0c:	627b      	str	r3, [r7, #36]	; 0x24
87803b0e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b10:	f107 0310 	add.w	r3, r7, #16
87803b14:	4619      	mov	r1, r3
87803b16:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b18:	f7fe fd18 	bl	8780254c <simple_strtoll>
87803b1c:	4603      	mov	r3, r0
87803b1e:	460c      	mov	r4, r1
87803b20:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87803b22:	e9c2 3400 	strd	r3, r4, [r2]
87803b26:	e04c      	b.n	87803bc2 <vsscanf+0x796>
87803b28:	687b      	ldr	r3, [r7, #4]
87803b2a:	3304      	adds	r3, #4
87803b2c:	607b      	str	r3, [r7, #4]
87803b2e:	687b      	ldr	r3, [r7, #4]
87803b30:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b34:	623b      	str	r3, [r7, #32]
87803b36:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b38:	f107 0310 	add.w	r3, r7, #16
87803b3c:	4619      	mov	r1, r3
87803b3e:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b40:	f7fe fc54 	bl	878023ec <simple_strtoull>
87803b44:	4603      	mov	r3, r0
87803b46:	460c      	mov	r4, r1
87803b48:	6a3a      	ldr	r2, [r7, #32]
87803b4a:	e9c2 3400 	strd	r3, r4, [r2]
87803b4e:	e038      	b.n	87803bc2 <vsscanf+0x796>
87803b50:	687b      	ldr	r3, [r7, #4]
87803b52:	3304      	adds	r3, #4
87803b54:	607b      	str	r3, [r7, #4]
87803b56:	687b      	ldr	r3, [r7, #4]
87803b58:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b5c:	61fb      	str	r3, [r7, #28]
87803b5e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b60:	f107 0310 	add.w	r3, r7, #16
87803b64:	4619      	mov	r1, r3
87803b66:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b68:	f7fe fba0 	bl	878022ac <simple_strtoul>
87803b6c:	4602      	mov	r2, r0
87803b6e:	69fb      	ldr	r3, [r7, #28]
87803b70:	601a      	str	r2, [r3, #0]
87803b72:	e026      	b.n	87803bc2 <vsscanf+0x796>
87803b74:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803b76:	2b00      	cmp	r3, #0
87803b78:	d011      	beq.n	87803b9e <vsscanf+0x772>
87803b7a:	687b      	ldr	r3, [r7, #4]
87803b7c:	3304      	adds	r3, #4
87803b7e:	607b      	str	r3, [r7, #4]
87803b80:	687b      	ldr	r3, [r7, #4]
87803b82:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b86:	61bb      	str	r3, [r7, #24]
87803b88:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b8a:	f107 0310 	add.w	r3, r7, #16
87803b8e:	4619      	mov	r1, r3
87803b90:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b92:	f7fe fc0d 	bl	878023b0 <simple_strtol>
87803b96:	4602      	mov	r2, r0
87803b98:	69bb      	ldr	r3, [r7, #24]
87803b9a:	601a      	str	r2, [r3, #0]
87803b9c:	e010      	b.n	87803bc0 <vsscanf+0x794>
87803b9e:	687b      	ldr	r3, [r7, #4]
87803ba0:	3304      	adds	r3, #4
87803ba2:	607b      	str	r3, [r7, #4]
87803ba4:	687b      	ldr	r3, [r7, #4]
87803ba6:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803baa:	617b      	str	r3, [r7, #20]
87803bac:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803bae:	f107 0310 	add.w	r3, r7, #16
87803bb2:	4619      	mov	r1, r3
87803bb4:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803bb6:	f7fe fb79 	bl	878022ac <simple_strtoul>
87803bba:	4602      	mov	r2, r0
87803bbc:	697b      	ldr	r3, [r7, #20]
87803bbe:	601a      	str	r2, [r3, #0]
87803bc0:	bf00      	nop
87803bc2:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803bc4:	3301      	adds	r3, #1
87803bc6:	65fb      	str	r3, [r7, #92]	; 0x5c
87803bc8:	693b      	ldr	r3, [r7, #16]
87803bca:	2b00      	cmp	r3, #0
87803bcc:	d100      	bne.n	87803bd0 <vsscanf+0x7a4>
87803bce:	e00a      	b.n	87803be6 <vsscanf+0x7ba>
87803bd0:	693b      	ldr	r3, [r7, #16]
87803bd2:	667b      	str	r3, [r7, #100]	; 0x64
87803bd4:	68bb      	ldr	r3, [r7, #8]
87803bd6:	781b      	ldrb	r3, [r3, #0]
87803bd8:	2b00      	cmp	r3, #0
87803bda:	d004      	beq.n	87803be6 <vsscanf+0x7ba>
87803bdc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803bde:	781b      	ldrb	r3, [r3, #0]
87803be0:	2b00      	cmp	r3, #0
87803be2:	f47f ac30 	bne.w	87803446 <vsscanf+0x1a>
87803be6:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803be8:	4618      	mov	r0, r3
87803bea:	376c      	adds	r7, #108	; 0x6c
87803bec:	46bd      	mov	sp, r7
87803bee:	bd90      	pop	{r4, r7, pc}

87803bf0 <sscanf>:
87803bf0:	b40e      	push	{r1, r2, r3}
87803bf2:	b580      	push	{r7, lr}
87803bf4:	b085      	sub	sp, #20
87803bf6:	af00      	add	r7, sp, #0
87803bf8:	6078      	str	r0, [r7, #4]
87803bfa:	f107 0320 	add.w	r3, r7, #32
87803bfe:	60fb      	str	r3, [r7, #12]
87803c00:	69fb      	ldr	r3, [r7, #28]
87803c02:	68fa      	ldr	r2, [r7, #12]
87803c04:	4619      	mov	r1, r3
87803c06:	6878      	ldr	r0, [r7, #4]
87803c08:	f7ff fc10 	bl	8780342c <vsscanf>
87803c0c:	60b8      	str	r0, [r7, #8]
87803c0e:	68bb      	ldr	r3, [r7, #8]
87803c10:	4618      	mov	r0, r3
87803c12:	3714      	adds	r7, #20
87803c14:	46bd      	mov	sp, r7
87803c16:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803c1a:	b003      	add	sp, #12
87803c1c:	4770      	bx	lr
87803c1e:	bf00      	nop

87803c20 <IOMUXC_SetPinMux>:
87803c20:	b480      	push	{r7}
87803c22:	b085      	sub	sp, #20
87803c24:	af00      	add	r7, sp, #0
87803c26:	60f8      	str	r0, [r7, #12]
87803c28:	60b9      	str	r1, [r7, #8]
87803c2a:	607a      	str	r2, [r7, #4]
87803c2c:	603b      	str	r3, [r7, #0]
87803c2e:	68fb      	ldr	r3, [r7, #12]
87803c30:	68ba      	ldr	r2, [r7, #8]
87803c32:	f002 010f 	and.w	r1, r2, #15
87803c36:	69fa      	ldr	r2, [r7, #28]
87803c38:	0112      	lsls	r2, r2, #4
87803c3a:	f002 0210 	and.w	r2, r2, #16
87803c3e:	430a      	orrs	r2, r1
87803c40:	601a      	str	r2, [r3, #0]
87803c42:	687b      	ldr	r3, [r7, #4]
87803c44:	2b00      	cmp	r3, #0
87803c46:	d004      	beq.n	87803c52 <IOMUXC_SetPinMux+0x32>
87803c48:	687b      	ldr	r3, [r7, #4]
87803c4a:	683a      	ldr	r2, [r7, #0]
87803c4c:	f002 0207 	and.w	r2, r2, #7
87803c50:	601a      	str	r2, [r3, #0]
87803c52:	3714      	adds	r7, #20
87803c54:	46bd      	mov	sp, r7
87803c56:	f85d 7b04 	ldr.w	r7, [sp], #4
87803c5a:	4770      	bx	lr

87803c5c <IOMUXC_SetPinConfig>:
87803c5c:	b480      	push	{r7}
87803c5e:	b085      	sub	sp, #20
87803c60:	af00      	add	r7, sp, #0
87803c62:	60f8      	str	r0, [r7, #12]
87803c64:	60b9      	str	r1, [r7, #8]
87803c66:	607a      	str	r2, [r7, #4]
87803c68:	603b      	str	r3, [r7, #0]
87803c6a:	69bb      	ldr	r3, [r7, #24]
87803c6c:	2b00      	cmp	r3, #0
87803c6e:	d002      	beq.n	87803c76 <IOMUXC_SetPinConfig+0x1a>
87803c70:	69bb      	ldr	r3, [r7, #24]
87803c72:	69fa      	ldr	r2, [r7, #28]
87803c74:	601a      	str	r2, [r3, #0]
87803c76:	3714      	adds	r7, #20
87803c78:	46bd      	mov	sp, r7
87803c7a:	f85d 7b04 	ldr.w	r7, [sp], #4
87803c7e:	4770      	bx	lr

87803c80 <lcd_init>:
87803c80:	b580      	push	{r7, lr}
87803c82:	b082      	sub	sp, #8
87803c84:	af00      	add	r7, sp, #0
87803c86:	2300      	movs	r3, #0
87803c88:	80fb      	strh	r3, [r7, #6]
87803c8a:	f000 fa7d 	bl	87804188 <lcd_read_panelid>
87803c8e:	4603      	mov	r3, r0
87803c90:	80fb      	strh	r3, [r7, #6]
87803c92:	88fa      	ldrh	r2, [r7, #6]
87803c94:	f24d 3308 	movw	r3, #54024	; 0xd308
87803c98:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803c9c:	621a      	str	r2, [r3, #32]
87803c9e:	88fb      	ldrh	r3, [r7, #6]
87803ca0:	4619      	mov	r1, r3
87803ca2:	f647 405c 	movw	r0, #31836	; 0x7c5c
87803ca6:	f2c8 7080 	movt	r0, #34688	; 0x8780
87803caa:	f7fd fedf 	bl	87801a6c <printf>
87803cae:	f000 fb6f 	bl	87804390 <lcdgpio_init>
87803cb2:	f000 ffd9 	bl	87804c68 <lcd_reset>
87803cb6:	200a      	movs	r0, #10
87803cb8:	f7fc fc90 	bl	878005dc <delayms>
87803cbc:	f000 ffe2 	bl	87804c84 <lcd_noreset>
87803cc0:	88fb      	ldrh	r3, [r7, #6]
87803cc2:	f244 3242 	movw	r2, #17218	; 0x4342
87803cc6:	4293      	cmp	r3, r2
87803cc8:	d137      	bne.n	87803d3a <lcd_init+0xba>
87803cca:	f24d 3308 	movw	r3, #54024	; 0xd308
87803cce:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803cd2:	f44f 7288 	mov.w	r2, #272	; 0x110
87803cd6:	801a      	strh	r2, [r3, #0]
87803cd8:	f24d 3308 	movw	r3, #54024	; 0xd308
87803cdc:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ce0:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
87803ce4:	805a      	strh	r2, [r3, #2]
87803ce6:	f24d 3308 	movw	r3, #54024	; 0xd308
87803cea:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803cee:	2201      	movs	r2, #1
87803cf0:	80da      	strh	r2, [r3, #6]
87803cf2:	f24d 3308 	movw	r3, #54024	; 0xd308
87803cf6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803cfa:	2208      	movs	r2, #8
87803cfc:	811a      	strh	r2, [r3, #8]
87803cfe:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d02:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d06:	2208      	movs	r2, #8
87803d08:	815a      	strh	r2, [r3, #10]
87803d0a:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d0e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d12:	2201      	movs	r2, #1
87803d14:	819a      	strh	r2, [r3, #12]
87803d16:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d1a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d1e:	2228      	movs	r2, #40	; 0x28
87803d20:	81da      	strh	r2, [r3, #14]
87803d22:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d26:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d2a:	2205      	movs	r2, #5
87803d2c:	821a      	strh	r2, [r3, #16]
87803d2e:	2208      	movs	r2, #8
87803d30:	2108      	movs	r1, #8
87803d32:	201b      	movs	r0, #27
87803d34:	f000 fefc 	bl	87804b30 <lcdclk_init>
87803d38:	e12e      	b.n	87803f98 <lcd_init+0x318>
87803d3a:	88fb      	ldrh	r3, [r7, #6]
87803d3c:	f244 3284 	movw	r2, #17284	; 0x4384
87803d40:	4293      	cmp	r3, r2
87803d42:	d137      	bne.n	87803db4 <lcd_init+0x134>
87803d44:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d48:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d4c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
87803d50:	801a      	strh	r2, [r3, #0]
87803d52:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d56:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d5a:	f44f 7248 	mov.w	r2, #800	; 0x320
87803d5e:	805a      	strh	r2, [r3, #2]
87803d60:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d64:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d68:	2203      	movs	r2, #3
87803d6a:	80da      	strh	r2, [r3, #6]
87803d6c:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d70:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d74:	2220      	movs	r2, #32
87803d76:	811a      	strh	r2, [r3, #8]
87803d78:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d7c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d80:	220d      	movs	r2, #13
87803d82:	815a      	strh	r2, [r3, #10]
87803d84:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d88:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d8c:	2230      	movs	r2, #48	; 0x30
87803d8e:	819a      	strh	r2, [r3, #12]
87803d90:	f24d 3308 	movw	r3, #54024	; 0xd308
87803d94:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d98:	2258      	movs	r2, #88	; 0x58
87803d9a:	81da      	strh	r2, [r3, #14]
87803d9c:	f24d 3308 	movw	r3, #54024	; 0xd308
87803da0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803da4:	2228      	movs	r2, #40	; 0x28
87803da6:	821a      	strh	r2, [r3, #16]
87803da8:	2208      	movs	r2, #8
87803daa:	2104      	movs	r1, #4
87803dac:	202a      	movs	r0, #42	; 0x2a
87803dae:	f000 febf 	bl	87804b30 <lcdclk_init>
87803db2:	e0f1      	b.n	87803f98 <lcd_init+0x318>
87803db4:	88fb      	ldrh	r3, [r7, #6]
87803db6:	f247 0284 	movw	r2, #28804	; 0x7084
87803dba:	4293      	cmp	r3, r2
87803dbc:	d137      	bne.n	87803e2e <lcd_init+0x1ae>
87803dbe:	f24d 3308 	movw	r3, #54024	; 0xd308
87803dc2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803dc6:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
87803dca:	801a      	strh	r2, [r3, #0]
87803dcc:	f24d 3308 	movw	r3, #54024	; 0xd308
87803dd0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803dd4:	f44f 7248 	mov.w	r2, #800	; 0x320
87803dd8:	805a      	strh	r2, [r3, #2]
87803dda:	f24d 3308 	movw	r3, #54024	; 0xd308
87803dde:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803de2:	2201      	movs	r2, #1
87803de4:	80da      	strh	r2, [r3, #6]
87803de6:	f24d 3308 	movw	r3, #54024	; 0xd308
87803dea:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803dee:	2217      	movs	r2, #23
87803df0:	811a      	strh	r2, [r3, #8]
87803df2:	f24d 3308 	movw	r3, #54024	; 0xd308
87803df6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803dfa:	2216      	movs	r2, #22
87803dfc:	815a      	strh	r2, [r3, #10]
87803dfe:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e02:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e06:	2201      	movs	r2, #1
87803e08:	819a      	strh	r2, [r3, #12]
87803e0a:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e0e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e12:	222e      	movs	r2, #46	; 0x2e
87803e14:	81da      	strh	r2, [r3, #14]
87803e16:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e1a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e1e:	22d2      	movs	r2, #210	; 0xd2
87803e20:	821a      	strh	r2, [r3, #16]
87803e22:	2207      	movs	r2, #7
87803e24:	2103      	movs	r1, #3
87803e26:	201e      	movs	r0, #30
87803e28:	f000 fe82 	bl	87804b30 <lcdclk_init>
87803e2c:	e0b4      	b.n	87803f98 <lcd_init+0x318>
87803e2e:	88fb      	ldrh	r3, [r7, #6]
87803e30:	f247 0216 	movw	r2, #28694	; 0x7016
87803e34:	4293      	cmp	r3, r2
87803e36:	d137      	bne.n	87803ea8 <lcd_init+0x228>
87803e38:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e3c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e40:	f44f 7216 	mov.w	r2, #600	; 0x258
87803e44:	801a      	strh	r2, [r3, #0]
87803e46:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e4a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e4e:	f44f 6280 	mov.w	r2, #1024	; 0x400
87803e52:	805a      	strh	r2, [r3, #2]
87803e54:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e58:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e5c:	2203      	movs	r2, #3
87803e5e:	80da      	strh	r2, [r3, #6]
87803e60:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e64:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e68:	2214      	movs	r2, #20
87803e6a:	811a      	strh	r2, [r3, #8]
87803e6c:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e70:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e74:	220c      	movs	r2, #12
87803e76:	815a      	strh	r2, [r3, #10]
87803e78:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e7c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e80:	2214      	movs	r2, #20
87803e82:	819a      	strh	r2, [r3, #12]
87803e84:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e88:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e8c:	228c      	movs	r2, #140	; 0x8c
87803e8e:	81da      	strh	r2, [r3, #14]
87803e90:	f24d 3308 	movw	r3, #54024	; 0xd308
87803e94:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e98:	22a0      	movs	r2, #160	; 0xa0
87803e9a:	821a      	strh	r2, [r3, #16]
87803e9c:	2205      	movs	r2, #5
87803e9e:	2103      	movs	r1, #3
87803ea0:	2020      	movs	r0, #32
87803ea2:	f000 fe45 	bl	87804b30 <lcdclk_init>
87803ea6:	e077      	b.n	87803f98 <lcd_init+0x318>
87803ea8:	88fb      	ldrh	r3, [r7, #6]
87803eaa:	f241 0218 	movw	r2, #4120	; 0x1018
87803eae:	4293      	cmp	r3, r2
87803eb0:	d137      	bne.n	87803f22 <lcd_init+0x2a2>
87803eb2:	f24d 3308 	movw	r3, #54024	; 0xd308
87803eb6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803eba:	f44f 7248 	mov.w	r2, #800	; 0x320
87803ebe:	801a      	strh	r2, [r3, #0]
87803ec0:	f24d 3308 	movw	r3, #54024	; 0xd308
87803ec4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ec8:	f44f 62a0 	mov.w	r2, #1280	; 0x500
87803ecc:	805a      	strh	r2, [r3, #2]
87803ece:	f24d 3308 	movw	r3, #54024	; 0xd308
87803ed2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ed6:	2203      	movs	r2, #3
87803ed8:	80da      	strh	r2, [r3, #6]
87803eda:	f24d 3308 	movw	r3, #54024	; 0xd308
87803ede:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ee2:	220a      	movs	r2, #10
87803ee4:	811a      	strh	r2, [r3, #8]
87803ee6:	f24d 3308 	movw	r3, #54024	; 0xd308
87803eea:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803eee:	220a      	movs	r2, #10
87803ef0:	815a      	strh	r2, [r3, #10]
87803ef2:	f24d 3308 	movw	r3, #54024	; 0xd308
87803ef6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803efa:	220a      	movs	r2, #10
87803efc:	819a      	strh	r2, [r3, #12]
87803efe:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f02:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f06:	2250      	movs	r2, #80	; 0x50
87803f08:	81da      	strh	r2, [r3, #14]
87803f0a:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f0e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f12:	2246      	movs	r2, #70	; 0x46
87803f14:	821a      	strh	r2, [r3, #16]
87803f16:	2205      	movs	r2, #5
87803f18:	2103      	movs	r1, #3
87803f1a:	2023      	movs	r0, #35	; 0x23
87803f1c:	f000 fe08 	bl	87804b30 <lcdclk_init>
87803f20:	e03a      	b.n	87803f98 <lcd_init+0x318>
87803f22:	88fb      	ldrh	r3, [r7, #6]
87803f24:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
87803f28:	d136      	bne.n	87803f98 <lcd_init+0x318>
87803f2a:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f2e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f32:	f44f 7240 	mov.w	r2, #768	; 0x300
87803f36:	801a      	strh	r2, [r3, #0]
87803f38:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f3c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f40:	f240 5256 	movw	r2, #1366	; 0x556
87803f44:	805a      	strh	r2, [r3, #2]
87803f46:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f4a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f4e:	2203      	movs	r2, #3
87803f50:	80da      	strh	r2, [r3, #6]
87803f52:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f56:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f5a:	2218      	movs	r2, #24
87803f5c:	811a      	strh	r2, [r3, #8]
87803f5e:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f62:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f66:	2203      	movs	r2, #3
87803f68:	815a      	strh	r2, [r3, #10]
87803f6a:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f6e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f72:	228f      	movs	r2, #143	; 0x8f
87803f74:	819a      	strh	r2, [r3, #12]
87803f76:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f7a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f7e:	22d5      	movs	r2, #213	; 0xd5
87803f80:	81da      	strh	r2, [r3, #14]
87803f82:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f86:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f8a:	2246      	movs	r2, #70	; 0x46
87803f8c:	821a      	strh	r2, [r3, #16]
87803f8e:	2203      	movs	r2, #3
87803f90:	2103      	movs	r1, #3
87803f92:	2020      	movs	r0, #32
87803f94:	f000 fdcc 	bl	87804b30 <lcdclk_init>
87803f98:	f24d 3308 	movw	r3, #54024	; 0xd308
87803f9c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fa0:	2204      	movs	r2, #4
87803fa2:	711a      	strb	r2, [r3, #4]
87803fa4:	f24d 3308 	movw	r3, #54024	; 0xd308
87803fa8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fac:	f04f 4209 	mov.w	r2, #2298478592	; 0x89000000
87803fb0:	615a      	str	r2, [r3, #20]
87803fb2:	f24d 3308 	movw	r3, #54024	; 0xd308
87803fb6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fba:	f06f 427f 	mvn.w	r2, #4278190080	; 0xff000000
87803fbe:	61da      	str	r2, [r3, #28]
87803fc0:	f24d 3308 	movw	r3, #54024	; 0xd308
87803fc4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fc8:	2200      	movs	r2, #0
87803fca:	619a      	str	r2, [r3, #24]
87803fcc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87803fd0:	f2c0 221c 	movt	r2, #540	; 0x21c
87803fd4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87803fd8:	f2c0 231c 	movt	r3, #540	; 0x21c
87803fdc:	681b      	ldr	r3, [r3, #0]
87803fde:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
87803fe2:	f443 6372 	orr.w	r3, r3, #3872	; 0xf20
87803fe6:	6013      	str	r3, [r2, #0]
87803fe8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87803fec:	f2c0 231c 	movt	r3, #540	; 0x21c
87803ff0:	f44f 22e0 	mov.w	r2, #458752	; 0x70000
87803ff4:	611a      	str	r2, [r3, #16]
87803ff6:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87803ffa:	f2c0 231c 	movt	r3, #540	; 0x21c
87803ffe:	f24d 3208 	movw	r2, #54024	; 0xd308
87804002:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804006:	8812      	ldrh	r2, [r2, #0]
87804008:	0411      	lsls	r1, r2, #16
8780400a:	f24d 3208 	movw	r2, #54024	; 0xd308
8780400e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804012:	8852      	ldrh	r2, [r2, #2]
87804014:	430a      	orrs	r2, r1
87804016:	631a      	str	r2, [r3, #48]	; 0x30
87804018:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780401c:	f2c0 231c 	movt	r3, #540	; 0x21c
87804020:	2200      	movs	r2, #0
87804022:	671a      	str	r2, [r3, #112]	; 0x70
87804024:	88fb      	ldrh	r3, [r7, #6]
87804026:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
8780402a:	d10e      	bne.n	8780404a <lcd_init+0x3ca>
8780402c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804030:	f2c0 231c 	movt	r3, #540	; 0x21c
87804034:	f24d 3208 	movw	r2, #54024	; 0xd308
87804038:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780403c:	88d2      	ldrh	r2, [r2, #6]
8780403e:	f042 5291 	orr.w	r2, r2, #304087040	; 0x12200000
87804042:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
87804046:	671a      	str	r2, [r3, #112]	; 0x70
87804048:	e00d      	b.n	87804066 <lcd_init+0x3e6>
8780404a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780404e:	f2c0 231c 	movt	r3, #540	; 0x21c
87804052:	f24d 3208 	movw	r2, #54024	; 0xd308
87804056:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780405a:	88d2      	ldrh	r2, [r2, #6]
8780405c:	f042 5289 	orr.w	r2, r2, #287309824	; 0x11200000
87804060:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
87804064:	671a      	str	r2, [r3, #112]	; 0x70
87804066:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780406a:	f2c0 231c 	movt	r3, #540	; 0x21c
8780406e:	f24d 3208 	movw	r2, #54024	; 0xd308
87804072:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804076:	8812      	ldrh	r2, [r2, #0]
87804078:	4611      	mov	r1, r2
8780407a:	f24d 3208 	movw	r2, #54024	; 0xd308
8780407e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804082:	88d2      	ldrh	r2, [r2, #6]
87804084:	4411      	add	r1, r2
87804086:	f24d 3208 	movw	r2, #54024	; 0xd308
8780408a:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780408e:	8952      	ldrh	r2, [r2, #10]
87804090:	4411      	add	r1, r2
87804092:	f24d 3208 	movw	r2, #54024	; 0xd308
87804096:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780409a:	8912      	ldrh	r2, [r2, #8]
8780409c:	440a      	add	r2, r1
8780409e:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878040a2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878040a6:	f2c0 231c 	movt	r3, #540	; 0x21c
878040aa:	f24d 3208 	movw	r2, #54024	; 0xd308
878040ae:	f2c8 7280 	movt	r2, #34688	; 0x8780
878040b2:	8992      	ldrh	r2, [r2, #12]
878040b4:	0491      	lsls	r1, r2, #18
878040b6:	f24d 3208 	movw	r2, #54024	; 0xd308
878040ba:	f2c8 7280 	movt	r2, #34688	; 0x8780
878040be:	8852      	ldrh	r2, [r2, #2]
878040c0:	4610      	mov	r0, r2
878040c2:	f24d 3208 	movw	r2, #54024	; 0xd308
878040c6:	f2c8 7280 	movt	r2, #34688	; 0x8780
878040ca:	8992      	ldrh	r2, [r2, #12]
878040cc:	4410      	add	r0, r2
878040ce:	f24d 3208 	movw	r2, #54024	; 0xd308
878040d2:	f2c8 7280 	movt	r2, #34688	; 0x8780
878040d6:	8a12      	ldrh	r2, [r2, #16]
878040d8:	4410      	add	r0, r2
878040da:	f24d 3208 	movw	r2, #54024	; 0xd308
878040de:	f2c8 7280 	movt	r2, #34688	; 0x8780
878040e2:	89d2      	ldrh	r2, [r2, #14]
878040e4:	4402      	add	r2, r0
878040e6:	430a      	orrs	r2, r1
878040e8:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
878040ec:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878040f0:	f2c0 231c 	movt	r3, #540	; 0x21c
878040f4:	f24d 3208 	movw	r2, #54024	; 0xd308
878040f8:	f2c8 7280 	movt	r2, #34688	; 0x8780
878040fc:	89d2      	ldrh	r2, [r2, #14]
878040fe:	4611      	mov	r1, r2
87804100:	f24d 3208 	movw	r2, #54024	; 0xd308
87804104:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804108:	8992      	ldrh	r2, [r2, #12]
8780410a:	440a      	add	r2, r1
8780410c:	0411      	lsls	r1, r2, #16
8780410e:	f24d 3208 	movw	r2, #54024	; 0xd308
87804112:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804116:	8912      	ldrh	r2, [r2, #8]
87804118:	4610      	mov	r0, r2
8780411a:	f24d 3208 	movw	r2, #54024	; 0xd308
8780411e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804122:	88d2      	ldrh	r2, [r2, #6]
87804124:	4402      	add	r2, r0
87804126:	430a      	orrs	r2, r1
87804128:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
8780412c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804130:	f2c0 231c 	movt	r3, #540	; 0x21c
87804134:	f24d 3208 	movw	r2, #54024	; 0xd308
87804138:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780413c:	8852      	ldrh	r2, [r2, #2]
8780413e:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
87804142:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
87804146:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780414a:	f2c0 231c 	movt	r3, #540	; 0x21c
8780414e:	f24d 3208 	movw	r2, #54024	; 0xd308
87804152:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804156:	6952      	ldr	r2, [r2, #20]
87804158:	641a      	str	r2, [r3, #64]	; 0x40
8780415a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780415e:	f2c0 231c 	movt	r3, #540	; 0x21c
87804162:	f24d 3208 	movw	r2, #54024	; 0xd308
87804166:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780416a:	6952      	ldr	r2, [r2, #20]
8780416c:	651a      	str	r2, [r3, #80]	; 0x50
8780416e:	f000 fd95 	bl	87804c9c <lcd_enable>
87804172:	200a      	movs	r0, #10
87804174:	f7fc fa32 	bl	878005dc <delayms>
87804178:	f06f 407f 	mvn.w	r0, #4278190080	; 0xff000000
8780417c:	f000 fdf2 	bl	87804d64 <lcd_clear>
87804180:	3708      	adds	r7, #8
87804182:	46bd      	mov	sp, r7
87804184:	bd80      	pop	{r7, pc}
87804186:	bf00      	nop

87804188 <lcd_read_panelid>:
87804188:	b580      	push	{r7, lr}
8780418a:	b086      	sub	sp, #24
8780418c:	af02      	add	r7, sp, #8
8780418e:	2300      	movs	r3, #0
87804190:	73fb      	strb	r3, [r7, #15]
87804192:	2300      	movs	r3, #0
87804194:	9301      	str	r3, [sp, #4]
87804196:	f44f 7367 	mov.w	r3, #924	; 0x39c
8780419a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780419e:	9300      	str	r3, [sp, #0]
878041a0:	2300      	movs	r3, #0
878041a2:	2200      	movs	r2, #0
878041a4:	2105      	movs	r1, #5
878041a6:	f44f 7088 	mov.w	r0, #272	; 0x110
878041aa:	f2c0 200e 	movt	r0, #526	; 0x20e
878041ae:	f7ff fd37 	bl	87803c20 <IOMUXC_SetPinMux>
878041b2:	f241 03b0 	movw	r3, #4272	; 0x10b0
878041b6:	9301      	str	r3, [sp, #4]
878041b8:	f44f 7367 	mov.w	r3, #924	; 0x39c
878041bc:	f2c0 230e 	movt	r3, #526	; 0x20e
878041c0:	9300      	str	r3, [sp, #0]
878041c2:	2300      	movs	r3, #0
878041c4:	2200      	movs	r2, #0
878041c6:	2105      	movs	r1, #5
878041c8:	f44f 7088 	mov.w	r0, #272	; 0x110
878041cc:	f2c0 200e 	movt	r0, #526	; 0x20e
878041d0:	f7ff fd44 	bl	87803c5c <IOMUXC_SetPinConfig>
878041d4:	2301      	movs	r3, #1
878041d6:	603b      	str	r3, [r7, #0]
878041d8:	2301      	movs	r3, #1
878041da:	713b      	strb	r3, [r7, #4]
878041dc:	463b      	mov	r3, r7
878041de:	461a      	mov	r2, r3
878041e0:	2103      	movs	r1, #3
878041e2:	f44f 4080 	mov.w	r0, #16384	; 0x4000
878041e6:	f2c0 200a 	movt	r0, #522	; 0x20a
878041ea:	f7fc fb67 	bl	878008bc <gpio_init>
878041ee:	2300      	movs	r3, #0
878041f0:	9301      	str	r3, [sp, #4]
878041f2:	f44f 7370 	mov.w	r3, #960	; 0x3c0
878041f6:	f2c0 230e 	movt	r3, #526	; 0x20e
878041fa:	9300      	str	r3, [sp, #0]
878041fc:	2300      	movs	r3, #0
878041fe:	2200      	movs	r2, #0
87804200:	2105      	movs	r1, #5
87804202:	f44f 709a 	mov.w	r0, #308	; 0x134
87804206:	f2c0 200e 	movt	r0, #526	; 0x20e
8780420a:	f7ff fd09 	bl	87803c20 <IOMUXC_SetPinMux>
8780420e:	2300      	movs	r3, #0
87804210:	9301      	str	r3, [sp, #4]
87804212:	f44f 7378 	mov.w	r3, #992	; 0x3e0
87804216:	f2c0 230e 	movt	r3, #526	; 0x20e
8780421a:	9300      	str	r3, [sp, #0]
8780421c:	2300      	movs	r3, #0
8780421e:	2200      	movs	r2, #0
87804220:	2105      	movs	r1, #5
87804222:	f44f 70aa 	mov.w	r0, #340	; 0x154
87804226:	f2c0 200e 	movt	r0, #526	; 0x20e
8780422a:	f7ff fcf9 	bl	87803c20 <IOMUXC_SetPinMux>
8780422e:	2300      	movs	r3, #0
87804230:	9301      	str	r3, [sp, #4]
87804232:	f44f 6380 	mov.w	r3, #1024	; 0x400
87804236:	f2c0 230e 	movt	r3, #526	; 0x20e
8780423a:	9300      	str	r3, [sp, #0]
8780423c:	2300      	movs	r3, #0
8780423e:	2200      	movs	r2, #0
87804240:	2105      	movs	r1, #5
87804242:	f44f 70ba 	mov.w	r0, #372	; 0x174
87804246:	f2c0 200e 	movt	r0, #526	; 0x20e
8780424a:	f7ff fce9 	bl	87803c20 <IOMUXC_SetPinMux>
8780424e:	f24f 0380 	movw	r3, #61568	; 0xf080
87804252:	9301      	str	r3, [sp, #4]
87804254:	f44f 7370 	mov.w	r3, #960	; 0x3c0
87804258:	f2c0 230e 	movt	r3, #526	; 0x20e
8780425c:	9300      	str	r3, [sp, #0]
8780425e:	2300      	movs	r3, #0
87804260:	2200      	movs	r2, #0
87804262:	2105      	movs	r1, #5
87804264:	f44f 709a 	mov.w	r0, #308	; 0x134
87804268:	f2c0 200e 	movt	r0, #526	; 0x20e
8780426c:	f7ff fcf6 	bl	87803c5c <IOMUXC_SetPinConfig>
87804270:	f24f 0380 	movw	r3, #61568	; 0xf080
87804274:	9301      	str	r3, [sp, #4]
87804276:	f44f 7378 	mov.w	r3, #992	; 0x3e0
8780427a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780427e:	9300      	str	r3, [sp, #0]
87804280:	2300      	movs	r3, #0
87804282:	2200      	movs	r2, #0
87804284:	2105      	movs	r1, #5
87804286:	f44f 70aa 	mov.w	r0, #340	; 0x154
8780428a:	f2c0 200e 	movt	r0, #526	; 0x20e
8780428e:	f7ff fce5 	bl	87803c5c <IOMUXC_SetPinConfig>
87804292:	f24f 0380 	movw	r3, #61568	; 0xf080
87804296:	9301      	str	r3, [sp, #4]
87804298:	f44f 6380 	mov.w	r3, #1024	; 0x400
8780429c:	f2c0 230e 	movt	r3, #526	; 0x20e
878042a0:	9300      	str	r3, [sp, #0]
878042a2:	2300      	movs	r3, #0
878042a4:	2200      	movs	r2, #0
878042a6:	2105      	movs	r1, #5
878042a8:	f44f 70ba 	mov.w	r0, #372	; 0x174
878042ac:	f2c0 200e 	movt	r0, #526	; 0x20e
878042b0:	f7ff fcd4 	bl	87803c5c <IOMUXC_SetPinConfig>
878042b4:	2300      	movs	r3, #0
878042b6:	603b      	str	r3, [r7, #0]
878042b8:	463b      	mov	r3, r7
878042ba:	461a      	mov	r2, r3
878042bc:	210c      	movs	r1, #12
878042be:	f44f 4080 	mov.w	r0, #16384	; 0x4000
878042c2:	f2c0 200a 	movt	r0, #522	; 0x20a
878042c6:	f7fc faf9 	bl	878008bc <gpio_init>
878042ca:	463b      	mov	r3, r7
878042cc:	461a      	mov	r2, r3
878042ce:	2114      	movs	r1, #20
878042d0:	f44f 4080 	mov.w	r0, #16384	; 0x4000
878042d4:	f2c0 200a 	movt	r0, #522	; 0x20a
878042d8:	f7fc faf0 	bl	878008bc <gpio_init>
878042dc:	463b      	mov	r3, r7
878042de:	461a      	mov	r2, r3
878042e0:	211c      	movs	r1, #28
878042e2:	f44f 4080 	mov.w	r0, #16384	; 0x4000
878042e6:	f2c0 200a 	movt	r0, #522	; 0x20a
878042ea:	f7fc fae7 	bl	878008bc <gpio_init>
878042ee:	211c      	movs	r1, #28
878042f0:	f44f 4080 	mov.w	r0, #16384	; 0x4000
878042f4:	f2c0 200a 	movt	r0, #522	; 0x20a
878042f8:	f7fc fb1a 	bl	87800930 <gpio_pinread>
878042fc:	4603      	mov	r3, r0
878042fe:	73fb      	strb	r3, [r7, #15]
87804300:	2114      	movs	r1, #20
87804302:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804306:	f2c0 200a 	movt	r0, #522	; 0x20a
8780430a:	f7fc fb11 	bl	87800930 <gpio_pinread>
8780430e:	4603      	mov	r3, r0
87804310:	b2db      	uxtb	r3, r3
87804312:	005b      	lsls	r3, r3, #1
87804314:	b2da      	uxtb	r2, r3
87804316:	7bfb      	ldrb	r3, [r7, #15]
87804318:	4313      	orrs	r3, r2
8780431a:	b2db      	uxtb	r3, r3
8780431c:	73fb      	strb	r3, [r7, #15]
8780431e:	210c      	movs	r1, #12
87804320:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804324:	f2c0 200a 	movt	r0, #522	; 0x20a
87804328:	f7fc fb02 	bl	87800930 <gpio_pinread>
8780432c:	4603      	mov	r3, r0
8780432e:	b2db      	uxtb	r3, r3
87804330:	009b      	lsls	r3, r3, #2
87804332:	b2da      	uxtb	r2, r3
87804334:	7bfb      	ldrb	r3, [r7, #15]
87804336:	4313      	orrs	r3, r2
87804338:	b2db      	uxtb	r3, r3
8780433a:	73fb      	strb	r3, [r7, #15]
8780433c:	7bfb      	ldrb	r3, [r7, #15]
8780433e:	2b00      	cmp	r3, #0
87804340:	d102      	bne.n	87804348 <lcd_read_panelid+0x1c0>
87804342:	f244 3342 	movw	r3, #17218	; 0x4342
87804346:	e01e      	b.n	87804386 <lcd_read_panelid+0x1fe>
87804348:	7bfb      	ldrb	r3, [r7, #15]
8780434a:	2b01      	cmp	r3, #1
8780434c:	d102      	bne.n	87804354 <lcd_read_panelid+0x1cc>
8780434e:	f247 0384 	movw	r3, #28804	; 0x7084
87804352:	e018      	b.n	87804386 <lcd_read_panelid+0x1fe>
87804354:	7bfb      	ldrb	r3, [r7, #15]
87804356:	2b02      	cmp	r3, #2
87804358:	d102      	bne.n	87804360 <lcd_read_panelid+0x1d8>
8780435a:	f247 0316 	movw	r3, #28694	; 0x7016
8780435e:	e012      	b.n	87804386 <lcd_read_panelid+0x1fe>
87804360:	7bfb      	ldrb	r3, [r7, #15]
87804362:	2b04      	cmp	r3, #4
87804364:	d102      	bne.n	8780436c <lcd_read_panelid+0x1e4>
87804366:	f244 3384 	movw	r3, #17284	; 0x4384
8780436a:	e00c      	b.n	87804386 <lcd_read_panelid+0x1fe>
8780436c:	7bfb      	ldrb	r3, [r7, #15]
8780436e:	2b05      	cmp	r3, #5
87804370:	d102      	bne.n	87804378 <lcd_read_panelid+0x1f0>
87804372:	f241 0318 	movw	r3, #4120	; 0x1018
87804376:	e006      	b.n	87804386 <lcd_read_panelid+0x1fe>
87804378:	7bfb      	ldrb	r3, [r7, #15]
8780437a:	2b07      	cmp	r3, #7
8780437c:	d102      	bne.n	87804384 <lcd_read_panelid+0x1fc>
8780437e:	f44f 437f 	mov.w	r3, #65280	; 0xff00
87804382:	e000      	b.n	87804386 <lcd_read_panelid+0x1fe>
87804384:	2300      	movs	r3, #0
87804386:	4618      	mov	r0, r3
87804388:	3710      	adds	r7, #16
8780438a:	46bd      	mov	sp, r7
8780438c:	bd80      	pop	{r7, pc}
8780438e:	bf00      	nop

87804390 <lcdgpio_init>:
87804390:	b580      	push	{r7, lr}
87804392:	b086      	sub	sp, #24
87804394:	af02      	add	r7, sp, #8
87804396:	2300      	movs	r3, #0
87804398:	9301      	str	r3, [sp, #4]
8780439a:	f44f 7369 	mov.w	r3, #932	; 0x3a4
8780439e:	f2c0 230e 	movt	r3, #526	; 0x20e
878043a2:	9300      	str	r3, [sp, #0]
878043a4:	2300      	movs	r3, #0
878043a6:	2200      	movs	r2, #0
878043a8:	2100      	movs	r1, #0
878043aa:	f44f 708c 	mov.w	r0, #280	; 0x118
878043ae:	f2c0 200e 	movt	r0, #526	; 0x20e
878043b2:	f7ff fc35 	bl	87803c20 <IOMUXC_SetPinMux>
878043b6:	2300      	movs	r3, #0
878043b8:	9301      	str	r3, [sp, #4]
878043ba:	f44f 736a 	mov.w	r3, #936	; 0x3a8
878043be:	f2c0 230e 	movt	r3, #526	; 0x20e
878043c2:	9300      	str	r3, [sp, #0]
878043c4:	2300      	movs	r3, #0
878043c6:	2200      	movs	r2, #0
878043c8:	2100      	movs	r1, #0
878043ca:	f44f 708e 	mov.w	r0, #284	; 0x11c
878043ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878043d2:	f7ff fc25 	bl	87803c20 <IOMUXC_SetPinMux>
878043d6:	2300      	movs	r3, #0
878043d8:	9301      	str	r3, [sp, #4]
878043da:	f44f 736b 	mov.w	r3, #940	; 0x3ac
878043de:	f2c0 230e 	movt	r3, #526	; 0x20e
878043e2:	9300      	str	r3, [sp, #0]
878043e4:	2300      	movs	r3, #0
878043e6:	2200      	movs	r2, #0
878043e8:	2100      	movs	r1, #0
878043ea:	f44f 7090 	mov.w	r0, #288	; 0x120
878043ee:	f2c0 200e 	movt	r0, #526	; 0x20e
878043f2:	f7ff fc15 	bl	87803c20 <IOMUXC_SetPinMux>
878043f6:	2300      	movs	r3, #0
878043f8:	9301      	str	r3, [sp, #4]
878043fa:	f44f 736c 	mov.w	r3, #944	; 0x3b0
878043fe:	f2c0 230e 	movt	r3, #526	; 0x20e
87804402:	9300      	str	r3, [sp, #0]
87804404:	2300      	movs	r3, #0
87804406:	2200      	movs	r2, #0
87804408:	2100      	movs	r1, #0
8780440a:	f44f 7092 	mov.w	r0, #292	; 0x124
8780440e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804412:	f7ff fc05 	bl	87803c20 <IOMUXC_SetPinMux>
87804416:	2300      	movs	r3, #0
87804418:	9301      	str	r3, [sp, #4]
8780441a:	f44f 736d 	mov.w	r3, #948	; 0x3b4
8780441e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804422:	9300      	str	r3, [sp, #0]
87804424:	2300      	movs	r3, #0
87804426:	2200      	movs	r2, #0
87804428:	2100      	movs	r1, #0
8780442a:	f44f 7094 	mov.w	r0, #296	; 0x128
8780442e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804432:	f7ff fbf5 	bl	87803c20 <IOMUXC_SetPinMux>
87804436:	2300      	movs	r3, #0
87804438:	9301      	str	r3, [sp, #4]
8780443a:	f44f 736e 	mov.w	r3, #952	; 0x3b8
8780443e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804442:	9300      	str	r3, [sp, #0]
87804444:	2300      	movs	r3, #0
87804446:	2200      	movs	r2, #0
87804448:	2100      	movs	r1, #0
8780444a:	f44f 7096 	mov.w	r0, #300	; 0x12c
8780444e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804452:	f7ff fbe5 	bl	87803c20 <IOMUXC_SetPinMux>
87804456:	2300      	movs	r3, #0
87804458:	9301      	str	r3, [sp, #4]
8780445a:	f44f 736f 	mov.w	r3, #956	; 0x3bc
8780445e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804462:	9300      	str	r3, [sp, #0]
87804464:	2300      	movs	r3, #0
87804466:	2200      	movs	r2, #0
87804468:	2100      	movs	r1, #0
8780446a:	f44f 7098 	mov.w	r0, #304	; 0x130
8780446e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804472:	f7ff fbd5 	bl	87803c20 <IOMUXC_SetPinMux>
87804476:	2300      	movs	r3, #0
87804478:	9301      	str	r3, [sp, #4]
8780447a:	f44f 7370 	mov.w	r3, #960	; 0x3c0
8780447e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804482:	9300      	str	r3, [sp, #0]
87804484:	2300      	movs	r3, #0
87804486:	2200      	movs	r2, #0
87804488:	2100      	movs	r1, #0
8780448a:	f44f 709a 	mov.w	r0, #308	; 0x134
8780448e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804492:	f7ff fbc5 	bl	87803c20 <IOMUXC_SetPinMux>
87804496:	2300      	movs	r3, #0
87804498:	9301      	str	r3, [sp, #4]
8780449a:	f44f 7371 	mov.w	r3, #964	; 0x3c4
8780449e:	f2c0 230e 	movt	r3, #526	; 0x20e
878044a2:	9300      	str	r3, [sp, #0]
878044a4:	2300      	movs	r3, #0
878044a6:	2200      	movs	r2, #0
878044a8:	2100      	movs	r1, #0
878044aa:	f44f 709c 	mov.w	r0, #312	; 0x138
878044ae:	f2c0 200e 	movt	r0, #526	; 0x20e
878044b2:	f7ff fbb5 	bl	87803c20 <IOMUXC_SetPinMux>
878044b6:	2300      	movs	r3, #0
878044b8:	9301      	str	r3, [sp, #4]
878044ba:	f44f 7372 	mov.w	r3, #968	; 0x3c8
878044be:	f2c0 230e 	movt	r3, #526	; 0x20e
878044c2:	9300      	str	r3, [sp, #0]
878044c4:	2300      	movs	r3, #0
878044c6:	2200      	movs	r2, #0
878044c8:	2100      	movs	r1, #0
878044ca:	f44f 709e 	mov.w	r0, #316	; 0x13c
878044ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878044d2:	f7ff fba5 	bl	87803c20 <IOMUXC_SetPinMux>
878044d6:	2300      	movs	r3, #0
878044d8:	9301      	str	r3, [sp, #4]
878044da:	f44f 7373 	mov.w	r3, #972	; 0x3cc
878044de:	f2c0 230e 	movt	r3, #526	; 0x20e
878044e2:	9300      	str	r3, [sp, #0]
878044e4:	2300      	movs	r3, #0
878044e6:	2200      	movs	r2, #0
878044e8:	2100      	movs	r1, #0
878044ea:	f44f 70a0 	mov.w	r0, #320	; 0x140
878044ee:	f2c0 200e 	movt	r0, #526	; 0x20e
878044f2:	f7ff fb95 	bl	87803c20 <IOMUXC_SetPinMux>
878044f6:	2300      	movs	r3, #0
878044f8:	9301      	str	r3, [sp, #4]
878044fa:	f44f 7374 	mov.w	r3, #976	; 0x3d0
878044fe:	f2c0 230e 	movt	r3, #526	; 0x20e
87804502:	9300      	str	r3, [sp, #0]
87804504:	2300      	movs	r3, #0
87804506:	2200      	movs	r2, #0
87804508:	2100      	movs	r1, #0
8780450a:	f44f 70a2 	mov.w	r0, #324	; 0x144
8780450e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804512:	f7ff fb85 	bl	87803c20 <IOMUXC_SetPinMux>
87804516:	2300      	movs	r3, #0
87804518:	9301      	str	r3, [sp, #4]
8780451a:	f44f 7375 	mov.w	r3, #980	; 0x3d4
8780451e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804522:	9300      	str	r3, [sp, #0]
87804524:	2300      	movs	r3, #0
87804526:	2200      	movs	r2, #0
87804528:	2100      	movs	r1, #0
8780452a:	f44f 70a4 	mov.w	r0, #328	; 0x148
8780452e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804532:	f7ff fb75 	bl	87803c20 <IOMUXC_SetPinMux>
87804536:	2300      	movs	r3, #0
87804538:	9301      	str	r3, [sp, #4]
8780453a:	f44f 7376 	mov.w	r3, #984	; 0x3d8
8780453e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804542:	9300      	str	r3, [sp, #0]
87804544:	2300      	movs	r3, #0
87804546:	2200      	movs	r2, #0
87804548:	2100      	movs	r1, #0
8780454a:	f44f 70a6 	mov.w	r0, #332	; 0x14c
8780454e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804552:	f7ff fb65 	bl	87803c20 <IOMUXC_SetPinMux>
87804556:	2300      	movs	r3, #0
87804558:	9301      	str	r3, [sp, #4]
8780455a:	f44f 7377 	mov.w	r3, #988	; 0x3dc
8780455e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804562:	9300      	str	r3, [sp, #0]
87804564:	2300      	movs	r3, #0
87804566:	2200      	movs	r2, #0
87804568:	2100      	movs	r1, #0
8780456a:	f44f 70a8 	mov.w	r0, #336	; 0x150
8780456e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804572:	f7ff fb55 	bl	87803c20 <IOMUXC_SetPinMux>
87804576:	2300      	movs	r3, #0
87804578:	9301      	str	r3, [sp, #4]
8780457a:	f44f 7378 	mov.w	r3, #992	; 0x3e0
8780457e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804582:	9300      	str	r3, [sp, #0]
87804584:	2300      	movs	r3, #0
87804586:	2200      	movs	r2, #0
87804588:	2100      	movs	r1, #0
8780458a:	f44f 70aa 	mov.w	r0, #340	; 0x154
8780458e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804592:	f7ff fb45 	bl	87803c20 <IOMUXC_SetPinMux>
87804596:	2300      	movs	r3, #0
87804598:	9301      	str	r3, [sp, #4]
8780459a:	f44f 7379 	mov.w	r3, #996	; 0x3e4
8780459e:	f2c0 230e 	movt	r3, #526	; 0x20e
878045a2:	9300      	str	r3, [sp, #0]
878045a4:	2300      	movs	r3, #0
878045a6:	2200      	movs	r2, #0
878045a8:	2100      	movs	r1, #0
878045aa:	f44f 70ac 	mov.w	r0, #344	; 0x158
878045ae:	f2c0 200e 	movt	r0, #526	; 0x20e
878045b2:	f7ff fb35 	bl	87803c20 <IOMUXC_SetPinMux>
878045b6:	2300      	movs	r3, #0
878045b8:	9301      	str	r3, [sp, #4]
878045ba:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
878045be:	f2c0 230e 	movt	r3, #526	; 0x20e
878045c2:	9300      	str	r3, [sp, #0]
878045c4:	2300      	movs	r3, #0
878045c6:	2200      	movs	r2, #0
878045c8:	2100      	movs	r1, #0
878045ca:	f44f 70ae 	mov.w	r0, #348	; 0x15c
878045ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878045d2:	f7ff fb25 	bl	87803c20 <IOMUXC_SetPinMux>
878045d6:	2300      	movs	r3, #0
878045d8:	9301      	str	r3, [sp, #4]
878045da:	f44f 737b 	mov.w	r3, #1004	; 0x3ec
878045de:	f2c0 230e 	movt	r3, #526	; 0x20e
878045e2:	9300      	str	r3, [sp, #0]
878045e4:	2300      	movs	r3, #0
878045e6:	2200      	movs	r2, #0
878045e8:	2100      	movs	r1, #0
878045ea:	f44f 70b0 	mov.w	r0, #352	; 0x160
878045ee:	f2c0 200e 	movt	r0, #526	; 0x20e
878045f2:	f7ff fb15 	bl	87803c20 <IOMUXC_SetPinMux>
878045f6:	2300      	movs	r3, #0
878045f8:	9301      	str	r3, [sp, #4]
878045fa:	f44f 737c 	mov.w	r3, #1008	; 0x3f0
878045fe:	f2c0 230e 	movt	r3, #526	; 0x20e
87804602:	9300      	str	r3, [sp, #0]
87804604:	2300      	movs	r3, #0
87804606:	2200      	movs	r2, #0
87804608:	2100      	movs	r1, #0
8780460a:	f44f 70b2 	mov.w	r0, #356	; 0x164
8780460e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804612:	f7ff fb05 	bl	87803c20 <IOMUXC_SetPinMux>
87804616:	2300      	movs	r3, #0
87804618:	9301      	str	r3, [sp, #4]
8780461a:	f44f 737d 	mov.w	r3, #1012	; 0x3f4
8780461e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804622:	9300      	str	r3, [sp, #0]
87804624:	2300      	movs	r3, #0
87804626:	2200      	movs	r2, #0
87804628:	2100      	movs	r1, #0
8780462a:	f44f 70b4 	mov.w	r0, #360	; 0x168
8780462e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804632:	f7ff faf5 	bl	87803c20 <IOMUXC_SetPinMux>
87804636:	2300      	movs	r3, #0
87804638:	9301      	str	r3, [sp, #4]
8780463a:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
8780463e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804642:	9300      	str	r3, [sp, #0]
87804644:	2300      	movs	r3, #0
87804646:	2200      	movs	r2, #0
87804648:	2100      	movs	r1, #0
8780464a:	f44f 70b6 	mov.w	r0, #364	; 0x16c
8780464e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804652:	f7ff fae5 	bl	87803c20 <IOMUXC_SetPinMux>
87804656:	2300      	movs	r3, #0
87804658:	9301      	str	r3, [sp, #4]
8780465a:	f44f 737f 	mov.w	r3, #1020	; 0x3fc
8780465e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804662:	9300      	str	r3, [sp, #0]
87804664:	2300      	movs	r3, #0
87804666:	2200      	movs	r2, #0
87804668:	2100      	movs	r1, #0
8780466a:	f44f 70b8 	mov.w	r0, #368	; 0x170
8780466e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804672:	f7ff fad5 	bl	87803c20 <IOMUXC_SetPinMux>
87804676:	2300      	movs	r3, #0
87804678:	9301      	str	r3, [sp, #4]
8780467a:	f44f 6380 	mov.w	r3, #1024	; 0x400
8780467e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804682:	9300      	str	r3, [sp, #0]
87804684:	2300      	movs	r3, #0
87804686:	2200      	movs	r2, #0
87804688:	2100      	movs	r1, #0
8780468a:	f44f 70ba 	mov.w	r0, #372	; 0x174
8780468e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804692:	f7ff fac5 	bl	87803c20 <IOMUXC_SetPinMux>
87804696:	2300      	movs	r3, #0
87804698:	9301      	str	r3, [sp, #4]
8780469a:	f44f 7364 	mov.w	r3, #912	; 0x390
8780469e:	f2c0 230e 	movt	r3, #526	; 0x20e
878046a2:	9300      	str	r3, [sp, #0]
878046a4:	2300      	movs	r3, #0
878046a6:	2200      	movs	r2, #0
878046a8:	2100      	movs	r1, #0
878046aa:	f44f 7082 	mov.w	r0, #260	; 0x104
878046ae:	f2c0 200e 	movt	r0, #526	; 0x20e
878046b2:	f7ff fab5 	bl	87803c20 <IOMUXC_SetPinMux>
878046b6:	2300      	movs	r3, #0
878046b8:	9301      	str	r3, [sp, #4]
878046ba:	f44f 7365 	mov.w	r3, #916	; 0x394
878046be:	f2c0 230e 	movt	r3, #526	; 0x20e
878046c2:	9300      	str	r3, [sp, #0]
878046c4:	2300      	movs	r3, #0
878046c6:	2200      	movs	r2, #0
878046c8:	2100      	movs	r1, #0
878046ca:	f44f 7084 	mov.w	r0, #264	; 0x108
878046ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878046d2:	f7ff faa5 	bl	87803c20 <IOMUXC_SetPinMux>
878046d6:	2300      	movs	r3, #0
878046d8:	9301      	str	r3, [sp, #4]
878046da:	f44f 7366 	mov.w	r3, #920	; 0x398
878046de:	f2c0 230e 	movt	r3, #526	; 0x20e
878046e2:	9300      	str	r3, [sp, #0]
878046e4:	2300      	movs	r3, #0
878046e6:	f240 52dc 	movw	r2, #1500	; 0x5dc
878046ea:	f2c0 220e 	movt	r2, #526	; 0x20e
878046ee:	2100      	movs	r1, #0
878046f0:	f44f 7086 	mov.w	r0, #268	; 0x10c
878046f4:	f2c0 200e 	movt	r0, #526	; 0x20e
878046f8:	f7ff fa92 	bl	87803c20 <IOMUXC_SetPinMux>
878046fc:	2300      	movs	r3, #0
878046fe:	9301      	str	r3, [sp, #4]
87804700:	f44f 7367 	mov.w	r3, #924	; 0x39c
87804704:	f2c0 230e 	movt	r3, #526	; 0x20e
87804708:	9300      	str	r3, [sp, #0]
8780470a:	2300      	movs	r3, #0
8780470c:	2200      	movs	r2, #0
8780470e:	2100      	movs	r1, #0
87804710:	f44f 7088 	mov.w	r0, #272	; 0x110
87804714:	f2c0 200e 	movt	r0, #526	; 0x20e
87804718:	f7ff fa82 	bl	87803c20 <IOMUXC_SetPinMux>
8780471c:	2300      	movs	r3, #0
8780471e:	9301      	str	r3, [sp, #4]
87804720:	f44f 7342 	mov.w	r3, #776	; 0x308
87804724:	f2c0 230e 	movt	r3, #526	; 0x20e
87804728:	9300      	str	r3, [sp, #0]
8780472a:	2300      	movs	r3, #0
8780472c:	2200      	movs	r2, #0
8780472e:	2105      	movs	r1, #5
87804730:	207c      	movs	r0, #124	; 0x7c
87804732:	f2c0 200e 	movt	r0, #526	; 0x20e
87804736:	f7ff fa73 	bl	87803c20 <IOMUXC_SetPinMux>
8780473a:	f24f 0380 	movw	r3, #61568	; 0xf080
8780473e:	9301      	str	r3, [sp, #4]
87804740:	f44f 7346 	mov.w	r3, #792	; 0x318
87804744:	f2c0 230e 	movt	r3, #526	; 0x20e
87804748:	9300      	str	r3, [sp, #0]
8780474a:	2300      	movs	r3, #0
8780474c:	2200      	movs	r2, #0
8780474e:	2105      	movs	r1, #5
87804750:	208c      	movs	r0, #140	; 0x8c
87804752:	f2c0 200e 	movt	r0, #526	; 0x20e
87804756:	f7ff fa81 	bl	87803c5c <IOMUXC_SetPinConfig>
8780475a:	23b9      	movs	r3, #185	; 0xb9
8780475c:	9301      	str	r3, [sp, #4]
8780475e:	f44f 7369 	mov.w	r3, #932	; 0x3a4
87804762:	f2c0 230e 	movt	r3, #526	; 0x20e
87804766:	9300      	str	r3, [sp, #0]
87804768:	2300      	movs	r3, #0
8780476a:	2200      	movs	r2, #0
8780476c:	2100      	movs	r1, #0
8780476e:	f44f 708c 	mov.w	r0, #280	; 0x118
87804772:	f2c0 200e 	movt	r0, #526	; 0x20e
87804776:	f7ff fa71 	bl	87803c5c <IOMUXC_SetPinConfig>
8780477a:	23b9      	movs	r3, #185	; 0xb9
8780477c:	9301      	str	r3, [sp, #4]
8780477e:	f44f 736a 	mov.w	r3, #936	; 0x3a8
87804782:	f2c0 230e 	movt	r3, #526	; 0x20e
87804786:	9300      	str	r3, [sp, #0]
87804788:	2300      	movs	r3, #0
8780478a:	2200      	movs	r2, #0
8780478c:	2100      	movs	r1, #0
8780478e:	f44f 708e 	mov.w	r0, #284	; 0x11c
87804792:	f2c0 200e 	movt	r0, #526	; 0x20e
87804796:	f7ff fa61 	bl	87803c5c <IOMUXC_SetPinConfig>
8780479a:	23b9      	movs	r3, #185	; 0xb9
8780479c:	9301      	str	r3, [sp, #4]
8780479e:	f44f 736b 	mov.w	r3, #940	; 0x3ac
878047a2:	f2c0 230e 	movt	r3, #526	; 0x20e
878047a6:	9300      	str	r3, [sp, #0]
878047a8:	2300      	movs	r3, #0
878047aa:	2200      	movs	r2, #0
878047ac:	2100      	movs	r1, #0
878047ae:	f44f 7090 	mov.w	r0, #288	; 0x120
878047b2:	f2c0 200e 	movt	r0, #526	; 0x20e
878047b6:	f7ff fa51 	bl	87803c5c <IOMUXC_SetPinConfig>
878047ba:	23b9      	movs	r3, #185	; 0xb9
878047bc:	9301      	str	r3, [sp, #4]
878047be:	f44f 736c 	mov.w	r3, #944	; 0x3b0
878047c2:	f2c0 230e 	movt	r3, #526	; 0x20e
878047c6:	9300      	str	r3, [sp, #0]
878047c8:	2300      	movs	r3, #0
878047ca:	2200      	movs	r2, #0
878047cc:	2100      	movs	r1, #0
878047ce:	f44f 7092 	mov.w	r0, #292	; 0x124
878047d2:	f2c0 200e 	movt	r0, #526	; 0x20e
878047d6:	f7ff fa41 	bl	87803c5c <IOMUXC_SetPinConfig>
878047da:	23b9      	movs	r3, #185	; 0xb9
878047dc:	9301      	str	r3, [sp, #4]
878047de:	f44f 736d 	mov.w	r3, #948	; 0x3b4
878047e2:	f2c0 230e 	movt	r3, #526	; 0x20e
878047e6:	9300      	str	r3, [sp, #0]
878047e8:	2300      	movs	r3, #0
878047ea:	2200      	movs	r2, #0
878047ec:	2100      	movs	r1, #0
878047ee:	f44f 7094 	mov.w	r0, #296	; 0x128
878047f2:	f2c0 200e 	movt	r0, #526	; 0x20e
878047f6:	f7ff fa31 	bl	87803c5c <IOMUXC_SetPinConfig>
878047fa:	23b9      	movs	r3, #185	; 0xb9
878047fc:	9301      	str	r3, [sp, #4]
878047fe:	f44f 736e 	mov.w	r3, #952	; 0x3b8
87804802:	f2c0 230e 	movt	r3, #526	; 0x20e
87804806:	9300      	str	r3, [sp, #0]
87804808:	2300      	movs	r3, #0
8780480a:	2200      	movs	r2, #0
8780480c:	2100      	movs	r1, #0
8780480e:	f44f 7096 	mov.w	r0, #300	; 0x12c
87804812:	f2c0 200e 	movt	r0, #526	; 0x20e
87804816:	f7ff fa21 	bl	87803c5c <IOMUXC_SetPinConfig>
8780481a:	23b9      	movs	r3, #185	; 0xb9
8780481c:	9301      	str	r3, [sp, #4]
8780481e:	f44f 736f 	mov.w	r3, #956	; 0x3bc
87804822:	f2c0 230e 	movt	r3, #526	; 0x20e
87804826:	9300      	str	r3, [sp, #0]
87804828:	2300      	movs	r3, #0
8780482a:	2200      	movs	r2, #0
8780482c:	2100      	movs	r1, #0
8780482e:	f44f 7098 	mov.w	r0, #304	; 0x130
87804832:	f2c0 200e 	movt	r0, #526	; 0x20e
87804836:	f7ff fa11 	bl	87803c5c <IOMUXC_SetPinConfig>
8780483a:	23b9      	movs	r3, #185	; 0xb9
8780483c:	9301      	str	r3, [sp, #4]
8780483e:	f44f 7370 	mov.w	r3, #960	; 0x3c0
87804842:	f2c0 230e 	movt	r3, #526	; 0x20e
87804846:	9300      	str	r3, [sp, #0]
87804848:	2300      	movs	r3, #0
8780484a:	2200      	movs	r2, #0
8780484c:	2100      	movs	r1, #0
8780484e:	f44f 709a 	mov.w	r0, #308	; 0x134
87804852:	f2c0 200e 	movt	r0, #526	; 0x20e
87804856:	f7ff fa01 	bl	87803c5c <IOMUXC_SetPinConfig>
8780485a:	23b9      	movs	r3, #185	; 0xb9
8780485c:	9301      	str	r3, [sp, #4]
8780485e:	f44f 7371 	mov.w	r3, #964	; 0x3c4
87804862:	f2c0 230e 	movt	r3, #526	; 0x20e
87804866:	9300      	str	r3, [sp, #0]
87804868:	2300      	movs	r3, #0
8780486a:	2200      	movs	r2, #0
8780486c:	2100      	movs	r1, #0
8780486e:	f44f 709c 	mov.w	r0, #312	; 0x138
87804872:	f2c0 200e 	movt	r0, #526	; 0x20e
87804876:	f7ff f9f1 	bl	87803c5c <IOMUXC_SetPinConfig>
8780487a:	23b9      	movs	r3, #185	; 0xb9
8780487c:	9301      	str	r3, [sp, #4]
8780487e:	f44f 7372 	mov.w	r3, #968	; 0x3c8
87804882:	f2c0 230e 	movt	r3, #526	; 0x20e
87804886:	9300      	str	r3, [sp, #0]
87804888:	2300      	movs	r3, #0
8780488a:	2200      	movs	r2, #0
8780488c:	2100      	movs	r1, #0
8780488e:	f44f 709e 	mov.w	r0, #316	; 0x13c
87804892:	f2c0 200e 	movt	r0, #526	; 0x20e
87804896:	f7ff f9e1 	bl	87803c5c <IOMUXC_SetPinConfig>
8780489a:	23b9      	movs	r3, #185	; 0xb9
8780489c:	9301      	str	r3, [sp, #4]
8780489e:	f44f 7373 	mov.w	r3, #972	; 0x3cc
878048a2:	f2c0 230e 	movt	r3, #526	; 0x20e
878048a6:	9300      	str	r3, [sp, #0]
878048a8:	2300      	movs	r3, #0
878048aa:	2200      	movs	r2, #0
878048ac:	2100      	movs	r1, #0
878048ae:	f44f 70a0 	mov.w	r0, #320	; 0x140
878048b2:	f2c0 200e 	movt	r0, #526	; 0x20e
878048b6:	f7ff f9d1 	bl	87803c5c <IOMUXC_SetPinConfig>
878048ba:	23b9      	movs	r3, #185	; 0xb9
878048bc:	9301      	str	r3, [sp, #4]
878048be:	f44f 7374 	mov.w	r3, #976	; 0x3d0
878048c2:	f2c0 230e 	movt	r3, #526	; 0x20e
878048c6:	9300      	str	r3, [sp, #0]
878048c8:	2300      	movs	r3, #0
878048ca:	2200      	movs	r2, #0
878048cc:	2100      	movs	r1, #0
878048ce:	f44f 70a2 	mov.w	r0, #324	; 0x144
878048d2:	f2c0 200e 	movt	r0, #526	; 0x20e
878048d6:	f7ff f9c1 	bl	87803c5c <IOMUXC_SetPinConfig>
878048da:	23b9      	movs	r3, #185	; 0xb9
878048dc:	9301      	str	r3, [sp, #4]
878048de:	f44f 7375 	mov.w	r3, #980	; 0x3d4
878048e2:	f2c0 230e 	movt	r3, #526	; 0x20e
878048e6:	9300      	str	r3, [sp, #0]
878048e8:	2300      	movs	r3, #0
878048ea:	2200      	movs	r2, #0
878048ec:	2100      	movs	r1, #0
878048ee:	f44f 70a4 	mov.w	r0, #328	; 0x148
878048f2:	f2c0 200e 	movt	r0, #526	; 0x20e
878048f6:	f7ff f9b1 	bl	87803c5c <IOMUXC_SetPinConfig>
878048fa:	23b9      	movs	r3, #185	; 0xb9
878048fc:	9301      	str	r3, [sp, #4]
878048fe:	f44f 7376 	mov.w	r3, #984	; 0x3d8
87804902:	f2c0 230e 	movt	r3, #526	; 0x20e
87804906:	9300      	str	r3, [sp, #0]
87804908:	2300      	movs	r3, #0
8780490a:	2200      	movs	r2, #0
8780490c:	2100      	movs	r1, #0
8780490e:	f44f 70a6 	mov.w	r0, #332	; 0x14c
87804912:	f2c0 200e 	movt	r0, #526	; 0x20e
87804916:	f7ff f9a1 	bl	87803c5c <IOMUXC_SetPinConfig>
8780491a:	23b9      	movs	r3, #185	; 0xb9
8780491c:	9301      	str	r3, [sp, #4]
8780491e:	f44f 7377 	mov.w	r3, #988	; 0x3dc
87804922:	f2c0 230e 	movt	r3, #526	; 0x20e
87804926:	9300      	str	r3, [sp, #0]
87804928:	2300      	movs	r3, #0
8780492a:	2200      	movs	r2, #0
8780492c:	2100      	movs	r1, #0
8780492e:	f44f 70a8 	mov.w	r0, #336	; 0x150
87804932:	f2c0 200e 	movt	r0, #526	; 0x20e
87804936:	f7ff f991 	bl	87803c5c <IOMUXC_SetPinConfig>
8780493a:	23b9      	movs	r3, #185	; 0xb9
8780493c:	9301      	str	r3, [sp, #4]
8780493e:	f44f 7378 	mov.w	r3, #992	; 0x3e0
87804942:	f2c0 230e 	movt	r3, #526	; 0x20e
87804946:	9300      	str	r3, [sp, #0]
87804948:	2300      	movs	r3, #0
8780494a:	2200      	movs	r2, #0
8780494c:	2100      	movs	r1, #0
8780494e:	f44f 70aa 	mov.w	r0, #340	; 0x154
87804952:	f2c0 200e 	movt	r0, #526	; 0x20e
87804956:	f7ff f981 	bl	87803c5c <IOMUXC_SetPinConfig>
8780495a:	23b9      	movs	r3, #185	; 0xb9
8780495c:	9301      	str	r3, [sp, #4]
8780495e:	f44f 7379 	mov.w	r3, #996	; 0x3e4
87804962:	f2c0 230e 	movt	r3, #526	; 0x20e
87804966:	9300      	str	r3, [sp, #0]
87804968:	2300      	movs	r3, #0
8780496a:	2200      	movs	r2, #0
8780496c:	2100      	movs	r1, #0
8780496e:	f44f 70ac 	mov.w	r0, #344	; 0x158
87804972:	f2c0 200e 	movt	r0, #526	; 0x20e
87804976:	f7ff f971 	bl	87803c5c <IOMUXC_SetPinConfig>
8780497a:	23b9      	movs	r3, #185	; 0xb9
8780497c:	9301      	str	r3, [sp, #4]
8780497e:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
87804982:	f2c0 230e 	movt	r3, #526	; 0x20e
87804986:	9300      	str	r3, [sp, #0]
87804988:	2300      	movs	r3, #0
8780498a:	2200      	movs	r2, #0
8780498c:	2100      	movs	r1, #0
8780498e:	f44f 70ae 	mov.w	r0, #348	; 0x15c
87804992:	f2c0 200e 	movt	r0, #526	; 0x20e
87804996:	f7ff f961 	bl	87803c5c <IOMUXC_SetPinConfig>
8780499a:	23b9      	movs	r3, #185	; 0xb9
8780499c:	9301      	str	r3, [sp, #4]
8780499e:	f44f 737b 	mov.w	r3, #1004	; 0x3ec
878049a2:	f2c0 230e 	movt	r3, #526	; 0x20e
878049a6:	9300      	str	r3, [sp, #0]
878049a8:	2300      	movs	r3, #0
878049aa:	2200      	movs	r2, #0
878049ac:	2100      	movs	r1, #0
878049ae:	f44f 70b0 	mov.w	r0, #352	; 0x160
878049b2:	f2c0 200e 	movt	r0, #526	; 0x20e
878049b6:	f7ff f951 	bl	87803c5c <IOMUXC_SetPinConfig>
878049ba:	23b9      	movs	r3, #185	; 0xb9
878049bc:	9301      	str	r3, [sp, #4]
878049be:	f44f 737c 	mov.w	r3, #1008	; 0x3f0
878049c2:	f2c0 230e 	movt	r3, #526	; 0x20e
878049c6:	9300      	str	r3, [sp, #0]
878049c8:	2300      	movs	r3, #0
878049ca:	2200      	movs	r2, #0
878049cc:	2100      	movs	r1, #0
878049ce:	f44f 70b2 	mov.w	r0, #356	; 0x164
878049d2:	f2c0 200e 	movt	r0, #526	; 0x20e
878049d6:	f7ff f941 	bl	87803c5c <IOMUXC_SetPinConfig>
878049da:	23b9      	movs	r3, #185	; 0xb9
878049dc:	9301      	str	r3, [sp, #4]
878049de:	f44f 737d 	mov.w	r3, #1012	; 0x3f4
878049e2:	f2c0 230e 	movt	r3, #526	; 0x20e
878049e6:	9300      	str	r3, [sp, #0]
878049e8:	2300      	movs	r3, #0
878049ea:	2200      	movs	r2, #0
878049ec:	2100      	movs	r1, #0
878049ee:	f44f 70b4 	mov.w	r0, #360	; 0x168
878049f2:	f2c0 200e 	movt	r0, #526	; 0x20e
878049f6:	f7ff f931 	bl	87803c5c <IOMUXC_SetPinConfig>
878049fa:	23b9      	movs	r3, #185	; 0xb9
878049fc:	9301      	str	r3, [sp, #4]
878049fe:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
87804a02:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a06:	9300      	str	r3, [sp, #0]
87804a08:	2300      	movs	r3, #0
87804a0a:	2200      	movs	r2, #0
87804a0c:	2100      	movs	r1, #0
87804a0e:	f44f 70b6 	mov.w	r0, #364	; 0x16c
87804a12:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a16:	f7ff f921 	bl	87803c5c <IOMUXC_SetPinConfig>
87804a1a:	23b9      	movs	r3, #185	; 0xb9
87804a1c:	9301      	str	r3, [sp, #4]
87804a1e:	f44f 737f 	mov.w	r3, #1020	; 0x3fc
87804a22:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a26:	9300      	str	r3, [sp, #0]
87804a28:	2300      	movs	r3, #0
87804a2a:	2200      	movs	r2, #0
87804a2c:	2100      	movs	r1, #0
87804a2e:	f44f 70b8 	mov.w	r0, #368	; 0x170
87804a32:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a36:	f7ff f911 	bl	87803c5c <IOMUXC_SetPinConfig>
87804a3a:	23b9      	movs	r3, #185	; 0xb9
87804a3c:	9301      	str	r3, [sp, #4]
87804a3e:	f44f 6380 	mov.w	r3, #1024	; 0x400
87804a42:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a46:	9300      	str	r3, [sp, #0]
87804a48:	2300      	movs	r3, #0
87804a4a:	2200      	movs	r2, #0
87804a4c:	2100      	movs	r1, #0
87804a4e:	f44f 70ba 	mov.w	r0, #372	; 0x174
87804a52:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a56:	f7ff f901 	bl	87803c5c <IOMUXC_SetPinConfig>
87804a5a:	23b9      	movs	r3, #185	; 0xb9
87804a5c:	9301      	str	r3, [sp, #4]
87804a5e:	f44f 7364 	mov.w	r3, #912	; 0x390
87804a62:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a66:	9300      	str	r3, [sp, #0]
87804a68:	2300      	movs	r3, #0
87804a6a:	2200      	movs	r2, #0
87804a6c:	2100      	movs	r1, #0
87804a6e:	f44f 7082 	mov.w	r0, #260	; 0x104
87804a72:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a76:	f7ff f8f1 	bl	87803c5c <IOMUXC_SetPinConfig>
87804a7a:	23b9      	movs	r3, #185	; 0xb9
87804a7c:	9301      	str	r3, [sp, #4]
87804a7e:	f44f 7365 	mov.w	r3, #916	; 0x394
87804a82:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a86:	9300      	str	r3, [sp, #0]
87804a88:	2300      	movs	r3, #0
87804a8a:	2200      	movs	r2, #0
87804a8c:	2100      	movs	r1, #0
87804a8e:	f44f 7084 	mov.w	r0, #264	; 0x108
87804a92:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a96:	f7ff f8e1 	bl	87803c5c <IOMUXC_SetPinConfig>
87804a9a:	23b9      	movs	r3, #185	; 0xb9
87804a9c:	9301      	str	r3, [sp, #4]
87804a9e:	f44f 7366 	mov.w	r3, #920	; 0x398
87804aa2:	f2c0 230e 	movt	r3, #526	; 0x20e
87804aa6:	9300      	str	r3, [sp, #0]
87804aa8:	2300      	movs	r3, #0
87804aaa:	f240 52dc 	movw	r2, #1500	; 0x5dc
87804aae:	f2c0 220e 	movt	r2, #526	; 0x20e
87804ab2:	2100      	movs	r1, #0
87804ab4:	f44f 7086 	mov.w	r0, #268	; 0x10c
87804ab8:	f2c0 200e 	movt	r0, #526	; 0x20e
87804abc:	f7ff f8ce 	bl	87803c5c <IOMUXC_SetPinConfig>
87804ac0:	23b9      	movs	r3, #185	; 0xb9
87804ac2:	9301      	str	r3, [sp, #4]
87804ac4:	f44f 7367 	mov.w	r3, #924	; 0x39c
87804ac8:	f2c0 230e 	movt	r3, #526	; 0x20e
87804acc:	9300      	str	r3, [sp, #0]
87804ace:	2300      	movs	r3, #0
87804ad0:	2200      	movs	r2, #0
87804ad2:	2100      	movs	r1, #0
87804ad4:	f44f 7088 	mov.w	r0, #272	; 0x110
87804ad8:	f2c0 200e 	movt	r0, #526	; 0x20e
87804adc:	f7ff f8be 	bl	87803c5c <IOMUXC_SetPinConfig>
87804ae0:	23b9      	movs	r3, #185	; 0xb9
87804ae2:	9301      	str	r3, [sp, #4]
87804ae4:	f44f 7342 	mov.w	r3, #776	; 0x308
87804ae8:	f2c0 230e 	movt	r3, #526	; 0x20e
87804aec:	9300      	str	r3, [sp, #0]
87804aee:	2300      	movs	r3, #0
87804af0:	2200      	movs	r2, #0
87804af2:	2105      	movs	r1, #5
87804af4:	207c      	movs	r0, #124	; 0x7c
87804af6:	f2c0 200e 	movt	r0, #526	; 0x20e
87804afa:	f7ff f8af 	bl	87803c5c <IOMUXC_SetPinConfig>
87804afe:	2301      	movs	r3, #1
87804b00:	607b      	str	r3, [r7, #4]
87804b02:	2301      	movs	r3, #1
87804b04:	723b      	strb	r3, [r7, #8]
87804b06:	1d3b      	adds	r3, r7, #4
87804b08:	461a      	mov	r2, r3
87804b0a:	2108      	movs	r1, #8
87804b0c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87804b10:	f2c0 2009 	movt	r0, #521	; 0x209
87804b14:	f7fb fed2 	bl	878008bc <gpio_init>
87804b18:	2201      	movs	r2, #1
87804b1a:	2108      	movs	r1, #8
87804b1c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87804b20:	f2c0 2009 	movt	r0, #521	; 0x209
87804b24:	f7fb ff16 	bl	87800954 <gpio_pinwrite>
87804b28:	3710      	adds	r7, #16
87804b2a:	46bd      	mov	sp, r7
87804b2c:	bd80      	pop	{r7, pc}
87804b2e:	bf00      	nop

87804b30 <lcdclk_init>:
87804b30:	b480      	push	{r7}
87804b32:	b083      	sub	sp, #12
87804b34:	af00      	add	r7, sp, #0
87804b36:	4603      	mov	r3, r0
87804b38:	71fb      	strb	r3, [r7, #7]
87804b3a:	460b      	mov	r3, r1
87804b3c:	71bb      	strb	r3, [r7, #6]
87804b3e:	4613      	mov	r3, r2
87804b40:	717b      	strb	r3, [r7, #5]
87804b42:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804b46:	f2c0 230c 	movt	r3, #524	; 0x20c
87804b4a:	2200      	movs	r2, #0
87804b4c:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
87804b50:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804b54:	f2c0 230c 	movt	r3, #524	; 0x20c
87804b58:	2200      	movs	r2, #0
87804b5a:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
87804b5e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804b62:	f2c0 230c 	movt	r3, #524	; 0x20c
87804b66:	79fa      	ldrb	r2, [r7, #7]
87804b68:	f442 1281 	orr.w	r2, r2, #1056768	; 0x102000
87804b6c:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
87804b70:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804b74:	f2c0 230c 	movt	r3, #524	; 0x20c
87804b78:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87804b7c:	f2c0 220c 	movt	r2, #524	; 0x20c
87804b80:	f8d2 2170 	ldr.w	r2, [r2, #368]	; 0x170
87804b84:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
87804b88:	f8c3 2170 	str.w	r2, [r3, #368]	; 0x170
87804b8c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804b90:	f2c0 230c 	movt	r3, #524	; 0x20c
87804b94:	2200      	movs	r2, #0
87804b96:	f8c3 2170 	str.w	r2, [r3, #368]	; 0x170
87804b9a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804b9e:	f2c0 230c 	movt	r3, #524	; 0x20c
87804ba2:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804ba6:	f2c0 220c 	movt	r2, #524	; 0x20c
87804baa:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804bac:	f422 3260 	bic.w	r2, r2, #229376	; 0x38000
87804bb0:	639a      	str	r2, [r3, #56]	; 0x38
87804bb2:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804bb6:	f2c0 230c 	movt	r3, #524	; 0x20c
87804bba:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804bbe:	f2c0 220c 	movt	r2, #524	; 0x20c
87804bc2:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804bc4:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
87804bc8:	639a      	str	r2, [r3, #56]	; 0x38
87804bca:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804bce:	f2c0 230c 	movt	r3, #524	; 0x20c
87804bd2:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804bd6:	f2c0 220c 	movt	r2, #524	; 0x20c
87804bda:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804bdc:	f422 42e0 	bic.w	r2, r2, #28672	; 0x7000
87804be0:	639a      	str	r2, [r3, #56]	; 0x38
87804be2:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804be6:	f2c0 230c 	movt	r3, #524	; 0x20c
87804bea:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804bee:	f2c0 220c 	movt	r2, #524	; 0x20c
87804bf2:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804bf4:	79b9      	ldrb	r1, [r7, #6]
87804bf6:	3901      	subs	r1, #1
87804bf8:	0309      	lsls	r1, r1, #12
87804bfa:	430a      	orrs	r2, r1
87804bfc:	639a      	str	r2, [r3, #56]	; 0x38
87804bfe:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804c02:	f2c0 230c 	movt	r3, #524	; 0x20c
87804c06:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804c0a:	f2c0 220c 	movt	r2, #524	; 0x20c
87804c0e:	6992      	ldr	r2, [r2, #24]
87804c10:	f022 7260 	bic.w	r2, r2, #58720256	; 0x3800000
87804c14:	619a      	str	r2, [r3, #24]
87804c16:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804c1a:	f2c0 230c 	movt	r3, #524	; 0x20c
87804c1e:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804c22:	f2c0 220c 	movt	r2, #524	; 0x20c
87804c26:	6992      	ldr	r2, [r2, #24]
87804c28:	7979      	ldrb	r1, [r7, #5]
87804c2a:	3901      	subs	r1, #1
87804c2c:	05c9      	lsls	r1, r1, #23
87804c2e:	430a      	orrs	r2, r1
87804c30:	619a      	str	r2, [r3, #24]
87804c32:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804c36:	f2c0 230c 	movt	r3, #524	; 0x20c
87804c3a:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804c3e:	f2c0 220c 	movt	r2, #524	; 0x20c
87804c42:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804c44:	f422 6260 	bic.w	r2, r2, #3584	; 0xe00
87804c48:	639a      	str	r2, [r3, #56]	; 0x38
87804c4a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804c4e:	f2c0 230c 	movt	r3, #524	; 0x20c
87804c52:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804c56:	f2c0 220c 	movt	r2, #524	; 0x20c
87804c5a:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804c5c:	639a      	str	r2, [r3, #56]	; 0x38
87804c5e:	370c      	adds	r7, #12
87804c60:	46bd      	mov	sp, r7
87804c62:	f85d 7b04 	ldr.w	r7, [sp], #4
87804c66:	4770      	bx	lr

87804c68 <lcd_reset>:
87804c68:	b480      	push	{r7}
87804c6a:	af00      	add	r7, sp, #0
87804c6c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804c70:	f2c0 231c 	movt	r3, #540	; 0x21c
87804c74:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
87804c78:	601a      	str	r2, [r3, #0]
87804c7a:	46bd      	mov	sp, r7
87804c7c:	f85d 7b04 	ldr.w	r7, [sp], #4
87804c80:	4770      	bx	lr
87804c82:	bf00      	nop

87804c84 <lcd_noreset>:
87804c84:	b480      	push	{r7}
87804c86:	af00      	add	r7, sp, #0
87804c88:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804c8c:	f2c0 231c 	movt	r3, #540	; 0x21c
87804c90:	2200      	movs	r2, #0
87804c92:	601a      	str	r2, [r3, #0]
87804c94:	46bd      	mov	sp, r7
87804c96:	f85d 7b04 	ldr.w	r7, [sp], #4
87804c9a:	4770      	bx	lr

87804c9c <lcd_enable>:
87804c9c:	b480      	push	{r7}
87804c9e:	af00      	add	r7, sp, #0
87804ca0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804ca4:	f2c0 231c 	movt	r3, #540	; 0x21c
87804ca8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87804cac:	f2c0 221c 	movt	r2, #540	; 0x21c
87804cb0:	6812      	ldr	r2, [r2, #0]
87804cb2:	f042 0201 	orr.w	r2, r2, #1
87804cb6:	601a      	str	r2, [r3, #0]
87804cb8:	46bd      	mov	sp, r7
87804cba:	f85d 7b04 	ldr.w	r7, [sp], #4
87804cbe:	4770      	bx	lr

87804cc0 <lcd_drawpoint>:
87804cc0:	b480      	push	{r7}
87804cc2:	b083      	sub	sp, #12
87804cc4:	af00      	add	r7, sp, #0
87804cc6:	4603      	mov	r3, r0
87804cc8:	603a      	str	r2, [r7, #0]
87804cca:	80fb      	strh	r3, [r7, #6]
87804ccc:	460b      	mov	r3, r1
87804cce:	80bb      	strh	r3, [r7, #4]
87804cd0:	f24d 3308 	movw	r3, #54024	; 0xd308
87804cd4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804cd8:	695a      	ldr	r2, [r3, #20]
87804cda:	f24d 3308 	movw	r3, #54024	; 0xd308
87804cde:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804ce2:	791b      	ldrb	r3, [r3, #4]
87804ce4:	4618      	mov	r0, r3
87804ce6:	f24d 3308 	movw	r3, #54024	; 0xd308
87804cea:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804cee:	885b      	ldrh	r3, [r3, #2]
87804cf0:	4619      	mov	r1, r3
87804cf2:	88bb      	ldrh	r3, [r7, #4]
87804cf4:	fb03 f101 	mul.w	r1, r3, r1
87804cf8:	88fb      	ldrh	r3, [r7, #6]
87804cfa:	440b      	add	r3, r1
87804cfc:	fb03 f300 	mul.w	r3, r3, r0
87804d00:	4413      	add	r3, r2
87804d02:	461a      	mov	r2, r3
87804d04:	683b      	ldr	r3, [r7, #0]
87804d06:	6013      	str	r3, [r2, #0]
87804d08:	370c      	adds	r7, #12
87804d0a:	46bd      	mov	sp, r7
87804d0c:	f85d 7b04 	ldr.w	r7, [sp], #4
87804d10:	4770      	bx	lr
87804d12:	bf00      	nop

87804d14 <lcd_readpoint>:
87804d14:	b480      	push	{r7}
87804d16:	b083      	sub	sp, #12
87804d18:	af00      	add	r7, sp, #0
87804d1a:	4603      	mov	r3, r0
87804d1c:	460a      	mov	r2, r1
87804d1e:	80fb      	strh	r3, [r7, #6]
87804d20:	4613      	mov	r3, r2
87804d22:	80bb      	strh	r3, [r7, #4]
87804d24:	f24d 3308 	movw	r3, #54024	; 0xd308
87804d28:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804d2c:	695a      	ldr	r2, [r3, #20]
87804d2e:	f24d 3308 	movw	r3, #54024	; 0xd308
87804d32:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804d36:	791b      	ldrb	r3, [r3, #4]
87804d38:	4618      	mov	r0, r3
87804d3a:	f24d 3308 	movw	r3, #54024	; 0xd308
87804d3e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804d42:	885b      	ldrh	r3, [r3, #2]
87804d44:	4619      	mov	r1, r3
87804d46:	88bb      	ldrh	r3, [r7, #4]
87804d48:	fb03 f101 	mul.w	r1, r3, r1
87804d4c:	88fb      	ldrh	r3, [r7, #6]
87804d4e:	440b      	add	r3, r1
87804d50:	fb03 f300 	mul.w	r3, r3, r0
87804d54:	4413      	add	r3, r2
87804d56:	681b      	ldr	r3, [r3, #0]
87804d58:	4618      	mov	r0, r3
87804d5a:	370c      	adds	r7, #12
87804d5c:	46bd      	mov	sp, r7
87804d5e:	f85d 7b04 	ldr.w	r7, [sp], #4
87804d62:	4770      	bx	lr

87804d64 <lcd_clear>:
87804d64:	b480      	push	{r7}
87804d66:	b087      	sub	sp, #28
87804d68:	af00      	add	r7, sp, #0
87804d6a:	6078      	str	r0, [r7, #4]
87804d6c:	2300      	movs	r3, #0
87804d6e:	617b      	str	r3, [r7, #20]
87804d70:	f24d 3308 	movw	r3, #54024	; 0xd308
87804d74:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804d78:	695b      	ldr	r3, [r3, #20]
87804d7a:	613b      	str	r3, [r7, #16]
87804d7c:	f24d 3308 	movw	r3, #54024	; 0xd308
87804d80:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804d84:	885b      	ldrh	r3, [r3, #2]
87804d86:	461a      	mov	r2, r3
87804d88:	f24d 3308 	movw	r3, #54024	; 0xd308
87804d8c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804d90:	881b      	ldrh	r3, [r3, #0]
87804d92:	fb03 f302 	mul.w	r3, r3, r2
87804d96:	60fb      	str	r3, [r7, #12]
87804d98:	2300      	movs	r3, #0
87804d9a:	617b      	str	r3, [r7, #20]
87804d9c:	e008      	b.n	87804db0 <lcd_clear+0x4c>
87804d9e:	697b      	ldr	r3, [r7, #20]
87804da0:	009b      	lsls	r3, r3, #2
87804da2:	693a      	ldr	r2, [r7, #16]
87804da4:	4413      	add	r3, r2
87804da6:	687a      	ldr	r2, [r7, #4]
87804da8:	601a      	str	r2, [r3, #0]
87804daa:	697b      	ldr	r3, [r7, #20]
87804dac:	3301      	adds	r3, #1
87804dae:	617b      	str	r3, [r7, #20]
87804db0:	697a      	ldr	r2, [r7, #20]
87804db2:	68fb      	ldr	r3, [r7, #12]
87804db4:	429a      	cmp	r2, r3
87804db6:	d3f2      	bcc.n	87804d9e <lcd_clear+0x3a>
87804db8:	371c      	adds	r7, #28
87804dba:	46bd      	mov	sp, r7
87804dbc:	f85d 7b04 	ldr.w	r7, [sp], #4
87804dc0:	4770      	bx	lr
87804dc2:	bf00      	nop

87804dc4 <lcd_fill>:
87804dc4:	b590      	push	{r4, r7, lr}
87804dc6:	b085      	sub	sp, #20
87804dc8:	af00      	add	r7, sp, #0
87804dca:	4604      	mov	r4, r0
87804dcc:	4608      	mov	r0, r1
87804dce:	4611      	mov	r1, r2
87804dd0:	461a      	mov	r2, r3
87804dd2:	4623      	mov	r3, r4
87804dd4:	80fb      	strh	r3, [r7, #6]
87804dd6:	4603      	mov	r3, r0
87804dd8:	80bb      	strh	r3, [r7, #4]
87804dda:	460b      	mov	r3, r1
87804ddc:	807b      	strh	r3, [r7, #2]
87804dde:	4613      	mov	r3, r2
87804de0:	803b      	strh	r3, [r7, #0]
87804de2:	f24d 3308 	movw	r3, #54024	; 0xd308
87804de6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804dea:	885b      	ldrh	r3, [r3, #2]
87804dec:	887a      	ldrh	r2, [r7, #2]
87804dee:	429a      	cmp	r2, r3
87804df0:	d306      	bcc.n	87804e00 <lcd_fill+0x3c>
87804df2:	f24d 3308 	movw	r3, #54024	; 0xd308
87804df6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804dfa:	885b      	ldrh	r3, [r3, #2]
87804dfc:	3b01      	subs	r3, #1
87804dfe:	807b      	strh	r3, [r7, #2]
87804e00:	f24d 3308 	movw	r3, #54024	; 0xd308
87804e04:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e08:	881b      	ldrh	r3, [r3, #0]
87804e0a:	883a      	ldrh	r2, [r7, #0]
87804e0c:	429a      	cmp	r2, r3
87804e0e:	d306      	bcc.n	87804e1e <lcd_fill+0x5a>
87804e10:	f24d 3308 	movw	r3, #54024	; 0xd308
87804e14:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e18:	881b      	ldrh	r3, [r3, #0]
87804e1a:	3b01      	subs	r3, #1
87804e1c:	803b      	strh	r3, [r7, #0]
87804e1e:	88bb      	ldrh	r3, [r7, #4]
87804e20:	81bb      	strh	r3, [r7, #12]
87804e22:	e012      	b.n	87804e4a <lcd_fill+0x86>
87804e24:	88fb      	ldrh	r3, [r7, #6]
87804e26:	81fb      	strh	r3, [r7, #14]
87804e28:	e008      	b.n	87804e3c <lcd_fill+0x78>
87804e2a:	89b9      	ldrh	r1, [r7, #12]
87804e2c:	89fb      	ldrh	r3, [r7, #14]
87804e2e:	6a3a      	ldr	r2, [r7, #32]
87804e30:	4618      	mov	r0, r3
87804e32:	f7ff ff45 	bl	87804cc0 <lcd_drawpoint>
87804e36:	89fb      	ldrh	r3, [r7, #14]
87804e38:	3301      	adds	r3, #1
87804e3a:	81fb      	strh	r3, [r7, #14]
87804e3c:	89fa      	ldrh	r2, [r7, #14]
87804e3e:	887b      	ldrh	r3, [r7, #2]
87804e40:	429a      	cmp	r2, r3
87804e42:	d9f2      	bls.n	87804e2a <lcd_fill+0x66>
87804e44:	89bb      	ldrh	r3, [r7, #12]
87804e46:	3301      	adds	r3, #1
87804e48:	81bb      	strh	r3, [r7, #12]
87804e4a:	89ba      	ldrh	r2, [r7, #12]
87804e4c:	883b      	ldrh	r3, [r7, #0]
87804e4e:	429a      	cmp	r2, r3
87804e50:	d9e8      	bls.n	87804e24 <lcd_fill+0x60>
87804e52:	3714      	adds	r7, #20
87804e54:	46bd      	mov	sp, r7
87804e56:	bd90      	pop	{r4, r7, pc}

87804e58 <lcd_drawline>:
87804e58:	b590      	push	{r4, r7, lr}
87804e5a:	b08d      	sub	sp, #52	; 0x34
87804e5c:	af00      	add	r7, sp, #0
87804e5e:	4604      	mov	r4, r0
87804e60:	4608      	mov	r0, r1
87804e62:	4611      	mov	r1, r2
87804e64:	461a      	mov	r2, r3
87804e66:	4623      	mov	r3, r4
87804e68:	80fb      	strh	r3, [r7, #6]
87804e6a:	4603      	mov	r3, r0
87804e6c:	80bb      	strh	r3, [r7, #4]
87804e6e:	460b      	mov	r3, r1
87804e70:	807b      	strh	r3, [r7, #2]
87804e72:	4613      	mov	r3, r2
87804e74:	803b      	strh	r3, [r7, #0]
87804e76:	2300      	movs	r3, #0
87804e78:	62bb      	str	r3, [r7, #40]	; 0x28
87804e7a:	2300      	movs	r3, #0
87804e7c:	627b      	str	r3, [r7, #36]	; 0x24
87804e7e:	887a      	ldrh	r2, [r7, #2]
87804e80:	88fb      	ldrh	r3, [r7, #6]
87804e82:	1ad3      	subs	r3, r2, r3
87804e84:	623b      	str	r3, [r7, #32]
87804e86:	883a      	ldrh	r2, [r7, #0]
87804e88:	88bb      	ldrh	r3, [r7, #4]
87804e8a:	1ad3      	subs	r3, r2, r3
87804e8c:	61fb      	str	r3, [r7, #28]
87804e8e:	88fb      	ldrh	r3, [r7, #6]
87804e90:	60fb      	str	r3, [r7, #12]
87804e92:	88bb      	ldrh	r3, [r7, #4]
87804e94:	60bb      	str	r3, [r7, #8]
87804e96:	6a3b      	ldr	r3, [r7, #32]
87804e98:	2b00      	cmp	r3, #0
87804e9a:	dd02      	ble.n	87804ea2 <lcd_drawline+0x4a>
87804e9c:	2301      	movs	r3, #1
87804e9e:	617b      	str	r3, [r7, #20]
87804ea0:	e00b      	b.n	87804eba <lcd_drawline+0x62>
87804ea2:	6a3b      	ldr	r3, [r7, #32]
87804ea4:	2b00      	cmp	r3, #0
87804ea6:	d102      	bne.n	87804eae <lcd_drawline+0x56>
87804ea8:	2300      	movs	r3, #0
87804eaa:	617b      	str	r3, [r7, #20]
87804eac:	e005      	b.n	87804eba <lcd_drawline+0x62>
87804eae:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87804eb2:	617b      	str	r3, [r7, #20]
87804eb4:	6a3b      	ldr	r3, [r7, #32]
87804eb6:	425b      	negs	r3, r3
87804eb8:	623b      	str	r3, [r7, #32]
87804eba:	69fb      	ldr	r3, [r7, #28]
87804ebc:	2b00      	cmp	r3, #0
87804ebe:	dd02      	ble.n	87804ec6 <lcd_drawline+0x6e>
87804ec0:	2301      	movs	r3, #1
87804ec2:	613b      	str	r3, [r7, #16]
87804ec4:	e00b      	b.n	87804ede <lcd_drawline+0x86>
87804ec6:	69fb      	ldr	r3, [r7, #28]
87804ec8:	2b00      	cmp	r3, #0
87804eca:	d102      	bne.n	87804ed2 <lcd_drawline+0x7a>
87804ecc:	2300      	movs	r3, #0
87804ece:	613b      	str	r3, [r7, #16]
87804ed0:	e005      	b.n	87804ede <lcd_drawline+0x86>
87804ed2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87804ed6:	613b      	str	r3, [r7, #16]
87804ed8:	69fb      	ldr	r3, [r7, #28]
87804eda:	425b      	negs	r3, r3
87804edc:	61fb      	str	r3, [r7, #28]
87804ede:	6a3a      	ldr	r2, [r7, #32]
87804ee0:	69fb      	ldr	r3, [r7, #28]
87804ee2:	429a      	cmp	r2, r3
87804ee4:	dd02      	ble.n	87804eec <lcd_drawline+0x94>
87804ee6:	6a3b      	ldr	r3, [r7, #32]
87804ee8:	61bb      	str	r3, [r7, #24]
87804eea:	e001      	b.n	87804ef0 <lcd_drawline+0x98>
87804eec:	69fb      	ldr	r3, [r7, #28]
87804eee:	61bb      	str	r3, [r7, #24]
87804ef0:	2300      	movs	r3, #0
87804ef2:	85fb      	strh	r3, [r7, #46]	; 0x2e
87804ef4:	e02e      	b.n	87804f54 <lcd_drawline+0xfc>
87804ef6:	68fb      	ldr	r3, [r7, #12]
87804ef8:	b298      	uxth	r0, r3
87804efa:	68bb      	ldr	r3, [r7, #8]
87804efc:	b299      	uxth	r1, r3
87804efe:	f24d 3308 	movw	r3, #54024	; 0xd308
87804f02:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804f06:	699b      	ldr	r3, [r3, #24]
87804f08:	461a      	mov	r2, r3
87804f0a:	f7ff fed9 	bl	87804cc0 <lcd_drawpoint>
87804f0e:	6aba      	ldr	r2, [r7, #40]	; 0x28
87804f10:	6a3b      	ldr	r3, [r7, #32]
87804f12:	4413      	add	r3, r2
87804f14:	62bb      	str	r3, [r7, #40]	; 0x28
87804f16:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87804f18:	69fb      	ldr	r3, [r7, #28]
87804f1a:	4413      	add	r3, r2
87804f1c:	627b      	str	r3, [r7, #36]	; 0x24
87804f1e:	6aba      	ldr	r2, [r7, #40]	; 0x28
87804f20:	69bb      	ldr	r3, [r7, #24]
87804f22:	429a      	cmp	r2, r3
87804f24:	dd07      	ble.n	87804f36 <lcd_drawline+0xde>
87804f26:	6aba      	ldr	r2, [r7, #40]	; 0x28
87804f28:	69bb      	ldr	r3, [r7, #24]
87804f2a:	1ad3      	subs	r3, r2, r3
87804f2c:	62bb      	str	r3, [r7, #40]	; 0x28
87804f2e:	68fa      	ldr	r2, [r7, #12]
87804f30:	697b      	ldr	r3, [r7, #20]
87804f32:	4413      	add	r3, r2
87804f34:	60fb      	str	r3, [r7, #12]
87804f36:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87804f38:	69bb      	ldr	r3, [r7, #24]
87804f3a:	429a      	cmp	r2, r3
87804f3c:	dd07      	ble.n	87804f4e <lcd_drawline+0xf6>
87804f3e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87804f40:	69bb      	ldr	r3, [r7, #24]
87804f42:	1ad3      	subs	r3, r2, r3
87804f44:	627b      	str	r3, [r7, #36]	; 0x24
87804f46:	68ba      	ldr	r2, [r7, #8]
87804f48:	693b      	ldr	r3, [r7, #16]
87804f4a:	4413      	add	r3, r2
87804f4c:	60bb      	str	r3, [r7, #8]
87804f4e:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
87804f50:	3301      	adds	r3, #1
87804f52:	85fb      	strh	r3, [r7, #46]	; 0x2e
87804f54:	8dfa      	ldrh	r2, [r7, #46]	; 0x2e
87804f56:	69bb      	ldr	r3, [r7, #24]
87804f58:	3301      	adds	r3, #1
87804f5a:	429a      	cmp	r2, r3
87804f5c:	ddcb      	ble.n	87804ef6 <lcd_drawline+0x9e>
87804f5e:	3734      	adds	r7, #52	; 0x34
87804f60:	46bd      	mov	sp, r7
87804f62:	bd90      	pop	{r4, r7, pc}

87804f64 <lcd_draw_rectangle>:
87804f64:	b590      	push	{r4, r7, lr}
87804f66:	b083      	sub	sp, #12
87804f68:	af00      	add	r7, sp, #0
87804f6a:	4604      	mov	r4, r0
87804f6c:	4608      	mov	r0, r1
87804f6e:	4611      	mov	r1, r2
87804f70:	461a      	mov	r2, r3
87804f72:	4623      	mov	r3, r4
87804f74:	80fb      	strh	r3, [r7, #6]
87804f76:	4603      	mov	r3, r0
87804f78:	80bb      	strh	r3, [r7, #4]
87804f7a:	460b      	mov	r3, r1
87804f7c:	807b      	strh	r3, [r7, #2]
87804f7e:	4613      	mov	r3, r2
87804f80:	803b      	strh	r3, [r7, #0]
87804f82:	88bb      	ldrh	r3, [r7, #4]
87804f84:	887a      	ldrh	r2, [r7, #2]
87804f86:	88b9      	ldrh	r1, [r7, #4]
87804f88:	88f8      	ldrh	r0, [r7, #6]
87804f8a:	f7ff ff65 	bl	87804e58 <lcd_drawline>
87804f8e:	883b      	ldrh	r3, [r7, #0]
87804f90:	88fa      	ldrh	r2, [r7, #6]
87804f92:	88b9      	ldrh	r1, [r7, #4]
87804f94:	88f8      	ldrh	r0, [r7, #6]
87804f96:	f7ff ff5f 	bl	87804e58 <lcd_drawline>
87804f9a:	883b      	ldrh	r3, [r7, #0]
87804f9c:	887a      	ldrh	r2, [r7, #2]
87804f9e:	8839      	ldrh	r1, [r7, #0]
87804fa0:	88f8      	ldrh	r0, [r7, #6]
87804fa2:	f7ff ff59 	bl	87804e58 <lcd_drawline>
87804fa6:	883b      	ldrh	r3, [r7, #0]
87804fa8:	887a      	ldrh	r2, [r7, #2]
87804faa:	88b9      	ldrh	r1, [r7, #4]
87804fac:	8878      	ldrh	r0, [r7, #2]
87804fae:	f7ff ff53 	bl	87804e58 <lcd_drawline>
87804fb2:	370c      	adds	r7, #12
87804fb4:	46bd      	mov	sp, r7
87804fb6:	bd90      	pop	{r4, r7, pc}

87804fb8 <lcd_draw_Circle>:
87804fb8:	b580      	push	{r7, lr}
87804fba:	b088      	sub	sp, #32
87804fbc:	af00      	add	r7, sp, #0
87804fbe:	4603      	mov	r3, r0
87804fc0:	80fb      	strh	r3, [r7, #6]
87804fc2:	460b      	mov	r3, r1
87804fc4:	80bb      	strh	r3, [r7, #4]
87804fc6:	4613      	mov	r3, r2
87804fc8:	70fb      	strb	r3, [r7, #3]
87804fca:	88fb      	ldrh	r3, [r7, #6]
87804fcc:	613b      	str	r3, [r7, #16]
87804fce:	88bb      	ldrh	r3, [r7, #4]
87804fd0:	60fb      	str	r3, [r7, #12]
87804fd2:	2300      	movs	r3, #0
87804fd4:	61fb      	str	r3, [r7, #28]
87804fd6:	78fb      	ldrb	r3, [r7, #3]
87804fd8:	61bb      	str	r3, [r7, #24]
87804fda:	78fb      	ldrb	r3, [r7, #3]
87804fdc:	f1c3 0301 	rsb	r3, r3, #1
87804fe0:	617b      	str	r3, [r7, #20]
87804fe2:	e0b7      	b.n	87805154 <lcd_draw_Circle+0x19c>
87804fe4:	69fb      	ldr	r3, [r7, #28]
87804fe6:	b29a      	uxth	r2, r3
87804fe8:	693b      	ldr	r3, [r7, #16]
87804fea:	b29b      	uxth	r3, r3
87804fec:	4413      	add	r3, r2
87804fee:	b298      	uxth	r0, r3
87804ff0:	69bb      	ldr	r3, [r7, #24]
87804ff2:	b29a      	uxth	r2, r3
87804ff4:	68fb      	ldr	r3, [r7, #12]
87804ff6:	b29b      	uxth	r3, r3
87804ff8:	4413      	add	r3, r2
87804ffa:	b299      	uxth	r1, r3
87804ffc:	f24d 3308 	movw	r3, #54024	; 0xd308
87805000:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805004:	699b      	ldr	r3, [r3, #24]
87805006:	461a      	mov	r2, r3
87805008:	f7ff fe5a 	bl	87804cc0 <lcd_drawpoint>
8780500c:	69bb      	ldr	r3, [r7, #24]
8780500e:	b29a      	uxth	r2, r3
87805010:	693b      	ldr	r3, [r7, #16]
87805012:	b29b      	uxth	r3, r3
87805014:	4413      	add	r3, r2
87805016:	b298      	uxth	r0, r3
87805018:	69fb      	ldr	r3, [r7, #28]
8780501a:	b29a      	uxth	r2, r3
8780501c:	68fb      	ldr	r3, [r7, #12]
8780501e:	b29b      	uxth	r3, r3
87805020:	4413      	add	r3, r2
87805022:	b299      	uxth	r1, r3
87805024:	f24d 3308 	movw	r3, #54024	; 0xd308
87805028:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780502c:	699b      	ldr	r3, [r3, #24]
8780502e:	461a      	mov	r2, r3
87805030:	f7ff fe46 	bl	87804cc0 <lcd_drawpoint>
87805034:	693b      	ldr	r3, [r7, #16]
87805036:	b29a      	uxth	r2, r3
87805038:	69fb      	ldr	r3, [r7, #28]
8780503a:	b29b      	uxth	r3, r3
8780503c:	1ad3      	subs	r3, r2, r3
8780503e:	b298      	uxth	r0, r3
87805040:	69bb      	ldr	r3, [r7, #24]
87805042:	b29a      	uxth	r2, r3
87805044:	68fb      	ldr	r3, [r7, #12]
87805046:	b29b      	uxth	r3, r3
87805048:	4413      	add	r3, r2
8780504a:	b299      	uxth	r1, r3
8780504c:	f24d 3308 	movw	r3, #54024	; 0xd308
87805050:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805054:	699b      	ldr	r3, [r3, #24]
87805056:	461a      	mov	r2, r3
87805058:	f7ff fe32 	bl	87804cc0 <lcd_drawpoint>
8780505c:	693b      	ldr	r3, [r7, #16]
8780505e:	b29a      	uxth	r2, r3
87805060:	69bb      	ldr	r3, [r7, #24]
87805062:	b29b      	uxth	r3, r3
87805064:	1ad3      	subs	r3, r2, r3
87805066:	b298      	uxth	r0, r3
87805068:	69fb      	ldr	r3, [r7, #28]
8780506a:	b29a      	uxth	r2, r3
8780506c:	68fb      	ldr	r3, [r7, #12]
8780506e:	b29b      	uxth	r3, r3
87805070:	4413      	add	r3, r2
87805072:	b299      	uxth	r1, r3
87805074:	f24d 3308 	movw	r3, #54024	; 0xd308
87805078:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780507c:	699b      	ldr	r3, [r3, #24]
8780507e:	461a      	mov	r2, r3
87805080:	f7ff fe1e 	bl	87804cc0 <lcd_drawpoint>
87805084:	693b      	ldr	r3, [r7, #16]
87805086:	b29a      	uxth	r2, r3
87805088:	69fb      	ldr	r3, [r7, #28]
8780508a:	b29b      	uxth	r3, r3
8780508c:	1ad3      	subs	r3, r2, r3
8780508e:	b298      	uxth	r0, r3
87805090:	68fb      	ldr	r3, [r7, #12]
87805092:	b29a      	uxth	r2, r3
87805094:	69bb      	ldr	r3, [r7, #24]
87805096:	b29b      	uxth	r3, r3
87805098:	1ad3      	subs	r3, r2, r3
8780509a:	b299      	uxth	r1, r3
8780509c:	f24d 3308 	movw	r3, #54024	; 0xd308
878050a0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878050a4:	699b      	ldr	r3, [r3, #24]
878050a6:	461a      	mov	r2, r3
878050a8:	f7ff fe0a 	bl	87804cc0 <lcd_drawpoint>
878050ac:	693b      	ldr	r3, [r7, #16]
878050ae:	b29a      	uxth	r2, r3
878050b0:	69bb      	ldr	r3, [r7, #24]
878050b2:	b29b      	uxth	r3, r3
878050b4:	1ad3      	subs	r3, r2, r3
878050b6:	b298      	uxth	r0, r3
878050b8:	68fb      	ldr	r3, [r7, #12]
878050ba:	b29a      	uxth	r2, r3
878050bc:	69fb      	ldr	r3, [r7, #28]
878050be:	b29b      	uxth	r3, r3
878050c0:	1ad3      	subs	r3, r2, r3
878050c2:	b299      	uxth	r1, r3
878050c4:	f24d 3308 	movw	r3, #54024	; 0xd308
878050c8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878050cc:	699b      	ldr	r3, [r3, #24]
878050ce:	461a      	mov	r2, r3
878050d0:	f7ff fdf6 	bl	87804cc0 <lcd_drawpoint>
878050d4:	69fb      	ldr	r3, [r7, #28]
878050d6:	b29a      	uxth	r2, r3
878050d8:	693b      	ldr	r3, [r7, #16]
878050da:	b29b      	uxth	r3, r3
878050dc:	4413      	add	r3, r2
878050de:	b298      	uxth	r0, r3
878050e0:	68fb      	ldr	r3, [r7, #12]
878050e2:	b29a      	uxth	r2, r3
878050e4:	69bb      	ldr	r3, [r7, #24]
878050e6:	b29b      	uxth	r3, r3
878050e8:	1ad3      	subs	r3, r2, r3
878050ea:	b299      	uxth	r1, r3
878050ec:	f24d 3308 	movw	r3, #54024	; 0xd308
878050f0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878050f4:	699b      	ldr	r3, [r3, #24]
878050f6:	461a      	mov	r2, r3
878050f8:	f7ff fde2 	bl	87804cc0 <lcd_drawpoint>
878050fc:	69bb      	ldr	r3, [r7, #24]
878050fe:	b29a      	uxth	r2, r3
87805100:	693b      	ldr	r3, [r7, #16]
87805102:	b29b      	uxth	r3, r3
87805104:	4413      	add	r3, r2
87805106:	b298      	uxth	r0, r3
87805108:	68fb      	ldr	r3, [r7, #12]
8780510a:	b29a      	uxth	r2, r3
8780510c:	69fb      	ldr	r3, [r7, #28]
8780510e:	b29b      	uxth	r3, r3
87805110:	1ad3      	subs	r3, r2, r3
87805112:	b299      	uxth	r1, r3
87805114:	f24d 3308 	movw	r3, #54024	; 0xd308
87805118:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780511c:	699b      	ldr	r3, [r3, #24]
8780511e:	461a      	mov	r2, r3
87805120:	f7ff fdce 	bl	87804cc0 <lcd_drawpoint>
87805124:	697b      	ldr	r3, [r7, #20]
87805126:	2b00      	cmp	r3, #0
87805128:	da06      	bge.n	87805138 <lcd_draw_Circle+0x180>
8780512a:	69fb      	ldr	r3, [r7, #28]
8780512c:	005a      	lsls	r2, r3, #1
8780512e:	697b      	ldr	r3, [r7, #20]
87805130:	4413      	add	r3, r2
87805132:	3303      	adds	r3, #3
87805134:	617b      	str	r3, [r7, #20]
87805136:	e00a      	b.n	8780514e <lcd_draw_Circle+0x196>
87805138:	69fa      	ldr	r2, [r7, #28]
8780513a:	69bb      	ldr	r3, [r7, #24]
8780513c:	1ad3      	subs	r3, r2, r3
8780513e:	005a      	lsls	r2, r3, #1
87805140:	697b      	ldr	r3, [r7, #20]
87805142:	4413      	add	r3, r2
87805144:	3305      	adds	r3, #5
87805146:	617b      	str	r3, [r7, #20]
87805148:	69bb      	ldr	r3, [r7, #24]
8780514a:	3b01      	subs	r3, #1
8780514c:	61bb      	str	r3, [r7, #24]
8780514e:	69fb      	ldr	r3, [r7, #28]
87805150:	3301      	adds	r3, #1
87805152:	61fb      	str	r3, [r7, #28]
87805154:	69ba      	ldr	r2, [r7, #24]
87805156:	69fb      	ldr	r3, [r7, #28]
87805158:	429a      	cmp	r2, r3
8780515a:	f73f af43 	bgt.w	87804fe4 <lcd_draw_Circle+0x2c>
8780515e:	3720      	adds	r7, #32
87805160:	46bd      	mov	sp, r7
87805162:	bd80      	pop	{r7, pc}

87805164 <lcd_showchar>:
87805164:	b590      	push	{r4, r7, lr}
87805166:	b085      	sub	sp, #20
87805168:	af00      	add	r7, sp, #0
8780516a:	4604      	mov	r4, r0
8780516c:	4608      	mov	r0, r1
8780516e:	4611      	mov	r1, r2
87805170:	461a      	mov	r2, r3
87805172:	4623      	mov	r3, r4
87805174:	80fb      	strh	r3, [r7, #6]
87805176:	4603      	mov	r3, r0
87805178:	80bb      	strh	r3, [r7, #4]
8780517a:	460b      	mov	r3, r1
8780517c:	70fb      	strb	r3, [r7, #3]
8780517e:	4613      	mov	r3, r2
87805180:	70bb      	strb	r3, [r7, #2]
87805182:	88bb      	ldrh	r3, [r7, #4]
87805184:	817b      	strh	r3, [r7, #10]
87805186:	78bb      	ldrb	r3, [r7, #2]
87805188:	08db      	lsrs	r3, r3, #3
8780518a:	b2db      	uxtb	r3, r3
8780518c:	461a      	mov	r2, r3
8780518e:	78bb      	ldrb	r3, [r7, #2]
87805190:	f003 0307 	and.w	r3, r3, #7
87805194:	b2db      	uxtb	r3, r3
87805196:	2b00      	cmp	r3, #0
87805198:	bf14      	ite	ne
8780519a:	2301      	movne	r3, #1
8780519c:	2300      	moveq	r3, #0
8780519e:	b2db      	uxtb	r3, r3
878051a0:	4413      	add	r3, r2
878051a2:	b2da      	uxtb	r2, r3
878051a4:	78bb      	ldrb	r3, [r7, #2]
878051a6:	085b      	lsrs	r3, r3, #1
878051a8:	b2db      	uxtb	r3, r3
878051aa:	fb12 f303 	smulbb	r3, r2, r3
878051ae:	727b      	strb	r3, [r7, #9]
878051b0:	78fb      	ldrb	r3, [r7, #3]
878051b2:	3b20      	subs	r3, #32
878051b4:	70fb      	strb	r3, [r7, #3]
878051b6:	2300      	movs	r3, #0
878051b8:	737b      	strb	r3, [r7, #13]
878051ba:	e08f      	b.n	878052dc <lcd_showchar+0x178>
878051bc:	78bb      	ldrb	r3, [r7, #2]
878051be:	2b0c      	cmp	r3, #12
878051c0:	d10f      	bne.n	878051e2 <lcd_showchar+0x7e>
878051c2:	78fb      	ldrb	r3, [r7, #3]
878051c4:	7b78      	ldrb	r0, [r7, #13]
878051c6:	f647 426c 	movw	r2, #31852	; 0x7c6c
878051ca:	f2c8 7280 	movt	r2, #34688	; 0x8780
878051ce:	4619      	mov	r1, r3
878051d0:	008b      	lsls	r3, r1, #2
878051d2:	4619      	mov	r1, r3
878051d4:	008b      	lsls	r3, r1, #2
878051d6:	1a5b      	subs	r3, r3, r1
878051d8:	4403      	add	r3, r0
878051da:	4413      	add	r3, r2
878051dc:	781b      	ldrb	r3, [r3, #0]
878051de:	73fb      	strb	r3, [r7, #15]
878051e0:	e02f      	b.n	87805242 <lcd_showchar+0xde>
878051e2:	78bb      	ldrb	r3, [r7, #2]
878051e4:	2b10      	cmp	r3, #16
878051e6:	d10b      	bne.n	87805200 <lcd_showchar+0x9c>
878051e8:	78f9      	ldrb	r1, [r7, #3]
878051ea:	7b7a      	ldrb	r2, [r7, #13]
878051ec:	f248 03e0 	movw	r3, #32992	; 0x80e0
878051f0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878051f4:	0109      	lsls	r1, r1, #4
878051f6:	440a      	add	r2, r1
878051f8:	4413      	add	r3, r2
878051fa:	781b      	ldrb	r3, [r3, #0]
878051fc:	73fb      	strb	r3, [r7, #15]
878051fe:	e020      	b.n	87805242 <lcd_showchar+0xde>
87805200:	78bb      	ldrb	r3, [r7, #2]
87805202:	2b18      	cmp	r3, #24
87805204:	d10d      	bne.n	87805222 <lcd_showchar+0xbe>
87805206:	78fb      	ldrb	r3, [r7, #3]
87805208:	7b79      	ldrb	r1, [r7, #13]
8780520a:	f248 62d0 	movw	r2, #34512	; 0x86d0
8780520e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87805212:	009b      	lsls	r3, r3, #2
87805214:	00d8      	lsls	r0, r3, #3
87805216:	4403      	add	r3, r0
87805218:	440b      	add	r3, r1
8780521a:	4413      	add	r3, r2
8780521c:	781b      	ldrb	r3, [r3, #0]
8780521e:	73fb      	strb	r3, [r7, #15]
87805220:	e00f      	b.n	87805242 <lcd_showchar+0xde>
87805222:	78bb      	ldrb	r3, [r7, #2]
87805224:	2b20      	cmp	r3, #32
87805226:	d10b      	bne.n	87805240 <lcd_showchar+0xdc>
87805228:	78f9      	ldrb	r1, [r7, #3]
8780522a:	7b7a      	ldrb	r2, [r7, #13]
8780522c:	f249 432c 	movw	r3, #37932	; 0x942c
87805230:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805234:	01c9      	lsls	r1, r1, #7
87805236:	440a      	add	r2, r1
87805238:	4413      	add	r3, r2
8780523a:	781b      	ldrb	r3, [r3, #0]
8780523c:	73fb      	strb	r3, [r7, #15]
8780523e:	e000      	b.n	87805242 <lcd_showchar+0xde>
87805240:	e051      	b.n	878052e6 <lcd_showchar+0x182>
87805242:	2300      	movs	r3, #0
87805244:	73bb      	strb	r3, [r7, #14]
87805246:	e043      	b.n	878052d0 <lcd_showchar+0x16c>
87805248:	7bfb      	ldrb	r3, [r7, #15]
8780524a:	b25b      	sxtb	r3, r3
8780524c:	2b00      	cmp	r3, #0
8780524e:	da0a      	bge.n	87805266 <lcd_showchar+0x102>
87805250:	f24d 3308 	movw	r3, #54024	; 0xd308
87805254:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805258:	699a      	ldr	r2, [r3, #24]
8780525a:	88b9      	ldrh	r1, [r7, #4]
8780525c:	88fb      	ldrh	r3, [r7, #6]
8780525e:	4618      	mov	r0, r3
87805260:	f7ff fd2e 	bl	87804cc0 <lcd_drawpoint>
87805264:	e00d      	b.n	87805282 <lcd_showchar+0x11e>
87805266:	f897 3020 	ldrb.w	r3, [r7, #32]
8780526a:	2b00      	cmp	r3, #0
8780526c:	d109      	bne.n	87805282 <lcd_showchar+0x11e>
8780526e:	f24d 3308 	movw	r3, #54024	; 0xd308
87805272:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805276:	69da      	ldr	r2, [r3, #28]
87805278:	88b9      	ldrh	r1, [r7, #4]
8780527a:	88fb      	ldrh	r3, [r7, #6]
8780527c:	4618      	mov	r0, r3
8780527e:	f7ff fd1f 	bl	87804cc0 <lcd_drawpoint>
87805282:	7bfb      	ldrb	r3, [r7, #15]
87805284:	005b      	lsls	r3, r3, #1
87805286:	73fb      	strb	r3, [r7, #15]
87805288:	88bb      	ldrh	r3, [r7, #4]
8780528a:	3301      	adds	r3, #1
8780528c:	80bb      	strh	r3, [r7, #4]
8780528e:	f24d 3308 	movw	r3, #54024	; 0xd308
87805292:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805296:	881b      	ldrh	r3, [r3, #0]
87805298:	88ba      	ldrh	r2, [r7, #4]
8780529a:	429a      	cmp	r2, r3
8780529c:	d300      	bcc.n	878052a0 <lcd_showchar+0x13c>
8780529e:	e022      	b.n	878052e6 <lcd_showchar+0x182>
878052a0:	88ba      	ldrh	r2, [r7, #4]
878052a2:	897b      	ldrh	r3, [r7, #10]
878052a4:	1ad2      	subs	r2, r2, r3
878052a6:	78bb      	ldrb	r3, [r7, #2]
878052a8:	429a      	cmp	r2, r3
878052aa:	d10e      	bne.n	878052ca <lcd_showchar+0x166>
878052ac:	897b      	ldrh	r3, [r7, #10]
878052ae:	80bb      	strh	r3, [r7, #4]
878052b0:	88fb      	ldrh	r3, [r7, #6]
878052b2:	3301      	adds	r3, #1
878052b4:	80fb      	strh	r3, [r7, #6]
878052b6:	f24d 3308 	movw	r3, #54024	; 0xd308
878052ba:	f2c8 7380 	movt	r3, #34688	; 0x8780
878052be:	885b      	ldrh	r3, [r3, #2]
878052c0:	88fa      	ldrh	r2, [r7, #6]
878052c2:	429a      	cmp	r2, r3
878052c4:	d300      	bcc.n	878052c8 <lcd_showchar+0x164>
878052c6:	e00e      	b.n	878052e6 <lcd_showchar+0x182>
878052c8:	e005      	b.n	878052d6 <lcd_showchar+0x172>
878052ca:	7bbb      	ldrb	r3, [r7, #14]
878052cc:	3301      	adds	r3, #1
878052ce:	73bb      	strb	r3, [r7, #14]
878052d0:	7bbb      	ldrb	r3, [r7, #14]
878052d2:	2b07      	cmp	r3, #7
878052d4:	d9b8      	bls.n	87805248 <lcd_showchar+0xe4>
878052d6:	7b7b      	ldrb	r3, [r7, #13]
878052d8:	3301      	adds	r3, #1
878052da:	737b      	strb	r3, [r7, #13]
878052dc:	7b7a      	ldrb	r2, [r7, #13]
878052de:	7a7b      	ldrb	r3, [r7, #9]
878052e0:	429a      	cmp	r2, r3
878052e2:	f4ff af6b 	bcc.w	878051bc <lcd_showchar+0x58>
878052e6:	3714      	adds	r7, #20
878052e8:	46bd      	mov	sp, r7
878052ea:	bd90      	pop	{r4, r7, pc}

878052ec <lcd_pow>:
878052ec:	b480      	push	{r7}
878052ee:	b085      	sub	sp, #20
878052f0:	af00      	add	r7, sp, #0
878052f2:	4603      	mov	r3, r0
878052f4:	460a      	mov	r2, r1
878052f6:	71fb      	strb	r3, [r7, #7]
878052f8:	4613      	mov	r3, r2
878052fa:	71bb      	strb	r3, [r7, #6]
878052fc:	2301      	movs	r3, #1
878052fe:	60fb      	str	r3, [r7, #12]
87805300:	e004      	b.n	8780530c <lcd_pow+0x20>
87805302:	79fa      	ldrb	r2, [r7, #7]
87805304:	68fb      	ldr	r3, [r7, #12]
87805306:	fb02 f303 	mul.w	r3, r2, r3
8780530a:	60fb      	str	r3, [r7, #12]
8780530c:	79bb      	ldrb	r3, [r7, #6]
8780530e:	1e5a      	subs	r2, r3, #1
87805310:	71ba      	strb	r2, [r7, #6]
87805312:	2b00      	cmp	r3, #0
87805314:	d1f5      	bne.n	87805302 <lcd_pow+0x16>
87805316:	68fb      	ldr	r3, [r7, #12]
87805318:	4618      	mov	r0, r3
8780531a:	3714      	adds	r7, #20
8780531c:	46bd      	mov	sp, r7
8780531e:	f85d 7b04 	ldr.w	r7, [sp], #4
87805322:	4770      	bx	lr

87805324 <lcd_shownum>:
87805324:	b590      	push	{r4, r7, lr}
87805326:	b089      	sub	sp, #36	; 0x24
87805328:	af02      	add	r7, sp, #8
8780532a:	60ba      	str	r2, [r7, #8]
8780532c:	461a      	mov	r2, r3
8780532e:	4603      	mov	r3, r0
87805330:	81fb      	strh	r3, [r7, #14]
87805332:	460b      	mov	r3, r1
87805334:	81bb      	strh	r3, [r7, #12]
87805336:	4613      	mov	r3, r2
87805338:	71fb      	strb	r3, [r7, #7]
8780533a:	2300      	movs	r3, #0
8780533c:	75bb      	strb	r3, [r7, #22]
8780533e:	2300      	movs	r3, #0
87805340:	75fb      	strb	r3, [r7, #23]
87805342:	e05b      	b.n	878053fc <lcd_shownum+0xd8>
87805344:	79fa      	ldrb	r2, [r7, #7]
87805346:	7dfb      	ldrb	r3, [r7, #23]
87805348:	1ad3      	subs	r3, r2, r3
8780534a:	b2db      	uxtb	r3, r3
8780534c:	3b01      	subs	r3, #1
8780534e:	b2db      	uxtb	r3, r3
87805350:	4619      	mov	r1, r3
87805352:	200a      	movs	r0, #10
87805354:	f7ff ffca 	bl	878052ec <lcd_pow>
87805358:	4603      	mov	r3, r0
8780535a:	4619      	mov	r1, r3
8780535c:	68b8      	ldr	r0, [r7, #8]
8780535e:	f002 f843 	bl	878073e8 <__aeabi_uidiv>
87805362:	4603      	mov	r3, r0
87805364:	461a      	mov	r2, r3
87805366:	f64c 43cd 	movw	r3, #52429	; 0xcccd
8780536a:	f6cc 43cc 	movt	r3, #52428	; 0xcccc
8780536e:	fba2 3403 	umull	r3, r4, r2, r3
87805372:	08e3      	lsrs	r3, r4, #3
87805374:	005b      	lsls	r3, r3, #1
87805376:	0099      	lsls	r1, r3, #2
87805378:	440b      	add	r3, r1
8780537a:	1ad3      	subs	r3, r2, r3
8780537c:	757b      	strb	r3, [r7, #21]
8780537e:	7dbb      	ldrb	r3, [r7, #22]
87805380:	2b00      	cmp	r3, #0
87805382:	d120      	bne.n	878053c6 <lcd_shownum+0xa2>
87805384:	7dfa      	ldrb	r2, [r7, #23]
87805386:	79fb      	ldrb	r3, [r7, #7]
87805388:	3b01      	subs	r3, #1
8780538a:	429a      	cmp	r2, r3
8780538c:	da1b      	bge.n	878053c6 <lcd_shownum+0xa2>
8780538e:	7d7b      	ldrb	r3, [r7, #21]
87805390:	2b00      	cmp	r3, #0
87805392:	d116      	bne.n	878053c2 <lcd_shownum+0x9e>
87805394:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
87805398:	085b      	lsrs	r3, r3, #1
8780539a:	b2db      	uxtb	r3, r3
8780539c:	b29a      	uxth	r2, r3
8780539e:	7dfb      	ldrb	r3, [r7, #23]
878053a0:	b29b      	uxth	r3, r3
878053a2:	fb12 f303 	smulbb	r3, r2, r3
878053a6:	b29a      	uxth	r2, r3
878053a8:	89fb      	ldrh	r3, [r7, #14]
878053aa:	4413      	add	r3, r2
878053ac:	b298      	uxth	r0, r3
878053ae:	f897 2028 	ldrb.w	r2, [r7, #40]	; 0x28
878053b2:	89b9      	ldrh	r1, [r7, #12]
878053b4:	2300      	movs	r3, #0
878053b6:	9300      	str	r3, [sp, #0]
878053b8:	4613      	mov	r3, r2
878053ba:	2220      	movs	r2, #32
878053bc:	f7ff fed2 	bl	87805164 <lcd_showchar>
878053c0:	e019      	b.n	878053f6 <lcd_shownum+0xd2>
878053c2:	2301      	movs	r3, #1
878053c4:	75bb      	strb	r3, [r7, #22]
878053c6:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
878053ca:	085b      	lsrs	r3, r3, #1
878053cc:	b2db      	uxtb	r3, r3
878053ce:	b29a      	uxth	r2, r3
878053d0:	7dfb      	ldrb	r3, [r7, #23]
878053d2:	b29b      	uxth	r3, r3
878053d4:	fb12 f303 	smulbb	r3, r2, r3
878053d8:	b29a      	uxth	r2, r3
878053da:	89fb      	ldrh	r3, [r7, #14]
878053dc:	4413      	add	r3, r2
878053de:	b298      	uxth	r0, r3
878053e0:	7d7b      	ldrb	r3, [r7, #21]
878053e2:	3330      	adds	r3, #48	; 0x30
878053e4:	b2da      	uxtb	r2, r3
878053e6:	f897 4028 	ldrb.w	r4, [r7, #40]	; 0x28
878053ea:	89b9      	ldrh	r1, [r7, #12]
878053ec:	2300      	movs	r3, #0
878053ee:	9300      	str	r3, [sp, #0]
878053f0:	4623      	mov	r3, r4
878053f2:	f7ff feb7 	bl	87805164 <lcd_showchar>
878053f6:	7dfb      	ldrb	r3, [r7, #23]
878053f8:	3301      	adds	r3, #1
878053fa:	75fb      	strb	r3, [r7, #23]
878053fc:	7dfa      	ldrb	r2, [r7, #23]
878053fe:	79fb      	ldrb	r3, [r7, #7]
87805400:	429a      	cmp	r2, r3
87805402:	d39f      	bcc.n	87805344 <lcd_shownum+0x20>
87805404:	371c      	adds	r7, #28
87805406:	46bd      	mov	sp, r7
87805408:	bd90      	pop	{r4, r7, pc}
8780540a:	bf00      	nop

8780540c <lcd_showxnum>:
8780540c:	b590      	push	{r4, r7, lr}
8780540e:	b089      	sub	sp, #36	; 0x24
87805410:	af02      	add	r7, sp, #8
87805412:	60ba      	str	r2, [r7, #8]
87805414:	461a      	mov	r2, r3
87805416:	4603      	mov	r3, r0
87805418:	81fb      	strh	r3, [r7, #14]
8780541a:	460b      	mov	r3, r1
8780541c:	81bb      	strh	r3, [r7, #12]
8780541e:	4613      	mov	r3, r2
87805420:	71fb      	strb	r3, [r7, #7]
87805422:	2300      	movs	r3, #0
87805424:	75bb      	strb	r3, [r7, #22]
87805426:	2300      	movs	r3, #0
87805428:	75fb      	strb	r3, [r7, #23]
8780542a:	e083      	b.n	87805534 <lcd_showxnum+0x128>
8780542c:	79fa      	ldrb	r2, [r7, #7]
8780542e:	7dfb      	ldrb	r3, [r7, #23]
87805430:	1ad3      	subs	r3, r2, r3
87805432:	b2db      	uxtb	r3, r3
87805434:	3b01      	subs	r3, #1
87805436:	b2db      	uxtb	r3, r3
87805438:	4619      	mov	r1, r3
8780543a:	200a      	movs	r0, #10
8780543c:	f7ff ff56 	bl	878052ec <lcd_pow>
87805440:	4603      	mov	r3, r0
87805442:	4619      	mov	r1, r3
87805444:	68b8      	ldr	r0, [r7, #8]
87805446:	f001 ffcf 	bl	878073e8 <__aeabi_uidiv>
8780544a:	4603      	mov	r3, r0
8780544c:	461a      	mov	r2, r3
8780544e:	f64c 43cd 	movw	r3, #52429	; 0xcccd
87805452:	f6cc 43cc 	movt	r3, #52428	; 0xcccc
87805456:	fba2 3403 	umull	r3, r4, r2, r3
8780545a:	08e3      	lsrs	r3, r4, #3
8780545c:	005b      	lsls	r3, r3, #1
8780545e:	0099      	lsls	r1, r3, #2
87805460:	440b      	add	r3, r1
87805462:	1ad3      	subs	r3, r2, r3
87805464:	757b      	strb	r3, [r7, #21]
87805466:	7dbb      	ldrb	r3, [r7, #22]
87805468:	2b00      	cmp	r3, #0
8780546a:	d144      	bne.n	878054f6 <lcd_showxnum+0xea>
8780546c:	7dfa      	ldrb	r2, [r7, #23]
8780546e:	79fb      	ldrb	r3, [r7, #7]
87805470:	3b01      	subs	r3, #1
87805472:	429a      	cmp	r2, r3
87805474:	da3f      	bge.n	878054f6 <lcd_showxnum+0xea>
87805476:	7d7b      	ldrb	r3, [r7, #21]
87805478:	2b00      	cmp	r3, #0
8780547a:	d13a      	bne.n	878054f2 <lcd_showxnum+0xe6>
8780547c:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
87805480:	b25b      	sxtb	r3, r3
87805482:	2b00      	cmp	r3, #0
87805484:	da1a      	bge.n	878054bc <lcd_showxnum+0xb0>
87805486:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
8780548a:	085b      	lsrs	r3, r3, #1
8780548c:	b2db      	uxtb	r3, r3
8780548e:	b29a      	uxth	r2, r3
87805490:	7dfb      	ldrb	r3, [r7, #23]
87805492:	b29b      	uxth	r3, r3
87805494:	fb12 f303 	smulbb	r3, r2, r3
87805498:	b29a      	uxth	r2, r3
8780549a:	89fb      	ldrh	r3, [r7, #14]
8780549c:	4413      	add	r3, r2
8780549e:	b298      	uxth	r0, r3
878054a0:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
878054a4:	f003 0301 	and.w	r3, r3, #1
878054a8:	b2db      	uxtb	r3, r3
878054aa:	f897 2028 	ldrb.w	r2, [r7, #40]	; 0x28
878054ae:	89b9      	ldrh	r1, [r7, #12]
878054b0:	9300      	str	r3, [sp, #0]
878054b2:	4613      	mov	r3, r2
878054b4:	2230      	movs	r2, #48	; 0x30
878054b6:	f7ff fe55 	bl	87805164 <lcd_showchar>
878054ba:	e038      	b.n	8780552e <lcd_showxnum+0x122>
878054bc:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
878054c0:	085b      	lsrs	r3, r3, #1
878054c2:	b2db      	uxtb	r3, r3
878054c4:	b29a      	uxth	r2, r3
878054c6:	7dfb      	ldrb	r3, [r7, #23]
878054c8:	b29b      	uxth	r3, r3
878054ca:	fb12 f303 	smulbb	r3, r2, r3
878054ce:	b29a      	uxth	r2, r3
878054d0:	89fb      	ldrh	r3, [r7, #14]
878054d2:	4413      	add	r3, r2
878054d4:	b298      	uxth	r0, r3
878054d6:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
878054da:	f003 0301 	and.w	r3, r3, #1
878054de:	b2db      	uxtb	r3, r3
878054e0:	f897 2028 	ldrb.w	r2, [r7, #40]	; 0x28
878054e4:	89b9      	ldrh	r1, [r7, #12]
878054e6:	9300      	str	r3, [sp, #0]
878054e8:	4613      	mov	r3, r2
878054ea:	2220      	movs	r2, #32
878054ec:	f7ff fe3a 	bl	87805164 <lcd_showchar>
878054f0:	e01d      	b.n	8780552e <lcd_showxnum+0x122>
878054f2:	2301      	movs	r3, #1
878054f4:	75bb      	strb	r3, [r7, #22]
878054f6:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
878054fa:	085b      	lsrs	r3, r3, #1
878054fc:	b2db      	uxtb	r3, r3
878054fe:	b29a      	uxth	r2, r3
87805500:	7dfb      	ldrb	r3, [r7, #23]
87805502:	b29b      	uxth	r3, r3
87805504:	fb12 f303 	smulbb	r3, r2, r3
87805508:	b29a      	uxth	r2, r3
8780550a:	89fb      	ldrh	r3, [r7, #14]
8780550c:	4413      	add	r3, r2
8780550e:	b298      	uxth	r0, r3
87805510:	7d7b      	ldrb	r3, [r7, #21]
87805512:	3330      	adds	r3, #48	; 0x30
87805514:	b2da      	uxtb	r2, r3
87805516:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
8780551a:	f003 0301 	and.w	r3, r3, #1
8780551e:	b2db      	uxtb	r3, r3
87805520:	f897 4028 	ldrb.w	r4, [r7, #40]	; 0x28
87805524:	89b9      	ldrh	r1, [r7, #12]
87805526:	9300      	str	r3, [sp, #0]
87805528:	4623      	mov	r3, r4
8780552a:	f7ff fe1b 	bl	87805164 <lcd_showchar>
8780552e:	7dfb      	ldrb	r3, [r7, #23]
87805530:	3301      	adds	r3, #1
87805532:	75fb      	strb	r3, [r7, #23]
87805534:	7dfa      	ldrb	r2, [r7, #23]
87805536:	79fb      	ldrb	r3, [r7, #7]
87805538:	429a      	cmp	r2, r3
8780553a:	f4ff af77 	bcc.w	8780542c <lcd_showxnum+0x20>
8780553e:	371c      	adds	r7, #28
87805540:	46bd      	mov	sp, r7
87805542:	bd90      	pop	{r4, r7, pc}

87805544 <lcd_show_string>:
87805544:	b590      	push	{r4, r7, lr}
87805546:	b087      	sub	sp, #28
87805548:	af02      	add	r7, sp, #8
8780554a:	4604      	mov	r4, r0
8780554c:	4608      	mov	r0, r1
8780554e:	4611      	mov	r1, r2
87805550:	461a      	mov	r2, r3
87805552:	4623      	mov	r3, r4
87805554:	80fb      	strh	r3, [r7, #6]
87805556:	4603      	mov	r3, r0
87805558:	80bb      	strh	r3, [r7, #4]
8780555a:	460b      	mov	r3, r1
8780555c:	807b      	strh	r3, [r7, #2]
8780555e:	4613      	mov	r3, r2
87805560:	803b      	strh	r3, [r7, #0]
87805562:	88fb      	ldrh	r3, [r7, #6]
87805564:	73fb      	strb	r3, [r7, #15]
87805566:	887a      	ldrh	r2, [r7, #2]
87805568:	88fb      	ldrh	r3, [r7, #6]
8780556a:	4413      	add	r3, r2
8780556c:	807b      	strh	r3, [r7, #2]
8780556e:	883a      	ldrh	r2, [r7, #0]
87805570:	88bb      	ldrh	r3, [r7, #4]
87805572:	4413      	add	r3, r2
87805574:	803b      	strh	r3, [r7, #0]
87805576:	e026      	b.n	878055c6 <lcd_show_string+0x82>
87805578:	88fa      	ldrh	r2, [r7, #6]
8780557a:	887b      	ldrh	r3, [r7, #2]
8780557c:	429a      	cmp	r2, r3
8780557e:	d307      	bcc.n	87805590 <lcd_show_string+0x4c>
87805580:	7bfb      	ldrb	r3, [r7, #15]
87805582:	80fb      	strh	r3, [r7, #6]
87805584:	f897 3020 	ldrb.w	r3, [r7, #32]
87805588:	b29a      	uxth	r2, r3
8780558a:	88bb      	ldrh	r3, [r7, #4]
8780558c:	4413      	add	r3, r2
8780558e:	80bb      	strh	r3, [r7, #4]
87805590:	88ba      	ldrh	r2, [r7, #4]
87805592:	883b      	ldrh	r3, [r7, #0]
87805594:	429a      	cmp	r2, r3
87805596:	d300      	bcc.n	8780559a <lcd_show_string+0x56>
87805598:	e01d      	b.n	878055d6 <lcd_show_string+0x92>
8780559a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780559c:	781a      	ldrb	r2, [r3, #0]
8780559e:	f897 4020 	ldrb.w	r4, [r7, #32]
878055a2:	88b9      	ldrh	r1, [r7, #4]
878055a4:	88f8      	ldrh	r0, [r7, #6]
878055a6:	2300      	movs	r3, #0
878055a8:	9300      	str	r3, [sp, #0]
878055aa:	4623      	mov	r3, r4
878055ac:	f7ff fdda 	bl	87805164 <lcd_showchar>
878055b0:	f897 3020 	ldrb.w	r3, [r7, #32]
878055b4:	085b      	lsrs	r3, r3, #1
878055b6:	b2db      	uxtb	r3, r3
878055b8:	b29a      	uxth	r2, r3
878055ba:	88fb      	ldrh	r3, [r7, #6]
878055bc:	4413      	add	r3, r2
878055be:	80fb      	strh	r3, [r7, #6]
878055c0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878055c2:	3301      	adds	r3, #1
878055c4:	627b      	str	r3, [r7, #36]	; 0x24
878055c6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878055c8:	781b      	ldrb	r3, [r3, #0]
878055ca:	2b7e      	cmp	r3, #126	; 0x7e
878055cc:	d803      	bhi.n	878055d6 <lcd_show_string+0x92>
878055ce:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878055d0:	781b      	ldrb	r3, [r3, #0]
878055d2:	2b1f      	cmp	r3, #31
878055d4:	d8d0      	bhi.n	87805578 <lcd_show_string+0x34>
878055d6:	3714      	adds	r7, #20
878055d8:	46bd      	mov	sp, r7
878055da:	bd90      	pop	{r4, r7, pc}

878055dc <rtc_init>:
878055dc:	b580      	push	{r7, lr}
878055de:	af00      	add	r7, sp, #0
878055e0:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878055e4:	f2c0 220c 	movt	r2, #524	; 0x20c
878055e8:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878055ec:	f2c0 230c 	movt	r3, #524	; 0x20c
878055f0:	685b      	ldr	r3, [r3, #4]
878055f2:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
878055f6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
878055fa:	6053      	str	r3, [r2, #4]
878055fc:	f000 f802 	bl	87805604 <rtc_enable>
87805600:	bd80      	pop	{r7, pc}
87805602:	bf00      	nop

87805604 <rtc_enable>:
87805604:	b480      	push	{r7}
87805606:	af00      	add	r7, sp, #0
87805608:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780560c:	f2c0 230c 	movt	r3, #524	; 0x20c
87805610:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87805614:	f2c0 220c 	movt	r2, #524	; 0x20c
87805618:	6b92      	ldr	r2, [r2, #56]	; 0x38
8780561a:	f042 0201 	orr.w	r2, r2, #1
8780561e:	639a      	str	r2, [r3, #56]	; 0x38
87805620:	bf00      	nop
87805622:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805626:	f2c0 230c 	movt	r3, #524	; 0x20c
8780562a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
8780562c:	f003 0301 	and.w	r3, r3, #1
87805630:	2b00      	cmp	r3, #0
87805632:	d0f6      	beq.n	87805622 <rtc_enable+0x1e>
87805634:	46bd      	mov	sp, r7
87805636:	f85d 7b04 	ldr.w	r7, [sp], #4
8780563a:	4770      	bx	lr

8780563c <rtc_disable>:
8780563c:	b480      	push	{r7}
8780563e:	af00      	add	r7, sp, #0
87805640:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805644:	f2c0 230c 	movt	r3, #524	; 0x20c
87805648:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780564c:	f2c0 220c 	movt	r2, #524	; 0x20c
87805650:	6b92      	ldr	r2, [r2, #56]	; 0x38
87805652:	f022 0201 	bic.w	r2, r2, #1
87805656:	639a      	str	r2, [r3, #56]	; 0x38
87805658:	bf00      	nop
8780565a:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780565e:	f2c0 230c 	movt	r3, #524	; 0x20c
87805662:	6b9b      	ldr	r3, [r3, #56]	; 0x38
87805664:	f003 0301 	and.w	r3, r3, #1
87805668:	2b00      	cmp	r3, #0
8780566a:	d1f6      	bne.n	8780565a <rtc_disable+0x1e>
8780566c:	46bd      	mov	sp, r7
8780566e:	f85d 7b04 	ldr.w	r7, [sp], #4
87805672:	4770      	bx	lr

87805674 <rtc_isleapyear>:
87805674:	b490      	push	{r4, r7}
87805676:	b084      	sub	sp, #16
87805678:	af00      	add	r7, sp, #0
8780567a:	4603      	mov	r3, r0
8780567c:	80fb      	strh	r3, [r7, #6]
8780567e:	2300      	movs	r3, #0
87805680:	73fb      	strb	r3, [r7, #15]
87805682:	88fa      	ldrh	r2, [r7, #6]
87805684:	f248 531f 	movw	r3, #34079	; 0x851f
87805688:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
8780568c:	fba2 3403 	umull	r3, r4, r2, r3
87805690:	09e3      	lsrs	r3, r4, #7
87805692:	011b      	lsls	r3, r3, #4
87805694:	0099      	lsls	r1, r3, #2
87805696:	440b      	add	r3, r1
87805698:	0099      	lsls	r1, r3, #2
8780569a:	440b      	add	r3, r1
8780569c:	1ad3      	subs	r3, r2, r3
8780569e:	b29b      	uxth	r3, r3
878056a0:	2b00      	cmp	r3, #0
878056a2:	d102      	bne.n	878056aa <rtc_isleapyear+0x36>
878056a4:	2301      	movs	r3, #1
878056a6:	73fb      	strb	r3, [r7, #15]
878056a8:	e01b      	b.n	878056e2 <rtc_isleapyear+0x6e>
878056aa:	88fb      	ldrh	r3, [r7, #6]
878056ac:	f003 0303 	and.w	r3, r3, #3
878056b0:	b29b      	uxth	r3, r3
878056b2:	2b00      	cmp	r3, #0
878056b4:	d113      	bne.n	878056de <rtc_isleapyear+0x6a>
878056b6:	88fa      	ldrh	r2, [r7, #6]
878056b8:	f248 531f 	movw	r3, #34079	; 0x851f
878056bc:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
878056c0:	fba2 3403 	umull	r3, r4, r2, r3
878056c4:	0963      	lsrs	r3, r4, #5
878056c6:	009b      	lsls	r3, r3, #2
878056c8:	0099      	lsls	r1, r3, #2
878056ca:	440b      	add	r3, r1
878056cc:	0099      	lsls	r1, r3, #2
878056ce:	440b      	add	r3, r1
878056d0:	1ad3      	subs	r3, r2, r3
878056d2:	b29b      	uxth	r3, r3
878056d4:	2b00      	cmp	r3, #0
878056d6:	d002      	beq.n	878056de <rtc_isleapyear+0x6a>
878056d8:	2301      	movs	r3, #1
878056da:	73fb      	strb	r3, [r7, #15]
878056dc:	e001      	b.n	878056e2 <rtc_isleapyear+0x6e>
878056de:	2300      	movs	r3, #0
878056e0:	73fb      	strb	r3, [r7, #15]
878056e2:	7bfb      	ldrb	r3, [r7, #15]
878056e4:	4618      	mov	r0, r3
878056e6:	3710      	adds	r7, #16
878056e8:	46bd      	mov	sp, r7
878056ea:	bc90      	pop	{r4, r7}
878056ec:	4770      	bx	lr
878056ee:	bf00      	nop

878056f0 <rtc_coverdate_to_seconds>:
878056f0:	b5b0      	push	{r4, r5, r7, lr}
878056f2:	b08c      	sub	sp, #48	; 0x30
878056f4:	af00      	add	r7, sp, #0
878056f6:	6078      	str	r0, [r7, #4]
878056f8:	2300      	movs	r3, #0
878056fa:	85fb      	strh	r3, [r7, #46]	; 0x2e
878056fc:	2300      	movs	r3, #0
878056fe:	627b      	str	r3, [r7, #36]	; 0x24
87805700:	2300      	movs	r3, #0
87805702:	62bb      	str	r3, [r7, #40]	; 0x28
87805704:	f24c 33ac 	movw	r3, #50092	; 0xc3ac
87805708:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780570c:	f107 0408 	add.w	r4, r7, #8
87805710:	461d      	mov	r5, r3
87805712:	6828      	ldr	r0, [r5, #0]
87805714:	6869      	ldr	r1, [r5, #4]
87805716:	68aa      	ldr	r2, [r5, #8]
87805718:	68eb      	ldr	r3, [r5, #12]
8780571a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
8780571c:	6928      	ldr	r0, [r5, #16]
8780571e:	6969      	ldr	r1, [r5, #20]
87805720:	c403      	stmia	r4!, {r0, r1}
87805722:	8b2b      	ldrh	r3, [r5, #24]
87805724:	8023      	strh	r3, [r4, #0]
87805726:	f240 73b2 	movw	r3, #1970	; 0x7b2
8780572a:	85fb      	strh	r3, [r7, #46]	; 0x2e
8780572c:	e010      	b.n	87805750 <rtc_coverdate_to_seconds+0x60>
8780572e:	6abb      	ldr	r3, [r7, #40]	; 0x28
87805730:	f203 136d 	addw	r3, r3, #365	; 0x16d
87805734:	62bb      	str	r3, [r7, #40]	; 0x28
87805736:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
87805738:	4618      	mov	r0, r3
8780573a:	f7ff ff9b 	bl	87805674 <rtc_isleapyear>
8780573e:	4603      	mov	r3, r0
87805740:	2b00      	cmp	r3, #0
87805742:	d002      	beq.n	8780574a <rtc_coverdate_to_seconds+0x5a>
87805744:	6abb      	ldr	r3, [r7, #40]	; 0x28
87805746:	3301      	adds	r3, #1
87805748:	62bb      	str	r3, [r7, #40]	; 0x28
8780574a:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
8780574c:	3301      	adds	r3, #1
8780574e:	85fb      	strh	r3, [r7, #46]	; 0x2e
87805750:	687b      	ldr	r3, [r7, #4]
87805752:	881b      	ldrh	r3, [r3, #0]
87805754:	8dfa      	ldrh	r2, [r7, #46]	; 0x2e
87805756:	429a      	cmp	r2, r3
87805758:	d3e9      	bcc.n	8780572e <rtc_coverdate_to_seconds+0x3e>
8780575a:	687b      	ldr	r3, [r7, #4]
8780575c:	789b      	ldrb	r3, [r3, #2]
8780575e:	005b      	lsls	r3, r3, #1
87805760:	f107 0230 	add.w	r2, r7, #48	; 0x30
87805764:	4413      	add	r3, r2
87805766:	f833 3c28 	ldrh.w	r3, [r3, #-40]
8780576a:	461a      	mov	r2, r3
8780576c:	6abb      	ldr	r3, [r7, #40]	; 0x28
8780576e:	4413      	add	r3, r2
87805770:	62bb      	str	r3, [r7, #40]	; 0x28
87805772:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
87805774:	4618      	mov	r0, r3
87805776:	f7ff ff7d 	bl	87805674 <rtc_isleapyear>
8780577a:	4603      	mov	r3, r0
8780577c:	2b00      	cmp	r3, #0
8780577e:	d006      	beq.n	8780578e <rtc_coverdate_to_seconds+0x9e>
87805780:	687b      	ldr	r3, [r7, #4]
87805782:	789b      	ldrb	r3, [r3, #2]
87805784:	2b02      	cmp	r3, #2
87805786:	d902      	bls.n	8780578e <rtc_coverdate_to_seconds+0x9e>
87805788:	6abb      	ldr	r3, [r7, #40]	; 0x28
8780578a:	3301      	adds	r3, #1
8780578c:	62bb      	str	r3, [r7, #40]	; 0x28
8780578e:	687b      	ldr	r3, [r7, #4]
87805790:	78db      	ldrb	r3, [r3, #3]
87805792:	461a      	mov	r2, r3
87805794:	6abb      	ldr	r3, [r7, #40]	; 0x28
87805796:	4413      	add	r3, r2
87805798:	3b01      	subs	r3, #1
8780579a:	62bb      	str	r3, [r7, #40]	; 0x28
8780579c:	6aba      	ldr	r2, [r7, #40]	; 0x28
8780579e:	f44f 43a3 	mov.w	r3, #20864	; 0x5180
878057a2:	f2c0 0301 	movt	r3, #1
878057a6:	fb03 f102 	mul.w	r1, r3, r2
878057aa:	687b      	ldr	r3, [r7, #4]
878057ac:	791b      	ldrb	r3, [r3, #4]
878057ae:	461a      	mov	r2, r3
878057b0:	0113      	lsls	r3, r2, #4
878057b2:	461a      	mov	r2, r3
878057b4:	0113      	lsls	r3, r2, #4
878057b6:	1a9b      	subs	r3, r3, r2
878057b8:	011a      	lsls	r2, r3, #4
878057ba:	1ad3      	subs	r3, r2, r3
878057bc:	18ca      	adds	r2, r1, r3
878057be:	687b      	ldr	r3, [r7, #4]
878057c0:	795b      	ldrb	r3, [r3, #5]
878057c2:	009b      	lsls	r3, r3, #2
878057c4:	0119      	lsls	r1, r3, #4
878057c6:	1acb      	subs	r3, r1, r3
878057c8:	4413      	add	r3, r2
878057ca:	687a      	ldr	r2, [r7, #4]
878057cc:	7992      	ldrb	r2, [r2, #6]
878057ce:	4413      	add	r3, r2
878057d0:	627b      	str	r3, [r7, #36]	; 0x24
878057d2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878057d4:	4618      	mov	r0, r3
878057d6:	3730      	adds	r7, #48	; 0x30
878057d8:	46bd      	mov	sp, r7
878057da:	bdb0      	pop	{r4, r5, r7, pc}

878057dc <rtc_setdatetime>:
878057dc:	b580      	push	{r7, lr}
878057de:	b084      	sub	sp, #16
878057e0:	af00      	add	r7, sp, #0
878057e2:	6078      	str	r0, [r7, #4]
878057e4:	2300      	movs	r3, #0
878057e6:	60fb      	str	r3, [r7, #12]
878057e8:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878057ec:	f2c0 230c 	movt	r3, #524	; 0x20c
878057f0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
878057f2:	60bb      	str	r3, [r7, #8]
878057f4:	f7ff ff22 	bl	8780563c <rtc_disable>
878057f8:	6878      	ldr	r0, [r7, #4]
878057fa:	f7ff ff79 	bl	878056f0 <rtc_coverdate_to_seconds>
878057fe:	60f8      	str	r0, [r7, #12]
87805800:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805804:	f2c0 230c 	movt	r3, #524	; 0x20c
87805808:	68fa      	ldr	r2, [r7, #12]
8780580a:	0c52      	lsrs	r2, r2, #17
8780580c:	651a      	str	r2, [r3, #80]	; 0x50
8780580e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805812:	f2c0 230c 	movt	r3, #524	; 0x20c
87805816:	68fa      	ldr	r2, [r7, #12]
87805818:	03d2      	lsls	r2, r2, #15
8780581a:	655a      	str	r2, [r3, #84]	; 0x54
8780581c:	68bb      	ldr	r3, [r7, #8]
8780581e:	f003 0301 	and.w	r3, r3, #1
87805822:	2b00      	cmp	r3, #0
87805824:	d001      	beq.n	8780582a <rtc_setdatetime+0x4e>
87805826:	f7ff feed 	bl	87805604 <rtc_enable>
8780582a:	3710      	adds	r7, #16
8780582c:	46bd      	mov	sp, r7
8780582e:	bd80      	pop	{r7, pc}

87805830 <rtc_convertseconds_to_datetime>:
87805830:	b590      	push	{r4, r7, lr}
87805832:	b08b      	sub	sp, #44	; 0x2c
87805834:	af00      	add	r7, sp, #0
87805836:	6078      	str	r0, [r7, #4]
87805838:	6039      	str	r1, [r7, #0]
8780583a:	f24c 32c8 	movw	r2, #50120	; 0xc3c8
8780583e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87805842:	f107 0308 	add.w	r3, r7, #8
87805846:	4614      	mov	r4, r2
87805848:	6820      	ldr	r0, [r4, #0]
8780584a:	6861      	ldr	r1, [r4, #4]
8780584c:	68a2      	ldr	r2, [r4, #8]
8780584e:	c307      	stmia	r3!, {r0, r1, r2}
87805850:	7b22      	ldrb	r2, [r4, #12]
87805852:	701a      	strb	r2, [r3, #0]
87805854:	687b      	ldr	r3, [r7, #4]
87805856:	61bb      	str	r3, [r7, #24]
87805858:	69ba      	ldr	r2, [r7, #24]
8780585a:	f244 5307 	movw	r3, #17671	; 0x4507
8780585e:	f2cc 232e 	movt	r3, #49710	; 0xc22e
87805862:	fba2 3403 	umull	r3, r4, r2, r3
87805866:	0c23      	lsrs	r3, r4, #16
87805868:	3301      	adds	r3, #1
8780586a:	623b      	str	r3, [r7, #32]
8780586c:	69ba      	ldr	r2, [r7, #24]
8780586e:	f244 5307 	movw	r3, #17671	; 0x4507
87805872:	f2cc 232e 	movt	r3, #49710	; 0xc22e
87805876:	fba2 3403 	umull	r3, r4, r2, r3
8780587a:	0c21      	lsrs	r1, r4, #16
8780587c:	f44f 43a3 	mov.w	r3, #20864	; 0x5180
87805880:	f2c0 0301 	movt	r3, #1
87805884:	fb03 f301 	mul.w	r3, r3, r1
87805888:	1ad3      	subs	r3, r2, r3
8780588a:	61bb      	str	r3, [r7, #24]
8780588c:	69ba      	ldr	r2, [r7, #24]
8780588e:	f24b 33c5 	movw	r3, #46021	; 0xb3c5
87805892:	f2c9 13a2 	movt	r3, #37282	; 0x91a2
87805896:	fba2 3403 	umull	r3, r4, r2, r3
8780589a:	0ae3      	lsrs	r3, r4, #11
8780589c:	b2da      	uxtb	r2, r3
8780589e:	683b      	ldr	r3, [r7, #0]
878058a0:	711a      	strb	r2, [r3, #4]
878058a2:	69b9      	ldr	r1, [r7, #24]
878058a4:	f24b 33c5 	movw	r3, #46021	; 0xb3c5
878058a8:	f2c9 13a2 	movt	r3, #37282	; 0x91a2
878058ac:	fba1 3403 	umull	r3, r4, r1, r3
878058b0:	0ae3      	lsrs	r3, r4, #11
878058b2:	461a      	mov	r2, r3
878058b4:	0113      	lsls	r3, r2, #4
878058b6:	461a      	mov	r2, r3
878058b8:	0113      	lsls	r3, r2, #4
878058ba:	1a9b      	subs	r3, r3, r2
878058bc:	011a      	lsls	r2, r3, #4
878058be:	1ad2      	subs	r2, r2, r3
878058c0:	1a8b      	subs	r3, r1, r2
878058c2:	61bb      	str	r3, [r7, #24]
878058c4:	69ba      	ldr	r2, [r7, #24]
878058c6:	f648 0389 	movw	r3, #34953	; 0x8889
878058ca:	f6c8 0388 	movt	r3, #34952	; 0x8888
878058ce:	fba2 3403 	umull	r3, r4, r2, r3
878058d2:	0963      	lsrs	r3, r4, #5
878058d4:	b2da      	uxtb	r2, r3
878058d6:	683b      	ldr	r3, [r7, #0]
878058d8:	715a      	strb	r2, [r3, #5]
878058da:	69b9      	ldr	r1, [r7, #24]
878058dc:	f648 0389 	movw	r3, #34953	; 0x8889
878058e0:	f6c8 0388 	movt	r3, #34952	; 0x8888
878058e4:	fba1 3403 	umull	r3, r4, r1, r3
878058e8:	0963      	lsrs	r3, r4, #5
878058ea:	461a      	mov	r2, r3
878058ec:	0093      	lsls	r3, r2, #2
878058ee:	461a      	mov	r2, r3
878058f0:	0113      	lsls	r3, r2, #4
878058f2:	1a9b      	subs	r3, r3, r2
878058f4:	1acb      	subs	r3, r1, r3
878058f6:	b2da      	uxtb	r2, r3
878058f8:	683b      	ldr	r3, [r7, #0]
878058fa:	719a      	strb	r2, [r3, #6]
878058fc:	f240 136d 	movw	r3, #365	; 0x16d
87805900:	83fb      	strh	r3, [r7, #30]
87805902:	683b      	ldr	r3, [r7, #0]
87805904:	f240 72b2 	movw	r2, #1970	; 0x7b2
87805908:	801a      	strh	r2, [r3, #0]
8780590a:	e018      	b.n	8780593e <rtc_convertseconds_to_datetime+0x10e>
8780590c:	8bfb      	ldrh	r3, [r7, #30]
8780590e:	6a3a      	ldr	r2, [r7, #32]
87805910:	1ad3      	subs	r3, r2, r3
87805912:	623b      	str	r3, [r7, #32]
87805914:	683b      	ldr	r3, [r7, #0]
87805916:	881b      	ldrh	r3, [r3, #0]
87805918:	3301      	adds	r3, #1
8780591a:	b29a      	uxth	r2, r3
8780591c:	683b      	ldr	r3, [r7, #0]
8780591e:	801a      	strh	r2, [r3, #0]
87805920:	683b      	ldr	r3, [r7, #0]
87805922:	881b      	ldrh	r3, [r3, #0]
87805924:	4618      	mov	r0, r3
87805926:	f7ff fea5 	bl	87805674 <rtc_isleapyear>
8780592a:	4603      	mov	r3, r0
8780592c:	2b00      	cmp	r3, #0
8780592e:	d103      	bne.n	87805938 <rtc_convertseconds_to_datetime+0x108>
87805930:	f240 136d 	movw	r3, #365	; 0x16d
87805934:	83fb      	strh	r3, [r7, #30]
87805936:	e002      	b.n	8780593e <rtc_convertseconds_to_datetime+0x10e>
87805938:	f44f 73b7 	mov.w	r3, #366	; 0x16e
8780593c:	83fb      	strh	r3, [r7, #30]
8780593e:	8bfa      	ldrh	r2, [r7, #30]
87805940:	6a3b      	ldr	r3, [r7, #32]
87805942:	429a      	cmp	r2, r3
87805944:	d3e2      	bcc.n	8780590c <rtc_convertseconds_to_datetime+0xdc>
87805946:	683b      	ldr	r3, [r7, #0]
87805948:	881b      	ldrh	r3, [r3, #0]
8780594a:	4618      	mov	r0, r3
8780594c:	f7ff fe92 	bl	87805674 <rtc_isleapyear>
87805950:	4603      	mov	r3, r0
87805952:	2b00      	cmp	r3, #0
87805954:	d001      	beq.n	8780595a <rtc_convertseconds_to_datetime+0x12a>
87805956:	231d      	movs	r3, #29
87805958:	72bb      	strb	r3, [r7, #10]
8780595a:	2301      	movs	r3, #1
8780595c:	627b      	str	r3, [r7, #36]	; 0x24
8780595e:	e019      	b.n	87805994 <rtc_convertseconds_to_datetime+0x164>
87805960:	f107 0208 	add.w	r2, r7, #8
87805964:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805966:	4413      	add	r3, r2
87805968:	781b      	ldrb	r3, [r3, #0]
8780596a:	461a      	mov	r2, r3
8780596c:	6a3b      	ldr	r3, [r7, #32]
8780596e:	429a      	cmp	r2, r3
87805970:	d304      	bcc.n	8780597c <rtc_convertseconds_to_datetime+0x14c>
87805972:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805974:	b2da      	uxtb	r2, r3
87805976:	683b      	ldr	r3, [r7, #0]
87805978:	709a      	strb	r2, [r3, #2]
8780597a:	e00e      	b.n	8780599a <rtc_convertseconds_to_datetime+0x16a>
8780597c:	f107 0208 	add.w	r2, r7, #8
87805980:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805982:	4413      	add	r3, r2
87805984:	781b      	ldrb	r3, [r3, #0]
87805986:	461a      	mov	r2, r3
87805988:	6a3b      	ldr	r3, [r7, #32]
8780598a:	1a9b      	subs	r3, r3, r2
8780598c:	623b      	str	r3, [r7, #32]
8780598e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805990:	3301      	adds	r3, #1
87805992:	627b      	str	r3, [r7, #36]	; 0x24
87805994:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805996:	2b0c      	cmp	r3, #12
87805998:	d9e2      	bls.n	87805960 <rtc_convertseconds_to_datetime+0x130>
8780599a:	6a3b      	ldr	r3, [r7, #32]
8780599c:	b2da      	uxtb	r2, r3
8780599e:	683b      	ldr	r3, [r7, #0]
878059a0:	70da      	strb	r2, [r3, #3]
878059a2:	372c      	adds	r7, #44	; 0x2c
878059a4:	46bd      	mov	sp, r7
878059a6:	bd90      	pop	{r4, r7, pc}

878059a8 <rtc_getseconds>:
878059a8:	b480      	push	{r7}
878059aa:	b083      	sub	sp, #12
878059ac:	af00      	add	r7, sp, #0
878059ae:	2300      	movs	r3, #0
878059b0:	607b      	str	r3, [r7, #4]
878059b2:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878059b6:	f2c0 230c 	movt	r3, #524	; 0x20c
878059ba:	6d1b      	ldr	r3, [r3, #80]	; 0x50
878059bc:	045a      	lsls	r2, r3, #17
878059be:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878059c2:	f2c0 230c 	movt	r3, #524	; 0x20c
878059c6:	6d5b      	ldr	r3, [r3, #84]	; 0x54
878059c8:	0bdb      	lsrs	r3, r3, #15
878059ca:	4313      	orrs	r3, r2
878059cc:	607b      	str	r3, [r7, #4]
878059ce:	687b      	ldr	r3, [r7, #4]
878059d0:	4618      	mov	r0, r3
878059d2:	370c      	adds	r7, #12
878059d4:	46bd      	mov	sp, r7
878059d6:	f85d 7b04 	ldr.w	r7, [sp], #4
878059da:	4770      	bx	lr

878059dc <rtc_getdatetime>:
878059dc:	b580      	push	{r7, lr}
878059de:	b084      	sub	sp, #16
878059e0:	af00      	add	r7, sp, #0
878059e2:	6078      	str	r0, [r7, #4]
878059e4:	2300      	movs	r3, #0
878059e6:	60fb      	str	r3, [r7, #12]
878059e8:	f7ff ffde 	bl	878059a8 <rtc_getseconds>
878059ec:	60f8      	str	r0, [r7, #12]
878059ee:	6879      	ldr	r1, [r7, #4]
878059f0:	68f8      	ldr	r0, [r7, #12]
878059f2:	f7ff ff1d 	bl	87805830 <rtc_convertseconds_to_datetime>
878059f6:	3710      	adds	r7, #16
878059f8:	46bd      	mov	sp, r7
878059fa:	bd80      	pop	{r7, pc}

878059fc <i2c_init>:
878059fc:	b480      	push	{r7}
878059fe:	b083      	sub	sp, #12
87805a00:	af00      	add	r7, sp, #0
87805a02:	6078      	str	r0, [r7, #4]
87805a04:	687b      	ldr	r3, [r7, #4]
87805a06:	891b      	ldrh	r3, [r3, #8]
87805a08:	b29b      	uxth	r3, r3
87805a0a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
87805a0e:	b29a      	uxth	r2, r3
87805a10:	687b      	ldr	r3, [r7, #4]
87805a12:	811a      	strh	r2, [r3, #8]
87805a14:	687b      	ldr	r3, [r7, #4]
87805a16:	2215      	movs	r2, #21
87805a18:	809a      	strh	r2, [r3, #4]
87805a1a:	687b      	ldr	r3, [r7, #4]
87805a1c:	891b      	ldrh	r3, [r3, #8]
87805a1e:	b29b      	uxth	r3, r3
87805a20:	f043 0380 	orr.w	r3, r3, #128	; 0x80
87805a24:	b29a      	uxth	r2, r3
87805a26:	687b      	ldr	r3, [r7, #4]
87805a28:	811a      	strh	r2, [r3, #8]
87805a2a:	370c      	adds	r7, #12
87805a2c:	46bd      	mov	sp, r7
87805a2e:	f85d 7b04 	ldr.w	r7, [sp], #4
87805a32:	4770      	bx	lr

87805a34 <i2c_master_repeated_start>:
87805a34:	b480      	push	{r7}
87805a36:	b085      	sub	sp, #20
87805a38:	af00      	add	r7, sp, #0
87805a3a:	60f8      	str	r0, [r7, #12]
87805a3c:	460b      	mov	r3, r1
87805a3e:	607a      	str	r2, [r7, #4]
87805a40:	72fb      	strb	r3, [r7, #11]
87805a42:	68fb      	ldr	r3, [r7, #12]
87805a44:	899b      	ldrh	r3, [r3, #12]
87805a46:	b29b      	uxth	r3, r3
87805a48:	f003 0320 	and.w	r3, r3, #32
87805a4c:	2b00      	cmp	r3, #0
87805a4e:	d008      	beq.n	87805a62 <i2c_master_repeated_start+0x2e>
87805a50:	68fb      	ldr	r3, [r7, #12]
87805a52:	891b      	ldrh	r3, [r3, #8]
87805a54:	b29b      	uxth	r3, r3
87805a56:	f003 0320 	and.w	r3, r3, #32
87805a5a:	2b00      	cmp	r3, #0
87805a5c:	d101      	bne.n	87805a62 <i2c_master_repeated_start+0x2e>
87805a5e:	2301      	movs	r3, #1
87805a60:	e016      	b.n	87805a90 <i2c_master_repeated_start+0x5c>
87805a62:	68fb      	ldr	r3, [r7, #12]
87805a64:	891b      	ldrh	r3, [r3, #8]
87805a66:	b29b      	uxth	r3, r3
87805a68:	f043 0314 	orr.w	r3, r3, #20
87805a6c:	b29a      	uxth	r2, r3
87805a6e:	68fb      	ldr	r3, [r7, #12]
87805a70:	811a      	strh	r2, [r3, #8]
87805a72:	7afb      	ldrb	r3, [r7, #11]
87805a74:	b29b      	uxth	r3, r3
87805a76:	005b      	lsls	r3, r3, #1
87805a78:	b29a      	uxth	r2, r3
87805a7a:	687b      	ldr	r3, [r7, #4]
87805a7c:	2b01      	cmp	r3, #1
87805a7e:	d101      	bne.n	87805a84 <i2c_master_repeated_start+0x50>
87805a80:	2301      	movs	r3, #1
87805a82:	e000      	b.n	87805a86 <i2c_master_repeated_start+0x52>
87805a84:	2300      	movs	r3, #0
87805a86:	4313      	orrs	r3, r2
87805a88:	b29a      	uxth	r2, r3
87805a8a:	68fb      	ldr	r3, [r7, #12]
87805a8c:	821a      	strh	r2, [r3, #16]
87805a8e:	2300      	movs	r3, #0
87805a90:	4618      	mov	r0, r3
87805a92:	3714      	adds	r7, #20
87805a94:	46bd      	mov	sp, r7
87805a96:	f85d 7b04 	ldr.w	r7, [sp], #4
87805a9a:	4770      	bx	lr

87805a9c <i2c_master_start>:
87805a9c:	b480      	push	{r7}
87805a9e:	b085      	sub	sp, #20
87805aa0:	af00      	add	r7, sp, #0
87805aa2:	60f8      	str	r0, [r7, #12]
87805aa4:	460b      	mov	r3, r1
87805aa6:	607a      	str	r2, [r7, #4]
87805aa8:	72fb      	strb	r3, [r7, #11]
87805aaa:	68fb      	ldr	r3, [r7, #12]
87805aac:	899b      	ldrh	r3, [r3, #12]
87805aae:	b29b      	uxth	r3, r3
87805ab0:	f003 0320 	and.w	r3, r3, #32
87805ab4:	2b00      	cmp	r3, #0
87805ab6:	d001      	beq.n	87805abc <i2c_master_start+0x20>
87805ab8:	2301      	movs	r3, #1
87805aba:	e016      	b.n	87805aea <i2c_master_start+0x4e>
87805abc:	68fb      	ldr	r3, [r7, #12]
87805abe:	891b      	ldrh	r3, [r3, #8]
87805ac0:	b29b      	uxth	r3, r3
87805ac2:	f043 0330 	orr.w	r3, r3, #48	; 0x30
87805ac6:	b29a      	uxth	r2, r3
87805ac8:	68fb      	ldr	r3, [r7, #12]
87805aca:	811a      	strh	r2, [r3, #8]
87805acc:	7afb      	ldrb	r3, [r7, #11]
87805ace:	b29b      	uxth	r3, r3
87805ad0:	005b      	lsls	r3, r3, #1
87805ad2:	b29a      	uxth	r2, r3
87805ad4:	687b      	ldr	r3, [r7, #4]
87805ad6:	2b01      	cmp	r3, #1
87805ad8:	d101      	bne.n	87805ade <i2c_master_start+0x42>
87805ada:	2301      	movs	r3, #1
87805adc:	e000      	b.n	87805ae0 <i2c_master_start+0x44>
87805ade:	2300      	movs	r3, #0
87805ae0:	4313      	orrs	r3, r2
87805ae2:	b29a      	uxth	r2, r3
87805ae4:	68fb      	ldr	r3, [r7, #12]
87805ae6:	821a      	strh	r2, [r3, #16]
87805ae8:	2300      	movs	r3, #0
87805aea:	4618      	mov	r0, r3
87805aec:	3714      	adds	r7, #20
87805aee:	46bd      	mov	sp, r7
87805af0:	f85d 7b04 	ldr.w	r7, [sp], #4
87805af4:	4770      	bx	lr
87805af6:	bf00      	nop

87805af8 <i2c_check_and_clear_error>:
87805af8:	b480      	push	{r7}
87805afa:	b083      	sub	sp, #12
87805afc:	af00      	add	r7, sp, #0
87805afe:	6078      	str	r0, [r7, #4]
87805b00:	6039      	str	r1, [r7, #0]
87805b02:	683b      	ldr	r3, [r7, #0]
87805b04:	f003 0310 	and.w	r3, r3, #16
87805b08:	2b00      	cmp	r3, #0
87805b0a:	d019      	beq.n	87805b40 <i2c_check_and_clear_error+0x48>
87805b0c:	687b      	ldr	r3, [r7, #4]
87805b0e:	899b      	ldrh	r3, [r3, #12]
87805b10:	b29b      	uxth	r3, r3
87805b12:	f023 0310 	bic.w	r3, r3, #16
87805b16:	b29a      	uxth	r2, r3
87805b18:	687b      	ldr	r3, [r7, #4]
87805b1a:	819a      	strh	r2, [r3, #12]
87805b1c:	687b      	ldr	r3, [r7, #4]
87805b1e:	891b      	ldrh	r3, [r3, #8]
87805b20:	b29b      	uxth	r3, r3
87805b22:	f023 0380 	bic.w	r3, r3, #128	; 0x80
87805b26:	b29a      	uxth	r2, r3
87805b28:	687b      	ldr	r3, [r7, #4]
87805b2a:	811a      	strh	r2, [r3, #8]
87805b2c:	687b      	ldr	r3, [r7, #4]
87805b2e:	891b      	ldrh	r3, [r3, #8]
87805b30:	b29b      	uxth	r3, r3
87805b32:	f043 0380 	orr.w	r3, r3, #128	; 0x80
87805b36:	b29a      	uxth	r2, r3
87805b38:	687b      	ldr	r3, [r7, #4]
87805b3a:	811a      	strh	r2, [r3, #8]
87805b3c:	2304      	movs	r3, #4
87805b3e:	e007      	b.n	87805b50 <i2c_check_and_clear_error+0x58>
87805b40:	683b      	ldr	r3, [r7, #0]
87805b42:	f003 0301 	and.w	r3, r3, #1
87805b46:	2b00      	cmp	r3, #0
87805b48:	d001      	beq.n	87805b4e <i2c_check_and_clear_error+0x56>
87805b4a:	2303      	movs	r3, #3
87805b4c:	e000      	b.n	87805b50 <i2c_check_and_clear_error+0x58>
87805b4e:	2300      	movs	r3, #0
87805b50:	4618      	mov	r0, r3
87805b52:	370c      	adds	r7, #12
87805b54:	46bd      	mov	sp, r7
87805b56:	f85d 7b04 	ldr.w	r7, [sp], #4
87805b5a:	4770      	bx	lr

87805b5c <i2c_master_stop>:
87805b5c:	b480      	push	{r7}
87805b5e:	b085      	sub	sp, #20
87805b60:	af00      	add	r7, sp, #0
87805b62:	6078      	str	r0, [r7, #4]
87805b64:	f64f 73ff 	movw	r3, #65535	; 0xffff
87805b68:	81fb      	strh	r3, [r7, #14]
87805b6a:	687b      	ldr	r3, [r7, #4]
87805b6c:	891b      	ldrh	r3, [r3, #8]
87805b6e:	b29b      	uxth	r3, r3
87805b70:	f023 0338 	bic.w	r3, r3, #56	; 0x38
87805b74:	b29a      	uxth	r2, r3
87805b76:	687b      	ldr	r3, [r7, #4]
87805b78:	811a      	strh	r2, [r3, #8]
87805b7a:	e007      	b.n	87805b8c <i2c_master_stop+0x30>
87805b7c:	89fb      	ldrh	r3, [r7, #14]
87805b7e:	3b01      	subs	r3, #1
87805b80:	81fb      	strh	r3, [r7, #14]
87805b82:	89fb      	ldrh	r3, [r7, #14]
87805b84:	2b00      	cmp	r3, #0
87805b86:	d101      	bne.n	87805b8c <i2c_master_stop+0x30>
87805b88:	2305      	movs	r3, #5
87805b8a:	e007      	b.n	87805b9c <i2c_master_stop+0x40>
87805b8c:	687b      	ldr	r3, [r7, #4]
87805b8e:	899b      	ldrh	r3, [r3, #12]
87805b90:	b29b      	uxth	r3, r3
87805b92:	f003 0320 	and.w	r3, r3, #32
87805b96:	2b00      	cmp	r3, #0
87805b98:	d1f0      	bne.n	87805b7c <i2c_master_stop+0x20>
87805b9a:	2300      	movs	r3, #0
87805b9c:	4618      	mov	r0, r3
87805b9e:	3714      	adds	r7, #20
87805ba0:	46bd      	mov	sp, r7
87805ba2:	f85d 7b04 	ldr.w	r7, [sp], #4
87805ba6:	4770      	bx	lr

87805ba8 <i2c_master_write>:
87805ba8:	b580      	push	{r7, lr}
87805baa:	b084      	sub	sp, #16
87805bac:	af00      	add	r7, sp, #0
87805bae:	60f8      	str	r0, [r7, #12]
87805bb0:	60b9      	str	r1, [r7, #8]
87805bb2:	607a      	str	r2, [r7, #4]
87805bb4:	bf00      	nop
87805bb6:	68fb      	ldr	r3, [r7, #12]
87805bb8:	899b      	ldrh	r3, [r3, #12]
87805bba:	b29b      	uxth	r3, r3
87805bbc:	f003 0380 	and.w	r3, r3, #128	; 0x80
87805bc0:	2b00      	cmp	r3, #0
87805bc2:	d0f8      	beq.n	87805bb6 <i2c_master_write+0xe>
87805bc4:	68fb      	ldr	r3, [r7, #12]
87805bc6:	899b      	ldrh	r3, [r3, #12]
87805bc8:	b29b      	uxth	r3, r3
87805bca:	f023 0302 	bic.w	r3, r3, #2
87805bce:	b29a      	uxth	r2, r3
87805bd0:	68fb      	ldr	r3, [r7, #12]
87805bd2:	819a      	strh	r2, [r3, #12]
87805bd4:	68fb      	ldr	r3, [r7, #12]
87805bd6:	891b      	ldrh	r3, [r3, #8]
87805bd8:	b29b      	uxth	r3, r3
87805bda:	f043 0310 	orr.w	r3, r3, #16
87805bde:	b29a      	uxth	r2, r3
87805be0:	68fb      	ldr	r3, [r7, #12]
87805be2:	811a      	strh	r2, [r3, #8]
87805be4:	e021      	b.n	87805c2a <i2c_master_write+0x82>
87805be6:	68bb      	ldr	r3, [r7, #8]
87805be8:	1c5a      	adds	r2, r3, #1
87805bea:	60ba      	str	r2, [r7, #8]
87805bec:	781b      	ldrb	r3, [r3, #0]
87805bee:	b29a      	uxth	r2, r3
87805bf0:	68fb      	ldr	r3, [r7, #12]
87805bf2:	821a      	strh	r2, [r3, #16]
87805bf4:	bf00      	nop
87805bf6:	68fb      	ldr	r3, [r7, #12]
87805bf8:	899b      	ldrh	r3, [r3, #12]
87805bfa:	b29b      	uxth	r3, r3
87805bfc:	f003 0302 	and.w	r3, r3, #2
87805c00:	2b00      	cmp	r3, #0
87805c02:	d0f8      	beq.n	87805bf6 <i2c_master_write+0x4e>
87805c04:	68fb      	ldr	r3, [r7, #12]
87805c06:	899b      	ldrh	r3, [r3, #12]
87805c08:	b29b      	uxth	r3, r3
87805c0a:	f023 0302 	bic.w	r3, r3, #2
87805c0e:	b29a      	uxth	r2, r3
87805c10:	68fb      	ldr	r3, [r7, #12]
87805c12:	819a      	strh	r2, [r3, #12]
87805c14:	68fb      	ldr	r3, [r7, #12]
87805c16:	899b      	ldrh	r3, [r3, #12]
87805c18:	b29b      	uxth	r3, r3
87805c1a:	4619      	mov	r1, r3
87805c1c:	68f8      	ldr	r0, [r7, #12]
87805c1e:	f7ff ff6b 	bl	87805af8 <i2c_check_and_clear_error>
87805c22:	4603      	mov	r3, r0
87805c24:	2b00      	cmp	r3, #0
87805c26:	d000      	beq.n	87805c2a <i2c_master_write+0x82>
87805c28:	e004      	b.n	87805c34 <i2c_master_write+0x8c>
87805c2a:	687b      	ldr	r3, [r7, #4]
87805c2c:	1e5a      	subs	r2, r3, #1
87805c2e:	607a      	str	r2, [r7, #4]
87805c30:	2b00      	cmp	r3, #0
87805c32:	d1d8      	bne.n	87805be6 <i2c_master_write+0x3e>
87805c34:	68fb      	ldr	r3, [r7, #12]
87805c36:	899b      	ldrh	r3, [r3, #12]
87805c38:	b29b      	uxth	r3, r3
87805c3a:	f023 0302 	bic.w	r3, r3, #2
87805c3e:	b29a      	uxth	r2, r3
87805c40:	68fb      	ldr	r3, [r7, #12]
87805c42:	819a      	strh	r2, [r3, #12]
87805c44:	68f8      	ldr	r0, [r7, #12]
87805c46:	f7ff ff89 	bl	87805b5c <i2c_master_stop>
87805c4a:	3710      	adds	r7, #16
87805c4c:	46bd      	mov	sp, r7
87805c4e:	bd80      	pop	{r7, pc}

87805c50 <i2c_master_read>:
87805c50:	b580      	push	{r7, lr}
87805c52:	b086      	sub	sp, #24
87805c54:	af00      	add	r7, sp, #0
87805c56:	60f8      	str	r0, [r7, #12]
87805c58:	60b9      	str	r1, [r7, #8]
87805c5a:	607a      	str	r2, [r7, #4]
87805c5c:	2300      	movs	r3, #0
87805c5e:	75fb      	strb	r3, [r7, #23]
87805c60:	7dfb      	ldrb	r3, [r7, #23]
87805c62:	b2db      	uxtb	r3, r3
87805c64:	3301      	adds	r3, #1
87805c66:	b2db      	uxtb	r3, r3
87805c68:	75fb      	strb	r3, [r7, #23]
87805c6a:	bf00      	nop
87805c6c:	68fb      	ldr	r3, [r7, #12]
87805c6e:	899b      	ldrh	r3, [r3, #12]
87805c70:	b29b      	uxth	r3, r3
87805c72:	f003 0380 	and.w	r3, r3, #128	; 0x80
87805c76:	2b00      	cmp	r3, #0
87805c78:	d0f8      	beq.n	87805c6c <i2c_master_read+0x1c>
87805c7a:	68fb      	ldr	r3, [r7, #12]
87805c7c:	899b      	ldrh	r3, [r3, #12]
87805c7e:	b29b      	uxth	r3, r3
87805c80:	f023 0302 	bic.w	r3, r3, #2
87805c84:	b29a      	uxth	r2, r3
87805c86:	68fb      	ldr	r3, [r7, #12]
87805c88:	819a      	strh	r2, [r3, #12]
87805c8a:	68fb      	ldr	r3, [r7, #12]
87805c8c:	891b      	ldrh	r3, [r3, #8]
87805c8e:	b29b      	uxth	r3, r3
87805c90:	f023 0318 	bic.w	r3, r3, #24
87805c94:	b29a      	uxth	r2, r3
87805c96:	68fb      	ldr	r3, [r7, #12]
87805c98:	811a      	strh	r2, [r3, #8]
87805c9a:	687b      	ldr	r3, [r7, #4]
87805c9c:	2b01      	cmp	r3, #1
87805c9e:	d107      	bne.n	87805cb0 <i2c_master_read+0x60>
87805ca0:	68fb      	ldr	r3, [r7, #12]
87805ca2:	891b      	ldrh	r3, [r3, #8]
87805ca4:	b29b      	uxth	r3, r3
87805ca6:	f043 0308 	orr.w	r3, r3, #8
87805caa:	b29a      	uxth	r2, r3
87805cac:	68fb      	ldr	r3, [r7, #12]
87805cae:	811a      	strh	r2, [r3, #8]
87805cb0:	68fb      	ldr	r3, [r7, #12]
87805cb2:	8a1b      	ldrh	r3, [r3, #16]
87805cb4:	b29b      	uxth	r3, r3
87805cb6:	b2db      	uxtb	r3, r3
87805cb8:	75fb      	strb	r3, [r7, #23]
87805cba:	e028      	b.n	87805d0e <i2c_master_read+0xbe>
87805cbc:	bf00      	nop
87805cbe:	68fb      	ldr	r3, [r7, #12]
87805cc0:	899b      	ldrh	r3, [r3, #12]
87805cc2:	b29b      	uxth	r3, r3
87805cc4:	f003 0302 	and.w	r3, r3, #2
87805cc8:	2b00      	cmp	r3, #0
87805cca:	d0f8      	beq.n	87805cbe <i2c_master_read+0x6e>
87805ccc:	68fb      	ldr	r3, [r7, #12]
87805cce:	899b      	ldrh	r3, [r3, #12]
87805cd0:	b29b      	uxth	r3, r3
87805cd2:	f023 0302 	bic.w	r3, r3, #2
87805cd6:	b29a      	uxth	r2, r3
87805cd8:	68fb      	ldr	r3, [r7, #12]
87805cda:	819a      	strh	r2, [r3, #12]
87805cdc:	687b      	ldr	r3, [r7, #4]
87805cde:	2b00      	cmp	r3, #0
87805ce0:	d102      	bne.n	87805ce8 <i2c_master_read+0x98>
87805ce2:	68f8      	ldr	r0, [r7, #12]
87805ce4:	f7ff ff3a 	bl	87805b5c <i2c_master_stop>
87805ce8:	687b      	ldr	r3, [r7, #4]
87805cea:	2b01      	cmp	r3, #1
87805cec:	d107      	bne.n	87805cfe <i2c_master_read+0xae>
87805cee:	68fb      	ldr	r3, [r7, #12]
87805cf0:	891b      	ldrh	r3, [r3, #8]
87805cf2:	b29b      	uxth	r3, r3
87805cf4:	f043 0308 	orr.w	r3, r3, #8
87805cf8:	b29a      	uxth	r2, r3
87805cfa:	68fb      	ldr	r3, [r7, #12]
87805cfc:	811a      	strh	r2, [r3, #8]
87805cfe:	68bb      	ldr	r3, [r7, #8]
87805d00:	1c5a      	adds	r2, r3, #1
87805d02:	60ba      	str	r2, [r7, #8]
87805d04:	68fa      	ldr	r2, [r7, #12]
87805d06:	8a12      	ldrh	r2, [r2, #16]
87805d08:	b292      	uxth	r2, r2
87805d0a:	b2d2      	uxtb	r2, r2
87805d0c:	701a      	strb	r2, [r3, #0]
87805d0e:	687b      	ldr	r3, [r7, #4]
87805d10:	1e5a      	subs	r2, r3, #1
87805d12:	607a      	str	r2, [r7, #4]
87805d14:	2b00      	cmp	r3, #0
87805d16:	d1d1      	bne.n	87805cbc <i2c_master_read+0x6c>
87805d18:	3718      	adds	r7, #24
87805d1a:	46bd      	mov	sp, r7
87805d1c:	bd80      	pop	{r7, pc}
87805d1e:	bf00      	nop

87805d20 <i2c_master_transfer>:
87805d20:	b580      	push	{r7, lr}
87805d22:	b084      	sub	sp, #16
87805d24:	af00      	add	r7, sp, #0
87805d26:	6078      	str	r0, [r7, #4]
87805d28:	6039      	str	r1, [r7, #0]
87805d2a:	2300      	movs	r3, #0
87805d2c:	72fb      	strb	r3, [r7, #11]
87805d2e:	683b      	ldr	r3, [r7, #0]
87805d30:	685b      	ldr	r3, [r3, #4]
87805d32:	60fb      	str	r3, [r7, #12]
87805d34:	687b      	ldr	r3, [r7, #4]
87805d36:	899b      	ldrh	r3, [r3, #12]
87805d38:	b29b      	uxth	r3, r3
87805d3a:	f023 0312 	bic.w	r3, r3, #18
87805d3e:	b29a      	uxth	r2, r3
87805d40:	687b      	ldr	r3, [r7, #4]
87805d42:	819a      	strh	r2, [r3, #12]
87805d44:	bf00      	nop
87805d46:	687b      	ldr	r3, [r7, #4]
87805d48:	899b      	ldrh	r3, [r3, #12]
87805d4a:	b29b      	uxth	r3, r3
87805d4c:	09db      	lsrs	r3, r3, #7
87805d4e:	b29b      	uxth	r3, r3
87805d50:	f003 0301 	and.w	r3, r3, #1
87805d54:	2b00      	cmp	r3, #0
87805d56:	d0f6      	beq.n	87805d46 <i2c_master_transfer+0x26>
87805d58:	683b      	ldr	r3, [r7, #0]
87805d5a:	7b1b      	ldrb	r3, [r3, #12]
87805d5c:	2b00      	cmp	r3, #0
87805d5e:	d005      	beq.n	87805d6c <i2c_master_transfer+0x4c>
87805d60:	683b      	ldr	r3, [r7, #0]
87805d62:	685b      	ldr	r3, [r3, #4]
87805d64:	2b01      	cmp	r3, #1
87805d66:	d101      	bne.n	87805d6c <i2c_master_transfer+0x4c>
87805d68:	2300      	movs	r3, #0
87805d6a:	60fb      	str	r3, [r7, #12]
87805d6c:	683b      	ldr	r3, [r7, #0]
87805d6e:	781b      	ldrb	r3, [r3, #0]
87805d70:	68fa      	ldr	r2, [r7, #12]
87805d72:	4619      	mov	r1, r3
87805d74:	6878      	ldr	r0, [r7, #4]
87805d76:	f7ff fe91 	bl	87805a9c <i2c_master_start>
87805d7a:	4603      	mov	r3, r0
87805d7c:	72fb      	strb	r3, [r7, #11]
87805d7e:	7afb      	ldrb	r3, [r7, #11]
87805d80:	2b00      	cmp	r3, #0
87805d82:	d001      	beq.n	87805d88 <i2c_master_transfer+0x68>
87805d84:	7afb      	ldrb	r3, [r7, #11]
87805d86:	e0a3      	b.n	87805ed0 <i2c_master_transfer+0x1b0>
87805d88:	bf00      	nop
87805d8a:	687b      	ldr	r3, [r7, #4]
87805d8c:	899b      	ldrh	r3, [r3, #12]
87805d8e:	b29b      	uxth	r3, r3
87805d90:	f003 0302 	and.w	r3, r3, #2
87805d94:	2b00      	cmp	r3, #0
87805d96:	d0f8      	beq.n	87805d8a <i2c_master_transfer+0x6a>
87805d98:	687b      	ldr	r3, [r7, #4]
87805d9a:	899b      	ldrh	r3, [r3, #12]
87805d9c:	b29b      	uxth	r3, r3
87805d9e:	4619      	mov	r1, r3
87805da0:	6878      	ldr	r0, [r7, #4]
87805da2:	f7ff fea9 	bl	87805af8 <i2c_check_and_clear_error>
87805da6:	4603      	mov	r3, r0
87805da8:	72fb      	strb	r3, [r7, #11]
87805daa:	7afb      	ldrb	r3, [r7, #11]
87805dac:	2b00      	cmp	r3, #0
87805dae:	d004      	beq.n	87805dba <i2c_master_transfer+0x9a>
87805db0:	6878      	ldr	r0, [r7, #4]
87805db2:	f7ff fed3 	bl	87805b5c <i2c_master_stop>
87805db6:	7afb      	ldrb	r3, [r7, #11]
87805db8:	e08a      	b.n	87805ed0 <i2c_master_transfer+0x1b0>
87805dba:	683b      	ldr	r3, [r7, #0]
87805dbc:	7b1b      	ldrb	r3, [r3, #12]
87805dbe:	2b00      	cmp	r3, #0
87805dc0:	d065      	beq.n	87805e8e <i2c_master_transfer+0x16e>
87805dc2:	687b      	ldr	r3, [r7, #4]
87805dc4:	899b      	ldrh	r3, [r3, #12]
87805dc6:	b29b      	uxth	r3, r3
87805dc8:	f023 0302 	bic.w	r3, r3, #2
87805dcc:	b29a      	uxth	r2, r3
87805dce:	687b      	ldr	r3, [r7, #4]
87805dd0:	819a      	strh	r2, [r3, #12]
87805dd2:	683b      	ldr	r3, [r7, #0]
87805dd4:	7b1b      	ldrb	r3, [r3, #12]
87805dd6:	3b01      	subs	r3, #1
87805dd8:	b2da      	uxtb	r2, r3
87805dda:	683b      	ldr	r3, [r7, #0]
87805ddc:	731a      	strb	r2, [r3, #12]
87805dde:	683b      	ldr	r3, [r7, #0]
87805de0:	689a      	ldr	r2, [r3, #8]
87805de2:	683b      	ldr	r3, [r7, #0]
87805de4:	7b1b      	ldrb	r3, [r3, #12]
87805de6:	00db      	lsls	r3, r3, #3
87805de8:	fa22 f303 	lsr.w	r3, r2, r3
87805dec:	b29a      	uxth	r2, r3
87805dee:	687b      	ldr	r3, [r7, #4]
87805df0:	821a      	strh	r2, [r3, #16]
87805df2:	bf00      	nop
87805df4:	687b      	ldr	r3, [r7, #4]
87805df6:	899b      	ldrh	r3, [r3, #12]
87805df8:	b29b      	uxth	r3, r3
87805dfa:	f003 0302 	and.w	r3, r3, #2
87805dfe:	2b00      	cmp	r3, #0
87805e00:	d0f8      	beq.n	87805df4 <i2c_master_transfer+0xd4>
87805e02:	687b      	ldr	r3, [r7, #4]
87805e04:	899b      	ldrh	r3, [r3, #12]
87805e06:	b29b      	uxth	r3, r3
87805e08:	4619      	mov	r1, r3
87805e0a:	6878      	ldr	r0, [r7, #4]
87805e0c:	f7ff fe74 	bl	87805af8 <i2c_check_and_clear_error>
87805e10:	4603      	mov	r3, r0
87805e12:	72fb      	strb	r3, [r7, #11]
87805e14:	7afb      	ldrb	r3, [r7, #11]
87805e16:	2b00      	cmp	r3, #0
87805e18:	d004      	beq.n	87805e24 <i2c_master_transfer+0x104>
87805e1a:	6878      	ldr	r0, [r7, #4]
87805e1c:	f7ff fe9e 	bl	87805b5c <i2c_master_stop>
87805e20:	7afb      	ldrb	r3, [r7, #11]
87805e22:	e055      	b.n	87805ed0 <i2c_master_transfer+0x1b0>
87805e24:	683b      	ldr	r3, [r7, #0]
87805e26:	7b1b      	ldrb	r3, [r3, #12]
87805e28:	2b00      	cmp	r3, #0
87805e2a:	d002      	beq.n	87805e32 <i2c_master_transfer+0x112>
87805e2c:	7afb      	ldrb	r3, [r7, #11]
87805e2e:	2b00      	cmp	r3, #0
87805e30:	d0c7      	beq.n	87805dc2 <i2c_master_transfer+0xa2>
87805e32:	683b      	ldr	r3, [r7, #0]
87805e34:	685b      	ldr	r3, [r3, #4]
87805e36:	2b01      	cmp	r3, #1
87805e38:	d129      	bne.n	87805e8e <i2c_master_transfer+0x16e>
87805e3a:	687b      	ldr	r3, [r7, #4]
87805e3c:	899b      	ldrh	r3, [r3, #12]
87805e3e:	b29b      	uxth	r3, r3
87805e40:	f023 0302 	bic.w	r3, r3, #2
87805e44:	b29a      	uxth	r2, r3
87805e46:	687b      	ldr	r3, [r7, #4]
87805e48:	819a      	strh	r2, [r3, #12]
87805e4a:	683b      	ldr	r3, [r7, #0]
87805e4c:	781b      	ldrb	r3, [r3, #0]
87805e4e:	2201      	movs	r2, #1
87805e50:	4619      	mov	r1, r3
87805e52:	6878      	ldr	r0, [r7, #4]
87805e54:	f7ff fdee 	bl	87805a34 <i2c_master_repeated_start>
87805e58:	bf00      	nop
87805e5a:	687b      	ldr	r3, [r7, #4]
87805e5c:	899b      	ldrh	r3, [r3, #12]
87805e5e:	b29b      	uxth	r3, r3
87805e60:	f003 0302 	and.w	r3, r3, #2
87805e64:	2b00      	cmp	r3, #0
87805e66:	d0f8      	beq.n	87805e5a <i2c_master_transfer+0x13a>
87805e68:	687b      	ldr	r3, [r7, #4]
87805e6a:	899b      	ldrh	r3, [r3, #12]
87805e6c:	b29b      	uxth	r3, r3
87805e6e:	4619      	mov	r1, r3
87805e70:	6878      	ldr	r0, [r7, #4]
87805e72:	f7ff fe41 	bl	87805af8 <i2c_check_and_clear_error>
87805e76:	4603      	mov	r3, r0
87805e78:	72fb      	strb	r3, [r7, #11]
87805e7a:	7afb      	ldrb	r3, [r7, #11]
87805e7c:	2b00      	cmp	r3, #0
87805e7e:	d006      	beq.n	87805e8e <i2c_master_transfer+0x16e>
87805e80:	2306      	movs	r3, #6
87805e82:	72fb      	strb	r3, [r7, #11]
87805e84:	6878      	ldr	r0, [r7, #4]
87805e86:	f7ff fe69 	bl	87805b5c <i2c_master_stop>
87805e8a:	7afb      	ldrb	r3, [r7, #11]
87805e8c:	e020      	b.n	87805ed0 <i2c_master_transfer+0x1b0>
87805e8e:	683b      	ldr	r3, [r7, #0]
87805e90:	685b      	ldr	r3, [r3, #4]
87805e92:	2b00      	cmp	r3, #0
87805e94:	d10b      	bne.n	87805eae <i2c_master_transfer+0x18e>
87805e96:	683b      	ldr	r3, [r7, #0]
87805e98:	695b      	ldr	r3, [r3, #20]
87805e9a:	2b00      	cmp	r3, #0
87805e9c:	d007      	beq.n	87805eae <i2c_master_transfer+0x18e>
87805e9e:	683b      	ldr	r3, [r7, #0]
87805ea0:	6919      	ldr	r1, [r3, #16]
87805ea2:	683b      	ldr	r3, [r7, #0]
87805ea4:	695b      	ldr	r3, [r3, #20]
87805ea6:	461a      	mov	r2, r3
87805ea8:	6878      	ldr	r0, [r7, #4]
87805eaa:	f7ff fe7d 	bl	87805ba8 <i2c_master_write>
87805eae:	683b      	ldr	r3, [r7, #0]
87805eb0:	685b      	ldr	r3, [r3, #4]
87805eb2:	2b01      	cmp	r3, #1
87805eb4:	d10b      	bne.n	87805ece <i2c_master_transfer+0x1ae>
87805eb6:	683b      	ldr	r3, [r7, #0]
87805eb8:	695b      	ldr	r3, [r3, #20]
87805eba:	2b00      	cmp	r3, #0
87805ebc:	d007      	beq.n	87805ece <i2c_master_transfer+0x1ae>
87805ebe:	683b      	ldr	r3, [r7, #0]
87805ec0:	6919      	ldr	r1, [r3, #16]
87805ec2:	683b      	ldr	r3, [r7, #0]
87805ec4:	695b      	ldr	r3, [r3, #20]
87805ec6:	461a      	mov	r2, r3
87805ec8:	6878      	ldr	r0, [r7, #4]
87805eca:	f7ff fec1 	bl	87805c50 <i2c_master_read>
87805ece:	2300      	movs	r3, #0
87805ed0:	4618      	mov	r0, r3
87805ed2:	3710      	adds	r7, #16
87805ed4:	46bd      	mov	sp, r7
87805ed6:	bd80      	pop	{r7, pc}

87805ed8 <IOMUXC_SetPinMux>:
87805ed8:	b480      	push	{r7}
87805eda:	b085      	sub	sp, #20
87805edc:	af00      	add	r7, sp, #0
87805ede:	60f8      	str	r0, [r7, #12]
87805ee0:	60b9      	str	r1, [r7, #8]
87805ee2:	607a      	str	r2, [r7, #4]
87805ee4:	603b      	str	r3, [r7, #0]
87805ee6:	68fb      	ldr	r3, [r7, #12]
87805ee8:	68ba      	ldr	r2, [r7, #8]
87805eea:	f002 010f 	and.w	r1, r2, #15
87805eee:	69fa      	ldr	r2, [r7, #28]
87805ef0:	0112      	lsls	r2, r2, #4
87805ef2:	f002 0210 	and.w	r2, r2, #16
87805ef6:	430a      	orrs	r2, r1
87805ef8:	601a      	str	r2, [r3, #0]
87805efa:	687b      	ldr	r3, [r7, #4]
87805efc:	2b00      	cmp	r3, #0
87805efe:	d004      	beq.n	87805f0a <IOMUXC_SetPinMux+0x32>
87805f00:	687b      	ldr	r3, [r7, #4]
87805f02:	683a      	ldr	r2, [r7, #0]
87805f04:	f002 0207 	and.w	r2, r2, #7
87805f08:	601a      	str	r2, [r3, #0]
87805f0a:	3714      	adds	r7, #20
87805f0c:	46bd      	mov	sp, r7
87805f0e:	f85d 7b04 	ldr.w	r7, [sp], #4
87805f12:	4770      	bx	lr

87805f14 <IOMUXC_SetPinConfig>:
87805f14:	b480      	push	{r7}
87805f16:	b085      	sub	sp, #20
87805f18:	af00      	add	r7, sp, #0
87805f1a:	60f8      	str	r0, [r7, #12]
87805f1c:	60b9      	str	r1, [r7, #8]
87805f1e:	607a      	str	r2, [r7, #4]
87805f20:	603b      	str	r3, [r7, #0]
87805f22:	69bb      	ldr	r3, [r7, #24]
87805f24:	2b00      	cmp	r3, #0
87805f26:	d002      	beq.n	87805f2e <IOMUXC_SetPinConfig+0x1a>
87805f28:	69bb      	ldr	r3, [r7, #24]
87805f2a:	69fa      	ldr	r2, [r7, #28]
87805f2c:	601a      	str	r2, [r3, #0]
87805f2e:	3714      	adds	r7, #20
87805f30:	46bd      	mov	sp, r7
87805f32:	f85d 7b04 	ldr.w	r7, [sp], #4
87805f36:	4770      	bx	lr

87805f38 <ap3216c_init>:
87805f38:	b580      	push	{r7, lr}
87805f3a:	b084      	sub	sp, #16
87805f3c:	af02      	add	r7, sp, #8
87805f3e:	2300      	movs	r3, #0
87805f40:	71fb      	strb	r3, [r7, #7]
87805f42:	2301      	movs	r3, #1
87805f44:	9301      	str	r3, [sp, #4]
87805f46:	f44f 7350 	mov.w	r3, #832	; 0x340
87805f4a:	f2c0 230e 	movt	r3, #526	; 0x20e
87805f4e:	9300      	str	r3, [sp, #0]
87805f50:	2301      	movs	r3, #1
87805f52:	f240 52a4 	movw	r2, #1444	; 0x5a4
87805f56:	f2c0 220e 	movt	r2, #526	; 0x20e
87805f5a:	2102      	movs	r1, #2
87805f5c:	20b4      	movs	r0, #180	; 0xb4
87805f5e:	f2c0 200e 	movt	r0, #526	; 0x20e
87805f62:	f7ff ffb9 	bl	87805ed8 <IOMUXC_SetPinMux>
87805f66:	2301      	movs	r3, #1
87805f68:	9301      	str	r3, [sp, #4]
87805f6a:	f44f 7351 	mov.w	r3, #836	; 0x344
87805f6e:	f2c0 230e 	movt	r3, #526	; 0x20e
87805f72:	9300      	str	r3, [sp, #0]
87805f74:	2302      	movs	r3, #2
87805f76:	f44f 62b5 	mov.w	r2, #1448	; 0x5a8
87805f7a:	f2c0 220e 	movt	r2, #526	; 0x20e
87805f7e:	2102      	movs	r1, #2
87805f80:	20b8      	movs	r0, #184	; 0xb8
87805f82:	f2c0 200e 	movt	r0, #526	; 0x20e
87805f86:	f7ff ffa7 	bl	87805ed8 <IOMUXC_SetPinMux>
87805f8a:	f247 03b0 	movw	r3, #28848	; 0x70b0
87805f8e:	9301      	str	r3, [sp, #4]
87805f90:	f44f 7350 	mov.w	r3, #832	; 0x340
87805f94:	f2c0 230e 	movt	r3, #526	; 0x20e
87805f98:	9300      	str	r3, [sp, #0]
87805f9a:	2301      	movs	r3, #1
87805f9c:	f240 52a4 	movw	r2, #1444	; 0x5a4
87805fa0:	f2c0 220e 	movt	r2, #526	; 0x20e
87805fa4:	2102      	movs	r1, #2
87805fa6:	20b4      	movs	r0, #180	; 0xb4
87805fa8:	f2c0 200e 	movt	r0, #526	; 0x20e
87805fac:	f7ff ffb2 	bl	87805f14 <IOMUXC_SetPinConfig>
87805fb0:	f247 03b0 	movw	r3, #28848	; 0x70b0
87805fb4:	9301      	str	r3, [sp, #4]
87805fb6:	f44f 7351 	mov.w	r3, #836	; 0x344
87805fba:	f2c0 230e 	movt	r3, #526	; 0x20e
87805fbe:	9300      	str	r3, [sp, #0]
87805fc0:	2302      	movs	r3, #2
87805fc2:	f44f 62b5 	mov.w	r2, #1448	; 0x5a8
87805fc6:	f2c0 220e 	movt	r2, #526	; 0x20e
87805fca:	2102      	movs	r1, #2
87805fcc:	20b8      	movs	r0, #184	; 0xb8
87805fce:	f2c0 200e 	movt	r0, #526	; 0x20e
87805fd2:	f7ff ff9f 	bl	87805f14 <IOMUXC_SetPinConfig>
87805fd6:	2000      	movs	r0, #0
87805fd8:	f2c0 201a 	movt	r0, #538	; 0x21a
87805fdc:	f7ff fd0e 	bl	878059fc <i2c_init>
87805fe0:	2204      	movs	r2, #4
87805fe2:	2100      	movs	r1, #0
87805fe4:	201e      	movs	r0, #30
87805fe6:	f000 f819 	bl	8780601c <ap3216c_writeonebyte>
87805fea:	2032      	movs	r0, #50	; 0x32
87805fec:	f7fa faf6 	bl	878005dc <delayms>
87805ff0:	2203      	movs	r2, #3
87805ff2:	2100      	movs	r1, #0
87805ff4:	201e      	movs	r0, #30
87805ff6:	f000 f811 	bl	8780601c <ap3216c_writeonebyte>
87805ffa:	2100      	movs	r1, #0
87805ffc:	201e      	movs	r0, #30
87805ffe:	f000 f83d 	bl	8780607c <ap3216c_readonebyte>
87806002:	4603      	mov	r3, r0
87806004:	71fb      	strb	r3, [r7, #7]
87806006:	79fb      	ldrb	r3, [r7, #7]
87806008:	2b03      	cmp	r3, #3
8780600a:	d101      	bne.n	87806010 <ap3216c_init+0xd8>
8780600c:	2300      	movs	r3, #0
8780600e:	e000      	b.n	87806012 <ap3216c_init+0xda>
87806010:	2301      	movs	r3, #1
87806012:	4618      	mov	r0, r3
87806014:	3708      	adds	r7, #8
87806016:	46bd      	mov	sp, r7
87806018:	bd80      	pop	{r7, pc}
8780601a:	bf00      	nop

8780601c <ap3216c_writeonebyte>:
8780601c:	b580      	push	{r7, lr}
8780601e:	b08a      	sub	sp, #40	; 0x28
87806020:	af00      	add	r7, sp, #0
87806022:	4603      	mov	r3, r0
87806024:	71fb      	strb	r3, [r7, #7]
87806026:	460b      	mov	r3, r1
87806028:	71bb      	strb	r3, [r7, #6]
8780602a:	4613      	mov	r3, r2
8780602c:	717b      	strb	r3, [r7, #5]
8780602e:	2300      	movs	r3, #0
87806030:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87806034:	797b      	ldrb	r3, [r7, #5]
87806036:	f887 3026 	strb.w	r3, [r7, #38]	; 0x26
8780603a:	79fb      	ldrb	r3, [r7, #7]
8780603c:	733b      	strb	r3, [r7, #12]
8780603e:	2300      	movs	r3, #0
87806040:	613b      	str	r3, [r7, #16]
87806042:	79bb      	ldrb	r3, [r7, #6]
87806044:	617b      	str	r3, [r7, #20]
87806046:	2301      	movs	r3, #1
87806048:	763b      	strb	r3, [r7, #24]
8780604a:	f107 0326 	add.w	r3, r7, #38	; 0x26
8780604e:	61fb      	str	r3, [r7, #28]
87806050:	2301      	movs	r3, #1
87806052:	623b      	str	r3, [r7, #32]
87806054:	f107 030c 	add.w	r3, r7, #12
87806058:	4619      	mov	r1, r3
8780605a:	2000      	movs	r0, #0
8780605c:	f2c0 201a 	movt	r0, #538	; 0x21a
87806060:	f7ff fe5e 	bl	87805d20 <i2c_master_transfer>
87806064:	4603      	mov	r3, r0
87806066:	2b00      	cmp	r3, #0
87806068:	d002      	beq.n	87806070 <ap3216c_writeonebyte+0x54>
8780606a:	2301      	movs	r3, #1
8780606c:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87806070:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
87806074:	4618      	mov	r0, r3
87806076:	3728      	adds	r7, #40	; 0x28
87806078:	46bd      	mov	sp, r7
8780607a:	bd80      	pop	{r7, pc}

8780607c <ap3216c_readonebyte>:
8780607c:	b580      	push	{r7, lr}
8780607e:	b08a      	sub	sp, #40	; 0x28
87806080:	af00      	add	r7, sp, #0
87806082:	4603      	mov	r3, r0
87806084:	460a      	mov	r2, r1
87806086:	71fb      	strb	r3, [r7, #7]
87806088:	4613      	mov	r3, r2
8780608a:	71bb      	strb	r3, [r7, #6]
8780608c:	2300      	movs	r3, #0
8780608e:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87806092:	79fb      	ldrb	r3, [r7, #7]
87806094:	733b      	strb	r3, [r7, #12]
87806096:	2301      	movs	r3, #1
87806098:	613b      	str	r3, [r7, #16]
8780609a:	79bb      	ldrb	r3, [r7, #6]
8780609c:	617b      	str	r3, [r7, #20]
8780609e:	2301      	movs	r3, #1
878060a0:	763b      	strb	r3, [r7, #24]
878060a2:	f107 0327 	add.w	r3, r7, #39	; 0x27
878060a6:	61fb      	str	r3, [r7, #28]
878060a8:	2301      	movs	r3, #1
878060aa:	623b      	str	r3, [r7, #32]
878060ac:	f107 030c 	add.w	r3, r7, #12
878060b0:	4619      	mov	r1, r3
878060b2:	2000      	movs	r0, #0
878060b4:	f2c0 201a 	movt	r0, #538	; 0x21a
878060b8:	f7ff fe32 	bl	87805d20 <i2c_master_transfer>
878060bc:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
878060c0:	4618      	mov	r0, r3
878060c2:	3728      	adds	r7, #40	; 0x28
878060c4:	46bd      	mov	sp, r7
878060c6:	bd80      	pop	{r7, pc}

878060c8 <ap3216c_readdata>:
878060c8:	b590      	push	{r4, r7, lr}
878060ca:	b087      	sub	sp, #28
878060cc:	af00      	add	r7, sp, #0
878060ce:	60f8      	str	r0, [r7, #12]
878060d0:	60b9      	str	r1, [r7, #8]
878060d2:	607a      	str	r2, [r7, #4]
878060d4:	2300      	movs	r3, #0
878060d6:	75fb      	strb	r3, [r7, #23]
878060d8:	e011      	b.n	878060fe <ap3216c_readdata+0x36>
878060da:	7dfc      	ldrb	r4, [r7, #23]
878060dc:	7dfb      	ldrb	r3, [r7, #23]
878060de:	330a      	adds	r3, #10
878060e0:	b2db      	uxtb	r3, r3
878060e2:	4619      	mov	r1, r3
878060e4:	201e      	movs	r0, #30
878060e6:	f7ff ffc9 	bl	8780607c <ap3216c_readonebyte>
878060ea:	4603      	mov	r3, r0
878060ec:	461a      	mov	r2, r3
878060ee:	f107 0318 	add.w	r3, r7, #24
878060f2:	4423      	add	r3, r4
878060f4:	f803 2c08 	strb.w	r2, [r3, #-8]
878060f8:	7dfb      	ldrb	r3, [r7, #23]
878060fa:	3301      	adds	r3, #1
878060fc:	75fb      	strb	r3, [r7, #23]
878060fe:	7dfb      	ldrb	r3, [r7, #23]
87806100:	2b05      	cmp	r3, #5
87806102:	d9ea      	bls.n	878060da <ap3216c_readdata+0x12>
87806104:	7c3b      	ldrb	r3, [r7, #16]
87806106:	b2db      	uxtb	r3, r3
87806108:	b25b      	sxtb	r3, r3
8780610a:	2b00      	cmp	r3, #0
8780610c:	da03      	bge.n	87806116 <ap3216c_readdata+0x4e>
8780610e:	68fb      	ldr	r3, [r7, #12]
87806110:	2200      	movs	r2, #0
87806112:	801a      	strh	r2, [r3, #0]
87806114:	e00c      	b.n	87806130 <ap3216c_readdata+0x68>
87806116:	7c7b      	ldrb	r3, [r7, #17]
87806118:	009b      	lsls	r3, r3, #2
8780611a:	b29a      	uxth	r2, r3
8780611c:	7c3b      	ldrb	r3, [r7, #16]
8780611e:	b29b      	uxth	r3, r3
87806120:	f003 0303 	and.w	r3, r3, #3
87806124:	b29b      	uxth	r3, r3
87806126:	4313      	orrs	r3, r2
87806128:	b29b      	uxth	r3, r3
8780612a:	b29a      	uxth	r2, r3
8780612c:	68fb      	ldr	r3, [r7, #12]
8780612e:	801a      	strh	r2, [r3, #0]
87806130:	7cfb      	ldrb	r3, [r7, #19]
87806132:	021b      	lsls	r3, r3, #8
87806134:	b29a      	uxth	r2, r3
87806136:	7cbb      	ldrb	r3, [r7, #18]
87806138:	b29b      	uxth	r3, r3
8780613a:	4313      	orrs	r3, r2
8780613c:	b29b      	uxth	r3, r3
8780613e:	b29a      	uxth	r2, r3
87806140:	687b      	ldr	r3, [r7, #4]
87806142:	801a      	strh	r2, [r3, #0]
87806144:	7d3b      	ldrb	r3, [r7, #20]
87806146:	f003 0340 	and.w	r3, r3, #64	; 0x40
8780614a:	2b00      	cmp	r3, #0
8780614c:	d003      	beq.n	87806156 <ap3216c_readdata+0x8e>
8780614e:	68bb      	ldr	r3, [r7, #8]
87806150:	2200      	movs	r2, #0
87806152:	801a      	strh	r2, [r3, #0]
87806154:	e00e      	b.n	87806174 <ap3216c_readdata+0xac>
87806156:	7d7b      	ldrb	r3, [r7, #21]
87806158:	f003 033f 	and.w	r3, r3, #63	; 0x3f
8780615c:	011b      	lsls	r3, r3, #4
8780615e:	b29a      	uxth	r2, r3
87806160:	7d3b      	ldrb	r3, [r7, #20]
87806162:	b29b      	uxth	r3, r3
87806164:	f003 030f 	and.w	r3, r3, #15
87806168:	b29b      	uxth	r3, r3
8780616a:	4313      	orrs	r3, r2
8780616c:	b29b      	uxth	r3, r3
8780616e:	b29a      	uxth	r2, r3
87806170:	68bb      	ldr	r3, [r7, #8]
87806172:	801a      	strh	r2, [r3, #0]
87806174:	371c      	adds	r7, #28
87806176:	46bd      	mov	sp, r7
87806178:	bd90      	pop	{r4, r7, pc}
8780617a:	bf00      	nop

8780617c <spi_init>:
8780617c:	b480      	push	{r7}
8780617e:	b083      	sub	sp, #12
87806180:	af00      	add	r7, sp, #0
87806182:	6078      	str	r0, [r7, #4]
87806184:	687b      	ldr	r3, [r7, #4]
87806186:	2200      	movs	r2, #0
87806188:	609a      	str	r2, [r3, #8]
8780618a:	687b      	ldr	r3, [r7, #4]
8780618c:	689b      	ldr	r3, [r3, #8]
8780618e:	f443 03e0 	orr.w	r3, r3, #7340032	; 0x700000
87806192:	f043 0319 	orr.w	r3, r3, #25
87806196:	687a      	ldr	r2, [r7, #4]
87806198:	6093      	str	r3, [r2, #8]
8780619a:	687b      	ldr	r3, [r7, #4]
8780619c:	2200      	movs	r2, #0
8780619e:	60da      	str	r2, [r3, #12]
878061a0:	687b      	ldr	r3, [r7, #4]
878061a2:	2200      	movs	r2, #0
878061a4:	61da      	str	r2, [r3, #28]
878061a6:	687b      	ldr	r3, [r7, #4]
878061a8:	689b      	ldr	r3, [r3, #8]
878061aa:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
878061ae:	687b      	ldr	r3, [r7, #4]
878061b0:	609a      	str	r2, [r3, #8]
878061b2:	687b      	ldr	r3, [r7, #4]
878061b4:	689b      	ldr	r3, [r3, #8]
878061b6:	f443 4210 	orr.w	r2, r3, #36864	; 0x9000
878061ba:	687b      	ldr	r3, [r7, #4]
878061bc:	609a      	str	r2, [r3, #8]
878061be:	370c      	adds	r7, #12
878061c0:	46bd      	mov	sp, r7
878061c2:	f85d 7b04 	ldr.w	r7, [sp], #4
878061c6:	4770      	bx	lr

878061c8 <spich0_readwrite_byte>:
878061c8:	b480      	push	{r7}
878061ca:	b085      	sub	sp, #20
878061cc:	af00      	add	r7, sp, #0
878061ce:	6078      	str	r0, [r7, #4]
878061d0:	460b      	mov	r3, r1
878061d2:	70fb      	strb	r3, [r7, #3]
878061d4:	2300      	movs	r3, #0
878061d6:	60fb      	str	r3, [r7, #12]
878061d8:	78fb      	ldrb	r3, [r7, #3]
878061da:	60bb      	str	r3, [r7, #8]
878061dc:	687b      	ldr	r3, [r7, #4]
878061de:	689b      	ldr	r3, [r3, #8]
878061e0:	f423 2240 	bic.w	r2, r3, #786432	; 0xc0000
878061e4:	687b      	ldr	r3, [r7, #4]
878061e6:	609a      	str	r2, [r3, #8]
878061e8:	687b      	ldr	r3, [r7, #4]
878061ea:	689a      	ldr	r2, [r3, #8]
878061ec:	687b      	ldr	r3, [r7, #4]
878061ee:	609a      	str	r2, [r3, #8]
878061f0:	bf00      	nop
878061f2:	687b      	ldr	r3, [r7, #4]
878061f4:	699b      	ldr	r3, [r3, #24]
878061f6:	f003 0301 	and.w	r3, r3, #1
878061fa:	2b00      	cmp	r3, #0
878061fc:	d0f9      	beq.n	878061f2 <spich0_readwrite_byte+0x2a>
878061fe:	687b      	ldr	r3, [r7, #4]
87806200:	68ba      	ldr	r2, [r7, #8]
87806202:	605a      	str	r2, [r3, #4]
87806204:	bf00      	nop
87806206:	687b      	ldr	r3, [r7, #4]
87806208:	699b      	ldr	r3, [r3, #24]
8780620a:	f003 0308 	and.w	r3, r3, #8
8780620e:	2b00      	cmp	r3, #0
87806210:	d0f9      	beq.n	87806206 <spich0_readwrite_byte+0x3e>
87806212:	687b      	ldr	r3, [r7, #4]
87806214:	681b      	ldr	r3, [r3, #0]
87806216:	60fb      	str	r3, [r7, #12]
87806218:	68fb      	ldr	r3, [r7, #12]
8780621a:	b2db      	uxtb	r3, r3
8780621c:	4618      	mov	r0, r3
8780621e:	3714      	adds	r7, #20
87806220:	46bd      	mov	sp, r7
87806222:	f85d 7b04 	ldr.w	r7, [sp], #4
87806226:	4770      	bx	lr

87806228 <IOMUXC_SetPinMux>:
87806228:	b480      	push	{r7}
8780622a:	b085      	sub	sp, #20
8780622c:	af00      	add	r7, sp, #0
8780622e:	60f8      	str	r0, [r7, #12]
87806230:	60b9      	str	r1, [r7, #8]
87806232:	607a      	str	r2, [r7, #4]
87806234:	603b      	str	r3, [r7, #0]
87806236:	68fb      	ldr	r3, [r7, #12]
87806238:	68ba      	ldr	r2, [r7, #8]
8780623a:	f002 010f 	and.w	r1, r2, #15
8780623e:	69fa      	ldr	r2, [r7, #28]
87806240:	0112      	lsls	r2, r2, #4
87806242:	f002 0210 	and.w	r2, r2, #16
87806246:	430a      	orrs	r2, r1
87806248:	601a      	str	r2, [r3, #0]
8780624a:	687b      	ldr	r3, [r7, #4]
8780624c:	2b00      	cmp	r3, #0
8780624e:	d004      	beq.n	8780625a <IOMUXC_SetPinMux+0x32>
87806250:	687b      	ldr	r3, [r7, #4]
87806252:	683a      	ldr	r2, [r7, #0]
87806254:	f002 0207 	and.w	r2, r2, #7
87806258:	601a      	str	r2, [r3, #0]
8780625a:	3714      	adds	r7, #20
8780625c:	46bd      	mov	sp, r7
8780625e:	f85d 7b04 	ldr.w	r7, [sp], #4
87806262:	4770      	bx	lr

87806264 <IOMUXC_SetPinConfig>:
87806264:	b480      	push	{r7}
87806266:	b085      	sub	sp, #20
87806268:	af00      	add	r7, sp, #0
8780626a:	60f8      	str	r0, [r7, #12]
8780626c:	60b9      	str	r1, [r7, #8]
8780626e:	607a      	str	r2, [r7, #4]
87806270:	603b      	str	r3, [r7, #0]
87806272:	69bb      	ldr	r3, [r7, #24]
87806274:	2b00      	cmp	r3, #0
87806276:	d002      	beq.n	8780627e <IOMUXC_SetPinConfig+0x1a>
87806278:	69bb      	ldr	r3, [r7, #24]
8780627a:	69fa      	ldr	r2, [r7, #28]
8780627c:	601a      	str	r2, [r3, #0]
8780627e:	3714      	adds	r7, #20
87806280:	46bd      	mov	sp, r7
87806282:	f85d 7b04 	ldr.w	r7, [sp], #4
87806286:	4770      	bx	lr

87806288 <icm20608_init>:
87806288:	b580      	push	{r7, lr}
8780628a:	b086      	sub	sp, #24
8780628c:	af02      	add	r7, sp, #8
8780628e:	2300      	movs	r3, #0
87806290:	9301      	str	r3, [sp, #4]
87806292:	f44f 7349 	mov.w	r3, #804	; 0x324
87806296:	f2c0 230e 	movt	r3, #526	; 0x20e
8780629a:	9300      	str	r3, [sp, #0]
8780629c:	2300      	movs	r3, #0
8780629e:	f240 5254 	movw	r2, #1364	; 0x554
878062a2:	f2c0 220e 	movt	r2, #526	; 0x20e
878062a6:	2108      	movs	r1, #8
878062a8:	2098      	movs	r0, #152	; 0x98
878062aa:	f2c0 200e 	movt	r0, #526	; 0x20e
878062ae:	f7ff ffbb 	bl	87806228 <IOMUXC_SetPinMux>
878062b2:	2300      	movs	r3, #0
878062b4:	9301      	str	r3, [sp, #4]
878062b6:	f44f 734a 	mov.w	r3, #808	; 0x328
878062ba:	f2c0 230e 	movt	r3, #526	; 0x20e
878062be:	9300      	str	r3, [sp, #0]
878062c0:	2300      	movs	r3, #0
878062c2:	f240 525c 	movw	r2, #1372	; 0x55c
878062c6:	f2c0 220e 	movt	r2, #526	; 0x20e
878062ca:	2108      	movs	r1, #8
878062cc:	209c      	movs	r0, #156	; 0x9c
878062ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878062d2:	f7ff ffa9 	bl	87806228 <IOMUXC_SetPinMux>
878062d6:	2300      	movs	r3, #0
878062d8:	9301      	str	r3, [sp, #4]
878062da:	f44f 734b 	mov.w	r3, #812	; 0x32c
878062de:	f2c0 230e 	movt	r3, #526	; 0x20e
878062e2:	9300      	str	r3, [sp, #0]
878062e4:	2300      	movs	r3, #0
878062e6:	f44f 62ab 	mov.w	r2, #1368	; 0x558
878062ea:	f2c0 220e 	movt	r2, #526	; 0x20e
878062ee:	2108      	movs	r1, #8
878062f0:	20a0      	movs	r0, #160	; 0xa0
878062f2:	f2c0 200e 	movt	r0, #526	; 0x20e
878062f6:	f7ff ff97 	bl	87806228 <IOMUXC_SetPinMux>
878062fa:	f241 03b1 	movw	r3, #4273	; 0x10b1
878062fe:	9301      	str	r3, [sp, #4]
87806300:	f44f 7349 	mov.w	r3, #804	; 0x324
87806304:	f2c0 230e 	movt	r3, #526	; 0x20e
87806308:	9300      	str	r3, [sp, #0]
8780630a:	2300      	movs	r3, #0
8780630c:	f240 5254 	movw	r2, #1364	; 0x554
87806310:	f2c0 220e 	movt	r2, #526	; 0x20e
87806314:	2108      	movs	r1, #8
87806316:	2098      	movs	r0, #152	; 0x98
87806318:	f2c0 200e 	movt	r0, #526	; 0x20e
8780631c:	f7ff ffa2 	bl	87806264 <IOMUXC_SetPinConfig>
87806320:	f241 03b1 	movw	r3, #4273	; 0x10b1
87806324:	9301      	str	r3, [sp, #4]
87806326:	f44f 734a 	mov.w	r3, #808	; 0x328
8780632a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780632e:	9300      	str	r3, [sp, #0]
87806330:	2300      	movs	r3, #0
87806332:	f240 525c 	movw	r2, #1372	; 0x55c
87806336:	f2c0 220e 	movt	r2, #526	; 0x20e
8780633a:	2108      	movs	r1, #8
8780633c:	209c      	movs	r0, #156	; 0x9c
8780633e:	f2c0 200e 	movt	r0, #526	; 0x20e
87806342:	f7ff ff8f 	bl	87806264 <IOMUXC_SetPinConfig>
87806346:	f241 03b1 	movw	r3, #4273	; 0x10b1
8780634a:	9301      	str	r3, [sp, #4]
8780634c:	f44f 734b 	mov.w	r3, #812	; 0x32c
87806350:	f2c0 230e 	movt	r3, #526	; 0x20e
87806354:	9300      	str	r3, [sp, #0]
87806356:	2300      	movs	r3, #0
87806358:	f44f 62ab 	mov.w	r2, #1368	; 0x558
8780635c:	f2c0 220e 	movt	r2, #526	; 0x20e
87806360:	2108      	movs	r1, #8
87806362:	20a0      	movs	r0, #160	; 0xa0
87806364:	f2c0 200e 	movt	r0, #526	; 0x20e
87806368:	f7ff ff7c 	bl	87806264 <IOMUXC_SetPinConfig>
8780636c:	2300      	movs	r3, #0
8780636e:	9301      	str	r3, [sp, #4]
87806370:	f44f 7348 	mov.w	r3, #800	; 0x320
87806374:	f2c0 230e 	movt	r3, #526	; 0x20e
87806378:	9300      	str	r3, [sp, #0]
8780637a:	2300      	movs	r3, #0
8780637c:	2200      	movs	r2, #0
8780637e:	2105      	movs	r1, #5
87806380:	2094      	movs	r0, #148	; 0x94
87806382:	f2c0 200e 	movt	r0, #526	; 0x20e
87806386:	f7ff ff4f 	bl	87806228 <IOMUXC_SetPinMux>
8780638a:	f241 03b0 	movw	r3, #4272	; 0x10b0
8780638e:	9301      	str	r3, [sp, #4]
87806390:	f44f 7348 	mov.w	r3, #800	; 0x320
87806394:	f2c0 230e 	movt	r3, #526	; 0x20e
87806398:	9300      	str	r3, [sp, #0]
8780639a:	2300      	movs	r3, #0
8780639c:	2200      	movs	r2, #0
8780639e:	2105      	movs	r1, #5
878063a0:	2094      	movs	r0, #148	; 0x94
878063a2:	f2c0 200e 	movt	r0, #526	; 0x20e
878063a6:	f7ff ff5d 	bl	87806264 <IOMUXC_SetPinConfig>
878063aa:	2301      	movs	r3, #1
878063ac:	603b      	str	r3, [r7, #0]
878063ae:	2300      	movs	r3, #0
878063b0:	713b      	strb	r3, [r7, #4]
878063b2:	463b      	mov	r3, r7
878063b4:	461a      	mov	r2, r3
878063b6:	2114      	movs	r1, #20
878063b8:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878063bc:	f2c0 2009 	movt	r0, #521	; 0x209
878063c0:	f7fa fa7c 	bl	878008bc <gpio_init>
878063c4:	2000      	movs	r0, #0
878063c6:	f2c0 2001 	movt	r0, #513	; 0x201
878063ca:	f7ff fed7 	bl	8780617c <spi_init>
878063ce:	2180      	movs	r1, #128	; 0x80
878063d0:	206b      	movs	r0, #107	; 0x6b
878063d2:	f000 f845 	bl	87806460 <icm20608_write_reg>
878063d6:	2032      	movs	r0, #50	; 0x32
878063d8:	f7fa f900 	bl	878005dc <delayms>
878063dc:	2101      	movs	r1, #1
878063de:	206b      	movs	r0, #107	; 0x6b
878063e0:	f000 f83e 	bl	87806460 <icm20608_write_reg>
878063e4:	2032      	movs	r0, #50	; 0x32
878063e6:	f7fa f8f9 	bl	878005dc <delayms>
878063ea:	2075      	movs	r0, #117	; 0x75
878063ec:	f000 f866 	bl	878064bc <icm20608_read_reg>
878063f0:	4603      	mov	r3, r0
878063f2:	73fb      	strb	r3, [r7, #15]
878063f4:	7bfb      	ldrb	r3, [r7, #15]
878063f6:	4619      	mov	r1, r3
878063f8:	f24c 30d8 	movw	r0, #50136	; 0xc3d8
878063fc:	f2c8 7080 	movt	r0, #34688	; 0x8780
87806400:	f7fb fb34 	bl	87801a6c <printf>
87806404:	7bfb      	ldrb	r3, [r7, #15]
87806406:	2baf      	cmp	r3, #175	; 0xaf
87806408:	d004      	beq.n	87806414 <icm20608_init+0x18c>
8780640a:	7bfb      	ldrb	r3, [r7, #15]
8780640c:	2bae      	cmp	r3, #174	; 0xae
8780640e:	d001      	beq.n	87806414 <icm20608_init+0x18c>
87806410:	2301      	movs	r3, #1
87806412:	e020      	b.n	87806456 <icm20608_init+0x1ce>
87806414:	2100      	movs	r1, #0
87806416:	2019      	movs	r0, #25
87806418:	f000 f822 	bl	87806460 <icm20608_write_reg>
8780641c:	2118      	movs	r1, #24
8780641e:	201b      	movs	r0, #27
87806420:	f000 f81e 	bl	87806460 <icm20608_write_reg>
87806424:	2118      	movs	r1, #24
87806426:	201c      	movs	r0, #28
87806428:	f000 f81a 	bl	87806460 <icm20608_write_reg>
8780642c:	2104      	movs	r1, #4
8780642e:	201a      	movs	r0, #26
87806430:	f000 f816 	bl	87806460 <icm20608_write_reg>
87806434:	2104      	movs	r1, #4
87806436:	201d      	movs	r0, #29
87806438:	f000 f812 	bl	87806460 <icm20608_write_reg>
8780643c:	2100      	movs	r1, #0
8780643e:	206c      	movs	r0, #108	; 0x6c
87806440:	f000 f80e 	bl	87806460 <icm20608_write_reg>
87806444:	2100      	movs	r1, #0
87806446:	201e      	movs	r0, #30
87806448:	f000 f80a 	bl	87806460 <icm20608_write_reg>
8780644c:	2100      	movs	r1, #0
8780644e:	2023      	movs	r0, #35	; 0x23
87806450:	f000 f806 	bl	87806460 <icm20608_write_reg>
87806454:	2300      	movs	r3, #0
87806456:	4618      	mov	r0, r3
87806458:	3710      	adds	r7, #16
8780645a:	46bd      	mov	sp, r7
8780645c:	bd80      	pop	{r7, pc}
8780645e:	bf00      	nop

87806460 <icm20608_write_reg>:
87806460:	b580      	push	{r7, lr}
87806462:	b082      	sub	sp, #8
87806464:	af00      	add	r7, sp, #0
87806466:	4603      	mov	r3, r0
87806468:	460a      	mov	r2, r1
8780646a:	71fb      	strb	r3, [r7, #7]
8780646c:	4613      	mov	r3, r2
8780646e:	71bb      	strb	r3, [r7, #6]
87806470:	79fb      	ldrb	r3, [r7, #7]
87806472:	f003 037f 	and.w	r3, r3, #127	; 0x7f
87806476:	71fb      	strb	r3, [r7, #7]
87806478:	2200      	movs	r2, #0
8780647a:	2114      	movs	r1, #20
8780647c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806480:	f2c0 2009 	movt	r0, #521	; 0x209
87806484:	f7fa fa66 	bl	87800954 <gpio_pinwrite>
87806488:	79fb      	ldrb	r3, [r7, #7]
8780648a:	4619      	mov	r1, r3
8780648c:	2000      	movs	r0, #0
8780648e:	f2c0 2001 	movt	r0, #513	; 0x201
87806492:	f7ff fe99 	bl	878061c8 <spich0_readwrite_byte>
87806496:	79bb      	ldrb	r3, [r7, #6]
87806498:	4619      	mov	r1, r3
8780649a:	2000      	movs	r0, #0
8780649c:	f2c0 2001 	movt	r0, #513	; 0x201
878064a0:	f7ff fe92 	bl	878061c8 <spich0_readwrite_byte>
878064a4:	2201      	movs	r2, #1
878064a6:	2114      	movs	r1, #20
878064a8:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878064ac:	f2c0 2009 	movt	r0, #521	; 0x209
878064b0:	f7fa fa50 	bl	87800954 <gpio_pinwrite>
878064b4:	3708      	adds	r7, #8
878064b6:	46bd      	mov	sp, r7
878064b8:	bd80      	pop	{r7, pc}
878064ba:	bf00      	nop

878064bc <icm20608_read_reg>:
878064bc:	b580      	push	{r7, lr}
878064be:	b084      	sub	sp, #16
878064c0:	af00      	add	r7, sp, #0
878064c2:	4603      	mov	r3, r0
878064c4:	71fb      	strb	r3, [r7, #7]
878064c6:	79fb      	ldrb	r3, [r7, #7]
878064c8:	f063 037f 	orn	r3, r3, #127	; 0x7f
878064cc:	71fb      	strb	r3, [r7, #7]
878064ce:	2200      	movs	r2, #0
878064d0:	2114      	movs	r1, #20
878064d2:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878064d6:	f2c0 2009 	movt	r0, #521	; 0x209
878064da:	f7fa fa3b 	bl	87800954 <gpio_pinwrite>
878064de:	79fb      	ldrb	r3, [r7, #7]
878064e0:	4619      	mov	r1, r3
878064e2:	2000      	movs	r0, #0
878064e4:	f2c0 2001 	movt	r0, #513	; 0x201
878064e8:	f7ff fe6e 	bl	878061c8 <spich0_readwrite_byte>
878064ec:	21ff      	movs	r1, #255	; 0xff
878064ee:	2000      	movs	r0, #0
878064f0:	f2c0 2001 	movt	r0, #513	; 0x201
878064f4:	f7ff fe68 	bl	878061c8 <spich0_readwrite_byte>
878064f8:	4603      	mov	r3, r0
878064fa:	73fb      	strb	r3, [r7, #15]
878064fc:	2201      	movs	r2, #1
878064fe:	2114      	movs	r1, #20
87806500:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806504:	f2c0 2009 	movt	r0, #521	; 0x209
87806508:	f7fa fa24 	bl	87800954 <gpio_pinwrite>
8780650c:	7bfb      	ldrb	r3, [r7, #15]
8780650e:	4618      	mov	r0, r3
87806510:	3710      	adds	r7, #16
87806512:	46bd      	mov	sp, r7
87806514:	bd80      	pop	{r7, pc}
87806516:	bf00      	nop

87806518 <icm20608_read_len>:
87806518:	b590      	push	{r4, r7, lr}
8780651a:	b085      	sub	sp, #20
8780651c:	af00      	add	r7, sp, #0
8780651e:	4603      	mov	r3, r0
87806520:	6039      	str	r1, [r7, #0]
87806522:	71fb      	strb	r3, [r7, #7]
87806524:	4613      	mov	r3, r2
87806526:	71bb      	strb	r3, [r7, #6]
87806528:	79fb      	ldrb	r3, [r7, #7]
8780652a:	f063 037f 	orn	r3, r3, #127	; 0x7f
8780652e:	71fb      	strb	r3, [r7, #7]
87806530:	2200      	movs	r2, #0
87806532:	2114      	movs	r1, #20
87806534:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806538:	f2c0 2009 	movt	r0, #521	; 0x209
8780653c:	f7fa fa0a 	bl	87800954 <gpio_pinwrite>
87806540:	79fb      	ldrb	r3, [r7, #7]
87806542:	4619      	mov	r1, r3
87806544:	2000      	movs	r0, #0
87806546:	f2c0 2001 	movt	r0, #513	; 0x201
8780654a:	f7ff fe3d 	bl	878061c8 <spich0_readwrite_byte>
8780654e:	2300      	movs	r3, #0
87806550:	73fb      	strb	r3, [r7, #15]
87806552:	e00d      	b.n	87806570 <icm20608_read_len+0x58>
87806554:	7bfb      	ldrb	r3, [r7, #15]
87806556:	683a      	ldr	r2, [r7, #0]
87806558:	18d4      	adds	r4, r2, r3
8780655a:	21ff      	movs	r1, #255	; 0xff
8780655c:	2000      	movs	r0, #0
8780655e:	f2c0 2001 	movt	r0, #513	; 0x201
87806562:	f7ff fe31 	bl	878061c8 <spich0_readwrite_byte>
87806566:	4603      	mov	r3, r0
87806568:	7023      	strb	r3, [r4, #0]
8780656a:	7bfb      	ldrb	r3, [r7, #15]
8780656c:	3301      	adds	r3, #1
8780656e:	73fb      	strb	r3, [r7, #15]
87806570:	7bfa      	ldrb	r2, [r7, #15]
87806572:	79bb      	ldrb	r3, [r7, #6]
87806574:	429a      	cmp	r2, r3
87806576:	d3ed      	bcc.n	87806554 <icm20608_read_len+0x3c>
87806578:	2201      	movs	r2, #1
8780657a:	2114      	movs	r1, #20
8780657c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806580:	f2c0 2009 	movt	r0, #521	; 0x209
87806584:	f7fa f9e6 	bl	87800954 <gpio_pinwrite>
87806588:	3714      	adds	r7, #20
8780658a:	46bd      	mov	sp, r7
8780658c:	bd90      	pop	{r4, r7, pc}
8780658e:	bf00      	nop

87806590 <icm20608_gyro_scaleget>:
87806590:	b580      	push	{r7, lr}
87806592:	b082      	sub	sp, #8
87806594:	af00      	add	r7, sp, #0
87806596:	201b      	movs	r0, #27
87806598:	f7ff ff90 	bl	878064bc <icm20608_read_reg>
8780659c:	4603      	mov	r3, r0
8780659e:	08db      	lsrs	r3, r3, #3
878065a0:	b2db      	uxtb	r3, r3
878065a2:	f003 0303 	and.w	r3, r3, #3
878065a6:	70fb      	strb	r3, [r7, #3]
878065a8:	78fb      	ldrb	r3, [r7, #3]
878065aa:	2b03      	cmp	r3, #3
878065ac:	d822      	bhi.n	878065f4 <icm20608_gyro_scaleget+0x64>
878065ae:	a201      	add	r2, pc, #4	; (adr r2, 878065b4 <icm20608_gyro_scaleget+0x24>)
878065b0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
878065b4:	878065c5 	strhi	r6, [r0, r5, asr #11]
878065b8:	878065d1 			; <UNDEFINED> instruction: 0x878065d1
878065bc:	878065dd 			; <UNDEFINED> instruction: 0x878065dd
878065c0:	878065e9 	strhi	r6, [r0, r9, ror #11]
878065c4:	f04f 0300 	mov.w	r3, #0
878065c8:	f2c4 3303 	movt	r3, #17155	; 0x4303
878065cc:	607b      	str	r3, [r7, #4]
878065ce:	e011      	b.n	878065f4 <icm20608_gyro_scaleget+0x64>
878065d0:	f04f 0300 	mov.w	r3, #0
878065d4:	f2c4 2383 	movt	r3, #17027	; 0x4283
878065d8:	607b      	str	r3, [r7, #4]
878065da:	e00b      	b.n	878065f4 <icm20608_gyro_scaleget+0x64>
878065dc:	f243 3333 	movw	r3, #13107	; 0x3333
878065e0:	f2c4 2303 	movt	r3, #16899	; 0x4203
878065e4:	607b      	str	r3, [r7, #4]
878065e6:	e005      	b.n	878065f4 <icm20608_gyro_scaleget+0x64>
878065e8:	f243 3333 	movw	r3, #13107	; 0x3333
878065ec:	f2c4 1383 	movt	r3, #16771	; 0x4183
878065f0:	607b      	str	r3, [r7, #4]
878065f2:	bf00      	nop
878065f4:	687b      	ldr	r3, [r7, #4]
878065f6:	ee07 3a90 	vmov	s15, r3
878065fa:	eeb0 0a67 	vmov.f32	s0, s15
878065fe:	3708      	adds	r7, #8
87806600:	46bd      	mov	sp, r7
87806602:	bd80      	pop	{r7, pc}

87806604 <icm20608_accel_scaleget>:
87806604:	b580      	push	{r7, lr}
87806606:	b082      	sub	sp, #8
87806608:	af00      	add	r7, sp, #0
8780660a:	201c      	movs	r0, #28
8780660c:	f7ff ff56 	bl	878064bc <icm20608_read_reg>
87806610:	4603      	mov	r3, r0
87806612:	08db      	lsrs	r3, r3, #3
87806614:	b2db      	uxtb	r3, r3
87806616:	f003 0303 	and.w	r3, r3, #3
8780661a:	717b      	strb	r3, [r7, #5]
8780661c:	797b      	ldrb	r3, [r7, #5]
8780661e:	2b03      	cmp	r3, #3
87806620:	d81a      	bhi.n	87806658 <icm20608_accel_scaleget+0x54>
87806622:	a201      	add	r2, pc, #4	; (adr r2, 87806628 <icm20608_accel_scaleget+0x24>)
87806624:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87806628:	87806639 			; <UNDEFINED> instruction: 0x87806639
8780662c:	87806641 	strhi	r6, [r0, r1, asr #12]
87806630:	87806649 	strhi	r6, [r0, r9, asr #12]
87806634:	87806651 			; <UNDEFINED> instruction: 0x87806651
87806638:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780663c:	80fb      	strh	r3, [r7, #6]
8780663e:	e00b      	b.n	87806658 <icm20608_accel_scaleget+0x54>
87806640:	f44f 5300 	mov.w	r3, #8192	; 0x2000
87806644:	80fb      	strh	r3, [r7, #6]
87806646:	e007      	b.n	87806658 <icm20608_accel_scaleget+0x54>
87806648:	f44f 5380 	mov.w	r3, #4096	; 0x1000
8780664c:	80fb      	strh	r3, [r7, #6]
8780664e:	e003      	b.n	87806658 <icm20608_accel_scaleget+0x54>
87806650:	f44f 6300 	mov.w	r3, #2048	; 0x800
87806654:	80fb      	strh	r3, [r7, #6]
87806656:	bf00      	nop
87806658:	88fb      	ldrh	r3, [r7, #6]
8780665a:	4618      	mov	r0, r3
8780665c:	3708      	adds	r7, #8
8780665e:	46bd      	mov	sp, r7
87806660:	bd80      	pop	{r7, pc}
87806662:	bf00      	nop

87806664 <icm20608_getdata>:
87806664:	b580      	push	{r7, lr}
87806666:	b086      	sub	sp, #24
87806668:	af00      	add	r7, sp, #0
8780666a:	1d3b      	adds	r3, r7, #4
8780666c:	220e      	movs	r2, #14
8780666e:	4619      	mov	r1, r3
87806670:	203b      	movs	r0, #59	; 0x3b
87806672:	f7ff ff51 	bl	87806518 <icm20608_read_len>
87806676:	f7ff ff8b 	bl	87806590 <icm20608_gyro_scaleget>
8780667a:	ed87 0a05 	vstr	s0, [r7, #20]
8780667e:	f7ff ffc1 	bl	87806604 <icm20608_accel_scaleget>
87806682:	4603      	mov	r3, r0
87806684:	827b      	strh	r3, [r7, #18]
87806686:	793b      	ldrb	r3, [r7, #4]
87806688:	021b      	lsls	r3, r3, #8
8780668a:	b29a      	uxth	r2, r3
8780668c:	797b      	ldrb	r3, [r7, #5]
8780668e:	b29b      	uxth	r3, r3
87806690:	4313      	orrs	r3, r2
87806692:	b29b      	uxth	r3, r3
87806694:	b21a      	sxth	r2, r3
87806696:	f24d 332c 	movw	r3, #54060	; 0xd32c
8780669a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780669e:	60da      	str	r2, [r3, #12]
878066a0:	79bb      	ldrb	r3, [r7, #6]
878066a2:	021b      	lsls	r3, r3, #8
878066a4:	b29a      	uxth	r2, r3
878066a6:	79fb      	ldrb	r3, [r7, #7]
878066a8:	b29b      	uxth	r3, r3
878066aa:	4313      	orrs	r3, r2
878066ac:	b29b      	uxth	r3, r3
878066ae:	b21a      	sxth	r2, r3
878066b0:	f24d 332c 	movw	r3, #54060	; 0xd32c
878066b4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878066b8:	611a      	str	r2, [r3, #16]
878066ba:	7a3b      	ldrb	r3, [r7, #8]
878066bc:	021b      	lsls	r3, r3, #8
878066be:	b29a      	uxth	r2, r3
878066c0:	7a7b      	ldrb	r3, [r7, #9]
878066c2:	b29b      	uxth	r3, r3
878066c4:	4313      	orrs	r3, r2
878066c6:	b29b      	uxth	r3, r3
878066c8:	b21a      	sxth	r2, r3
878066ca:	f24d 332c 	movw	r3, #54060	; 0xd32c
878066ce:	f2c8 7380 	movt	r3, #34688	; 0x8780
878066d2:	615a      	str	r2, [r3, #20]
878066d4:	7abb      	ldrb	r3, [r7, #10]
878066d6:	021b      	lsls	r3, r3, #8
878066d8:	b29a      	uxth	r2, r3
878066da:	7afb      	ldrb	r3, [r7, #11]
878066dc:	b29b      	uxth	r3, r3
878066de:	4313      	orrs	r3, r2
878066e0:	b29b      	uxth	r3, r3
878066e2:	b21a      	sxth	r2, r3
878066e4:	f24d 332c 	movw	r3, #54060	; 0xd32c
878066e8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878066ec:	619a      	str	r2, [r3, #24]
878066ee:	7b3b      	ldrb	r3, [r7, #12]
878066f0:	021b      	lsls	r3, r3, #8
878066f2:	b29a      	uxth	r2, r3
878066f4:	7b7b      	ldrb	r3, [r7, #13]
878066f6:	b29b      	uxth	r3, r3
878066f8:	4313      	orrs	r3, r2
878066fa:	b29b      	uxth	r3, r3
878066fc:	b21a      	sxth	r2, r3
878066fe:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806702:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806706:	601a      	str	r2, [r3, #0]
87806708:	7bbb      	ldrb	r3, [r7, #14]
8780670a:	021b      	lsls	r3, r3, #8
8780670c:	b29a      	uxth	r2, r3
8780670e:	7bfb      	ldrb	r3, [r7, #15]
87806710:	b29b      	uxth	r3, r3
87806712:	4313      	orrs	r3, r2
87806714:	b29b      	uxth	r3, r3
87806716:	b21a      	sxth	r2, r3
87806718:	f24d 332c 	movw	r3, #54060	; 0xd32c
8780671c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806720:	605a      	str	r2, [r3, #4]
87806722:	7c3b      	ldrb	r3, [r7, #16]
87806724:	021b      	lsls	r3, r3, #8
87806726:	b29a      	uxth	r2, r3
87806728:	7c7b      	ldrb	r3, [r7, #17]
8780672a:	b29b      	uxth	r3, r3
8780672c:	4313      	orrs	r3, r2
8780672e:	b29b      	uxth	r3, r3
87806730:	b21a      	sxth	r2, r3
87806732:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806736:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780673a:	609a      	str	r2, [r3, #8]
8780673c:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806740:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806744:	681b      	ldr	r3, [r3, #0]
87806746:	ee07 3a90 	vmov	s15, r3
8780674a:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
8780674e:	edd7 7a05 	vldr	s15, [r7, #20]
87806752:	eec7 7a27 	vdiv.f32	s15, s14, s15
87806756:	ed9f 7a64 	vldr	s14, [pc, #400]	; 878068e8 <icm20608_getdata+0x284>
8780675a:	ee67 7a87 	vmul.f32	s15, s15, s14
8780675e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
87806762:	ee17 2a90 	vmov	r2, s15
87806766:	f24d 332c 	movw	r3, #54060	; 0xd32c
8780676a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780676e:	61da      	str	r2, [r3, #28]
87806770:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806774:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806778:	685b      	ldr	r3, [r3, #4]
8780677a:	ee07 3a90 	vmov	s15, r3
8780677e:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
87806782:	edd7 7a05 	vldr	s15, [r7, #20]
87806786:	eec7 7a27 	vdiv.f32	s15, s14, s15
8780678a:	ed9f 7a57 	vldr	s14, [pc, #348]	; 878068e8 <icm20608_getdata+0x284>
8780678e:	ee67 7a87 	vmul.f32	s15, s15, s14
87806792:	eefd 7ae7 	vcvt.s32.f32	s15, s15
87806796:	ee17 2a90 	vmov	r2, s15
8780679a:	f24d 332c 	movw	r3, #54060	; 0xd32c
8780679e:	f2c8 7380 	movt	r3, #34688	; 0x8780
878067a2:	621a      	str	r2, [r3, #32]
878067a4:	f24d 332c 	movw	r3, #54060	; 0xd32c
878067a8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878067ac:	689b      	ldr	r3, [r3, #8]
878067ae:	ee07 3a90 	vmov	s15, r3
878067b2:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
878067b6:	edd7 7a05 	vldr	s15, [r7, #20]
878067ba:	eec7 7a27 	vdiv.f32	s15, s14, s15
878067be:	ed9f 7a4a 	vldr	s14, [pc, #296]	; 878068e8 <icm20608_getdata+0x284>
878067c2:	ee67 7a87 	vmul.f32	s15, s15, s14
878067c6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
878067ca:	ee17 2a90 	vmov	r2, s15
878067ce:	f24d 332c 	movw	r3, #54060	; 0xd32c
878067d2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878067d6:	625a      	str	r2, [r3, #36]	; 0x24
878067d8:	f24d 332c 	movw	r3, #54060	; 0xd32c
878067dc:	f2c8 7380 	movt	r3, #34688	; 0x8780
878067e0:	68db      	ldr	r3, [r3, #12]
878067e2:	ee07 3a90 	vmov	s15, r3
878067e6:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
878067ea:	8a7b      	ldrh	r3, [r7, #18]
878067ec:	ee07 3a90 	vmov	s15, r3
878067f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
878067f4:	eec7 7a27 	vdiv.f32	s15, s14, s15
878067f8:	ed9f 7a3b 	vldr	s14, [pc, #236]	; 878068e8 <icm20608_getdata+0x284>
878067fc:	ee67 7a87 	vmul.f32	s15, s15, s14
87806800:	eefd 7ae7 	vcvt.s32.f32	s15, s15
87806804:	ee17 2a90 	vmov	r2, s15
87806808:	f24d 332c 	movw	r3, #54060	; 0xd32c
8780680c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806810:	629a      	str	r2, [r3, #40]	; 0x28
87806812:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806816:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780681a:	691b      	ldr	r3, [r3, #16]
8780681c:	ee07 3a90 	vmov	s15, r3
87806820:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
87806824:	8a7b      	ldrh	r3, [r7, #18]
87806826:	ee07 3a90 	vmov	s15, r3
8780682a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
8780682e:	eec7 7a27 	vdiv.f32	s15, s14, s15
87806832:	ed9f 7a2d 	vldr	s14, [pc, #180]	; 878068e8 <icm20608_getdata+0x284>
87806836:	ee67 7a87 	vmul.f32	s15, s15, s14
8780683a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
8780683e:	ee17 2a90 	vmov	r2, s15
87806842:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806846:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780684a:	62da      	str	r2, [r3, #44]	; 0x2c
8780684c:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806850:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806854:	695b      	ldr	r3, [r3, #20]
87806856:	ee07 3a90 	vmov	s15, r3
8780685a:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
8780685e:	8a7b      	ldrh	r3, [r7, #18]
87806860:	ee07 3a90 	vmov	s15, r3
87806864:	eef8 7ae7 	vcvt.f32.s32	s15, s15
87806868:	eec7 7a27 	vdiv.f32	s15, s14, s15
8780686c:	ed9f 7a1e 	vldr	s14, [pc, #120]	; 878068e8 <icm20608_getdata+0x284>
87806870:	ee67 7a87 	vmul.f32	s15, s15, s14
87806874:	eefd 7ae7 	vcvt.s32.f32	s15, s15
87806878:	ee17 2a90 	vmov	r2, s15
8780687c:	f24d 332c 	movw	r3, #54060	; 0xd32c
87806880:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806884:	631a      	str	r2, [r3, #48]	; 0x30
87806886:	f24d 332c 	movw	r3, #54060	; 0xd32c
8780688a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780688e:	699b      	ldr	r3, [r3, #24]
87806890:	ee07 3a90 	vmov	s15, r3
87806894:	eef8 7ae7 	vcvt.f32.s32	s15, s15
87806898:	eeb3 7a09 	vmov.f32	s14, #57	; 0x39
8780689c:	ee77 7ac7 	vsub.f32	s15, s15, s14
878068a0:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
878068a4:	ed9f 6b0c 	vldr	d6, [pc, #48]	; 878068d8 <icm20608_getdata+0x274>
878068a8:	ee87 7b06 	vdiv.f64	d7, d7, d6
878068ac:	eeb3 6b09 	vmov.f64	d6, #57	; 0x39
878068b0:	ee37 7b06 	vadd.f64	d7, d7, d6
878068b4:	ed9f 6b0a 	vldr	d6, [pc, #40]	; 878068e0 <icm20608_getdata+0x27c>
878068b8:	ee27 7b06 	vmul.f64	d7, d7, d6
878068bc:	eefd 7bc7 	vcvt.s32.f64	s15, d7
878068c0:	ee17 2a90 	vmov	r2, s15
878068c4:	f24d 332c 	movw	r3, #54060	; 0xd32c
878068c8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878068cc:	635a      	str	r2, [r3, #52]	; 0x34
878068ce:	3718      	adds	r7, #24
878068d0:	46bd      	mov	sp, r7
878068d2:	bd80      	pop	{r7, pc}
878068d4:	f3af 8000 	nop.w
878068d8:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd
878068dc:	40746ccc 	rsbsmi	r6, r4, ip, asr #25
878068e0:	00000000 	andeq	r0, r0, r0
878068e4:	40590000 	subsmi	r0, r9, r0
878068e8:	42c80000 	sbcmi	r0, r8, #0
878068ec:	f3af 8000 	nop.w

878068f0 <IOMUXC_SetPinMux>:
878068f0:	b480      	push	{r7}
878068f2:	b085      	sub	sp, #20
878068f4:	af00      	add	r7, sp, #0
878068f6:	60f8      	str	r0, [r7, #12]
878068f8:	60b9      	str	r1, [r7, #8]
878068fa:	607a      	str	r2, [r7, #4]
878068fc:	603b      	str	r3, [r7, #0]
878068fe:	68fb      	ldr	r3, [r7, #12]
87806900:	68ba      	ldr	r2, [r7, #8]
87806902:	f002 010f 	and.w	r1, r2, #15
87806906:	69fa      	ldr	r2, [r7, #28]
87806908:	0112      	lsls	r2, r2, #4
8780690a:	f002 0210 	and.w	r2, r2, #16
8780690e:	430a      	orrs	r2, r1
87806910:	601a      	str	r2, [r3, #0]
87806912:	687b      	ldr	r3, [r7, #4]
87806914:	2b00      	cmp	r3, #0
87806916:	d004      	beq.n	87806922 <IOMUXC_SetPinMux+0x32>
87806918:	687b      	ldr	r3, [r7, #4]
8780691a:	683a      	ldr	r2, [r7, #0]
8780691c:	f002 0207 	and.w	r2, r2, #7
87806920:	601a      	str	r2, [r3, #0]
87806922:	3714      	adds	r7, #20
87806924:	46bd      	mov	sp, r7
87806926:	f85d 7b04 	ldr.w	r7, [sp], #4
8780692a:	4770      	bx	lr

8780692c <IOMUXC_SetPinConfig>:
8780692c:	b480      	push	{r7}
8780692e:	b085      	sub	sp, #20
87806930:	af00      	add	r7, sp, #0
87806932:	60f8      	str	r0, [r7, #12]
87806934:	60b9      	str	r1, [r7, #8]
87806936:	607a      	str	r2, [r7, #4]
87806938:	603b      	str	r3, [r7, #0]
8780693a:	69bb      	ldr	r3, [r7, #24]
8780693c:	2b00      	cmp	r3, #0
8780693e:	d002      	beq.n	87806946 <IOMUXC_SetPinConfig+0x1a>
87806940:	69bb      	ldr	r3, [r7, #24]
87806942:	69fa      	ldr	r2, [r7, #28]
87806944:	601a      	str	r2, [r3, #0]
87806946:	3714      	adds	r7, #20
87806948:	46bd      	mov	sp, r7
8780694a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780694e:	4770      	bx	lr

87806950 <gt9147_init>:
87806950:	b580      	push	{r7, lr}
87806952:	b090      	sub	sp, #64	; 0x40
87806954:	af02      	add	r7, sp, #8
87806956:	f24d 3364 	movw	r3, #54116	; 0xd364
8780695a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780695e:	2200      	movs	r2, #0
87806960:	701a      	strb	r2, [r3, #0]
87806962:	2300      	movs	r3, #0
87806964:	633b      	str	r3, [r7, #48]	; 0x30
87806966:	e015      	b.n	87806994 <gt9147_init+0x44>
87806968:	f24d 3264 	movw	r2, #54116	; 0xd364
8780696c:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806970:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87806972:	005b      	lsls	r3, r3, #1
87806974:	4413      	add	r3, r2
87806976:	2200      	movs	r2, #0
87806978:	809a      	strh	r2, [r3, #4]
8780697a:	f24d 3264 	movw	r2, #54116	; 0xd364
8780697e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806982:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87806984:	3304      	adds	r3, #4
87806986:	005b      	lsls	r3, r3, #1
87806988:	4413      	add	r3, r2
8780698a:	2200      	movs	r2, #0
8780698c:	80da      	strh	r2, [r3, #6]
8780698e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87806990:	3301      	adds	r3, #1
87806992:	633b      	str	r3, [r7, #48]	; 0x30
87806994:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87806996:	2b04      	cmp	r3, #4
87806998:	dde6      	ble.n	87806968 <gt9147_init+0x18>
8780699a:	f24d 3364 	movw	r3, #54116	; 0xd364
8780699e:	f2c8 7380 	movt	r3, #34688	; 0x8780
878069a2:	2200      	movs	r2, #0
878069a4:	709a      	strb	r2, [r3, #2]
878069a6:	2301      	movs	r3, #1
878069a8:	9301      	str	r3, [sp, #4]
878069aa:	f44f 7352 	mov.w	r3, #840	; 0x348
878069ae:	f2c0 230e 	movt	r3, #526	; 0x20e
878069b2:	9300      	str	r3, [sp, #0]
878069b4:	2302      	movs	r3, #2
878069b6:	f240 52ac 	movw	r2, #1452	; 0x5ac
878069ba:	f2c0 220e 	movt	r2, #526	; 0x20e
878069be:	2102      	movs	r1, #2
878069c0:	20bc      	movs	r0, #188	; 0xbc
878069c2:	f2c0 200e 	movt	r0, #526	; 0x20e
878069c6:	f7ff ff93 	bl	878068f0 <IOMUXC_SetPinMux>
878069ca:	2301      	movs	r3, #1
878069cc:	9301      	str	r3, [sp, #4]
878069ce:	f44f 7353 	mov.w	r3, #844	; 0x34c
878069d2:	f2c0 230e 	movt	r3, #526	; 0x20e
878069d6:	9300      	str	r3, [sp, #0]
878069d8:	2302      	movs	r3, #2
878069da:	f44f 62b6 	mov.w	r2, #1456	; 0x5b0
878069de:	f2c0 220e 	movt	r2, #526	; 0x20e
878069e2:	2102      	movs	r1, #2
878069e4:	20c0      	movs	r0, #192	; 0xc0
878069e6:	f2c0 200e 	movt	r0, #526	; 0x20e
878069ea:	f7ff ff81 	bl	878068f0 <IOMUXC_SetPinMux>
878069ee:	f247 03b0 	movw	r3, #28848	; 0x70b0
878069f2:	9301      	str	r3, [sp, #4]
878069f4:	f44f 7352 	mov.w	r3, #840	; 0x348
878069f8:	f2c0 230e 	movt	r3, #526	; 0x20e
878069fc:	9300      	str	r3, [sp, #0]
878069fe:	2302      	movs	r3, #2
87806a00:	f240 52ac 	movw	r2, #1452	; 0x5ac
87806a04:	f2c0 220e 	movt	r2, #526	; 0x20e
87806a08:	2102      	movs	r1, #2
87806a0a:	20bc      	movs	r0, #188	; 0xbc
87806a0c:	f2c0 200e 	movt	r0, #526	; 0x20e
87806a10:	f7ff ff8c 	bl	8780692c <IOMUXC_SetPinConfig>
87806a14:	f247 03b0 	movw	r3, #28848	; 0x70b0
87806a18:	9301      	str	r3, [sp, #4]
87806a1a:	f44f 7353 	mov.w	r3, #844	; 0x34c
87806a1e:	f2c0 230e 	movt	r3, #526	; 0x20e
87806a22:	9300      	str	r3, [sp, #0]
87806a24:	2302      	movs	r3, #2
87806a26:	f44f 62b6 	mov.w	r2, #1456	; 0x5b0
87806a2a:	f2c0 220e 	movt	r2, #526	; 0x20e
87806a2e:	2102      	movs	r1, #2
87806a30:	20c0      	movs	r0, #192	; 0xc0
87806a32:	f2c0 200e 	movt	r0, #526	; 0x20e
87806a36:	f7ff ff79 	bl	8780692c <IOMUXC_SetPinConfig>
87806a3a:	2300      	movs	r3, #0
87806a3c:	9301      	str	r3, [sp, #4]
87806a3e:	f44f 7343 	mov.w	r3, #780	; 0x30c
87806a42:	f2c0 230e 	movt	r3, #526	; 0x20e
87806a46:	9300      	str	r3, [sp, #0]
87806a48:	2300      	movs	r3, #0
87806a4a:	2200      	movs	r2, #0
87806a4c:	2105      	movs	r1, #5
87806a4e:	2080      	movs	r0, #128	; 0x80
87806a50:	f2c0 200e 	movt	r0, #526	; 0x20e
87806a54:	f7ff ff4c 	bl	878068f0 <IOMUXC_SetPinMux>
87806a58:	2300      	movs	r3, #0
87806a5a:	9301      	str	r3, [sp, #4]
87806a5c:	2370      	movs	r3, #112	; 0x70
87806a5e:	f2c0 2329 	movt	r3, #553	; 0x229
87806a62:	9300      	str	r3, [sp, #0]
87806a64:	2300      	movs	r3, #0
87806a66:	2200      	movs	r2, #0
87806a68:	2105      	movs	r1, #5
87806a6a:	202c      	movs	r0, #44	; 0x2c
87806a6c:	f2c0 2029 	movt	r0, #553	; 0x229
87806a70:	f7ff ff3e 	bl	878068f0 <IOMUXC_SetPinMux>
87806a74:	f241 03b0 	movw	r3, #4272	; 0x10b0
87806a78:	9301      	str	r3, [sp, #4]
87806a7a:	f44f 7343 	mov.w	r3, #780	; 0x30c
87806a7e:	f2c0 230e 	movt	r3, #526	; 0x20e
87806a82:	9300      	str	r3, [sp, #0]
87806a84:	2300      	movs	r3, #0
87806a86:	2200      	movs	r2, #0
87806a88:	2105      	movs	r1, #5
87806a8a:	2080      	movs	r0, #128	; 0x80
87806a8c:	f2c0 200e 	movt	r0, #526	; 0x20e
87806a90:	f7ff ff4c 	bl	8780692c <IOMUXC_SetPinConfig>
87806a94:	f241 03b0 	movw	r3, #4272	; 0x10b0
87806a98:	9301      	str	r3, [sp, #4]
87806a9a:	2370      	movs	r3, #112	; 0x70
87806a9c:	f2c0 2329 	movt	r3, #553	; 0x229
87806aa0:	9300      	str	r3, [sp, #0]
87806aa2:	2300      	movs	r3, #0
87806aa4:	2200      	movs	r2, #0
87806aa6:	2105      	movs	r1, #5
87806aa8:	202c      	movs	r0, #44	; 0x2c
87806aaa:	f2c0 2029 	movt	r0, #553	; 0x229
87806aae:	f7ff ff3d 	bl	8780692c <IOMUXC_SetPinConfig>
87806ab2:	2301      	movs	r3, #1
87806ab4:	613b      	str	r3, [r7, #16]
87806ab6:	2301      	movs	r3, #1
87806ab8:	753b      	strb	r3, [r7, #20]
87806aba:	2300      	movs	r3, #0
87806abc:	61bb      	str	r3, [r7, #24]
87806abe:	f107 0310 	add.w	r3, r7, #16
87806ac2:	461a      	mov	r2, r3
87806ac4:	2109      	movs	r1, #9
87806ac6:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806aca:	f2c0 2009 	movt	r0, #521	; 0x209
87806ace:	f7f9 fef5 	bl	878008bc <gpio_init>
87806ad2:	2301      	movs	r3, #1
87806ad4:	607b      	str	r3, [r7, #4]
87806ad6:	2300      	movs	r3, #0
87806ad8:	60fb      	str	r3, [r7, #12]
87806ada:	2301      	movs	r3, #1
87806adc:	723b      	strb	r3, [r7, #8]
87806ade:	1d3b      	adds	r3, r7, #4
87806ae0:	461a      	mov	r2, r3
87806ae2:	2109      	movs	r1, #9
87806ae4:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806ae8:	f2c0 200a 	movt	r0, #522	; 0x20a
87806aec:	f7f9 fee6 	bl	878008bc <gpio_init>
87806af0:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87806af4:	f2c0 201a 	movt	r0, #538	; 0x21a
87806af8:	f7fe ff80 	bl	878059fc <i2c_init>
87806afc:	2200      	movs	r2, #0
87806afe:	2109      	movs	r1, #9
87806b00:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806b04:	f2c0 200a 	movt	r0, #522	; 0x20a
87806b08:	f7f9 ff24 	bl	87800954 <gpio_pinwrite>
87806b0c:	200a      	movs	r0, #10
87806b0e:	f7f9 fd65 	bl	878005dc <delayms>
87806b12:	2201      	movs	r2, #1
87806b14:	2109      	movs	r1, #9
87806b16:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806b1a:	f2c0 200a 	movt	r0, #522	; 0x20a
87806b1e:	f7f9 ff19 	bl	87800954 <gpio_pinwrite>
87806b22:	200a      	movs	r0, #10
87806b24:	f7f9 fd5a 	bl	878005dc <delayms>
87806b28:	2200      	movs	r2, #0
87806b2a:	2109      	movs	r1, #9
87806b2c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806b30:	f2c0 2009 	movt	r0, #521	; 0x209
87806b34:	f7f9 ff0e 	bl	87800954 <gpio_pinwrite>
87806b38:	2064      	movs	r0, #100	; 0x64
87806b3a:	f7f9 fd4f 	bl	878005dc <delayms>
87806b3e:	2380      	movs	r3, #128	; 0x80
87806b40:	9301      	str	r3, [sp, #4]
87806b42:	f44f 7343 	mov.w	r3, #780	; 0x30c
87806b46:	f2c0 230e 	movt	r3, #526	; 0x20e
87806b4a:	9300      	str	r3, [sp, #0]
87806b4c:	2300      	movs	r3, #0
87806b4e:	2200      	movs	r2, #0
87806b50:	2105      	movs	r1, #5
87806b52:	2080      	movs	r0, #128	; 0x80
87806b54:	f2c0 200e 	movt	r0, #526	; 0x20e
87806b58:	f7ff fee8 	bl	8780692c <IOMUXC_SetPinConfig>
87806b5c:	2300      	movs	r3, #0
87806b5e:	613b      	str	r3, [r7, #16]
87806b60:	2305      	movs	r3, #5
87806b62:	61bb      	str	r3, [r7, #24]
87806b64:	2300      	movs	r3, #0
87806b66:	753b      	strb	r3, [r7, #20]
87806b68:	f107 0310 	add.w	r3, r7, #16
87806b6c:	461a      	mov	r2, r3
87806b6e:	2109      	movs	r1, #9
87806b70:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806b74:	f2c0 2009 	movt	r0, #521	; 0x209
87806b78:	f7f9 fea0 	bl	878008bc <gpio_init>
87806b7c:	f107 031c 	add.w	r3, r7, #28
87806b80:	2204      	movs	r2, #4
87806b82:	f248 1140 	movw	r1, #33088	; 0x8140
87806b86:	2014      	movs	r0, #20
87806b88:	f000 f8e2 	bl	87806d50 <gt9147_read_len>
87806b8c:	2300      	movs	r3, #0
87806b8e:	f887 3020 	strb.w	r3, [r7, #32]
87806b92:	f107 031c 	add.w	r3, r7, #28
87806b96:	4619      	mov	r1, r3
87806b98:	f24c 30ec 	movw	r0, #50156	; 0xc3ec
87806b9c:	f2c8 7080 	movt	r0, #34688	; 0x8780
87806ba0:	f7fa ff64 	bl	87801a6c <printf>
87806ba4:	2202      	movs	r2, #2
87806ba6:	f248 0140 	movw	r1, #32832	; 0x8040
87806baa:	2014      	movs	r0, #20
87806bac:	f000 f87a 	bl	87806ca4 <gt9147_write_byte>
87806bb0:	7f3b      	ldrb	r3, [r7, #28]
87806bb2:	2b31      	cmp	r3, #49	; 0x31
87806bb4:	d108      	bne.n	87806bc8 <gt9147_init+0x278>
87806bb6:	f248 0150 	movw	r1, #32848	; 0x8050
87806bba:	2014      	movs	r0, #20
87806bbc:	f000 f8a2 	bl	87806d04 <gt9147_read_byte>
87806bc0:	4603      	mov	r3, r0
87806bc2:	f887 3037 	strb.w	r3, [r7, #55]	; 0x37
87806bc6:	e00d      	b.n	87806be4 <gt9147_init+0x294>
87806bc8:	f248 0147 	movw	r1, #32839	; 0x8047
87806bcc:	2014      	movs	r0, #20
87806bce:	f000 f899 	bl	87806d04 <gt9147_read_byte>
87806bd2:	4603      	mov	r3, r0
87806bd4:	f887 3037 	strb.w	r3, [r7, #55]	; 0x37
87806bd8:	2000      	movs	r0, #0
87806bda:	f000 f8f9 	bl	87806dd0 <gt9147_send_cfg>
87806bde:	200a      	movs	r0, #10
87806be0:	f7f9 fcfc 	bl	878005dc <delayms>
87806be4:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
87806be8:	4619      	mov	r1, r3
87806bea:	f24c 30f8 	movw	r0, #50168	; 0xc3f8
87806bee:	f2c8 7080 	movt	r0, #34688	; 0x8780
87806bf2:	f7fa ff3b 	bl	87801a6c <printf>
87806bf6:	2200      	movs	r2, #0
87806bf8:	f248 0140 	movw	r1, #32832	; 0x8040
87806bfc:	2014      	movs	r0, #20
87806bfe:	f000 f851 	bl	87806ca4 <gt9147_write_byte>
87806c02:	2362      	movs	r3, #98	; 0x62
87806c04:	62fb      	str	r3, [r7, #44]	; 0x2c
87806c06:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87806c0a:	62bb      	str	r3, [r7, #40]	; 0x28
87806c0c:	6abb      	ldr	r3, [r7, #40]	; 0x28
87806c0e:	0c1b      	lsrs	r3, r3, #16
87806c10:	041b      	lsls	r3, r3, #16
87806c12:	627b      	str	r3, [r7, #36]	; 0x24
87806c14:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87806c16:	095a      	lsrs	r2, r3, #5
87806c18:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87806c1a:	f003 031f 	and.w	r3, r3, #31
87806c1e:	2101      	movs	r1, #1
87806c20:	4099      	lsls	r1, r3
87806c22:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87806c24:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87806c28:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87806c2c:	2200      	movs	r2, #0
87806c2e:	f646 4171 	movw	r1, #27761	; 0x6c71
87806c32:	f2c8 7180 	movt	r1, #34688	; 0x8780
87806c36:	2062      	movs	r0, #98	; 0x62
87806c38:	f7f9 ffce 	bl	87800bd8 <system_register_irqhandler>
87806c3c:	2109      	movs	r1, #9
87806c3e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806c42:	f2c0 2009 	movt	r0, #521	; 0x209
87806c46:	f7f9 ff23 	bl	87800a90 <gpio_enableint>
87806c4a:	206e      	movs	r0, #110	; 0x6e
87806c4c:	f7f9 fcc6 	bl	878005dc <delayms>
87806c50:	f24d 3364 	movw	r3, #54116	; 0xd364
87806c54:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806c58:	2201      	movs	r2, #1
87806c5a:	701a      	strb	r2, [r3, #0]
87806c5c:	f24d 3364 	movw	r3, #54116	; 0xd364
87806c60:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806c64:	2200      	movs	r2, #0
87806c66:	705a      	strb	r2, [r3, #1]
87806c68:	3738      	adds	r7, #56	; 0x38
87806c6a:	46bd      	mov	sp, r7
87806c6c:	bd80      	pop	{r7, pc}
87806c6e:	bf00      	nop

87806c70 <gt9147_irqhandler>:
87806c70:	b580      	push	{r7, lr}
87806c72:	af00      	add	r7, sp, #0
87806c74:	f24d 3364 	movw	r3, #54116	; 0xd364
87806c78:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806c7c:	781b      	ldrb	r3, [r3, #0]
87806c7e:	2b01      	cmp	r3, #1
87806c80:	d107      	bne.n	87806c92 <gt9147_irqhandler+0x22>
87806c82:	f24d 3364 	movw	r3, #54116	; 0xd364
87806c86:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806c8a:	2201      	movs	r2, #1
87806c8c:	705a      	strb	r2, [r3, #1]
87806c8e:	f000 f8d7 	bl	87806e40 <gt9147_read_tpcoord>
87806c92:	2109      	movs	r1, #9
87806c94:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806c98:	f2c0 2009 	movt	r0, #521	; 0x209
87806c9c:	f7f9 ff20 	bl	87800ae0 <gpio_clearintflags>
87806ca0:	bd80      	pop	{r7, pc}
87806ca2:	bf00      	nop

87806ca4 <gt9147_write_byte>:
87806ca4:	b580      	push	{r7, lr}
87806ca6:	b08a      	sub	sp, #40	; 0x28
87806ca8:	af00      	add	r7, sp, #0
87806caa:	4603      	mov	r3, r0
87806cac:	6039      	str	r1, [r7, #0]
87806cae:	71fb      	strb	r3, [r7, #7]
87806cb0:	4613      	mov	r3, r2
87806cb2:	71bb      	strb	r3, [r7, #6]
87806cb4:	2300      	movs	r3, #0
87806cb6:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87806cba:	79bb      	ldrb	r3, [r7, #6]
87806cbc:	f887 3026 	strb.w	r3, [r7, #38]	; 0x26
87806cc0:	79fb      	ldrb	r3, [r7, #7]
87806cc2:	733b      	strb	r3, [r7, #12]
87806cc4:	2300      	movs	r3, #0
87806cc6:	613b      	str	r3, [r7, #16]
87806cc8:	683b      	ldr	r3, [r7, #0]
87806cca:	617b      	str	r3, [r7, #20]
87806ccc:	2302      	movs	r3, #2
87806cce:	763b      	strb	r3, [r7, #24]
87806cd0:	f107 0326 	add.w	r3, r7, #38	; 0x26
87806cd4:	61fb      	str	r3, [r7, #28]
87806cd6:	2301      	movs	r3, #1
87806cd8:	623b      	str	r3, [r7, #32]
87806cda:	f107 030c 	add.w	r3, r7, #12
87806cde:	4619      	mov	r1, r3
87806ce0:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87806ce4:	f2c0 201a 	movt	r0, #538	; 0x21a
87806ce8:	f7ff f81a 	bl	87805d20 <i2c_master_transfer>
87806cec:	4603      	mov	r3, r0
87806cee:	2b00      	cmp	r3, #0
87806cf0:	d002      	beq.n	87806cf8 <gt9147_write_byte+0x54>
87806cf2:	2301      	movs	r3, #1
87806cf4:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87806cf8:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
87806cfc:	4618      	mov	r0, r3
87806cfe:	3728      	adds	r7, #40	; 0x28
87806d00:	46bd      	mov	sp, r7
87806d02:	bd80      	pop	{r7, pc}

87806d04 <gt9147_read_byte>:
87806d04:	b580      	push	{r7, lr}
87806d06:	b08a      	sub	sp, #40	; 0x28
87806d08:	af00      	add	r7, sp, #0
87806d0a:	4603      	mov	r3, r0
87806d0c:	6039      	str	r1, [r7, #0]
87806d0e:	71fb      	strb	r3, [r7, #7]
87806d10:	2300      	movs	r3, #0
87806d12:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87806d16:	79fb      	ldrb	r3, [r7, #7]
87806d18:	733b      	strb	r3, [r7, #12]
87806d1a:	2301      	movs	r3, #1
87806d1c:	613b      	str	r3, [r7, #16]
87806d1e:	683b      	ldr	r3, [r7, #0]
87806d20:	617b      	str	r3, [r7, #20]
87806d22:	2302      	movs	r3, #2
87806d24:	763b      	strb	r3, [r7, #24]
87806d26:	f107 0327 	add.w	r3, r7, #39	; 0x27
87806d2a:	61fb      	str	r3, [r7, #28]
87806d2c:	2301      	movs	r3, #1
87806d2e:	623b      	str	r3, [r7, #32]
87806d30:	f107 030c 	add.w	r3, r7, #12
87806d34:	4619      	mov	r1, r3
87806d36:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87806d3a:	f2c0 201a 	movt	r0, #538	; 0x21a
87806d3e:	f7fe ffef 	bl	87805d20 <i2c_master_transfer>
87806d42:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
87806d46:	4618      	mov	r0, r3
87806d48:	3728      	adds	r7, #40	; 0x28
87806d4a:	46bd      	mov	sp, r7
87806d4c:	bd80      	pop	{r7, pc}
87806d4e:	bf00      	nop

87806d50 <gt9147_read_len>:
87806d50:	b580      	push	{r7, lr}
87806d52:	b08a      	sub	sp, #40	; 0x28
87806d54:	af00      	add	r7, sp, #0
87806d56:	60b9      	str	r1, [r7, #8]
87806d58:	607a      	str	r2, [r7, #4]
87806d5a:	603b      	str	r3, [r7, #0]
87806d5c:	4603      	mov	r3, r0
87806d5e:	73fb      	strb	r3, [r7, #15]
87806d60:	7bfb      	ldrb	r3, [r7, #15]
87806d62:	743b      	strb	r3, [r7, #16]
87806d64:	2301      	movs	r3, #1
87806d66:	617b      	str	r3, [r7, #20]
87806d68:	68bb      	ldr	r3, [r7, #8]
87806d6a:	61bb      	str	r3, [r7, #24]
87806d6c:	2302      	movs	r3, #2
87806d6e:	773b      	strb	r3, [r7, #28]
87806d70:	683b      	ldr	r3, [r7, #0]
87806d72:	623b      	str	r3, [r7, #32]
87806d74:	687b      	ldr	r3, [r7, #4]
87806d76:	627b      	str	r3, [r7, #36]	; 0x24
87806d78:	f107 0310 	add.w	r3, r7, #16
87806d7c:	4619      	mov	r1, r3
87806d7e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87806d82:	f2c0 201a 	movt	r0, #538	; 0x21a
87806d86:	f7fe ffcb 	bl	87805d20 <i2c_master_transfer>
87806d8a:	3728      	adds	r7, #40	; 0x28
87806d8c:	46bd      	mov	sp, r7
87806d8e:	bd80      	pop	{r7, pc}

87806d90 <gt9147_write_len>:
87806d90:	b580      	push	{r7, lr}
87806d92:	b08a      	sub	sp, #40	; 0x28
87806d94:	af00      	add	r7, sp, #0
87806d96:	60b9      	str	r1, [r7, #8]
87806d98:	607a      	str	r2, [r7, #4]
87806d9a:	603b      	str	r3, [r7, #0]
87806d9c:	4603      	mov	r3, r0
87806d9e:	73fb      	strb	r3, [r7, #15]
87806da0:	7bfb      	ldrb	r3, [r7, #15]
87806da2:	743b      	strb	r3, [r7, #16]
87806da4:	2300      	movs	r3, #0
87806da6:	617b      	str	r3, [r7, #20]
87806da8:	68bb      	ldr	r3, [r7, #8]
87806daa:	61bb      	str	r3, [r7, #24]
87806dac:	2302      	movs	r3, #2
87806dae:	773b      	strb	r3, [r7, #28]
87806db0:	683b      	ldr	r3, [r7, #0]
87806db2:	623b      	str	r3, [r7, #32]
87806db4:	687b      	ldr	r3, [r7, #4]
87806db6:	627b      	str	r3, [r7, #36]	; 0x24
87806db8:	f107 0310 	add.w	r3, r7, #16
87806dbc:	4619      	mov	r1, r3
87806dbe:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87806dc2:	f2c0 201a 	movt	r0, #538	; 0x21a
87806dc6:	f7fe ffab 	bl	87805d20 <i2c_master_transfer>
87806dca:	3728      	adds	r7, #40	; 0x28
87806dcc:	46bd      	mov	sp, r7
87806dce:	bd80      	pop	{r7, pc}

87806dd0 <gt9147_send_cfg>:
87806dd0:	b580      	push	{r7, lr}
87806dd2:	b084      	sub	sp, #16
87806dd4:	af00      	add	r7, sp, #0
87806dd6:	4603      	mov	r3, r0
87806dd8:	71fb      	strb	r3, [r7, #7]
87806dda:	2300      	movs	r3, #0
87806ddc:	60fb      	str	r3, [r7, #12]
87806dde:	2300      	movs	r3, #0
87806de0:	723b      	strb	r3, [r7, #8]
87806de2:	79fb      	ldrb	r3, [r7, #7]
87806de4:	727b      	strb	r3, [r7, #9]
87806de6:	2300      	movs	r3, #0
87806de8:	60fb      	str	r3, [r7, #12]
87806dea:	e00d      	b.n	87806e08 <gt9147_send_cfg+0x38>
87806dec:	7a3a      	ldrb	r2, [r7, #8]
87806dee:	f24c 5344 	movw	r3, #50500	; 0xc544
87806df2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806df6:	68f9      	ldr	r1, [r7, #12]
87806df8:	440b      	add	r3, r1
87806dfa:	781b      	ldrb	r3, [r3, #0]
87806dfc:	4413      	add	r3, r2
87806dfe:	b2db      	uxtb	r3, r3
87806e00:	723b      	strb	r3, [r7, #8]
87806e02:	68fb      	ldr	r3, [r7, #12]
87806e04:	3301      	adds	r3, #1
87806e06:	60fb      	str	r3, [r7, #12]
87806e08:	68fb      	ldr	r3, [r7, #12]
87806e0a:	2bb7      	cmp	r3, #183	; 0xb7
87806e0c:	d9ee      	bls.n	87806dec <gt9147_send_cfg+0x1c>
87806e0e:	7a3b      	ldrb	r3, [r7, #8]
87806e10:	425b      	negs	r3, r3
87806e12:	b2db      	uxtb	r3, r3
87806e14:	723b      	strb	r3, [r7, #8]
87806e16:	f24c 5344 	movw	r3, #50500	; 0xc544
87806e1a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806e1e:	22b8      	movs	r2, #184	; 0xb8
87806e20:	f248 0147 	movw	r1, #32839	; 0x8047
87806e24:	2014      	movs	r0, #20
87806e26:	f7ff ffb3 	bl	87806d90 <gt9147_write_len>
87806e2a:	f107 0308 	add.w	r3, r7, #8
87806e2e:	2202      	movs	r2, #2
87806e30:	f248 01ff 	movw	r1, #33023	; 0x80ff
87806e34:	2014      	movs	r0, #20
87806e36:	f7ff ffab 	bl	87806d90 <gt9147_write_len>
87806e3a:	3710      	adds	r7, #16
87806e3c:	46bd      	mov	sp, r7
87806e3e:	bd80      	pop	{r7, pc}

87806e40 <gt9147_read_tpcoord>:
87806e40:	b580      	push	{r7, lr}
87806e42:	b082      	sub	sp, #8
87806e44:	af00      	add	r7, sp, #0
87806e46:	2300      	movs	r3, #0
87806e48:	71fb      	strb	r3, [r7, #7]
87806e4a:	2300      	movs	r3, #0
87806e4c:	71bb      	strb	r3, [r7, #6]
87806e4e:	f248 114e 	movw	r1, #33102	; 0x814e
87806e52:	2014      	movs	r0, #20
87806e54:	f7ff ff56 	bl	87806d04 <gt9147_read_byte>
87806e58:	4603      	mov	r3, r0
87806e5a:	71bb      	strb	r3, [r7, #6]
87806e5c:	2200      	movs	r2, #0
87806e5e:	f248 114e 	movw	r1, #33102	; 0x814e
87806e62:	2014      	movs	r0, #20
87806e64:	f7ff ff1e 	bl	87806ca4 <gt9147_write_byte>
87806e68:	79bb      	ldrb	r3, [r7, #6]
87806e6a:	f003 030f 	and.w	r3, r3, #15
87806e6e:	b2da      	uxtb	r2, r3
87806e70:	f24d 3364 	movw	r3, #54116	; 0xd364
87806e74:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806e78:	709a      	strb	r2, [r3, #2]
87806e7a:	2300      	movs	r3, #0
87806e7c:	71fb      	strb	r3, [r7, #7]
87806e7e:	e032      	b.n	87806ee6 <gt9147_read_tpcoord+0xa6>
87806e80:	79fa      	ldrb	r2, [r7, #7]
87806e82:	f24c 430c 	movw	r3, #50188	; 0xc40c
87806e86:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806e8a:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
87806e8e:	4619      	mov	r1, r3
87806e90:	463b      	mov	r3, r7
87806e92:	2204      	movs	r2, #4
87806e94:	2014      	movs	r0, #20
87806e96:	f7ff ff5b 	bl	87806d50 <gt9147_read_len>
87806e9a:	79fb      	ldrb	r3, [r7, #7]
87806e9c:	787a      	ldrb	r2, [r7, #1]
87806e9e:	b292      	uxth	r2, r2
87806ea0:	0212      	lsls	r2, r2, #8
87806ea2:	b291      	uxth	r1, r2
87806ea4:	783a      	ldrb	r2, [r7, #0]
87806ea6:	b292      	uxth	r2, r2
87806ea8:	440a      	add	r2, r1
87806eaa:	b291      	uxth	r1, r2
87806eac:	f24d 3264 	movw	r2, #54116	; 0xd364
87806eb0:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806eb4:	005b      	lsls	r3, r3, #1
87806eb6:	4413      	add	r3, r2
87806eb8:	460a      	mov	r2, r1
87806eba:	809a      	strh	r2, [r3, #4]
87806ebc:	79fb      	ldrb	r3, [r7, #7]
87806ebe:	78fa      	ldrb	r2, [r7, #3]
87806ec0:	b292      	uxth	r2, r2
87806ec2:	0212      	lsls	r2, r2, #8
87806ec4:	b291      	uxth	r1, r2
87806ec6:	78ba      	ldrb	r2, [r7, #2]
87806ec8:	b292      	uxth	r2, r2
87806eca:	440a      	add	r2, r1
87806ecc:	b291      	uxth	r1, r2
87806ece:	f24d 3264 	movw	r2, #54116	; 0xd364
87806ed2:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806ed6:	3304      	adds	r3, #4
87806ed8:	005b      	lsls	r3, r3, #1
87806eda:	4413      	add	r3, r2
87806edc:	460a      	mov	r2, r1
87806ede:	80da      	strh	r2, [r3, #6]
87806ee0:	79fb      	ldrb	r3, [r7, #7]
87806ee2:	3301      	adds	r3, #1
87806ee4:	71fb      	strb	r3, [r7, #7]
87806ee6:	f24d 3364 	movw	r3, #54116	; 0xd364
87806eea:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806eee:	789b      	ldrb	r3, [r3, #2]
87806ef0:	79fa      	ldrb	r2, [r7, #7]
87806ef2:	429a      	cmp	r2, r3
87806ef4:	d3c4      	bcc.n	87806e80 <gt9147_read_tpcoord+0x40>
87806ef6:	3708      	adds	r7, #8
87806ef8:	46bd      	mov	sp, r7
87806efa:	bd80      	pop	{r7, pc}

87806efc <IOMUXC_SetPinMux>:
87806efc:	b480      	push	{r7}
87806efe:	b085      	sub	sp, #20
87806f00:	af00      	add	r7, sp, #0
87806f02:	60f8      	str	r0, [r7, #12]
87806f04:	60b9      	str	r1, [r7, #8]
87806f06:	607a      	str	r2, [r7, #4]
87806f08:	603b      	str	r3, [r7, #0]
87806f0a:	68fb      	ldr	r3, [r7, #12]
87806f0c:	68ba      	ldr	r2, [r7, #8]
87806f0e:	f002 010f 	and.w	r1, r2, #15
87806f12:	69fa      	ldr	r2, [r7, #28]
87806f14:	0112      	lsls	r2, r2, #4
87806f16:	f002 0210 	and.w	r2, r2, #16
87806f1a:	430a      	orrs	r2, r1
87806f1c:	601a      	str	r2, [r3, #0]
87806f1e:	687b      	ldr	r3, [r7, #4]
87806f20:	2b00      	cmp	r3, #0
87806f22:	d004      	beq.n	87806f2e <IOMUXC_SetPinMux+0x32>
87806f24:	687b      	ldr	r3, [r7, #4]
87806f26:	683a      	ldr	r2, [r7, #0]
87806f28:	f002 0207 	and.w	r2, r2, #7
87806f2c:	601a      	str	r2, [r3, #0]
87806f2e:	3714      	adds	r7, #20
87806f30:	46bd      	mov	sp, r7
87806f32:	f85d 7b04 	ldr.w	r7, [sp], #4
87806f36:	4770      	bx	lr

87806f38 <IOMUXC_SetPinConfig>:
87806f38:	b480      	push	{r7}
87806f3a:	b085      	sub	sp, #20
87806f3c:	af00      	add	r7, sp, #0
87806f3e:	60f8      	str	r0, [r7, #12]
87806f40:	60b9      	str	r1, [r7, #8]
87806f42:	607a      	str	r2, [r7, #4]
87806f44:	603b      	str	r3, [r7, #0]
87806f46:	69bb      	ldr	r3, [r7, #24]
87806f48:	2b00      	cmp	r3, #0
87806f4a:	d002      	beq.n	87806f52 <IOMUXC_SetPinConfig+0x1a>
87806f4c:	69bb      	ldr	r3, [r7, #24]
87806f4e:	69fa      	ldr	r2, [r7, #28]
87806f50:	601a      	str	r2, [r3, #0]
87806f52:	3714      	adds	r7, #20
87806f54:	46bd      	mov	sp, r7
87806f56:	f85d 7b04 	ldr.w	r7, [sp], #4
87806f5a:	4770      	bx	lr

87806f5c <ft5426_init>:
87806f5c:	b580      	push	{r7, lr}
87806f5e:	b08a      	sub	sp, #40	; 0x28
87806f60:	af02      	add	r7, sp, #8
87806f62:	f24d 337c 	movw	r3, #54140	; 0xd37c
87806f66:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806f6a:	2200      	movs	r2, #0
87806f6c:	701a      	strb	r2, [r3, #0]
87806f6e:	2300      	movs	r3, #0
87806f70:	61fb      	str	r3, [r7, #28]
87806f72:	e015      	b.n	87806fa0 <ft5426_init+0x44>
87806f74:	f24d 327c 	movw	r2, #54140	; 0xd37c
87806f78:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806f7c:	69fb      	ldr	r3, [r7, #28]
87806f7e:	005b      	lsls	r3, r3, #1
87806f80:	4413      	add	r3, r2
87806f82:	2200      	movs	r2, #0
87806f84:	809a      	strh	r2, [r3, #4]
87806f86:	f24d 327c 	movw	r2, #54140	; 0xd37c
87806f8a:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806f8e:	69fb      	ldr	r3, [r7, #28]
87806f90:	3304      	adds	r3, #4
87806f92:	005b      	lsls	r3, r3, #1
87806f94:	4413      	add	r3, r2
87806f96:	2200      	movs	r2, #0
87806f98:	80da      	strh	r2, [r3, #6]
87806f9a:	69fb      	ldr	r3, [r7, #28]
87806f9c:	3301      	adds	r3, #1
87806f9e:	61fb      	str	r3, [r7, #28]
87806fa0:	69fb      	ldr	r3, [r7, #28]
87806fa2:	2b04      	cmp	r3, #4
87806fa4:	dde6      	ble.n	87806f74 <ft5426_init+0x18>
87806fa6:	f24d 337c 	movw	r3, #54140	; 0xd37c
87806faa:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806fae:	2200      	movs	r2, #0
87806fb0:	709a      	strb	r2, [r3, #2]
87806fb2:	2301      	movs	r3, #1
87806fb4:	9301      	str	r3, [sp, #4]
87806fb6:	f44f 7352 	mov.w	r3, #840	; 0x348
87806fba:	f2c0 230e 	movt	r3, #526	; 0x20e
87806fbe:	9300      	str	r3, [sp, #0]
87806fc0:	2302      	movs	r3, #2
87806fc2:	f240 52ac 	movw	r2, #1452	; 0x5ac
87806fc6:	f2c0 220e 	movt	r2, #526	; 0x20e
87806fca:	2102      	movs	r1, #2
87806fcc:	20bc      	movs	r0, #188	; 0xbc
87806fce:	f2c0 200e 	movt	r0, #526	; 0x20e
87806fd2:	f7ff ff93 	bl	87806efc <IOMUXC_SetPinMux>
87806fd6:	2301      	movs	r3, #1
87806fd8:	9301      	str	r3, [sp, #4]
87806fda:	f44f 7353 	mov.w	r3, #844	; 0x34c
87806fde:	f2c0 230e 	movt	r3, #526	; 0x20e
87806fe2:	9300      	str	r3, [sp, #0]
87806fe4:	2302      	movs	r3, #2
87806fe6:	f44f 62b6 	mov.w	r2, #1456	; 0x5b0
87806fea:	f2c0 220e 	movt	r2, #526	; 0x20e
87806fee:	2102      	movs	r1, #2
87806ff0:	20c0      	movs	r0, #192	; 0xc0
87806ff2:	f2c0 200e 	movt	r0, #526	; 0x20e
87806ff6:	f7ff ff81 	bl	87806efc <IOMUXC_SetPinMux>
87806ffa:	f247 03b0 	movw	r3, #28848	; 0x70b0
87806ffe:	9301      	str	r3, [sp, #4]
87807000:	f44f 7352 	mov.w	r3, #840	; 0x348
87807004:	f2c0 230e 	movt	r3, #526	; 0x20e
87807008:	9300      	str	r3, [sp, #0]
8780700a:	2302      	movs	r3, #2
8780700c:	f240 52ac 	movw	r2, #1452	; 0x5ac
87807010:	f2c0 220e 	movt	r2, #526	; 0x20e
87807014:	2102      	movs	r1, #2
87807016:	20bc      	movs	r0, #188	; 0xbc
87807018:	f2c0 200e 	movt	r0, #526	; 0x20e
8780701c:	f7ff ff8c 	bl	87806f38 <IOMUXC_SetPinConfig>
87807020:	f247 03b0 	movw	r3, #28848	; 0x70b0
87807024:	9301      	str	r3, [sp, #4]
87807026:	f44f 7353 	mov.w	r3, #844	; 0x34c
8780702a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780702e:	9300      	str	r3, [sp, #0]
87807030:	2302      	movs	r3, #2
87807032:	f44f 62b6 	mov.w	r2, #1456	; 0x5b0
87807036:	f2c0 220e 	movt	r2, #526	; 0x20e
8780703a:	2102      	movs	r1, #2
8780703c:	20c0      	movs	r0, #192	; 0xc0
8780703e:	f2c0 200e 	movt	r0, #526	; 0x20e
87807042:	f7ff ff79 	bl	87806f38 <IOMUXC_SetPinConfig>
87807046:	2300      	movs	r3, #0
87807048:	9301      	str	r3, [sp, #4]
8780704a:	f44f 7343 	mov.w	r3, #780	; 0x30c
8780704e:	f2c0 230e 	movt	r3, #526	; 0x20e
87807052:	9300      	str	r3, [sp, #0]
87807054:	2300      	movs	r3, #0
87807056:	2200      	movs	r2, #0
87807058:	2105      	movs	r1, #5
8780705a:	2080      	movs	r0, #128	; 0x80
8780705c:	f2c0 200e 	movt	r0, #526	; 0x20e
87807060:	f7ff ff4c 	bl	87806efc <IOMUXC_SetPinMux>
87807064:	2300      	movs	r3, #0
87807066:	9301      	str	r3, [sp, #4]
87807068:	2370      	movs	r3, #112	; 0x70
8780706a:	f2c0 2329 	movt	r3, #553	; 0x229
8780706e:	9300      	str	r3, [sp, #0]
87807070:	2300      	movs	r3, #0
87807072:	2200      	movs	r2, #0
87807074:	2105      	movs	r1, #5
87807076:	202c      	movs	r0, #44	; 0x2c
87807078:	f2c0 2029 	movt	r0, #553	; 0x229
8780707c:	f7ff ff3e 	bl	87806efc <IOMUXC_SetPinMux>
87807080:	f24f 0380 	movw	r3, #61568	; 0xf080
87807084:	9301      	str	r3, [sp, #4]
87807086:	f44f 7343 	mov.w	r3, #780	; 0x30c
8780708a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780708e:	9300      	str	r3, [sp, #0]
87807090:	2300      	movs	r3, #0
87807092:	2200      	movs	r2, #0
87807094:	2105      	movs	r1, #5
87807096:	2080      	movs	r0, #128	; 0x80
87807098:	f2c0 200e 	movt	r0, #526	; 0x20e
8780709c:	f7ff ff4c 	bl	87806f38 <IOMUXC_SetPinConfig>
878070a0:	f241 03b0 	movw	r3, #4272	; 0x10b0
878070a4:	9301      	str	r3, [sp, #4]
878070a6:	2370      	movs	r3, #112	; 0x70
878070a8:	f2c0 2329 	movt	r3, #553	; 0x229
878070ac:	9300      	str	r3, [sp, #0]
878070ae:	2300      	movs	r3, #0
878070b0:	2200      	movs	r2, #0
878070b2:	2105      	movs	r1, #5
878070b4:	202c      	movs	r0, #44	; 0x2c
878070b6:	f2c0 2029 	movt	r0, #553	; 0x229
878070ba:	f7ff ff3d 	bl	87806f38 <IOMUXC_SetPinConfig>
878070be:	2300      	movs	r3, #0
878070c0:	603b      	str	r3, [r7, #0]
878070c2:	2305      	movs	r3, #5
878070c4:	60bb      	str	r3, [r7, #8]
878070c6:	463b      	mov	r3, r7
878070c8:	461a      	mov	r2, r3
878070ca:	2109      	movs	r1, #9
878070cc:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878070d0:	f2c0 2009 	movt	r0, #521	; 0x209
878070d4:	f7f9 fbf2 	bl	878008bc <gpio_init>
878070d8:	2362      	movs	r3, #98	; 0x62
878070da:	61bb      	str	r3, [r7, #24]
878070dc:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
878070e0:	617b      	str	r3, [r7, #20]
878070e2:	697b      	ldr	r3, [r7, #20]
878070e4:	0c1b      	lsrs	r3, r3, #16
878070e6:	041b      	lsls	r3, r3, #16
878070e8:	613b      	str	r3, [r7, #16]
878070ea:	69bb      	ldr	r3, [r7, #24]
878070ec:	095a      	lsrs	r2, r3, #5
878070ee:	69bb      	ldr	r3, [r7, #24]
878070f0:	f003 031f 	and.w	r3, r3, #31
878070f4:	2101      	movs	r1, #1
878070f6:	4099      	lsls	r1, r3
878070f8:	693b      	ldr	r3, [r7, #16]
878070fa:	f502 6288 	add.w	r2, r2, #1088	; 0x440
878070fe:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87807102:	2200      	movs	r2, #0
87807104:	f247 11cd 	movw	r1, #29133	; 0x71cd
87807108:	f2c8 7180 	movt	r1, #34688	; 0x8780
8780710c:	2062      	movs	r0, #98	; 0x62
8780710e:	f7f9 fd63 	bl	87800bd8 <system_register_irqhandler>
87807112:	2109      	movs	r1, #9
87807114:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87807118:	f2c0 2009 	movt	r0, #521	; 0x209
8780711c:	f7f9 fcb8 	bl	87800a90 <gpio_enableint>
87807120:	2301      	movs	r3, #1
87807122:	603b      	str	r3, [r7, #0]
87807124:	2300      	movs	r3, #0
87807126:	60bb      	str	r3, [r7, #8]
87807128:	2301      	movs	r3, #1
8780712a:	713b      	strb	r3, [r7, #4]
8780712c:	463b      	mov	r3, r7
8780712e:	461a      	mov	r2, r3
87807130:	2109      	movs	r1, #9
87807132:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87807136:	f2c0 200a 	movt	r0, #522	; 0x20a
8780713a:	f7f9 fbbf 	bl	878008bc <gpio_init>
8780713e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87807142:	f2c0 201a 	movt	r0, #538	; 0x21a
87807146:	f7fe fc59 	bl	878059fc <i2c_init>
8780714a:	2200      	movs	r2, #0
8780714c:	2109      	movs	r1, #9
8780714e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87807152:	f2c0 200a 	movt	r0, #522	; 0x20a
87807156:	f7f9 fbfd 	bl	87800954 <gpio_pinwrite>
8780715a:	2014      	movs	r0, #20
8780715c:	f7f9 fa3e 	bl	878005dc <delayms>
87807160:	2201      	movs	r2, #1
87807162:	2109      	movs	r1, #9
87807164:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87807168:	f2c0 200a 	movt	r0, #522	; 0x20a
8780716c:	f7f9 fbf2 	bl	87800954 <gpio_pinwrite>
87807170:	2014      	movs	r0, #20
87807172:	f7f9 fa33 	bl	878005dc <delayms>
87807176:	2200      	movs	r2, #0
87807178:	2100      	movs	r1, #0
8780717a:	2038      	movs	r0, #56	; 0x38
8780717c:	f000 f83a 	bl	878071f4 <ft5426_write_byte>
87807180:	2201      	movs	r2, #1
87807182:	21a4      	movs	r1, #164	; 0xa4
87807184:	2038      	movs	r0, #56	; 0x38
87807186:	f000 f835 	bl	878071f4 <ft5426_write_byte>
8780718a:	f107 030c 	add.w	r3, r7, #12
8780718e:	2202      	movs	r2, #2
87807190:	21a1      	movs	r1, #161	; 0xa1
87807192:	2038      	movs	r0, #56	; 0x38
87807194:	f000 f888 	bl	878072a8 <ft5426_read_len>
87807198:	7b3b      	ldrb	r3, [r7, #12]
8780719a:	021b      	lsls	r3, r3, #8
8780719c:	7b7a      	ldrb	r2, [r7, #13]
8780719e:	4413      	add	r3, r2
878071a0:	4619      	mov	r1, r3
878071a2:	f24c 4018 	movw	r0, #50200	; 0xc418
878071a6:	f2c8 7080 	movt	r0, #34688	; 0x8780
878071aa:	f7fa fc5f 	bl	87801a6c <printf>
878071ae:	f24d 337c 	movw	r3, #54140	; 0xd37c
878071b2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878071b6:	2201      	movs	r2, #1
878071b8:	701a      	strb	r2, [r3, #0]
878071ba:	f24d 337c 	movw	r3, #54140	; 0xd37c
878071be:	f2c8 7380 	movt	r3, #34688	; 0x8780
878071c2:	2200      	movs	r2, #0
878071c4:	705a      	strb	r2, [r3, #1]
878071c6:	3720      	adds	r7, #32
878071c8:	46bd      	mov	sp, r7
878071ca:	bd80      	pop	{r7, pc}

878071cc <gpio1_io9_irqhandler>:
878071cc:	b580      	push	{r7, lr}
878071ce:	af00      	add	r7, sp, #0
878071d0:	f24d 337c 	movw	r3, #54140	; 0xd37c
878071d4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878071d8:	781b      	ldrb	r3, [r3, #0]
878071da:	2b01      	cmp	r3, #1
878071dc:	d101      	bne.n	878071e2 <gpio1_io9_irqhandler+0x16>
878071de:	f000 f893 	bl	87807308 <ft5426_read_tpcoord>
878071e2:	2109      	movs	r1, #9
878071e4:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878071e8:	f2c0 2009 	movt	r0, #521	; 0x209
878071ec:	f7f9 fc78 	bl	87800ae0 <gpio_clearintflags>
878071f0:	bd80      	pop	{r7, pc}
878071f2:	bf00      	nop

878071f4 <ft5426_write_byte>:
878071f4:	b580      	push	{r7, lr}
878071f6:	b08a      	sub	sp, #40	; 0x28
878071f8:	af00      	add	r7, sp, #0
878071fa:	4603      	mov	r3, r0
878071fc:	71fb      	strb	r3, [r7, #7]
878071fe:	460b      	mov	r3, r1
87807200:	71bb      	strb	r3, [r7, #6]
87807202:	4613      	mov	r3, r2
87807204:	717b      	strb	r3, [r7, #5]
87807206:	2300      	movs	r3, #0
87807208:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
8780720c:	797b      	ldrb	r3, [r7, #5]
8780720e:	f887 3026 	strb.w	r3, [r7, #38]	; 0x26
87807212:	79fb      	ldrb	r3, [r7, #7]
87807214:	733b      	strb	r3, [r7, #12]
87807216:	2300      	movs	r3, #0
87807218:	613b      	str	r3, [r7, #16]
8780721a:	79bb      	ldrb	r3, [r7, #6]
8780721c:	617b      	str	r3, [r7, #20]
8780721e:	2301      	movs	r3, #1
87807220:	763b      	strb	r3, [r7, #24]
87807222:	f107 0326 	add.w	r3, r7, #38	; 0x26
87807226:	61fb      	str	r3, [r7, #28]
87807228:	2301      	movs	r3, #1
8780722a:	623b      	str	r3, [r7, #32]
8780722c:	f107 030c 	add.w	r3, r7, #12
87807230:	4619      	mov	r1, r3
87807232:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87807236:	f2c0 201a 	movt	r0, #538	; 0x21a
8780723a:	f7fe fd71 	bl	87805d20 <i2c_master_transfer>
8780723e:	4603      	mov	r3, r0
87807240:	2b00      	cmp	r3, #0
87807242:	d002      	beq.n	8780724a <ft5426_write_byte+0x56>
87807244:	2301      	movs	r3, #1
87807246:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
8780724a:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
8780724e:	4618      	mov	r0, r3
87807250:	3728      	adds	r7, #40	; 0x28
87807252:	46bd      	mov	sp, r7
87807254:	bd80      	pop	{r7, pc}
87807256:	bf00      	nop

87807258 <ft5426_read_byte>:
87807258:	b580      	push	{r7, lr}
8780725a:	b08a      	sub	sp, #40	; 0x28
8780725c:	af00      	add	r7, sp, #0
8780725e:	4603      	mov	r3, r0
87807260:	460a      	mov	r2, r1
87807262:	71fb      	strb	r3, [r7, #7]
87807264:	4613      	mov	r3, r2
87807266:	71bb      	strb	r3, [r7, #6]
87807268:	2300      	movs	r3, #0
8780726a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
8780726e:	79fb      	ldrb	r3, [r7, #7]
87807270:	733b      	strb	r3, [r7, #12]
87807272:	2301      	movs	r3, #1
87807274:	613b      	str	r3, [r7, #16]
87807276:	79bb      	ldrb	r3, [r7, #6]
87807278:	617b      	str	r3, [r7, #20]
8780727a:	2301      	movs	r3, #1
8780727c:	763b      	strb	r3, [r7, #24]
8780727e:	f107 0327 	add.w	r3, r7, #39	; 0x27
87807282:	61fb      	str	r3, [r7, #28]
87807284:	2301      	movs	r3, #1
87807286:	623b      	str	r3, [r7, #32]
87807288:	f107 030c 	add.w	r3, r7, #12
8780728c:	4619      	mov	r1, r3
8780728e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87807292:	f2c0 201a 	movt	r0, #538	; 0x21a
87807296:	f7fe fd43 	bl	87805d20 <i2c_master_transfer>
8780729a:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
8780729e:	4618      	mov	r0, r3
878072a0:	3728      	adds	r7, #40	; 0x28
878072a2:	46bd      	mov	sp, r7
878072a4:	bd80      	pop	{r7, pc}
878072a6:	bf00      	nop

878072a8 <ft5426_read_len>:
878072a8:	b580      	push	{r7, lr}
878072aa:	b088      	sub	sp, #32
878072ac:	af00      	add	r7, sp, #0
878072ae:	603b      	str	r3, [r7, #0]
878072b0:	4603      	mov	r3, r0
878072b2:	71fb      	strb	r3, [r7, #7]
878072b4:	460b      	mov	r3, r1
878072b6:	71bb      	strb	r3, [r7, #6]
878072b8:	4613      	mov	r3, r2
878072ba:	717b      	strb	r3, [r7, #5]
878072bc:	79fb      	ldrb	r3, [r7, #7]
878072be:	723b      	strb	r3, [r7, #8]
878072c0:	2301      	movs	r3, #1
878072c2:	60fb      	str	r3, [r7, #12]
878072c4:	79bb      	ldrb	r3, [r7, #6]
878072c6:	613b      	str	r3, [r7, #16]
878072c8:	2301      	movs	r3, #1
878072ca:	753b      	strb	r3, [r7, #20]
878072cc:	683b      	ldr	r3, [r7, #0]
878072ce:	61bb      	str	r3, [r7, #24]
878072d0:	797b      	ldrb	r3, [r7, #5]
878072d2:	61fb      	str	r3, [r7, #28]
878072d4:	f107 0308 	add.w	r3, r7, #8
878072d8:	4619      	mov	r1, r3
878072da:	f44f 4080 	mov.w	r0, #16384	; 0x4000
878072de:	f2c0 201a 	movt	r0, #538	; 0x21a
878072e2:	f7fe fd1d 	bl	87805d20 <i2c_master_transfer>
878072e6:	3720      	adds	r7, #32
878072e8:	46bd      	mov	sp, r7
878072ea:	bd80      	pop	{r7, pc}

878072ec <ft5426_read_tpnum>:
878072ec:	b580      	push	{r7, lr}
878072ee:	af00      	add	r7, sp, #0
878072f0:	2102      	movs	r1, #2
878072f2:	2038      	movs	r0, #56	; 0x38
878072f4:	f7ff ffb0 	bl	87807258 <ft5426_read_byte>
878072f8:	4603      	mov	r3, r0
878072fa:	461a      	mov	r2, r3
878072fc:	f24d 337c 	movw	r3, #54140	; 0xd37c
87807300:	f2c8 7380 	movt	r3, #34688	; 0x8780
87807304:	709a      	strb	r2, [r3, #2]
87807306:	bd80      	pop	{r7, pc}

87807308 <ft5426_read_tpcoord>:
87807308:	b580      	push	{r7, lr}
8780730a:	b08a      	sub	sp, #40	; 0x28
8780730c:	af00      	add	r7, sp, #0
8780730e:	2300      	movs	r3, #0
87807310:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87807314:	2300      	movs	r3, #0
87807316:	f887 3026 	strb.w	r3, [r7, #38]	; 0x26
8780731a:	2102      	movs	r1, #2
8780731c:	2038      	movs	r0, #56	; 0x38
8780731e:	f7ff ff9b 	bl	87807258 <ft5426_read_byte>
87807322:	4603      	mov	r3, r0
87807324:	461a      	mov	r2, r3
87807326:	f24d 337c 	movw	r3, #54140	; 0xd37c
8780732a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780732e:	709a      	strb	r2, [r3, #2]
87807330:	463b      	mov	r3, r7
87807332:	221e      	movs	r2, #30
87807334:	2103      	movs	r1, #3
87807336:	2038      	movs	r0, #56	; 0x38
87807338:	f7ff ffb6 	bl	878072a8 <ft5426_read_len>
8780733c:	2300      	movs	r3, #0
8780733e:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87807342:	e043      	b.n	878073cc <ft5426_read_tpcoord+0xc4>
87807344:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
87807348:	005b      	lsls	r3, r3, #1
8780734a:	009a      	lsls	r2, r3, #2
8780734c:	1ad3      	subs	r3, r2, r3
8780734e:	463a      	mov	r2, r7
87807350:	4413      	add	r3, r2
87807352:	623b      	str	r3, [r7, #32]
87807354:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
87807358:	6a3a      	ldr	r2, [r7, #32]
8780735a:	3202      	adds	r2, #2
8780735c:	7812      	ldrb	r2, [r2, #0]
8780735e:	0212      	lsls	r2, r2, #8
87807360:	b291      	uxth	r1, r2
87807362:	6a3a      	ldr	r2, [r7, #32]
87807364:	3203      	adds	r2, #3
87807366:	7812      	ldrb	r2, [r2, #0]
87807368:	b292      	uxth	r2, r2
8780736a:	430a      	orrs	r2, r1
8780736c:	b292      	uxth	r2, r2
8780736e:	b292      	uxth	r2, r2
87807370:	f3c2 020b 	ubfx	r2, r2, #0, #12
87807374:	b291      	uxth	r1, r2
87807376:	f24d 327c 	movw	r2, #54140	; 0xd37c
8780737a:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780737e:	005b      	lsls	r3, r3, #1
87807380:	4413      	add	r3, r2
87807382:	460a      	mov	r2, r1
87807384:	809a      	strh	r2, [r3, #4]
87807386:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
8780738a:	6a3a      	ldr	r2, [r7, #32]
8780738c:	7812      	ldrb	r2, [r2, #0]
8780738e:	0212      	lsls	r2, r2, #8
87807390:	b291      	uxth	r1, r2
87807392:	6a3a      	ldr	r2, [r7, #32]
87807394:	3201      	adds	r2, #1
87807396:	7812      	ldrb	r2, [r2, #0]
87807398:	b292      	uxth	r2, r2
8780739a:	430a      	orrs	r2, r1
8780739c:	b292      	uxth	r2, r2
8780739e:	b292      	uxth	r2, r2
878073a0:	f3c2 020b 	ubfx	r2, r2, #0, #12
878073a4:	b291      	uxth	r1, r2
878073a6:	f24d 327c 	movw	r2, #54140	; 0xd37c
878073aa:	f2c8 7280 	movt	r2, #34688	; 0x8780
878073ae:	3304      	adds	r3, #4
878073b0:	005b      	lsls	r3, r3, #1
878073b2:	4413      	add	r3, r2
878073b4:	460a      	mov	r2, r1
878073b6:	80da      	strh	r2, [r3, #6]
878073b8:	6a3b      	ldr	r3, [r7, #32]
878073ba:	781b      	ldrb	r3, [r3, #0]
878073bc:	099b      	lsrs	r3, r3, #6
878073be:	f887 3026 	strb.w	r3, [r7, #38]	; 0x26
878073c2:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
878073c6:	3301      	adds	r3, #1
878073c8:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
878073cc:	f24d 337c 	movw	r3, #54140	; 0xd37c
878073d0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878073d4:	789b      	ldrb	r3, [r3, #2]
878073d6:	f897 2027 	ldrb.w	r2, [r7, #39]	; 0x27
878073da:	429a      	cmp	r2, r3
878073dc:	d3b2      	bcc.n	87807344 <ft5426_read_tpcoord+0x3c>
878073de:	3728      	adds	r7, #40	; 0x28
878073e0:	46bd      	mov	sp, r7
878073e2:	bd80      	pop	{r7, pc}
878073e4:	0000      	movs	r0, r0
	...

878073e8 <__aeabi_uidiv>:
878073e8:	1e4a      	subs	r2, r1, #1
878073ea:	bf08      	it	eq
878073ec:	4770      	bxeq	lr
878073ee:	f0c0 8124 	bcc.w	8780763a <__aeabi_uidiv+0x252>
878073f2:	4288      	cmp	r0, r1
878073f4:	f240 8116 	bls.w	87807624 <__aeabi_uidiv+0x23c>
878073f8:	4211      	tst	r1, r2
878073fa:	f000 8117 	beq.w	8780762c <__aeabi_uidiv+0x244>
878073fe:	fab0 f380 	clz	r3, r0
87807402:	fab1 f281 	clz	r2, r1
87807406:	eba2 0303 	sub.w	r3, r2, r3
8780740a:	f1c3 031f 	rsb	r3, r3, #31
8780740e:	a204      	add	r2, pc, #16	; (adr r2, 87807420 <__aeabi_uidiv+0x38>)
87807410:	eb02 1303 	add.w	r3, r2, r3, lsl #4
87807414:	f04f 0200 	mov.w	r2, #0
87807418:	469f      	mov	pc, r3
8780741a:	bf00      	nop
8780741c:	f3af 8000 	nop.w
87807420:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
87807424:	bf00      	nop
87807426:	eb42 0202 	adc.w	r2, r2, r2
8780742a:	bf28      	it	cs
8780742c:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
87807430:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
87807434:	bf00      	nop
87807436:	eb42 0202 	adc.w	r2, r2, r2
8780743a:	bf28      	it	cs
8780743c:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
87807440:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
87807444:	bf00      	nop
87807446:	eb42 0202 	adc.w	r2, r2, r2
8780744a:	bf28      	it	cs
8780744c:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
87807450:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
87807454:	bf00      	nop
87807456:	eb42 0202 	adc.w	r2, r2, r2
8780745a:	bf28      	it	cs
8780745c:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
87807460:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
87807464:	bf00      	nop
87807466:	eb42 0202 	adc.w	r2, r2, r2
8780746a:	bf28      	it	cs
8780746c:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
87807470:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
87807474:	bf00      	nop
87807476:	eb42 0202 	adc.w	r2, r2, r2
8780747a:	bf28      	it	cs
8780747c:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
87807480:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
87807484:	bf00      	nop
87807486:	eb42 0202 	adc.w	r2, r2, r2
8780748a:	bf28      	it	cs
8780748c:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
87807490:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
87807494:	bf00      	nop
87807496:	eb42 0202 	adc.w	r2, r2, r2
8780749a:	bf28      	it	cs
8780749c:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
878074a0:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
878074a4:	bf00      	nop
878074a6:	eb42 0202 	adc.w	r2, r2, r2
878074aa:	bf28      	it	cs
878074ac:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
878074b0:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
878074b4:	bf00      	nop
878074b6:	eb42 0202 	adc.w	r2, r2, r2
878074ba:	bf28      	it	cs
878074bc:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
878074c0:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
878074c4:	bf00      	nop
878074c6:	eb42 0202 	adc.w	r2, r2, r2
878074ca:	bf28      	it	cs
878074cc:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
878074d0:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
878074d4:	bf00      	nop
878074d6:	eb42 0202 	adc.w	r2, r2, r2
878074da:	bf28      	it	cs
878074dc:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
878074e0:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
878074e4:	bf00      	nop
878074e6:	eb42 0202 	adc.w	r2, r2, r2
878074ea:	bf28      	it	cs
878074ec:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
878074f0:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
878074f4:	bf00      	nop
878074f6:	eb42 0202 	adc.w	r2, r2, r2
878074fa:	bf28      	it	cs
878074fc:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
87807500:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
87807504:	bf00      	nop
87807506:	eb42 0202 	adc.w	r2, r2, r2
8780750a:	bf28      	it	cs
8780750c:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
87807510:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
87807514:	bf00      	nop
87807516:	eb42 0202 	adc.w	r2, r2, r2
8780751a:	bf28      	it	cs
8780751c:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
87807520:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
87807524:	bf00      	nop
87807526:	eb42 0202 	adc.w	r2, r2, r2
8780752a:	bf28      	it	cs
8780752c:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
87807530:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
87807534:	bf00      	nop
87807536:	eb42 0202 	adc.w	r2, r2, r2
8780753a:	bf28      	it	cs
8780753c:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
87807540:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
87807544:	bf00      	nop
87807546:	eb42 0202 	adc.w	r2, r2, r2
8780754a:	bf28      	it	cs
8780754c:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
87807550:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
87807554:	bf00      	nop
87807556:	eb42 0202 	adc.w	r2, r2, r2
8780755a:	bf28      	it	cs
8780755c:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
87807560:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
87807564:	bf00      	nop
87807566:	eb42 0202 	adc.w	r2, r2, r2
8780756a:	bf28      	it	cs
8780756c:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
87807570:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
87807574:	bf00      	nop
87807576:	eb42 0202 	adc.w	r2, r2, r2
8780757a:	bf28      	it	cs
8780757c:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
87807580:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
87807584:	bf00      	nop
87807586:	eb42 0202 	adc.w	r2, r2, r2
8780758a:	bf28      	it	cs
8780758c:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
87807590:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
87807594:	bf00      	nop
87807596:	eb42 0202 	adc.w	r2, r2, r2
8780759a:	bf28      	it	cs
8780759c:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
878075a0:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
878075a4:	bf00      	nop
878075a6:	eb42 0202 	adc.w	r2, r2, r2
878075aa:	bf28      	it	cs
878075ac:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
878075b0:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
878075b4:	bf00      	nop
878075b6:	eb42 0202 	adc.w	r2, r2, r2
878075ba:	bf28      	it	cs
878075bc:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
878075c0:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
878075c4:	bf00      	nop
878075c6:	eb42 0202 	adc.w	r2, r2, r2
878075ca:	bf28      	it	cs
878075cc:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
878075d0:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
878075d4:	bf00      	nop
878075d6:	eb42 0202 	adc.w	r2, r2, r2
878075da:	bf28      	it	cs
878075dc:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
878075e0:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
878075e4:	bf00      	nop
878075e6:	eb42 0202 	adc.w	r2, r2, r2
878075ea:	bf28      	it	cs
878075ec:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
878075f0:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
878075f4:	bf00      	nop
878075f6:	eb42 0202 	adc.w	r2, r2, r2
878075fa:	bf28      	it	cs
878075fc:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
87807600:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
87807604:	bf00      	nop
87807606:	eb42 0202 	adc.w	r2, r2, r2
8780760a:	bf28      	it	cs
8780760c:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
87807610:	ebb0 0f01 	cmp.w	r0, r1
87807614:	bf00      	nop
87807616:	eb42 0202 	adc.w	r2, r2, r2
8780761a:	bf28      	it	cs
8780761c:	eba0 0001 	subcs.w	r0, r0, r1
87807620:	4610      	mov	r0, r2
87807622:	4770      	bx	lr
87807624:	bf0c      	ite	eq
87807626:	2001      	moveq	r0, #1
87807628:	2000      	movne	r0, #0
8780762a:	4770      	bx	lr
8780762c:	fab1 f281 	clz	r2, r1
87807630:	f1c2 021f 	rsb	r2, r2, #31
87807634:	fa20 f002 	lsr.w	r0, r0, r2
87807638:	4770      	bx	lr
8780763a:	b108      	cbz	r0, 87807640 <__aeabi_uidiv+0x258>
8780763c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
87807640:	f000 b826 	b.w	87807690 <__aeabi_idiv0>

87807644 <__aeabi_uidivmod>:
87807644:	2900      	cmp	r1, #0
87807646:	d0f8      	beq.n	8780763a <__aeabi_uidiv+0x252>
87807648:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
8780764c:	f7ff fecc 	bl	878073e8 <__aeabi_uidiv>
87807650:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87807654:	fb02 f300 	mul.w	r3, r2, r0
87807658:	eba1 0103 	sub.w	r1, r1, r3
8780765c:	4770      	bx	lr
8780765e:	bf00      	nop

87807660 <__aeabi_uldivmod>:
87807660:	b953      	cbnz	r3, 87807678 <__aeabi_uldivmod+0x18>
87807662:	b94a      	cbnz	r2, 87807678 <__aeabi_uldivmod+0x18>
87807664:	2900      	cmp	r1, #0
87807666:	bf08      	it	eq
87807668:	2800      	cmpeq	r0, #0
8780766a:	bf1c      	itt	ne
8780766c:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
87807670:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
87807674:	f000 b80c 	b.w	87807690 <__aeabi_idiv0>
87807678:	f1ad 0c08 	sub.w	ip, sp, #8
8780767c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
87807680:	f000 f80c 	bl	8780769c <__udivmoddi4>
87807684:	f8dd e004 	ldr.w	lr, [sp, #4]
87807688:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
8780768c:	b004      	add	sp, #16
8780768e:	4770      	bx	lr

87807690 <__aeabi_idiv0>:
87807690:	b502      	push	{r1, lr}
87807692:	f04f 0008 	mov.w	r0, #8
87807696:	f7fa f825 	bl	878016e4 <raise>
8780769a:	bd02      	pop	{r1, pc}

8780769c <__udivmoddi4>:
8780769c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
878076a0:	460d      	mov	r5, r1
878076a2:	429d      	cmp	r5, r3
878076a4:	4604      	mov	r4, r0
878076a6:	4610      	mov	r0, r2
878076a8:	4619      	mov	r1, r3
878076aa:	bf08      	it	eq
878076ac:	4284      	cmpeq	r4, r0
878076ae:	9a07      	ldr	r2, [sp, #28]
878076b0:	bf3c      	itt	cc
878076b2:	2000      	movcc	r0, #0
878076b4:	2100      	movcc	r1, #0
878076b6:	d36a      	bcc.n	8780778e <__udivmoddi4+0xf2>
878076b8:	fab1 f681 	clz	r6, r1
878076bc:	2900      	cmp	r1, #0
878076be:	d06f      	beq.n	878077a0 <__udivmoddi4+0x104>
878076c0:	fab5 f385 	clz	r3, r5
878076c4:	2d00      	cmp	r5, #0
878076c6:	d067      	beq.n	87807798 <__udivmoddi4+0xfc>
878076c8:	1af3      	subs	r3, r6, r3
878076ca:	f1a3 0c20 	sub.w	ip, r3, #32
878076ce:	fa01 f703 	lsl.w	r7, r1, r3
878076d2:	fa00 fe0c 	lsl.w	lr, r0, ip
878076d6:	f1c3 0820 	rsb	r8, r3, #32
878076da:	fa20 f108 	lsr.w	r1, r0, r8
878076de:	fa00 f603 	lsl.w	r6, r0, r3
878076e2:	ea47 070e 	orr.w	r7, r7, lr
878076e6:	469e      	mov	lr, r3
878076e8:	430f      	orrs	r7, r1
878076ea:	42bd      	cmp	r5, r7
878076ec:	bf08      	it	eq
878076ee:	42b4      	cmpeq	r4, r6
878076f0:	bf3c      	itt	cc
878076f2:	2000      	movcc	r0, #0
878076f4:	2100      	movcc	r1, #0
878076f6:	d30c      	bcc.n	87807712 <__udivmoddi4+0x76>
878076f8:	f04f 0901 	mov.w	r9, #1
878076fc:	1ba4      	subs	r4, r4, r6
878076fe:	fa29 f808 	lsr.w	r8, r9, r8
87807702:	fa09 f10c 	lsl.w	r1, r9, ip
87807706:	fa09 f003 	lsl.w	r0, r9, r3
8780770a:	ea41 0108 	orr.w	r1, r1, r8
8780770e:	eb65 0507 	sbc.w	r5, r5, r7
87807712:	2b00      	cmp	r3, #0
87807714:	d03b      	beq.n	8780778e <__udivmoddi4+0xf2>
87807716:	087f      	lsrs	r7, r7, #1
87807718:	ea4f 0636 	mov.w	r6, r6, rrx
8780771c:	e009      	b.n	87807732 <__udivmoddi4+0x96>
8780771e:	1ba4      	subs	r4, r4, r6
87807720:	eb65 0507 	sbc.w	r5, r5, r7
87807724:	1924      	adds	r4, r4, r4
87807726:	416d      	adcs	r5, r5
87807728:	3401      	adds	r4, #1
8780772a:	f145 0500 	adc.w	r5, r5, #0
8780772e:	3b01      	subs	r3, #1
87807730:	d007      	beq.n	87807742 <__udivmoddi4+0xa6>
87807732:	42bd      	cmp	r5, r7
87807734:	bf08      	it	eq
87807736:	42b4      	cmpeq	r4, r6
87807738:	d2f1      	bcs.n	8780771e <__udivmoddi4+0x82>
8780773a:	1924      	adds	r4, r4, r4
8780773c:	416d      	adcs	r5, r5
8780773e:	3b01      	subs	r3, #1
87807740:	d1f7      	bne.n	87807732 <__udivmoddi4+0x96>
87807742:	f1ce 0720 	rsb	r7, lr, #32
87807746:	fa24 f60e 	lsr.w	r6, r4, lr
8780774a:	fa05 f707 	lsl.w	r7, r5, r7
8780774e:	f1ae 0320 	sub.w	r3, lr, #32
87807752:	fa25 f303 	lsr.w	r3, r5, r3
87807756:	fa25 fc0e 	lsr.w	ip, r5, lr
8780775a:	1900      	adds	r0, r0, r4
8780775c:	ea46 0607 	orr.w	r6, r6, r7
87807760:	ea46 0403 	orr.w	r4, r6, r3
87807764:	4169      	adcs	r1, r5
87807766:	4665      	mov	r5, ip
87807768:	f1ae 0c20 	sub.w	ip, lr, #32
8780776c:	fa05 f70e 	lsl.w	r7, r5, lr
87807770:	fa04 fc0c 	lsl.w	ip, r4, ip
87807774:	fa04 f60e 	lsl.w	r6, r4, lr
87807778:	f1ce 0320 	rsb	r3, lr, #32
8780777c:	fa24 f303 	lsr.w	r3, r4, r3
87807780:	ea47 070c 	orr.w	r7, r7, ip
87807784:	1b80      	subs	r0, r0, r6
87807786:	ea47 0703 	orr.w	r7, r7, r3
8780778a:	eb61 0107 	sbc.w	r1, r1, r7
8780778e:	b10a      	cbz	r2, 87807794 <__udivmoddi4+0xf8>
87807790:	e9c2 4500 	strd	r4, r5, [r2]
87807794:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
87807798:	fab4 f384 	clz	r3, r4
8780779c:	3320      	adds	r3, #32
8780779e:	e793      	b.n	878076c8 <__udivmoddi4+0x2c>
878077a0:	fab0 f380 	clz	r3, r0
878077a4:	f103 0620 	add.w	r6, r3, #32
878077a8:	fab5 f385 	clz	r3, r5
878077ac:	2d00      	cmp	r5, #0
878077ae:	d18b      	bne.n	878076c8 <__udivmoddi4+0x2c>
878077b0:	e7f2      	b.n	87807798 <__udivmoddi4+0xfc>
878077b2:	bf00      	nop
878077b4:	0000      	movs	r0, r0
	...

878077b8 <__main_from_arm>:
878077b8:	e51ff004 	ldr	pc, [pc, #-4]	; 878077bc <__main_from_arm+0x4>
878077bc:	878077c1 	strhi	r7, [r0, r1, asr #15]

Disassembly of section .text.startup:

878077c0 <main>:
878077c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
878077c4:	b085      	sub	sp, #20
878077c6:	ee11 3f50 	mrc	15, 0, r3, cr1, cr0, {2}
878077ca:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
878077ce:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
878077d2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
878077d6:	ee01 3f50 	mcr	15, 0, r3, cr1, cr0, {2}
878077da:	eef8 3a10 	vmrs	r3, fpexc
878077de:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
878077e2:	eee8 3a10 	vmsr	fpexc, r3
878077e6:	f24d 3908 	movw	r9, #54024	; 0xd308
878077ea:	f2c8 7980 	movt	r9, #34688	; 0x8780
878077ee:	f7f9 f98b 	bl	87800b08 <int_init>
878077f2:	f7f8 fcfb 	bl	878001ec <imx6u_clkinit>
878077f6:	f7f8 fe7d 	bl	878004f4 <delay_init>
878077fa:	f7f8 fcbf 	bl	8780017c <clk_enable>
878077fe:	f7f8 fe0f 	bl	87800420 <led_init>
87807802:	f7f8 ff55 	bl	878006b0 <beep_init>
87807806:	f7f9 fcef 	bl	878011e8 <uart_init>
8780780a:	f7fc fa39 	bl	87803c80 <lcd_init>
8780780e:	f8d9 1020 	ldr.w	r1, [r9, #32]
87807812:	f247 0284 	movw	r2, #28804	; 0x7084
87807816:	f247 0316 	movw	r3, #28694	; 0x7016
8780781a:	4299      	cmp	r1, r3
8780781c:	bf18      	it	ne
8780781e:	4291      	cmpne	r1, r2
87807820:	f000 81ac 	beq.w	87807b7c <main+0x3bc>
87807824:	f244 3242 	movw	r2, #17218	; 0x4342
87807828:	f244 3384 	movw	r3, #17284	; 0x4384
8780782c:	4299      	cmp	r1, r3
8780782e:	bf18      	it	ne
87807830:	4291      	cmpne	r1, r2
87807832:	f241 0318 	movw	r3, #4120	; 0x1018
87807836:	bf0c      	ite	eq
87807838:	2201      	moveq	r2, #1
8780783a:	2200      	movne	r2, #0
8780783c:	4299      	cmp	r1, r3
8780783e:	bf14      	ite	ne
87807840:	4613      	movne	r3, r2
87807842:	f042 0301 	orreq.w	r3, r2, #1
87807846:	b10b      	cbz	r3, 8780784c <main+0x8c>
87807848:	f7ff f882 	bl	87806950 <gt9147_init>
8780784c:	f647 3284 	movw	r2, #31620	; 0x7b84
87807850:	2318      	movs	r3, #24
87807852:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807856:	9300      	str	r3, [sp, #0]
87807858:	9201      	str	r2, [sp, #4]
8780785a:	f44f 047f 	mov.w	r4, #16711680	; 0xff0000
8780785e:	f44f 72c8 	mov.w	r2, #400	; 0x190
87807862:	210a      	movs	r1, #10
87807864:	2032      	movs	r0, #50	; 0x32
87807866:	f8c9 4018 	str.w	r4, [r9, #24]
8780786a:	f7fd fe6b 	bl	87805544 <lcd_show_string>
8780786e:	f647 3290 	movw	r2, #31632	; 0x7b90
87807872:	2410      	movs	r4, #16
87807874:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807878:	4623      	mov	r3, r4
8780787a:	9400      	str	r4, [sp, #0]
8780787c:	2128      	movs	r1, #40	; 0x28
8780787e:	9201      	str	r2, [sp, #4]
87807880:	2032      	movs	r0, #50	; 0x32
87807882:	22c8      	movs	r2, #200	; 0xc8
87807884:	f24d 377c 	movw	r7, #54140	; 0xd37c
87807888:	f7fd fe5c 	bl	87805544 <lcd_show_string>
8780788c:	f647 32a4 	movw	r2, #31652	; 0x7ba4
87807890:	4623      	mov	r3, r4
87807892:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807896:	9400      	str	r4, [sp, #0]
87807898:	9201      	str	r2, [sp, #4]
8780789a:	213c      	movs	r1, #60	; 0x3c
8780789c:	22c8      	movs	r2, #200	; 0xc8
8780789e:	2032      	movs	r0, #50	; 0x32
878078a0:	f7fd fe50 	bl	87805544 <lcd_show_string>
878078a4:	f647 32b4 	movw	r2, #31668	; 0x7bb4
878078a8:	4623      	mov	r3, r4
878078aa:	f2c8 7280 	movt	r2, #34688	; 0x8780
878078ae:	9400      	str	r4, [sp, #0]
878078b0:	9201      	str	r2, [sp, #4]
878078b2:	2150      	movs	r1, #80	; 0x50
878078b4:	22c8      	movs	r2, #200	; 0xc8
878078b6:	2032      	movs	r0, #50	; 0x32
878078b8:	f7fd fe44 	bl	87805544 <lcd_show_string>
878078bc:	f647 32c0 	movw	r2, #31680	; 0x7bc0
878078c0:	4623      	mov	r3, r4
878078c2:	f2c8 7280 	movt	r2, #34688	; 0x8780
878078c6:	9400      	str	r4, [sp, #0]
878078c8:	9201      	str	r2, [sp, #4]
878078ca:	216e      	movs	r1, #110	; 0x6e
878078cc:	f44f 72c8 	mov.w	r2, #400	; 0x190
878078d0:	2032      	movs	r0, #50	; 0x32
878078d2:	f7fd fe37 	bl	87805544 <lcd_show_string>
878078d6:	f647 32cc 	movw	r2, #31692	; 0x7bcc
878078da:	4623      	mov	r3, r4
878078dc:	f2c8 7280 	movt	r2, #34688	; 0x8780
878078e0:	9400      	str	r4, [sp, #0]
878078e2:	9201      	str	r2, [sp, #4]
878078e4:	2182      	movs	r1, #130	; 0x82
878078e6:	22c8      	movs	r2, #200	; 0xc8
878078e8:	2032      	movs	r0, #50	; 0x32
878078ea:	f7fd fe2b 	bl	87805544 <lcd_show_string>
878078ee:	f647 32d8 	movw	r2, #31704	; 0x7bd8
878078f2:	4623      	mov	r3, r4
878078f4:	f2c8 7280 	movt	r2, #34688	; 0x8780
878078f8:	9400      	str	r4, [sp, #0]
878078fa:	9201      	str	r2, [sp, #4]
878078fc:	2196      	movs	r1, #150	; 0x96
878078fe:	22c8      	movs	r2, #200	; 0xc8
87807900:	2032      	movs	r0, #50	; 0x32
87807902:	f7fd fe1f 	bl	87805544 <lcd_show_string>
87807906:	f647 32e4 	movw	r2, #31716	; 0x7be4
8780790a:	4623      	mov	r3, r4
8780790c:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807910:	9400      	str	r4, [sp, #0]
87807912:	9201      	str	r2, [sp, #4]
87807914:	21aa      	movs	r1, #170	; 0xaa
87807916:	22c8      	movs	r2, #200	; 0xc8
87807918:	2032      	movs	r0, #50	; 0x32
8780791a:	f7fd fe13 	bl	87805544 <lcd_show_string>
8780791e:	f647 32f0 	movw	r2, #31728	; 0x7bf0
87807922:	4623      	mov	r3, r4
87807924:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807928:	9400      	str	r4, [sp, #0]
8780792a:	9201      	str	r2, [sp, #4]
8780792c:	21be      	movs	r1, #190	; 0xbe
8780792e:	22c8      	movs	r2, #200	; 0xc8
87807930:	2032      	movs	r0, #50	; 0x32
87807932:	f7fd fe07 	bl	87805544 <lcd_show_string>
87807936:	f647 32fc 	movw	r2, #31740	; 0x7bfc
8780793a:	4623      	mov	r3, r4
8780793c:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807940:	9400      	str	r4, [sp, #0]
87807942:	9201      	str	r2, [sp, #4]
87807944:	21d2      	movs	r1, #210	; 0xd2
87807946:	22c8      	movs	r2, #200	; 0xc8
87807948:	2032      	movs	r0, #50	; 0x32
8780794a:	f7fd fdfb 	bl	87805544 <lcd_show_string>
8780794e:	f647 4208 	movw	r2, #31752	; 0x7c08
87807952:	4623      	mov	r3, r4
87807954:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807958:	9400      	str	r4, [sp, #0]
8780795a:	9201      	str	r2, [sp, #4]
8780795c:	21e6      	movs	r1, #230	; 0xe6
8780795e:	22c8      	movs	r2, #200	; 0xc8
87807960:	2032      	movs	r0, #50	; 0x32
87807962:	f7fd fdef 	bl	87805544 <lcd_show_string>
87807966:	f647 4214 	movw	r2, #31764	; 0x7c14
8780796a:	4623      	mov	r3, r4
8780796c:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807970:	9400      	str	r4, [sp, #0]
87807972:	9201      	str	r2, [sp, #4]
87807974:	21fa      	movs	r1, #250	; 0xfa
87807976:	22c8      	movs	r2, #200	; 0xc8
87807978:	2032      	movs	r0, #50	; 0x32
8780797a:	f7fd fde3 	bl	87805544 <lcd_show_string>
8780797e:	f647 4220 	movw	r2, #31776	; 0x7c20
87807982:	4623      	mov	r3, r4
87807984:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807988:	9400      	str	r4, [sp, #0]
8780798a:	9201      	str	r2, [sp, #4]
8780798c:	f44f 7187 	mov.w	r1, #270	; 0x10e
87807990:	22c8      	movs	r2, #200	; 0xc8
87807992:	2032      	movs	r0, #50	; 0x32
87807994:	f7fd fdd6 	bl	87805544 <lcd_show_string>
87807998:	f647 422c 	movw	r2, #31788	; 0x7c2c
8780799c:	4623      	mov	r3, r4
8780799e:	f2c8 7280 	movt	r2, #34688	; 0x8780
878079a2:	9400      	str	r4, [sp, #0]
878079a4:	9201      	str	r2, [sp, #4]
878079a6:	f44f 7191 	mov.w	r1, #290	; 0x122
878079aa:	22c8      	movs	r2, #200	; 0xc8
878079ac:	2032      	movs	r0, #50	; 0x32
878079ae:	f7fd fdc9 	bl	87805544 <lcd_show_string>
878079b2:	f647 4238 	movw	r2, #31800	; 0x7c38
878079b6:	f24d 3664 	movw	r6, #54116	; 0xd364
878079ba:	f2c8 7280 	movt	r2, #34688	; 0x8780
878079be:	4623      	mov	r3, r4
878079c0:	9400      	str	r4, [sp, #0]
878079c2:	f44f 719b 	mov.w	r1, #310	; 0x136
878079c6:	9201      	str	r2, [sp, #4]
878079c8:	2032      	movs	r0, #50	; 0x32
878079ca:	22c8      	movs	r2, #200	; 0xc8
878079cc:	2400      	movs	r4, #0
878079ce:	f2c8 7780 	movt	r7, #34688	; 0x8780
878079d2:	f2c8 7680 	movt	r6, #34688	; 0x8780
878079d6:	f247 0a84 	movw	sl, #28804	; 0x7084
878079da:	9403      	str	r4, [sp, #12]
878079dc:	f7fd fdb2 	bl	87805544 <lcd_show_string>
878079e0:	23ff      	movs	r3, #255	; 0xff
878079e2:	f8c9 3018 	str.w	r3, [r9, #24]
878079e6:	2432      	movs	r4, #50	; 0x32
878079e8:	f247 0816 	movw	r8, #28694	; 0x7016
878079ec:	f244 3b42 	movw	fp, #17218	; 0x4342
878079f0:	e018      	b.n	87807a24 <main+0x264>
878079f2:	f244 3284 	movw	r2, #17284	; 0x4384
878079f6:	f241 0118 	movw	r1, #4120	; 0x1018
878079fa:	4293      	cmp	r3, r2
878079fc:	bf18      	it	ne
878079fe:	455b      	cmpne	r3, fp
87807a00:	bf0c      	ite	eq
87807a02:	2201      	moveq	r2, #1
87807a04:	2200      	movne	r2, #0
87807a06:	428b      	cmp	r3, r1
87807a08:	bf14      	ite	ne
87807a0a:	4613      	movne	r3, r2
87807a0c:	f042 0301 	orreq.w	r3, r2, #1
87807a10:	2b00      	cmp	r3, #0
87807a12:	d15f      	bne.n	87807ad4 <main+0x314>
87807a14:	200a      	movs	r0, #10
87807a16:	3c01      	subs	r4, #1
87807a18:	f7f8 fde0 	bl	878005dc <delayms>
87807a1c:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
87807a20:	f000 80a3 	beq.w	87807b6a <main+0x3aa>
87807a24:	f8d9 3020 	ldr.w	r3, [r9, #32]
87807a28:	4543      	cmp	r3, r8
87807a2a:	bf18      	it	ne
87807a2c:	4553      	cmpne	r3, sl
87807a2e:	d1e0      	bne.n	878079f2 <main+0x232>
87807a30:	2510      	movs	r5, #16
87807a32:	78ba      	ldrb	r2, [r7, #2]
87807a34:	2301      	movs	r3, #1
87807a36:	216e      	movs	r1, #110	; 0x6e
87807a38:	207a      	movs	r0, #122	; 0x7a
87807a3a:	9500      	str	r5, [sp, #0]
87807a3c:	f7fd fc72 	bl	87805324 <lcd_shownum>
87807a40:	88ba      	ldrh	r2, [r7, #4]
87807a42:	2305      	movs	r3, #5
87807a44:	2182      	movs	r1, #130	; 0x82
87807a46:	207a      	movs	r0, #122	; 0x7a
87807a48:	9500      	str	r5, [sp, #0]
87807a4a:	f7fd fc6b 	bl	87805324 <lcd_shownum>
87807a4e:	89fa      	ldrh	r2, [r7, #14]
87807a50:	2305      	movs	r3, #5
87807a52:	2196      	movs	r1, #150	; 0x96
87807a54:	207a      	movs	r0, #122	; 0x7a
87807a56:	9500      	str	r5, [sp, #0]
87807a58:	f7fd fc64 	bl	87805324 <lcd_shownum>
87807a5c:	88fa      	ldrh	r2, [r7, #6]
87807a5e:	2305      	movs	r3, #5
87807a60:	21aa      	movs	r1, #170	; 0xaa
87807a62:	207a      	movs	r0, #122	; 0x7a
87807a64:	9500      	str	r5, [sp, #0]
87807a66:	f7fd fc5d 	bl	87805324 <lcd_shownum>
87807a6a:	8a3a      	ldrh	r2, [r7, #16]
87807a6c:	2305      	movs	r3, #5
87807a6e:	21be      	movs	r1, #190	; 0xbe
87807a70:	207a      	movs	r0, #122	; 0x7a
87807a72:	9500      	str	r5, [sp, #0]
87807a74:	f7fd fc56 	bl	87805324 <lcd_shownum>
87807a78:	893a      	ldrh	r2, [r7, #8]
87807a7a:	2305      	movs	r3, #5
87807a7c:	21d2      	movs	r1, #210	; 0xd2
87807a7e:	207a      	movs	r0, #122	; 0x7a
87807a80:	9500      	str	r5, [sp, #0]
87807a82:	f7fd fc4f 	bl	87805324 <lcd_shownum>
87807a86:	8a7a      	ldrh	r2, [r7, #18]
87807a88:	2305      	movs	r3, #5
87807a8a:	21e6      	movs	r1, #230	; 0xe6
87807a8c:	207a      	movs	r0, #122	; 0x7a
87807a8e:	9500      	str	r5, [sp, #0]
87807a90:	f7fd fc48 	bl	87805324 <lcd_shownum>
87807a94:	897a      	ldrh	r2, [r7, #10]
87807a96:	2305      	movs	r3, #5
87807a98:	21fa      	movs	r1, #250	; 0xfa
87807a9a:	207a      	movs	r0, #122	; 0x7a
87807a9c:	9500      	str	r5, [sp, #0]
87807a9e:	f7fd fc41 	bl	87805324 <lcd_shownum>
87807aa2:	8aba      	ldrh	r2, [r7, #20]
87807aa4:	2305      	movs	r3, #5
87807aa6:	f44f 7187 	mov.w	r1, #270	; 0x10e
87807aaa:	207a      	movs	r0, #122	; 0x7a
87807aac:	9500      	str	r5, [sp, #0]
87807aae:	f7fd fc39 	bl	87805324 <lcd_shownum>
87807ab2:	89ba      	ldrh	r2, [r7, #12]
87807ab4:	2305      	movs	r3, #5
87807ab6:	9500      	str	r5, [sp, #0]
87807ab8:	f44f 7191 	mov.w	r1, #290	; 0x122
87807abc:	207a      	movs	r0, #122	; 0x7a
87807abe:	f7fd fc31 	bl	87805324 <lcd_shownum>
87807ac2:	8afa      	ldrh	r2, [r7, #22]
87807ac4:	2305      	movs	r3, #5
87807ac6:	9500      	str	r5, [sp, #0]
87807ac8:	f44f 719b 	mov.w	r1, #310	; 0x136
87807acc:	207a      	movs	r0, #122	; 0x7a
87807ace:	f7fd fc29 	bl	87805324 <lcd_shownum>
87807ad2:	e79f      	b.n	87807a14 <main+0x254>
87807ad4:	2510      	movs	r5, #16
87807ad6:	78b2      	ldrb	r2, [r6, #2]
87807ad8:	2301      	movs	r3, #1
87807ada:	216e      	movs	r1, #110	; 0x6e
87807adc:	207a      	movs	r0, #122	; 0x7a
87807ade:	9500      	str	r5, [sp, #0]
87807ae0:	f7fd fc20 	bl	87805324 <lcd_shownum>
87807ae4:	88b2      	ldrh	r2, [r6, #4]
87807ae6:	2305      	movs	r3, #5
87807ae8:	2182      	movs	r1, #130	; 0x82
87807aea:	207a      	movs	r0, #122	; 0x7a
87807aec:	9500      	str	r5, [sp, #0]
87807aee:	f7fd fc19 	bl	87805324 <lcd_shownum>
87807af2:	89f2      	ldrh	r2, [r6, #14]
87807af4:	2305      	movs	r3, #5
87807af6:	2196      	movs	r1, #150	; 0x96
87807af8:	207a      	movs	r0, #122	; 0x7a
87807afa:	9500      	str	r5, [sp, #0]
87807afc:	f7fd fc12 	bl	87805324 <lcd_shownum>
87807b00:	88f2      	ldrh	r2, [r6, #6]
87807b02:	2305      	movs	r3, #5
87807b04:	21aa      	movs	r1, #170	; 0xaa
87807b06:	207a      	movs	r0, #122	; 0x7a
87807b08:	9500      	str	r5, [sp, #0]
87807b0a:	f7fd fc0b 	bl	87805324 <lcd_shownum>
87807b0e:	8a32      	ldrh	r2, [r6, #16]
87807b10:	2305      	movs	r3, #5
87807b12:	21be      	movs	r1, #190	; 0xbe
87807b14:	207a      	movs	r0, #122	; 0x7a
87807b16:	9500      	str	r5, [sp, #0]
87807b18:	f7fd fc04 	bl	87805324 <lcd_shownum>
87807b1c:	8932      	ldrh	r2, [r6, #8]
87807b1e:	2305      	movs	r3, #5
87807b20:	21d2      	movs	r1, #210	; 0xd2
87807b22:	207a      	movs	r0, #122	; 0x7a
87807b24:	9500      	str	r5, [sp, #0]
87807b26:	f7fd fbfd 	bl	87805324 <lcd_shownum>
87807b2a:	8a72      	ldrh	r2, [r6, #18]
87807b2c:	2305      	movs	r3, #5
87807b2e:	21e6      	movs	r1, #230	; 0xe6
87807b30:	207a      	movs	r0, #122	; 0x7a
87807b32:	9500      	str	r5, [sp, #0]
87807b34:	f7fd fbf6 	bl	87805324 <lcd_shownum>
87807b38:	8972      	ldrh	r2, [r6, #10]
87807b3a:	2305      	movs	r3, #5
87807b3c:	21fa      	movs	r1, #250	; 0xfa
87807b3e:	207a      	movs	r0, #122	; 0x7a
87807b40:	9500      	str	r5, [sp, #0]
87807b42:	f7fd fbef 	bl	87805324 <lcd_shownum>
87807b46:	8ab2      	ldrh	r2, [r6, #20]
87807b48:	2305      	movs	r3, #5
87807b4a:	f44f 7187 	mov.w	r1, #270	; 0x10e
87807b4e:	207a      	movs	r0, #122	; 0x7a
87807b50:	9500      	str	r5, [sp, #0]
87807b52:	f7fd fbe7 	bl	87805324 <lcd_shownum>
87807b56:	89b2      	ldrh	r2, [r6, #12]
87807b58:	2305      	movs	r3, #5
87807b5a:	9500      	str	r5, [sp, #0]
87807b5c:	f44f 7191 	mov.w	r1, #290	; 0x122
87807b60:	207a      	movs	r0, #122	; 0x7a
87807b62:	f7fd fbdf 	bl	87805324 <lcd_shownum>
87807b66:	8af2      	ldrh	r2, [r6, #22]
87807b68:	e7ac      	b.n	87807ac4 <main+0x304>
87807b6a:	9b03      	ldr	r3, [sp, #12]
87807b6c:	4620      	mov	r0, r4
87807b6e:	f083 0301 	eor.w	r3, r3, #1
87807b72:	4619      	mov	r1, r3
87807b74:	9303      	str	r3, [sp, #12]
87807b76:	f7f8 fc8f 	bl	87800498 <led_switch>
87807b7a:	e734      	b.n	878079e6 <main+0x226>
87807b7c:	f7ff f9ee 	bl	87806f5c <ft5426_init>
87807b80:	e664      	b.n	8780784c <main+0x8c>
87807b82:	bf00      	nop

Disassembly of section .rodata:

87807b84 <.LC0-0xc0>:
87807b84:	36584d49 	ldrbcc	r4, [r8], -r9, asr #26
87807b88:	4c412d55 	mcrrmi	13, 5, r2, r1, cr5
87807b8c:	20414850 	subcs	r4, r1, r0, asr r8
87807b90:	43554f54 	cmpmi	r5, #84, 30	; 0x150
87807b94:	43532048 	cmpmi	r3, #72	; 0x48
87807b98:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
87807b9c:	53455420 	movtpl	r5, #21536	; 0x5420
87807ba0:	00000054 	andeq	r0, r0, r4, asr r0
87807ba4:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 87807aa8 <main+0x2e8>
87807ba8:	494c4140 	stmdbmi	ip, {r6, r8, lr}^
87807bac:	45544e45 	ldrbmi	r4, [r4, #-3653]	; 0xe45
87807bb0:	0000004b 	andeq	r0, r0, fp, asr #32
87807bb4:	39313032 	ldmdbcc	r1!, {r1, r4, r5, ip, sp}
87807bb8:	322f332f 	eorcc	r3, pc, #-1140850688	; 0xbc000000
87807bbc:	00000037 	andeq	r0, r0, r7, lsr r0
87807bc0:	4e205054 	mcrmi	0, 1, r5, cr0, cr4, {2}
87807bc4:	3a096d75 	bcc	87a631a0 <__bss_end+0x255e0c>
87807bc8:	00000000 	andeq	r0, r0, r0
87807bcc:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807bd0:	58203074 	stmdapl	r0!, {r2, r4, r5, r6, ip, sp}
87807bd4:	0000003a 	andeq	r0, r0, sl, lsr r0
87807bd8:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807bdc:	59203074 	stmdbpl	r0!, {r2, r4, r5, r6, ip, sp}
87807be0:	0000003a 	andeq	r0, r0, sl, lsr r0
87807be4:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807be8:	58203174 	stmdapl	r0!, {r2, r4, r5, r6, r8, ip, sp}
87807bec:	0000003a 	andeq	r0, r0, sl, lsr r0
87807bf0:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807bf4:	59203174 	stmdbpl	r0!, {r2, r4, r5, r6, r8, ip, sp}
87807bf8:	0000003a 	andeq	r0, r0, sl, lsr r0
87807bfc:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807c00:	58203274 	stmdapl	r0!, {r2, r4, r5, r6, r9, ip, sp}
87807c04:	0000003a 	andeq	r0, r0, sl, lsr r0
87807c08:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807c0c:	59203274 	stmdbpl	r0!, {r2, r4, r5, r6, r9, ip, sp}
87807c10:	0000003a 	andeq	r0, r0, sl, lsr r0
87807c14:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807c18:	58203374 	stmdapl	r0!, {r2, r4, r5, r6, r8, r9, ip, sp}
87807c1c:	0000003a 	andeq	r0, r0, sl, lsr r0
87807c20:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807c24:	59203374 	stmdbpl	r0!, {r2, r4, r5, r6, r8, r9, ip, sp}
87807c28:	0000003a 	andeq	r0, r0, sl, lsr r0
87807c2c:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807c30:	58203474 	stmdapl	r0!, {r2, r4, r5, r6, sl, ip, sp}
87807c34:	0000003a 	andeq	r0, r0, sl, lsr r0
87807c38:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
87807c3c:	59203474 	stmdbpl	r0!, {r2, r4, r5, r6, sl, ip, sp}
87807c40:	0000003a 	andeq	r0, r0, sl, lsr r0

87807c44 <.LC0>:
87807c44:	4c554e3c 	mrrcmi	14, 3, r4, r5, cr12
87807c48:	00003e4c 	andeq	r3, r0, ip, asr #28

87807c4c <digits.7616>:
87807c4c:	33323130 	teqcc	r2, #48, 2
87807c50:	37363534 			; <UNDEFINED> instruction: 0x37363534
87807c54:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
87807c58:	46454443 	strbmi	r4, [r5], -r3, asr #8

87807c5c <.LC0>:
87807c5c:	2044434c 	subcs	r4, r4, ip, asr #6
87807c60:	253d4449 	ldrcs	r4, [sp, #-1097]!	; 0x449
87807c64:	0a0d5823 	beq	87b5dcf8 <__bss_end+0x350964>
87807c68:	00000000 	andeq	r0, r0, r0

87807c6c <asc2_1206>:
	...
87807c7c:	0000403f 	andeq	r4, r0, pc, lsr r0
87807c80:	00000000 	andeq	r0, r0, r0
87807c84:	00300000 	eorseq	r0, r0, r0
87807c88:	00300040 	eorseq	r0, r0, r0, asr #32
87807c8c:	00000040 	andeq	r0, r0, r0, asr #32
87807c90:	c00b0009 	andgt	r0, fp, r9
87807c94:	c00b003d 	andgt	r0, fp, sp, lsr r0
87807c98:	0009003d 	andeq	r0, r9, sp, lsr r0
87807c9c:	4024c018 	eormi	ip, r4, r8, lsl r0
87807ca0:	4022e07f 	eormi	lr, r2, pc, ror r0
87807ca4:	00008031 	andeq	r8, r0, r1, lsr r0
87807ca8:	c0240018 	eorgt	r0, r4, r8, lsl r0
87807cac:	800d001b 	andhi	r0, sp, fp, lsl r0
87807cb0:	80014032 	andhi	r4, r1, r2, lsr r0
87807cb4:	401c8003 	andsmi	r8, ip, r3
87807cb8:	801c4027 	andshi	r4, ip, r7, lsr #32
87807cbc:	40004007 	andmi	r4, r0, r7
87807cc0:	00600010 	rsbeq	r0, r0, r0, lsl r0
	...
87807cd0:	801f0000 	andshi	r0, pc, r0
87807cd4:	20404020 	subcs	r4, r0, r0, lsr #32
87807cd8:	20400000 	subcs	r0, r0, r0
87807cdc:	801f4020 	andshi	r4, pc, r0, lsr #32
87807ce0:	00000000 	andeq	r0, r0, r0
87807ce4:	00060009 	andeq	r0, r6, r9
87807ce8:	0006801f 	andeq	r8, r6, pc, lsl r0
87807cec:	00000009 	andeq	r0, r0, r9
87807cf0:	00040004 	andeq	r0, r4, r4
87807cf4:	0004803f 	andeq	r8, r4, pc, lsr r0
87807cf8:	00000004 	andeq	r0, r0, r4
87807cfc:	60001000 	andvs	r1, r0, r0
	...
87807d08:	00040004 	andeq	r0, r4, r4
87807d0c:	00040004 	andeq	r0, r4, r4
87807d10:	00000004 	andeq	r0, r0, r4
87807d14:	40000000 	andmi	r0, r0, r0
	...
87807d20:	c0012000 	andgt	r2, r1, r0
87807d24:	00380006 	eorseq	r0, r8, r6
87807d28:	00000040 	andeq	r0, r0, r0, asr #32
87807d2c:	4020801f 	eormi	r8, r0, pc, lsl r0
87807d30:	40204020 	eormi	r4, r0, r0, lsr #32
87807d34:	0000801f 	andeq	r8, r0, pc, lsl r0
87807d38:	40100000 	andsmi	r0, r0, r0
87807d3c:	4000c03f 	andmi	ip, r0, pc, lsr r0
87807d40:	00000000 	andeq	r0, r0, r0
87807d44:	4021c018 	eormi	ip, r1, r8, lsl r0
87807d48:	40244022 	eormi	r4, r4, r2, lsr #32
87807d4c:	00004018 	andeq	r4, r0, r8, lsl r0
87807d50:	40208010 	eormi	r8, r0, r0, lsl r0
87807d54:	40244024 	eormi	r4, r4, r4, lsr #32
87807d58:	0000801b 	andeq	r8, r0, fp, lsl r0
87807d5c:	000d0002 	andeq	r0, sp, r2
87807d60:	c03f0011 	eorsgt	r0, pc, r1, lsl r0	; <UNPREDICTABLE>
87807d64:	00004001 	andeq	r4, r0, r1
87807d68:	4024803c 	eormi	r8, r4, ip, lsr r0
87807d6c:	40244024 	eormi	r4, r4, r4, lsr #32
87807d70:	00008023 	andeq	r8, r0, r3, lsr #32
87807d74:	4024801f 	eormi	r8, r4, pc, lsl r0
87807d78:	40344024 	eorsmi	r4, r4, r4, lsr #32
87807d7c:	00008003 	andeq	r8, r0, r3
87807d80:	00200030 	eoreq	r0, r0, r0, lsr r0
87807d84:	0038c027 	eorseq	ip, r8, r7, lsr #32
87807d88:	00000020 	andeq	r0, r0, r0, lsr #32
87807d8c:	4024801b 	eormi	r8, r4, fp, lsl r0
87807d90:	40244024 	eormi	r4, r4, r4, lsr #32
87807d94:	0000801b 	andeq	r8, r0, fp, lsl r0
87807d98:	c022001c 	eorgt	r0, r2, ip, lsl r0
87807d9c:	40224022 	eormi	r4, r2, r2, lsr #32
87807da0:	0000801f 	andeq	r8, r0, pc, lsl r0
87807da4:	00000000 	andeq	r0, r0, r0
87807da8:	00004008 	andeq	r4, r0, r8
	...
87807db4:	00006004 	andeq	r6, r0, r4
87807db8:	00000000 	andeq	r0, r0, r0
87807dbc:	00040000 	andeq	r0, r4, r0
87807dc0:	0011000a 	andseq	r0, r1, sl
87807dc4:	40408020 	submi	r8, r0, r0, lsr #32
87807dc8:	00090009 	andeq	r0, r9, r9
87807dcc:	00090009 	andeq	r0, r9, r9
87807dd0:	00000009 	andeq	r0, r0, r9
87807dd4:	40400000 	submi	r0, r0, r0
87807dd8:	00118020 	andseq	r8, r1, r0, lsr #32
87807ddc:	0004000a 	andeq	r0, r4, sl
87807de0:	00200018 	eoreq	r0, r0, r8, lsl r0
87807de4:	00244023 	eoreq	r4, r4, r3, lsr #32
87807de8:	00000018 	andeq	r0, r0, r8, lsl r0
87807dec:	4020801f 	eormi	r8, r0, pc, lsl r0
87807df0:	40294027 	eormi	r4, r9, r7, lsr #32
87807df4:	0000401f 	andeq	r4, r0, pc, lsl r0
87807df8:	c0074000 	andgt	r4, r7, r0
87807dfc:	000f0039 	andeq	r0, pc, r9, lsr r0	; <UNPREDICTABLE>
87807e00:	4000c001 	andmi	ip, r0, r1
87807e04:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e08:	40244024 	eormi	r4, r4, r4, lsr #32
87807e0c:	0000801b 	andeq	r8, r0, fp, lsl r0
87807e10:	4020801f 	eormi	r8, r0, pc, lsl r0
87807e14:	40204020 	eormi	r4, r0, r0, lsr #32
87807e18:	00008030 	andeq	r8, r0, r0, lsr r0
87807e1c:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e20:	40204020 	eormi	r4, r0, r0, lsr #32
87807e24:	0000801f 	andeq	r8, r0, pc, lsl r0
87807e28:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e2c:	402e4024 	eormi	r4, lr, r4, lsr #32
87807e30:	0000c030 	andeq	ip, r0, r0, lsr r0
87807e34:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e38:	002e4024 	eoreq	r4, lr, r4, lsr #32
87807e3c:	00000030 	andeq	r0, r0, r0, lsr r0
87807e40:	8010000f 	andshi	r0, r0, pc
87807e44:	40224020 	eormi	r4, r2, r0, lsr #32
87807e48:	00028033 	andeq	r8, r2, r3, lsr r0
87807e4c:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e50:	00040004 	andeq	r0, r4, r4
87807e54:	4020c03f 	eormi	ip, r0, pc, lsr r0
87807e58:	40204020 	eormi	r4, r0, r0, lsr #32
87807e5c:	4020c03f 	eormi	ip, r0, pc, lsr r0
87807e60:	00004020 	andeq	r4, r0, r0, lsr #32
87807e64:	20206000 	eorcs	r6, r0, r0
87807e68:	c03f2020 	eorsgt	r2, pc, r0, lsr #32
87807e6c:	00200020 	eoreq	r0, r0, r0, lsr #32
87807e70:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e74:	000b4024 	andeq	r4, fp, r4, lsr #32
87807e78:	4020c030 	eormi	ip, r0, r0, lsr r0
87807e7c:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e80:	40004020 	andmi	r4, r0, r0, lsr #32
87807e84:	c0004000 	andgt	r4, r0, r0
87807e88:	003cc03f 	eorseq	ip, ip, pc, lsr r0
87807e8c:	003cc003 	eorseq	ip, ip, r3
87807e90:	0000c03f 	andeq	ip, r0, pc, lsr r0
87807e94:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807e98:	0023400c 	eoreq	r4, r3, ip
87807e9c:	0020c03f 	eoreq	ip, r0, pc, lsr r0
87807ea0:	4020801f 	eormi	r8, r0, pc, lsl r0
87807ea4:	40204020 	eormi	r4, r0, r0, lsr #32
87807ea8:	0000801f 	andeq	r8, r0, pc, lsl r0
87807eac:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807eb0:	00244024 	eoreq	r4, r4, r4, lsr #32
87807eb4:	00000018 	andeq	r0, r0, r8, lsl r0
87807eb8:	4021801f 	eormi	r8, r1, pc, lsl r0
87807ebc:	e0204021 	eor	r4, r0, r1, lsr #32
87807ec0:	0000a01f 	andeq	sl, r0, pc, lsl r0
87807ec4:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807ec8:	00264024 	eoreq	r4, r6, r4, lsr #32
87807ecc:	4000c019 	andmi	ip, r0, r9, lsl r0
87807ed0:	4024c018 	eormi	ip, r4, r8, lsl r0
87807ed4:	40224024 	eormi	r4, r2, r4, lsr #32
87807ed8:	00008031 	andeq	r8, r0, r1, lsr r0
87807edc:	40200030 	eormi	r0, r0, r0, lsr r0
87807ee0:	4020c03f 	eormi	ip, r0, pc, lsr r0
87807ee4:	00000030 	andeq	r0, r0, r0, lsr r0
87807ee8:	803f0020 	eorshi	r0, pc, r0, lsr #32
87807eec:	40004000 	andmi	r4, r0, r0
87807ef0:	0020803f 	eoreq	r8, r0, pc, lsr r0
87807ef4:	003e0020 	eorseq	r0, lr, r0, lsr #32
87807ef8:	0007c001 	andeq	ip, r7, r1
87807efc:	00200038 	eoreq	r0, r0, r8, lsr r0
87807f00:	c0070038 	andgt	r0, r7, r8, lsr r0
87807f04:	c007003c 	andgt	r0, r7, ip, lsr r0
87807f08:	00000038 	andeq	r0, r0, r8, lsr r0
87807f0c:	c0394020 	eorsgt	r4, r9, r0, lsr #32
87807f10:	c0390006 	eorsgt	r0, r9, r6
87807f14:	00004020 	andeq	r4, r0, r0, lsr #32
87807f18:	40380020 	eorsmi	r0, r8, r0, lsr #32
87807f1c:	4038c007 	eorsmi	ip, r8, r7
87807f20:	00000020 	andeq	r0, r0, r0, lsr #32
87807f24:	c0214030 	eorgt	r4, r1, r0, lsr r0
87807f28:	40384026 	eorsmi	r4, r8, r6, lsr #32
87807f2c:	0000c020 	andeq	ip, r0, r0, lsr #32
87807f30:	00000000 	andeq	r0, r0, r0
87807f34:	2040e07f 	subcs	lr, r0, pc, ror r0
87807f38:	00002040 	andeq	r2, r0, r0, asr #32
87807f3c:	00700000 	rsbseq	r0, r0, r0
87807f40:	8003000c 	andhi	r0, r3, ip
87807f44:	00004000 	andeq	r4, r0, r0
87807f48:	20400000 	subcs	r0, r0, r0
87807f4c:	e07f2040 	rsbs	r2, pc, r0, asr #32
87807f50:	00000000 	andeq	r0, r0, r0
87807f54:	00200000 	eoreq	r0, r0, r0
87807f58:	00200040 	eoreq	r0, r0, r0, asr #32
87807f5c:	00000000 	andeq	r0, r0, r0
87807f60:	10001000 	andne	r1, r0, r0
87807f64:	10001000 	andne	r1, r0, r0
87807f68:	10001000 	andne	r1, r0, r0
87807f6c:	00000000 	andeq	r0, r0, r0
87807f70:	00000040 	andeq	r0, r0, r0, asr #32
87807f74:	00000000 	andeq	r0, r0, r0
87807f78:	80020000 	andhi	r0, r2, r0
87807f7c:	40054005 	andmi	r4, r5, r5
87807f80:	4000c003 	andmi	ip, r0, r3
87807f84:	c03f0020 	eorsgt	r0, pc, r0, lsr #32
87807f88:	40044004 	andmi	r4, r4, r4
87807f8c:	00008003 	andeq	r8, r0, r3
87807f90:	80030000 	andhi	r0, r3, r0
87807f94:	40044004 	andmi	r4, r4, r4
87807f98:	00004006 	andeq	r4, r0, r6
87807f9c:	80030000 	andhi	r0, r3, r0
87807fa0:	40244004 	eormi	r4, r4, r4
87807fa4:	4000c03f 	andmi	ip, r0, pc, lsr r0
87807fa8:	80030000 	andhi	r0, r3, r0
87807fac:	40054005 	andmi	r4, r5, r5
87807fb0:	00004003 	andeq	r4, r0, r3
87807fb4:	40040000 	andmi	r0, r4, r0
87807fb8:	4024c01f 	eormi	ip, r4, pc, lsl r0
87807fbc:	00204024 	eoreq	r4, r0, r4, lsr #32
87807fc0:	e0020000 	and	r0, r2, r0
87807fc4:	50055005 	andpl	r5, r5, r5
87807fc8:	20045006 	andcs	r5, r4, r6
87807fcc:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807fd0:	00044004 	andeq	r4, r4, r4
87807fd4:	4000c003 	andmi	ip, r0, r3
87807fd8:	40040000 	andmi	r0, r4, r0
87807fdc:	4000c027 	andmi	ip, r0, r7, lsr #32
87807fe0:	00000000 	andeq	r0, r0, r0
87807fe4:	10001000 	andne	r1, r0, r0
87807fe8:	e0271004 	eor	r1, r7, r4
87807fec:	00000000 	andeq	r0, r0, r0
87807ff0:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807ff4:	00074001 	andeq	r4, r7, r1
87807ff8:	4004c004 	andmi	ip, r4, r4
87807ffc:	40204020 	eormi	r4, r0, r0, lsr #32
87808000:	4000c03f 	andmi	ip, r0, pc, lsr r0
87808004:	00004000 	andeq	r4, r0, r0
87808008:	0004c007 	andeq	ip, r4, r7
8780800c:	0004c007 	andeq	ip, r4, r7
87808010:	0000c003 	andeq	ip, r0, r3
87808014:	c0074004 	andgt	r4, r7, r4
87808018:	00044004 	andeq	r4, r4, r4
8780801c:	4000c003 	andmi	ip, r0, r3
87808020:	80030000 	andhi	r0, r3, r0
87808024:	40044004 	andmi	r4, r4, r4
87808028:	00008003 	andeq	r8, r0, r3
8780802c:	f0071004 			; <UNDEFINED> instruction: 0xf0071004
87808030:	40045004 	andmi	r5, r4, r4
87808034:	00008003 	andeq	r8, r0, r3
87808038:	80030000 	andhi	r0, r3, r0
8780803c:	50044004 	andpl	r4, r4, r4
87808040:	1000f007 	andne	pc, r0, r7
87808044:	c0074004 	andgt	r4, r7, r4
87808048:	00044002 	andeq	r4, r4, r2
8780804c:	00000004 	andeq	r0, r0, r4
87808050:	40060000 	andmi	r0, r6, r0
87808054:	40054005 	andmi	r4, r5, r5
87808058:	0000c004 	andeq	ip, r0, r4
8780805c:	00040000 	andeq	r0, r4, r0
87808060:	4004801f 	andmi	r8, r4, pc, lsl r0
87808064:	00004000 	andeq	r4, r0, r0
87808068:	80070004 	andhi	r0, r7, r4
8780806c:	40044000 	andmi	r4, r4, r0
87808070:	4000c007 	andmi	ip, r0, r7
87808074:	00070004 	andeq	r0, r7, r4
87808078:	8001c004 	andhi	ip, r1, r4
8780807c:	00040006 	andeq	r0, r4, r6
87808080:	c0010006 	andgt	r0, r1, r6
87808084:	c0010007 	andgt	r0, r1, r7
87808088:	00000006 	andeq	r0, r0, r6
8780808c:	c0064004 	andgt	r4, r6, r4
87808090:	c0060001 	andgt	r0, r6, r1
87808094:	00004004 	andeq	r4, r0, r4
87808098:	10071004 	andne	r1, r7, r4
8780809c:	8001e004 	andhi	lr, r1, r4
878080a0:	00040006 	andeq	r0, r4, r6
878080a4:	40040000 	andmi	r0, r4, r0
878080a8:	4006c005 	andmi	ip, r6, r5
878080ac:	00004004 	andeq	r4, r0, r4
878080b0:	00000000 	andeq	r0, r0, r0
878080b4:	e07b0004 	rsbs	r0, fp, r4
878080b8:	00002040 	andeq	r2, r0, r0, asr #32
878080bc:	00000000 	andeq	r0, r0, r0
878080c0:	f0ff0000 			; <UNDEFINED> instruction: 0xf0ff0000
878080c4:	00000000 	andeq	r0, r0, r0
878080c8:	20400000 	subcs	r0, r0, r0
878080cc:	0004e07b 	andeq	lr, r4, fp, ror r0
878080d0:	00000000 	andeq	r0, r0, r0
878080d4:	00800040 	addeq	r0, r0, r0, asr #32
878080d8:	00200040 	eoreq	r0, r0, r0, asr #32
878080dc:	00400020 	subeq	r0, r0, r0, lsr #32

878080e0 <asc2_1608>:
	...
878080f4:	cc1f0000 	ldcgt	0, cr0, [pc], {-0}
878080f8:	00000c00 	andeq	r0, r0, r0, lsl #24
878080fc:	00000000 	andeq	r0, r0, r0
87808100:	00080000 	andeq	r0, r8, r0
87808104:	00600030 	rsbeq	r0, r0, r0, lsr r0
87808108:	00300008 	eorseq	r0, r0, r8
8780810c:	00000060 	andeq	r0, r0, r0, rrx
87808110:	fc032002 	stc2	0, cr2, [r3], {2}
87808114:	2002201e 	andcs	r2, r2, lr, lsl r0
87808118:	201efc03 	andscs	pc, lr, r3, lsl #24
8780811c:	00002002 	andeq	r2, r0, r2
87808120:	180e0000 	stmdane	lr, {}	; <UNPREDICTABLE>
87808124:	ff3f0411 			; <UNDEFINED> instruction: 0xff3f0411
87808128:	780c8410 	stmdavc	ip, {r4, sl, pc}
8780812c:	00000000 	andeq	r0, r0, r0
87808130:	8410000f 	ldrhi	r0, [r0], #-15
87808134:	c000380f 	andgt	r3, r0, pc, lsl #16
87808138:	84187807 	ldrhi	r7, [r8], #-2055	; 0x807
8780813c:	00007800 	andeq	r7, r0, r0, lsl #16
87808140:	840f7800 	strhi	r7, [pc], #-2048	; 87808148 <asc2_1608+0x68>
87808144:	2411c410 	ldrcs	ip, [r1], #-1040	; 0x410
87808148:	e400980e 	str	r9, [r0], #-2062	; 0x80e
8780814c:	08008400 	stmdaeq	r0, {sl, pc}
87808150:	00680008 	rsbeq	r0, r8, r8
87808154:	00000070 	andeq	r0, r0, r0, ror r0
	...
87808164:	e0070000 	and	r0, r7, r0
87808168:	04201818 	strteq	r1, [r0], #-2072	; 0x818
8780816c:	00000240 	andeq	r0, r0, r0, asr #4
87808170:	02400000 	subeq	r0, r0, #0
87808174:	18180420 	ldmdane	r8, {r5, sl}
87808178:	0000e007 	andeq	lr, r0, r7
8780817c:	00000000 	andeq	r0, r0, r0
87808180:	40024002 	andmi	r4, r2, r2
87808184:	f00f8001 			; <UNDEFINED> instruction: 0xf00f8001
87808188:	40028001 	andmi	r8, r2, r1
8780818c:	00004002 	andeq	r4, r0, r2
87808190:	80008000 	andhi	r8, r0, r0
87808194:	f80f8000 			; <UNDEFINED> instruction: 0xf80f8000
87808198:	80008000 	andhi	r8, r0, r0
8780819c:	00008000 	andeq	r8, r0, r0
878081a0:	0d000100 	stfeqs	f0, [r0, #-0]
878081a4:	00000e00 	andeq	r0, r0, r0, lsl #28
	...
878081b0:	80000000 	andhi	r0, r0, r0
878081b4:	80008000 	andhi	r8, r0, r0
878081b8:	80008000 	andhi	r8, r0, r0
878081bc:	80008000 	andhi	r8, r0, r0
878081c0:	0c000000 	stceq	0, cr0, [r0], {-0}
878081c4:	00000c00 	andeq	r0, r0, r0, lsl #24
	...
878081d0:	06000000 	streq	r0, [r0], -r0
878081d4:	60001800 	andvs	r1, r0, r0, lsl #16
878081d8:	00068001 	andeq	r8, r6, r1
878081dc:	00200018 	eoreq	r0, r0, r8, lsl r0
878081e0:	f0070000 			; <UNDEFINED> instruction: 0xf0070000
878081e4:	04100808 	ldreq	r0, [r0], #-2056	; 0x808
878081e8:	08080410 	stmdaeq	r8, {r4, sl}
878081ec:	0000f007 	andeq	pc, r0, r7
878081f0:	04080000 	streq	r0, [r8], #-0
878081f4:	fc1f0408 	ldc2	4, cr0, [pc], {8}
878081f8:	04000400 	streq	r0, [r0], #-1024	; 0x400
878081fc:	00000000 	andeq	r0, r0, r0
87808200:	0c0e0000 	stceq	0, cr0, [lr], {-0}
87808204:	24101410 	ldrcs	r1, [r0], #-1040	; 0x410
87808208:	84114410 	ldrhi	r4, [r1], #-1040	; 0x410
8780820c:	00000c0e 	andeq	r0, r0, lr, lsl #24
87808210:	180c0000 	stmdane	ip, {}	; <UNPREDICTABLE>
87808214:	04110410 	ldreq	r0, [r1], #-1040	; 0x410
87808218:	88120411 	ldmdahi	r2, {r0, r4, sl}
8780821c:	0000700c 	andeq	r7, r0, ip
87808220:	e0000000 	and	r0, r0, r0
87808224:	24042003 	strcs	r2, [r4], #-3
87808228:	fc1f2408 	ldc2	4, cr2, [pc], {8}
8780822c:	00002400 	andeq	r2, r0, r0, lsl #8
87808230:	981f0000 	ldmdals	pc, {}	; <UNPREDICTABLE>
87808234:	04118410 	ldreq	r8, [r1], #-1040	; 0x410
87808238:	88100411 	ldmdahi	r0, {r0, r4, sl}
8780823c:	00007010 	andeq	r7, r0, r0, lsl r0
87808240:	f0070000 			; <UNDEFINED> instruction: 0xf0070000
87808244:	04118808 	ldreq	r8, [r1], #-2056	; 0x808
87808248:	88180411 	ldmdahi	r8, {r0, r4, sl}
8780824c:	00007000 	andeq	r7, r0, r0
87808250:	001c0000 	andseq	r0, ip, r0
87808254:	fc100010 	ldc2	0, cr0, [r0], {16}
87808258:	001c0013 	andseq	r0, ip, r3, lsl r0
8780825c:	00000010 	andeq	r0, r0, r0, lsl r0
87808260:	380e0000 	stmdacc	lr, {}	; <UNPREDICTABLE>
87808264:	84104411 	ldrhi	r4, [r0], #-1041	; 0x411
87808268:	44118410 	ldrmi	r8, [r1], #-1040	; 0x410
8780826c:	0000380e 	andeq	r3, r0, lr, lsl #16
87808270:	00070000 	andeq	r0, r7, r0
87808274:	44108c08 	ldrmi	r8, [r0], #-3080	; 0xc08
87808278:	88084410 	stmdahi	r8, {r4, sl, lr}
8780827c:	0000f007 	andeq	pc, r0, r7
87808280:	00000000 	andeq	r0, r0, r0
87808284:	0c030000 	stceq	0, cr0, [r3], {-0}
87808288:	00000c03 	andeq	r0, r0, r3, lsl #24
	...
87808294:	06010100 	streq	r0, [r1], -r0, lsl #2
	...
878082a0:	80000000 	andhi	r0, r0, r0
878082a4:	20024001 	andcs	r4, r2, r1
878082a8:	08081004 	stmdaeq	r8, {r2, ip}
878082ac:	00000410 	andeq	r0, r0, r0, lsl r4
878082b0:	20022002 	andcs	r2, r2, r2
878082b4:	20022002 	andcs	r2, r2, r2
878082b8:	20022002 	andcs	r2, r2, r2
878082bc:	00002002 	andeq	r2, r0, r2
878082c0:	04100000 	ldreq	r0, [r0], #-0
878082c4:	10040808 	andne	r0, r4, r8, lsl #16
878082c8:	40012002 	andmi	r2, r1, r2
878082cc:	00008000 	andeq	r8, r0, r0
878082d0:	000e0000 	andeq	r0, lr, r0
878082d4:	0c100012 	ldceq	0, cr0, [r0], {18}
878082d8:	80106c10 	andshi	r6, r0, r0, lsl ip
878082dc:	0000000f 	andeq	r0, r0, pc
878082e0:	180ce003 	stmdane	ip, {r0, r1, sp, lr, pc}
878082e4:	2414e413 	ldrcs	lr, [r4], #-1043	; 0x413
878082e8:	2808c417 	stmdacs	r8, {r0, r1, r2, r4, sl, lr, pc}
878082ec:	0000d007 	andeq	sp, r0, r7
878082f0:	3c000400 	cfstrscc	mvf0, [r0], {-0}
878082f4:	401cc403 	andsmi	ip, ip, r3, lsl #8
878082f8:	e4004007 	str	r4, [r0], #-7
878082fc:	04001c00 	streq	r1, [r0], #-3072	; 0xc00
87808300:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808304:	04110411 	ldreq	r0, [r1], #-1041	; 0x411
87808308:	880e0411 	stmdahi	lr, {r0, r4, sl}
8780830c:	00007000 	andeq	r7, r0, r0
87808310:	180ce003 	stmdane	ip, {r0, r1, sp, lr, pc}
87808314:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
87808318:	08100410 	ldmdaeq	r0, {r4, sl}
8780831c:	0000101c 	andeq	r1, r0, ip, lsl r0
87808320:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808324:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
87808328:	08080410 	stmdaeq	r8, {r4, sl}
8780832c:	0000f007 	andeq	pc, r0, r7
87808330:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808334:	04110411 	ldreq	r0, [r1], #-1041	; 0x411
87808338:	0410c417 	ldreq	ip, [r0], #-1047	; 0x417
8780833c:	00001808 	andeq	r1, r0, r8, lsl #16
87808340:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808344:	00110411 	andseq	r0, r1, r1, lsl r4
87808348:	0010c017 	andseq	ip, r0, r7, lsl r0
8780834c:	00000008 	andeq	r0, r0, r8
87808350:	180ce003 	stmdane	ip, {r0, r1, sp, lr, pc}
87808354:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
87808358:	781c4410 	ldmdavc	ip, {r4, sl, lr}
8780835c:	00004000 	andeq	r4, r0, r0
87808360:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808364:	80008410 	andhi	r8, r0, r0, lsl r4
87808368:	84108000 	ldrhi	r8, [r0], #-0
8780836c:	0410fc1f 	ldreq	pc, [r0], #-3103	; 0xc1f
87808370:	04100000 	ldreq	r0, [r0], #-0
87808374:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808378:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
8780837c:	00000000 	andeq	r0, r0, r0
87808380:	01000300 	mrseq	r0, LR_irq
87808384:	01100110 	tsteq	r0, r0, lsl r1
87808388:	0010fe1f 	andseq	pc, r0, pc, lsl lr	; <UNPREDICTABLE>
8780838c:	00000010 	andeq	r0, r0, r0, lsl r0
87808390:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808394:	80030411 	andhi	r0, r3, r1, lsl r4
87808398:	1c186414 	cfldrsne	mvf6, [r8], {20}
8780839c:	00000410 	andeq	r0, r0, r0, lsl r4
878083a0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878083a4:	04000410 	streq	r0, [r0], #-1040	; 0x410
878083a8:	04000400 	streq	r0, [r0], #-1024	; 0x400
878083ac:	00000c00 	andeq	r0, r0, r0, lsl #24
878083b0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878083b4:	fc00001f 	stc2	0, cr0, [r0], {31}
878083b8:	fc1f001f 	ldc2	0, cr0, [pc], {31}
878083bc:	00000410 	andeq	r0, r0, r0, lsl r4
878083c0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878083c4:	0003040c 	andeq	r0, r3, ip, lsl #8
878083c8:	1810e000 	ldmdane	r0, {sp, lr, pc}
878083cc:	0010fc1f 	andseq	pc, r0, pc, lsl ip	; <UNPREDICTABLE>
878083d0:	0808f007 	stmdaeq	r8, {r0, r1, r2, ip, sp, lr, pc}
878083d4:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
878083d8:	08080410 	stmdaeq	r8, {r4, sl}
878083dc:	0000f007 	andeq	pc, r0, r7
878083e0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878083e4:	80108410 	andshi	r8, r0, r0, lsl r4
878083e8:	80108010 	andshi	r8, r0, r0, lsl r0
878083ec:	0000000f 	andeq	r0, r0, pc
878083f0:	1808f007 	stmdane	r8, {r0, r1, r2, ip, sp, lr, pc}
878083f4:	24102410 	ldrcs	r2, [r0], #-1040	; 0x410
878083f8:	0a081c10 	beq	87a0f440 <__bss_end+0x2020ac>
878083fc:	0000f207 	andeq	pc, r0, r7, lsl #4
87808400:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808404:	00110411 	andseq	r0, r1, r1, lsl r4
87808408:	3011c011 	andscc	ip, r1, r1, lsl r0
8780840c:	04000c0e 	streq	r0, [r0], #-3086	; 0xc0e
87808410:	1c0e0000 	stcne	0, cr0, [lr], {-0}
87808414:	84100411 	ldrhi	r0, [r0], #-1041	; 0x411
87808418:	44108410 	ldrmi	r8, [r0], #-1040	; 0x410
8780841c:	0000381c 	andeq	r3, r0, ip, lsl r8
87808420:	00100018 	andseq	r0, r0, r8, lsl r0
87808424:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808428:	00100410 	andseq	r0, r0, r0, lsl r4
8780842c:	00000018 	andeq	r0, r0, r8, lsl r0
87808430:	f81f0010 			; <UNDEFINED> instruction: 0xf81f0010
87808434:	04000410 	streq	r0, [r0], #-1040	; 0x410
87808438:	04100400 	ldreq	r0, [r0], #-1024	; 0x400
8780843c:	0010f81f 	andseq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
87808440:	001e0010 	andseq	r0, lr, r0, lsl r0
87808444:	1c00e011 	stcne	0, cr14, [r0], {17}
87808448:	80137000 	andshi	r7, r3, r0
8780844c:	0010001c 	andseq	r0, r0, ip, lsl r0
87808450:	3c10c01f 	ldccc	0, cr12, [r0], {31}
87808454:	001fe000 	andseq	lr, pc, r0
87808458:	3c10e000 	ldccc	0, cr14, [r0], {-0}
8780845c:	0000c01f 	andeq	ip, r0, pc, lsl r0
87808460:	0c180410 	cfldrseq	mvf0, [r8], {16}
87808464:	c0013416 	andgt	r3, r1, r6, lsl r4
87808468:	3416c001 	ldrcc	ip, [r6], #-1
8780846c:	04100c18 	ldreq	r0, [r0], #-3096	; 0xc18
87808470:	001c0010 	andseq	r0, ip, r0, lsl r0
87808474:	fc000413 	stc2	4, cr0, [r0], {19}
87808478:	001c0413 	andseq	r0, ip, r3, lsl r4
8780847c:	00000010 	andeq	r0, r0, r0, lsl r0
87808480:	1c100408 	cfldrsne	mvf0, [r0], {8}
87808484:	84106410 	ldrhi	r6, [r0], #-1040	; 0x410
87808488:	041c0413 	ldreq	r0, [ip], #-1043	; 0x413
8780848c:	00001810 	andeq	r1, r0, r0, lsl r8
87808490:	00000000 	andeq	r0, r0, r0
87808494:	fe7f0000 	cdp2	0, 7, cr0, cr15, cr0, {0}
87808498:	02400240 	subeq	r0, r0, #64, 4
8780849c:	00000240 	andeq	r0, r0, r0, asr #4
878084a0:	00300000 	eorseq	r0, r0, r0
878084a4:	8003000c 	andhi	r0, r3, ip
878084a8:	1c006000 	stcne	0, cr6, [r0], {-0}
878084ac:	00000300 	andeq	r0, r0, r0, lsl #6
878084b0:	02400000 	subeq	r0, r0, #0
878084b4:	02400240 	subeq	r0, r0, #64, 4
878084b8:	0000fe7f 	andeq	pc, r0, pc, ror lr	; <UNPREDICTABLE>
	...
878084c4:	00400020 	subeq	r0, r0, r0, lsr #32
878084c8:	00400040 	subeq	r0, r0, r0, asr #32
878084cc:	00000020 	andeq	r0, r0, r0, lsr #32
878084d0:	01000100 	mrseq	r0, (UNDEF: 16)
878084d4:	01000100 	mrseq	r0, (UNDEF: 16)
878084d8:	01000100 	mrseq	r0, (UNDEF: 16)
878084dc:	01000100 	mrseq	r0, (UNDEF: 16)
878084e0:	00400000 	subeq	r0, r0, r0
878084e4:	00200040 	eoreq	r0, r0, r0, asr #32
	...
878084f0:	98000000 	stmdals	r0, {}	; <UNPREDICTABLE>
878084f4:	44012401 	strmi	r2, [r1], #-1025	; 0x401
878084f8:	44014401 	strmi	r4, [r1], #-1025	; 0x401
878084fc:	0400fc00 	streq	pc, [r0], #-3072	; 0xc00
87808500:	fc1f0010 	ldc2	0, cr0, [pc], {16}
87808504:	04018800 	streq	r8, [r1], #-2048	; 0x800
87808508:	88000401 	stmdahi	r0, {r0, sl}
8780850c:	00007000 	andeq	r7, r0, r0
87808510:	70000000 	andvc	r0, r0, r0
87808514:	04018800 	streq	r8, [r1], #-2048	; 0x800
87808518:	04010401 	streq	r0, [r1], #-1025	; 0x401
8780851c:	00008800 	andeq	r8, r0, r0, lsl #16
87808520:	70000000 	andvc	r0, r0, r0
87808524:	04018800 	streq	r8, [r1], #-2048	; 0x800
87808528:	08110401 	ldmdaeq	r1, {r0, sl}
8780852c:	0400fc1f 	streq	pc, [r0], #-3103	; 0xc1f
87808530:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
87808534:	44014401 	strmi	r4, [r1], #-1025	; 0x401
87808538:	44014401 	strmi	r4, [r1], #-1025	; 0x401
8780853c:	0000c800 	andeq	ip, r0, r0, lsl #16
87808540:	04010000 	streq	r0, [r1], #-0
87808544:	fc0f0401 	stc2	4, cr0, [pc], {1}
87808548:	04110411 	ldreq	r0, [r1], #-1041	; 0x411
8780854c:	00180011 	andseq	r0, r8, r1, lsl r0
87808550:	d6000000 	strle	r0, [r0], -r0
87808554:	29012901 	stmdbcs	r1, {r0, r8, fp, sp}
87808558:	c9012901 	stmdbgt	r1, {r0, r8, fp, sp}
8780855c:	00000601 	andeq	r0, r0, r1, lsl #12
87808560:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808564:	00018400 	andeq	r8, r1, r0, lsl #8
87808568:	04010001 	streq	r0, [r1], #-1
8780856c:	0400fc00 	streq	pc, [r0], #-3072	; 0xc00
87808570:	04010000 	streq	r0, [r1], #-0
87808574:	fc190419 	ldc2	4, cr0, [r9], {25}
87808578:	04000400 	streq	r0, [r0], #-1024	; 0x400
8780857c:	00000000 	andeq	r0, r0, r0
87808580:	03000000 	movweq	r0, #0
87808584:	01010100 	mrseq	r0, (UNDEF: 17)
87808588:	fe190119 	mrc2	1, 0, r0, cr9, cr9, {0}
8780858c:	00000000 	andeq	r0, r0, r0
87808590:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87808594:	40002400 	andmi	r2, r0, r0, lsl #8
87808598:	0c01b401 	cfstrseq	mvf11, [r1], {1}
8780859c:	00000401 	andeq	r0, r0, r1, lsl #8
878085a0:	04100000 	ldreq	r0, [r0], #-0
878085a4:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878085a8:	04000400 	streq	r0, [r0], #-1024	; 0x400
878085ac:	00000000 	andeq	r0, r0, r0
878085b0:	fc010401 	stc2	4, cr0, [r1], {1}
878085b4:	00010401 	andeq	r0, r1, r1, lsl #8
878085b8:	0401fc01 	streq	pc, [r1], #-3073	; 0xc01
878085bc:	fc000001 	stc2	0, cr0, [r0], {1}
878085c0:	fc010401 	stc2	4, cr0, [r1], {1}
878085c4:	00018400 	andeq	r8, r1, r0, lsl #8
878085c8:	04010001 	streq	r0, [r1], #-1
878085cc:	0400fc00 	streq	pc, [r0], #-3072	; 0xc00
878085d0:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
878085d4:	04010401 	streq	r0, [r1], #-1025	; 0x401
878085d8:	04010401 	streq	r0, [r1], #-1025	; 0x401
878085dc:	0000f800 	andeq	pc, r0, r0, lsl #16
878085e0:	ff010101 			; <UNDEFINED> instruction: 0xff010101
878085e4:	04018500 	streq	r8, [r1], #-1280	; 0x500
878085e8:	88000401 	stmdahi	r0, {r0, sl}
878085ec:	00007000 	andeq	r7, r0, r0
878085f0:	70000000 	andvc	r0, r0, r0
878085f4:	04018800 	streq	r8, [r1], #-2048	; 0x800
878085f8:	05010401 	streq	r0, [r1, #-1025]	; 0x401
878085fc:	0100ff01 	tsteq	r0, r1, lsl #30
87808600:	04010401 	streq	r0, [r1], #-1025	; 0x401
87808604:	8400fc01 	strhi	pc, [r0], #-3073	; 0xc01
87808608:	00010401 	andeq	r0, r1, r1, lsl #8
8780860c:	00008001 	andeq	r8, r0, r1
87808610:	cc000000 	stcgt	0, cr0, [r0], {-0}
87808614:	24012401 	strcs	r2, [r1], #-1025	; 0x401
87808618:	24012401 	strcs	r2, [r1], #-1025	; 0x401
8780861c:	00009801 	andeq	r9, r0, r1, lsl #16
87808620:	00010000 	andeq	r0, r1, r0
87808624:	f8070001 			; <UNDEFINED> instruction: 0xf8070001
87808628:	04010401 	streq	r0, [r1], #-1025	; 0x401
8780862c:	00000000 	andeq	r0, r0, r0
87808630:	f8010001 			; <UNDEFINED> instruction: 0xf8010001
87808634:	04000400 	streq	r0, [r0], #-1024	; 0x400
87808638:	08010400 	stmdaeq	r1, {sl}
8780863c:	0400fc01 	streq	pc, [r0], #-3073	; 0xc01
87808640:	80010001 	andhi	r0, r1, r1
87808644:	0c007001 	stceq	0, cr7, [r0], {1}
87808648:	60011000 	andvs	r1, r1, r0
8780864c:	00018001 	andeq	r8, r1, r1
87808650:	0c01f001 	stceq	0, cr15, [r1], {1}
87808654:	c0013000 	andgt	r3, r1, r0
87808658:	0c013000 	stceq	0, cr3, [r1], {-0}
8780865c:	0001f001 	andeq	pc, r1, r1
87808660:	04010000 	streq	r0, [r1], #-0
87808664:	74008c01 	strvc	r8, [r0], #-3073	; 0xc01
87808668:	8c017001 	stchi	0, cr7, [r1], {1}
8780866c:	00000401 	andeq	r0, r0, r1, lsl #8
87808670:	81010101 	tsthi	r1, r1, lsl #2
87808674:	0e007101 	adfeqs	f7, f0, f1
87808678:	60011800 	andvs	r1, r1, r0, lsl #16
8780867c:	00018001 	andeq	r8, r1, r1
87808680:	84010000 	strhi	r0, [r1], #-0
87808684:	34010c01 	strcc	r0, [r1], #-3073	; 0xc01
87808688:	84014401 	strhi	r4, [r1], #-1025	; 0x401
8780868c:	00000c01 	andeq	r0, r0, r1, lsl #24
	...
87808698:	fc3e0001 	ldc2	0, cr0, [lr], #-4
8780869c:	02400240 	subeq	r0, r0, #64, 4
	...
878086a8:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
878086ac:	00000000 	andeq	r0, r0, r0
878086b0:	02400000 	subeq	r0, r0, #0
878086b4:	fc3e0240 	ldc2	2, cr0, [lr], #-256	; 0xffffff00
878086b8:	00000001 	andeq	r0, r0, r1
878086bc:	00000000 	andeq	r0, r0, r0
878086c0:	00600000 	rsbeq	r0, r0, r0
878086c4:	00800080 	addeq	r0, r0, r0, lsl #1
878086c8:	00400040 	subeq	r0, r0, r0, asr #32
878086cc:	00200020 	eoreq	r0, r0, r0, lsr #32

878086d0 <asc2_2412>:
	...
87808700:	0f000000 	svceq	0x00000000
87808704:	fe0f3880 	cdp2	8, 0, cr3, cr15, cr0, {4}
87808708:	38800f38 	stmcc	r0, {r3, r4, r5, r8, r9, sl, fp}
	...
8780871c:	00010000 	andeq	r0, r1, r0
87808720:	00000600 	andeq	r0, r0, r0, lsl #12
87808724:	3800000c 	stmdacc	r0, {r2, r3}
87808728:	00310000 	eorseq	r0, r1, r0
8780872c:	00000600 	andeq	r0, r0, r0, lsl #12
87808730:	3800000c 	stmdacc	r0, {r2, r3}
87808734:	00300000 	eorseq	r0, r0, r0
	...
87808740:	67008061 	strvs	r8, [r0, -r1, rrx]
87808744:	80f907f8 	ldrshthi	r0, [r9], #120	; 0x78
87808748:	00806100 	addeq	r6, r0, r0, lsl #2
8780874c:	61008061 	tstvs	r0, r1, rrx
87808750:	80610080 	rsbhi	r0, r1, r0, lsl #1
87808754:	07f86700 	ldrbeq	r6, [r8, r0, lsl #14]!
87808758:	610080f9 	strdvs	r8, [r0, -r9]
8780875c:	00000080 	andeq	r0, r0, r0, lsl #1
87808760:	00000000 	andeq	r0, r0, r0
87808764:	c0010000 	andgt	r0, r1, r0
87808768:	f0e003e0 			; <UNDEFINED> instruction: 0xf0e003e0
8780876c:	04083006 	streq	r3, [r8], #-6
87808770:	ff1f0818 			; <UNDEFINED> instruction: 0xff1f0818
87808774:	080e04fe 	stmdaeq	lr, {r1, r2, r3, r4, r5, r6, r7, sl}
87808778:	03f08707 	mvnseq	r8, #1835008	; 0x1c0000
8780877c:	0000e081 	andeq	lr, r0, r1, lsl #1
87808780:	00000000 	andeq	r0, r0, r0
87808784:	0600f001 	streq	pc, [r0], -r1
87808788:	0404000c 	streq	r0, [r4], #-12
8780878c:	700c0608 	andvc	r0, ip, r8, lsl #12
87808790:	00c0f901 	sbceq	pc, r0, r1, lsl #18
87808794:	3b00000e 	blcc	878087d4 <asc2_2412+0x104>
87808798:	18ec00e0 	stmiane	ip!, {r5, r6, r7}^
8780879c:	04080807 	streq	r0, [r8], #-2055	; 0x807
878087a0:	0300180c 	movweq	r1, #2060	; 0x80c
878087a4:	000000e0 	andeq	r0, r0, r0, ror #1
878087a8:	00e00100 	rsceq	r0, r0, r0, lsl #2
878087ac:	f803f007 			; <UNDEFINED> instruction: 0xf803f007
878087b0:	081c0418 	ldmdaeq	ip, {r3, r4, sl}
878087b4:	07081704 	streq	r1, [r8, -r4, lsl #14]
878087b8:	c003d0e1 	andgt	sp, r3, r1, ror #1
878087bc:	b02300e0 	eorlt	r0, r3, r0, ror #1
878087c0:	00083c00 	andeq	r3, r8, r0, lsl #24
878087c4:	00000820 	andeq	r0, r0, r0, lsr #16
878087c8:	00000010 	andeq	r0, r0, r0, lsl r0
878087cc:	01000000 	mrseq	r0, (UNDEF: 0)
878087d0:	00310000 	eorseq	r0, r1, r0
878087d4:	00003200 	andeq	r3, r0, r0, lsl #4
878087d8:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
87808800:	ff01007f 			; <UNDEFINED> instruction: 0xff01007f
87808804:	f08007c0 			; <UNDEFINED> instruction: 0xf08007c0
87808808:	1018000c 	andsne	r0, r8, ip
8780880c:	00200400 	eoreq	r0, r0, r0, lsl #8
87808810:	00000002 	andeq	r0, r0, r2
87808814:	20000000 	andcs	r0, r0, r0
87808818:	00100200 	andseq	r0, r0, r0, lsl #4
8780881c:	18000c04 	stmdane	r0, {r2, sl, fp}
87808820:	01f08007 	mvnseq	r8, r7
87808824:	7f00c0ff 	svcvc	0x0000c0ff
	...
8780883c:	66000042 	strvs	r0, [r0], -r2, asr #32
87808840:	00660000 	rsbeq	r0, r6, r0
87808844:	00003c00 	andeq	r3, r0, r0, lsl #24
87808848:	ff030018 			; <UNDEFINED> instruction: 0xff030018
8780884c:	001800c0 	andseq	r0, r8, r0, asr #1
87808850:	00003c00 	andeq	r3, r0, r0, lsl #24
87808854:	66000066 	strvs	r0, [r0], -r6, rrx
87808858:	00420000 	subeq	r0, r2, r0
8780885c:	00000000 	andeq	r0, r0, r0
87808860:	08000008 	stmdaeq	r0, {r3}
87808864:	00080000 	andeq	r0, r8, r0
87808868:	00000800 	andeq	r0, r0, r0, lsl #16
8780886c:	ff010008 			; <UNDEFINED> instruction: 0xff010008
87808870:	000800c0 	andeq	r0, r8, r0, asr #1
87808874:	00000800 	andeq	r0, r0, r0, lsl #16
87808878:	08000008 	stmdaeq	r0, {r3}
8780887c:	00080000 	andeq	r0, r8, r0
87808880:	00000000 	andeq	r0, r0, r0
87808884:	00000100 	andeq	r0, r0, r0, lsl #2
87808888:	32000031 	andcc	r0, r0, #49	; 0x31
8780888c:	001c0000 	andseq	r0, ip, r0
	...
878088a8:	08000008 	stmdaeq	r0, {r3}
878088ac:	00080000 	andeq	r0, r8, r0
878088b0:	00000800 	andeq	r0, r0, r0, lsl #16
878088b4:	08000008 	stmdaeq	r0, {r3}
878088b8:	00080000 	andeq	r0, r8, r0
878088bc:	00000800 	andeq	r0, r0, r0, lsl #16
878088c0:	08000008 	stmdaeq	r0, {r3}
	...
878088d0:	38000038 	stmdacc	r0, {r3, r4, r5}
878088d4:	00380000 	eorseq	r0, r8, r0
	...
878088f0:	00000600 	andeq	r0, r0, r0, lsl #12
878088f4:	7000001c 	andvc	r0, r0, ip, lsl r0
878088f8:	00800100 	addeq	r0, r0, r0, lsl #2
878088fc:	3800000e 	stmdacc	r0, {r1, r2, r3}
87808900:	00c00000 	sbceq	r0, r0, r0
87808904:	1c000007 	stcne	0, cr0, [r0], {7}
87808908:	00300000 	eorseq	r0, r0, r0
	...
87808914:	ff01807f 			; <UNDEFINED> instruction: 0xff01807f
87808918:	708003e0 	addvc	r0, r0, r0, ror #7
8780891c:	04180006 	ldreq	r0, [r8], #-6
87808920:	00040800 	andeq	r0, r4, r0, lsl #16
87808924:	18000608 	stmdane	r0, {r3, r9, sl}
87808928:	01708003 	cmneq	r0, r3
8780892c:	7f00e0ff 	svcvc	0x0000e0ff
87808930:	00000080 	andeq	r0, r0, r0, lsl #1
87808934:	00000000 	andeq	r0, r0, r0
87808938:	00010000 	andeq	r0, r1, r0
8780893c:	08000108 	stmdaeq	r0, {r3, r8}
87808940:	03080001 	movweq	r0, #32769	; 0x8001
87808944:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808948:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
8780894c:	00080000 	andeq	r0, r8, r0
87808950:	00000800 	andeq	r0, r0, r0, lsl #16
87808954:	00000000 	andeq	r0, r0, r0
87808958:	01000000 	mrseq	r0, (UNDEF: 0)
8780895c:	c00238c0 	andgt	r3, r2, r0, asr #17
87808960:	98000458 	stmdals	r0, {r3, r4, r6, sl}
87808964:	04180104 	ldreq	r0, [r8], #-260	; 0x104
87808968:	04041802 	streq	r1, [r4], #-2050	; 0x802
8780896c:	181c0618 	ldmdane	ip, {r3, r4, r9, sl}
87808970:	0118f803 	tsteq	r8, r3, lsl #16
87808974:	0000f8e0 	andeq	pc, r0, r0, ror #17
87808978:	00000000 	andeq	r0, r0, r0
8780897c:	01000000 	mrseq	r0, (UNDEF: 0)
87808980:	c003e0c0 	andgt	lr, r3, r0, asr #1
87808984:	080004f0 	stmdaeq	r0, {r4, r5, r6, r7, sl}
87808988:	04080804 	streq	r0, [r8], #-2052	; 0x804
8780898c:	18060808 	stmdane	r6, {r3, fp}
87808990:	18f40308 	ldmne	r4!, {r3, r8, r9}^
87808994:	00f0e701 	rscseq	lr, r0, r1, lsl #14
87808998:	0000e001 	andeq	lr, r0, r1
	...
878089a4:	0d000003 	stceq	0, cr0, [r0, #-12]
878089a8:	00110000 	andseq	r0, r1, r0
878089ac:	00006100 	andeq	r6, r0, r0, lsl #2
878089b0:	01030881 	smlabbeq	r3, r1, r8, r0
878089b4:	f8ff0708 			; <UNDEFINED> instruction: 0xf8ff0708
878089b8:	00f8ff0f 	rscseq	pc, r8, pc, lsl #30
878089bc:	01000801 	tsteq	r0, r1, lsl #16
878089c0:	00000008 	andeq	r0, r0, r8
878089c4:	00000000 	andeq	r0, r0, r0
878089c8:	fc07e000 	stc2	0, cr14, [r7], {-0}
878089cc:	080806d0 	stmdaeq	r8, {r4, r6, r7, r9, sl}
878089d0:	06081006 	streq	r1, [r8], -r6
878089d4:	10060810 	andne	r0, r6, r0, lsl r8
878089d8:	38180608 	ldmdacc	r8, {r3, r9, sl}
878089dc:	06f00f06 	ldrbteq	r0, [r0], r6, lsl #30
878089e0:	0000c007 	andeq	ip, r0, r7
	...
878089ec:	ff01803f 			; <UNDEFINED> instruction: 0xff01803f
878089f0:	308403e0 	addcc	r0, r4, r0, ror #7
878089f4:	04180802 	ldreq	r0, [r8], #-2050	; 0x802
878089f8:	10040810 	andne	r0, r4, r0, lsl r8
878089fc:	08100408 	ldmdaeq	r0, {r3, sl}
87808a00:	03101807 	tsteq	r0, #458752	; 0x70000
87808a04:	0700f00f 	streq	pc, [r0, -pc]
87808a08:	000000c0 	andeq	r0, r0, r0, asr #1
87808a0c:	00000000 	andeq	r0, r0, r0
87808a10:	c0030000 	andgt	r0, r3, r0
87808a14:	00000700 	andeq	r0, r0, r0, lsl #14
87808a18:	06000006 	streq	r0, [r0], -r6
87808a1c:	0706f800 	streq	pc, [r6, -r0, lsl #16]
87808a20:	001806f8 			; <UNDEFINED> instruction: 0x001806f8
87808a24:	0700e006 	streq	lr, [r0, -r6]
87808a28:	00060000 	andeq	r0, r6, r0
87808a2c:	00000000 	andeq	r0, r0, r0
87808a30:	01000000 	mrseq	r0, (UNDEF: 0)
87808a34:	f703e0e1 			; <UNDEFINED> instruction: 0xf703e0e1
87808a38:	103406f0 	ldrshtne	r0, [r4], -r0
87808a3c:	04081804 	streq	r1, [r8], #-2052	; 0x804
87808a40:	0c040818 	stceq	8, cr0, [r4], {24}
87808a44:	080c0408 	stmdaeq	ip, {r3, sl}
87808a48:	03181606 	tsteq	r8, #6291456	; 0x600000
87808a4c:	c101f0f3 	strdgt	pc, [r1, -r3]
87808a50:	000000e0 	andeq	r0, r0, r0, ror #1
87808a54:	00000000 	andeq	r0, r0, r0
87808a58:	fc0300f8 	stc2	0, cr0, [r3], {248}	; 0xf8
87808a5c:	38060330 	stmdacc	r6, {r4, r5, r8, r9}
87808a60:	04080204 	streq	r0, [r8], #-516	; 0x204
87808a64:	02040802 	andeq	r0, r4, #131072	; 0x20000
87808a68:	10040408 	andne	r0, r4, r8, lsl #8
87808a6c:	01f00803 	mvnseq	r0, r3, lsl #16
87808a70:	7f00c0ff 	svcvc	0x0000c0ff
	...
87808a88:	70003870 	andvc	r3, r0, r0, ror r8
87808a8c:	38700038 	ldmdacc	r0!, {r3, r4, r5}^
	...
87808aac:	30001a30 	andcc	r1, r0, r0, lsr sl
87808ab0:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
87808ac4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
87808ac8:	00140000 	andseq	r0, r4, r0
87808acc:	00002200 	andeq	r2, r0, r0, lsl #4
87808ad0:	80000041 	andhi	r0, r0, r1, asr #32
87808ad4:	40000180 	andmi	r0, r0, r0, lsl #3
87808ad8:	04200002 	strteq	r0, [r0], #-2
87808adc:	00081000 	andeq	r1, r8, r0
87808ae0:	00000008 	andeq	r0, r0, r8
87808ae4:	00000000 	andeq	r0, r0, r0
87808ae8:	21000021 	tstcs	r0, r1, lsr #32
87808aec:	00210000 	eoreq	r0, r1, r0
87808af0:	00002100 	andeq	r2, r0, r0, lsl #2
87808af4:	21000021 	tstcs	r0, r1, lsr #32
87808af8:	00210000 	eoreq	r0, r1, r0
87808afc:	00002100 	andeq	r2, r0, r0, lsl #2
87808b00:	21000021 	tstcs	r0, r1, lsr #32
	...
87808b0c:	00080000 	andeq	r0, r8, r0
87808b10:	10000408 	andne	r0, r0, r8, lsl #8
87808b14:	01200002 	teqeq	r0, r2
87808b18:	80004000 	andhi	r4, r0, r0
87808b1c:	00410080 	subeq	r0, r1, r0, lsl #1
87808b20:	00002200 	andeq	r2, r0, r0, lsl #4
87808b24:	08000014 	stmdaeq	r0, {r2, r4}
87808b28:	00000000 	andeq	r0, r0, r0
87808b2c:	03000000 	movweq	r0, #0
87808b30:	c00400c0 	andgt	r0, r4, r0, asr #1
87808b34:	00000400 	andeq	r0, r0, r0, lsl #8
87808b38:	08380008 	ldmdaeq	r8!, {r3}
87808b3c:	0808380f 	stmdaeq	r8, {r0, r1, r2, r3, fp, ip, sp}
87808b40:	00100838 	andseq	r0, r0, r8, lsr r8
87808b44:	0700300c 	streq	r3, [r0, -ip]
87808b48:	c00300e0 	andgt	r0, r3, r0, ror #1
	...
87808b54:	ff00803f 			; <UNDEFINED> instruction: 0xff00803f
87808b58:	708003e0 	addvc	r0, r0, r0, ror #7
87808b5c:	06100f02 	ldreq	r0, [r0], -r2, lsl #30
87808b60:	c0048870 	andgt	r8, r4, r0, ror r8
87808b64:	08830488 	stmeq	r3, {r3, r7, sl}
87808b68:	02887f04 	addeq	r7, r8, #4, 30
87808b6c:	010390c0 	smlabteq	r3, r0, r0, r9
87808b70:	40fe0020 	rscsmi	r0, lr, r0, lsr #32
87808b74:	00080000 	andeq	r0, r8, r0
87808b78:	01001800 	tsteq	r0, r0, lsl #16
87808b7c:	083e00f8 	ldmdaeq	lr!, {r3, r4, r5, r6, r7}
87808b80:	0700c201 	streq	ip, [r0, -r1, lsl #4]
87808b84:	e2070002 	and	r0, r7, #2
87808b88:	00fe0000 	rscseq	r0, lr, r0
87808b8c:	00c81f00 	sbceq	r1, r8, r0, lsl #30
87808b90:	0000f801 	andeq	pc, r0, r1, lsl #16
87808b94:	08000038 	stmdaeq	r0, {r3, r4, r5}
87808b98:	07080004 	streq	r0, [r8, -r4]
87808b9c:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808ba0:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
87808ba4:	04080804 	streq	r0, [r8], #-2052	; 0x804
87808ba8:	08040808 	stmdaeq	r4, {r3, fp}
87808bac:	08180608 	ldmdaeq	r8, {r3, r9, sl}
87808bb0:	0118f403 	tsteq	r8, r3, lsl #8
87808bb4:	0100f0e7 	smlatteq	r0, r7, r0, pc	; <UNPREDICTABLE>
87808bb8:	000000e0 	andeq	r0, r0, r0, ror #1
87808bbc:	00000000 	andeq	r0, r0, r0
87808bc0:	ff01803f 			; <UNDEFINED> instruction: 0xff01803f
87808bc4:	708003e0 	addvc	r0, r0, r0, ror #7
87808bc8:	04180002 	ldreq	r0, [r8], #-2
87808bcc:	00040800 	andeq	r0, r4, r0, lsl #16
87808bd0:	08000408 	stmdaeq	r0, {r3, sl}
87808bd4:	06100004 	ldreq	r0, [r0], -r4
87808bd8:	80072000 	andhi	r2, r7, r0
87808bdc:	000000c0 	andeq	r0, r0, r0, asr #1
87808be0:	07080004 	streq	r0, [r8, -r4]
87808be4:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808be8:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808bec:	04080004 	streq	r0, [r8], #-4
87808bf0:	00040800 	andeq	r0, r4, r0, lsl #16
87808bf4:	10000218 	andne	r0, r0, r8, lsl r2
87808bf8:	01708003 	cmneq	r0, r3
87808bfc:	7f00e0ff 	svcvc	0x0000e0ff
87808c00:	00000080 	andeq	r0, r0, r0, lsl #1
87808c04:	07080004 	streq	r0, [r8, -r4]
87808c08:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808c0c:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
87808c10:	04080804 	streq	r0, [r8], #-2052	; 0x804
87808c14:	08040808 	stmdaeq	r4, {r3, fp}
87808c18:	083e0408 	ldmdaeq	lr!, {r3, sl}
87808c1c:	06080004 	streq	r0, [r8], -r4
87808c20:	00011800 	andeq	r1, r1, r0, lsl #16
87808c24:	00000060 	andeq	r0, r0, r0, rrx
87808c28:	07080004 	streq	r0, [r8, -r4]
87808c2c:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808c30:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
87808c34:	04000804 	streq	r0, [r0], #-2052	; 0x804
87808c38:	08040008 	stmdaeq	r4, {r3}
87808c3c:	003e0400 	eorseq	r0, lr, r0, lsl #8
87808c40:	06000006 	streq	r0, [r0], -r6
87808c44:	80010000 	andhi	r0, r1, r0
	...
87808c50:	ff01803f 			; <UNDEFINED> instruction: 0xff01803f
87808c54:	708003e0 	addvc	r0, r0, r0, ror #7
87808c58:	04180006 	ldreq	r0, [r8], #-6
87808c5c:	02040800 	andeq	r0, r4, #0, 16
87808c60:	08020408 	stmdaeq	r2, {r3, sl}
87808c64:	07f00302 	ldrbeq	r0, [r0, r2, lsl #6]!
87808c68:	0200f083 	andeq	pc, r0, #131	; 0x83
87808c6c:	00020000 	andeq	r0, r2, r0
87808c70:	07080004 	streq	r0, [r8, -r4]
87808c74:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808c78:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
87808c7c:	00000800 	andeq	r0, r0, r0, lsl #16
87808c80:	08000008 	stmdaeq	r0, {r3}
87808c84:	00080000 	andeq	r0, r8, r0
87808c88:	07080804 	streq	r0, [r8, -r4, lsl #16]
87808c8c:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808c90:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808c94:	00000000 	andeq	r0, r0, r0
87808c98:	00040000 	andeq	r0, r4, r0
87808c9c:	08000408 	stmdaeq	r0, {r3, sl}
87808ca0:	07080004 	streq	r0, [r8, -r4]
87808ca4:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808ca8:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808cac:	04080004 	streq	r0, [r8], #-4
87808cb0:	00000800 	andeq	r0, r0, r0, lsl #16
	...
87808cbc:	00000600 	andeq	r0, r0, r0, lsl #12
87808cc0:	01000007 	tsteq	r0, r7
87808cc4:	04010004 	streq	r0, [r1], #-4
87808cc8:	00040100 	andeq	r0, r4, r0, lsl #2
87808ccc:	feff0703 	cdp2	7, 15, cr0, cr15, cr3, {0}
87808cd0:	04fcff07 	ldrbteq	pc, [ip], #3847	; 0xf07	; <UNPREDICTABLE>
87808cd4:	00040000 	andeq	r0, r4, r0
87808cd8:	00000400 	andeq	r0, r0, r0, lsl #8
87808cdc:	07080004 	streq	r0, [r8, -r4]
87808ce0:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808ce4:	080c04f8 	stmdaeq	ip, {r3, r4, r5, r6, r7, sl}
87808ce8:	00001800 	andeq	r1, r0, r0, lsl #16
87808cec:	c704003e 	smladxgt	r4, lr, r0, r0
87808cf0:	c8030580 	stmdagt	r3, {r7, r8, sl}
87808cf4:	04f80006 	ldrbteq	r0, [r8], #6
87808cf8:	00043800 	andeq	r3, r4, r0, lsl #16
87808cfc:	08000018 	stmdaeq	r0, {r3, r4}
87808d00:	07080004 	streq	r0, [r8, -r4]
87808d04:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808d08:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808d0c:	00080000 	andeq	r0, r8, r0
87808d10:	00000800 	andeq	r0, r0, r0, lsl #16
87808d14:	08000008 	stmdaeq	r0, {r3}
87808d18:	00080000 	andeq	r0, r8, r0
87808d1c:	00001800 	andeq	r1, r0, r0, lsl #16
87808d20:	00000060 	andeq	r0, r0, r0, rrx
87808d24:	07080004 	streq	r0, [r8, -r4]
87808d28:	8007f8ff 	strdhi	pc, [r7], -pc	; <UNPREDICTABLE>
87808d2c:	00fc0708 	rscseq	r0, ip, r8, lsl #14
87808d30:	00c07f00 	sbceq	r7, r0, r0, lsl #30
87808d34:	0700f803 	streq	pc, [r0, -r3, lsl #16]
87808d38:	007800c0 	rsbseq	r0, r8, r0, asr #1
87808d3c:	07088007 	streq	r8, [r8, -r7]
87808d40:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808d44:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808d48:	07080004 	streq	r0, [r8, -r4]
87808d4c:	0007f8ff 	strdeq	pc, [r7], -pc	; <UNPREDICTABLE>
87808d50:	00c00308 	sbceq	r0, r0, r8, lsl #6
87808d54:	0000e000 	andeq	lr, r0, r0
87808d58:	1e000038 	mcrne	0, 0, r0, cr0, cr8, {1}
87808d5c:	00070000 	andeq	r0, r7, r0
87808d60:	04c00100 	strbeq	r0, [r0], #256	; 0x100
87808d64:	ff07f000 			; <UNDEFINED> instruction: 0xff07f000
87808d68:	000004f8 	strdeq	r0, [r0], -r8
87808d6c:	00000000 	andeq	r0, r0, r0
87808d70:	ff01807f 			; <UNDEFINED> instruction: 0xff01807f
87808d74:	708003e0 	addvc	r0, r0, r0, ror #7
87808d78:	04180006 	ldreq	r0, [r8], #-6
87808d7c:	00040800 	andeq	r0, r4, r0, lsl #16
87808d80:	18000608 	stmdane	r0, {r3, r9, sl}
87808d84:	01300003 	teqeq	r0, r3
87808d88:	7f00e0ff 	svcvc	0x0000e0ff
87808d8c:	00000080 	andeq	r0, r0, r0, lsl #1
87808d90:	07080004 	streq	r0, [r8, -r4]
87808d94:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808d98:	080404f8 	stmdaeq	r4, {r3, r4, r5, r6, r7, sl}
87808d9c:	04000404 	streq	r0, [r0], #-1028	; 0x404
87808da0:	04040004 	streq	r0, [r4], #-4
87808da4:	00040400 	andeq	r0, r4, r0, lsl #8
87808da8:	03000c06 	movweq	r0, #3078	; 0xc06
87808dac:	f00100f8 			; <UNDEFINED> instruction: 0xf00100f8
	...
87808db8:	ff01807f 			; <UNDEFINED> instruction: 0xff01807f
87808dbc:	708003e0 	addvc	r0, r0, r0, ror #7
87808dc0:	04880006 	streq	r0, [r8], #6
87808dc4:	00048800 	andeq	r8, r4, r0, lsl #16
87808dc8:	3c0006c8 	stccc	6, cr0, [r0], {200}	; 0xc8
87808dcc:	013e0003 	teqeq	lr, r3
87808dd0:	7f00e6ff 	svcvc	0x0000e6ff
87808dd4:	00000084 	andeq	r0, r0, r4, lsl #1
87808dd8:	07080004 	streq	r0, [r8, -r4]
87808ddc:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808de0:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
87808de4:	04000804 	streq	r0, [r0], #-2052	; 0x804
87808de8:	0f04000c 	svceq	0x0004000c
87808dec:	c00b0400 	andgt	r0, fp, r0, lsl #8
87808df0:	03f01006 	mvnseq	r1, #6
87808df4:	e00138f0 	strd	r3, [r1], -r0
87808df8:	08000008 	stmdaeq	r0, {r3}
87808dfc:	01000000 	mrseq	r0, (UNDEF: 0)
87808e00:	f003f8e0 			; <UNDEFINED> instruction: 0xf003f8e0
87808e04:	10300630 	eorsne	r0, r0, r0, lsr r6
87808e08:	04081804 	streq	r1, [r8], #-2052	; 0x804
87808e0c:	0c040818 	stceq	8, cr0, [r4], {24}
87808e10:	080c0408 	stmdaeq	ip, {r3, sl}
87808e14:	02180602 	andseq	r0, r8, #2097152	; 0x200000
87808e18:	8107f007 	tsthi	r7, r7
87808e1c:	000000e0 	andeq	r0, r0, r0, ror #1
87808e20:	06008001 	streq	r8, [r0], -r1
87808e24:	00040000 	andeq	r0, r4, r0
87808e28:	00000400 	andeq	r0, r0, r0, lsl #8
87808e2c:	07080004 	streq	r0, [r8, -r4]
87808e30:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808e34:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808e38:	04000004 	streq	r0, [r0], #-4
87808e3c:	00060000 	andeq	r0, r6, r0
87808e40:	00800100 	addeq	r0, r0, r0, lsl #2
87808e44:	07000004 	streq	r0, [r0, -r4]
87808e48:	ff07e0ff 			; <UNDEFINED> instruction: 0xff07e0ff
87808e4c:	180004f0 	stmdane	r0, {r4, r5, r6, r7, sl}
87808e50:	00080000 	andeq	r0, r8, r0
87808e54:	00000800 	andeq	r0, r0, r0, lsl #16
87808e58:	08000008 	stmdaeq	r0, {r3}
87808e5c:	04080000 	streq	r0, [r8], #-0
87808e60:	ff071000 			; <UNDEFINED> instruction: 0xff071000
87808e64:	000004e0 	andeq	r0, r0, r0, ror #9
87808e68:	06000004 	streq	r0, [r0], -r4
87808e6c:	e0070000 	and	r0, r7, r0
87808e70:	00fe0700 	rscseq	r0, lr, r0, lsl #14
87808e74:	00e01f04 	rsceq	r1, r0, r4, lsl #30
87808e78:	0000f801 	andeq	pc, r0, r1, lsl #16
87808e7c:	e0010038 	and	r0, r1, r8, lsr r0
87808e80:	07003e04 	streq	r3, [r0, -r4, lsl #28]
87808e84:	000600c0 	andeq	r0, r6, r0, asr #1
87808e88:	00000400 	andeq	r0, r0, r0, lsl #8
87808e8c:	07000004 	streq	r0, [r0, -r4]
87808e90:	ff0700e0 			; <UNDEFINED> instruction: 0xff0700e0
87808e94:	f81f04c0 			; <UNDEFINED> instruction: 0xf81f04c0
87808e98:	07c00700 	strbeq	r0, [r0, r0, lsl #14]
87808e9c:	ff0700f8 			; <UNDEFINED> instruction: 0xff0700f8
87808ea0:	f83f0480 			; <UNDEFINED> instruction: 0xf83f0480
87808ea4:	04c00700 	strbeq	r0, [r0], #1792	; 0x700
87808ea8:	000700f8 	strdeq	r0, [r7], -r8
87808eac:	00000400 	andeq	r0, r0, r0, lsl #8
87808eb0:	04000000 	streq	r0, [r0], #-0
87808eb4:	00060800 	andeq	r0, r6, r0, lsl #16
87808eb8:	78c00718 	stmiavc	r0, {r3, r4, r8, r9, sl}^
87808ebc:	00c8f105 	sbceq	pc, r8, r5, lsl #2
87808ec0:	1f00003e 	svcne	0x0000003e
87808ec4:	e8630480 	stmda	r3!, {r7, sl}^
87808ec8:	06f88007 	ldrbteq	r8, [r8], r7
87808ecc:	00041800 	andeq	r1, r4, r0, lsl #16
87808ed0:	00000008 	andeq	r0, r0, r8
87808ed4:	06000004 	streq	r0, [r0], -r4
87808ed8:	80070000 	andhi	r0, r7, r0
87808edc:	08e00700 	stmiaeq	r0!, {r8, r9, sl}^
87808ee0:	00087c04 	andeq	r7, r8, r4, lsl #24
87808ee4:	0700f81f 	smuadeq	r0, pc, r8	; <UNPREDICTABLE>
87808ee8:	081800f8 	ldmdaeq	r8, {r3, r4, r5, r6, r7}
87808eec:	0708e004 	streq	lr, [r8, -r4]
87808ef0:	00060000 	andeq	r0, r6, r0
87808ef4:	00000400 	andeq	r0, r0, r0, lsl #8
87808ef8:	01000000 	mrseq	r0, (UNDEF: 0)
87808efc:	00060800 	andeq	r0, r6, r0, lsl #16
87808f00:	f8000438 			; <UNDEFINED> instruction: 0xf8000438
87808f04:	04e80304 	strbteq	r0, [r8], #772	; 0x304
87808f08:	7c04080f 	stcvc	8, cr0, [r4], {15}
87808f0c:	08f00508 	ldmeq	r0!, {r3, r8, sl}^
87808f10:	0708c007 	streq	ip, [r8, -r7]
87808f14:	00041800 	andeq	r1, r4, r0, lsl #16
87808f18:	00000060 	andeq	r0, r0, r0, rrx
	...
87808f28:	3f000000 	svccc	0x00000000
87808f2c:	0020feff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
87808f30:	02002002 	andeq	r2, r0, #2
87808f34:	20020020 	andcs	r0, r2, r0, lsr #32
87808f38:	00200200 	eoreq	r0, r0, r0, lsl #4
87808f3c:	00000002 	andeq	r0, r0, r2
87808f40:	00000000 	andeq	r0, r0, r0
87808f44:	00080000 	andeq	r0, r8, r0
87808f48:	00000700 	andeq	r0, r0, r0, lsl #14
87808f4c:	0000c000 	andeq	ip, r0, r0
87808f50:	06000038 			; <UNDEFINED> instruction: 0x06000038
87808f54:	c0010000 	andgt	r0, r1, r0
87808f58:	00300000 	eorseq	r0, r0, r0
87808f5c:	00000e00 	andeq	r0, r0, r0, lsl #28
87808f60:	00000001 	andeq	r0, r0, r1
87808f64:	00000000 	andeq	r0, r0, r0
87808f68:	00200000 	eoreq	r0, r0, r0
87808f6c:	02002002 	andeq	r2, r0, #2
87808f70:	20020020 	andcs	r0, r2, r0, lsr #32
87808f74:	00200200 	eoreq	r0, r0, r0, lsl #4
87808f78:	feff3f02 	cdp2	15, 15, cr3, cr15, cr2, {0}
	...
87808f90:	00000800 	andeq	r0, r0, r0, lsl #16
87808f94:	30000010 	andcc	r0, r0, r0, lsl r0
87808f98:	00200000 	eoreq	r0, r0, r0
87808f9c:	00003000 	andeq	r3, r0, r0
87808fa0:	08000010 	stmdaeq	r0, {r4}
	...
87808fac:	00010000 	andeq	r0, r1, r0
87808fb0:	00000100 	andeq	r0, r0, r0, lsl #2
87808fb4:	01000001 	tsteq	r0, r1
87808fb8:	00010000 	andeq	r0, r1, r0
87808fbc:	00000100 	andeq	r0, r0, r0, lsl #2
87808fc0:	01000001 	tsteq	r0, r1
87808fc4:	00010000 	andeq	r0, r1, r0
87808fc8:	00000100 	andeq	r0, r0, r0, lsl #2
87808fcc:	01000001 	tsteq	r0, r1
	...
87808fd8:	00002000 	andeq	r2, r0, r0
87808fdc:	10000020 	andne	r0, r0, r0, lsr #32
87808fe0:	00100000 	andseq	r0, r0, r0
	...
87808ff8:	1900f000 	stmdbne	r0, {ip, sp, lr, pc}
87808ffc:	181b00f8 	ldmdane	fp, {r3, r4, r5, r6, r7}
87809000:	00082200 	andeq	r2, r8, r0, lsl #4
87809004:	24000826 	strcs	r0, [r0], #-2086	; 0x826
87809008:	10240008 	eorne	r0, r4, r8
8780900c:	00f83f00 	rscseq	r3, r8, r0, lsl #30
87809010:	0000f81f 	andeq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
87809014:	18000008 	stmdane	r0, {r3}
87809018:	04000000 	streq	r0, [r0], #-0
8780901c:	ff070000 			; <UNDEFINED> instruction: 0xff070000
87809020:	f0ff0ff8 			; <UNDEFINED> instruction: 0xf0ff0ff8
87809024:	00181800 	andseq	r1, r8, r0, lsl #16
87809028:	20000810 	andcs	r0, r0, r0, lsl r8
8780902c:	08200008 	stmdaeq	r0!, {r3}
87809030:	00183000 	andseq	r3, r8, r0
87809034:	0f00f01f 	svceq	0x0000f01f
87809038:	000000c0 	andeq	r0, r0, r0, asr #1
8780903c:	00000000 	andeq	r0, r0, r0
87809040:	1f00c007 	svcne	0x0000c007
87809044:	301800f0 	ldrshcc	r0, [r8], -r0	; <UNPREDICTABLE>
87809048:	00082000 	andeq	r2, r8, r0
8780904c:	20000820 	andcs	r0, r0, r0, lsr #16
87809050:	083c0008 	ldmdaeq	ip!, {r3}
87809054:	00101c00 	andseq	r1, r0, r0, lsl #24
87809058:	00006000 	andeq	r6, r0, r0
	...
87809064:	1f00c007 	svcne	0x0000c007
87809068:	183800f0 	ldmdane	r8!, {r4, r5, r6, r7}
8780906c:	00082000 	andeq	r2, r8, r0
87809070:	20000820 	andcs	r0, r0, r0, lsr #16
87809074:	10100408 	andsne	r0, r0, r8, lsl #8
87809078:	0ff8ff07 	svceq	0x00f8ff07
8780907c:	0000f0ff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
87809080:	00000010 	andeq	r0, r0, r0, lsl r0
87809084:	00000000 	andeq	r0, r0, r0
87809088:	07000000 	streq	r0, [r0, -r0]
8780908c:	f01f00c0 			; <UNDEFINED> instruction: 0xf01f00c0
87809090:	00301200 	eorseq	r1, r0, r0, lsl #4
87809094:	22001822 	andcs	r1, r0, #2228224	; 0x220000
87809098:	08220008 	stmdaeq	r2!, {r3}
8780909c:	00083200 	andeq	r3, r8, r0, lsl #4
878090a0:	0e00101e 	mcreq	0, 0, r1, cr0, cr14, {0}
878090a4:	00000020 	andeq	r0, r0, r0, lsr #32
878090a8:	00000000 	andeq	r0, r0, r0
878090ac:	20000020 	andcs	r0, r0, r0, lsr #32
878090b0:	08200008 	stmdaeq	r0!, {r3}
878090b4:	03f8ff01 	mvnseq	pc, #1, 30
878090b8:	2006f8ff 	strdcs	pc, [r6], -pc	; <UNPREDICTABLE>
878090bc:	08200408 	stmdaeq	r0!, {r3, sl}
878090c0:	07082004 	streq	r2, [r8, -r4]
878090c4:	00030020 	andeq	r0, r3, r0, lsr #32
	...
878090d0:	0e000e00 	cdpeq	14, 0, cr0, cr0, cr0, {0}
878090d4:	f31f006e 	vhadd.u16	q0, <illegal reg q7.5>, q15
878090d8:	00b13100 	adcseq	r3, r1, r0, lsl #2
878090dc:	2000b120 	andcs	fp, r0, r0, lsr #2
878090e0:	913100b1 	ldrhls	r0, [r1, -r1]!
878090e4:	00131f00 	andseq	r1, r3, r0, lsl #30
878090e8:	20001e2e 	andcs	r1, r0, lr, lsr #28
878090ec:	0030000e 	eorseq	r0, r0, lr
878090f0:	04000000 	streq	r0, [r0], #-0
878090f4:	ff070800 			; <UNDEFINED> instruction: 0xff070800
878090f8:	f8ff0ff8 			; <UNDEFINED> instruction: 0xf8ff0ff8
878090fc:	00081000 	andeq	r1, r8, r0
87809100:	20000020 	andcs	r0, r0, r0, lsr #32
87809104:	08200000 	stmdaeq	r0!, {}	; <UNPREDICTABLE>
87809108:	00f83f00 	rscseq	r3, r8, r0, lsl #30
8780910c:	0000f81f 	andeq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
87809110:	00000008 	andeq	r0, r0, r8
87809114:	00000000 	andeq	r0, r0, r0
87809118:	20000000 	andcs	r0, r0, r0
8780911c:	08200008 	stmdaeq	r0!, {r3}
87809120:	06082000 	streq	r2, [r8], -r0
87809124:	3f06f83f 	svccc	0x0006f83f
87809128:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
8780912c:	00080000 	andeq	r0, r8, r0
87809130:	00000800 	andeq	r0, r0, r0, lsl #16
	...
87809140:	03000003 	movweq	r0, #3
87809144:	00012000 	andeq	r2, r1, r0
87809148:	20000120 	andcs	r0, r0, r0, lsr #2
8780914c:	fe3f0603 	cdp2	6, 3, cr0, cr15, cr3, {0}
87809150:	00fc3f06 	rscseq	r3, ip, r6, lsl #30
	...
8780915c:	04000000 	streq	r0, [r0], #-0
87809160:	ff070800 			; <UNDEFINED> instruction: 0xff070800
87809164:	f8ff0ff8 			; <UNDEFINED> instruction: 0xf8ff0ff8
87809168:	00880100 	addeq	r0, r8, r0, lsl #2
8780916c:	2f000003 	svccs	0x00000003
87809170:	f83800c0 			; <UNDEFINED> instruction: 0xf83800c0
87809174:	00382000 	eorseq	r2, r8, r0
87809178:	00000820 	andeq	r0, r0, r0, lsr #16
8780917c:	00000008 	andeq	r0, r0, r8
87809180:	00000000 	andeq	r0, r0, r0
87809184:	00040000 	andeq	r0, r4, r0
87809188:	08000408 	stmdaeq	r0, {r3, sl}
8780918c:	07080004 	streq	r0, [r8, -r4]
87809190:	ff0ff8ff 			; <UNDEFINED> instruction: 0xff0ff8ff
87809194:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
87809198:	00080000 	andeq	r0, r8, r0
8780919c:	00000800 	andeq	r0, r0, r0, lsl #16
878091a0:	00000000 	andeq	r0, r0, r0
878091a4:	00082000 	andeq	r2, r8, r0
878091a8:	3f00f83f 	svccc	0x0000f83f
878091ac:	081000f8 	ldmdaeq	r0, {r3, r4, r5, r6, r7}
878091b0:	00002000 	andeq	r2, r0, r0
878091b4:	3f00f83f 	svccc	0x0000f83f
878091b8:	081000f8 	ldmdaeq	r0, {r3, r4, r5, r6, r7}
878091bc:	00002000 	andeq	r2, r0, r0
878091c0:	3f00f83f 	svccc	0x0000f83f
878091c4:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
878091c8:	00000000 	andeq	r0, r0, r0
878091cc:	3f000820 	svccc	0x00000820
878091d0:	f83f00f8 			; <UNDEFINED> instruction: 0xf83f00f8
878091d4:	00081000 	andeq	r1, r8, r0
878091d8:	20000010 	andcs	r0, r0, r0, lsl r0
878091dc:	08200000 	stmdaeq	r0!, {}	; <UNPREDICTABLE>
878091e0:	00f83f00 	rscseq	r3, r8, r0, lsl #30
878091e4:	0000f81f 	andeq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
878091e8:	00000008 	andeq	r0, r0, r8
878091ec:	00000000 	andeq	r0, r0, r0
878091f0:	0f00c007 	svceq	0x0000c007
878091f4:	301800f0 	ldrshcc	r0, [r8], -r0	; <UNPREDICTABLE>
878091f8:	00083000 	andeq	r3, r8, r0
878091fc:	20000820 	andcs	r0, r0, r0, lsr #16
87809200:	08300008 	ldmdaeq	r0!, {r3}
87809204:	00301800 	eorseq	r1, r0, r0, lsl #16
87809208:	0700f00f 	streq	pc, [r0, -pc]
8780920c:	000000c0 	andeq	r0, r0, r0, asr #1
87809210:	00000000 	andeq	r0, r0, r0
87809214:	3f000120 	svccc	0x00000120
87809218:	ff3f00ff 			; <UNDEFINED> instruction: 0xff3f00ff
8780921c:	00111000 	andseq	r1, r1, r0
87809220:	20000920 	andcs	r0, r0, r0, lsr #18
87809224:	08200008 	stmdaeq	r0!, {r3}
87809228:	00383000 	eorseq	r3, r8, r0
8780922c:	0f00f01f 	svceq	0x0000f01f
87809230:	000000c0 	andeq	r0, r0, r0, asr #1
87809234:	00000000 	andeq	r0, r0, r0
87809238:	1f00c007 	svcne	0x0000c007
8780923c:	183800f0 	ldmdane	r8!, {r4, r5, r6, r7}
87809240:	00082000 	andeq	r2, r8, r0
87809244:	20000820 	andcs	r0, r0, r0, lsr #16
87809248:	11100009 	tstne	r0, r9
8780924c:	00ff1f00 	rscseq	r1, pc, r0, lsl #30
87809250:	0000ff3f 	andeq	pc, r0, pc, lsr pc	; <UNPREDICTABLE>
87809254:	00000001 	andeq	r0, r0, r1
87809258:	00082000 	andeq	r2, r8, r0
8780925c:	20000820 	andcs	r0, r0, r0, lsr #16
87809260:	f83f0008 			; <UNDEFINED> instruction: 0xf83f0008
87809264:	00f83f00 	rscseq	r3, r8, r0, lsl #30
87809268:	10000808 	andne	r0, r0, r8, lsl #16
8780926c:	08200008 	stmdaeq	r0!, {r3}
87809270:	00002000 	andeq	r2, r0, r0
87809274:	30000030 	andcc	r0, r0, r0, lsr r0
	...
87809280:	0c000000 	stceq	0, cr0, [r0], {-0}
87809284:	181e0078 	ldmdane	lr, {r3, r4, r5, r6}
87809288:	00083300 	andeq	r3, r8, r0, lsl #6
8780928c:	21000823 	tstcs	r0, r3, lsr #16
87809290:	88210008 	stmdahi	r1!, {r3}
87809294:	00982100 	addseq	r2, r8, r0, lsl #2
87809298:	3800f030 	stmdacc	r0, {r4, r5, ip, sp, lr, pc}
8780929c:	00000060 	andeq	r0, r0, r0, rrx
878092a0:	00000000 	andeq	r0, r0, r0
878092a4:	20000020 	andcs	r0, r0, r0, lsr #32
878092a8:	00200000 	eoreq	r0, r0, r0
878092ac:	03f0ff00 	mvnseq	pc, #0, 30
878092b0:	2000f8ff 	strdcs	pc, [r0], -pc	; <UNPREDICTABLE>
878092b4:	08200008 	stmdaeq	r0!, {r3}
878092b8:	00082000 	andeq	r2, r8, r0
878092bc:	00003000 	andeq	r3, r0, r0
	...
878092c8:	3f000020 	svccc	0x00000020
878092cc:	f87f00f0 			; <UNDEFINED> instruction: 0xf87f00f0
878092d0:	00180000 	andseq	r0, r8, r0
878092d4:	00000800 	andeq	r0, r0, r0, lsl #16
878092d8:	10200008 	eorne	r0, r0, r8
878092dc:	00f83f00 	rscseq	r3, r8, r0, lsl #30
878092e0:	0000f07f 	andeq	pc, r0, pc, ror r0	; <UNPREDICTABLE>
878092e4:	00000010 	andeq	r0, r0, r0, lsl r0
878092e8:	00000000 	andeq	r0, r0, r0
878092ec:	30000020 	andcc	r0, r0, r0, lsr #32
878092f0:	003c0000 	eorseq	r0, ip, r0
878092f4:	00803f00 	addeq	r3, r0, r0, lsl #30
878092f8:	0000f023 	andeq	pc, r0, r3, lsr #32
878092fc:	70000078 	andvc	r0, r0, r8, ror r0
87809300:	00802300 	addeq	r2, r0, r0, lsl #6
87809304:	3000003c 	andcc	r0, r0, ip, lsr r0
87809308:	00200000 	eoreq	r0, r0, r0
8780930c:	00002000 	andeq	r2, r0, r0
87809310:	3f00003c 	svccc	0x0000003c
87809314:	f82300e0 			; <UNDEFINED> instruction: 0xf82300e0
87809318:	00e00000 	rsceq	r0, r0, r0
8780931c:	3e000027 	cdpcc	0, 0, cr0, cr0, cr7, {1}
87809320:	e03f0000 	eors	r0, pc, r0
87809324:	00f82100 	rscseq	r2, r8, r0, lsl #2
87809328:	3e00e001 	cdpcc	0, 0, cr14, cr0, cr1, {0}
8780932c:	00200000 	eoreq	r0, r0, r0
87809330:	00000000 	andeq	r0, r0, r0
87809334:	20000820 	andcs	r0, r0, r0, lsr #16
87809338:	38380008 	ldmdacc	r8!, {r3}
8780933c:	00683e00 	rsbeq	r3, r8, r0, lsl #28
87809340:	03008027 	movweq	r8, #39	; 0x27
87809344:	f82c00c8 			; <UNDEFINED> instruction: 0xf82c00c8
87809348:	00383800 	eorseq	r3, r8, r0, lsl #16
8780934c:	20001820 	andcs	r1, r0, r0, lsr #16
87809350:	00000008 	andeq	r0, r0, r8
87809354:	00000000 	andeq	r0, r0, r0
87809358:	30000020 	andcc	r0, r0, r0, lsr #32
8780935c:	013c0003 	teqeq	ip, r3
87809360:	00833f00 	addeq	r3, r3, r0, lsl #30
87809364:	0000ec23 	andeq	lr, r0, r3, lsr #24
87809368:	80230070 	eorhi	r0, r3, r0, ror r0
8780936c:	00003c00 	andeq	r3, r0, r0, lsl #24
87809370:	20000020 	andcs	r0, r0, r0, lsr #32
	...
8780937c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
87809380:	38200008 	stmdacc	r0!, {r3}
87809384:	00f82000 	rscseq	r2, r8, r0
87809388:	2f00e823 	svccs	0x0000e823
8780938c:	083e0088 	ldmdaeq	lr!, {r3, r7}
87809390:	00083800 	andeq	r3, r8, r0, lsl #16
87809394:	00001820 	andeq	r1, r0, r0, lsr #16
87809398:	00000070 	andeq	r0, r0, r0, ror r0
	...
878093ac:	14000008 	strne	r0, [r0], #-8
878093b0:	fcf71f00 	ldc2l	15, cr1, [r7]
878093b4:	20060030 	andcs	r0, r6, r0, lsr r0
878093b8:	00000200 	andeq	r0, r0, r0, lsl #4
	...
878093d0:	ffff0000 			; <UNDEFINED> instruction: 0xffff0000
878093d4:	000000ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
	...
878093e8:	00200000 	eoreq	r0, r0, r0
878093ec:	06003002 	streq	r3, [r0], -r2
878093f0:	00fcf71f 	rscseq	pc, ip, pc, lsl r7	; <UNPREDICTABLE>
878093f4:	08000014 	stmdaeq	r0, {r2, r4}
	...
87809408:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
8780940c:	00600000 	rsbeq	r0, r0, r0
87809410:	00004000 	andeq	r4, r0, r0
87809414:	20000040 	andcs	r0, r0, r0, asr #32
87809418:	00100000 	andseq	r0, r0, r0
8780941c:	00000800 	andeq	r0, r0, r0, lsl #16
87809420:	04000004 	streq	r0, [r0], #-4
87809424:	000c0000 	andeq	r0, ip, r0
87809428:	00001000 	andeq	r1, r0, r0

8780942c <asc2_3216>:
	...
878094c4:	c000f007 	andgt	pc, r0, r7
878094c8:	e0e1ff07 	rsc	pc, r1, r7, lsl #30
878094cc:	e001f007 	and	pc, r1, r7
878094d0:	c0000000 	andgt	r0, r0, r0
	...
87809534:	00002000 	andeq	r2, r0, r0
87809538:	0000c001 	andeq	ip, r0, r1
8780953c:	00008007 	andeq	r8, r0, r7
87809540:	0000001f 	andeq	r0, r0, pc, lsl r0
87809544:	0000001e 	andeq	r0, r0, lr, lsl r0
87809548:	0000201c 	andeq	r2, r0, ip, lsl r0
8780954c:	0000c001 	andeq	ip, r0, r1
87809550:	00008007 	andeq	r8, r0, r7
87809554:	0000001f 	andeq	r0, r0, pc, lsl r0
87809558:	0000001e 	andeq	r0, r0, lr, lsl r0
8780955c:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
878095b0:	000c1800 	andeq	r1, ip, r0, lsl #16
878095b4:	000c1800 	andeq	r1, ip, r0, lsl #16
878095b8:	e00f1800 	and	r1, pc, r0, lsl #16
878095bc:	00fc1f00 	rscseq	r1, ip, r0, lsl #30
878095c0:	000cf803 	andeq	pc, ip, r3, lsl #16
878095c4:	000c1800 	andeq	r1, ip, r0, lsl #16
878095c8:	000c1800 	andeq	r1, ip, r0, lsl #16
878095cc:	000c1800 	andeq	r1, ip, r0, lsl #16
878095d0:	000c1800 	andeq	r1, ip, r0, lsl #16
878095d4:	e00f1800 	and	r1, pc, r0, lsl #16
878095d8:	00fc1f00 	rscseq	r1, ip, r0, lsl #30
878095dc:	000cf803 	andeq	pc, ip, r3, lsl #16
878095e0:	000c1800 	andeq	r1, ip, r0, lsl #16
878095e4:	000c1800 	andeq	r1, ip, r0, lsl #16
	...
87809634:	80070000 	andhi	r0, r7, r0
87809638:	c0077800 	andgt	r7, r7, r0, lsl #16
8780963c:	4006fc00 	andmi	pc, r6, r0, lsl #24
87809640:	20000e01 	andcs	r0, r0, r1, lsl #28
87809644:	20000703 	andcs	r0, r0, r3, lsl #14
87809648:	20800302 	addcs	r0, r0, r2, lsl #6
8780964c:	fcffff0f 	ldc2l	15, cr15, [pc], #60	; 87809690 <asc2_3216+0x264>
87809650:	20c00102 	sbccs	r0, r0, r2, lsl #2
87809654:	60e00002 	rscvs	r0, r0, r2
87809658:	40703001 	rsbsmi	r3, r0, r1
8780965c:	803ff001 	eorshi	pc, pc, r1
87809660:	001ff000 	andseq	pc, pc, r0
	...
878096ac:	0000fe00 	andeq	pc, r0, r0, lsl #28
878096b0:	0000ff01 	andeq	pc, r0, r1, lsl #30
878096b4:	00800103 	addeq	r0, r0, r3, lsl #2
878096b8:	60800002 	addvs	r0, r0, r2
878096bc:	c0810103 	addgt	r0, r1, r3, lsl #2
878096c0:	0007ff01 	andeq	pc, r7, r1, lsl #30
878096c4:	0018fe00 	andseq	pc, r8, r0, lsl #28
878096c8:	00e00000 	rsceq	r0, r0, r0
878096cc:	00bf0300 	adcseq	r0, pc, r0, lsl #6
878096d0:	c0ff0c00 	rscsgt	r0, pc, r0, lsl #24
878096d4:	60807100 	addvs	r7, r0, r0, lsl #2
878096d8:	2000c101 	andcs	ip, r0, r1, lsl #2
878096dc:	60800103 	addvs	r0, r0, r3, lsl #2
878096e0:	c0ff0000 	rscsgt	r0, pc, r0
878096e4:	003f0000 	eorseq	r0, pc, r0
	...
8780972c:	001f0000 	andseq	r0, pc, r0
87809730:	c07f0000 	rsbsgt	r0, pc, r0
87809734:	c0c0fc00 	sbcgt	pc, r0, r0, lsl #24
87809738:	6080ff01 	addvs	pc, r0, r1, lsl #30
8780973c:	20e00303 	rsccs	r0, r0, r3, lsl #6
87809740:	20780202 	rsbscs	r0, r8, r2, lsl #4
87809744:	201e0602 	andscs	r0, lr, r2, lsl #12
87809748:	4007fc03 	andmi	pc, r7, r3, lsl #24
8780974c:	8003f001 	andhi	pc, r3, r1
87809750:	c0030100 	andgt	r0, r3, r0, lsl #2
87809754:	601c0100 	andsvs	r0, ip, r0, lsl #2
87809758:	20e00100 	rsccs	r0, r0, r0, lsl #2
8780975c:	20000100 	andcs	r0, r0, r0, lsl #2
87809760:	40000100 	andmi	r0, r0, r0, lsl #2
87809764:	80010000 	andhi	r0, r1, r0
	...
878097b0:	00002000 	andeq	r2, r0, r0
878097b4:	0000601c 	andeq	r6, r0, ip, lsl r0
878097b8:	0000401c 	andeq	r4, r0, ip, lsl r0
878097bc:	0000801f 	andeq	r8, r0, pc, lsl r0
878097c0:	0000000f 	andeq	r0, r0, pc
	...
87809848:	00f80700 	rscseq	r0, r8, r0, lsl #14
8780984c:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
87809850:	c0077800 	andgt	r7, r7, r0, lsl #16
87809854:	e000c001 	and	ip, r0, r1
87809858:	30000003 	andcc	r0, r0, r3
8780985c:	08000004 	stmdaeq	r0, {r2}
87809860:	04000008 	streq	r0, [r0], #-8
87809864:	02000010 	andeq	r0, r0, #16
	...
878098b0:	02000010 	andeq	r0, r0, #16
878098b4:	04000008 	streq	r0, [r0], #-8
878098b8:	08000004 	stmdaeq	r0, {r2}
878098bc:	30000003 	andcc	r0, r0, r3
878098c0:	e000c001 	and	ip, r0, r1
878098c4:	c0077800 	andgt	r7, r7, r0, lsl #16
878098c8:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
878098cc:	00f80700 	rscseq	r0, r8, r0, lsl #14
	...
87809934:	00180c00 	andseq	r0, r8, r0, lsl #24
87809938:	00380e00 	eorseq	r0, r8, r0, lsl #28
8780993c:	00380e00 	eorseq	r0, r8, r0, lsl #28
87809940:	00300600 	eorseq	r0, r0, r0, lsl #12
87809944:	00600300 	rsbeq	r0, r0, r0, lsl #6
87809948:	80436100 	subhi	r6, r3, r0, lsl #2
8780994c:	80ffff00 	rscshi	pc, pc, r0, lsl #30
87809950:	00436100 	subeq	r6, r3, r0, lsl #2
87809954:	00600300 	rsbeq	r0, r0, r0, lsl #6
87809958:	00300600 	eorseq	r0, r0, r0, lsl #12
8780995c:	00380e00 	eorseq	r0, r8, r0, lsl #28
87809960:	00380e00 	eorseq	r0, r8, r0, lsl #28
87809964:	00180c00 	andseq	r0, r8, r0, lsl #24
	...
878099b4:	00800000 	addeq	r0, r0, r0
878099b8:	00800000 	addeq	r0, r0, r0
878099bc:	00800000 	addeq	r0, r0, r0
878099c0:	00800000 	addeq	r0, r0, r0
878099c4:	00800000 	addeq	r0, r0, r0
878099c8:	00800000 	addeq	r0, r0, r0
878099cc:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
878099d0:	00800000 	addeq	r0, r0, r0
878099d4:	00800000 	addeq	r0, r0, r0
878099d8:	00800000 	addeq	r0, r0, r0
878099dc:	00800000 	addeq	r0, r0, r0
878099e0:	00800000 	addeq	r0, r0, r0
878099e4:	00800000 	addeq	r0, r0, r0
	...
87809a30:	01000000 	mrseq	r0, (UNDEF: 0)
87809a34:	e3000000 	movw	r0, #0
87809a38:	e2000000 	and	r0, r0, #0
87809a3c:	fc000000 	stc2	0, cr0, [r0], {-0}
87809a40:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
	...
87809ab0:	00800000 	addeq	r0, r0, r0
87809ab4:	00800000 	addeq	r0, r0, r0
87809ab8:	00800000 	addeq	r0, r0, r0
87809abc:	00800000 	addeq	r0, r0, r0
87809ac0:	00800000 	addeq	r0, r0, r0
87809ac4:	00800000 	addeq	r0, r0, r0
87809ac8:	00800000 	addeq	r0, r0, r0
87809acc:	00800000 	addeq	r0, r0, r0
87809ad0:	00800000 	addeq	r0, r0, r0
87809ad4:	00800000 	addeq	r0, r0, r0
87809ad8:	00800000 	addeq	r0, r0, r0
87809adc:	00800000 	addeq	r0, r0, r0
87809ae0:	00800000 	addeq	r0, r0, r0
87809ae4:	00800000 	addeq	r0, r0, r0
	...
87809b34:	c0000000 	andgt	r0, r0, r0
87809b38:	e0010000 	and	r0, r1, r0
87809b3c:	e0010000 	and	r0, r1, r0
87809b40:	c0000000 	andgt	r0, r0, r0
	...
87809bb0:	0c000000 	stceq	0, cr0, [r0], {-0}
87809bb4:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
87809bb8:	e0000000 	and	r0, r0, r0
87809bbc:	80030000 	andhi	r0, r3, r0
87809bc0:	000e0000 	andeq	r0, lr, r0
87809bc4:	00380000 	eorseq	r0, r8, r0
87809bc8:	00e00000 	rsceq	r0, r0, r0
87809bcc:	00800300 	addeq	r0, r0, r0, lsl #6
87809bd0:	00000e00 	andeq	r0, r0, r0, lsl #28
87809bd4:	00003800 	andeq	r3, r0, r0, lsl #16
87809bd8:	0000e000 	andeq	lr, r0, r0
87809bdc:	00008003 	andeq	r8, r0, r3
87809be0:	0000000e 	andeq	r0, r0, lr
87809be4:	00000018 	andeq	r0, r0, r8, lsl r0
	...
87809c34:	00f80f00 	rscseq	r0, r8, r0, lsl #30
87809c38:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
87809c3c:	8007f000 	andhi	pc, r7, r0
87809c40:	c0008001 	andgt	r8, r0, r1
87809c44:	60000003 	andvs	r0, r0, r3
87809c48:	20000002 	andcs	r0, r0, r2
87809c4c:	20000002 	andcs	r0, r0, r2
87809c50:	20000002 	andcs	r0, r0, r2
87809c54:	60000003 	andvs	r0, r0, r3
87809c58:	c0008001 	andgt	r8, r0, r1
87809c5c:	8003e000 	andhi	lr, r3, r0
87809c60:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
87809c64:	00f80f00 	rscseq	r0, r8, r0, lsl #30
	...
87809cb8:	20008000 	andcs	r8, r0, r0
87809cbc:	20008000 	andcs	r8, r0, r0
87809cc0:	20008000 	andcs	r8, r0, r0
87809cc4:	60008000 	andvs	r8, r0, r0
87809cc8:	e0ffff01 	rscs	pc, pc, r1, lsl #30
87809ccc:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809cd0:	60000000 	andvs	r0, r0, r0
87809cd4:	20000000 	andcs	r0, r0, r0
87809cd8:	20000000 	andcs	r0, r0, r0
87809cdc:	20000000 	andcs	r0, r0, r0
	...
87809d34:	e0007800 	and	r7, r0, r0, lsl #16
87809d38:	60019800 	andvs	r9, r1, r0, lsl #16
87809d3c:	60020001 	andvs	r0, r2, r1
87809d40:	60040002 	andvs	r0, r4, r2
87809d44:	60080002 	andvs	r0, r8, r2
87809d48:	60100002 	andsvs	r0, r0, r2
87809d4c:	60200002 	eorvs	r0, r0, r2
87809d50:	60400002 	subvs	r0, r0, r2
87809d54:	60800003 	addvs	r0, r0, r3
87809d58:	60008301 	andvs	r8, r0, r1, lsl #6
87809d5c:	e000fe01 	and	pc, r0, r1, lsl #28
87809d60:	80077c00 	andhi	r7, r7, r0, lsl #24
	...
87809db4:	8007f000 	andhi	pc, r7, r0
87809db8:	c007f001 	andgt	pc, r7, r1
87809dbc:	40000001 	andmi	r0, r0, r1
87809dc0:	20000002 	andcs	r0, r0, r2
87809dc4:	20000102 	andcs	r0, r0, r2, lsl #2
87809dc8:	20000102 	andcs	r0, r0, r2, lsl #2
87809dcc:	20000102 	andcs	r0, r0, r2, lsl #2
87809dd0:	20800303 	addcs	r0, r0, r3, lsl #6
87809dd4:	40808601 	addmi	r8, r0, r1, lsl #12
87809dd8:	c0c0fc01 	sbcgt	pc, r0, r1, lsl #24
87809ddc:	807f7800 	rsbshi	r7, pc, r0, lsl #16
87809de0:	001e0000 	andseq	r0, lr, r0
	...
87809e30:	00080000 	andeq	r0, r8, r0
87809e34:	00380000 	eorseq	r0, r8, r0
87809e38:	00480000 	subeq	r0, r8, r0
87809e3c:	00880100 	addeq	r0, r8, r0, lsl #2
87809e40:	00080600 	andeq	r0, r8, r0, lsl #12
87809e44:	10080c00 	andne	r0, r8, r0, lsl #24
87809e48:	10083000 	andne	r3, r8, r0
87809e4c:	10084000 	andne	r4, r8, r0
87809e50:	f0ffff01 			; <UNDEFINED> instruction: 0xf0ffff01
87809e54:	f0ffff03 			; <UNDEFINED> instruction: 0xf0ffff03
87809e58:	f0ffff03 			; <UNDEFINED> instruction: 0xf0ffff03
87809e5c:	10080000 	andne	r0, r8, r0
87809e60:	10080000 	andne	r0, r8, r0
87809e64:	10080000 	andne	r0, r8, r0
	...
87809eb4:	80070000 	andhi	r0, r7, r0
87809eb8:	40861f00 	addmi	r1, r6, r0, lsl #30
87809ebc:	2000e103 	andcs	lr, r0, r3, lsl #2
87809ec0:	20000203 	andcs	r0, r0, r3, lsl #4
87809ec4:	20000403 	andcs	r0, r0, r3, lsl #8
87809ec8:	20000403 	andcs	r0, r0, r3, lsl #8
87809ecc:	20000403 	andcs	r0, r0, r3, lsl #8
87809ed0:	20000403 	andcs	r0, r0, r3, lsl #8
87809ed4:	40000603 	andmi	r0, r0, r3, lsl #12
87809ed8:	c0010303 	andgt	r0, r1, r3, lsl #6
87809edc:	80ff0103 	rscshi	r0, pc, r3, lsl #2
87809ee0:	007e0003 	rsbseq	r0, lr, r3
	...
87809f34:	00fc0700 	rscseq	r0, ip, r0, lsl #14
87809f38:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
87809f3c:	80c37000 	sbchi	r7, r3, r0
87809f40:	c0808100 	addgt	r8, r0, r0, lsl #2
87809f44:	60000101 	andvs	r0, r0, r1, lsl #2
87809f48:	20000203 	andcs	r0, r0, r3, lsl #4
87809f4c:	20000202 	andcs	r0, r0, r2, lsl #4
87809f50:	20000202 	andcs	r0, r0, r2, lsl #4
87809f54:	20000202 	andcs	r0, r0, r2, lsl #4
87809f58:	40000302 	andmi	r0, r0, r2, lsl #6
87809f5c:	c080c101 	addgt	ip, r0, r1, lsl #2
87809f60:	80ffc000 	rscshi	ip, pc, r0
87809f64:	007e0000 	rsbseq	r0, lr, r0
	...
87809fb4:	0000f000 	andeq	pc, r0, r0
87809fb8:	0000c003 	andeq	ip, r0, r3
87809fbc:	00008003 	andeq	r8, r0, r3
87809fc0:	00000003 	andeq	r0, r0, r3
87809fc4:	e0070003 	and	r0, r7, r3
87809fc8:	e03f0003 	eors	r0, pc, r3
87809fcc:	00c00103 	sbceq	r0, r0, r3, lsl #2
87809fd0:	00000603 	andeq	r0, r0, r3, lsl #12
87809fd4:	00001803 	andeq	r1, r0, r3, lsl #16
87809fd8:	00006003 	andeq	r6, r0, r3
87809fdc:	00008003 	andeq	r8, r0, r3
87809fe0:	00000003 	andeq	r0, r0, r3
	...
8780a030:	001f0000 	andseq	r0, pc, r0
8780a034:	803f7800 	eorshi	r7, pc, r0, lsl #16
8780a038:	c060fc00 	rsbgt	pc, r0, r0, lsl #24
8780a03c:	40c08e01 	sbcmi	r8, r0, r1, lsl #28
8780a040:	20800703 	addcs	r0, r0, r3, lsl #14
8780a044:	20000302 	andcs	r0, r0, r2, lsl #6
8780a048:	20800102 	addcs	r0, r0, r2, lsl #2
8780a04c:	20800102 	addcs	r0, r0, r2, lsl #2
8780a050:	20c00102 	sbccs	r0, r0, r2, lsl #2
8780a054:	40e00103 	rscmi	r0, r0, r3, lsl #2
8780a058:	c0708601 	rsbsgt	r8, r0, r1, lsl #12
8780a05c:	803ffc00 	eorshi	pc, pc, r0, lsl #24
8780a060:	001f7800 	andseq	r7, pc, r0, lsl #16
	...
8780a0b0:	00003f00 	andeq	r3, r0, r0, lsl #30
8780a0b4:	c081ff00 	addgt	pc, r1, r0, lsl #30
8780a0b8:	c0c1c001 	sbcgt	ip, r1, r1
8780a0bc:	20600001 	rsbcs	r0, r0, r1
8780a0c0:	20200002 	eorcs	r0, r0, r2
8780a0c4:	20200002 	eorcs	r0, r0, r2
8780a0c8:	20200002 	eorcs	r0, r0, r2
8780a0cc:	60200002 	eorvs	r0, r0, r2
8780a0d0:	c0400002 	subgt	r0, r0, r2
8780a0d4:	80c10001 	sbchi	r0, r1, r1
8780a0d8:	008fc100 	addeq	ip, pc, r0, lsl #2
8780a0dc:	00fe7f00 	rscseq	r7, lr, r0, lsl #30
8780a0e0:	00f01f00 	rscseq	r1, r0, r0, lsl #30
	...
8780a144:	c0000300 	andgt	r0, r0, r0, lsl #6
8780a148:	e0810700 	add	r0, r1, r0, lsl #14
8780a14c:	e0810700 	add	r0, r1, r0, lsl #14
8780a150:	c0000300 	andgt	r0, r0, r0, lsl #6
	...
8780a1c4:	66000600 	strvs	r0, [r0], -r0, lsl #12
8780a1c8:	78000600 	stmdavc	r0, {r9, sl}
	...
8780a234:	00800000 	addeq	r0, r0, r0
8780a238:	00c00100 	sbceq	r0, r0, r0, lsl #2
8780a23c:	00600300 	rsbeq	r0, r0, r0, lsl #6
8780a240:	00300600 	eorseq	r0, r0, r0, lsl #12
8780a244:	00180c00 	andseq	r0, r8, r0, lsl #24
8780a248:	000c1800 	andeq	r1, ip, r0, lsl #16
8780a24c:	00063000 	andeq	r3, r6, r0
8780a250:	00036000 	andeq	r6, r3, r0
8780a254:	8001c000 	andhi	ip, r1, r0
8780a258:	40000001 	andmi	r0, r0, r1
8780a25c:	20000002 	andcs	r0, r0, r2
8780a260:	10000004 	andne	r0, r0, r4
	...
8780a2b0:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2b4:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2b8:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2bc:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2c0:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2c4:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2c8:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2cc:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2d0:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2d4:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2d8:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2dc:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2e0:	00100400 	andseq	r0, r0, r0, lsl #8
8780a2e4:	00100400 	andseq	r0, r0, r0, lsl #8
	...
8780a334:	10000004 	andne	r0, r0, r4
8780a338:	20000002 	andcs	r0, r0, r2
8780a33c:	40000001 	andmi	r0, r0, r1
8780a340:	8001c000 	andhi	ip, r1, r0
8780a344:	00036000 	andeq	r6, r3, r0
8780a348:	00063000 	andeq	r3, r6, r0
8780a34c:	000c1800 	andeq	r1, ip, r0, lsl #16
8780a350:	00180c00 	andseq	r0, r8, r0, lsl #24
8780a354:	00300600 	eorseq	r0, r0, r0, lsl #12
8780a358:	00600300 	rsbeq	r0, r0, r0, lsl #6
8780a35c:	00c00100 	sbceq	r0, r0, r0, lsl #2
8780a360:	00800000 	addeq	r0, r0, r0
	...
8780a3b4:	00007800 	andeq	r7, r0, r0, lsl #16
8780a3b8:	0000f801 	andeq	pc, r0, r1, lsl #16
8780a3bc:	00003802 	andeq	r3, r0, r2, lsl #16
8780a3c0:	00000002 	andeq	r0, r0, r2
8780a3c4:	c0000004 	andgt	r0, r0, r4
8780a3c8:	e0790004 	rsbs	r0, r9, r4
8780a3cc:	e0810004 	add	r0, r1, r4
8780a3d0:	c0000104 	andgt	r0, r0, r4, lsl #2
8780a3d4:	00000304 	andeq	r0, r0, r4, lsl #6
8780a3d8:	00000202 	andeq	r0, r0, r2, lsl #4
8780a3dc:	00000603 	andeq	r0, r0, r3, lsl #12
8780a3e0:	0000fc01 	andeq	pc, r0, r1, lsl #24
8780a3e4:	0000f800 	andeq	pc, r0, r0, lsl #16
	...
8780a430:	00f80f00 	rscseq	r0, r8, r0, lsl #30
8780a434:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
8780a438:	80077000 	andhi	r7, r7, r0
8780a43c:	c000c000 	andgt	ip, r0, r0
8780a440:	40f80101 	rscsmi	r0, r8, r1, lsl #2
8780a444:	20fc0703 	rscscs	r0, ip, r3, lsl #14
8780a448:	20041e02 	andcs	r1, r4, r2, lsl #28
8780a44c:	20083002 	andcs	r3, r8, r2
8780a450:	20302002 	eorscs	r2, r0, r2
8780a454:	20fc3f02 	rscscs	r3, ip, r2, lsl #30
8780a458:	40043f01 	andmi	r3, r4, r1, lsl #30
8780a45c:	c00c8001 	andgt	r8, ip, r1
8780a460:	8031e000 	eorshi	lr, r1, r0
8780a464:	00c21f00 	sbceq	r1, r2, r0, lsl #30
	...
8780a4ac:	20000000 	andcs	r0, r0, r0
8780a4b0:	60000000 	andvs	r0, r0, r0
8780a4b4:	e0030000 	and	r0, r3, r0
8780a4b8:	203e0000 	eorscs	r0, lr, r0
8780a4bc:	20e00300 	rsccs	r0, r0, r0, lsl #6
8780a4c0:	00203e00 	eoreq	r3, r0, r0, lsl #28
8780a4c4:	0020e003 	eoreq	lr, r0, r3
8780a4c8:	00208003 	eoreq	r8, r0, r3
8780a4cc:	0020fc07 	eoreq	pc, r0, r7, lsl #24
8780a4d0:	00e03f00 	rsceq	r3, r0, r0, lsl #30
8780a4d4:	20fe0300 	rscscs	r0, lr, r0, lsl #6
8780a4d8:	e03f0000 	eors	r0, pc, r0
8780a4dc:	e0010000 	and	r0, r1, r0
8780a4e0:	20000000 	andcs	r0, r0, r0
8780a4e4:	20000000 	andcs	r0, r0, r0
	...
8780a530:	20000002 	andcs	r0, r0, r2
8780a534:	20000002 	andcs	r0, r0, r2
8780a538:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a53c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a540:	20000102 	andcs	r0, r0, r2, lsl #2
8780a544:	20000102 	andcs	r0, r0, r2, lsl #2
8780a548:	20000102 	andcs	r0, r0, r2, lsl #2
8780a54c:	20000102 	andcs	r0, r0, r2, lsl #2
8780a550:	20000102 	andcs	r0, r0, r2, lsl #2
8780a554:	20000303 	andcs	r0, r0, r3, lsl #6
8780a558:	60808601 	addvs	r8, r0, r1, lsl #12
8780a55c:	c0c0fc01 	sbcgt	pc, r0, r1, lsl #24
8780a560:	807ff800 	rsbshi	pc, pc, r0, lsl #16
8780a564:	001f0000 	andseq	r0, pc, r0
	...
8780a5b0:	00f80700 	rscseq	r0, r8, r0, lsl #14
8780a5b4:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
8780a5b8:	80077000 	andhi	r7, r7, r0
8780a5bc:	c000c000 	andgt	ip, r0, r0
8780a5c0:	40000001 	andmi	r0, r0, r1
8780a5c4:	20000003 	andcs	r0, r0, r3
8780a5c8:	20000002 	andcs	r0, r0, r2
8780a5cc:	20000002 	andcs	r0, r0, r2
8780a5d0:	20000002 	andcs	r0, r0, r2
8780a5d4:	20000002 	andcs	r0, r0, r2
8780a5d8:	40000001 	andmi	r0, r0, r1
8780a5dc:	c0008001 	andgt	r8, r0, r1
8780a5e0:	8001c003 	andhi	ip, r1, r3
8780a5e4:	00063000 	andeq	r3, r6, r0
	...
8780a630:	20000002 	andcs	r0, r0, r2
8780a634:	20000002 	andcs	r0, r0, r2
8780a638:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a63c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a640:	20000002 	andcs	r0, r0, r2
8780a644:	20000002 	andcs	r0, r0, r2
8780a648:	20000002 	andcs	r0, r0, r2
8780a64c:	20000002 	andcs	r0, r0, r2
8780a650:	60000003 	andvs	r0, r0, r3
8780a654:	40000001 	andmi	r0, r0, r1
8780a658:	c0008001 	andgt	r8, r0, r1
8780a65c:	8007f000 	andhi	pc, r7, r0
8780a660:	00fe7f00 	rscseq	r7, lr, r0, lsl #30
8780a664:	00f80f00 	rscseq	r0, r8, r0, lsl #30
	...
8780a6b0:	20000002 	andcs	r0, r0, r2
8780a6b4:	20000002 	andcs	r0, r0, r2
8780a6b8:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a6bc:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a6c0:	20000102 	andcs	r0, r0, r2, lsl #2
8780a6c4:	20000102 	andcs	r0, r0, r2, lsl #2
8780a6c8:	20000102 	andcs	r0, r0, r2, lsl #2
8780a6cc:	20000102 	andcs	r0, r0, r2, lsl #2
8780a6d0:	20000102 	andcs	r0, r0, r2, lsl #2
8780a6d4:	20800302 	addcs	r0, r0, r2, lsl #6
8780a6d8:	20e00f02 	rsccs	r0, r0, r2, lsl #30
8780a6dc:	60000003 	andvs	r0, r0, r3
8780a6e0:	e000c003 	and	ip, r0, r3
8780a6e4:	00036000 	andeq	r6, r3, r0
	...
8780a730:	20000002 	andcs	r0, r0, r2
8780a734:	20000002 	andcs	r0, r0, r2
8780a738:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a73c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a740:	20000102 	andcs	r0, r0, r2, lsl #2
8780a744:	20000102 	andcs	r0, r0, r2, lsl #2
8780a748:	00000102 	andeq	r0, r0, r2, lsl #2
8780a74c:	00000102 	andeq	r0, r0, r2, lsl #2
8780a750:	00000102 	andeq	r0, r0, r2, lsl #2
8780a754:	00000102 	andeq	r0, r0, r2, lsl #2
8780a758:	00800302 	addeq	r0, r0, r2, lsl #6
8780a75c:	00e00f03 	rsceq	r0, r0, r3, lsl #30
8780a760:	00000003 	andeq	r0, r0, r3
8780a764:	0000c003 	andeq	ip, r0, r3
8780a768:	00006000 	andeq	r6, r0, r0
	...
8780a7b0:	00f80700 	rscseq	r0, r8, r0, lsl #14
8780a7b4:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
8780a7b8:	80077000 	andhi	r7, r7, r0
8780a7bc:	c001c001 	andgt	ip, r1, r1
8780a7c0:	40000001 	andmi	r0, r0, r1
8780a7c4:	20000003 	andcs	r0, r0, r3
8780a7c8:	20000002 	andcs	r0, r0, r2
8780a7cc:	20000002 	andcs	r0, r0, r2
8780a7d0:	20000002 	andcs	r0, r0, r2
8780a7d4:	20200001 	eorcs	r0, r0, r1
8780a7d8:	40200001 	eormi	r0, r0, r1
8780a7dc:	803fc003 	eorshi	ip, pc, r3
8780a7e0:	803f3000 	eorshi	r3, pc, r0
8780a7e4:	00200000 	eoreq	r0, r0, r0
8780a7e8:	00200000 	eoreq	r0, r0, r0
	...
8780a82c:	20000002 	andcs	r0, r0, r2
8780a830:	20000002 	andcs	r0, r0, r2
8780a834:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a838:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a83c:	20800002 	addcs	r0, r0, r2
8780a840:	20800002 	addcs	r0, r0, r2
8780a844:	00800000 	addeq	r0, r0, r0
8780a848:	00800000 	addeq	r0, r0, r0
8780a84c:	00800000 	addeq	r0, r0, r0
8780a850:	20800002 	addcs	r0, r0, r2
8780a854:	20800002 	addcs	r0, r0, r2
8780a858:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a85c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a860:	20000002 	andcs	r0, r0, r2
8780a864:	20000002 	andcs	r0, r0, r2
	...
8780a8b8:	20000002 	andcs	r0, r0, r2
8780a8bc:	20000002 	andcs	r0, r0, r2
8780a8c0:	20000002 	andcs	r0, r0, r2
8780a8c4:	20000002 	andcs	r0, r0, r2
8780a8c8:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a8cc:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a8d0:	20000002 	andcs	r0, r0, r2
8780a8d4:	20000002 	andcs	r0, r0, r2
8780a8d8:	20000002 	andcs	r0, r0, r2
8780a8dc:	20000002 	andcs	r0, r0, r2
	...
8780a930:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
8780a934:	0f000000 	svceq	0x00000000
8780a938:	0f000000 	svceq	0x00000000
8780a93c:	01000000 	mrseq	r0, (UNDEF: 0)
8780a940:	01000002 	tsteq	r0, r2
8780a944:	01000002 	tsteq	r0, r2
8780a948:	03000002 	movweq	r0, #2
8780a94c:	06000002 	streq	r0, [r0], -r2
8780a950:	fcffff03 	ldc2l	15, cr15, [pc], #12	; 8780a964 <asc2_3216+0x1538>
8780a954:	f8ffff03 			; <UNDEFINED> instruction: 0xf8ffff03
8780a958:	00000002 	andeq	r0, r0, r2
8780a95c:	00000002 	andeq	r0, r0, r2
8780a960:	00000002 	andeq	r0, r0, r2
8780a964:	00000002 	andeq	r0, r0, r2
	...
8780a9b0:	20000002 	andcs	r0, r0, r2
8780a9b4:	20000002 	andcs	r0, r0, r2
8780a9b8:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a9bc:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a9c0:	20c00002 	sbccs	r0, r0, r2
8780a9c4:	20000102 	andcs	r0, r0, r2, lsl #2
8780a9c8:	00800700 	addeq	r0, r0, r0, lsl #14
8780a9cc:	00e00f00 	rsceq	r0, r0, r0, lsl #30
8780a9d0:	00f83000 	rscseq	r3, r8, r0
8780a9d4:	203e6002 	eorscs	r6, lr, r2
8780a9d8:	200f8003 	andcs	r8, pc, r3
8780a9dc:	e0030003 	and	r0, r3, r3
8780a9e0:	e0000002 	and	r0, r0, r2
8780a9e4:	20000002 	andcs	r0, r0, r2
8780a9e8:	20000000 	andcs	r0, r0, r0
	...
8780aa30:	20000002 	andcs	r0, r0, r2
8780aa34:	20000002 	andcs	r0, r0, r2
8780aa38:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780aa3c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780aa40:	20000002 	andcs	r0, r0, r2
8780aa44:	20000002 	andcs	r0, r0, r2
8780aa48:	20000000 	andcs	r0, r0, r0
8780aa4c:	20000000 	andcs	r0, r0, r0
8780aa50:	20000000 	andcs	r0, r0, r0
8780aa54:	20000000 	andcs	r0, r0, r0
8780aa58:	20000000 	andcs	r0, r0, r0
8780aa5c:	60000000 	andvs	r0, r0, r0
8780aa60:	e0000000 	and	r0, r0, r0
8780aa64:	00030000 	andeq	r0, r3, r0
	...
8780aaac:	20000002 	andcs	r0, r0, r2
8780aab0:	20000002 	andcs	r0, r0, r2
8780aab4:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780aab8:	2000e003 	andcs	lr, r0, r3
8780aabc:	2000ff03 	andcs	pc, r0, r3, lsl #30
8780aac0:	00f01f00 	rscseq	r1, r0, r0, lsl #30
8780aac4:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780aac8:	e00f0000 	and	r0, pc, r0
8780aacc:	001e0000 	andseq	r0, lr, r0
8780aad0:	00e00300 	rsceq	r0, r0, r0, lsl #6
8780aad4:	20003e00 	andcs	r3, r0, r0, lsl #28
8780aad8:	2000e003 	andcs	lr, r0, r3
8780aadc:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780aae0:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780aae4:	20000002 	andcs	r0, r0, r2
8780aae8:	20000002 	andcs	r0, r0, r2
	...
8780ab2c:	20000002 	andcs	r0, r0, r2
8780ab30:	20000002 	andcs	r0, r0, r2
8780ab34:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ab38:	20008003 	andcs	r8, r0, r3
8780ab3c:	2000f003 	andcs	pc, r0, r3
8780ab40:	0000fc00 	andeq	pc, r0, r0, lsl #24
8780ab44:	00001f00 	andeq	r1, r0, r0, lsl #30
8780ab48:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780ab4c:	00f00100 	rscseq	r0, r0, r0, lsl #2
8780ab50:	007c0000 	rsbseq	r0, ip, r0
8780ab54:	801f0002 	andshi	r0, pc, r2
8780ab58:	e0070002 	and	r0, r7, r2
8780ab5c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ab60:	00000002 	andeq	r0, r0, r2
8780ab64:	00000002 	andeq	r0, r0, r2
	...
8780abb0:	00f80f00 	rscseq	r0, r8, r0, lsl #30
8780abb4:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
8780abb8:	8007f000 	andhi	pc, r7, r0
8780abbc:	c0008001 	andgt	r8, r0, r1
8780abc0:	40000001 	andmi	r0, r0, r1
8780abc4:	20000002 	andcs	r0, r0, r2
8780abc8:	20000002 	andcs	r0, r0, r2
8780abcc:	20000002 	andcs	r0, r0, r2
8780abd0:	20000002 	andcs	r0, r0, r2
8780abd4:	40000001 	andmi	r0, r0, r1
8780abd8:	c0008001 	andgt	r8, r0, r1
8780abdc:	8003f000 	andhi	pc, r3, r0
8780abe0:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
8780abe4:	00f80f00 	rscseq	r0, r8, r0, lsl #30
	...
8780ac30:	20000002 	andcs	r0, r0, r2
8780ac34:	20000002 	andcs	r0, r0, r2
8780ac38:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ac3c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ac40:	20800002 	addcs	r0, r0, r2
8780ac44:	20800002 	addcs	r0, r0, r2
8780ac48:	00800002 	addeq	r0, r0, r2
8780ac4c:	00800002 	addeq	r0, r0, r2
8780ac50:	00800002 	addeq	r0, r0, r2
8780ac54:	00800002 	addeq	r0, r0, r2
8780ac58:	00800103 	addeq	r0, r0, r3, lsl #2
8780ac5c:	00008301 	andeq	r8, r0, r1, lsl #6
8780ac60:	0000fe00 	andeq	pc, r0, r0, lsl #28
8780ac64:	00007c00 	andeq	r7, r0, r0, lsl #24
	...
8780acb0:	00f80f00 	rscseq	r0, r8, r0, lsl #30
8780acb4:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
8780acb8:	8003f000 	andhi	pc, r3, r0
8780acbc:	c0018001 	andgt	r8, r1, r1
8780acc0:	40060001 	andmi	r0, r6, r1
8780acc4:	20040002 	andcs	r0, r4, r2
8780acc8:	20040002 	andcs	r0, r4, r2
8780accc:	20060002 	andcs	r0, r6, r2
8780acd0:	e0030002 	and	r0, r3, r2
8780acd4:	f8000001 			; <UNDEFINED> instruction: 0xf8000001
8780acd8:	5c008001 	stcpl	0, cr8, [r0], {1}
8780acdc:	8c03e000 	stchi	0, cr14, [r3], {-0}
8780ace0:	0cff3f00 	ldcleq	15, cr3, [pc]	; 8780ace8 <asc2_3216+0x18bc>
8780ace4:	18fc0f00 	ldmne	ip!, {r8, r9, sl, fp}^
	...
8780ad30:	20000002 	andcs	r0, r0, r2
8780ad34:	20000002 	andcs	r0, r0, r2
8780ad38:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ad3c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ad40:	20000102 	andcs	r0, r0, r2, lsl #2
8780ad44:	20000102 	andcs	r0, r0, r2, lsl #2
8780ad48:	00800102 	addeq	r0, r0, r2, lsl #2
8780ad4c:	00e00102 	rsceq	r0, r0, r2, lsl #2
8780ad50:	00fc0102 	rscseq	r0, ip, r2, lsl #2
8780ad54:	803f0303 	eorshi	r0, pc, r3, lsl #6
8780ad58:	e0078601 	and	r8, r7, r1, lsl #12
8780ad5c:	e000fc01 	and	pc, r0, r1, lsl #24
8780ad60:	2000f800 	andcs	pc, r0, r0, lsl #16
8780ad64:	20000000 	andcs	r0, r0, r0
	...
8780adb4:	00067800 	andeq	r7, r6, r0, lsl #16
8780adb8:	e001fe00 	and	pc, r1, r0, lsl #28
8780adbc:	c0008601 	andgt	r8, r0, r1, lsl #12
8780adc0:	40000303 	andmi	r0, r0, r3, lsl #6
8780adc4:	20000302 	andcs	r0, r0, r2, lsl #6
8780adc8:	20800102 	addcs	r0, r0, r2, lsl #2
8780adcc:	20800102 	addcs	r0, r0, r2, lsl #2
8780add0:	20c00102 	sbccs	r0, r0, r2, lsl #2
8780add4:	20c00002 	sbccs	r0, r0, r2
8780add8:	60e00001 	rscvs	r0, r0, r1
8780addc:	c0708001 	rsbsgt	r8, r0, r1
8780ade0:	803fe003 	eorshi	lr, pc, r3
8780ade4:	001f0000 	andseq	r0, pc, r0
	...
8780ae30:	00006000 	andeq	r6, r0, r0
8780ae34:	00008003 	andeq	r8, r0, r3
8780ae38:	00000003 	andeq	r0, r0, r3
8780ae3c:	00000002 	andeq	r0, r0, r2
8780ae40:	20000002 	andcs	r0, r0, r2
8780ae44:	20000002 	andcs	r0, r0, r2
8780ae48:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ae4c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ae50:	20000002 	andcs	r0, r0, r2
8780ae54:	20000002 	andcs	r0, r0, r2
8780ae58:	00000002 	andeq	r0, r0, r2
8780ae5c:	00000002 	andeq	r0, r0, r2
8780ae60:	00008003 	andeq	r8, r0, r3
8780ae64:	0000e000 	andeq	lr, r0, r0
	...
8780aeac:	00000002 	andeq	r0, r0, r2
8780aeb0:	00000002 	andeq	r0, r0, r2
8780aeb4:	00ffff03 	rscseq	pc, pc, r3, lsl #30
8780aeb8:	c0ffff03 	rscsgt	pc, pc, r3, lsl #30
8780aebc:	40000002 	andmi	r0, r0, r2
8780aec0:	60000002 	andvs	r0, r0, r2
8780aec4:	20000000 	andcs	r0, r0, r0
8780aec8:	20000000 	andcs	r0, r0, r0
8780aecc:	20000000 	andcs	r0, r0, r0
8780aed0:	20000000 	andcs	r0, r0, r0
8780aed4:	40000002 	andmi	r0, r0, r2
8780aed8:	80000002 	andhi	r0, r0, r2
8780aedc:	00ffff03 	rscseq	pc, pc, r3, lsl #30
8780aee0:	00000002 	andeq	r0, r0, r2
8780aee4:	00000002 	andeq	r0, r0, r2
	...
8780af30:	00000002 	andeq	r0, r0, r2
8780af34:	00000002 	andeq	r0, r0, r2
8780af38:	0000c003 	andeq	ip, r0, r3
8780af3c:	0000fc03 	andeq	pc, r0, r3, lsl #24
8780af40:	00c03f02 	sbceq	r3, r0, r2, lsl #30
8780af44:	00f80300 	rscseq	r0, r8, r0, lsl #6
8780af48:	807f0000 	rsbshi	r0, pc, r0
8780af4c:	e0070000 	and	r0, r7, r0
8780af50:	80070000 	andhi	r0, r7, r0
8780af54:	00780000 	rsbseq	r0, r8, r0
8780af58:	00c00302 	sbceq	r0, r0, r2, lsl #6
8780af5c:	00003c02 	andeq	r3, r0, r2, lsl #24
8780af60:	0000c003 	andeq	ip, r0, r3
8780af64:	00000002 	andeq	r0, r0, r2
8780af68:	00000002 	andeq	r0, r0, r2
	...
8780afac:	00000002 	andeq	r0, r0, r2
8780afb0:	0000c003 	andeq	ip, r0, r3
8780afb4:	0080ff03 	addeq	pc, r0, r3, lsl #30
8780afb8:	00fe3f02 	rscseq	r3, lr, r2, lsl #30
8780afbc:	e07f0002 	rsbs	r0, pc, r2
8780afc0:	000f0000 	andeq	r0, pc, r0
8780afc4:	00f00002 	rscseq	r0, r0, r2
8780afc8:	0000ef03 	andeq	lr, r0, r3, lsl #30
8780afcc:	0080ff03 	addeq	pc, r0, r3, lsl #30
8780afd0:	00fe0f02 	rscseq	r0, lr, r2, lsl #30
8780afd4:	e03f0000 	eors	r0, pc, r0
8780afd8:	001f0000 	andseq	r0, pc, r0
8780afdc:	00e00702 	rsceq	r0, r0, r2, lsl #14
8780afe0:	0000f803 	andeq	pc, r0, r3, lsl #16
8780afe4:	00000003 	andeq	r0, r0, r3
8780afe8:	00000002 	andeq	r0, r0, r2
	...
8780b030:	20000002 	andcs	r0, r0, r2
8780b034:	20000002 	andcs	r0, r0, r2
8780b038:	e0008003 	and	r8, r0, r3
8780b03c:	2003f003 	andcs	pc, r3, r3
8780b040:	200cfc02 	andcs	pc, ip, r2, lsl #24
8780b044:	00301f02 	eorseq	r1, r0, r2, lsl #30
8780b048:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780b04c:	00f00700 	rscseq	r0, r0, r0, lsl #14
8780b050:	007c1802 	rsbseq	r1, ip, r2, lsl #16
8780b054:	201f6002 	andscs	r6, pc, r2
8780b058:	e0038003 	and	r8, r3, r3
8780b05c:	e0000002 	and	r0, r0, r2
8780b060:	20000002 	andcs	r0, r0, r2
8780b064:	20000000 	andcs	r0, r0, r0
	...
8780b0b0:	00000002 	andeq	r0, r0, r2
8780b0b4:	00000003 	andeq	r0, r0, r3
8780b0b8:	0000c003 	andeq	ip, r0, r3
8780b0bc:	0000f803 	andeq	pc, r0, r3, lsl #16
8780b0c0:	20003e02 	andcs	r3, r0, r2, lsl #28
8780b0c4:	20c00f02 	sbccs	r0, r0, r2, lsl #30
8780b0c8:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780b0cc:	e07f0000 	rsbs	r0, pc, r0
8780b0d0:	20800300 	addcs	r0, r0, r0, lsl #6
8780b0d4:	20001c02 	andcs	r1, r0, r2, lsl #24
8780b0d8:	00007002 	andeq	r7, r0, r2
8780b0dc:	00008003 	andeq	r8, r0, r3
8780b0e0:	00000002 	andeq	r0, r0, r2
8780b0e4:	00000002 	andeq	r0, r0, r2
	...
8780b130:	20000000 	andcs	r0, r0, r0
8780b134:	e0006000 	and	r6, r0, r0
8780b138:	e0038003 	and	r8, r3, r3
8780b13c:	a00f0003 	andge	r0, pc, r3
8780b140:	203e0002 	eorscs	r0, lr, r2
8780b144:	20f80002 	rscscs	r0, r8, r2
8780b148:	20e00302 	rsccs	r0, r0, r2, lsl #6
8780b14c:	20800f02 	addcs	r0, r0, r2, lsl #30
8780b150:	20003e02 	andcs	r3, r0, r2, lsl #28
8780b154:	20007802 	andcs	r7, r0, r2, lsl #16
8780b158:	6000e003 	andvs	lr, r0, r3
8780b15c:	e0008003 	and	r8, r0, r3
8780b160:	00030002 	andeq	r0, r3, r2
	...
8780b1c4:	fcffff1f 	ldc2l	15, cr15, [pc], #124	; 8780b248 <asc2_3216+0x1e1c>
8780b1c8:	04000010 	streq	r0, [r0], #-16
8780b1cc:	04000010 	streq	r0, [r0], #-16
8780b1d0:	04000010 	streq	r0, [r0], #-16
8780b1d4:	04000010 	streq	r0, [r0], #-16
8780b1d8:	04000010 	streq	r0, [r0], #-16
8780b1dc:	04000010 	streq	r0, [r0], #-16
8780b1e0:	04000010 	streq	r0, [r0], #-16
	...
8780b238:	00000007 	andeq	r0, r0, r7
8780b23c:	0000c003 	andeq	ip, r0, r3
8780b240:	00007800 	andeq	r7, r0, r0, lsl #16
8780b244:	00001e00 	andeq	r1, r0, r0, lsl #28
8780b248:	00c00300 	sbceq	r0, r0, r0, lsl #6
8780b24c:	00f00000 	rscseq	r0, r0, r0
8780b250:	001e0000 	andseq	r0, lr, r0
8780b254:	80070000 	andhi	r0, r7, r0
8780b258:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
8780b25c:	3c000000 	stccc	0, cr0, [r0], {-0}
8780b260:	06000000 	streq	r0, [r0], -r0
	...
8780b2b4:	04000010 	streq	r0, [r0], #-16
8780b2b8:	04000010 	streq	r0, [r0], #-16
8780b2bc:	04000010 	streq	r0, [r0], #-16
8780b2c0:	04000010 	streq	r0, [r0], #-16
8780b2c4:	04000010 	streq	r0, [r0], #-16
8780b2c8:	04000010 	streq	r0, [r0], #-16
8780b2cc:	04000010 	streq	r0, [r0], #-16
8780b2d0:	fcffff1f 	ldc2l	15, cr15, [pc], #124	; 8780b354 <asc2_3216+0x1f28>
	...
8780b33c:	00000002 	andeq	r0, r0, r2
8780b340:	00000004 	andeq	r0, r0, r4
8780b344:	00000008 	andeq	r0, r0, r8
8780b348:	00000018 	andeq	r0, r0, r8, lsl r0
8780b34c:	00000010 	andeq	r0, r0, r0, lsl r0
8780b350:	00000018 	andeq	r0, r0, r8, lsl r0
8780b354:	00000018 	andeq	r0, r0, r8, lsl r0
8780b358:	00000004 	andeq	r0, r0, r4
8780b35c:	00000002 	andeq	r0, r0, r2
	...
8780b3ac:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3b0:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3b4:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3b8:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3bc:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3c0:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3c4:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3c8:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3cc:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3d0:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3d4:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3d8:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3dc:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3e0:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3e4:	01000000 	mrseq	r0, (UNDEF: 0)
8780b3e8:	01000000 	mrseq	r0, (UNDEF: 0)
	...
8780b438:	00000010 	andeq	r0, r0, r0, lsl r0
8780b43c:	00000010 	andeq	r0, r0, r0, lsl r0
8780b440:	00000010 	andeq	r0, r0, r0, lsl r0
8780b444:	00000018 	andeq	r0, r0, r8, lsl r0
8780b448:	00000008 	andeq	r0, r0, r8
8780b44c:	00000004 	andeq	r0, r0, r4
	...
8780b4b0:	80030000 	andhi	r0, r3, r0
8780b4b4:	c08f0100 	addgt	r0, pc, r0, lsl #2
8780b4b8:	608c0300 	addvs	r0, ip, r0, lsl #6
8780b4bc:	20180600 	andscs	r0, r8, r0, lsl #12
8780b4c0:	20100400 	andscs	r0, r0, r0, lsl #8
8780b4c4:	20100400 	andscs	r0, r0, r0, lsl #8
8780b4c8:	20200400 	eorcs	r0, r0, r0, lsl #8
8780b4cc:	40200400 	eormi	r0, r0, r0, lsl #8
8780b4d0:	40200600 	eormi	r0, r0, r0, lsl #12
8780b4d4:	c0ff0300 	rscsgt	r0, pc, r0, lsl #6
8780b4d8:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780b4dc:	20000000 	andcs	r0, r0, r0
8780b4e0:	20000000 	andcs	r0, r0, r0
8780b4e4:	c0000000 	andgt	r0, r0, r0
	...
8780b530:	00000002 	andeq	r0, r0, r2
8780b534:	00000002 	andeq	r0, r0, r2
8780b538:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780b53c:	c0ffff07 	rscsgt	pc, pc, r7, lsl #30
8780b540:	c0800100 	addgt	r0, r0, r0, lsl #2
8780b544:	60000200 	andvs	r0, r0, r0, lsl #4
8780b548:	20000200 	andcs	r0, r0, r0, lsl #4
8780b54c:	20000400 	andcs	r0, r0, r0, lsl #8
8780b550:	20000400 	andcs	r0, r0, r0, lsl #8
8780b554:	20000400 	andcs	r0, r0, r0, lsl #8
8780b558:	40000600 	andmi	r0, r0, r0, lsl #12
8780b55c:	c0000300 	andgt	r0, r0, r0, lsl #6
8780b560:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780b564:	00fe0000 	rscseq	r0, lr, r0
	...
8780b5b4:	007e0000 	rsbseq	r0, lr, r0
8780b5b8:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780b5bc:	c0810300 	addgt	r0, r1, r0, lsl #6
8780b5c0:	40000200 	andmi	r0, r0, r0, lsl #4
8780b5c4:	20000600 	andcs	r0, r0, r0, lsl #12
8780b5c8:	20000400 	andcs	r0, r0, r0, lsl #8
8780b5cc:	20000400 	andcs	r0, r0, r0, lsl #8
8780b5d0:	20000400 	andcs	r0, r0, r0, lsl #8
8780b5d4:	20000600 	andcs	r0, r0, r0, lsl #12
8780b5d8:	40c00300 	sbcmi	r0, r0, r0, lsl #6
8780b5dc:	80c00100 	sbchi	r0, r0, r0, lsl #2
8780b5e0:	00030000 	andeq	r0, r3, r0
	...
8780b634:	007e0000 	rsbseq	r0, lr, r0
8780b638:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780b63c:	c0800300 	addgt	r0, r0, r0, lsl #6
8780b640:	60000600 	andvs	r0, r0, r0, lsl #12
8780b644:	20000400 	andcs	r0, r0, r0, lsl #8
8780b648:	20000400 	andcs	r0, r0, r0, lsl #8
8780b64c:	20000400 	andcs	r0, r0, r0, lsl #8
8780b650:	40000402 	andmi	r0, r0, r2, lsl #8
8780b654:	80000202 	andhi	r0, r0, r2, lsl #4
8780b658:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780b65c:	c0ffff07 	rscsgt	pc, pc, r7, lsl #30
8780b660:	40000000 	andmi	r0, r0, r0
8780b664:	40000000 	andmi	r0, r0, r0
	...
8780b6b4:	007e0000 	rsbseq	r0, lr, r0
8780b6b8:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780b6bc:	c0110300 	andsgt	r0, r1, r0, lsl #6
8780b6c0:	40100200 	andsmi	r0, r0, r0, lsl #4
8780b6c4:	60100400 	andsvs	r0, r0, r0, lsl #8
8780b6c8:	20100400 	andscs	r0, r0, r0, lsl #8
8780b6cc:	20100400 	andscs	r0, r0, r0, lsl #8
8780b6d0:	20100400 	andscs	r0, r0, r0, lsl #8
8780b6d4:	20100600 	andscs	r0, r0, r0, lsl #12
8780b6d8:	40100300 	andsmi	r0, r0, r0, lsl #6
8780b6dc:	c0f00100 	rscsgt	r0, r0, r0, lsl #2
8780b6e0:	00710000 	rsbseq	r0, r1, r0
	...
8780b734:	00000400 	andeq	r0, r0, r0, lsl #8
8780b738:	20000400 	andcs	r0, r0, r0, lsl #8
8780b73c:	20000400 	andcs	r0, r0, r0, lsl #8
8780b740:	20000400 	andcs	r0, r0, r0, lsl #8
8780b744:	e0ff7f00 	rscs	r7, pc, r0, lsl #30
8780b748:	e0ffff01 	rscs	pc, pc, r1, lsl #30
8780b74c:	20000401 	andcs	r0, r0, r1, lsl #8
8780b750:	20000403 	andcs	r0, r0, r3, lsl #8
8780b754:	20000402 	andcs	r0, r0, r2, lsl #8
8780b758:	20000402 	andcs	r0, r0, r2, lsl #8
8780b75c:	00000402 	andeq	r0, r0, r2, lsl #8
8780b760:	00000002 	andeq	r0, r0, r2
8780b764:	0000c001 	andeq	ip, r0, r1
8780b768:	0000c001 	andeq	ip, r0, r1
	...
8780b7b4:	1c000000 	stcne	0, cr0, [r0], {-0}
8780b7b8:	3ee30000 	cdpcc	0, 14, cr0, cr3, cr0, {0}
8780b7bc:	c2ff0300 	rscsgt	r0, pc, #0, 6
8780b7c0:	c30c0200 	movwgt	r0, #49664	; 0xc200
8780b7c4:	c1040400 	tstgt	r4, r0, lsl #8
8780b7c8:	c1040400 	tstgt	r4, r0, lsl #8
8780b7cc:	c1040400 	tstgt	r4, r0, lsl #8
8780b7d0:	c1040400 	tstgt	r4, r0, lsl #8
8780b7d4:	c10c0600 	tstgt	ip, r0, lsl #12
8780b7d8:	c3f80300 	mvnsgt	r0, #0, 6
8780b7dc:	62f00500 	rscsvs	r0, r0, #0, 10
8780b7e0:	7e000600 	cfmadd32vc	mvax0, mvfx0, mvfx0, mvfx0
8780b7e4:	3c000600 	stccc	6, cr0, [r0], {-0}
	...
8780b830:	20000002 	andcs	r0, r0, r2
8780b834:	20000002 	andcs	r0, r0, r2
8780b838:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780b83c:	e0ffff07 	rscs	pc, pc, r7, lsl #30
8780b840:	20000100 	andcs	r0, r0, r0, lsl #2
8780b844:	20000200 	andcs	r0, r0, r0, lsl #4
8780b848:	00000600 	andeq	r0, r0, r0, lsl #12
8780b84c:	00000400 	andeq	r0, r0, r0, lsl #8
8780b850:	00000400 	andeq	r0, r0, r0, lsl #8
8780b854:	20000400 	andcs	r0, r0, r0, lsl #8
8780b858:	20000600 	andcs	r0, r0, r0, lsl #12
8780b85c:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780b860:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780b864:	20000000 	andcs	r0, r0, r0
8780b868:	20000000 	andcs	r0, r0, r0
	...
8780b8b8:	20000400 	andcs	r0, r0, r0, lsl #8
8780b8bc:	20000400 	andcs	r0, r0, r0, lsl #8
8780b8c0:	20000400 	andcs	r0, r0, r0, lsl #8
8780b8c4:	20000400 	andcs	r0, r0, r0, lsl #8
8780b8c8:	e0ff8703 	rscs	r8, pc, r3, lsl #14
8780b8cc:	e0ff8f03 	rscs	r8, pc, r3, lsl #30
8780b8d0:	20008003 	andcs	r8, r0, r3
8780b8d4:	20000000 	andcs	r0, r0, r0
8780b8d8:	20000000 	andcs	r0, r0, r0
8780b8dc:	20000000 	andcs	r0, r0, r0
	...
8780b938:	06000000 	streq	r0, [r0], -r0
8780b93c:	07000000 	streq	r0, [r0, -r0]
8780b940:	01000000 	mrseq	r0, (UNDEF: 0)
8780b944:	01000000 	mrseq	r0, (UNDEF: 0)
8780b948:	01000400 	tsteq	r0, r0, lsl #8
8780b94c:	01000400 	tsteq	r0, r0, lsl #8
8780b950:	03000400 	movweq	r0, #1024	; 0x400
8780b954:	06000400 	streq	r0, [r0], -r0, lsl #8
8780b958:	fcff8703 	ldc2l	7, cr8, [pc], #12	; 8780b96c <asc2_3216+0x2540>
8780b95c:	f8ff8f03 			; <UNDEFINED> instruction: 0xf8ff8f03
8780b960:	00008003 	andeq	r8, r0, r3
	...
8780b9b0:	20000002 	andcs	r0, r0, r2
8780b9b4:	20000002 	andcs	r0, r0, r2
8780b9b8:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780b9bc:	e0ffff07 	rscs	pc, pc, r7, lsl #30
8780b9c0:	20080000 	andcs	r0, r8, r0
8780b9c4:	20100000 	andscs	r0, r0, r0
8780b9c8:	00300000 	eorseq	r0, r0, r0
8780b9cc:	00fc0000 	rscseq	r0, ip, r0
8780b9d0:	008e0500 	addeq	r0, lr, r0, lsl #10
8780b9d4:	a0070700 	andge	r0, r7, r0, lsl #14
8780b9d8:	e0010600 	and	r0, r1, r0, lsl #12
8780b9dc:	e0000400 	and	r0, r0, r0, lsl #8
8780b9e0:	20000400 	andcs	r0, r0, r0, lsl #8
8780b9e4:	20000000 	andcs	r0, r0, r0
	...
8780ba38:	20000002 	andcs	r0, r0, r2
8780ba3c:	20000002 	andcs	r0, r0, r2
8780ba40:	20000002 	andcs	r0, r0, r2
8780ba44:	20000002 	andcs	r0, r0, r2
8780ba48:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ba4c:	e0ffff07 	rscs	pc, pc, r7, lsl #30
8780ba50:	20000000 	andcs	r0, r0, r0
8780ba54:	20000000 	andcs	r0, r0, r0
8780ba58:	20000000 	andcs	r0, r0, r0
8780ba5c:	20000000 	andcs	r0, r0, r0
	...
8780bab0:	20000400 	andcs	r0, r0, r0, lsl #8
8780bab4:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780bab8:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780babc:	20000200 	andcs	r0, r0, r0, lsl #4
8780bac0:	00000400 	andeq	r0, r0, r0, lsl #8
8780bac4:	20000400 	andcs	r0, r0, r0, lsl #8
8780bac8:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780bacc:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780bad0:	20000200 	andcs	r0, r0, r0, lsl #4
8780bad4:	00000400 	andeq	r0, r0, r0, lsl #8
8780bad8:	20000400 	andcs	r0, r0, r0, lsl #8
8780badc:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780bae0:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780bae4:	20000000 	andcs	r0, r0, r0
	...
8780bb30:	20000400 	andcs	r0, r0, r0, lsl #8
8780bb34:	20000400 	andcs	r0, r0, r0, lsl #8
8780bb38:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780bb3c:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780bb40:	20000100 	andcs	r0, r0, r0, lsl #2
8780bb44:	20000200 	andcs	r0, r0, r0, lsl #4
8780bb48:	00000200 	andeq	r0, r0, r0, lsl #4
8780bb4c:	00000400 	andeq	r0, r0, r0, lsl #8
8780bb50:	00000400 	andeq	r0, r0, r0, lsl #8
8780bb54:	20000400 	andcs	r0, r0, r0, lsl #8
8780bb58:	20000600 	andcs	r0, r0, r0, lsl #12
8780bb5c:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780bb60:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780bb64:	20000000 	andcs	r0, r0, r0
8780bb68:	20000000 	andcs	r0, r0, r0
	...
8780bbb4:	007e0000 	rsbseq	r0, lr, r0
8780bbb8:	80ff0000 	rscshi	r0, pc, r0
8780bbbc:	c0810300 	addgt	r0, r1, r0, lsl #6
8780bbc0:	40000200 	andmi	r0, r0, r0, lsl #4
8780bbc4:	20000600 	andcs	r0, r0, r0, lsl #12
8780bbc8:	20000400 	andcs	r0, r0, r0, lsl #8
8780bbcc:	20000400 	andcs	r0, r0, r0, lsl #8
8780bbd0:	20000400 	andcs	r0, r0, r0, lsl #8
8780bbd4:	20000600 	andcs	r0, r0, r0, lsl #12
8780bbd8:	40000200 	andmi	r0, r0, r0, lsl #4
8780bbdc:	c0810300 	addgt	r0, r1, r0, lsl #6
8780bbe0:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780bbe4:	007e0000 	rsbseq	r0, lr, r0
	...
8780bc30:	01000400 	tsteq	r0, r0, lsl #8
8780bc34:	01000400 	tsteq	r0, r0, lsl #8
8780bc38:	ffff0700 			; <UNDEFINED> instruction: 0xffff0700
8780bc3c:	ffff0f00 			; <UNDEFINED> instruction: 0xffff0f00
8780bc40:	c1000100 	mrsgt	r0, (UNDEF: 16)
8780bc44:	41000200 	mrsmi	r0, R8_usr
8780bc48:	20000400 	andcs	r0, r0, r0, lsl #8
8780bc4c:	20000400 	andcs	r0, r0, r0, lsl #8
8780bc50:	20000400 	andcs	r0, r0, r0, lsl #8
8780bc54:	20000400 	andcs	r0, r0, r0, lsl #8
8780bc58:	40000600 	andmi	r0, r0, r0, lsl #12
8780bc5c:	c0010300 	andgt	r0, r1, r0, lsl #6
8780bc60:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780bc64:	007e0000 	rsbseq	r0, lr, r0
	...
8780bcb4:	007e0000 	rsbseq	r0, lr, r0
8780bcb8:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780bcbc:	c0800300 	addgt	r0, r0, r0, lsl #6
8780bcc0:	60000200 	andvs	r0, r0, r0, lsl #4
8780bcc4:	20000400 	andcs	r0, r0, r0, lsl #8
8780bcc8:	20000400 	andcs	r0, r0, r0, lsl #8
8780bccc:	20000400 	andcs	r0, r0, r0, lsl #8
8780bcd0:	20000400 	andcs	r0, r0, r0, lsl #8
8780bcd4:	41000200 	mrsmi	r0, R8_usr
8780bcd8:	c1000300 	mrsgt	r0, LR_irq
8780bcdc:	ffff0300 			; <UNDEFINED> instruction: 0xffff0300
8780bce0:	ffff0700 			; <UNDEFINED> instruction: 0xffff0700
8780bce4:	01000000 	mrseq	r0, (UNDEF: 0)
8780bce8:	01000000 	mrseq	r0, (UNDEF: 0)
	...
8780bd30:	20000400 	andcs	r0, r0, r0, lsl #8
8780bd34:	20000400 	andcs	r0, r0, r0, lsl #8
8780bd38:	20000400 	andcs	r0, r0, r0, lsl #8
8780bd3c:	20000400 	andcs	r0, r0, r0, lsl #8
8780bd40:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780bd44:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780bd48:	20c00000 	sbccs	r0, r0, r0
8780bd4c:	20000100 	andcs	r0, r0, r0, lsl #2
8780bd50:	20000200 	andcs	r0, r0, r0, lsl #4
8780bd54:	20000600 	andcs	r0, r0, r0, lsl #12
8780bd58:	00000400 	andeq	r0, r0, r0, lsl #8
8780bd5c:	00000400 	andeq	r0, r0, r0, lsl #8
8780bd60:	00000700 	andeq	r0, r0, r0, lsl #14
8780bd64:	00000300 	andeq	r0, r0, r0, lsl #6
	...
8780bdb4:	e0030000 	and	r0, r3, r0
8780bdb8:	e0c00100 	sbc	r0, r0, r0, lsl #2
8780bdbc:	40e00300 	rscmi	r0, r0, r0, lsl #6
8780bdc0:	20300600 	eorscs	r0, r0, r0, lsl #12
8780bdc4:	20300400 	eorscs	r0, r0, r0, lsl #8
8780bdc8:	20180400 	andscs	r0, r8, r0, lsl #8
8780bdcc:	20180400 	andscs	r0, r8, r0, lsl #8
8780bdd0:	20180400 	andscs	r0, r8, r0, lsl #8
8780bdd4:	200c0400 	andcs	r0, ip, r0, lsl #8
8780bdd8:	600c0200 	andvs	r0, ip, r0, lsl #4
8780bddc:	c0070300 	andgt	r0, r7, r0, lsl #6
8780bde0:	80830700 	addhi	r0, r3, r0, lsl #14
	...
8780be34:	00000400 	andeq	r0, r0, r0, lsl #8
8780be38:	00000400 	andeq	r0, r0, r0, lsl #8
8780be3c:	00000400 	andeq	r0, r0, r0, lsl #8
8780be40:	00000c00 	andeq	r0, r0, r0, lsl #24
8780be44:	80ff1f00 	rscshi	r1, pc, r0, lsl #30
8780be48:	c0ffff00 	rscsgt	pc, pc, r0, lsl #30
8780be4c:	60000400 	andvs	r0, r0, r0, lsl #8
8780be50:	20000400 	andcs	r0, r0, r0, lsl #8
8780be54:	20000400 	andcs	r0, r0, r0, lsl #8
8780be58:	20000400 	andcs	r0, r0, r0, lsl #8
8780be5c:	40000400 	andmi	r0, r0, r0, lsl #8
8780be60:	80010000 	andhi	r0, r1, r0
	...
8780beb0:	00000400 	andeq	r0, r0, r0, lsl #8
8780beb4:	00000400 	andeq	r0, r0, r0, lsl #8
8780beb8:	80ff0700 	rscshi	r0, pc, r0, lsl #14
8780bebc:	c0ff0f00 	rscsgt	r0, pc, r0, lsl #30
8780bec0:	60000000 	andvs	r0, r0, r0
8780bec4:	20000000 	andcs	r0, r0, r0
8780bec8:	20000000 	andcs	r0, r0, r0
8780becc:	20000000 	andcs	r0, r0, r0
8780bed0:	20000000 	andcs	r0, r0, r0
8780bed4:	40000400 	andmi	r0, r0, r0, lsl #8
8780bed8:	80000400 	andhi	r0, r0, r0, lsl #8
8780bedc:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780bee0:	c0ff0f00 	rscsgt	r0, pc, r0, lsl #30
8780bee4:	40000000 	andmi	r0, r0, r0
8780bee8:	40000000 	andmi	r0, r0, r0
	...
8780bf30:	00000400 	andeq	r0, r0, r0, lsl #8
8780bf34:	00000400 	andeq	r0, r0, r0, lsl #8
8780bf38:	00800700 	addeq	r0, r0, r0, lsl #14
8780bf3c:	00f00700 	rscseq	r0, r0, r0, lsl #14
8780bf40:	00fe0400 	rscseq	r0, lr, r0, lsl #8
8780bf44:	c01f0400 	andsgt	r0, pc, r0, lsl #8
8780bf48:	e0030000 	and	r0, r3, r0
8780bf4c:	80030000 	andhi	r0, r3, r0
8780bf50:	001c0000 	andseq	r0, ip, r0
8780bf54:	00600400 	rsbeq	r0, r0, r0, lsl #8
8780bf58:	00800700 	addeq	r0, r0, r0, lsl #14
8780bf5c:	00000600 	andeq	r0, r0, r0, lsl #12
8780bf60:	00000400 	andeq	r0, r0, r0, lsl #8
	...
8780bfac:	00000400 	andeq	r0, r0, r0, lsl #8
8780bfb0:	00000600 	andeq	r0, r0, r0, lsl #12
8780bfb4:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780bfb8:	00fc0700 	rscseq	r0, ip, r0, lsl #14
8780bfbc:	803f0400 	eorshi	r0, pc, r0, lsl #8
8780bfc0:	e0030000 	and	r0, r3, r0
8780bfc4:	800f0400 	andhi	r0, pc, r0, lsl #8
8780bfc8:	00f00600 	rscseq	r0, r0, r0, lsl #12
8780bfcc:	00f00700 	rscseq	r0, r0, r0, lsl #14
8780bfd0:	80ff0700 	rscshi	r0, pc, r0, lsl #14
8780bfd4:	e00f0400 	and	r0, pc, r0, lsl #8
8780bfd8:	80030000 	andhi	r0, r3, r0
8780bfdc:	003c0400 	eorseq	r0, ip, r0, lsl #8
8780bfe0:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780bfe4:	00000600 	andeq	r0, r0, r0, lsl #12
8780bfe8:	00000400 	andeq	r0, r0, r0, lsl #8
	...
8780c030:	20000000 	andcs	r0, r0, r0
8780c034:	20000400 	andcs	r0, r0, r0, lsl #8
8780c038:	60000400 	andvs	r0, r0, r0, lsl #8
8780c03c:	e0000700 	and	r0, r0, r0, lsl #14
8780c040:	20830700 	addcs	r0, r3, r0, lsl #14
8780c044:	00e60700 	rsceq	r0, r6, r0, lsl #14
8780c048:	00f80400 	rscseq	r0, r8, r0, lsl #8
8780c04c:	003c0000 	eorseq	r0, ip, r0
8780c050:	205e0400 	subscs	r0, lr, r0, lsl #8
8780c054:	a0870500 	addge	r0, r7, r0, lsl #10
8780c058:	e0010600 	and	r0, r1, r0, lsl #12
8780c05c:	60000400 	andvs	r0, r0, r0, lsl #8
8780c060:	20000400 	andcs	r0, r0, r0, lsl #8
8780c064:	20000000 	andcs	r0, r0, r0
	...
8780c0b0:	00000400 	andeq	r0, r0, r0, lsl #8
8780c0b4:	03000400 	movweq	r0, #1024	; 0x400
8780c0b8:	03000700 	movweq	r0, #1792	; 0x700
8780c0bc:	01e00700 	mvneq	r0, r0, lsl #14
8780c0c0:	01f80400 	mvnseq	r0, r0, lsl #8
8780c0c4:	021f0400 	andseq	r0, pc, #0, 8
8780c0c8:	fc070000 	stc2	0, cr0, [r7], {-0}
8780c0cc:	e0000000 	and	r0, r0, r0
8780c0d0:	00070000 	andeq	r0, r7, r0
8780c0d4:	00380400 	eorseq	r0, r8, r0, lsl #8
8780c0d8:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780c0dc:	00000600 	andeq	r0, r0, r0, lsl #12
8780c0e0:	00000400 	andeq	r0, r0, r0, lsl #8
8780c0e4:	00000400 	andeq	r0, r0, r0, lsl #8
	...
8780c134:	60800700 	addvs	r0, r0, r0, lsl #14
8780c138:	e0000600 	and	r0, r0, r0, lsl #12
8780c13c:	e0030400 	and	r0, r3, r0, lsl #8
8780c140:	a0070400 	andge	r0, r7, r0, lsl #8
8780c144:	200e0400 	andcs	r0, lr, r0, lsl #8
8780c148:	203c0400 	eorscs	r0, ip, r0, lsl #8
8780c14c:	20700400 	rsbscs	r0, r0, r0, lsl #8
8780c150:	20e00500 	rsccs	r0, r0, r0, lsl #10
8780c154:	20800700 	addcs	r0, r0, r0, lsl #14
8780c158:	60000700 	andvs	r0, r0, r0, lsl #14
8780c15c:	e0000400 	and	r0, r0, r0, lsl #8
8780c160:	80030000 	andhi	r0, r3, r0
	...
8780c1c8:	00800000 	addeq	r0, r0, r0
8780c1cc:	00800000 	addeq	r0, r0, r0
8780c1d0:	00400100 	subeq	r0, r0, r0, lsl #2
8780c1d4:	f83ffe07 			; <UNDEFINED> instruction: 0xf83ffe07
8780c1d8:	04000008 	streq	r0, [r0], #-8
8780c1dc:	02000010 	andeq	r0, r0, #16
8780c1e0:	02000010 	andeq	r0, r0, #16
	...
8780c24c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
	...
8780c2b4:	02000010 	andeq	r0, r0, #16
8780c2b8:	02000010 	andeq	r0, r0, #16
8780c2bc:	04000008 	streq	r0, [r0], #-8
8780c2c0:	f83ffe07 			; <UNDEFINED> instruction: 0xf83ffe07
8780c2c4:	00400100 	subeq	r0, r0, r0, lsl #2
8780c2c8:	00800000 	addeq	r0, r0, r0
8780c2cc:	00800000 	addeq	r0, r0, r0
	...
8780c330:	00000018 	andeq	r0, r0, r8, lsl r0
8780c334:	00000030 	andeq	r0, r0, r0, lsr r0
8780c338:	00000040 	andeq	r0, r0, r0, asr #32
8780c33c:	00000040 	andeq	r0, r0, r0, asr #32
8780c340:	00000040 	andeq	r0, r0, r0, asr #32
8780c344:	00000020 	andeq	r0, r0, r0, lsr #32
8780c348:	00000030 	andeq	r0, r0, r0, lsr r0
8780c34c:	00000008 	andeq	r0, r0, r8
8780c350:	00000004 	andeq	r0, r0, r4
8780c354:	00000002 	andeq	r0, r0, r2
8780c358:	00000002 	andeq	r0, r0, r2
8780c35c:	00000002 	andeq	r0, r0, r2
8780c360:	0000000c 	andeq	r0, r0, ip
8780c364:	00000018 	andeq	r0, r0, r8, lsl r0
	...

8780c3ac <.LC0>:
8780c3ac:	00000000 	andeq	r0, r0, r0
8780c3b0:	003b001f 	eorseq	r0, fp, pc, lsl r0
8780c3b4:	0078005a 	rsbseq	r0, r8, sl, asr r0
8780c3b8:	00b50097 	umlalseq	r0, r5, r7, r0
8780c3bc:	00f300d4 	ldrsbteq	r0, [r3], #4
8780c3c0:	01300111 	teqeq	r0, r1, lsl r1
8780c3c4:	0000014e 	andeq	r0, r0, lr, asr #2

8780c3c8 <.LC1>:
8780c3c8:	1f1c1f00 	svcne	0x001c1f00
8780c3cc:	1f1e1f1e 	svcne	0x001e1f1e
8780c3d0:	1e1f1e1f 	mrcne	14, 0, r1, cr15, cr15, {0}
8780c3d4:	0000001f 	andeq	r0, r0, pc, lsl r0

8780c3d8 <.LC0>:
8780c3d8:	326d6369 	rsbcc	r6, sp, #-1543503871	; 0xa4000001
8780c3dc:	38303630 	ldmdacc	r0!, {r4, r5, r9, sl, ip, sp}
8780c3e0:	20646920 	rsbcs	r6, r4, r0, lsr #18
8780c3e4:	2325203d 	teqcs	r5, #61	; 0x3d
8780c3e8:	000a0d58 	andeq	r0, sl, r8, asr sp

8780c3ec <.LC0>:
8780c3ec:	20505443 	subscs	r5, r0, r3, asr #8
8780c3f0:	253a4449 	ldrcs	r4, [sl, #-1097]!	; 0x449
8780c3f4:	000a0d73 	andeq	r0, sl, r3, ror sp

8780c3f8 <.LC1>:
8780c3f8:	61666544 	cmnvs	r6, r4, asr #10
8780c3fc:	20746c75 	rsbscs	r6, r4, r5, ror ip
8780c400:	3a726556 	bcc	894a5960 <__bss_end+0x1c985cc>
8780c404:	0d782325 	ldcleq	3, cr2, [r8, #-148]!	; 0xffffff6c
8780c408:	0000000a 	andeq	r0, r0, sl

8780c40c <GT9147_TPX_TBL>:
8780c40c:	81588150 	cmphi	r8, r0, asr r1
8780c410:	81688160 	cmnhi	r8, r0, ror #2
8780c414:	00008170 	andeq	r8, r0, r0, ror r1

8780c418 <.LC0>:
8780c418:	63756f54 	cmnvs	r5, #84, 30	; 0x150
8780c41c:	72462068 	subvc	r2, r6, #104	; 0x68
8780c420:	61776d69 	cmnvs	r7, r9, ror #26
8780c424:	56206572 			; <UNDEFINED> instruction: 0x56206572
8780c428:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
8780c42c:	253a6e6f 	ldrcs	r6, [sl, #-3695]!	; 0xe6f
8780c430:	0a0d5823 	beq	87b624c4 <__bss_end+0x355130>
8780c434:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.exidx:

8780c438 <.ARM.exidx>:
8780c438:	7fffb264 	svcvc	0x00ffb264
8780c43c:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

8780c440 <release.7465>:
8780c440:	00000001 	andeq	r0, r0, r1

8780c444 <_ctype>:
8780c444:	08080808 	stmdaeq	r8, {r3, fp}
8780c448:	08080808 	stmdaeq	r8, {r3, fp}
8780c44c:	28282808 	stmdacs	r8!, {r3, fp, sp}
8780c450:	08082828 	stmdaeq	r8, {r3, r5, fp, sp}
8780c454:	08080808 	stmdaeq	r8, {r3, fp}
8780c458:	08080808 	stmdaeq	r8, {r3, fp}
8780c45c:	08080808 	stmdaeq	r8, {r3, fp}
8780c460:	08080808 	stmdaeq	r8, {r3, fp}
8780c464:	101010a0 	andsne	r1, r0, r0, lsr #1
8780c468:	10101010 	andsne	r1, r0, r0, lsl r0
8780c46c:	10101010 	andsne	r1, r0, r0, lsl r0
8780c470:	10101010 	andsne	r1, r0, r0, lsl r0
8780c474:	04040404 	streq	r0, [r4], #-1028	; 0x404
8780c478:	04040404 	streq	r0, [r4], #-1028	; 0x404
8780c47c:	10100404 	andsne	r0, r0, r4, lsl #8
8780c480:	10101010 	andsne	r1, r0, r0, lsl r0
8780c484:	41414110 	cmpmi	r1, r0, lsl r1
8780c488:	01414141 	cmpeq	r1, r1, asr #2
8780c48c:	01010101 	tsteq	r1, r1, lsl #2
8780c490:	01010101 	tsteq	r1, r1, lsl #2
8780c494:	01010101 	tsteq	r1, r1, lsl #2
8780c498:	01010101 	tsteq	r1, r1, lsl #2
8780c49c:	10010101 	andne	r0, r1, r1, lsl #2
8780c4a0:	10101010 	andsne	r1, r0, r0, lsl r0
8780c4a4:	42424210 	submi	r4, r2, #16, 4
8780c4a8:	02424242 	subeq	r4, r2, #536870916	; 0x20000004
8780c4ac:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c4b0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c4b4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c4b8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c4bc:	10020202 	andne	r0, r2, r2, lsl #4
8780c4c0:	08101010 	ldmdaeq	r0, {r4, ip}
	...
8780c4e4:	101010a0 	andsne	r1, r0, r0, lsr #1
8780c4e8:	10101010 	andsne	r1, r0, r0, lsl r0
8780c4ec:	10101010 	andsne	r1, r0, r0, lsl r0
8780c4f0:	10101010 	andsne	r1, r0, r0, lsl r0
8780c4f4:	10101010 	andsne	r1, r0, r0, lsl r0
8780c4f8:	10101010 	andsne	r1, r0, r0, lsl r0
8780c4fc:	10101010 	andsne	r1, r0, r0, lsl r0
8780c500:	10101010 	andsne	r1, r0, r0, lsl r0
8780c504:	01010101 	tsteq	r1, r1, lsl #2
8780c508:	01010101 	tsteq	r1, r1, lsl #2
8780c50c:	01010101 	tsteq	r1, r1, lsl #2
8780c510:	01010101 	tsteq	r1, r1, lsl #2
8780c514:	01010101 	tsteq	r1, r1, lsl #2
8780c518:	10010101 	andne	r0, r1, r1, lsl #2
8780c51c:	01010101 	tsteq	r1, r1, lsl #2
8780c520:	02010101 	andeq	r0, r1, #1073741824	; 0x40000000
8780c524:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c528:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c52c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c530:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c534:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c538:	10020202 	andne	r0, r2, r2, lsl #4
8780c53c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780c540:	02020202 	andeq	r0, r2, #536870912	; 0x20000000

8780c544 <GT9147_CFG_TBL>:
8780c544:	1001e041 	andne	lr, r1, r1, asr #32
8780c548:	000d0501 	andeq	r0, sp, r1, lsl #10
8780c54c:	05280801 	streq	r0, [r8, #-2049]!	; 0x801
8780c550:	05033250 	streq	r3, [r3, #-592]	; 0x250
8780c554:	ffff0000 			; <UNDEFINED> instruction: 0xffff0000
8780c558:	00000000 	andeq	r0, r0, r0
8780c55c:	89000000 	stmdbhi	r0, {}	; <UNPREDICTABLE>
8780c560:	15170a28 	ldrne	r0, [r7, #-2600]	; 0xa28
8780c564:	00000d31 	andeq	r0, r0, r1, lsr sp
8780c568:	25039b02 	strcs	r9, [r3, #-2818]	; 0xb02
8780c56c:	00000000 	andeq	r0, r0, r0
8780c570:	32000000 	andcc	r0, r0, #0
8780c574:	0f000000 	svceq	0x00000000
8780c578:	02c59494 	sbceq	r9, r5, #148, 8	; 0x94000000
8780c57c:	04000007 	streq	r0, [r0], #-7
8780c580:	5c00138d 	stcpl	3, cr1, [r0], {141}	; 0x8d
8780c584:	303c001e 	eorscc	r0, ip, lr, lsl r0
8780c588:	004c2900 	subeq	r2, ip, r0, lsl #18
8780c58c:	1e00781e 	mcrne	8, 0, r7, cr0, cr14, {0}
	...
8780c5b4:	0e0c0a08 	vmlaeq.f32	s0, s24, s16
8780c5b8:	16141210 			; <UNDEFINED> instruction: 0x16141210
8780c5bc:	00001a18 	andeq	r1, r0, r8, lsl sl
8780c5c0:	ff1f0000 			; <UNDEFINED> instruction: 0xff1f0000
8780c5c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
8780c5c8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
8780c5cc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
8780c5d0:	0200ffff 	andeq	pc, r0, #1020	; 0x3fc
8780c5d4:	08060504 	stmdaeq	r6, {r2, r8, sl}
8780c5d8:	1d0e0c0a 	stcne	12, cr0, [lr, #-40]	; 0xffffffd8
8780c5dc:	22201f1e 	eorcs	r1, r0, #30, 30	; 0x78
8780c5e0:	ff292824 			; <UNDEFINED> instruction: 0xff292824
	...
8780c5ec:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
8780c5f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
8780c5f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
8780c5f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

Disassembly of section .bss:

8780c5fc <irqNesting>:
8780c5fc:	00000000 	andeq	r0, r0, r0

8780c600 <irqTable>:
	...

8780cb00 <state.7483>:
	...

8780cb01 <state.7434>:
	...

8780cb02 <state.7499>:
	...

8780cb04 <g_pcOutBuf>:
	...

8780cf04 <g_pcInBuf>:
	...

8780d304 <___strtok>:
8780d304:	00000000 	andeq	r0, r0, r0

8780d308 <tftlcd_dev>:
	...

8780d32c <icm20608_dev>:
	...

8780d364 <gt9147_dev>:
	...

8780d37c <ft5426_dev>:
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
  18:	878073e9 	strhi	r7, [r0, r9, ror #7]
  1c:	0000025c 	andeq	r0, r0, ip, asr r2
  20:	0000000c 	andeq	r0, r0, ip
  24:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  28:	7c020001 	stcvc	0, cr0, [r2], {1}
  2c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  30:	00000018 	andeq	r0, r0, r8, lsl r0
  34:	00000020 	andeq	r0, r0, r0, lsr #32
  38:	87807660 	strhi	r7, [r0, r0, ror #12]
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
  64:	8780769c 			; <UNDEFINED> instruction: 0x8780769c
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
  d4:	878073e8 	strhi	r7, [r0, r8, ror #7]
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
 1d4:	87807660 	strhi	r7, [r0, r0, ror #12]
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
 2b8:	80769002 	rsbshi	r9, r6, r2
 2bc:	0ab00387 	beq	fec010e0 <__bss_end+0x773f3d4c>
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
 3a0:	8780769c 			; <UNDEFINED> instruction: 0x8780769c
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
  10:	878073e8 	strhi	r7, [r0, r8, ror #7]
  14:	8780765e 			; <UNDEFINED> instruction: 0x8780765e
  18:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; ffffff64 <__bss_end+0x787f2bd0>
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
  a8:	6c2f3130 	stfvss	f3, [pc], #-192	; fffffff0 <__bss_end+0x787f2c5c>
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
  f8:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; ffffff34 <__bss_end+0x787f2ba0>
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
 1cc:	60000001 	andvs	r0, r0, r1
 1d0:	90878076 	addls	r8, r7, r6, ror r0
 1d4:	2f878076 	svccs	0x00878076
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
 388:	76900000 	ldrvc	r0, [r0], r0
 38c:	769c8780 	ldrvc	r8, [ip], r0, lsl #15
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
 550:	769c0000 	ldrvc	r0, [ip], r0
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
 5f0:	8780769c 			; <UNDEFINED> instruction: 0x8780769c
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
  10:	878073e8 	strhi	r7, [r0, r8, ror #7]
  14:	00000276 	andeq	r0, r0, r6, ror r2
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01bf0002 			; <UNDEFINED> instruction: 0x01bf0002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	87807660 	strhi	r7, [r0, r0, ror #12]
  34:	00000030 	andeq	r0, r0, r0, lsr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	037a0002 	cmneq	sl, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	87807690 			; <UNDEFINED> instruction: 0x87807690
  54:	0000000c 	andeq	r0, r0, ip
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	05390002 	ldreq	r0, [r9, #-2]!
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	8780769c 			; <UNDEFINED> instruction: 0x8780769c
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
  3c:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; fffffe78 <__bss_end+0x787f2ae4>
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

