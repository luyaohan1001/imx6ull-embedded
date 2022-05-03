
build/printf.elf:     file format elf32-littlearm


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
87800080:	ea000fd2 	b	87803fd0 <__main_from_arm>

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
8780081a:	f244 03a8 	movw	r3, #16552	; 0x40a8
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
87800842:	f244 03a8 	movw	r3, #16552	; 0x40a8
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
87800882:	f244 03a8 	movw	r3, #16552	; 0x40a8
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
87800b7e:	f244 13ac 	movw	r3, #16812	; 0x41ac
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
87800bc0:	f244 13b0 	movw	r3, #16816	; 0x41b0
87800bc4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800bc8:	68fa      	ldr	r2, [r7, #12]
87800bca:	68b9      	ldr	r1, [r7, #8]
87800bcc:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
87800bd0:	f244 12b0 	movw	r2, #16816	; 0x41b0
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
87800c0e:	f244 13ac 	movw	r3, #16812	; 0x41ac
87800c12:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c16:	681b      	ldr	r3, [r3, #0]
87800c18:	1c5a      	adds	r2, r3, #1
87800c1a:	f244 13ac 	movw	r3, #16812	; 0x41ac
87800c1e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c22:	601a      	str	r2, [r3, #0]
87800c24:	f244 13b0 	movw	r3, #16816	; 0x41b0
87800c28:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c2c:	68fa      	ldr	r2, [r7, #12]
87800c2e:	f853 4032 	ldr.w	r4, [r3, r2, lsl #3]
87800c32:	f244 12b0 	movw	r2, #16816	; 0x41b0
87800c36:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800c3a:	68fb      	ldr	r3, [r7, #12]
87800c3c:	00db      	lsls	r3, r3, #3
87800c3e:	4413      	add	r3, r2
87800c40:	685b      	ldr	r3, [r3, #4]
87800c42:	4619      	mov	r1, r3
87800c44:	68f8      	ldr	r0, [r7, #12]
87800c46:	47a0      	blx	r4
87800c48:	f244 13ac 	movw	r3, #16812	; 0x41ac
87800c4c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800c50:	681b      	ldr	r3, [r3, #0]
87800c52:	1e5a      	subs	r2, r3, #1
87800c54:	f244 13ac 	movw	r3, #16812	; 0x41ac
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
87800d9e:	f244 63b0 	movw	r3, #18096	; 0x46b0
87800da2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800da6:	781b      	ldrb	r3, [r3, #0]
87800da8:	2b00      	cmp	r3, #0
87800daa:	bf0c      	ite	eq
87800dac:	2301      	moveq	r3, #1
87800dae:	2300      	movne	r3, #0
87800db0:	b2db      	uxtb	r3, r3
87800db2:	461a      	mov	r2, r3
87800db4:	f244 63b0 	movw	r3, #18096	; 0x46b0
87800db8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800dbc:	701a      	strb	r2, [r3, #0]
87800dbe:	f244 63b0 	movw	r3, #18096	; 0x46b0
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
87800e84:	f244 63b1 	movw	r3, #18097	; 0x46b1
87800e88:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800e8c:	781b      	ldrb	r3, [r3, #0]
87800e8e:	2b00      	cmp	r3, #0
87800e90:	bf0c      	ite	eq
87800e92:	2301      	moveq	r3, #1
87800e94:	2300      	movne	r3, #0
87800e96:	b2db      	uxtb	r3, r3
87800e98:	461a      	mov	r2, r3
87800e9a:	f244 63b1 	movw	r3, #18097	; 0x46b1
87800e9e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800ea2:	701a      	strb	r2, [r3, #0]
87800ea4:	2300      	movs	r3, #0
87800ea6:	f2c0 230d 	movt	r3, #525	; 0x20d
87800eaa:	685b      	ldr	r3, [r3, #4]
87800eac:	f003 0301 	and.w	r3, r3, #1
87800eb0:	2b00      	cmp	r3, #0
87800eb2:	d008      	beq.n	87800ec6 <epit1_irqhandler+0x46>
87800eb4:	f244 63b1 	movw	r3, #18097	; 0x46b1
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
878010fc:	f244 63b2 	movw	r3, #18098	; 0x46b2
87801100:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801104:	781b      	ldrb	r3, [r3, #0]
87801106:	2b00      	cmp	r3, #0
87801108:	bf0c      	ite	eq
8780110a:	2301      	moveq	r3, #1
8780110c:	2300      	movne	r3, #0
8780110e:	b2db      	uxtb	r3, r3
87801110:	461a      	mov	r2, r3
87801112:	f244 63b2 	movw	r3, #18098	; 0x46b2
87801116:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780111a:	701a      	strb	r2, [r3, #0]
8780111c:	f244 63b2 	movw	r3, #18098	; 0x46b2
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
87801356:	f002 fd81 	bl	87803e5c <__aeabi_uidivmod>
8780135a:	460b      	mov	r3, r1
8780135c:	643b      	str	r3, [r7, #64]	; 0x40
8780135e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87801360:	647b      	str	r3, [r7, #68]	; 0x44
87801362:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801364:	2b00      	cmp	r3, #0
87801366:	d1f1      	bne.n	8780134c <uart_setbaudrate+0x4c>
87801368:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
8780136a:	6878      	ldr	r0, [r7, #4]
8780136c:	f002 fc48 	bl	87803c00 <__aeabi_uidiv>
87801370:	4603      	mov	r3, r0
87801372:	647b      	str	r3, [r7, #68]	; 0x44
87801374:	68bb      	ldr	r3, [r7, #8]
87801376:	011b      	lsls	r3, r3, #4
87801378:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
8780137a:	4618      	mov	r0, r3
8780137c:	f002 fc40 	bl	87803c00 <__aeabi_uidiv>
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
878013dc:	f002 fc10 	bl	87803c00 <__aeabi_uidiv>
878013e0:	4603      	mov	r3, r0
878013e2:	647b      	str	r3, [r7, #68]	; 0x44
878013e4:	6979      	ldr	r1, [r7, #20]
878013e6:	6c38      	ldr	r0, [r7, #64]	; 0x40
878013e8:	f002 fc0a 	bl	87803c00 <__aeabi_uidiv>
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
8780149c:	f002 fcec 	bl	87803e78 <__aeabi_uldivmod>
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
878014ba:	f002 fba1 	bl	87803c00 <__aeabi_uidiv>
878014be:	4603      	mov	r3, r0
878014c0:	f04f 0400 	mov.w	r4, #0
878014c4:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
878014c8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878014ca:	011b      	lsls	r3, r3, #4
878014cc:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
878014ce:	4618      	mov	r0, r3
878014d0:	f002 fb96 	bl	87803c00 <__aeabi_uidiv>
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
87801500:	f002 fcba 	bl	87803e78 <__aeabi_uldivmod>
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
878015a2:	f002 fb2d 	bl	87803c00 <__aeabi_uidiv>
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

878016d4 <__div64_32>:
878016d4:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
878016d8:	b08c      	sub	sp, #48	; 0x30
878016da:	af00      	add	r7, sp, #0
878016dc:	6078      	str	r0, [r7, #4]
878016de:	6039      	str	r1, [r7, #0]
878016e0:	687b      	ldr	r3, [r7, #4]
878016e2:	e9d3 2300 	ldrd	r2, r3, [r3]
878016e6:	e9c7 230a 	strd	r2, r3, [r7, #40]	; 0x28
878016ea:	683b      	ldr	r3, [r7, #0]
878016ec:	461a      	mov	r2, r3
878016ee:	f04f 0300 	mov.w	r3, #0
878016f2:	e9c7 2308 	strd	r2, r3, [r7, #32]
878016f6:	f04f 0201 	mov.w	r2, #1
878016fa:	f04f 0300 	mov.w	r3, #0
878016fe:	e9c7 2304 	strd	r2, r3, [r7, #16]
87801702:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	; 0x28
87801706:	469a      	mov	sl, r3
87801708:	f04f 0b00 	mov.w	fp, #0
8780170c:	4653      	mov	r3, sl
8780170e:	60fb      	str	r3, [r7, #12]
87801710:	f04f 0200 	mov.w	r2, #0
87801714:	f04f 0300 	mov.w	r3, #0
87801718:	e9c7 2306 	strd	r2, r3, [r7, #24]
8780171c:	68fa      	ldr	r2, [r7, #12]
8780171e:	683b      	ldr	r3, [r7, #0]
87801720:	429a      	cmp	r2, r3
87801722:	d320      	bcc.n	87801766 <__div64_32+0x92>
87801724:	6839      	ldr	r1, [r7, #0]
87801726:	68f8      	ldr	r0, [r7, #12]
87801728:	f002 fa6a 	bl	87803c00 <__aeabi_uidiv>
8780172c:	4603      	mov	r3, r0
8780172e:	60fb      	str	r3, [r7, #12]
87801730:	68fb      	ldr	r3, [r7, #12]
87801732:	461a      	mov	r2, r3
87801734:	f04f 0300 	mov.w	r3, #0
87801738:	4691      	mov	r9, r2
8780173a:	f04f 0800 	mov.w	r8, #0
8780173e:	e9c7 8906 	strd	r8, r9, [r7, #24]
87801742:	68fb      	ldr	r3, [r7, #12]
87801744:	683a      	ldr	r2, [r7, #0]
87801746:	fb02 f303 	mul.w	r3, r2, r3
8780174a:	461a      	mov	r2, r3
8780174c:	f04f 0300 	mov.w	r3, #0
87801750:	0015      	movs	r5, r2
87801752:	2400      	movs	r4, #0
87801754:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	; 0x28
87801758:	1b12      	subs	r2, r2, r4
8780175a:	eb63 0305 	sbc.w	r3, r3, r5
8780175e:	461c      	mov	r4, r3
87801760:	4613      	mov	r3, r2
87801762:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
87801766:	e011      	b.n	8780178c <__div64_32+0xb8>
87801768:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
8780176c:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801770:	185b      	adds	r3, r3, r1
87801772:	eb44 0402 	adc.w	r4, r4, r2
87801776:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780177a:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
8780177e:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
87801782:	185b      	adds	r3, r3, r1
87801784:	eb44 0402 	adc.w	r4, r4, r2
87801788:	e9c7 3404 	strd	r3, r4, [r7, #16]
8780178c:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801790:	2b01      	cmp	r3, #1
87801792:	f174 0300 	sbcs.w	r3, r4, #0
87801796:	db07      	blt.n	878017a8 <__div64_32+0xd4>
87801798:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
8780179c:	e9d7 340a 	ldrd	r3, r4, [r7, #40]	; 0x28
878017a0:	42a2      	cmp	r2, r4
878017a2:	bf08      	it	eq
878017a4:	4299      	cmpeq	r1, r3
878017a6:	d3df      	bcc.n	87801768 <__div64_32+0x94>
878017a8:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	; 0x28
878017ac:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878017b0:	42a2      	cmp	r2, r4
878017b2:	bf08      	it	eq
878017b4:	4299      	cmpeq	r1, r3
878017b6:	d311      	bcc.n	878017dc <__div64_32+0x108>
878017b8:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	; 0x28
878017bc:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878017c0:	1acb      	subs	r3, r1, r3
878017c2:	eb62 0404 	sbc.w	r4, r2, r4
878017c6:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
878017ca:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
878017ce:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
878017d2:	185b      	adds	r3, r3, r1
878017d4:	eb44 0402 	adc.w	r4, r4, r2
878017d8:	e9c7 3406 	strd	r3, r4, [r7, #24]
878017dc:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878017e0:	0864      	lsrs	r4, r4, #1
878017e2:	ea4f 0333 	mov.w	r3, r3, rrx
878017e6:	e9c7 3408 	strd	r3, r4, [r7, #32]
878017ea:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
878017ee:	0864      	lsrs	r4, r4, #1
878017f0:	ea4f 0333 	mov.w	r3, r3, rrx
878017f4:	e9c7 3404 	strd	r3, r4, [r7, #16]
878017f8:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
878017fc:	4323      	orrs	r3, r4
878017fe:	d1d3      	bne.n	878017a8 <__div64_32+0xd4>
87801800:	687a      	ldr	r2, [r7, #4]
87801802:	e9d7 3406 	ldrd	r3, r4, [r7, #24]
87801806:	e9c2 3400 	strd	r3, r4, [r2]
8780180a:	6abb      	ldr	r3, [r7, #40]	; 0x28
8780180c:	4618      	mov	r0, r3
8780180e:	3730      	adds	r7, #48	; 0x30
87801810:	46bd      	mov	sp, r7
87801812:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
87801816:	bf00      	nop
	...

87801820 <__umodsi3>:
87801820:	e2512001 	subs	r2, r1, #1
87801824:	3a000062 	bcc	878019b4 <Ldiv0>
87801828:	11500001 	cmpne	r0, r1
8780182c:	03a00000 	moveq	r0, #0
87801830:	81110002 	tsthi	r1, r2
87801834:	00000002 	andeq	r0, r0, r2
87801838:	91a0f00e 	movls	pc, lr
8780183c:	e3a02000 	mov	r2, #0
87801840:	e3510201 	cmp	r1, #268435456	; 0x10000000
87801844:	31510000 	cmpcc	r1, r0
87801848:	31a01201 	lslcc	r1, r1, #4
8780184c:	32822004 	addcc	r2, r2, #4
87801850:	3afffffa 	bcc	87801840 <__umodsi3+0x20>
87801854:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
87801858:	31510000 	cmpcc	r1, r0
8780185c:	31a01081 	lslcc	r1, r1, #1
87801860:	32822001 	addcc	r2, r2, #1
87801864:	3afffffa 	bcc	87801854 <__umodsi3+0x34>
87801868:	e2522003 	subs	r2, r2, #3
8780186c:	ba00000e 	blt	878018ac <__umodsi3+0x8c>
87801870:	e1500001 	cmp	r0, r1
87801874:	20400001 	subcs	r0, r0, r1
87801878:	e15000a1 	cmp	r0, r1, lsr #1
8780187c:	204000a1 	subcs	r0, r0, r1, lsr #1
87801880:	e1500121 	cmp	r0, r1, lsr #2
87801884:	20400121 	subcs	r0, r0, r1, lsr #2
87801888:	e15001a1 	cmp	r0, r1, lsr #3
8780188c:	204001a1 	subcs	r0, r0, r1, lsr #3
87801890:	e3500001 	cmp	r0, #1
87801894:	e1a01221 	lsr	r1, r1, #4
87801898:	a2522004 	subsge	r2, r2, #4
8780189c:	aafffff3 	bge	87801870 <__umodsi3+0x50>
878018a0:	e3120003 	tst	r2, #3
878018a4:	13300000 	teqne	r0, #0
878018a8:	0a00000a 	beq	878018d8 <__umodsi3+0xb8>
878018ac:	e3720002 	cmn	r2, #2
878018b0:	ba000006 	blt	878018d0 <__umodsi3+0xb0>
878018b4:	0a000002 	beq	878018c4 <__umodsi3+0xa4>
878018b8:	e1500001 	cmp	r0, r1
878018bc:	20400001 	subcs	r0, r0, r1
878018c0:	e1a010a1 	lsr	r1, r1, #1
878018c4:	e1500001 	cmp	r0, r1
878018c8:	20400001 	subcs	r0, r0, r1
878018cc:	e1a010a1 	lsr	r1, r1, #1
878018d0:	e1500001 	cmp	r0, r1
878018d4:	20400001 	subcs	r0, r0, r1
878018d8:	e1a0f00e 	mov	pc, lr
878018dc:	90909090 	umullsls	r9, r0, r0, r0

878018e0 <__modsi3>:
878018e0:	e3510000 	cmp	r1, #0
878018e4:	0a000032 	beq	878019b4 <Ldiv0>
878018e8:	42611000 	rsbmi	r1, r1, #0
878018ec:	e1b0c000 	movs	ip, r0
878018f0:	42600000 	rsbmi	r0, r0, #0
878018f4:	e2512001 	subs	r2, r1, #1
878018f8:	11500001 	cmpne	r0, r1
878018fc:	03a00000 	moveq	r0, #0
87801900:	81110002 	tsthi	r1, r2
87801904:	00000002 	andeq	r0, r0, r2
87801908:	9a000026 	bls	878019a8 <__modsi3+0xc8>
8780190c:	e3a02000 	mov	r2, #0
87801910:	e3510201 	cmp	r1, #268435456	; 0x10000000
87801914:	31510000 	cmpcc	r1, r0
87801918:	31a01201 	lslcc	r1, r1, #4
8780191c:	32822004 	addcc	r2, r2, #4
87801920:	3afffffa 	bcc	87801910 <__modsi3+0x30>
87801924:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
87801928:	31510000 	cmpcc	r1, r0
8780192c:	31a01081 	lslcc	r1, r1, #1
87801930:	32822001 	addcc	r2, r2, #1
87801934:	3afffffa 	bcc	87801924 <__modsi3+0x44>
87801938:	e2522003 	subs	r2, r2, #3
8780193c:	ba00000e 	blt	8780197c <__modsi3+0x9c>
87801940:	e1500001 	cmp	r0, r1
87801944:	20400001 	subcs	r0, r0, r1
87801948:	e15000a1 	cmp	r0, r1, lsr #1
8780194c:	204000a1 	subcs	r0, r0, r1, lsr #1
87801950:	e1500121 	cmp	r0, r1, lsr #2
87801954:	20400121 	subcs	r0, r0, r1, lsr #2
87801958:	e15001a1 	cmp	r0, r1, lsr #3
8780195c:	204001a1 	subcs	r0, r0, r1, lsr #3
87801960:	e3500001 	cmp	r0, #1
87801964:	e1a01221 	lsr	r1, r1, #4
87801968:	a2522004 	subsge	r2, r2, #4
8780196c:	aafffff3 	bge	87801940 <__modsi3+0x60>
87801970:	e3120003 	tst	r2, #3
87801974:	13300000 	teqne	r0, #0
87801978:	0a00000a 	beq	878019a8 <__modsi3+0xc8>
8780197c:	e3720002 	cmn	r2, #2
87801980:	ba000006 	blt	878019a0 <__modsi3+0xc0>
87801984:	0a000002 	beq	87801994 <__modsi3+0xb4>
87801988:	e1500001 	cmp	r0, r1
8780198c:	20400001 	subcs	r0, r0, r1
87801990:	e1a010a1 	lsr	r1, r1, #1
87801994:	e1500001 	cmp	r0, r1
87801998:	20400001 	subcs	r0, r0, r1
8780199c:	e1a010a1 	lsr	r1, r1, #1
878019a0:	e1500001 	cmp	r0, r1
878019a4:	20400001 	subcs	r0, r0, r1
878019a8:	e35c0000 	cmp	ip, #0
878019ac:	42600000 	rsbmi	r0, r0, #0
878019b0:	e1a0f00e 	mov	pc, lr

878019b4 <Ldiv0>:
878019b4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
878019b8:	e3a00000 	mov	r0, #0
878019bc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

878019c0 <__muldi3>:
878019c0:	b490      	push	{r4, r7}
878019c2:	b08c      	sub	sp, #48	; 0x30
878019c4:	af00      	add	r7, sp, #0
878019c6:	e9c7 0102 	strd	r0, r1, [r7, #8]
878019ca:	e9c7 2300 	strd	r2, r3, [r7]
878019ce:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
878019d2:	e9c7 3408 	strd	r3, r4, [r7, #32]
878019d6:	e9d7 3400 	ldrd	r3, r4, [r7]
878019da:	e9c7 3406 	strd	r3, r4, [r7, #24]
878019de:	6a3b      	ldr	r3, [r7, #32]
878019e0:	69ba      	ldr	r2, [r7, #24]
878019e2:	4611      	mov	r1, r2
878019e4:	ea4f 4013 	mov.w	r0, r3, lsr #16
878019e8:	ea4f 4211 	mov.w	r2, r1, lsr #16
878019ec:	ea23 4400 	bic.w	r4, r3, r0, lsl #16
878019f0:	ea21 4102 	bic.w	r1, r1, r2, lsl #16
878019f4:	fb04 f301 	mul.w	r3, r4, r1
878019f8:	fb00 f101 	mul.w	r1, r0, r1
878019fc:	fb02 f404 	mul.w	r4, r2, r4
87801a00:	fb00 f202 	mul.w	r2, r0, r2
87801a04:	190c      	adds	r4, r1, r4
87801a06:	bf28      	it	cs
87801a08:	f502 3280 	addcs.w	r2, r2, #65536	; 0x10000
87801a0c:	eb13 4304 	adds.w	r3, r3, r4, lsl #16
87801a10:	eb42 4214 	adc.w	r2, r2, r4, lsr #16
87801a14:	617a      	str	r2, [r7, #20]
87801a16:	613b      	str	r3, [r7, #16]
87801a18:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
87801a1c:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
87801a20:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87801a22:	4619      	mov	r1, r3
87801a24:	6a3b      	ldr	r3, [r7, #32]
87801a26:	69fa      	ldr	r2, [r7, #28]
87801a28:	fb02 f203 	mul.w	r2, r2, r3
87801a2c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87801a2e:	69b8      	ldr	r0, [r7, #24]
87801a30:	fb00 f303 	mul.w	r3, r0, r3
87801a34:	4413      	add	r3, r2
87801a36:	440b      	add	r3, r1
87801a38:	62fb      	str	r3, [r7, #44]	; 0x2c
87801a3a:	e9d7 340a 	ldrd	r3, r4, [r7, #40]	; 0x28
87801a3e:	4618      	mov	r0, r3
87801a40:	4621      	mov	r1, r4
87801a42:	3730      	adds	r7, #48	; 0x30
87801a44:	46bd      	mov	sp, r7
87801a46:	bc90      	pop	{r4, r7}
87801a48:	4770      	bx	lr
87801a4a:	bf00      	nop

87801a4c <printf>:
87801a4c:	b40f      	push	{r0, r1, r2, r3}
87801a4e:	b590      	push	{r4, r7, lr}
87801a50:	b085      	sub	sp, #20
87801a52:	af00      	add	r7, sp, #0
87801a54:	f107 0324 	add.w	r3, r7, #36	; 0x24
87801a58:	60bb      	str	r3, [r7, #8]
87801a5a:	6a3b      	ldr	r3, [r7, #32]
87801a5c:	68ba      	ldr	r2, [r7, #8]
87801a5e:	4619      	mov	r1, r3
87801a60:	f244 60b4 	movw	r0, #18100	; 0x46b4
87801a64:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801a68:	f001 fca6 	bl	878033b8 <vsprintf>
87801a6c:	6078      	str	r0, [r7, #4]
87801a6e:	2300      	movs	r3, #0
87801a70:	60fb      	str	r3, [r7, #12]
87801a72:	e00c      	b.n	87801a8e <printf+0x42>
87801a74:	f244 63b4 	movw	r3, #18100	; 0x46b4
87801a78:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801a7c:	68fa      	ldr	r2, [r7, #12]
87801a7e:	4413      	add	r3, r2
87801a80:	781b      	ldrb	r3, [r3, #0]
87801a82:	4618      	mov	r0, r3
87801a84:	f7ff fdd6 	bl	87801634 <putc>
87801a88:	68fb      	ldr	r3, [r7, #12]
87801a8a:	3301      	adds	r3, #1
87801a8c:	60fb      	str	r3, [r7, #12]
87801a8e:	68fc      	ldr	r4, [r7, #12]
87801a90:	f244 60b4 	movw	r0, #18100	; 0x46b4
87801a94:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801a98:	f000 f9b2 	bl	87801e00 <strlen>
87801a9c:	4603      	mov	r3, r0
87801a9e:	429c      	cmp	r4, r3
87801aa0:	d3e8      	bcc.n	87801a74 <printf+0x28>
87801aa2:	687b      	ldr	r3, [r7, #4]
87801aa4:	4618      	mov	r0, r3
87801aa6:	3714      	adds	r7, #20
87801aa8:	46bd      	mov	sp, r7
87801aaa:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
87801aae:	b004      	add	sp, #16
87801ab0:	4770      	bx	lr
87801ab2:	bf00      	nop

87801ab4 <scanf>:
87801ab4:	b40f      	push	{r0, r1, r2, r3}
87801ab6:	b580      	push	{r7, lr}
87801ab8:	b084      	sub	sp, #16
87801aba:	af00      	add	r7, sp, #0
87801abc:	2300      	movs	r3, #0
87801abe:	60fb      	str	r3, [r7, #12]
87801ac0:	f7ff fde8 	bl	87801694 <getc>
87801ac4:	4603      	mov	r3, r0
87801ac6:	72fb      	strb	r3, [r7, #11]
87801ac8:	7afb      	ldrb	r3, [r7, #11]
87801aca:	4618      	mov	r0, r3
87801acc:	f7ff fdb2 	bl	87801634 <putc>
87801ad0:	7afb      	ldrb	r3, [r7, #11]
87801ad2:	2b0d      	cmp	r3, #13
87801ad4:	d002      	beq.n	87801adc <scanf+0x28>
87801ad6:	7afb      	ldrb	r3, [r7, #11]
87801ad8:	2b0a      	cmp	r3, #10
87801ada:	d108      	bne.n	87801aee <scanf+0x3a>
87801adc:	f644 23b4 	movw	r3, #19124	; 0x4ab4
87801ae0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801ae4:	68fa      	ldr	r2, [r7, #12]
87801ae6:	4413      	add	r3, r2
87801ae8:	2200      	movs	r2, #0
87801aea:	701a      	strb	r2, [r3, #0]
87801aec:	e009      	b.n	87801b02 <scanf+0x4e>
87801aee:	68fa      	ldr	r2, [r7, #12]
87801af0:	1c53      	adds	r3, r2, #1
87801af2:	60fb      	str	r3, [r7, #12]
87801af4:	f644 23b4 	movw	r3, #19124	; 0x4ab4
87801af8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801afc:	7af9      	ldrb	r1, [r7, #11]
87801afe:	5499      	strb	r1, [r3, r2]
87801b00:	e7de      	b.n	87801ac0 <scanf+0xc>
87801b02:	f107 031c 	add.w	r3, r7, #28
87801b06:	607b      	str	r3, [r7, #4]
87801b08:	69bb      	ldr	r3, [r7, #24]
87801b0a:	687a      	ldr	r2, [r7, #4]
87801b0c:	4619      	mov	r1, r3
87801b0e:	f644 20b4 	movw	r0, #19124	; 0x4ab4
87801b12:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801b16:	f001 fc79 	bl	8780340c <vsscanf>
87801b1a:	60f8      	str	r0, [r7, #12]
87801b1c:	68fb      	ldr	r3, [r7, #12]
87801b1e:	4618      	mov	r0, r3
87801b20:	3710      	adds	r7, #16
87801b22:	46bd      	mov	sp, r7
87801b24:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87801b28:	b004      	add	sp, #16
87801b2a:	4770      	bx	lr

87801b2c <__tolower>:
87801b2c:	b480      	push	{r7}
87801b2e:	b083      	sub	sp, #12
87801b30:	af00      	add	r7, sp, #0
87801b32:	4603      	mov	r3, r0
87801b34:	71fb      	strb	r3, [r7, #7]
87801b36:	79fa      	ldrb	r2, [r7, #7]
87801b38:	f244 03ac 	movw	r3, #16556	; 0x40ac
87801b3c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801b40:	5c9b      	ldrb	r3, [r3, r2]
87801b42:	f003 0301 	and.w	r3, r3, #1
87801b46:	2b00      	cmp	r3, #0
87801b48:	d002      	beq.n	87801b50 <__tolower+0x24>
87801b4a:	79fb      	ldrb	r3, [r7, #7]
87801b4c:	3320      	adds	r3, #32
87801b4e:	71fb      	strb	r3, [r7, #7]
87801b50:	79fb      	ldrb	r3, [r7, #7]
87801b52:	4618      	mov	r0, r3
87801b54:	370c      	adds	r7, #12
87801b56:	46bd      	mov	sp, r7
87801b58:	f85d 7b04 	ldr.w	r7, [sp], #4
87801b5c:	4770      	bx	lr
87801b5e:	bf00      	nop

87801b60 <strnicmp>:
87801b60:	b580      	push	{r7, lr}
87801b62:	b086      	sub	sp, #24
87801b64:	af00      	add	r7, sp, #0
87801b66:	60f8      	str	r0, [r7, #12]
87801b68:	60b9      	str	r1, [r7, #8]
87801b6a:	607a      	str	r2, [r7, #4]
87801b6c:	2300      	movs	r3, #0
87801b6e:	75fb      	strb	r3, [r7, #23]
87801b70:	2300      	movs	r3, #0
87801b72:	75bb      	strb	r3, [r7, #22]
87801b74:	687b      	ldr	r3, [r7, #4]
87801b76:	2b00      	cmp	r3, #0
87801b78:	d02f      	beq.n	87801bda <strnicmp+0x7a>
87801b7a:	68fb      	ldr	r3, [r7, #12]
87801b7c:	781b      	ldrb	r3, [r3, #0]
87801b7e:	75fb      	strb	r3, [r7, #23]
87801b80:	68bb      	ldr	r3, [r7, #8]
87801b82:	781b      	ldrb	r3, [r3, #0]
87801b84:	75bb      	strb	r3, [r7, #22]
87801b86:	68fb      	ldr	r3, [r7, #12]
87801b88:	3301      	adds	r3, #1
87801b8a:	60fb      	str	r3, [r7, #12]
87801b8c:	68bb      	ldr	r3, [r7, #8]
87801b8e:	3301      	adds	r3, #1
87801b90:	60bb      	str	r3, [r7, #8]
87801b92:	7dfb      	ldrb	r3, [r7, #23]
87801b94:	2b00      	cmp	r3, #0
87801b96:	d100      	bne.n	87801b9a <strnicmp+0x3a>
87801b98:	e01f      	b.n	87801bda <strnicmp+0x7a>
87801b9a:	7dbb      	ldrb	r3, [r7, #22]
87801b9c:	2b00      	cmp	r3, #0
87801b9e:	d100      	bne.n	87801ba2 <strnicmp+0x42>
87801ba0:	e01b      	b.n	87801bda <strnicmp+0x7a>
87801ba2:	7dfa      	ldrb	r2, [r7, #23]
87801ba4:	7dbb      	ldrb	r3, [r7, #22]
87801ba6:	429a      	cmp	r2, r3
87801ba8:	d100      	bne.n	87801bac <strnicmp+0x4c>
87801baa:	e010      	b.n	87801bce <strnicmp+0x6e>
87801bac:	7dfb      	ldrb	r3, [r7, #23]
87801bae:	4618      	mov	r0, r3
87801bb0:	f7ff ffbc 	bl	87801b2c <__tolower>
87801bb4:	4603      	mov	r3, r0
87801bb6:	75fb      	strb	r3, [r7, #23]
87801bb8:	7dbb      	ldrb	r3, [r7, #22]
87801bba:	4618      	mov	r0, r3
87801bbc:	f7ff ffb6 	bl	87801b2c <__tolower>
87801bc0:	4603      	mov	r3, r0
87801bc2:	75bb      	strb	r3, [r7, #22]
87801bc4:	7dfa      	ldrb	r2, [r7, #23]
87801bc6:	7dbb      	ldrb	r3, [r7, #22]
87801bc8:	429a      	cmp	r2, r3
87801bca:	d000      	beq.n	87801bce <strnicmp+0x6e>
87801bcc:	e005      	b.n	87801bda <strnicmp+0x7a>
87801bce:	687b      	ldr	r3, [r7, #4]
87801bd0:	3b01      	subs	r3, #1
87801bd2:	607b      	str	r3, [r7, #4]
87801bd4:	687b      	ldr	r3, [r7, #4]
87801bd6:	2b00      	cmp	r3, #0
87801bd8:	d1cf      	bne.n	87801b7a <strnicmp+0x1a>
87801bda:	7dfa      	ldrb	r2, [r7, #23]
87801bdc:	7dbb      	ldrb	r3, [r7, #22]
87801bde:	1ad3      	subs	r3, r2, r3
87801be0:	4618      	mov	r0, r3
87801be2:	3718      	adds	r7, #24
87801be4:	46bd      	mov	sp, r7
87801be6:	bd80      	pop	{r7, pc}

87801be8 <strcpy>:
87801be8:	b480      	push	{r7}
87801bea:	b085      	sub	sp, #20
87801bec:	af00      	add	r7, sp, #0
87801bee:	6078      	str	r0, [r7, #4]
87801bf0:	6039      	str	r1, [r7, #0]
87801bf2:	687b      	ldr	r3, [r7, #4]
87801bf4:	60fb      	str	r3, [r7, #12]
87801bf6:	bf00      	nop
87801bf8:	687b      	ldr	r3, [r7, #4]
87801bfa:	1c5a      	adds	r2, r3, #1
87801bfc:	607a      	str	r2, [r7, #4]
87801bfe:	683a      	ldr	r2, [r7, #0]
87801c00:	1c51      	adds	r1, r2, #1
87801c02:	6039      	str	r1, [r7, #0]
87801c04:	7812      	ldrb	r2, [r2, #0]
87801c06:	701a      	strb	r2, [r3, #0]
87801c08:	781b      	ldrb	r3, [r3, #0]
87801c0a:	2b00      	cmp	r3, #0
87801c0c:	d1f4      	bne.n	87801bf8 <strcpy+0x10>
87801c0e:	68fb      	ldr	r3, [r7, #12]
87801c10:	4618      	mov	r0, r3
87801c12:	3714      	adds	r7, #20
87801c14:	46bd      	mov	sp, r7
87801c16:	f85d 7b04 	ldr.w	r7, [sp], #4
87801c1a:	4770      	bx	lr

87801c1c <strncpy>:
87801c1c:	b480      	push	{r7}
87801c1e:	b087      	sub	sp, #28
87801c20:	af00      	add	r7, sp, #0
87801c22:	60f8      	str	r0, [r7, #12]
87801c24:	60b9      	str	r1, [r7, #8]
87801c26:	607a      	str	r2, [r7, #4]
87801c28:	68fb      	ldr	r3, [r7, #12]
87801c2a:	617b      	str	r3, [r7, #20]
87801c2c:	bf00      	nop
87801c2e:	687b      	ldr	r3, [r7, #4]
87801c30:	1e5a      	subs	r2, r3, #1
87801c32:	607a      	str	r2, [r7, #4]
87801c34:	2b00      	cmp	r3, #0
87801c36:	d00a      	beq.n	87801c4e <strncpy+0x32>
87801c38:	68fb      	ldr	r3, [r7, #12]
87801c3a:	1c5a      	adds	r2, r3, #1
87801c3c:	60fa      	str	r2, [r7, #12]
87801c3e:	68ba      	ldr	r2, [r7, #8]
87801c40:	1c51      	adds	r1, r2, #1
87801c42:	60b9      	str	r1, [r7, #8]
87801c44:	7812      	ldrb	r2, [r2, #0]
87801c46:	701a      	strb	r2, [r3, #0]
87801c48:	781b      	ldrb	r3, [r3, #0]
87801c4a:	2b00      	cmp	r3, #0
87801c4c:	d1ef      	bne.n	87801c2e <strncpy+0x12>
87801c4e:	697b      	ldr	r3, [r7, #20]
87801c50:	4618      	mov	r0, r3
87801c52:	371c      	adds	r7, #28
87801c54:	46bd      	mov	sp, r7
87801c56:	f85d 7b04 	ldr.w	r7, [sp], #4
87801c5a:	4770      	bx	lr

87801c5c <strcat>:
87801c5c:	b480      	push	{r7}
87801c5e:	b085      	sub	sp, #20
87801c60:	af00      	add	r7, sp, #0
87801c62:	6078      	str	r0, [r7, #4]
87801c64:	6039      	str	r1, [r7, #0]
87801c66:	687b      	ldr	r3, [r7, #4]
87801c68:	60fb      	str	r3, [r7, #12]
87801c6a:	e002      	b.n	87801c72 <strcat+0x16>
87801c6c:	687b      	ldr	r3, [r7, #4]
87801c6e:	3301      	adds	r3, #1
87801c70:	607b      	str	r3, [r7, #4]
87801c72:	687b      	ldr	r3, [r7, #4]
87801c74:	781b      	ldrb	r3, [r3, #0]
87801c76:	2b00      	cmp	r3, #0
87801c78:	d1f8      	bne.n	87801c6c <strcat+0x10>
87801c7a:	bf00      	nop
87801c7c:	687b      	ldr	r3, [r7, #4]
87801c7e:	1c5a      	adds	r2, r3, #1
87801c80:	607a      	str	r2, [r7, #4]
87801c82:	683a      	ldr	r2, [r7, #0]
87801c84:	1c51      	adds	r1, r2, #1
87801c86:	6039      	str	r1, [r7, #0]
87801c88:	7812      	ldrb	r2, [r2, #0]
87801c8a:	701a      	strb	r2, [r3, #0]
87801c8c:	781b      	ldrb	r3, [r3, #0]
87801c8e:	2b00      	cmp	r3, #0
87801c90:	d1f4      	bne.n	87801c7c <strcat+0x20>
87801c92:	68fb      	ldr	r3, [r7, #12]
87801c94:	4618      	mov	r0, r3
87801c96:	3714      	adds	r7, #20
87801c98:	46bd      	mov	sp, r7
87801c9a:	f85d 7b04 	ldr.w	r7, [sp], #4
87801c9e:	4770      	bx	lr

87801ca0 <strncat>:
87801ca0:	b480      	push	{r7}
87801ca2:	b087      	sub	sp, #28
87801ca4:	af00      	add	r7, sp, #0
87801ca6:	60f8      	str	r0, [r7, #12]
87801ca8:	60b9      	str	r1, [r7, #8]
87801caa:	607a      	str	r2, [r7, #4]
87801cac:	68fb      	ldr	r3, [r7, #12]
87801cae:	617b      	str	r3, [r7, #20]
87801cb0:	687b      	ldr	r3, [r7, #4]
87801cb2:	2b00      	cmp	r3, #0
87801cb4:	d01d      	beq.n	87801cf2 <strncat+0x52>
87801cb6:	e002      	b.n	87801cbe <strncat+0x1e>
87801cb8:	68fb      	ldr	r3, [r7, #12]
87801cba:	3301      	adds	r3, #1
87801cbc:	60fb      	str	r3, [r7, #12]
87801cbe:	68fb      	ldr	r3, [r7, #12]
87801cc0:	781b      	ldrb	r3, [r3, #0]
87801cc2:	2b00      	cmp	r3, #0
87801cc4:	d1f8      	bne.n	87801cb8 <strncat+0x18>
87801cc6:	e009      	b.n	87801cdc <strncat+0x3c>
87801cc8:	687b      	ldr	r3, [r7, #4]
87801cca:	3b01      	subs	r3, #1
87801ccc:	607b      	str	r3, [r7, #4]
87801cce:	687b      	ldr	r3, [r7, #4]
87801cd0:	2b00      	cmp	r3, #0
87801cd2:	d103      	bne.n	87801cdc <strncat+0x3c>
87801cd4:	68fb      	ldr	r3, [r7, #12]
87801cd6:	2200      	movs	r2, #0
87801cd8:	701a      	strb	r2, [r3, #0]
87801cda:	e00a      	b.n	87801cf2 <strncat+0x52>
87801cdc:	68fb      	ldr	r3, [r7, #12]
87801cde:	1c5a      	adds	r2, r3, #1
87801ce0:	60fa      	str	r2, [r7, #12]
87801ce2:	68ba      	ldr	r2, [r7, #8]
87801ce4:	1c51      	adds	r1, r2, #1
87801ce6:	60b9      	str	r1, [r7, #8]
87801ce8:	7812      	ldrb	r2, [r2, #0]
87801cea:	701a      	strb	r2, [r3, #0]
87801cec:	781b      	ldrb	r3, [r3, #0]
87801cee:	2b00      	cmp	r3, #0
87801cf0:	d1ea      	bne.n	87801cc8 <strncat+0x28>
87801cf2:	697b      	ldr	r3, [r7, #20]
87801cf4:	4618      	mov	r0, r3
87801cf6:	371c      	adds	r7, #28
87801cf8:	46bd      	mov	sp, r7
87801cfa:	f85d 7b04 	ldr.w	r7, [sp], #4
87801cfe:	4770      	bx	lr

87801d00 <strcmp>:
87801d00:	b490      	push	{r4, r7}
87801d02:	b082      	sub	sp, #8
87801d04:	af00      	add	r7, sp, #0
87801d06:	6078      	str	r0, [r7, #4]
87801d08:	6039      	str	r1, [r7, #0]
87801d0a:	687b      	ldr	r3, [r7, #4]
87801d0c:	781a      	ldrb	r2, [r3, #0]
87801d0e:	683b      	ldr	r3, [r7, #0]
87801d10:	1c59      	adds	r1, r3, #1
87801d12:	6039      	str	r1, [r7, #0]
87801d14:	781b      	ldrb	r3, [r3, #0]
87801d16:	1ad3      	subs	r3, r2, r3
87801d18:	b2db      	uxtb	r3, r3
87801d1a:	b2dc      	uxtb	r4, r3
87801d1c:	2c00      	cmp	r4, #0
87801d1e:	d106      	bne.n	87801d2e <strcmp+0x2e>
87801d20:	687b      	ldr	r3, [r7, #4]
87801d22:	1c5a      	adds	r2, r3, #1
87801d24:	607a      	str	r2, [r7, #4]
87801d26:	781b      	ldrb	r3, [r3, #0]
87801d28:	2b00      	cmp	r3, #0
87801d2a:	d000      	beq.n	87801d2e <strcmp+0x2e>
87801d2c:	e7ed      	b.n	87801d0a <strcmp+0xa>
87801d2e:	b263      	sxtb	r3, r4
87801d30:	4618      	mov	r0, r3
87801d32:	3708      	adds	r7, #8
87801d34:	46bd      	mov	sp, r7
87801d36:	bc90      	pop	{r4, r7}
87801d38:	4770      	bx	lr
87801d3a:	bf00      	nop

87801d3c <strncmp>:
87801d3c:	b490      	push	{r4, r7}
87801d3e:	b084      	sub	sp, #16
87801d40:	af00      	add	r7, sp, #0
87801d42:	60f8      	str	r0, [r7, #12]
87801d44:	60b9      	str	r1, [r7, #8]
87801d46:	607a      	str	r2, [r7, #4]
87801d48:	2400      	movs	r4, #0
87801d4a:	e013      	b.n	87801d74 <strncmp+0x38>
87801d4c:	68fb      	ldr	r3, [r7, #12]
87801d4e:	781a      	ldrb	r2, [r3, #0]
87801d50:	68bb      	ldr	r3, [r7, #8]
87801d52:	1c59      	adds	r1, r3, #1
87801d54:	60b9      	str	r1, [r7, #8]
87801d56:	781b      	ldrb	r3, [r3, #0]
87801d58:	1ad3      	subs	r3, r2, r3
87801d5a:	b2db      	uxtb	r3, r3
87801d5c:	b2dc      	uxtb	r4, r3
87801d5e:	2c00      	cmp	r4, #0
87801d60:	d10b      	bne.n	87801d7a <strncmp+0x3e>
87801d62:	68fb      	ldr	r3, [r7, #12]
87801d64:	1c5a      	adds	r2, r3, #1
87801d66:	60fa      	str	r2, [r7, #12]
87801d68:	781b      	ldrb	r3, [r3, #0]
87801d6a:	2b00      	cmp	r3, #0
87801d6c:	d005      	beq.n	87801d7a <strncmp+0x3e>
87801d6e:	687b      	ldr	r3, [r7, #4]
87801d70:	3b01      	subs	r3, #1
87801d72:	607b      	str	r3, [r7, #4]
87801d74:	687b      	ldr	r3, [r7, #4]
87801d76:	2b00      	cmp	r3, #0
87801d78:	d1e8      	bne.n	87801d4c <strncmp+0x10>
87801d7a:	b263      	sxtb	r3, r4
87801d7c:	4618      	mov	r0, r3
87801d7e:	3710      	adds	r7, #16
87801d80:	46bd      	mov	sp, r7
87801d82:	bc90      	pop	{r4, r7}
87801d84:	4770      	bx	lr
87801d86:	bf00      	nop

87801d88 <strchr>:
87801d88:	b480      	push	{r7}
87801d8a:	b083      	sub	sp, #12
87801d8c:	af00      	add	r7, sp, #0
87801d8e:	6078      	str	r0, [r7, #4]
87801d90:	6039      	str	r1, [r7, #0]
87801d92:	e008      	b.n	87801da6 <strchr+0x1e>
87801d94:	687b      	ldr	r3, [r7, #4]
87801d96:	781b      	ldrb	r3, [r3, #0]
87801d98:	2b00      	cmp	r3, #0
87801d9a:	d101      	bne.n	87801da0 <strchr+0x18>
87801d9c:	2300      	movs	r3, #0
87801d9e:	e009      	b.n	87801db4 <strchr+0x2c>
87801da0:	687b      	ldr	r3, [r7, #4]
87801da2:	3301      	adds	r3, #1
87801da4:	607b      	str	r3, [r7, #4]
87801da6:	687b      	ldr	r3, [r7, #4]
87801da8:	781a      	ldrb	r2, [r3, #0]
87801daa:	683b      	ldr	r3, [r7, #0]
87801dac:	b2db      	uxtb	r3, r3
87801dae:	429a      	cmp	r2, r3
87801db0:	d1f0      	bne.n	87801d94 <strchr+0xc>
87801db2:	687b      	ldr	r3, [r7, #4]
87801db4:	4618      	mov	r0, r3
87801db6:	370c      	adds	r7, #12
87801db8:	46bd      	mov	sp, r7
87801dba:	f85d 7b04 	ldr.w	r7, [sp], #4
87801dbe:	4770      	bx	lr

87801dc0 <strrchr>:
87801dc0:	b580      	push	{r7, lr}
87801dc2:	b084      	sub	sp, #16
87801dc4:	af00      	add	r7, sp, #0
87801dc6:	6078      	str	r0, [r7, #4]
87801dc8:	6039      	str	r1, [r7, #0]
87801dca:	6878      	ldr	r0, [r7, #4]
87801dcc:	f000 f818 	bl	87801e00 <strlen>
87801dd0:	4602      	mov	r2, r0
87801dd2:	687b      	ldr	r3, [r7, #4]
87801dd4:	4413      	add	r3, r2
87801dd6:	60fb      	str	r3, [r7, #12]
87801dd8:	68fb      	ldr	r3, [r7, #12]
87801dda:	781a      	ldrb	r2, [r3, #0]
87801ddc:	683b      	ldr	r3, [r7, #0]
87801dde:	b2db      	uxtb	r3, r3
87801de0:	429a      	cmp	r2, r3
87801de2:	d101      	bne.n	87801de8 <strrchr+0x28>
87801de4:	68fb      	ldr	r3, [r7, #12]
87801de6:	e007      	b.n	87801df8 <strrchr+0x38>
87801de8:	68fb      	ldr	r3, [r7, #12]
87801dea:	3b01      	subs	r3, #1
87801dec:	60fb      	str	r3, [r7, #12]
87801dee:	68fa      	ldr	r2, [r7, #12]
87801df0:	687b      	ldr	r3, [r7, #4]
87801df2:	429a      	cmp	r2, r3
87801df4:	d2f0      	bcs.n	87801dd8 <strrchr+0x18>
87801df6:	2300      	movs	r3, #0
87801df8:	4618      	mov	r0, r3
87801dfa:	3710      	adds	r7, #16
87801dfc:	46bd      	mov	sp, r7
87801dfe:	bd80      	pop	{r7, pc}

87801e00 <strlen>:
87801e00:	b480      	push	{r7}
87801e02:	b085      	sub	sp, #20
87801e04:	af00      	add	r7, sp, #0
87801e06:	6078      	str	r0, [r7, #4]
87801e08:	687b      	ldr	r3, [r7, #4]
87801e0a:	60fb      	str	r3, [r7, #12]
87801e0c:	e002      	b.n	87801e14 <strlen+0x14>
87801e0e:	68fb      	ldr	r3, [r7, #12]
87801e10:	3301      	adds	r3, #1
87801e12:	60fb      	str	r3, [r7, #12]
87801e14:	68fb      	ldr	r3, [r7, #12]
87801e16:	781b      	ldrb	r3, [r3, #0]
87801e18:	2b00      	cmp	r3, #0
87801e1a:	d1f8      	bne.n	87801e0e <strlen+0xe>
87801e1c:	68fa      	ldr	r2, [r7, #12]
87801e1e:	687b      	ldr	r3, [r7, #4]
87801e20:	1ad3      	subs	r3, r2, r3
87801e22:	4618      	mov	r0, r3
87801e24:	3714      	adds	r7, #20
87801e26:	46bd      	mov	sp, r7
87801e28:	f85d 7b04 	ldr.w	r7, [sp], #4
87801e2c:	4770      	bx	lr
87801e2e:	bf00      	nop

87801e30 <strnlen>:
87801e30:	b480      	push	{r7}
87801e32:	b085      	sub	sp, #20
87801e34:	af00      	add	r7, sp, #0
87801e36:	6078      	str	r0, [r7, #4]
87801e38:	6039      	str	r1, [r7, #0]
87801e3a:	687b      	ldr	r3, [r7, #4]
87801e3c:	60fb      	str	r3, [r7, #12]
87801e3e:	e002      	b.n	87801e46 <strnlen+0x16>
87801e40:	68fb      	ldr	r3, [r7, #12]
87801e42:	3301      	adds	r3, #1
87801e44:	60fb      	str	r3, [r7, #12]
87801e46:	683b      	ldr	r3, [r7, #0]
87801e48:	1e5a      	subs	r2, r3, #1
87801e4a:	603a      	str	r2, [r7, #0]
87801e4c:	2b00      	cmp	r3, #0
87801e4e:	d003      	beq.n	87801e58 <strnlen+0x28>
87801e50:	68fb      	ldr	r3, [r7, #12]
87801e52:	781b      	ldrb	r3, [r3, #0]
87801e54:	2b00      	cmp	r3, #0
87801e56:	d1f3      	bne.n	87801e40 <strnlen+0x10>
87801e58:	68fa      	ldr	r2, [r7, #12]
87801e5a:	687b      	ldr	r3, [r7, #4]
87801e5c:	1ad3      	subs	r3, r2, r3
87801e5e:	4618      	mov	r0, r3
87801e60:	3714      	adds	r7, #20
87801e62:	46bd      	mov	sp, r7
87801e64:	f85d 7b04 	ldr.w	r7, [sp], #4
87801e68:	4770      	bx	lr
87801e6a:	bf00      	nop

87801e6c <strspn>:
87801e6c:	b480      	push	{r7}
87801e6e:	b087      	sub	sp, #28
87801e70:	af00      	add	r7, sp, #0
87801e72:	6078      	str	r0, [r7, #4]
87801e74:	6039      	str	r1, [r7, #0]
87801e76:	2300      	movs	r3, #0
87801e78:	60fb      	str	r3, [r7, #12]
87801e7a:	687b      	ldr	r3, [r7, #4]
87801e7c:	617b      	str	r3, [r7, #20]
87801e7e:	e01c      	b.n	87801eba <strspn+0x4e>
87801e80:	683b      	ldr	r3, [r7, #0]
87801e82:	613b      	str	r3, [r7, #16]
87801e84:	e009      	b.n	87801e9a <strspn+0x2e>
87801e86:	697b      	ldr	r3, [r7, #20]
87801e88:	781a      	ldrb	r2, [r3, #0]
87801e8a:	693b      	ldr	r3, [r7, #16]
87801e8c:	781b      	ldrb	r3, [r3, #0]
87801e8e:	429a      	cmp	r2, r3
87801e90:	d100      	bne.n	87801e94 <strspn+0x28>
87801e92:	e006      	b.n	87801ea2 <strspn+0x36>
87801e94:	693b      	ldr	r3, [r7, #16]
87801e96:	3301      	adds	r3, #1
87801e98:	613b      	str	r3, [r7, #16]
87801e9a:	693b      	ldr	r3, [r7, #16]
87801e9c:	781b      	ldrb	r3, [r3, #0]
87801e9e:	2b00      	cmp	r3, #0
87801ea0:	d1f1      	bne.n	87801e86 <strspn+0x1a>
87801ea2:	693b      	ldr	r3, [r7, #16]
87801ea4:	781b      	ldrb	r3, [r3, #0]
87801ea6:	2b00      	cmp	r3, #0
87801ea8:	d101      	bne.n	87801eae <strspn+0x42>
87801eaa:	68fb      	ldr	r3, [r7, #12]
87801eac:	e00a      	b.n	87801ec4 <strspn+0x58>
87801eae:	68fb      	ldr	r3, [r7, #12]
87801eb0:	3301      	adds	r3, #1
87801eb2:	60fb      	str	r3, [r7, #12]
87801eb4:	697b      	ldr	r3, [r7, #20]
87801eb6:	3301      	adds	r3, #1
87801eb8:	617b      	str	r3, [r7, #20]
87801eba:	697b      	ldr	r3, [r7, #20]
87801ebc:	781b      	ldrb	r3, [r3, #0]
87801ebe:	2b00      	cmp	r3, #0
87801ec0:	d1de      	bne.n	87801e80 <strspn+0x14>
87801ec2:	68fb      	ldr	r3, [r7, #12]
87801ec4:	4618      	mov	r0, r3
87801ec6:	371c      	adds	r7, #28
87801ec8:	46bd      	mov	sp, r7
87801eca:	f85d 7b04 	ldr.w	r7, [sp], #4
87801ece:	4770      	bx	lr

87801ed0 <strpbrk>:
87801ed0:	b480      	push	{r7}
87801ed2:	b085      	sub	sp, #20
87801ed4:	af00      	add	r7, sp, #0
87801ed6:	6078      	str	r0, [r7, #4]
87801ed8:	6039      	str	r1, [r7, #0]
87801eda:	687b      	ldr	r3, [r7, #4]
87801edc:	60fb      	str	r3, [r7, #12]
87801ede:	e014      	b.n	87801f0a <strpbrk+0x3a>
87801ee0:	683b      	ldr	r3, [r7, #0]
87801ee2:	60bb      	str	r3, [r7, #8]
87801ee4:	e00a      	b.n	87801efc <strpbrk+0x2c>
87801ee6:	68fb      	ldr	r3, [r7, #12]
87801ee8:	781a      	ldrb	r2, [r3, #0]
87801eea:	68bb      	ldr	r3, [r7, #8]
87801eec:	781b      	ldrb	r3, [r3, #0]
87801eee:	429a      	cmp	r2, r3
87801ef0:	d101      	bne.n	87801ef6 <strpbrk+0x26>
87801ef2:	68fb      	ldr	r3, [r7, #12]
87801ef4:	e00e      	b.n	87801f14 <strpbrk+0x44>
87801ef6:	68bb      	ldr	r3, [r7, #8]
87801ef8:	3301      	adds	r3, #1
87801efa:	60bb      	str	r3, [r7, #8]
87801efc:	68bb      	ldr	r3, [r7, #8]
87801efe:	781b      	ldrb	r3, [r3, #0]
87801f00:	2b00      	cmp	r3, #0
87801f02:	d1f0      	bne.n	87801ee6 <strpbrk+0x16>
87801f04:	68fb      	ldr	r3, [r7, #12]
87801f06:	3301      	adds	r3, #1
87801f08:	60fb      	str	r3, [r7, #12]
87801f0a:	68fb      	ldr	r3, [r7, #12]
87801f0c:	781b      	ldrb	r3, [r3, #0]
87801f0e:	2b00      	cmp	r3, #0
87801f10:	d1e6      	bne.n	87801ee0 <strpbrk+0x10>
87801f12:	2300      	movs	r3, #0
87801f14:	4618      	mov	r0, r3
87801f16:	3714      	adds	r7, #20
87801f18:	46bd      	mov	sp, r7
87801f1a:	f85d 7b04 	ldr.w	r7, [sp], #4
87801f1e:	4770      	bx	lr

87801f20 <strtok>:
87801f20:	b580      	push	{r7, lr}
87801f22:	b084      	sub	sp, #16
87801f24:	af00      	add	r7, sp, #0
87801f26:	6078      	str	r0, [r7, #4]
87801f28:	6039      	str	r1, [r7, #0]
87801f2a:	687b      	ldr	r3, [r7, #4]
87801f2c:	2b00      	cmp	r3, #0
87801f2e:	d001      	beq.n	87801f34 <strtok+0x14>
87801f30:	687b      	ldr	r3, [r7, #4]
87801f32:	e004      	b.n	87801f3e <strtok+0x1e>
87801f34:	f644 63b4 	movw	r3, #20148	; 0x4eb4
87801f38:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801f3c:	681b      	ldr	r3, [r3, #0]
87801f3e:	60bb      	str	r3, [r7, #8]
87801f40:	68bb      	ldr	r3, [r7, #8]
87801f42:	2b00      	cmp	r3, #0
87801f44:	d101      	bne.n	87801f4a <strtok+0x2a>
87801f46:	2300      	movs	r3, #0
87801f48:	e02b      	b.n	87801fa2 <strtok+0x82>
87801f4a:	6839      	ldr	r1, [r7, #0]
87801f4c:	68b8      	ldr	r0, [r7, #8]
87801f4e:	f7ff ff8d 	bl	87801e6c <strspn>
87801f52:	4602      	mov	r2, r0
87801f54:	68bb      	ldr	r3, [r7, #8]
87801f56:	4413      	add	r3, r2
87801f58:	60bb      	str	r3, [r7, #8]
87801f5a:	68bb      	ldr	r3, [r7, #8]
87801f5c:	781b      	ldrb	r3, [r3, #0]
87801f5e:	2b00      	cmp	r3, #0
87801f60:	d107      	bne.n	87801f72 <strtok+0x52>
87801f62:	f644 63b4 	movw	r3, #20148	; 0x4eb4
87801f66:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801f6a:	2200      	movs	r2, #0
87801f6c:	601a      	str	r2, [r3, #0]
87801f6e:	2300      	movs	r3, #0
87801f70:	e017      	b.n	87801fa2 <strtok+0x82>
87801f72:	6839      	ldr	r1, [r7, #0]
87801f74:	68b8      	ldr	r0, [r7, #8]
87801f76:	f7ff ffab 	bl	87801ed0 <strpbrk>
87801f7a:	60f8      	str	r0, [r7, #12]
87801f7c:	68fb      	ldr	r3, [r7, #12]
87801f7e:	2b00      	cmp	r3, #0
87801f80:	d008      	beq.n	87801f94 <strtok+0x74>
87801f82:	68fb      	ldr	r3, [r7, #12]
87801f84:	781b      	ldrb	r3, [r3, #0]
87801f86:	2b00      	cmp	r3, #0
87801f88:	d004      	beq.n	87801f94 <strtok+0x74>
87801f8a:	68fb      	ldr	r3, [r7, #12]
87801f8c:	1c5a      	adds	r2, r3, #1
87801f8e:	60fa      	str	r2, [r7, #12]
87801f90:	2200      	movs	r2, #0
87801f92:	701a      	strb	r2, [r3, #0]
87801f94:	f644 63b4 	movw	r3, #20148	; 0x4eb4
87801f98:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801f9c:	68fa      	ldr	r2, [r7, #12]
87801f9e:	601a      	str	r2, [r3, #0]
87801fa0:	68bb      	ldr	r3, [r7, #8]
87801fa2:	4618      	mov	r0, r3
87801fa4:	3710      	adds	r7, #16
87801fa6:	46bd      	mov	sp, r7
87801fa8:	bd80      	pop	{r7, pc}
87801faa:	bf00      	nop

87801fac <strsep>:
87801fac:	b580      	push	{r7, lr}
87801fae:	b084      	sub	sp, #16
87801fb0:	af00      	add	r7, sp, #0
87801fb2:	6078      	str	r0, [r7, #4]
87801fb4:	6039      	str	r1, [r7, #0]
87801fb6:	687b      	ldr	r3, [r7, #4]
87801fb8:	681b      	ldr	r3, [r3, #0]
87801fba:	60bb      	str	r3, [r7, #8]
87801fbc:	68bb      	ldr	r3, [r7, #8]
87801fbe:	2b00      	cmp	r3, #0
87801fc0:	d101      	bne.n	87801fc6 <strsep+0x1a>
87801fc2:	2300      	movs	r3, #0
87801fc4:	e010      	b.n	87801fe8 <strsep+0x3c>
87801fc6:	6839      	ldr	r1, [r7, #0]
87801fc8:	68b8      	ldr	r0, [r7, #8]
87801fca:	f7ff ff81 	bl	87801ed0 <strpbrk>
87801fce:	60f8      	str	r0, [r7, #12]
87801fd0:	68fb      	ldr	r3, [r7, #12]
87801fd2:	2b00      	cmp	r3, #0
87801fd4:	d004      	beq.n	87801fe0 <strsep+0x34>
87801fd6:	68fb      	ldr	r3, [r7, #12]
87801fd8:	1c5a      	adds	r2, r3, #1
87801fda:	60fa      	str	r2, [r7, #12]
87801fdc:	2200      	movs	r2, #0
87801fde:	701a      	strb	r2, [r3, #0]
87801fe0:	687b      	ldr	r3, [r7, #4]
87801fe2:	68fa      	ldr	r2, [r7, #12]
87801fe4:	601a      	str	r2, [r3, #0]
87801fe6:	68bb      	ldr	r3, [r7, #8]
87801fe8:	4618      	mov	r0, r3
87801fea:	3710      	adds	r7, #16
87801fec:	46bd      	mov	sp, r7
87801fee:	bd80      	pop	{r7, pc}

87801ff0 <memset>:
87801ff0:	b480      	push	{r7}
87801ff2:	b087      	sub	sp, #28
87801ff4:	af00      	add	r7, sp, #0
87801ff6:	60f8      	str	r0, [r7, #12]
87801ff8:	60b9      	str	r1, [r7, #8]
87801ffa:	607a      	str	r2, [r7, #4]
87801ffc:	68fb      	ldr	r3, [r7, #12]
87801ffe:	617b      	str	r3, [r7, #20]
87802000:	e005      	b.n	8780200e <memset+0x1e>
87802002:	697b      	ldr	r3, [r7, #20]
87802004:	1c5a      	adds	r2, r3, #1
87802006:	617a      	str	r2, [r7, #20]
87802008:	68ba      	ldr	r2, [r7, #8]
8780200a:	b2d2      	uxtb	r2, r2
8780200c:	701a      	strb	r2, [r3, #0]
8780200e:	687b      	ldr	r3, [r7, #4]
87802010:	1e5a      	subs	r2, r3, #1
87802012:	607a      	str	r2, [r7, #4]
87802014:	2b00      	cmp	r3, #0
87802016:	d1f4      	bne.n	87802002 <memset+0x12>
87802018:	68fb      	ldr	r3, [r7, #12]
8780201a:	4618      	mov	r0, r3
8780201c:	371c      	adds	r7, #28
8780201e:	46bd      	mov	sp, r7
87802020:	f85d 7b04 	ldr.w	r7, [sp], #4
87802024:	4770      	bx	lr
87802026:	bf00      	nop

87802028 <bcopy>:
87802028:	b480      	push	{r7}
8780202a:	b087      	sub	sp, #28
8780202c:	af00      	add	r7, sp, #0
8780202e:	60f8      	str	r0, [r7, #12]
87802030:	60b9      	str	r1, [r7, #8]
87802032:	607a      	str	r2, [r7, #4]
87802034:	68bb      	ldr	r3, [r7, #8]
87802036:	617b      	str	r3, [r7, #20]
87802038:	68fb      	ldr	r3, [r7, #12]
8780203a:	613b      	str	r3, [r7, #16]
8780203c:	e007      	b.n	8780204e <bcopy+0x26>
8780203e:	697b      	ldr	r3, [r7, #20]
87802040:	1c5a      	adds	r2, r3, #1
87802042:	617a      	str	r2, [r7, #20]
87802044:	693a      	ldr	r2, [r7, #16]
87802046:	1c51      	adds	r1, r2, #1
87802048:	6139      	str	r1, [r7, #16]
8780204a:	7812      	ldrb	r2, [r2, #0]
8780204c:	701a      	strb	r2, [r3, #0]
8780204e:	687b      	ldr	r3, [r7, #4]
87802050:	1e5a      	subs	r2, r3, #1
87802052:	607a      	str	r2, [r7, #4]
87802054:	2b00      	cmp	r3, #0
87802056:	d1f2      	bne.n	8780203e <bcopy+0x16>
87802058:	371c      	adds	r7, #28
8780205a:	46bd      	mov	sp, r7
8780205c:	f85d 7b04 	ldr.w	r7, [sp], #4
87802060:	4770      	bx	lr
87802062:	bf00      	nop

87802064 <memcpy>:
87802064:	b480      	push	{r7}
87802066:	b087      	sub	sp, #28
87802068:	af00      	add	r7, sp, #0
8780206a:	60f8      	str	r0, [r7, #12]
8780206c:	60b9      	str	r1, [r7, #8]
8780206e:	607a      	str	r2, [r7, #4]
87802070:	68fb      	ldr	r3, [r7, #12]
87802072:	617b      	str	r3, [r7, #20]
87802074:	68bb      	ldr	r3, [r7, #8]
87802076:	613b      	str	r3, [r7, #16]
87802078:	e007      	b.n	8780208a <memcpy+0x26>
8780207a:	697b      	ldr	r3, [r7, #20]
8780207c:	1c5a      	adds	r2, r3, #1
8780207e:	617a      	str	r2, [r7, #20]
87802080:	693a      	ldr	r2, [r7, #16]
87802082:	1c51      	adds	r1, r2, #1
87802084:	6139      	str	r1, [r7, #16]
87802086:	7812      	ldrb	r2, [r2, #0]
87802088:	701a      	strb	r2, [r3, #0]
8780208a:	687b      	ldr	r3, [r7, #4]
8780208c:	1e5a      	subs	r2, r3, #1
8780208e:	607a      	str	r2, [r7, #4]
87802090:	2b00      	cmp	r3, #0
87802092:	d1f2      	bne.n	8780207a <memcpy+0x16>
87802094:	68fb      	ldr	r3, [r7, #12]
87802096:	4618      	mov	r0, r3
87802098:	371c      	adds	r7, #28
8780209a:	46bd      	mov	sp, r7
8780209c:	f85d 7b04 	ldr.w	r7, [sp], #4
878020a0:	4770      	bx	lr
878020a2:	bf00      	nop

878020a4 <memmove>:
878020a4:	b480      	push	{r7}
878020a6:	b087      	sub	sp, #28
878020a8:	af00      	add	r7, sp, #0
878020aa:	60f8      	str	r0, [r7, #12]
878020ac:	60b9      	str	r1, [r7, #8]
878020ae:	607a      	str	r2, [r7, #4]
878020b0:	68fa      	ldr	r2, [r7, #12]
878020b2:	68bb      	ldr	r3, [r7, #8]
878020b4:	429a      	cmp	r2, r3
878020b6:	d812      	bhi.n	878020de <memmove+0x3a>
878020b8:	68fb      	ldr	r3, [r7, #12]
878020ba:	617b      	str	r3, [r7, #20]
878020bc:	68bb      	ldr	r3, [r7, #8]
878020be:	613b      	str	r3, [r7, #16]
878020c0:	e007      	b.n	878020d2 <memmove+0x2e>
878020c2:	697b      	ldr	r3, [r7, #20]
878020c4:	1c5a      	adds	r2, r3, #1
878020c6:	617a      	str	r2, [r7, #20]
878020c8:	693a      	ldr	r2, [r7, #16]
878020ca:	1c51      	adds	r1, r2, #1
878020cc:	6139      	str	r1, [r7, #16]
878020ce:	7812      	ldrb	r2, [r2, #0]
878020d0:	701a      	strb	r2, [r3, #0]
878020d2:	687b      	ldr	r3, [r7, #4]
878020d4:	1e5a      	subs	r2, r3, #1
878020d6:	607a      	str	r2, [r7, #4]
878020d8:	2b00      	cmp	r3, #0
878020da:	d1f2      	bne.n	878020c2 <memmove+0x1e>
878020dc:	e017      	b.n	8780210e <memmove+0x6a>
878020de:	68fa      	ldr	r2, [r7, #12]
878020e0:	687b      	ldr	r3, [r7, #4]
878020e2:	4413      	add	r3, r2
878020e4:	617b      	str	r3, [r7, #20]
878020e6:	68ba      	ldr	r2, [r7, #8]
878020e8:	687b      	ldr	r3, [r7, #4]
878020ea:	4413      	add	r3, r2
878020ec:	613b      	str	r3, [r7, #16]
878020ee:	e009      	b.n	87802104 <memmove+0x60>
878020f0:	697b      	ldr	r3, [r7, #20]
878020f2:	3b01      	subs	r3, #1
878020f4:	617b      	str	r3, [r7, #20]
878020f6:	693b      	ldr	r3, [r7, #16]
878020f8:	3b01      	subs	r3, #1
878020fa:	613b      	str	r3, [r7, #16]
878020fc:	693b      	ldr	r3, [r7, #16]
878020fe:	781a      	ldrb	r2, [r3, #0]
87802100:	697b      	ldr	r3, [r7, #20]
87802102:	701a      	strb	r2, [r3, #0]
87802104:	687b      	ldr	r3, [r7, #4]
87802106:	1e5a      	subs	r2, r3, #1
87802108:	607a      	str	r2, [r7, #4]
8780210a:	2b00      	cmp	r3, #0
8780210c:	d1f0      	bne.n	878020f0 <memmove+0x4c>
8780210e:	68fb      	ldr	r3, [r7, #12]
87802110:	4618      	mov	r0, r3
87802112:	371c      	adds	r7, #28
87802114:	46bd      	mov	sp, r7
87802116:	f85d 7b04 	ldr.w	r7, [sp], #4
8780211a:	4770      	bx	lr

8780211c <memcmp>:
8780211c:	b480      	push	{r7}
8780211e:	b089      	sub	sp, #36	; 0x24
87802120:	af00      	add	r7, sp, #0
87802122:	60f8      	str	r0, [r7, #12]
87802124:	60b9      	str	r1, [r7, #8]
87802126:	607a      	str	r2, [r7, #4]
87802128:	2300      	movs	r3, #0
8780212a:	617b      	str	r3, [r7, #20]
8780212c:	68fb      	ldr	r3, [r7, #12]
8780212e:	61fb      	str	r3, [r7, #28]
87802130:	68bb      	ldr	r3, [r7, #8]
87802132:	61bb      	str	r3, [r7, #24]
87802134:	e013      	b.n	8780215e <memcmp+0x42>
87802136:	69fb      	ldr	r3, [r7, #28]
87802138:	781b      	ldrb	r3, [r3, #0]
8780213a:	461a      	mov	r2, r3
8780213c:	69bb      	ldr	r3, [r7, #24]
8780213e:	781b      	ldrb	r3, [r3, #0]
87802140:	1ad3      	subs	r3, r2, r3
87802142:	617b      	str	r3, [r7, #20]
87802144:	697b      	ldr	r3, [r7, #20]
87802146:	2b00      	cmp	r3, #0
87802148:	d000      	beq.n	8780214c <memcmp+0x30>
8780214a:	e00b      	b.n	87802164 <memcmp+0x48>
8780214c:	69fb      	ldr	r3, [r7, #28]
8780214e:	3301      	adds	r3, #1
87802150:	61fb      	str	r3, [r7, #28]
87802152:	69bb      	ldr	r3, [r7, #24]
87802154:	3301      	adds	r3, #1
87802156:	61bb      	str	r3, [r7, #24]
87802158:	687b      	ldr	r3, [r7, #4]
8780215a:	3b01      	subs	r3, #1
8780215c:	607b      	str	r3, [r7, #4]
8780215e:	687b      	ldr	r3, [r7, #4]
87802160:	2b00      	cmp	r3, #0
87802162:	d1e8      	bne.n	87802136 <memcmp+0x1a>
87802164:	697b      	ldr	r3, [r7, #20]
87802166:	4618      	mov	r0, r3
87802168:	3724      	adds	r7, #36	; 0x24
8780216a:	46bd      	mov	sp, r7
8780216c:	f85d 7b04 	ldr.w	r7, [sp], #4
87802170:	4770      	bx	lr
87802172:	bf00      	nop

87802174 <memscan>:
87802174:	b480      	push	{r7}
87802176:	b087      	sub	sp, #28
87802178:	af00      	add	r7, sp, #0
8780217a:	60f8      	str	r0, [r7, #12]
8780217c:	60b9      	str	r1, [r7, #8]
8780217e:	607a      	str	r2, [r7, #4]
87802180:	68fb      	ldr	r3, [r7, #12]
87802182:	617b      	str	r3, [r7, #20]
87802184:	e00d      	b.n	878021a2 <memscan+0x2e>
87802186:	697b      	ldr	r3, [r7, #20]
87802188:	781b      	ldrb	r3, [r3, #0]
8780218a:	461a      	mov	r2, r3
8780218c:	68bb      	ldr	r3, [r7, #8]
8780218e:	429a      	cmp	r2, r3
87802190:	d101      	bne.n	87802196 <memscan+0x22>
87802192:	697b      	ldr	r3, [r7, #20]
87802194:	e009      	b.n	878021aa <memscan+0x36>
87802196:	697b      	ldr	r3, [r7, #20]
87802198:	3301      	adds	r3, #1
8780219a:	617b      	str	r3, [r7, #20]
8780219c:	687b      	ldr	r3, [r7, #4]
8780219e:	3b01      	subs	r3, #1
878021a0:	607b      	str	r3, [r7, #4]
878021a2:	687b      	ldr	r3, [r7, #4]
878021a4:	2b00      	cmp	r3, #0
878021a6:	d1ee      	bne.n	87802186 <memscan+0x12>
878021a8:	697b      	ldr	r3, [r7, #20]
878021aa:	4618      	mov	r0, r3
878021ac:	371c      	adds	r7, #28
878021ae:	46bd      	mov	sp, r7
878021b0:	f85d 7b04 	ldr.w	r7, [sp], #4
878021b4:	4770      	bx	lr
878021b6:	bf00      	nop

878021b8 <strstr>:
878021b8:	b580      	push	{r7, lr}
878021ba:	b084      	sub	sp, #16
878021bc:	af00      	add	r7, sp, #0
878021be:	6078      	str	r0, [r7, #4]
878021c0:	6039      	str	r1, [r7, #0]
878021c2:	6838      	ldr	r0, [r7, #0]
878021c4:	f7ff fe1c 	bl	87801e00 <strlen>
878021c8:	4603      	mov	r3, r0
878021ca:	60bb      	str	r3, [r7, #8]
878021cc:	68bb      	ldr	r3, [r7, #8]
878021ce:	2b00      	cmp	r3, #0
878021d0:	d101      	bne.n	878021d6 <strstr+0x1e>
878021d2:	687b      	ldr	r3, [r7, #4]
878021d4:	e01b      	b.n	8780220e <strstr+0x56>
878021d6:	6878      	ldr	r0, [r7, #4]
878021d8:	f7ff fe12 	bl	87801e00 <strlen>
878021dc:	4603      	mov	r3, r0
878021de:	60fb      	str	r3, [r7, #12]
878021e0:	e010      	b.n	87802204 <strstr+0x4c>
878021e2:	68fb      	ldr	r3, [r7, #12]
878021e4:	3b01      	subs	r3, #1
878021e6:	60fb      	str	r3, [r7, #12]
878021e8:	68bb      	ldr	r3, [r7, #8]
878021ea:	461a      	mov	r2, r3
878021ec:	6839      	ldr	r1, [r7, #0]
878021ee:	6878      	ldr	r0, [r7, #4]
878021f0:	f7ff ff94 	bl	8780211c <memcmp>
878021f4:	4603      	mov	r3, r0
878021f6:	2b00      	cmp	r3, #0
878021f8:	d101      	bne.n	878021fe <strstr+0x46>
878021fa:	687b      	ldr	r3, [r7, #4]
878021fc:	e007      	b.n	8780220e <strstr+0x56>
878021fe:	687b      	ldr	r3, [r7, #4]
87802200:	3301      	adds	r3, #1
87802202:	607b      	str	r3, [r7, #4]
87802204:	68fa      	ldr	r2, [r7, #12]
87802206:	68bb      	ldr	r3, [r7, #8]
87802208:	429a      	cmp	r2, r3
8780220a:	daea      	bge.n	878021e2 <strstr+0x2a>
8780220c:	2300      	movs	r3, #0
8780220e:	4618      	mov	r0, r3
87802210:	3710      	adds	r7, #16
87802212:	46bd      	mov	sp, r7
87802214:	bd80      	pop	{r7, pc}
87802216:	bf00      	nop

87802218 <memchr>:
87802218:	b480      	push	{r7}
8780221a:	b087      	sub	sp, #28
8780221c:	af00      	add	r7, sp, #0
8780221e:	60f8      	str	r0, [r7, #12]
87802220:	60b9      	str	r1, [r7, #8]
87802222:	607a      	str	r2, [r7, #4]
87802224:	68fb      	ldr	r3, [r7, #12]
87802226:	617b      	str	r3, [r7, #20]
87802228:	e00a      	b.n	87802240 <memchr+0x28>
8780222a:	68bb      	ldr	r3, [r7, #8]
8780222c:	b2da      	uxtb	r2, r3
8780222e:	697b      	ldr	r3, [r7, #20]
87802230:	1c59      	adds	r1, r3, #1
87802232:	6179      	str	r1, [r7, #20]
87802234:	781b      	ldrb	r3, [r3, #0]
87802236:	429a      	cmp	r2, r3
87802238:	d102      	bne.n	87802240 <memchr+0x28>
8780223a:	697b      	ldr	r3, [r7, #20]
8780223c:	3b01      	subs	r3, #1
8780223e:	e005      	b.n	8780224c <memchr+0x34>
87802240:	687b      	ldr	r3, [r7, #4]
87802242:	1e5a      	subs	r2, r3, #1
87802244:	607a      	str	r2, [r7, #4]
87802246:	2b00      	cmp	r3, #0
87802248:	d1ef      	bne.n	8780222a <memchr+0x12>
8780224a:	2300      	movs	r3, #0
8780224c:	4618      	mov	r0, r3
8780224e:	371c      	adds	r7, #28
87802250:	46bd      	mov	sp, r7
87802252:	f85d 7b04 	ldr.w	r7, [sp], #4
87802256:	4770      	bx	lr

87802258 <__toupper>:
87802258:	b480      	push	{r7}
8780225a:	b083      	sub	sp, #12
8780225c:	af00      	add	r7, sp, #0
8780225e:	4603      	mov	r3, r0
87802260:	71fb      	strb	r3, [r7, #7]
87802262:	79fa      	ldrb	r2, [r7, #7]
87802264:	f244 03ac 	movw	r3, #16556	; 0x40ac
87802268:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780226c:	5c9b      	ldrb	r3, [r3, r2]
8780226e:	f003 0302 	and.w	r3, r3, #2
87802272:	2b00      	cmp	r3, #0
87802274:	d002      	beq.n	8780227c <__toupper+0x24>
87802276:	79fb      	ldrb	r3, [r7, #7]
87802278:	3b20      	subs	r3, #32
8780227a:	71fb      	strb	r3, [r7, #7]
8780227c:	79fb      	ldrb	r3, [r7, #7]
8780227e:	4618      	mov	r0, r3
87802280:	370c      	adds	r7, #12
87802282:	46bd      	mov	sp, r7
87802284:	f85d 7b04 	ldr.w	r7, [sp], #4
87802288:	4770      	bx	lr
8780228a:	bf00      	nop

8780228c <simple_strtoul>:
8780228c:	b580      	push	{r7, lr}
8780228e:	b086      	sub	sp, #24
87802290:	af00      	add	r7, sp, #0
87802292:	60f8      	str	r0, [r7, #12]
87802294:	60b9      	str	r1, [r7, #8]
87802296:	607a      	str	r2, [r7, #4]
87802298:	2300      	movs	r3, #0
8780229a:	617b      	str	r3, [r7, #20]
8780229c:	687b      	ldr	r3, [r7, #4]
8780229e:	2b00      	cmp	r3, #0
878022a0:	d125      	bne.n	878022ee <simple_strtoul+0x62>
878022a2:	230a      	movs	r3, #10
878022a4:	607b      	str	r3, [r7, #4]
878022a6:	68fb      	ldr	r3, [r7, #12]
878022a8:	781b      	ldrb	r3, [r3, #0]
878022aa:	2b30      	cmp	r3, #48	; 0x30
878022ac:	d132      	bne.n	87802314 <simple_strtoul+0x88>
878022ae:	2308      	movs	r3, #8
878022b0:	607b      	str	r3, [r7, #4]
878022b2:	68fb      	ldr	r3, [r7, #12]
878022b4:	3301      	adds	r3, #1
878022b6:	60fb      	str	r3, [r7, #12]
878022b8:	68fb      	ldr	r3, [r7, #12]
878022ba:	781b      	ldrb	r3, [r3, #0]
878022bc:	4618      	mov	r0, r3
878022be:	f7ff ffcb 	bl	87802258 <__toupper>
878022c2:	4603      	mov	r3, r0
878022c4:	2b58      	cmp	r3, #88	; 0x58
878022c6:	d125      	bne.n	87802314 <simple_strtoul+0x88>
878022c8:	68fb      	ldr	r3, [r7, #12]
878022ca:	3301      	adds	r3, #1
878022cc:	781b      	ldrb	r3, [r3, #0]
878022ce:	461a      	mov	r2, r3
878022d0:	f244 03ac 	movw	r3, #16556	; 0x40ac
878022d4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878022d8:	5c9b      	ldrb	r3, [r3, r2]
878022da:	f003 0344 	and.w	r3, r3, #68	; 0x44
878022de:	2b00      	cmp	r3, #0
878022e0:	d018      	beq.n	87802314 <simple_strtoul+0x88>
878022e2:	68fb      	ldr	r3, [r7, #12]
878022e4:	3301      	adds	r3, #1
878022e6:	60fb      	str	r3, [r7, #12]
878022e8:	2310      	movs	r3, #16
878022ea:	607b      	str	r3, [r7, #4]
878022ec:	e01d      	b.n	8780232a <simple_strtoul+0x9e>
878022ee:	687b      	ldr	r3, [r7, #4]
878022f0:	2b10      	cmp	r3, #16
878022f2:	d10f      	bne.n	87802314 <simple_strtoul+0x88>
878022f4:	68fb      	ldr	r3, [r7, #12]
878022f6:	781b      	ldrb	r3, [r3, #0]
878022f8:	2b30      	cmp	r3, #48	; 0x30
878022fa:	d10b      	bne.n	87802314 <simple_strtoul+0x88>
878022fc:	68fb      	ldr	r3, [r7, #12]
878022fe:	3301      	adds	r3, #1
87802300:	781b      	ldrb	r3, [r3, #0]
87802302:	4618      	mov	r0, r3
87802304:	f7ff ffa8 	bl	87802258 <__toupper>
87802308:	4603      	mov	r3, r0
8780230a:	2b58      	cmp	r3, #88	; 0x58
8780230c:	d102      	bne.n	87802314 <simple_strtoul+0x88>
8780230e:	68fb      	ldr	r3, [r7, #12]
87802310:	3302      	adds	r3, #2
87802312:	60fb      	str	r3, [r7, #12]
87802314:	e009      	b.n	8780232a <simple_strtoul+0x9e>
87802316:	697b      	ldr	r3, [r7, #20]
87802318:	687a      	ldr	r2, [r7, #4]
8780231a:	fb02 f203 	mul.w	r2, r2, r3
8780231e:	693b      	ldr	r3, [r7, #16]
87802320:	4413      	add	r3, r2
87802322:	617b      	str	r3, [r7, #20]
87802324:	68fb      	ldr	r3, [r7, #12]
87802326:	3301      	adds	r3, #1
87802328:	60fb      	str	r3, [r7, #12]
8780232a:	68fb      	ldr	r3, [r7, #12]
8780232c:	781b      	ldrb	r3, [r3, #0]
8780232e:	461a      	mov	r2, r3
87802330:	f244 03ac 	movw	r3, #16556	; 0x40ac
87802334:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802338:	5c9b      	ldrb	r3, [r3, r2]
8780233a:	f003 0344 	and.w	r3, r3, #68	; 0x44
8780233e:	2b00      	cmp	r3, #0
87802340:	d01b      	beq.n	8780237a <simple_strtoul+0xee>
87802342:	68fb      	ldr	r3, [r7, #12]
87802344:	781b      	ldrb	r3, [r3, #0]
87802346:	461a      	mov	r2, r3
87802348:	f244 03ac 	movw	r3, #16556	; 0x40ac
8780234c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802350:	5c9b      	ldrb	r3, [r3, r2]
87802352:	f003 0304 	and.w	r3, r3, #4
87802356:	2b00      	cmp	r3, #0
87802358:	d003      	beq.n	87802362 <simple_strtoul+0xd6>
8780235a:	68fb      	ldr	r3, [r7, #12]
8780235c:	781b      	ldrb	r3, [r3, #0]
8780235e:	3b30      	subs	r3, #48	; 0x30
87802360:	e006      	b.n	87802370 <simple_strtoul+0xe4>
87802362:	68fb      	ldr	r3, [r7, #12]
87802364:	781b      	ldrb	r3, [r3, #0]
87802366:	4618      	mov	r0, r3
87802368:	f7ff ff76 	bl	87802258 <__toupper>
8780236c:	4603      	mov	r3, r0
8780236e:	3b37      	subs	r3, #55	; 0x37
87802370:	613b      	str	r3, [r7, #16]
87802372:	693a      	ldr	r2, [r7, #16]
87802374:	687b      	ldr	r3, [r7, #4]
87802376:	429a      	cmp	r2, r3
87802378:	d3cd      	bcc.n	87802316 <simple_strtoul+0x8a>
8780237a:	68bb      	ldr	r3, [r7, #8]
8780237c:	2b00      	cmp	r3, #0
8780237e:	d002      	beq.n	87802386 <simple_strtoul+0xfa>
87802380:	68bb      	ldr	r3, [r7, #8]
87802382:	68fa      	ldr	r2, [r7, #12]
87802384:	601a      	str	r2, [r3, #0]
87802386:	697b      	ldr	r3, [r7, #20]
87802388:	4618      	mov	r0, r3
8780238a:	3718      	adds	r7, #24
8780238c:	46bd      	mov	sp, r7
8780238e:	bd80      	pop	{r7, pc}

87802390 <simple_strtol>:
87802390:	b580      	push	{r7, lr}
87802392:	b084      	sub	sp, #16
87802394:	af00      	add	r7, sp, #0
87802396:	60f8      	str	r0, [r7, #12]
87802398:	60b9      	str	r1, [r7, #8]
8780239a:	607a      	str	r2, [r7, #4]
8780239c:	68fb      	ldr	r3, [r7, #12]
8780239e:	781b      	ldrb	r3, [r3, #0]
878023a0:	2b2d      	cmp	r3, #45	; 0x2d
878023a2:	d109      	bne.n	878023b8 <simple_strtol+0x28>
878023a4:	68fb      	ldr	r3, [r7, #12]
878023a6:	3301      	adds	r3, #1
878023a8:	687a      	ldr	r2, [r7, #4]
878023aa:	68b9      	ldr	r1, [r7, #8]
878023ac:	4618      	mov	r0, r3
878023ae:	f7ff ff6d 	bl	8780228c <simple_strtoul>
878023b2:	4603      	mov	r3, r0
878023b4:	425b      	negs	r3, r3
878023b6:	e005      	b.n	878023c4 <simple_strtol+0x34>
878023b8:	687a      	ldr	r2, [r7, #4]
878023ba:	68b9      	ldr	r1, [r7, #8]
878023bc:	68f8      	ldr	r0, [r7, #12]
878023be:	f7ff ff65 	bl	8780228c <simple_strtoul>
878023c2:	4603      	mov	r3, r0
878023c4:	4618      	mov	r0, r3
878023c6:	3710      	adds	r7, #16
878023c8:	46bd      	mov	sp, r7
878023ca:	bd80      	pop	{r7, pc}

878023cc <simple_strtoull>:
878023cc:	b590      	push	{r4, r7, lr}
878023ce:	b089      	sub	sp, #36	; 0x24
878023d0:	af00      	add	r7, sp, #0
878023d2:	60f8      	str	r0, [r7, #12]
878023d4:	60b9      	str	r1, [r7, #8]
878023d6:	607a      	str	r2, [r7, #4]
878023d8:	f04f 0300 	mov.w	r3, #0
878023dc:	f04f 0400 	mov.w	r4, #0
878023e0:	e9c7 3406 	strd	r3, r4, [r7, #24]
878023e4:	687b      	ldr	r3, [r7, #4]
878023e6:	2b00      	cmp	r3, #0
878023e8:	d125      	bne.n	87802436 <simple_strtoull+0x6a>
878023ea:	230a      	movs	r3, #10
878023ec:	607b      	str	r3, [r7, #4]
878023ee:	68fb      	ldr	r3, [r7, #12]
878023f0:	781b      	ldrb	r3, [r3, #0]
878023f2:	2b30      	cmp	r3, #48	; 0x30
878023f4:	d132      	bne.n	8780245c <simple_strtoull+0x90>
878023f6:	2308      	movs	r3, #8
878023f8:	607b      	str	r3, [r7, #4]
878023fa:	68fb      	ldr	r3, [r7, #12]
878023fc:	3301      	adds	r3, #1
878023fe:	60fb      	str	r3, [r7, #12]
87802400:	68fb      	ldr	r3, [r7, #12]
87802402:	781b      	ldrb	r3, [r3, #0]
87802404:	4618      	mov	r0, r3
87802406:	f7ff ff27 	bl	87802258 <__toupper>
8780240a:	4603      	mov	r3, r0
8780240c:	2b58      	cmp	r3, #88	; 0x58
8780240e:	d125      	bne.n	8780245c <simple_strtoull+0x90>
87802410:	68fb      	ldr	r3, [r7, #12]
87802412:	3301      	adds	r3, #1
87802414:	781b      	ldrb	r3, [r3, #0]
87802416:	461a      	mov	r2, r3
87802418:	f244 03ac 	movw	r3, #16556	; 0x40ac
8780241c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802420:	5c9b      	ldrb	r3, [r3, r2]
87802422:	f003 0344 	and.w	r3, r3, #68	; 0x44
87802426:	2b00      	cmp	r3, #0
87802428:	d018      	beq.n	8780245c <simple_strtoull+0x90>
8780242a:	68fb      	ldr	r3, [r7, #12]
8780242c:	3301      	adds	r3, #1
8780242e:	60fb      	str	r3, [r7, #12]
87802430:	2310      	movs	r3, #16
87802432:	607b      	str	r3, [r7, #4]
87802434:	e02c      	b.n	87802490 <simple_strtoull+0xc4>
87802436:	687b      	ldr	r3, [r7, #4]
87802438:	2b10      	cmp	r3, #16
8780243a:	d10f      	bne.n	8780245c <simple_strtoull+0x90>
8780243c:	68fb      	ldr	r3, [r7, #12]
8780243e:	781b      	ldrb	r3, [r3, #0]
87802440:	2b30      	cmp	r3, #48	; 0x30
87802442:	d10b      	bne.n	8780245c <simple_strtoull+0x90>
87802444:	68fb      	ldr	r3, [r7, #12]
87802446:	3301      	adds	r3, #1
87802448:	781b      	ldrb	r3, [r3, #0]
8780244a:	4618      	mov	r0, r3
8780244c:	f7ff ff04 	bl	87802258 <__toupper>
87802450:	4603      	mov	r3, r0
87802452:	2b58      	cmp	r3, #88	; 0x58
87802454:	d102      	bne.n	8780245c <simple_strtoull+0x90>
87802456:	68fb      	ldr	r3, [r7, #12]
87802458:	3302      	adds	r3, #2
8780245a:	60fb      	str	r3, [r7, #12]
8780245c:	e018      	b.n	87802490 <simple_strtoull+0xc4>
8780245e:	687b      	ldr	r3, [r7, #4]
87802460:	f04f 0400 	mov.w	r4, #0
87802464:	69ba      	ldr	r2, [r7, #24]
87802466:	fb04 f102 	mul.w	r1, r4, r2
8780246a:	69fa      	ldr	r2, [r7, #28]
8780246c:	fb03 f202 	mul.w	r2, r3, r2
87802470:	440a      	add	r2, r1
87802472:	69b9      	ldr	r1, [r7, #24]
87802474:	fba1 3403 	umull	r3, r4, r1, r3
87802478:	4422      	add	r2, r4
8780247a:	4614      	mov	r4, r2
8780247c:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
87802480:	185b      	adds	r3, r3, r1
87802482:	eb44 0402 	adc.w	r4, r4, r2
87802486:	e9c7 3406 	strd	r3, r4, [r7, #24]
8780248a:	68fb      	ldr	r3, [r7, #12]
8780248c:	3301      	adds	r3, #1
8780248e:	60fb      	str	r3, [r7, #12]
87802490:	68fb      	ldr	r3, [r7, #12]
87802492:	781b      	ldrb	r3, [r3, #0]
87802494:	461a      	mov	r2, r3
87802496:	f244 03ac 	movw	r3, #16556	; 0x40ac
8780249a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780249e:	5c9b      	ldrb	r3, [r3, r2]
878024a0:	f003 0344 	and.w	r3, r3, #68	; 0x44
878024a4:	2b00      	cmp	r3, #0
878024a6:	d033      	beq.n	87802510 <simple_strtoull+0x144>
878024a8:	68fb      	ldr	r3, [r7, #12]
878024aa:	781b      	ldrb	r3, [r3, #0]
878024ac:	461a      	mov	r2, r3
878024ae:	f244 03ac 	movw	r3, #16556	; 0x40ac
878024b2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878024b6:	5c9b      	ldrb	r3, [r3, r2]
878024b8:	f003 0304 	and.w	r3, r3, #4
878024bc:	2b00      	cmp	r3, #0
878024be:	d003      	beq.n	878024c8 <simple_strtoull+0xfc>
878024c0:	68fb      	ldr	r3, [r7, #12]
878024c2:	781b      	ldrb	r3, [r3, #0]
878024c4:	3b30      	subs	r3, #48	; 0x30
878024c6:	e016      	b.n	878024f6 <simple_strtoull+0x12a>
878024c8:	68fb      	ldr	r3, [r7, #12]
878024ca:	781b      	ldrb	r3, [r3, #0]
878024cc:	461a      	mov	r2, r3
878024ce:	f244 03ac 	movw	r3, #16556	; 0x40ac
878024d2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878024d6:	5c9b      	ldrb	r3, [r3, r2]
878024d8:	f003 0302 	and.w	r3, r3, #2
878024dc:	2b00      	cmp	r3, #0
878024de:	d007      	beq.n	878024f0 <simple_strtoull+0x124>
878024e0:	68fb      	ldr	r3, [r7, #12]
878024e2:	781b      	ldrb	r3, [r3, #0]
878024e4:	4618      	mov	r0, r3
878024e6:	f7ff feb7 	bl	87802258 <__toupper>
878024ea:	4603      	mov	r3, r0
878024ec:	3b37      	subs	r3, #55	; 0x37
878024ee:	e002      	b.n	878024f6 <simple_strtoull+0x12a>
878024f0:	68fb      	ldr	r3, [r7, #12]
878024f2:	781b      	ldrb	r3, [r3, #0]
878024f4:	3b37      	subs	r3, #55	; 0x37
878024f6:	ea4f 74e3 	mov.w	r4, r3, asr #31
878024fa:	e9c7 3404 	strd	r3, r4, [r7, #16]
878024fe:	687b      	ldr	r3, [r7, #4]
87802500:	f04f 0400 	mov.w	r4, #0
87802504:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
87802508:	42a2      	cmp	r2, r4
8780250a:	bf08      	it	eq
8780250c:	4299      	cmpeq	r1, r3
8780250e:	d3a6      	bcc.n	8780245e <simple_strtoull+0x92>
87802510:	68bb      	ldr	r3, [r7, #8]
87802512:	2b00      	cmp	r3, #0
87802514:	d002      	beq.n	8780251c <simple_strtoull+0x150>
87802516:	68bb      	ldr	r3, [r7, #8]
87802518:	68fa      	ldr	r2, [r7, #12]
8780251a:	601a      	str	r2, [r3, #0]
8780251c:	e9d7 3406 	ldrd	r3, r4, [r7, #24]
87802520:	4618      	mov	r0, r3
87802522:	4621      	mov	r1, r4
87802524:	3724      	adds	r7, #36	; 0x24
87802526:	46bd      	mov	sp, r7
87802528:	bd90      	pop	{r4, r7, pc}
8780252a:	bf00      	nop

8780252c <simple_strtoll>:
8780252c:	b590      	push	{r4, r7, lr}
8780252e:	b085      	sub	sp, #20
87802530:	af00      	add	r7, sp, #0
87802532:	60f8      	str	r0, [r7, #12]
87802534:	60b9      	str	r1, [r7, #8]
87802536:	607a      	str	r2, [r7, #4]
87802538:	68fb      	ldr	r3, [r7, #12]
8780253a:	781b      	ldrb	r3, [r3, #0]
8780253c:	2b2d      	cmp	r3, #45	; 0x2d
8780253e:	d10c      	bne.n	8780255a <simple_strtoll+0x2e>
87802540:	68fb      	ldr	r3, [r7, #12]
87802542:	3301      	adds	r3, #1
87802544:	687a      	ldr	r2, [r7, #4]
87802546:	68b9      	ldr	r1, [r7, #8]
87802548:	4618      	mov	r0, r3
8780254a:	f7ff ff3f 	bl	878023cc <simple_strtoull>
8780254e:	4603      	mov	r3, r0
87802550:	460c      	mov	r4, r1
87802552:	425b      	negs	r3, r3
87802554:	eb64 0444 	sbc.w	r4, r4, r4, lsl #1
87802558:	e006      	b.n	87802568 <simple_strtoll+0x3c>
8780255a:	687a      	ldr	r2, [r7, #4]
8780255c:	68b9      	ldr	r1, [r7, #8]
8780255e:	68f8      	ldr	r0, [r7, #12]
87802560:	f7ff ff34 	bl	878023cc <simple_strtoull>
87802564:	4603      	mov	r3, r0
87802566:	460c      	mov	r4, r1
87802568:	4618      	mov	r0, r3
8780256a:	4621      	mov	r1, r4
8780256c:	3714      	adds	r7, #20
8780256e:	46bd      	mov	sp, r7
87802570:	bd90      	pop	{r4, r7, pc}
87802572:	bf00      	nop

87802574 <skip_atoi>:
87802574:	b480      	push	{r7}
87802576:	b085      	sub	sp, #20
87802578:	af00      	add	r7, sp, #0
8780257a:	6078      	str	r0, [r7, #4]
8780257c:	2300      	movs	r3, #0
8780257e:	60fb      	str	r3, [r7, #12]
87802580:	e00c      	b.n	8780259c <skip_atoi+0x28>
87802582:	68fb      	ldr	r3, [r7, #12]
87802584:	005b      	lsls	r3, r3, #1
87802586:	009a      	lsls	r2, r3, #2
87802588:	441a      	add	r2, r3
8780258a:	687b      	ldr	r3, [r7, #4]
8780258c:	681b      	ldr	r3, [r3, #0]
8780258e:	1c58      	adds	r0, r3, #1
87802590:	6879      	ldr	r1, [r7, #4]
87802592:	6008      	str	r0, [r1, #0]
87802594:	781b      	ldrb	r3, [r3, #0]
87802596:	4413      	add	r3, r2
87802598:	3b30      	subs	r3, #48	; 0x30
8780259a:	60fb      	str	r3, [r7, #12]
8780259c:	687b      	ldr	r3, [r7, #4]
8780259e:	681b      	ldr	r3, [r3, #0]
878025a0:	781b      	ldrb	r3, [r3, #0]
878025a2:	461a      	mov	r2, r3
878025a4:	f244 03ac 	movw	r3, #16556	; 0x40ac
878025a8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878025ac:	5c9b      	ldrb	r3, [r3, r2]
878025ae:	f003 0304 	and.w	r3, r3, #4
878025b2:	2b00      	cmp	r3, #0
878025b4:	d1e5      	bne.n	87802582 <skip_atoi+0xe>
878025b6:	68fb      	ldr	r3, [r7, #12]
878025b8:	4618      	mov	r0, r3
878025ba:	3714      	adds	r7, #20
878025bc:	46bd      	mov	sp, r7
878025be:	f85d 7b04 	ldr.w	r7, [sp], #4
878025c2:	4770      	bx	lr

878025c4 <put_dec_trunc>:
878025c4:	b480      	push	{r7}
878025c6:	b087      	sub	sp, #28
878025c8:	af00      	add	r7, sp, #0
878025ca:	6078      	str	r0, [r7, #4]
878025cc:	6039      	str	r1, [r7, #0]
878025ce:	683b      	ldr	r3, [r7, #0]
878025d0:	091b      	lsrs	r3, r3, #4
878025d2:	f003 030f 	and.w	r3, r3, #15
878025d6:	617b      	str	r3, [r7, #20]
878025d8:	683b      	ldr	r3, [r7, #0]
878025da:	0a1b      	lsrs	r3, r3, #8
878025dc:	f003 030f 	and.w	r3, r3, #15
878025e0:	613b      	str	r3, [r7, #16]
878025e2:	683b      	ldr	r3, [r7, #0]
878025e4:	0b1b      	lsrs	r3, r3, #12
878025e6:	60fb      	str	r3, [r7, #12]
878025e8:	68fa      	ldr	r2, [r7, #12]
878025ea:	693b      	ldr	r3, [r7, #16]
878025ec:	441a      	add	r2, r3
878025ee:	697b      	ldr	r3, [r7, #20]
878025f0:	4413      	add	r3, r2
878025f2:	005b      	lsls	r3, r3, #1
878025f4:	009a      	lsls	r2, r3, #2
878025f6:	1ad2      	subs	r2, r2, r3
878025f8:	683b      	ldr	r3, [r7, #0]
878025fa:	f003 030f 	and.w	r3, r3, #15
878025fe:	4413      	add	r3, r2
87802600:	60bb      	str	r3, [r7, #8]
87802602:	68bb      	ldr	r3, [r7, #8]
87802604:	22cd      	movs	r2, #205	; 0xcd
87802606:	fb02 f303 	mul.w	r3, r2, r3
8780260a:	0adb      	lsrs	r3, r3, #11
8780260c:	603b      	str	r3, [r7, #0]
8780260e:	683b      	ldr	r3, [r7, #0]
87802610:	005b      	lsls	r3, r3, #1
87802612:	009a      	lsls	r2, r3, #2
87802614:	4413      	add	r3, r2
87802616:	68ba      	ldr	r2, [r7, #8]
87802618:	1ad3      	subs	r3, r2, r3
8780261a:	60bb      	str	r3, [r7, #8]
8780261c:	687b      	ldr	r3, [r7, #4]
8780261e:	1c5a      	adds	r2, r3, #1
87802620:	607a      	str	r2, [r7, #4]
87802622:	68ba      	ldr	r2, [r7, #8]
87802624:	b2d2      	uxtb	r2, r2
87802626:	3230      	adds	r2, #48	; 0x30
87802628:	b2d2      	uxtb	r2, r2
8780262a:	701a      	strb	r2, [r3, #0]
8780262c:	68fa      	ldr	r2, [r7, #12]
8780262e:	4613      	mov	r3, r2
87802630:	00db      	lsls	r3, r3, #3
87802632:	1899      	adds	r1, r3, r2
87802634:	693a      	ldr	r2, [r7, #16]
87802636:	4613      	mov	r3, r2
87802638:	009b      	lsls	r3, r3, #2
8780263a:	4413      	add	r3, r2
8780263c:	18ca      	adds	r2, r1, r3
8780263e:	683b      	ldr	r3, [r7, #0]
87802640:	4413      	add	r3, r2
87802642:	697a      	ldr	r2, [r7, #20]
87802644:	4413      	add	r3, r2
87802646:	617b      	str	r3, [r7, #20]
87802648:	697b      	ldr	r3, [r7, #20]
8780264a:	2b00      	cmp	r3, #0
8780264c:	d05f      	beq.n	8780270e <put_dec_trunc+0x14a>
8780264e:	697b      	ldr	r3, [r7, #20]
87802650:	22cd      	movs	r2, #205	; 0xcd
87802652:	fb02 f303 	mul.w	r3, r2, r3
87802656:	0adb      	lsrs	r3, r3, #11
87802658:	603b      	str	r3, [r7, #0]
8780265a:	683b      	ldr	r3, [r7, #0]
8780265c:	005b      	lsls	r3, r3, #1
8780265e:	009a      	lsls	r2, r3, #2
87802660:	4413      	add	r3, r2
87802662:	697a      	ldr	r2, [r7, #20]
87802664:	1ad3      	subs	r3, r2, r3
87802666:	617b      	str	r3, [r7, #20]
87802668:	687b      	ldr	r3, [r7, #4]
8780266a:	1c5a      	adds	r2, r3, #1
8780266c:	607a      	str	r2, [r7, #4]
8780266e:	697a      	ldr	r2, [r7, #20]
87802670:	b2d2      	uxtb	r2, r2
87802672:	3230      	adds	r2, #48	; 0x30
87802674:	b2d2      	uxtb	r2, r2
87802676:	701a      	strb	r2, [r3, #0]
87802678:	693b      	ldr	r3, [r7, #16]
8780267a:	005a      	lsls	r2, r3, #1
8780267c:	683b      	ldr	r3, [r7, #0]
8780267e:	4413      	add	r3, r2
87802680:	613b      	str	r3, [r7, #16]
87802682:	693b      	ldr	r3, [r7, #16]
87802684:	2b00      	cmp	r3, #0
87802686:	d102      	bne.n	8780268e <put_dec_trunc+0xca>
87802688:	68fb      	ldr	r3, [r7, #12]
8780268a:	2b00      	cmp	r3, #0
8780268c:	d03f      	beq.n	8780270e <put_dec_trunc+0x14a>
8780268e:	6939      	ldr	r1, [r7, #16]
87802690:	460a      	mov	r2, r1
87802692:	0093      	lsls	r3, r2, #2
87802694:	461a      	mov	r2, r3
87802696:	0093      	lsls	r3, r2, #2
87802698:	1a9b      	subs	r3, r3, r2
8780269a:	440b      	add	r3, r1
8780269c:	09db      	lsrs	r3, r3, #7
8780269e:	603b      	str	r3, [r7, #0]
878026a0:	683b      	ldr	r3, [r7, #0]
878026a2:	005b      	lsls	r3, r3, #1
878026a4:	009a      	lsls	r2, r3, #2
878026a6:	4413      	add	r3, r2
878026a8:	693a      	ldr	r2, [r7, #16]
878026aa:	1ad3      	subs	r3, r2, r3
878026ac:	613b      	str	r3, [r7, #16]
878026ae:	687b      	ldr	r3, [r7, #4]
878026b0:	1c5a      	adds	r2, r3, #1
878026b2:	607a      	str	r2, [r7, #4]
878026b4:	693a      	ldr	r2, [r7, #16]
878026b6:	b2d2      	uxtb	r2, r2
878026b8:	3230      	adds	r2, #48	; 0x30
878026ba:	b2d2      	uxtb	r2, r2
878026bc:	701a      	strb	r2, [r3, #0]
878026be:	68fb      	ldr	r3, [r7, #12]
878026c0:	009a      	lsls	r2, r3, #2
878026c2:	683b      	ldr	r3, [r7, #0]
878026c4:	4413      	add	r3, r2
878026c6:	60fb      	str	r3, [r7, #12]
878026c8:	68fb      	ldr	r3, [r7, #12]
878026ca:	2b00      	cmp	r3, #0
878026cc:	d01f      	beq.n	8780270e <put_dec_trunc+0x14a>
878026ce:	68fb      	ldr	r3, [r7, #12]
878026d0:	22cd      	movs	r2, #205	; 0xcd
878026d2:	fb02 f303 	mul.w	r3, r2, r3
878026d6:	0adb      	lsrs	r3, r3, #11
878026d8:	603b      	str	r3, [r7, #0]
878026da:	683b      	ldr	r3, [r7, #0]
878026dc:	005b      	lsls	r3, r3, #1
878026de:	009a      	lsls	r2, r3, #2
878026e0:	4413      	add	r3, r2
878026e2:	68fa      	ldr	r2, [r7, #12]
878026e4:	1ad3      	subs	r3, r2, r3
878026e6:	60fb      	str	r3, [r7, #12]
878026e8:	687b      	ldr	r3, [r7, #4]
878026ea:	1c5a      	adds	r2, r3, #1
878026ec:	607a      	str	r2, [r7, #4]
878026ee:	68fa      	ldr	r2, [r7, #12]
878026f0:	b2d2      	uxtb	r2, r2
878026f2:	3230      	adds	r2, #48	; 0x30
878026f4:	b2d2      	uxtb	r2, r2
878026f6:	701a      	strb	r2, [r3, #0]
878026f8:	683b      	ldr	r3, [r7, #0]
878026fa:	2b00      	cmp	r3, #0
878026fc:	d007      	beq.n	8780270e <put_dec_trunc+0x14a>
878026fe:	687b      	ldr	r3, [r7, #4]
87802700:	1c5a      	adds	r2, r3, #1
87802702:	607a      	str	r2, [r7, #4]
87802704:	683a      	ldr	r2, [r7, #0]
87802706:	b2d2      	uxtb	r2, r2
87802708:	3230      	adds	r2, #48	; 0x30
8780270a:	b2d2      	uxtb	r2, r2
8780270c:	701a      	strb	r2, [r3, #0]
8780270e:	687b      	ldr	r3, [r7, #4]
87802710:	4618      	mov	r0, r3
87802712:	371c      	adds	r7, #28
87802714:	46bd      	mov	sp, r7
87802716:	f85d 7b04 	ldr.w	r7, [sp], #4
8780271a:	4770      	bx	lr

8780271c <put_dec_full>:
8780271c:	b480      	push	{r7}
8780271e:	b087      	sub	sp, #28
87802720:	af00      	add	r7, sp, #0
87802722:	6078      	str	r0, [r7, #4]
87802724:	6039      	str	r1, [r7, #0]
87802726:	683b      	ldr	r3, [r7, #0]
87802728:	091b      	lsrs	r3, r3, #4
8780272a:	f003 030f 	and.w	r3, r3, #15
8780272e:	617b      	str	r3, [r7, #20]
87802730:	683b      	ldr	r3, [r7, #0]
87802732:	0a1b      	lsrs	r3, r3, #8
87802734:	f003 030f 	and.w	r3, r3, #15
87802738:	613b      	str	r3, [r7, #16]
8780273a:	683b      	ldr	r3, [r7, #0]
8780273c:	0b1b      	lsrs	r3, r3, #12
8780273e:	60fb      	str	r3, [r7, #12]
87802740:	68fa      	ldr	r2, [r7, #12]
87802742:	693b      	ldr	r3, [r7, #16]
87802744:	441a      	add	r2, r3
87802746:	697b      	ldr	r3, [r7, #20]
87802748:	4413      	add	r3, r2
8780274a:	005b      	lsls	r3, r3, #1
8780274c:	009a      	lsls	r2, r3, #2
8780274e:	1ad2      	subs	r2, r2, r3
87802750:	683b      	ldr	r3, [r7, #0]
87802752:	f003 030f 	and.w	r3, r3, #15
87802756:	4413      	add	r3, r2
87802758:	60bb      	str	r3, [r7, #8]
8780275a:	68bb      	ldr	r3, [r7, #8]
8780275c:	22cd      	movs	r2, #205	; 0xcd
8780275e:	fb02 f303 	mul.w	r3, r2, r3
87802762:	0adb      	lsrs	r3, r3, #11
87802764:	603b      	str	r3, [r7, #0]
87802766:	683b      	ldr	r3, [r7, #0]
87802768:	005b      	lsls	r3, r3, #1
8780276a:	009a      	lsls	r2, r3, #2
8780276c:	4413      	add	r3, r2
8780276e:	68ba      	ldr	r2, [r7, #8]
87802770:	1ad3      	subs	r3, r2, r3
87802772:	60bb      	str	r3, [r7, #8]
87802774:	687b      	ldr	r3, [r7, #4]
87802776:	1c5a      	adds	r2, r3, #1
87802778:	607a      	str	r2, [r7, #4]
8780277a:	68ba      	ldr	r2, [r7, #8]
8780277c:	b2d2      	uxtb	r2, r2
8780277e:	3230      	adds	r2, #48	; 0x30
87802780:	b2d2      	uxtb	r2, r2
87802782:	701a      	strb	r2, [r3, #0]
87802784:	68fa      	ldr	r2, [r7, #12]
87802786:	4613      	mov	r3, r2
87802788:	00db      	lsls	r3, r3, #3
8780278a:	1899      	adds	r1, r3, r2
8780278c:	693a      	ldr	r2, [r7, #16]
8780278e:	4613      	mov	r3, r2
87802790:	009b      	lsls	r3, r3, #2
87802792:	4413      	add	r3, r2
87802794:	18ca      	adds	r2, r1, r3
87802796:	683b      	ldr	r3, [r7, #0]
87802798:	4413      	add	r3, r2
8780279a:	697a      	ldr	r2, [r7, #20]
8780279c:	4413      	add	r3, r2
8780279e:	617b      	str	r3, [r7, #20]
878027a0:	697b      	ldr	r3, [r7, #20]
878027a2:	22cd      	movs	r2, #205	; 0xcd
878027a4:	fb02 f303 	mul.w	r3, r2, r3
878027a8:	0adb      	lsrs	r3, r3, #11
878027aa:	603b      	str	r3, [r7, #0]
878027ac:	683b      	ldr	r3, [r7, #0]
878027ae:	005b      	lsls	r3, r3, #1
878027b0:	009a      	lsls	r2, r3, #2
878027b2:	4413      	add	r3, r2
878027b4:	697a      	ldr	r2, [r7, #20]
878027b6:	1ad3      	subs	r3, r2, r3
878027b8:	617b      	str	r3, [r7, #20]
878027ba:	687b      	ldr	r3, [r7, #4]
878027bc:	1c5a      	adds	r2, r3, #1
878027be:	607a      	str	r2, [r7, #4]
878027c0:	697a      	ldr	r2, [r7, #20]
878027c2:	b2d2      	uxtb	r2, r2
878027c4:	3230      	adds	r2, #48	; 0x30
878027c6:	b2d2      	uxtb	r2, r2
878027c8:	701a      	strb	r2, [r3, #0]
878027ca:	693b      	ldr	r3, [r7, #16]
878027cc:	005a      	lsls	r2, r3, #1
878027ce:	683b      	ldr	r3, [r7, #0]
878027d0:	4413      	add	r3, r2
878027d2:	613b      	str	r3, [r7, #16]
878027d4:	6939      	ldr	r1, [r7, #16]
878027d6:	460a      	mov	r2, r1
878027d8:	0093      	lsls	r3, r2, #2
878027da:	461a      	mov	r2, r3
878027dc:	0093      	lsls	r3, r2, #2
878027de:	1a9b      	subs	r3, r3, r2
878027e0:	440b      	add	r3, r1
878027e2:	09db      	lsrs	r3, r3, #7
878027e4:	603b      	str	r3, [r7, #0]
878027e6:	683b      	ldr	r3, [r7, #0]
878027e8:	005b      	lsls	r3, r3, #1
878027ea:	009a      	lsls	r2, r3, #2
878027ec:	4413      	add	r3, r2
878027ee:	693a      	ldr	r2, [r7, #16]
878027f0:	1ad3      	subs	r3, r2, r3
878027f2:	613b      	str	r3, [r7, #16]
878027f4:	687b      	ldr	r3, [r7, #4]
878027f6:	1c5a      	adds	r2, r3, #1
878027f8:	607a      	str	r2, [r7, #4]
878027fa:	693a      	ldr	r2, [r7, #16]
878027fc:	b2d2      	uxtb	r2, r2
878027fe:	3230      	adds	r2, #48	; 0x30
87802800:	b2d2      	uxtb	r2, r2
87802802:	701a      	strb	r2, [r3, #0]
87802804:	68fb      	ldr	r3, [r7, #12]
87802806:	009a      	lsls	r2, r3, #2
87802808:	683b      	ldr	r3, [r7, #0]
8780280a:	4413      	add	r3, r2
8780280c:	60fb      	str	r3, [r7, #12]
8780280e:	68fb      	ldr	r3, [r7, #12]
87802810:	22cd      	movs	r2, #205	; 0xcd
87802812:	fb02 f303 	mul.w	r3, r2, r3
87802816:	0adb      	lsrs	r3, r3, #11
87802818:	603b      	str	r3, [r7, #0]
8780281a:	683b      	ldr	r3, [r7, #0]
8780281c:	005b      	lsls	r3, r3, #1
8780281e:	009a      	lsls	r2, r3, #2
87802820:	4413      	add	r3, r2
87802822:	68fa      	ldr	r2, [r7, #12]
87802824:	1ad3      	subs	r3, r2, r3
87802826:	60fb      	str	r3, [r7, #12]
87802828:	687b      	ldr	r3, [r7, #4]
8780282a:	1c5a      	adds	r2, r3, #1
8780282c:	607a      	str	r2, [r7, #4]
8780282e:	68fa      	ldr	r2, [r7, #12]
87802830:	b2d2      	uxtb	r2, r2
87802832:	3230      	adds	r2, #48	; 0x30
87802834:	b2d2      	uxtb	r2, r2
87802836:	701a      	strb	r2, [r3, #0]
87802838:	687b      	ldr	r3, [r7, #4]
8780283a:	1c5a      	adds	r2, r3, #1
8780283c:	607a      	str	r2, [r7, #4]
8780283e:	683a      	ldr	r2, [r7, #0]
87802840:	b2d2      	uxtb	r2, r2
87802842:	3230      	adds	r2, #48	; 0x30
87802844:	b2d2      	uxtb	r2, r2
87802846:	701a      	strb	r2, [r3, #0]
87802848:	687b      	ldr	r3, [r7, #4]
8780284a:	4618      	mov	r0, r3
8780284c:	371c      	adds	r7, #28
8780284e:	46bd      	mov	sp, r7
87802850:	f85d 7b04 	ldr.w	r7, [sp], #4
87802854:	4770      	bx	lr
87802856:	bf00      	nop

87802858 <put_dec>:
87802858:	b5b0      	push	{r4, r5, r7, lr}
8780285a:	b088      	sub	sp, #32
8780285c:	af00      	add	r7, sp, #0
8780285e:	60f8      	str	r0, [r7, #12]
87802860:	e9c7 2300 	strd	r2, r3, [r7]
87802864:	e9d7 2300 	ldrd	r2, r3, [r7]
87802868:	f248 609f 	movw	r0, #34463	; 0x869f
8780286c:	f2c0 0001 	movt	r0, #1
87802870:	f04f 0100 	mov.w	r1, #0
87802874:	4299      	cmp	r1, r3
87802876:	bf08      	it	eq
87802878:	4290      	cmpeq	r0, r2
8780287a:	d307      	bcc.n	8780288c <put_dec+0x34>
8780287c:	e9d7 3400 	ldrd	r3, r4, [r7]
87802880:	4619      	mov	r1, r3
87802882:	68f8      	ldr	r0, [r7, #12]
87802884:	f7ff fe9e 	bl	878025c4 <put_dec_trunc>
87802888:	4603      	mov	r3, r0
8780288a:	e030      	b.n	878028ee <put_dec+0x96>
8780288c:	f248 63a0 	movw	r3, #34464	; 0x86a0
87802890:	f2c0 0301 	movt	r3, #1
87802894:	61bb      	str	r3, [r7, #24]
87802896:	e9d7 2300 	ldrd	r2, r3, [r7]
8780289a:	001c      	movs	r4, r3
8780289c:	2500      	movs	r5, #0
8780289e:	ea54 0305 	orrs.w	r3, r4, r5
878028a2:	d116      	bne.n	878028d2 <put_dec+0x7a>
878028a4:	e9d7 2300 	ldrd	r2, r3, [r7]
878028a8:	4613      	mov	r3, r2
878028aa:	69b9      	ldr	r1, [r7, #24]
878028ac:	4618      	mov	r0, r3
878028ae:	f001 fad5 	bl	87803e5c <__aeabi_uidivmod>
878028b2:	460b      	mov	r3, r1
878028b4:	61fb      	str	r3, [r7, #28]
878028b6:	e9d7 2300 	ldrd	r2, r3, [r7]
878028ba:	4613      	mov	r3, r2
878028bc:	69b9      	ldr	r1, [r7, #24]
878028be:	4618      	mov	r0, r3
878028c0:	f001 f99e 	bl	87803c00 <__aeabi_uidiv>
878028c4:	4603      	mov	r3, r0
878028c6:	461a      	mov	r2, r3
878028c8:	f04f 0300 	mov.w	r3, #0
878028cc:	e9c7 2300 	strd	r2, r3, [r7]
878028d0:	e005      	b.n	878028de <put_dec+0x86>
878028d2:	463b      	mov	r3, r7
878028d4:	69b9      	ldr	r1, [r7, #24]
878028d6:	4618      	mov	r0, r3
878028d8:	f7fe fefc 	bl	878016d4 <__div64_32>
878028dc:	61f8      	str	r0, [r7, #28]
878028de:	69fb      	ldr	r3, [r7, #28]
878028e0:	617b      	str	r3, [r7, #20]
878028e2:	6979      	ldr	r1, [r7, #20]
878028e4:	68f8      	ldr	r0, [r7, #12]
878028e6:	f7ff ff19 	bl	8780271c <put_dec_full>
878028ea:	60f8      	str	r0, [r7, #12]
878028ec:	e7ba      	b.n	87802864 <put_dec+0xc>
878028ee:	4618      	mov	r0, r3
878028f0:	3720      	adds	r7, #32
878028f2:	46bd      	mov	sp, r7
878028f4:	bdb0      	pop	{r4, r5, r7, pc}
878028f6:	bf00      	nop

878028f8 <number>:
878028f8:	b5f0      	push	{r4, r5, r6, r7, lr}
878028fa:	b0a5      	sub	sp, #148	; 0x94
878028fc:	af00      	add	r7, sp, #0
878028fe:	60f8      	str	r0, [r7, #12]
87802900:	60b9      	str	r1, [r7, #8]
87802902:	e9c7 2300 	strd	r2, r3, [r7]
87802906:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
8780290a:	f003 0320 	and.w	r3, r3, #32
8780290e:	2b00      	cmp	r3, #0
87802910:	d005      	beq.n	8780291e <number+0x26>
87802912:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802916:	2b0a      	cmp	r3, #10
87802918:	d001      	beq.n	8780291e <number+0x26>
8780291a:	2301      	movs	r3, #1
8780291c:	e000      	b.n	87802920 <number+0x28>
8780291e:	2300      	movs	r3, #0
87802920:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
87802924:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802928:	b2db      	uxtb	r3, r3
8780292a:	f003 0320 	and.w	r3, r3, #32
8780292e:	f887 307f 	strb.w	r3, [r7, #127]	; 0x7f
87802932:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802936:	f003 0310 	and.w	r3, r3, #16
8780293a:	2b00      	cmp	r3, #0
8780293c:	d005      	beq.n	8780294a <number+0x52>
8780293e:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802942:	f023 0301 	bic.w	r3, r3, #1
87802946:	f8c7 30b4 	str.w	r3, [r7, #180]	; 0xb4
8780294a:	2300      	movs	r3, #0
8780294c:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
87802950:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802954:	f003 0302 	and.w	r3, r3, #2
87802958:	2b00      	cmp	r3, #0
8780295a:	d032      	beq.n	878029c2 <number+0xca>
8780295c:	e9d7 2300 	ldrd	r2, r3, [r7]
87802960:	2a00      	cmp	r2, #0
87802962:	f173 0300 	sbcs.w	r3, r3, #0
87802966:	da0f      	bge.n	87802988 <number+0x90>
87802968:	232d      	movs	r3, #45	; 0x2d
8780296a:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
8780296e:	e9d7 2300 	ldrd	r2, r3, [r7]
87802972:	4252      	negs	r2, r2
87802974:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
87802978:	e9c7 2300 	strd	r2, r3, [r7]
8780297c:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802980:	3b01      	subs	r3, #1
87802982:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802986:	e01c      	b.n	878029c2 <number+0xca>
87802988:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
8780298c:	f003 0304 	and.w	r3, r3, #4
87802990:	2b00      	cmp	r3, #0
87802992:	d008      	beq.n	878029a6 <number+0xae>
87802994:	232b      	movs	r3, #43	; 0x2b
87802996:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
8780299a:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
8780299e:	3b01      	subs	r3, #1
878029a0:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029a4:	e00d      	b.n	878029c2 <number+0xca>
878029a6:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
878029aa:	f003 0308 	and.w	r3, r3, #8
878029ae:	2b00      	cmp	r3, #0
878029b0:	d007      	beq.n	878029c2 <number+0xca>
878029b2:	2320      	movs	r3, #32
878029b4:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
878029b8:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
878029bc:	3b01      	subs	r3, #1
878029be:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029c2:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
878029c6:	2b00      	cmp	r3, #0
878029c8:	d00d      	beq.n	878029e6 <number+0xee>
878029ca:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
878029ce:	3b01      	subs	r3, #1
878029d0:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029d4:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
878029d8:	2b10      	cmp	r3, #16
878029da:	d104      	bne.n	878029e6 <number+0xee>
878029dc:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
878029e0:	3b01      	subs	r3, #1
878029e2:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
878029e6:	2300      	movs	r3, #0
878029e8:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
878029ec:	e9d7 2300 	ldrd	r2, r3, [r7]
878029f0:	4313      	orrs	r3, r2
878029f2:	d10b      	bne.n	87802a0c <number+0x114>
878029f4:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
878029f8:	1c5a      	adds	r2, r3, #1
878029fa:	f8c7 2088 	str.w	r2, [r7, #136]	; 0x88
878029fe:	f107 0290 	add.w	r2, r7, #144	; 0x90
87802a02:	4413      	add	r3, r2
87802a04:	2230      	movs	r2, #48	; 0x30
87802a06:	f803 2c80 	strb.w	r2, [r3, #-128]
87802a0a:	e054      	b.n	87802ab6 <number+0x1be>
87802a0c:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802a10:	2b0a      	cmp	r3, #10
87802a12:	d040      	beq.n	87802a96 <number+0x19e>
87802a14:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802a18:	3b01      	subs	r3, #1
87802a1a:	67bb      	str	r3, [r7, #120]	; 0x78
87802a1c:	2303      	movs	r3, #3
87802a1e:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
87802a22:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802a26:	2b10      	cmp	r3, #16
87802a28:	d102      	bne.n	87802a30 <number+0x138>
87802a2a:	2304      	movs	r3, #4
87802a2c:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
87802a30:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
87802a34:	1c53      	adds	r3, r2, #1
87802a36:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802a3a:	783b      	ldrb	r3, [r7, #0]
87802a3c:	4619      	mov	r1, r3
87802a3e:	6fbb      	ldr	r3, [r7, #120]	; 0x78
87802a40:	4019      	ands	r1, r3
87802a42:	f244 0390 	movw	r3, #16528	; 0x4090
87802a46:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802a4a:	5c59      	ldrb	r1, [r3, r1]
87802a4c:	f897 307f 	ldrb.w	r3, [r7, #127]	; 0x7f
87802a50:	430b      	orrs	r3, r1
87802a52:	b2d9      	uxtb	r1, r3
87802a54:	f107 0390 	add.w	r3, r7, #144	; 0x90
87802a58:	4413      	add	r3, r2
87802a5a:	460a      	mov	r2, r1
87802a5c:	f803 2c80 	strb.w	r2, [r3, #-128]
87802a60:	e9d7 2300 	ldrd	r2, r3, [r7]
87802a64:	f8d7 1084 	ldr.w	r1, [r7, #132]	; 0x84
87802a68:	f1c1 0620 	rsb	r6, r1, #32
87802a6c:	f1b1 0020 	subs.w	r0, r1, #32
87802a70:	fa22 f401 	lsr.w	r4, r2, r1
87802a74:	fa03 f606 	lsl.w	r6, r3, r6
87802a78:	ea44 0406 	orr.w	r4, r4, r6
87802a7c:	d402      	bmi.n	87802a84 <number+0x18c>
87802a7e:	fa43 f000 	asr.w	r0, r3, r0
87802a82:	4304      	orrs	r4, r0
87802a84:	fa43 f501 	asr.w	r5, r3, r1
87802a88:	e9c7 4500 	strd	r4, r5, [r7]
87802a8c:	e9d7 2300 	ldrd	r2, r3, [r7]
87802a90:	4313      	orrs	r3, r2
87802a92:	d1cd      	bne.n	87802a30 <number+0x138>
87802a94:	e00f      	b.n	87802ab6 <number+0x1be>
87802a96:	e9d7 3400 	ldrd	r3, r4, [r7]
87802a9a:	f107 0110 	add.w	r1, r7, #16
87802a9e:	461a      	mov	r2, r3
87802aa0:	4623      	mov	r3, r4
87802aa2:	4608      	mov	r0, r1
87802aa4:	f7ff fed8 	bl	87802858 <put_dec>
87802aa8:	4603      	mov	r3, r0
87802aaa:	461a      	mov	r2, r3
87802aac:	f107 0310 	add.w	r3, r7, #16
87802ab0:	1ad3      	subs	r3, r2, r3
87802ab2:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802ab6:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
87802aba:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802abe:	429a      	cmp	r2, r3
87802ac0:	dd03      	ble.n	87802aca <number+0x1d2>
87802ac2:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802ac6:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
87802aca:	f8d7 20ac 	ldr.w	r2, [r7, #172]	; 0xac
87802ace:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802ad2:	1ad3      	subs	r3, r2, r3
87802ad4:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802ad8:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802adc:	f003 0311 	and.w	r3, r3, #17
87802ae0:	2b00      	cmp	r3, #0
87802ae2:	d113      	bne.n	87802b0c <number+0x214>
87802ae4:	e009      	b.n	87802afa <number+0x202>
87802ae6:	68fa      	ldr	r2, [r7, #12]
87802ae8:	68bb      	ldr	r3, [r7, #8]
87802aea:	429a      	cmp	r2, r3
87802aec:	d202      	bcs.n	87802af4 <number+0x1fc>
87802aee:	68fb      	ldr	r3, [r7, #12]
87802af0:	2220      	movs	r2, #32
87802af2:	701a      	strb	r2, [r3, #0]
87802af4:	68fb      	ldr	r3, [r7, #12]
87802af6:	3301      	adds	r3, #1
87802af8:	60fb      	str	r3, [r7, #12]
87802afa:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802afe:	3b01      	subs	r3, #1
87802b00:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802b04:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802b08:	2b00      	cmp	r3, #0
87802b0a:	daec      	bge.n	87802ae6 <number+0x1ee>
87802b0c:	f897 308f 	ldrb.w	r3, [r7, #143]	; 0x8f
87802b10:	2b00      	cmp	r3, #0
87802b12:	d00a      	beq.n	87802b2a <number+0x232>
87802b14:	68fa      	ldr	r2, [r7, #12]
87802b16:	68bb      	ldr	r3, [r7, #8]
87802b18:	429a      	cmp	r2, r3
87802b1a:	d203      	bcs.n	87802b24 <number+0x22c>
87802b1c:	68fb      	ldr	r3, [r7, #12]
87802b1e:	f897 208f 	ldrb.w	r2, [r7, #143]	; 0x8f
87802b22:	701a      	strb	r2, [r3, #0]
87802b24:	68fb      	ldr	r3, [r7, #12]
87802b26:	3301      	adds	r3, #1
87802b28:	60fb      	str	r3, [r7, #12]
87802b2a:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
87802b2e:	2b00      	cmp	r3, #0
87802b30:	d01b      	beq.n	87802b6a <number+0x272>
87802b32:	68fa      	ldr	r2, [r7, #12]
87802b34:	68bb      	ldr	r3, [r7, #8]
87802b36:	429a      	cmp	r2, r3
87802b38:	d202      	bcs.n	87802b40 <number+0x248>
87802b3a:	68fb      	ldr	r3, [r7, #12]
87802b3c:	2230      	movs	r2, #48	; 0x30
87802b3e:	701a      	strb	r2, [r3, #0]
87802b40:	68fb      	ldr	r3, [r7, #12]
87802b42:	3301      	adds	r3, #1
87802b44:	60fb      	str	r3, [r7, #12]
87802b46:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802b4a:	2b10      	cmp	r3, #16
87802b4c:	d10d      	bne.n	87802b6a <number+0x272>
87802b4e:	68fa      	ldr	r2, [r7, #12]
87802b50:	68bb      	ldr	r3, [r7, #8]
87802b52:	429a      	cmp	r2, r3
87802b54:	d206      	bcs.n	87802b64 <number+0x26c>
87802b56:	f897 307f 	ldrb.w	r3, [r7, #127]	; 0x7f
87802b5a:	f043 0358 	orr.w	r3, r3, #88	; 0x58
87802b5e:	b2da      	uxtb	r2, r3
87802b60:	68fb      	ldr	r3, [r7, #12]
87802b62:	701a      	strb	r2, [r3, #0]
87802b64:	68fb      	ldr	r3, [r7, #12]
87802b66:	3301      	adds	r3, #1
87802b68:	60fb      	str	r3, [r7, #12]
87802b6a:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802b6e:	f003 0310 	and.w	r3, r3, #16
87802b72:	2b00      	cmp	r3, #0
87802b74:	d11f      	bne.n	87802bb6 <number+0x2be>
87802b76:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802b7a:	f003 0301 	and.w	r3, r3, #1
87802b7e:	2b00      	cmp	r3, #0
87802b80:	d001      	beq.n	87802b86 <number+0x28e>
87802b82:	2330      	movs	r3, #48	; 0x30
87802b84:	e000      	b.n	87802b88 <number+0x290>
87802b86:	2320      	movs	r3, #32
87802b88:	f887 3077 	strb.w	r3, [r7, #119]	; 0x77
87802b8c:	e00a      	b.n	87802ba4 <number+0x2ac>
87802b8e:	68fa      	ldr	r2, [r7, #12]
87802b90:	68bb      	ldr	r3, [r7, #8]
87802b92:	429a      	cmp	r2, r3
87802b94:	d203      	bcs.n	87802b9e <number+0x2a6>
87802b96:	68fb      	ldr	r3, [r7, #12]
87802b98:	f897 2077 	ldrb.w	r2, [r7, #119]	; 0x77
87802b9c:	701a      	strb	r2, [r3, #0]
87802b9e:	68fb      	ldr	r3, [r7, #12]
87802ba0:	3301      	adds	r3, #1
87802ba2:	60fb      	str	r3, [r7, #12]
87802ba4:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802ba8:	3b01      	subs	r3, #1
87802baa:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802bae:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802bb2:	2b00      	cmp	r3, #0
87802bb4:	daeb      	bge.n	87802b8e <number+0x296>
87802bb6:	e009      	b.n	87802bcc <number+0x2d4>
87802bb8:	68fa      	ldr	r2, [r7, #12]
87802bba:	68bb      	ldr	r3, [r7, #8]
87802bbc:	429a      	cmp	r2, r3
87802bbe:	d202      	bcs.n	87802bc6 <number+0x2ce>
87802bc0:	68fb      	ldr	r3, [r7, #12]
87802bc2:	2230      	movs	r2, #48	; 0x30
87802bc4:	701a      	strb	r2, [r3, #0]
87802bc6:	68fb      	ldr	r3, [r7, #12]
87802bc8:	3301      	adds	r3, #1
87802bca:	60fb      	str	r3, [r7, #12]
87802bcc:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802bd0:	3b01      	subs	r3, #1
87802bd2:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
87802bd6:	f8d7 20b0 	ldr.w	r2, [r7, #176]	; 0xb0
87802bda:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802bde:	429a      	cmp	r2, r3
87802be0:	daea      	bge.n	87802bb8 <number+0x2c0>
87802be2:	e00e      	b.n	87802c02 <number+0x30a>
87802be4:	68fa      	ldr	r2, [r7, #12]
87802be6:	68bb      	ldr	r3, [r7, #8]
87802be8:	429a      	cmp	r2, r3
87802bea:	d207      	bcs.n	87802bfc <number+0x304>
87802bec:	f107 0210 	add.w	r2, r7, #16
87802bf0:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802bf4:	4413      	add	r3, r2
87802bf6:	781a      	ldrb	r2, [r3, #0]
87802bf8:	68fb      	ldr	r3, [r7, #12]
87802bfa:	701a      	strb	r2, [r3, #0]
87802bfc:	68fb      	ldr	r3, [r7, #12]
87802bfe:	3301      	adds	r3, #1
87802c00:	60fb      	str	r3, [r7, #12]
87802c02:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802c06:	3b01      	subs	r3, #1
87802c08:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802c0c:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802c10:	2b00      	cmp	r3, #0
87802c12:	dae7      	bge.n	87802be4 <number+0x2ec>
87802c14:	e009      	b.n	87802c2a <number+0x332>
87802c16:	68fa      	ldr	r2, [r7, #12]
87802c18:	68bb      	ldr	r3, [r7, #8]
87802c1a:	429a      	cmp	r2, r3
87802c1c:	d202      	bcs.n	87802c24 <number+0x32c>
87802c1e:	68fb      	ldr	r3, [r7, #12]
87802c20:	2220      	movs	r2, #32
87802c22:	701a      	strb	r2, [r3, #0]
87802c24:	68fb      	ldr	r3, [r7, #12]
87802c26:	3301      	adds	r3, #1
87802c28:	60fb      	str	r3, [r7, #12]
87802c2a:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802c2e:	3b01      	subs	r3, #1
87802c30:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802c34:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802c38:	2b00      	cmp	r3, #0
87802c3a:	daec      	bge.n	87802c16 <number+0x31e>
87802c3c:	68fb      	ldr	r3, [r7, #12]
87802c3e:	4618      	mov	r0, r3
87802c40:	3794      	adds	r7, #148	; 0x94
87802c42:	46bd      	mov	sp, r7
87802c44:	bdf0      	pop	{r4, r5, r6, r7, pc}
87802c46:	bf00      	nop

87802c48 <vsnprintf>:
87802c48:	b590      	push	{r4, r7, lr}
87802c4a:	b099      	sub	sp, #100	; 0x64
87802c4c:	af04      	add	r7, sp, #16
87802c4e:	60f8      	str	r0, [r7, #12]
87802c50:	60b9      	str	r1, [r7, #8]
87802c52:	607a      	str	r2, [r7, #4]
87802c54:	603b      	str	r3, [r7, #0]
87802c56:	68bb      	ldr	r3, [r7, #8]
87802c58:	0fdb      	lsrs	r3, r3, #31
87802c5a:	b2db      	uxtb	r3, r3
87802c5c:	2b00      	cmp	r3, #0
87802c5e:	d001      	beq.n	87802c64 <vsnprintf+0x1c>
87802c60:	2300      	movs	r3, #0
87802c62:	e353      	b.n	8780330c <vsnprintf+0x6c4>
87802c64:	68fb      	ldr	r3, [r7, #12]
87802c66:	63fb      	str	r3, [r7, #60]	; 0x3c
87802c68:	68bb      	ldr	r3, [r7, #8]
87802c6a:	3b01      	subs	r3, #1
87802c6c:	68fa      	ldr	r2, [r7, #12]
87802c6e:	4413      	add	r3, r2
87802c70:	63bb      	str	r3, [r7, #56]	; 0x38
87802c72:	68fb      	ldr	r3, [r7, #12]
87802c74:	1e5a      	subs	r2, r3, #1
87802c76:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802c78:	429a      	cmp	r2, r3
87802c7a:	d907      	bls.n	87802c8c <vsnprintf+0x44>
87802c7c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802c80:	63bb      	str	r3, [r7, #56]	; 0x38
87802c82:	6bba      	ldr	r2, [r7, #56]	; 0x38
87802c84:	68fb      	ldr	r3, [r7, #12]
87802c86:	1ad3      	subs	r3, r2, r3
87802c88:	3301      	adds	r3, #1
87802c8a:	60bb      	str	r3, [r7, #8]
87802c8c:	e328      	b.n	878032e0 <vsnprintf+0x698>
87802c8e:	687b      	ldr	r3, [r7, #4]
87802c90:	781b      	ldrb	r3, [r3, #0]
87802c92:	2b25      	cmp	r3, #37	; 0x25
87802c94:	d00b      	beq.n	87802cae <vsnprintf+0x66>
87802c96:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87802c98:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802c9a:	429a      	cmp	r2, r3
87802c9c:	d803      	bhi.n	87802ca6 <vsnprintf+0x5e>
87802c9e:	687b      	ldr	r3, [r7, #4]
87802ca0:	781a      	ldrb	r2, [r3, #0]
87802ca2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802ca4:	701a      	strb	r2, [r3, #0]
87802ca6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802ca8:	3301      	adds	r3, #1
87802caa:	63fb      	str	r3, [r7, #60]	; 0x3c
87802cac:	e315      	b.n	878032da <vsnprintf+0x692>
87802cae:	2300      	movs	r3, #0
87802cb0:	633b      	str	r3, [r7, #48]	; 0x30
87802cb2:	687b      	ldr	r3, [r7, #4]
87802cb4:	3301      	adds	r3, #1
87802cb6:	607b      	str	r3, [r7, #4]
87802cb8:	687b      	ldr	r3, [r7, #4]
87802cba:	781b      	ldrb	r3, [r3, #0]
87802cbc:	3b20      	subs	r3, #32
87802cbe:	2b10      	cmp	r3, #16
87802cc0:	d83d      	bhi.n	87802d3e <vsnprintf+0xf6>
87802cc2:	a201      	add	r2, pc, #4	; (adr r2, 87802cc8 <vsnprintf+0x80>)
87802cc4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87802cc8:	87802d21 	strhi	r2, [r0, r1, lsr #26]
87802ccc:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802cd0:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802cd4:	87802d2b 	strhi	r2, [r0, fp, lsr #26]
87802cd8:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802cdc:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802ce0:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802ce4:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802ce8:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802cec:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802cf0:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802cf4:	87802d17 	usada8hi	r0, r7, sp, r2
87802cf8:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802cfc:	87802d0d 	strhi	r2, [r0, sp, lsl #26]
87802d00:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802d04:	87802d3f 			; <UNDEFINED> instruction: 0x87802d3f
87802d08:	87802d35 			; <UNDEFINED> instruction: 0x87802d35
87802d0c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d0e:	f043 0310 	orr.w	r3, r3, #16
87802d12:	633b      	str	r3, [r7, #48]	; 0x30
87802d14:	e7cd      	b.n	87802cb2 <vsnprintf+0x6a>
87802d16:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d18:	f043 0304 	orr.w	r3, r3, #4
87802d1c:	633b      	str	r3, [r7, #48]	; 0x30
87802d1e:	e7c8      	b.n	87802cb2 <vsnprintf+0x6a>
87802d20:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d22:	f043 0308 	orr.w	r3, r3, #8
87802d26:	633b      	str	r3, [r7, #48]	; 0x30
87802d28:	e7c3      	b.n	87802cb2 <vsnprintf+0x6a>
87802d2a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d2c:	f043 0320 	orr.w	r3, r3, #32
87802d30:	633b      	str	r3, [r7, #48]	; 0x30
87802d32:	e7be      	b.n	87802cb2 <vsnprintf+0x6a>
87802d34:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d36:	f043 0301 	orr.w	r3, r3, #1
87802d3a:	633b      	str	r3, [r7, #48]	; 0x30
87802d3c:	e7b9      	b.n	87802cb2 <vsnprintf+0x6a>
87802d3e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802d42:	62fb      	str	r3, [r7, #44]	; 0x2c
87802d44:	687b      	ldr	r3, [r7, #4]
87802d46:	781b      	ldrb	r3, [r3, #0]
87802d48:	461a      	mov	r2, r3
87802d4a:	f244 03ac 	movw	r3, #16556	; 0x40ac
87802d4e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802d52:	5c9b      	ldrb	r3, [r3, r2]
87802d54:	f003 0304 	and.w	r3, r3, #4
87802d58:	2b00      	cmp	r3, #0
87802d5a:	d005      	beq.n	87802d68 <vsnprintf+0x120>
87802d5c:	1d3b      	adds	r3, r7, #4
87802d5e:	4618      	mov	r0, r3
87802d60:	f7ff fc08 	bl	87802574 <skip_atoi>
87802d64:	62f8      	str	r0, [r7, #44]	; 0x2c
87802d66:	e017      	b.n	87802d98 <vsnprintf+0x150>
87802d68:	687b      	ldr	r3, [r7, #4]
87802d6a:	781b      	ldrb	r3, [r3, #0]
87802d6c:	2b2a      	cmp	r3, #42	; 0x2a
87802d6e:	d113      	bne.n	87802d98 <vsnprintf+0x150>
87802d70:	687b      	ldr	r3, [r7, #4]
87802d72:	3301      	adds	r3, #1
87802d74:	607b      	str	r3, [r7, #4]
87802d76:	683b      	ldr	r3, [r7, #0]
87802d78:	3304      	adds	r3, #4
87802d7a:	603b      	str	r3, [r7, #0]
87802d7c:	683b      	ldr	r3, [r7, #0]
87802d7e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87802d82:	62fb      	str	r3, [r7, #44]	; 0x2c
87802d84:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802d86:	2b00      	cmp	r3, #0
87802d88:	da06      	bge.n	87802d98 <vsnprintf+0x150>
87802d8a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802d8c:	425b      	negs	r3, r3
87802d8e:	62fb      	str	r3, [r7, #44]	; 0x2c
87802d90:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802d92:	f043 0310 	orr.w	r3, r3, #16
87802d96:	633b      	str	r3, [r7, #48]	; 0x30
87802d98:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802d9c:	62bb      	str	r3, [r7, #40]	; 0x28
87802d9e:	687b      	ldr	r3, [r7, #4]
87802da0:	781b      	ldrb	r3, [r3, #0]
87802da2:	2b2e      	cmp	r3, #46	; 0x2e
87802da4:	d127      	bne.n	87802df6 <vsnprintf+0x1ae>
87802da6:	687b      	ldr	r3, [r7, #4]
87802da8:	3301      	adds	r3, #1
87802daa:	607b      	str	r3, [r7, #4]
87802dac:	687b      	ldr	r3, [r7, #4]
87802dae:	781b      	ldrb	r3, [r3, #0]
87802db0:	461a      	mov	r2, r3
87802db2:	f244 03ac 	movw	r3, #16556	; 0x40ac
87802db6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802dba:	5c9b      	ldrb	r3, [r3, r2]
87802dbc:	f003 0304 	and.w	r3, r3, #4
87802dc0:	2b00      	cmp	r3, #0
87802dc2:	d005      	beq.n	87802dd0 <vsnprintf+0x188>
87802dc4:	1d3b      	adds	r3, r7, #4
87802dc6:	4618      	mov	r0, r3
87802dc8:	f7ff fbd4 	bl	87802574 <skip_atoi>
87802dcc:	62b8      	str	r0, [r7, #40]	; 0x28
87802dce:	e00d      	b.n	87802dec <vsnprintf+0x1a4>
87802dd0:	687b      	ldr	r3, [r7, #4]
87802dd2:	781b      	ldrb	r3, [r3, #0]
87802dd4:	2b2a      	cmp	r3, #42	; 0x2a
87802dd6:	d109      	bne.n	87802dec <vsnprintf+0x1a4>
87802dd8:	687b      	ldr	r3, [r7, #4]
87802dda:	3301      	adds	r3, #1
87802ddc:	607b      	str	r3, [r7, #4]
87802dde:	683b      	ldr	r3, [r7, #0]
87802de0:	3304      	adds	r3, #4
87802de2:	603b      	str	r3, [r7, #0]
87802de4:	683b      	ldr	r3, [r7, #0]
87802de6:	f853 3c04 	ldr.w	r3, [r3, #-4]
87802dea:	62bb      	str	r3, [r7, #40]	; 0x28
87802dec:	6abb      	ldr	r3, [r7, #40]	; 0x28
87802dee:	2b00      	cmp	r3, #0
87802df0:	da01      	bge.n	87802df6 <vsnprintf+0x1ae>
87802df2:	2300      	movs	r3, #0
87802df4:	62bb      	str	r3, [r7, #40]	; 0x28
87802df6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802dfa:	627b      	str	r3, [r7, #36]	; 0x24
87802dfc:	687b      	ldr	r3, [r7, #4]
87802dfe:	781b      	ldrb	r3, [r3, #0]
87802e00:	2b68      	cmp	r3, #104	; 0x68
87802e02:	d00f      	beq.n	87802e24 <vsnprintf+0x1dc>
87802e04:	687b      	ldr	r3, [r7, #4]
87802e06:	781b      	ldrb	r3, [r3, #0]
87802e08:	2b6c      	cmp	r3, #108	; 0x6c
87802e0a:	d00b      	beq.n	87802e24 <vsnprintf+0x1dc>
87802e0c:	687b      	ldr	r3, [r7, #4]
87802e0e:	781b      	ldrb	r3, [r3, #0]
87802e10:	2b4c      	cmp	r3, #76	; 0x4c
87802e12:	d007      	beq.n	87802e24 <vsnprintf+0x1dc>
87802e14:	687b      	ldr	r3, [r7, #4]
87802e16:	781b      	ldrb	r3, [r3, #0]
87802e18:	2b5a      	cmp	r3, #90	; 0x5a
87802e1a:	d003      	beq.n	87802e24 <vsnprintf+0x1dc>
87802e1c:	687b      	ldr	r3, [r7, #4]
87802e1e:	781b      	ldrb	r3, [r3, #0]
87802e20:	2b7a      	cmp	r3, #122	; 0x7a
87802e22:	d111      	bne.n	87802e48 <vsnprintf+0x200>
87802e24:	687b      	ldr	r3, [r7, #4]
87802e26:	781b      	ldrb	r3, [r3, #0]
87802e28:	627b      	str	r3, [r7, #36]	; 0x24
87802e2a:	687b      	ldr	r3, [r7, #4]
87802e2c:	3301      	adds	r3, #1
87802e2e:	607b      	str	r3, [r7, #4]
87802e30:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87802e32:	2b6c      	cmp	r3, #108	; 0x6c
87802e34:	d108      	bne.n	87802e48 <vsnprintf+0x200>
87802e36:	687b      	ldr	r3, [r7, #4]
87802e38:	781b      	ldrb	r3, [r3, #0]
87802e3a:	2b6c      	cmp	r3, #108	; 0x6c
87802e3c:	d104      	bne.n	87802e48 <vsnprintf+0x200>
87802e3e:	234c      	movs	r3, #76	; 0x4c
87802e40:	627b      	str	r3, [r7, #36]	; 0x24
87802e42:	687b      	ldr	r3, [r7, #4]
87802e44:	3301      	adds	r3, #1
87802e46:	607b      	str	r3, [r7, #4]
87802e48:	230a      	movs	r3, #10
87802e4a:	643b      	str	r3, [r7, #64]	; 0x40
87802e4c:	687b      	ldr	r3, [r7, #4]
87802e4e:	781b      	ldrb	r3, [r3, #0]
87802e50:	3b25      	subs	r3, #37	; 0x25
87802e52:	2b53      	cmp	r3, #83	; 0x53
87802e54:	f200 81ac 	bhi.w	878031b0 <vsnprintf+0x568>
87802e58:	a201      	add	r2, pc, #4	; (adr r2, 87802e60 <vsnprintf+0x218>)
87802e5a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87802e5e:	bf00      	nop
87802e60:	8780317d 			; <UNDEFINED> instruction: 0x8780317d
87802e64:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e68:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e6c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e70:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e74:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e78:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e7c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e80:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e84:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e88:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e8c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e90:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e94:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e98:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802e9c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ea0:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ea4:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ea8:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802eac:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802eb0:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802eb4:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802eb8:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ebc:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ec0:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ec4:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ec8:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ecc:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ed0:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ed4:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ed8:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802edc:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ee0:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ee4:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ee8:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802eec:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ef0:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ef4:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802ef8:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802efc:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f00:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f04:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f08:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f0c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f10:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f14:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f18:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f1c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f20:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f24:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f28:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f2c:	87803199 			; <UNDEFINED> instruction: 0x87803199
87802f30:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f34:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f38:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f3c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f40:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f44:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f48:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f4c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f50:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f54:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f58:	87802fb1 			; <UNDEFINED> instruction: 0x87802fb1
87802f5c:	878031a7 	strhi	r3, [r0, r7, lsr #3]
87802f60:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f64:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f68:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f6c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f70:	878031a7 	strhi	r3, [r0, r7, lsr #3]
87802f74:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f78:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f7c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f80:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f84:	87803119 	usada8hi	r0, r9, r1, r3
87802f88:	87803193 			; <UNDEFINED> instruction: 0x87803193
87802f8c:	878030d5 			; <UNDEFINED> instruction: 0x878030d5
87802f90:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f94:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802f98:	87803027 	strhi	r3, [r0, r7, lsr #32]
87802f9c:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802fa0:	878031ed 	strhi	r3, [r0, sp, ror #3]
87802fa4:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802fa8:	878031b1 			; <UNDEFINED> instruction: 0x878031b1
87802fac:	878031a1 	strhi	r3, [r0, r1, lsr #3]
87802fb0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802fb2:	f003 0310 	and.w	r3, r3, #16
87802fb6:	2b00      	cmp	r3, #0
87802fb8:	d110      	bne.n	87802fdc <vsnprintf+0x394>
87802fba:	e009      	b.n	87802fd0 <vsnprintf+0x388>
87802fbc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87802fbe:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802fc0:	429a      	cmp	r2, r3
87802fc2:	d802      	bhi.n	87802fca <vsnprintf+0x382>
87802fc4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802fc6:	2220      	movs	r2, #32
87802fc8:	701a      	strb	r2, [r3, #0]
87802fca:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802fcc:	3301      	adds	r3, #1
87802fce:	63fb      	str	r3, [r7, #60]	; 0x3c
87802fd0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802fd2:	3b01      	subs	r3, #1
87802fd4:	62fb      	str	r3, [r7, #44]	; 0x2c
87802fd6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802fd8:	2b00      	cmp	r3, #0
87802fda:	dcef      	bgt.n	87802fbc <vsnprintf+0x374>
87802fdc:	683b      	ldr	r3, [r7, #0]
87802fde:	3304      	adds	r3, #4
87802fe0:	603b      	str	r3, [r7, #0]
87802fe2:	683b      	ldr	r3, [r7, #0]
87802fe4:	3b04      	subs	r3, #4
87802fe6:	681b      	ldr	r3, [r3, #0]
87802fe8:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
87802fec:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87802fee:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802ff0:	429a      	cmp	r2, r3
87802ff2:	d803      	bhi.n	87802ffc <vsnprintf+0x3b4>
87802ff4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802ff6:	f897 2023 	ldrb.w	r2, [r7, #35]	; 0x23
87802ffa:	701a      	strb	r2, [r3, #0]
87802ffc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802ffe:	3301      	adds	r3, #1
87803000:	63fb      	str	r3, [r7, #60]	; 0x3c
87803002:	e009      	b.n	87803018 <vsnprintf+0x3d0>
87803004:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803006:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803008:	429a      	cmp	r2, r3
8780300a:	d802      	bhi.n	87803012 <vsnprintf+0x3ca>
8780300c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780300e:	2220      	movs	r2, #32
87803010:	701a      	strb	r2, [r3, #0]
87803012:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803014:	3301      	adds	r3, #1
87803016:	63fb      	str	r3, [r7, #60]	; 0x3c
87803018:	6afb      	ldr	r3, [r7, #44]	; 0x2c
8780301a:	3b01      	subs	r3, #1
8780301c:	62fb      	str	r3, [r7, #44]	; 0x2c
8780301e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803020:	2b00      	cmp	r3, #0
87803022:	dcef      	bgt.n	87803004 <vsnprintf+0x3bc>
87803024:	e159      	b.n	878032da <vsnprintf+0x692>
87803026:	683b      	ldr	r3, [r7, #0]
87803028:	3304      	adds	r3, #4
8780302a:	603b      	str	r3, [r7, #0]
8780302c:	683b      	ldr	r3, [r7, #0]
8780302e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803032:	637b      	str	r3, [r7, #52]	; 0x34
87803034:	6b7b      	ldr	r3, [r7, #52]	; 0x34
87803036:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
8780303a:	d204      	bcs.n	87803046 <vsnprintf+0x3fe>
8780303c:	f244 0388 	movw	r3, #16520	; 0x4088
87803040:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803044:	637b      	str	r3, [r7, #52]	; 0x34
87803046:	6abb      	ldr	r3, [r7, #40]	; 0x28
87803048:	4619      	mov	r1, r3
8780304a:	6b78      	ldr	r0, [r7, #52]	; 0x34
8780304c:	f7fe fef0 	bl	87801e30 <strnlen>
87803050:	4603      	mov	r3, r0
87803052:	61fb      	str	r3, [r7, #28]
87803054:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803056:	f003 0310 	and.w	r3, r3, #16
8780305a:	2b00      	cmp	r3, #0
8780305c:	d110      	bne.n	87803080 <vsnprintf+0x438>
8780305e:	e009      	b.n	87803074 <vsnprintf+0x42c>
87803060:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803062:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803064:	429a      	cmp	r2, r3
87803066:	d802      	bhi.n	8780306e <vsnprintf+0x426>
87803068:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780306a:	2220      	movs	r2, #32
8780306c:	701a      	strb	r2, [r3, #0]
8780306e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803070:	3301      	adds	r3, #1
87803072:	63fb      	str	r3, [r7, #60]	; 0x3c
87803074:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803076:	1e5a      	subs	r2, r3, #1
87803078:	62fa      	str	r2, [r7, #44]	; 0x2c
8780307a:	69fa      	ldr	r2, [r7, #28]
8780307c:	4293      	cmp	r3, r2
8780307e:	dcef      	bgt.n	87803060 <vsnprintf+0x418>
87803080:	2300      	movs	r3, #0
87803082:	647b      	str	r3, [r7, #68]	; 0x44
87803084:	e010      	b.n	878030a8 <vsnprintf+0x460>
87803086:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803088:	6bbb      	ldr	r3, [r7, #56]	; 0x38
8780308a:	429a      	cmp	r2, r3
8780308c:	d803      	bhi.n	87803096 <vsnprintf+0x44e>
8780308e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
87803090:	781a      	ldrb	r2, [r3, #0]
87803092:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803094:	701a      	strb	r2, [r3, #0]
87803096:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803098:	3301      	adds	r3, #1
8780309a:	63fb      	str	r3, [r7, #60]	; 0x3c
8780309c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
8780309e:	3301      	adds	r3, #1
878030a0:	637b      	str	r3, [r7, #52]	; 0x34
878030a2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878030a4:	3301      	adds	r3, #1
878030a6:	647b      	str	r3, [r7, #68]	; 0x44
878030a8:	6c7a      	ldr	r2, [r7, #68]	; 0x44
878030aa:	69fb      	ldr	r3, [r7, #28]
878030ac:	429a      	cmp	r2, r3
878030ae:	dbea      	blt.n	87803086 <vsnprintf+0x43e>
878030b0:	e009      	b.n	878030c6 <vsnprintf+0x47e>
878030b2:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878030b4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878030b6:	429a      	cmp	r2, r3
878030b8:	d802      	bhi.n	878030c0 <vsnprintf+0x478>
878030ba:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878030bc:	2220      	movs	r2, #32
878030be:	701a      	strb	r2, [r3, #0]
878030c0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878030c2:	3301      	adds	r3, #1
878030c4:	63fb      	str	r3, [r7, #60]	; 0x3c
878030c6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878030c8:	1e5a      	subs	r2, r3, #1
878030ca:	62fa      	str	r2, [r7, #44]	; 0x2c
878030cc:	69fa      	ldr	r2, [r7, #28]
878030ce:	4293      	cmp	r3, r2
878030d0:	dcef      	bgt.n	878030b2 <vsnprintf+0x46a>
878030d2:	e102      	b.n	878032da <vsnprintf+0x692>
878030d4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878030d6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
878030da:	d105      	bne.n	878030e8 <vsnprintf+0x4a0>
878030dc:	2308      	movs	r3, #8
878030de:	62fb      	str	r3, [r7, #44]	; 0x2c
878030e0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878030e2:	f043 0301 	orr.w	r3, r3, #1
878030e6:	633b      	str	r3, [r7, #48]	; 0x30
878030e8:	683b      	ldr	r3, [r7, #0]
878030ea:	3304      	adds	r3, #4
878030ec:	603b      	str	r3, [r7, #0]
878030ee:	683b      	ldr	r3, [r7, #0]
878030f0:	3b04      	subs	r3, #4
878030f2:	681b      	ldr	r3, [r3, #0]
878030f4:	f04f 0400 	mov.w	r4, #0
878030f8:	6b3a      	ldr	r2, [r7, #48]	; 0x30
878030fa:	9203      	str	r2, [sp, #12]
878030fc:	6aba      	ldr	r2, [r7, #40]	; 0x28
878030fe:	9202      	str	r2, [sp, #8]
87803100:	6afa      	ldr	r2, [r7, #44]	; 0x2c
87803102:	9201      	str	r2, [sp, #4]
87803104:	2210      	movs	r2, #16
87803106:	9200      	str	r2, [sp, #0]
87803108:	461a      	mov	r2, r3
8780310a:	4623      	mov	r3, r4
8780310c:	6bb9      	ldr	r1, [r7, #56]	; 0x38
8780310e:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
87803110:	f7ff fbf2 	bl	878028f8 <number>
87803114:	63f8      	str	r0, [r7, #60]	; 0x3c
87803116:	e0e0      	b.n	878032da <vsnprintf+0x692>
87803118:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780311a:	2b6c      	cmp	r3, #108	; 0x6c
8780311c:	d10c      	bne.n	87803138 <vsnprintf+0x4f0>
8780311e:	683b      	ldr	r3, [r7, #0]
87803120:	3304      	adds	r3, #4
87803122:	603b      	str	r3, [r7, #0]
87803124:	683b      	ldr	r3, [r7, #0]
87803126:	f853 3c04 	ldr.w	r3, [r3, #-4]
8780312a:	61bb      	str	r3, [r7, #24]
8780312c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780312e:	68fb      	ldr	r3, [r7, #12]
87803130:	1ad2      	subs	r2, r2, r3
87803132:	69bb      	ldr	r3, [r7, #24]
87803134:	601a      	str	r2, [r3, #0]
87803136:	e020      	b.n	8780317a <vsnprintf+0x532>
87803138:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780313a:	2b5a      	cmp	r3, #90	; 0x5a
8780313c:	d002      	beq.n	87803144 <vsnprintf+0x4fc>
8780313e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803140:	2b7a      	cmp	r3, #122	; 0x7a
87803142:	d10d      	bne.n	87803160 <vsnprintf+0x518>
87803144:	683b      	ldr	r3, [r7, #0]
87803146:	3304      	adds	r3, #4
87803148:	603b      	str	r3, [r7, #0]
8780314a:	683b      	ldr	r3, [r7, #0]
8780314c:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803150:	613b      	str	r3, [r7, #16]
87803152:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803154:	68fb      	ldr	r3, [r7, #12]
87803156:	1ad3      	subs	r3, r2, r3
87803158:	461a      	mov	r2, r3
8780315a:	693b      	ldr	r3, [r7, #16]
8780315c:	601a      	str	r2, [r3, #0]
8780315e:	e00c      	b.n	8780317a <vsnprintf+0x532>
87803160:	683b      	ldr	r3, [r7, #0]
87803162:	3304      	adds	r3, #4
87803164:	603b      	str	r3, [r7, #0]
87803166:	683b      	ldr	r3, [r7, #0]
87803168:	f853 3c04 	ldr.w	r3, [r3, #-4]
8780316c:	617b      	str	r3, [r7, #20]
8780316e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803170:	68fb      	ldr	r3, [r7, #12]
87803172:	1ad2      	subs	r2, r2, r3
87803174:	697b      	ldr	r3, [r7, #20]
87803176:	601a      	str	r2, [r3, #0]
87803178:	e0af      	b.n	878032da <vsnprintf+0x692>
8780317a:	e0ae      	b.n	878032da <vsnprintf+0x692>
8780317c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780317e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803180:	429a      	cmp	r2, r3
87803182:	d802      	bhi.n	8780318a <vsnprintf+0x542>
87803184:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803186:	2225      	movs	r2, #37	; 0x25
87803188:	701a      	strb	r2, [r3, #0]
8780318a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780318c:	3301      	adds	r3, #1
8780318e:	63fb      	str	r3, [r7, #60]	; 0x3c
87803190:	e0a3      	b.n	878032da <vsnprintf+0x692>
87803192:	2308      	movs	r3, #8
87803194:	643b      	str	r3, [r7, #64]	; 0x40
87803196:	e02a      	b.n	878031ee <vsnprintf+0x5a6>
87803198:	6b3b      	ldr	r3, [r7, #48]	; 0x30
8780319a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
8780319e:	633b      	str	r3, [r7, #48]	; 0x30
878031a0:	2310      	movs	r3, #16
878031a2:	643b      	str	r3, [r7, #64]	; 0x40
878031a4:	e023      	b.n	878031ee <vsnprintf+0x5a6>
878031a6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878031a8:	f043 0302 	orr.w	r3, r3, #2
878031ac:	633b      	str	r3, [r7, #48]	; 0x30
878031ae:	e01d      	b.n	878031ec <vsnprintf+0x5a4>
878031b0:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878031b2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878031b4:	429a      	cmp	r2, r3
878031b6:	d802      	bhi.n	878031be <vsnprintf+0x576>
878031b8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031ba:	2225      	movs	r2, #37	; 0x25
878031bc:	701a      	strb	r2, [r3, #0]
878031be:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031c0:	3301      	adds	r3, #1
878031c2:	63fb      	str	r3, [r7, #60]	; 0x3c
878031c4:	687b      	ldr	r3, [r7, #4]
878031c6:	781b      	ldrb	r3, [r3, #0]
878031c8:	2b00      	cmp	r3, #0
878031ca:	d00b      	beq.n	878031e4 <vsnprintf+0x59c>
878031cc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878031ce:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878031d0:	429a      	cmp	r2, r3
878031d2:	d803      	bhi.n	878031dc <vsnprintf+0x594>
878031d4:	687b      	ldr	r3, [r7, #4]
878031d6:	781a      	ldrb	r2, [r3, #0]
878031d8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031da:	701a      	strb	r2, [r3, #0]
878031dc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031de:	3301      	adds	r3, #1
878031e0:	63fb      	str	r3, [r7, #60]	; 0x3c
878031e2:	e07a      	b.n	878032da <vsnprintf+0x692>
878031e4:	687b      	ldr	r3, [r7, #4]
878031e6:	3b01      	subs	r3, #1
878031e8:	607b      	str	r3, [r7, #4]
878031ea:	e076      	b.n	878032da <vsnprintf+0x692>
878031ec:	bf00      	nop
878031ee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878031f0:	2b4c      	cmp	r3, #76	; 0x4c
878031f2:	d108      	bne.n	87803206 <vsnprintf+0x5be>
878031f4:	683b      	ldr	r3, [r7, #0]
878031f6:	3308      	adds	r3, #8
878031f8:	603b      	str	r3, [r7, #0]
878031fa:	683b      	ldr	r3, [r7, #0]
878031fc:	e953 3402 	ldrd	r3, r4, [r3, #-8]
87803200:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803204:	e058      	b.n	878032b8 <vsnprintf+0x670>
87803206:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803208:	2b6c      	cmp	r3, #108	; 0x6c
8780320a:	d114      	bne.n	87803236 <vsnprintf+0x5ee>
8780320c:	683b      	ldr	r3, [r7, #0]
8780320e:	3304      	adds	r3, #4
87803210:	603b      	str	r3, [r7, #0]
87803212:	683b      	ldr	r3, [r7, #0]
87803214:	3b04      	subs	r3, #4
87803216:	681b      	ldr	r3, [r3, #0]
87803218:	f04f 0400 	mov.w	r4, #0
8780321c:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803220:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803222:	f003 0302 	and.w	r3, r3, #2
87803226:	2b00      	cmp	r3, #0
87803228:	d046      	beq.n	878032b8 <vsnprintf+0x670>
8780322a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
8780322c:	ea4f 74e3 	mov.w	r4, r3, asr #31
87803230:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803234:	e040      	b.n	878032b8 <vsnprintf+0x670>
87803236:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803238:	2b5a      	cmp	r3, #90	; 0x5a
8780323a:	d002      	beq.n	87803242 <vsnprintf+0x5fa>
8780323c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780323e:	2b7a      	cmp	r3, #122	; 0x7a
87803240:	d10a      	bne.n	87803258 <vsnprintf+0x610>
87803242:	683b      	ldr	r3, [r7, #0]
87803244:	3304      	adds	r3, #4
87803246:	603b      	str	r3, [r7, #0]
87803248:	683b      	ldr	r3, [r7, #0]
8780324a:	3b04      	subs	r3, #4
8780324c:	681b      	ldr	r3, [r3, #0]
8780324e:	f04f 0400 	mov.w	r4, #0
87803252:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803256:	e02f      	b.n	878032b8 <vsnprintf+0x670>
87803258:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780325a:	2b68      	cmp	r3, #104	; 0x68
8780325c:	d118      	bne.n	87803290 <vsnprintf+0x648>
8780325e:	683b      	ldr	r3, [r7, #0]
87803260:	3304      	adds	r3, #4
87803262:	603b      	str	r3, [r7, #0]
87803264:	683b      	ldr	r3, [r7, #0]
87803266:	3b04      	subs	r3, #4
87803268:	681b      	ldr	r3, [r3, #0]
8780326a:	b29b      	uxth	r3, r3
8780326c:	b29b      	uxth	r3, r3
8780326e:	f04f 0400 	mov.w	r4, #0
87803272:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803276:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803278:	f003 0302 	and.w	r3, r3, #2
8780327c:	2b00      	cmp	r3, #0
8780327e:	d01b      	beq.n	878032b8 <vsnprintf+0x670>
87803280:	f8b7 3048 	ldrh.w	r3, [r7, #72]	; 0x48
87803284:	b21b      	sxth	r3, r3
87803286:	ea4f 74e3 	mov.w	r4, r3, asr #31
8780328a:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
8780328e:	e013      	b.n	878032b8 <vsnprintf+0x670>
87803290:	683b      	ldr	r3, [r7, #0]
87803292:	3304      	adds	r3, #4
87803294:	603b      	str	r3, [r7, #0]
87803296:	683b      	ldr	r3, [r7, #0]
87803298:	3b04      	subs	r3, #4
8780329a:	681b      	ldr	r3, [r3, #0]
8780329c:	f04f 0400 	mov.w	r4, #0
878032a0:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878032a4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878032a6:	f003 0302 	and.w	r3, r3, #2
878032aa:	2b00      	cmp	r3, #0
878032ac:	d004      	beq.n	878032b8 <vsnprintf+0x670>
878032ae:	6cbb      	ldr	r3, [r7, #72]	; 0x48
878032b0:	ea4f 74e3 	mov.w	r4, r3, asr #31
878032b4:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878032b8:	e9d7 3412 	ldrd	r3, r4, [r7, #72]	; 0x48
878032bc:	6b3a      	ldr	r2, [r7, #48]	; 0x30
878032be:	9203      	str	r2, [sp, #12]
878032c0:	6aba      	ldr	r2, [r7, #40]	; 0x28
878032c2:	9202      	str	r2, [sp, #8]
878032c4:	6afa      	ldr	r2, [r7, #44]	; 0x2c
878032c6:	9201      	str	r2, [sp, #4]
878032c8:	6c3a      	ldr	r2, [r7, #64]	; 0x40
878032ca:	9200      	str	r2, [sp, #0]
878032cc:	461a      	mov	r2, r3
878032ce:	4623      	mov	r3, r4
878032d0:	6bb9      	ldr	r1, [r7, #56]	; 0x38
878032d2:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
878032d4:	f7ff fb10 	bl	878028f8 <number>
878032d8:	63f8      	str	r0, [r7, #60]	; 0x3c
878032da:	687b      	ldr	r3, [r7, #4]
878032dc:	3301      	adds	r3, #1
878032de:	607b      	str	r3, [r7, #4]
878032e0:	687b      	ldr	r3, [r7, #4]
878032e2:	781b      	ldrb	r3, [r3, #0]
878032e4:	2b00      	cmp	r3, #0
878032e6:	f47f acd2 	bne.w	87802c8e <vsnprintf+0x46>
878032ea:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878032ec:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878032ee:	429a      	cmp	r2, r3
878032f0:	d803      	bhi.n	878032fa <vsnprintf+0x6b2>
878032f2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878032f4:	2200      	movs	r2, #0
878032f6:	701a      	strb	r2, [r3, #0]
878032f8:	e005      	b.n	87803306 <vsnprintf+0x6be>
878032fa:	68bb      	ldr	r3, [r7, #8]
878032fc:	2b00      	cmp	r3, #0
878032fe:	d002      	beq.n	87803306 <vsnprintf+0x6be>
87803300:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803302:	2200      	movs	r2, #0
87803304:	701a      	strb	r2, [r3, #0]
87803306:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803308:	68fb      	ldr	r3, [r7, #12]
8780330a:	1ad3      	subs	r3, r2, r3
8780330c:	4618      	mov	r0, r3
8780330e:	3754      	adds	r7, #84	; 0x54
87803310:	46bd      	mov	sp, r7
87803312:	bd90      	pop	{r4, r7, pc}

87803314 <vscnprintf>:
87803314:	b580      	push	{r7, lr}
87803316:	b086      	sub	sp, #24
87803318:	af00      	add	r7, sp, #0
8780331a:	60f8      	str	r0, [r7, #12]
8780331c:	60b9      	str	r1, [r7, #8]
8780331e:	607a      	str	r2, [r7, #4]
87803320:	603b      	str	r3, [r7, #0]
87803322:	683b      	ldr	r3, [r7, #0]
87803324:	687a      	ldr	r2, [r7, #4]
87803326:	68b9      	ldr	r1, [r7, #8]
87803328:	68f8      	ldr	r0, [r7, #12]
8780332a:	f7ff fc8d 	bl	87802c48 <vsnprintf>
8780332e:	6178      	str	r0, [r7, #20]
87803330:	697a      	ldr	r2, [r7, #20]
87803332:	68bb      	ldr	r3, [r7, #8]
87803334:	429a      	cmp	r2, r3
87803336:	d302      	bcc.n	8780333e <vscnprintf+0x2a>
87803338:	68bb      	ldr	r3, [r7, #8]
8780333a:	3b01      	subs	r3, #1
8780333c:	e000      	b.n	87803340 <vscnprintf+0x2c>
8780333e:	697b      	ldr	r3, [r7, #20]
87803340:	4618      	mov	r0, r3
87803342:	3718      	adds	r7, #24
87803344:	46bd      	mov	sp, r7
87803346:	bd80      	pop	{r7, pc}

87803348 <snprintf>:
87803348:	b40c      	push	{r2, r3}
8780334a:	b580      	push	{r7, lr}
8780334c:	b084      	sub	sp, #16
8780334e:	af00      	add	r7, sp, #0
87803350:	6078      	str	r0, [r7, #4]
87803352:	6039      	str	r1, [r7, #0]
87803354:	f107 031c 	add.w	r3, r7, #28
87803358:	60fb      	str	r3, [r7, #12]
8780335a:	69ba      	ldr	r2, [r7, #24]
8780335c:	68fb      	ldr	r3, [r7, #12]
8780335e:	6839      	ldr	r1, [r7, #0]
87803360:	6878      	ldr	r0, [r7, #4]
87803362:	f7ff fc71 	bl	87802c48 <vsnprintf>
87803366:	60b8      	str	r0, [r7, #8]
87803368:	68bb      	ldr	r3, [r7, #8]
8780336a:	4618      	mov	r0, r3
8780336c:	3710      	adds	r7, #16
8780336e:	46bd      	mov	sp, r7
87803370:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803374:	b002      	add	sp, #8
87803376:	4770      	bx	lr

87803378 <scnprintf>:
87803378:	b40c      	push	{r2, r3}
8780337a:	b580      	push	{r7, lr}
8780337c:	b084      	sub	sp, #16
8780337e:	af00      	add	r7, sp, #0
87803380:	6078      	str	r0, [r7, #4]
87803382:	6039      	str	r1, [r7, #0]
87803384:	f107 031c 	add.w	r3, r7, #28
87803388:	60fb      	str	r3, [r7, #12]
8780338a:	69ba      	ldr	r2, [r7, #24]
8780338c:	68fb      	ldr	r3, [r7, #12]
8780338e:	6839      	ldr	r1, [r7, #0]
87803390:	6878      	ldr	r0, [r7, #4]
87803392:	f7ff fc59 	bl	87802c48 <vsnprintf>
87803396:	60b8      	str	r0, [r7, #8]
87803398:	68ba      	ldr	r2, [r7, #8]
8780339a:	683b      	ldr	r3, [r7, #0]
8780339c:	429a      	cmp	r2, r3
8780339e:	d302      	bcc.n	878033a6 <scnprintf+0x2e>
878033a0:	683b      	ldr	r3, [r7, #0]
878033a2:	3b01      	subs	r3, #1
878033a4:	e000      	b.n	878033a8 <scnprintf+0x30>
878033a6:	68bb      	ldr	r3, [r7, #8]
878033a8:	4618      	mov	r0, r3
878033aa:	3710      	adds	r7, #16
878033ac:	46bd      	mov	sp, r7
878033ae:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
878033b2:	b002      	add	sp, #8
878033b4:	4770      	bx	lr
878033b6:	bf00      	nop

878033b8 <vsprintf>:
878033b8:	b580      	push	{r7, lr}
878033ba:	b084      	sub	sp, #16
878033bc:	af00      	add	r7, sp, #0
878033be:	60f8      	str	r0, [r7, #12]
878033c0:	60b9      	str	r1, [r7, #8]
878033c2:	607a      	str	r2, [r7, #4]
878033c4:	687b      	ldr	r3, [r7, #4]
878033c6:	68ba      	ldr	r2, [r7, #8]
878033c8:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
878033cc:	68f8      	ldr	r0, [r7, #12]
878033ce:	f7ff fc3b 	bl	87802c48 <vsnprintf>
878033d2:	4603      	mov	r3, r0
878033d4:	4618      	mov	r0, r3
878033d6:	3710      	adds	r7, #16
878033d8:	46bd      	mov	sp, r7
878033da:	bd80      	pop	{r7, pc}

878033dc <sprintf>:
878033dc:	b40e      	push	{r1, r2, r3}
878033de:	b580      	push	{r7, lr}
878033e0:	b085      	sub	sp, #20
878033e2:	af00      	add	r7, sp, #0
878033e4:	6078      	str	r0, [r7, #4]
878033e6:	f107 0320 	add.w	r3, r7, #32
878033ea:	60fb      	str	r3, [r7, #12]
878033ec:	69fb      	ldr	r3, [r7, #28]
878033ee:	68fa      	ldr	r2, [r7, #12]
878033f0:	4619      	mov	r1, r3
878033f2:	6878      	ldr	r0, [r7, #4]
878033f4:	f7ff ffe0 	bl	878033b8 <vsprintf>
878033f8:	60b8      	str	r0, [r7, #8]
878033fa:	68bb      	ldr	r3, [r7, #8]
878033fc:	4618      	mov	r0, r3
878033fe:	3714      	adds	r7, #20
87803400:	46bd      	mov	sp, r7
87803402:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803406:	b003      	add	sp, #12
87803408:	4770      	bx	lr
8780340a:	bf00      	nop

8780340c <vsscanf>:
8780340c:	b590      	push	{r4, r7, lr}
8780340e:	b09b      	sub	sp, #108	; 0x6c
87803410:	af00      	add	r7, sp, #0
87803412:	60f8      	str	r0, [r7, #12]
87803414:	60b9      	str	r1, [r7, #8]
87803416:	607a      	str	r2, [r7, #4]
87803418:	68fb      	ldr	r3, [r7, #12]
8780341a:	667b      	str	r3, [r7, #100]	; 0x64
8780341c:	2300      	movs	r3, #0
8780341e:	65fb      	str	r3, [r7, #92]	; 0x5c
87803420:	2300      	movs	r3, #0
87803422:	64fb      	str	r3, [r7, #76]	; 0x4c
87803424:	e3c6      	b.n	87803bb4 <vsscanf+0x7a8>
87803426:	68bb      	ldr	r3, [r7, #8]
87803428:	781b      	ldrb	r3, [r3, #0]
8780342a:	461a      	mov	r2, r3
8780342c:	f244 03ac 	movw	r3, #16556	; 0x40ac
87803430:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803434:	5c9b      	ldrb	r3, [r3, r2]
87803436:	f003 0320 	and.w	r3, r3, #32
8780343a:	2b00      	cmp	r3, #0
8780343c:	d01f      	beq.n	8780347e <vsscanf+0x72>
8780343e:	e002      	b.n	87803446 <vsscanf+0x3a>
87803440:	68bb      	ldr	r3, [r7, #8]
87803442:	3301      	adds	r3, #1
87803444:	60bb      	str	r3, [r7, #8]
87803446:	68bb      	ldr	r3, [r7, #8]
87803448:	781b      	ldrb	r3, [r3, #0]
8780344a:	461a      	mov	r2, r3
8780344c:	f244 03ac 	movw	r3, #16556	; 0x40ac
87803450:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803454:	5c9b      	ldrb	r3, [r3, r2]
87803456:	f003 0320 	and.w	r3, r3, #32
8780345a:	2b00      	cmp	r3, #0
8780345c:	d1f0      	bne.n	87803440 <vsscanf+0x34>
8780345e:	e002      	b.n	87803466 <vsscanf+0x5a>
87803460:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803462:	3301      	adds	r3, #1
87803464:	667b      	str	r3, [r7, #100]	; 0x64
87803466:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803468:	781b      	ldrb	r3, [r3, #0]
8780346a:	461a      	mov	r2, r3
8780346c:	f244 03ac 	movw	r3, #16556	; 0x40ac
87803470:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803474:	5c9b      	ldrb	r3, [r3, r2]
87803476:	f003 0320 	and.w	r3, r3, #32
8780347a:	2b00      	cmp	r3, #0
8780347c:	d1f0      	bne.n	87803460 <vsscanf+0x54>
8780347e:	68bb      	ldr	r3, [r7, #8]
87803480:	781b      	ldrb	r3, [r3, #0]
87803482:	2b25      	cmp	r3, #37	; 0x25
87803484:	d00f      	beq.n	878034a6 <vsscanf+0x9a>
87803486:	68bb      	ldr	r3, [r7, #8]
87803488:	781b      	ldrb	r3, [r3, #0]
8780348a:	2b00      	cmp	r3, #0
8780348c:	d00b      	beq.n	878034a6 <vsscanf+0x9a>
8780348e:	68bb      	ldr	r3, [r7, #8]
87803490:	1c5a      	adds	r2, r3, #1
87803492:	60ba      	str	r2, [r7, #8]
87803494:	781a      	ldrb	r2, [r3, #0]
87803496:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803498:	1c59      	adds	r1, r3, #1
8780349a:	6679      	str	r1, [r7, #100]	; 0x64
8780349c:	781b      	ldrb	r3, [r3, #0]
8780349e:	429a      	cmp	r2, r3
878034a0:	d000      	beq.n	878034a4 <vsscanf+0x98>
878034a2:	e390      	b.n	87803bc6 <vsscanf+0x7ba>
878034a4:	e386      	b.n	87803bb4 <vsscanf+0x7a8>
878034a6:	68bb      	ldr	r3, [r7, #8]
878034a8:	781b      	ldrb	r3, [r3, #0]
878034aa:	2b00      	cmp	r3, #0
878034ac:	d100      	bne.n	878034b0 <vsscanf+0xa4>
878034ae:	e38a      	b.n	87803bc6 <vsscanf+0x7ba>
878034b0:	68bb      	ldr	r3, [r7, #8]
878034b2:	3301      	adds	r3, #1
878034b4:	60bb      	str	r3, [r7, #8]
878034b6:	68bb      	ldr	r3, [r7, #8]
878034b8:	781b      	ldrb	r3, [r3, #0]
878034ba:	2b2a      	cmp	r3, #42	; 0x2a
878034bc:	d128      	bne.n	87803510 <vsscanf+0x104>
878034be:	e002      	b.n	878034c6 <vsscanf+0xba>
878034c0:	68bb      	ldr	r3, [r7, #8]
878034c2:	3301      	adds	r3, #1
878034c4:	60bb      	str	r3, [r7, #8]
878034c6:	68bb      	ldr	r3, [r7, #8]
878034c8:	781b      	ldrb	r3, [r3, #0]
878034ca:	461a      	mov	r2, r3
878034cc:	f244 03ac 	movw	r3, #16556	; 0x40ac
878034d0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878034d4:	5c9b      	ldrb	r3, [r3, r2]
878034d6:	f003 0320 	and.w	r3, r3, #32
878034da:	2b00      	cmp	r3, #0
878034dc:	d103      	bne.n	878034e6 <vsscanf+0xda>
878034de:	68bb      	ldr	r3, [r7, #8]
878034e0:	781b      	ldrb	r3, [r3, #0]
878034e2:	2b00      	cmp	r3, #0
878034e4:	d1ec      	bne.n	878034c0 <vsscanf+0xb4>
878034e6:	e002      	b.n	878034ee <vsscanf+0xe2>
878034e8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878034ea:	3301      	adds	r3, #1
878034ec:	667b      	str	r3, [r7, #100]	; 0x64
878034ee:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878034f0:	781b      	ldrb	r3, [r3, #0]
878034f2:	461a      	mov	r2, r3
878034f4:	f244 03ac 	movw	r3, #16556	; 0x40ac
878034f8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878034fc:	5c9b      	ldrb	r3, [r3, r2]
878034fe:	f003 0320 	and.w	r3, r3, #32
87803502:	2b00      	cmp	r3, #0
87803504:	d103      	bne.n	8780350e <vsscanf+0x102>
87803506:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803508:	781b      	ldrb	r3, [r3, #0]
8780350a:	2b00      	cmp	r3, #0
8780350c:	d1ec      	bne.n	878034e8 <vsscanf+0xdc>
8780350e:	e351      	b.n	87803bb4 <vsscanf+0x7a8>
87803510:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87803514:	653b      	str	r3, [r7, #80]	; 0x50
87803516:	68bb      	ldr	r3, [r7, #8]
87803518:	781b      	ldrb	r3, [r3, #0]
8780351a:	461a      	mov	r2, r3
8780351c:	f244 03ac 	movw	r3, #16556	; 0x40ac
87803520:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803524:	5c9b      	ldrb	r3, [r3, r2]
87803526:	f003 0304 	and.w	r3, r3, #4
8780352a:	2b00      	cmp	r3, #0
8780352c:	d005      	beq.n	8780353a <vsscanf+0x12e>
8780352e:	f107 0308 	add.w	r3, r7, #8
87803532:	4618      	mov	r0, r3
87803534:	f7ff f81e 	bl	87802574 <skip_atoi>
87803538:	6538      	str	r0, [r7, #80]	; 0x50
8780353a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
8780353e:	65bb      	str	r3, [r7, #88]	; 0x58
87803540:	68bb      	ldr	r3, [r7, #8]
87803542:	781b      	ldrb	r3, [r3, #0]
87803544:	2b68      	cmp	r3, #104	; 0x68
87803546:	d00f      	beq.n	87803568 <vsscanf+0x15c>
87803548:	68bb      	ldr	r3, [r7, #8]
8780354a:	781b      	ldrb	r3, [r3, #0]
8780354c:	2b6c      	cmp	r3, #108	; 0x6c
8780354e:	d00b      	beq.n	87803568 <vsscanf+0x15c>
87803550:	68bb      	ldr	r3, [r7, #8]
87803552:	781b      	ldrb	r3, [r3, #0]
87803554:	2b4c      	cmp	r3, #76	; 0x4c
87803556:	d007      	beq.n	87803568 <vsscanf+0x15c>
87803558:	68bb      	ldr	r3, [r7, #8]
8780355a:	781b      	ldrb	r3, [r3, #0]
8780355c:	2b5a      	cmp	r3, #90	; 0x5a
8780355e:	d003      	beq.n	87803568 <vsscanf+0x15c>
87803560:	68bb      	ldr	r3, [r7, #8]
87803562:	781b      	ldrb	r3, [r3, #0]
87803564:	2b7a      	cmp	r3, #122	; 0x7a
87803566:	d120      	bne.n	878035aa <vsscanf+0x19e>
87803568:	68bb      	ldr	r3, [r7, #8]
8780356a:	1c5a      	adds	r2, r3, #1
8780356c:	60ba      	str	r2, [r7, #8]
8780356e:	781b      	ldrb	r3, [r3, #0]
87803570:	65bb      	str	r3, [r7, #88]	; 0x58
87803572:	68bb      	ldr	r3, [r7, #8]
87803574:	781b      	ldrb	r3, [r3, #0]
87803576:	461a      	mov	r2, r3
87803578:	6dbb      	ldr	r3, [r7, #88]	; 0x58
8780357a:	429a      	cmp	r2, r3
8780357c:	bf0c      	ite	eq
8780357e:	2301      	moveq	r3, #1
87803580:	2300      	movne	r3, #0
87803582:	b2db      	uxtb	r3, r3
87803584:	2b00      	cmp	r3, #0
87803586:	d010      	beq.n	878035aa <vsscanf+0x19e>
87803588:	6dbb      	ldr	r3, [r7, #88]	; 0x58
8780358a:	2b68      	cmp	r3, #104	; 0x68
8780358c:	d105      	bne.n	8780359a <vsscanf+0x18e>
8780358e:	2348      	movs	r3, #72	; 0x48
87803590:	65bb      	str	r3, [r7, #88]	; 0x58
87803592:	68bb      	ldr	r3, [r7, #8]
87803594:	3301      	adds	r3, #1
87803596:	60bb      	str	r3, [r7, #8]
87803598:	e007      	b.n	878035aa <vsscanf+0x19e>
8780359a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
8780359c:	2b6c      	cmp	r3, #108	; 0x6c
8780359e:	d104      	bne.n	878035aa <vsscanf+0x19e>
878035a0:	234c      	movs	r3, #76	; 0x4c
878035a2:	65bb      	str	r3, [r7, #88]	; 0x58
878035a4:	68bb      	ldr	r3, [r7, #8]
878035a6:	3301      	adds	r3, #1
878035a8:	60bb      	str	r3, [r7, #8]
878035aa:	230a      	movs	r3, #10
878035ac:	657b      	str	r3, [r7, #84]	; 0x54
878035ae:	2300      	movs	r3, #0
878035b0:	64fb      	str	r3, [r7, #76]	; 0x4c
878035b2:	68bb      	ldr	r3, [r7, #8]
878035b4:	781b      	ldrb	r3, [r3, #0]
878035b6:	2b00      	cmp	r3, #0
878035b8:	f000 8305 	beq.w	87803bc6 <vsscanf+0x7ba>
878035bc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878035be:	781b      	ldrb	r3, [r3, #0]
878035c0:	2b00      	cmp	r3, #0
878035c2:	f000 8300 	beq.w	87803bc6 <vsscanf+0x7ba>
878035c6:	68bb      	ldr	r3, [r7, #8]
878035c8:	1c5a      	adds	r2, r3, #1
878035ca:	60ba      	str	r2, [r7, #8]
878035cc:	781b      	ldrb	r3, [r3, #0]
878035ce:	3b25      	subs	r3, #37	; 0x25
878035d0:	2b53      	cmp	r3, #83	; 0x53
878035d2:	f200 8132 	bhi.w	8780383a <vsscanf+0x42e>
878035d6:	a201      	add	r2, pc, #4	; (adr r2, 878035dc <vsscanf+0x1d0>)
878035d8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
878035dc:	87803829 	strhi	r3, [r0, r9, lsr #16]
878035e0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878035e4:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878035e8:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878035ec:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878035f0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878035f4:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878035f8:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878035fc:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803600:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803604:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803608:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780360c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803610:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803614:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803618:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780361c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803620:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803624:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803628:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780362c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803630:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803634:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803638:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780363c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803640:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803644:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803648:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780364c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803650:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803654:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803658:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780365c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803660:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803664:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803668:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780366c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803670:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803674:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803678:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780367c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803680:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803684:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803688:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780368c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803690:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803694:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803698:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780369c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036a0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036a4:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036a8:	87803819 	usada8hi	r0, r9, r8, r3
878036ac:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036b0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036b4:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036b8:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036bc:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036c0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036c4:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036c8:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036cc:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036d0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036d4:	8780372d 	strhi	r3, [r0, sp, lsr #14]
878036d8:	87803823 	strhi	r3, [r0, r3, lsr #16]
878036dc:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036e0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036e4:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036e8:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036ec:	8780381f 	usada8hi	r0, pc, r8, r3	; <UNPREDICTABLE>
878036f0:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036f4:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036f8:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
878036fc:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803700:	878037f9 			; <UNDEFINED> instruction: 0x878037f9
87803704:	87803813 	usada8hi	r0, r3, r8, r3
87803708:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780370c:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803710:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803714:	87803773 			; <UNDEFINED> instruction: 0x87803773
87803718:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
8780371c:	8780383f 			; <UNDEFINED> instruction: 0x8780383f
87803720:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803724:	8780383b 			; <UNDEFINED> instruction: 0x8780383b
87803728:	87803819 	usada8hi	r0, r9, r8, r3
8780372c:	687b      	ldr	r3, [r7, #4]
8780372e:	3304      	adds	r3, #4
87803730:	607b      	str	r3, [r7, #4]
87803732:	687b      	ldr	r3, [r7, #4]
87803734:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803738:	64bb      	str	r3, [r7, #72]	; 0x48
8780373a:	6d3b      	ldr	r3, [r7, #80]	; 0x50
8780373c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
87803740:	d101      	bne.n	87803746 <vsscanf+0x33a>
87803742:	2301      	movs	r3, #1
87803744:	653b      	str	r3, [r7, #80]	; 0x50
87803746:	6cbb      	ldr	r3, [r7, #72]	; 0x48
87803748:	1c5a      	adds	r2, r3, #1
8780374a:	64ba      	str	r2, [r7, #72]	; 0x48
8780374c:	6e7a      	ldr	r2, [r7, #100]	; 0x64
8780374e:	1c51      	adds	r1, r2, #1
87803750:	6679      	str	r1, [r7, #100]	; 0x64
87803752:	7812      	ldrb	r2, [r2, #0]
87803754:	701a      	strb	r2, [r3, #0]
87803756:	6d3b      	ldr	r3, [r7, #80]	; 0x50
87803758:	3b01      	subs	r3, #1
8780375a:	653b      	str	r3, [r7, #80]	; 0x50
8780375c:	6d3b      	ldr	r3, [r7, #80]	; 0x50
8780375e:	2b00      	cmp	r3, #0
87803760:	dd03      	ble.n	8780376a <vsscanf+0x35e>
87803762:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803764:	781b      	ldrb	r3, [r3, #0]
87803766:	2b00      	cmp	r3, #0
87803768:	d1ed      	bne.n	87803746 <vsscanf+0x33a>
8780376a:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
8780376c:	3301      	adds	r3, #1
8780376e:	65fb      	str	r3, [r7, #92]	; 0x5c
87803770:	e220      	b.n	87803bb4 <vsscanf+0x7a8>
87803772:	687b      	ldr	r3, [r7, #4]
87803774:	3304      	adds	r3, #4
87803776:	607b      	str	r3, [r7, #4]
87803778:	687b      	ldr	r3, [r7, #4]
8780377a:	f853 3c04 	ldr.w	r3, [r3, #-4]
8780377e:	647b      	str	r3, [r7, #68]	; 0x44
87803780:	6d3b      	ldr	r3, [r7, #80]	; 0x50
87803782:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
87803786:	d102      	bne.n	8780378e <vsscanf+0x382>
87803788:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
8780378c:	653b      	str	r3, [r7, #80]	; 0x50
8780378e:	e002      	b.n	87803796 <vsscanf+0x38a>
87803790:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803792:	3301      	adds	r3, #1
87803794:	667b      	str	r3, [r7, #100]	; 0x64
87803796:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803798:	781b      	ldrb	r3, [r3, #0]
8780379a:	461a      	mov	r2, r3
8780379c:	f244 03ac 	movw	r3, #16556	; 0x40ac
878037a0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878037a4:	5c9b      	ldrb	r3, [r3, r2]
878037a6:	f003 0320 	and.w	r3, r3, #32
878037aa:	2b00      	cmp	r3, #0
878037ac:	d1f0      	bne.n	87803790 <vsscanf+0x384>
878037ae:	e007      	b.n	878037c0 <vsscanf+0x3b4>
878037b0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878037b2:	1c5a      	adds	r2, r3, #1
878037b4:	647a      	str	r2, [r7, #68]	; 0x44
878037b6:	6e7a      	ldr	r2, [r7, #100]	; 0x64
878037b8:	1c51      	adds	r1, r2, #1
878037ba:	6679      	str	r1, [r7, #100]	; 0x64
878037bc:	7812      	ldrb	r2, [r2, #0]
878037be:	701a      	strb	r2, [r3, #0]
878037c0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878037c2:	781b      	ldrb	r3, [r3, #0]
878037c4:	2b00      	cmp	r3, #0
878037c6:	d010      	beq.n	878037ea <vsscanf+0x3de>
878037c8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878037ca:	781b      	ldrb	r3, [r3, #0]
878037cc:	461a      	mov	r2, r3
878037ce:	f244 03ac 	movw	r3, #16556	; 0x40ac
878037d2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878037d6:	5c9b      	ldrb	r3, [r3, r2]
878037d8:	f003 0320 	and.w	r3, r3, #32
878037dc:	2b00      	cmp	r3, #0
878037de:	d104      	bne.n	878037ea <vsscanf+0x3de>
878037e0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
878037e2:	1e5a      	subs	r2, r3, #1
878037e4:	653a      	str	r2, [r7, #80]	; 0x50
878037e6:	2b00      	cmp	r3, #0
878037e8:	d1e2      	bne.n	878037b0 <vsscanf+0x3a4>
878037ea:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878037ec:	2200      	movs	r2, #0
878037ee:	701a      	strb	r2, [r3, #0]
878037f0:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
878037f2:	3301      	adds	r3, #1
878037f4:	65fb      	str	r3, [r7, #92]	; 0x5c
878037f6:	e1dd      	b.n	87803bb4 <vsscanf+0x7a8>
878037f8:	687b      	ldr	r3, [r7, #4]
878037fa:	3304      	adds	r3, #4
878037fc:	607b      	str	r3, [r7, #4]
878037fe:	687b      	ldr	r3, [r7, #4]
87803800:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803804:	643b      	str	r3, [r7, #64]	; 0x40
87803806:	6e7a      	ldr	r2, [r7, #100]	; 0x64
87803808:	68fb      	ldr	r3, [r7, #12]
8780380a:	1ad2      	subs	r2, r2, r3
8780380c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
8780380e:	601a      	str	r2, [r3, #0]
87803810:	e1d0      	b.n	87803bb4 <vsscanf+0x7a8>
87803812:	2308      	movs	r3, #8
87803814:	657b      	str	r3, [r7, #84]	; 0x54
87803816:	e013      	b.n	87803840 <vsscanf+0x434>
87803818:	2310      	movs	r3, #16
8780381a:	657b      	str	r3, [r7, #84]	; 0x54
8780381c:	e010      	b.n	87803840 <vsscanf+0x434>
8780381e:	2300      	movs	r3, #0
87803820:	657b      	str	r3, [r7, #84]	; 0x54
87803822:	2301      	movs	r3, #1
87803824:	64fb      	str	r3, [r7, #76]	; 0x4c
87803826:	e00a      	b.n	8780383e <vsscanf+0x432>
87803828:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780382a:	1c5a      	adds	r2, r3, #1
8780382c:	667a      	str	r2, [r7, #100]	; 0x64
8780382e:	781b      	ldrb	r3, [r3, #0]
87803830:	2b25      	cmp	r3, #37	; 0x25
87803832:	d001      	beq.n	87803838 <vsscanf+0x42c>
87803834:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803836:	e1c7      	b.n	87803bc8 <vsscanf+0x7bc>
87803838:	e1bc      	b.n	87803bb4 <vsscanf+0x7a8>
8780383a:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
8780383c:	e1c4      	b.n	87803bc8 <vsscanf+0x7bc>
8780383e:	bf00      	nop
87803840:	e002      	b.n	87803848 <vsscanf+0x43c>
87803842:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803844:	3301      	adds	r3, #1
87803846:	667b      	str	r3, [r7, #100]	; 0x64
87803848:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780384a:	781b      	ldrb	r3, [r3, #0]
8780384c:	461a      	mov	r2, r3
8780384e:	f244 03ac 	movw	r3, #16556	; 0x40ac
87803852:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803856:	5c9b      	ldrb	r3, [r3, r2]
87803858:	f003 0320 	and.w	r3, r3, #32
8780385c:	2b00      	cmp	r3, #0
8780385e:	d1f0      	bne.n	87803842 <vsscanf+0x436>
87803860:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803862:	781b      	ldrb	r3, [r3, #0]
87803864:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
87803868:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
8780386a:	2b00      	cmp	r3, #0
8780386c:	d007      	beq.n	8780387e <vsscanf+0x472>
8780386e:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
87803872:	2b2d      	cmp	r3, #45	; 0x2d
87803874:	d103      	bne.n	8780387e <vsscanf+0x472>
87803876:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803878:	785b      	ldrb	r3, [r3, #1]
8780387a:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
8780387e:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
87803882:	2b00      	cmp	r3, #0
87803884:	f000 819f 	beq.w	87803bc6 <vsscanf+0x7ba>
87803888:	6d7b      	ldr	r3, [r7, #84]	; 0x54
8780388a:	2b10      	cmp	r3, #16
8780388c:	d10b      	bne.n	878038a6 <vsscanf+0x49a>
8780388e:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
87803892:	f244 03ac 	movw	r3, #16556	; 0x40ac
87803896:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780389a:	5c9b      	ldrb	r3, [r3, r2]
8780389c:	f003 0344 	and.w	r3, r3, #68	; 0x44
878038a0:	2b00      	cmp	r3, #0
878038a2:	f000 8190 	beq.w	87803bc6 <vsscanf+0x7ba>
878038a6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
878038a8:	2b0a      	cmp	r3, #10
878038aa:	d10b      	bne.n	878038c4 <vsscanf+0x4b8>
878038ac:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
878038b0:	f244 03ac 	movw	r3, #16556	; 0x40ac
878038b4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878038b8:	5c9b      	ldrb	r3, [r3, r2]
878038ba:	f003 0304 	and.w	r3, r3, #4
878038be:	2b00      	cmp	r3, #0
878038c0:	f000 8181 	beq.w	87803bc6 <vsscanf+0x7ba>
878038c4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
878038c6:	2b08      	cmp	r3, #8
878038c8:	d110      	bne.n	878038ec <vsscanf+0x4e0>
878038ca:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
878038ce:	f244 03ac 	movw	r3, #16556	; 0x40ac
878038d2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878038d6:	5c9b      	ldrb	r3, [r3, r2]
878038d8:	f003 0304 	and.w	r3, r3, #4
878038dc:	2b00      	cmp	r3, #0
878038de:	f000 8172 	beq.w	87803bc6 <vsscanf+0x7ba>
878038e2:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
878038e6:	2b37      	cmp	r3, #55	; 0x37
878038e8:	f200 816d 	bhi.w	87803bc6 <vsscanf+0x7ba>
878038ec:	6d7b      	ldr	r3, [r7, #84]	; 0x54
878038ee:	2b00      	cmp	r3, #0
878038f0:	d10b      	bne.n	8780390a <vsscanf+0x4fe>
878038f2:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
878038f6:	f244 03ac 	movw	r3, #16556	; 0x40ac
878038fa:	f2c8 7380 	movt	r3, #34688	; 0x8780
878038fe:	5c9b      	ldrb	r3, [r3, r2]
87803900:	f003 0304 	and.w	r3, r3, #4
87803904:	2b00      	cmp	r3, #0
87803906:	f000 815e 	beq.w	87803bc6 <vsscanf+0x7ba>
8780390a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
8780390c:	3b48      	subs	r3, #72	; 0x48
8780390e:	2b32      	cmp	r3, #50	; 0x32
87803910:	f200 8120 	bhi.w	87803b54 <vsscanf+0x748>
87803914:	a201      	add	r2, pc, #4	; (adr r2, 8780391c <vsscanf+0x510>)
87803916:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
8780391a:	bf00      	nop
8780391c:	878039e9 	strhi	r3, [r0, r9, ror #19]
87803920:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803924:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803928:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780392c:	87803adb 			; <UNDEFINED> instruction: 0x87803adb
87803930:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803934:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803938:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780393c:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803940:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803944:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803948:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780394c:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803950:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803954:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803958:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780395c:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803960:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803964:	87803b31 			; <UNDEFINED> instruction: 0x87803b31
87803968:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780396c:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803970:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803974:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803978:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780397c:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803980:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803984:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803988:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780398c:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803990:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803994:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
87803998:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
8780399c:	87803a3b 			; <UNDEFINED> instruction: 0x87803a3b
878039a0:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039a4:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039a8:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039ac:	87803a8d 	strhi	r3, [r0, sp, lsl #21]
878039b0:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039b4:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039b8:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039bc:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039c0:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039c4:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039c8:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039cc:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039d0:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039d4:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039d8:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039dc:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039e0:	87803b55 			; <UNDEFINED> instruction: 0x87803b55
878039e4:	87803b31 			; <UNDEFINED> instruction: 0x87803b31
878039e8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
878039ea:	2b00      	cmp	r3, #0
878039ec:	d012      	beq.n	87803a14 <vsscanf+0x608>
878039ee:	687b      	ldr	r3, [r7, #4]
878039f0:	3304      	adds	r3, #4
878039f2:	607b      	str	r3, [r7, #4]
878039f4:	687b      	ldr	r3, [r7, #4]
878039f6:	f853 3c04 	ldr.w	r3, [r3, #-4]
878039fa:	63fb      	str	r3, [r7, #60]	; 0x3c
878039fc:	6d7a      	ldr	r2, [r7, #84]	; 0x54
878039fe:	f107 0310 	add.w	r3, r7, #16
87803a02:	4619      	mov	r1, r3
87803a04:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a06:	f7fe fcc3 	bl	87802390 <simple_strtol>
87803a0a:	4603      	mov	r3, r0
87803a0c:	b2da      	uxtb	r2, r3
87803a0e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803a10:	701a      	strb	r2, [r3, #0]
87803a12:	e0c6      	b.n	87803ba2 <vsscanf+0x796>
87803a14:	687b      	ldr	r3, [r7, #4]
87803a16:	3304      	adds	r3, #4
87803a18:	607b      	str	r3, [r7, #4]
87803a1a:	687b      	ldr	r3, [r7, #4]
87803a1c:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a20:	63bb      	str	r3, [r7, #56]	; 0x38
87803a22:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803a24:	f107 0310 	add.w	r3, r7, #16
87803a28:	4619      	mov	r1, r3
87803a2a:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a2c:	f7fe fc2e 	bl	8780228c <simple_strtoul>
87803a30:	4603      	mov	r3, r0
87803a32:	b2da      	uxtb	r2, r3
87803a34:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803a36:	701a      	strb	r2, [r3, #0]
87803a38:	e0b3      	b.n	87803ba2 <vsscanf+0x796>
87803a3a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803a3c:	2b00      	cmp	r3, #0
87803a3e:	d012      	beq.n	87803a66 <vsscanf+0x65a>
87803a40:	687b      	ldr	r3, [r7, #4]
87803a42:	3304      	adds	r3, #4
87803a44:	607b      	str	r3, [r7, #4]
87803a46:	687b      	ldr	r3, [r7, #4]
87803a48:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a4c:	637b      	str	r3, [r7, #52]	; 0x34
87803a4e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803a50:	f107 0310 	add.w	r3, r7, #16
87803a54:	4619      	mov	r1, r3
87803a56:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a58:	f7fe fc9a 	bl	87802390 <simple_strtol>
87803a5c:	4603      	mov	r3, r0
87803a5e:	b29a      	uxth	r2, r3
87803a60:	6b7b      	ldr	r3, [r7, #52]	; 0x34
87803a62:	801a      	strh	r2, [r3, #0]
87803a64:	e09d      	b.n	87803ba2 <vsscanf+0x796>
87803a66:	687b      	ldr	r3, [r7, #4]
87803a68:	3304      	adds	r3, #4
87803a6a:	607b      	str	r3, [r7, #4]
87803a6c:	687b      	ldr	r3, [r7, #4]
87803a6e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a72:	633b      	str	r3, [r7, #48]	; 0x30
87803a74:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803a76:	f107 0310 	add.w	r3, r7, #16
87803a7a:	4619      	mov	r1, r3
87803a7c:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803a7e:	f7fe fc05 	bl	8780228c <simple_strtoul>
87803a82:	4603      	mov	r3, r0
87803a84:	b29a      	uxth	r2, r3
87803a86:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803a88:	801a      	strh	r2, [r3, #0]
87803a8a:	e08a      	b.n	87803ba2 <vsscanf+0x796>
87803a8c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803a8e:	2b00      	cmp	r3, #0
87803a90:	d011      	beq.n	87803ab6 <vsscanf+0x6aa>
87803a92:	687b      	ldr	r3, [r7, #4]
87803a94:	3304      	adds	r3, #4
87803a96:	607b      	str	r3, [r7, #4]
87803a98:	687b      	ldr	r3, [r7, #4]
87803a9a:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803a9e:	62fb      	str	r3, [r7, #44]	; 0x2c
87803aa0:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803aa2:	f107 0310 	add.w	r3, r7, #16
87803aa6:	4619      	mov	r1, r3
87803aa8:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803aaa:	f7fe fc71 	bl	87802390 <simple_strtol>
87803aae:	4602      	mov	r2, r0
87803ab0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803ab2:	601a      	str	r2, [r3, #0]
87803ab4:	e075      	b.n	87803ba2 <vsscanf+0x796>
87803ab6:	687b      	ldr	r3, [r7, #4]
87803ab8:	3304      	adds	r3, #4
87803aba:	607b      	str	r3, [r7, #4]
87803abc:	687b      	ldr	r3, [r7, #4]
87803abe:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803ac2:	62bb      	str	r3, [r7, #40]	; 0x28
87803ac4:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803ac6:	f107 0310 	add.w	r3, r7, #16
87803aca:	4619      	mov	r1, r3
87803acc:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803ace:	f7fe fbdd 	bl	8780228c <simple_strtoul>
87803ad2:	4602      	mov	r2, r0
87803ad4:	6abb      	ldr	r3, [r7, #40]	; 0x28
87803ad6:	601a      	str	r2, [r3, #0]
87803ad8:	e063      	b.n	87803ba2 <vsscanf+0x796>
87803ada:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803adc:	2b00      	cmp	r3, #0
87803ade:	d013      	beq.n	87803b08 <vsscanf+0x6fc>
87803ae0:	687b      	ldr	r3, [r7, #4]
87803ae2:	3304      	adds	r3, #4
87803ae4:	607b      	str	r3, [r7, #4]
87803ae6:	687b      	ldr	r3, [r7, #4]
87803ae8:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803aec:	627b      	str	r3, [r7, #36]	; 0x24
87803aee:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803af0:	f107 0310 	add.w	r3, r7, #16
87803af4:	4619      	mov	r1, r3
87803af6:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803af8:	f7fe fd18 	bl	8780252c <simple_strtoll>
87803afc:	4603      	mov	r3, r0
87803afe:	460c      	mov	r4, r1
87803b00:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87803b02:	e9c2 3400 	strd	r3, r4, [r2]
87803b06:	e04c      	b.n	87803ba2 <vsscanf+0x796>
87803b08:	687b      	ldr	r3, [r7, #4]
87803b0a:	3304      	adds	r3, #4
87803b0c:	607b      	str	r3, [r7, #4]
87803b0e:	687b      	ldr	r3, [r7, #4]
87803b10:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b14:	623b      	str	r3, [r7, #32]
87803b16:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b18:	f107 0310 	add.w	r3, r7, #16
87803b1c:	4619      	mov	r1, r3
87803b1e:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b20:	f7fe fc54 	bl	878023cc <simple_strtoull>
87803b24:	4603      	mov	r3, r0
87803b26:	460c      	mov	r4, r1
87803b28:	6a3a      	ldr	r2, [r7, #32]
87803b2a:	e9c2 3400 	strd	r3, r4, [r2]
87803b2e:	e038      	b.n	87803ba2 <vsscanf+0x796>
87803b30:	687b      	ldr	r3, [r7, #4]
87803b32:	3304      	adds	r3, #4
87803b34:	607b      	str	r3, [r7, #4]
87803b36:	687b      	ldr	r3, [r7, #4]
87803b38:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b3c:	61fb      	str	r3, [r7, #28]
87803b3e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b40:	f107 0310 	add.w	r3, r7, #16
87803b44:	4619      	mov	r1, r3
87803b46:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b48:	f7fe fba0 	bl	8780228c <simple_strtoul>
87803b4c:	4602      	mov	r2, r0
87803b4e:	69fb      	ldr	r3, [r7, #28]
87803b50:	601a      	str	r2, [r3, #0]
87803b52:	e026      	b.n	87803ba2 <vsscanf+0x796>
87803b54:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803b56:	2b00      	cmp	r3, #0
87803b58:	d011      	beq.n	87803b7e <vsscanf+0x772>
87803b5a:	687b      	ldr	r3, [r7, #4]
87803b5c:	3304      	adds	r3, #4
87803b5e:	607b      	str	r3, [r7, #4]
87803b60:	687b      	ldr	r3, [r7, #4]
87803b62:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b66:	61bb      	str	r3, [r7, #24]
87803b68:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b6a:	f107 0310 	add.w	r3, r7, #16
87803b6e:	4619      	mov	r1, r3
87803b70:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b72:	f7fe fc0d 	bl	87802390 <simple_strtol>
87803b76:	4602      	mov	r2, r0
87803b78:	69bb      	ldr	r3, [r7, #24]
87803b7a:	601a      	str	r2, [r3, #0]
87803b7c:	e010      	b.n	87803ba0 <vsscanf+0x794>
87803b7e:	687b      	ldr	r3, [r7, #4]
87803b80:	3304      	adds	r3, #4
87803b82:	607b      	str	r3, [r7, #4]
87803b84:	687b      	ldr	r3, [r7, #4]
87803b86:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b8a:	617b      	str	r3, [r7, #20]
87803b8c:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b8e:	f107 0310 	add.w	r3, r7, #16
87803b92:	4619      	mov	r1, r3
87803b94:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b96:	f7fe fb79 	bl	8780228c <simple_strtoul>
87803b9a:	4602      	mov	r2, r0
87803b9c:	697b      	ldr	r3, [r7, #20]
87803b9e:	601a      	str	r2, [r3, #0]
87803ba0:	bf00      	nop
87803ba2:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803ba4:	3301      	adds	r3, #1
87803ba6:	65fb      	str	r3, [r7, #92]	; 0x5c
87803ba8:	693b      	ldr	r3, [r7, #16]
87803baa:	2b00      	cmp	r3, #0
87803bac:	d100      	bne.n	87803bb0 <vsscanf+0x7a4>
87803bae:	e00a      	b.n	87803bc6 <vsscanf+0x7ba>
87803bb0:	693b      	ldr	r3, [r7, #16]
87803bb2:	667b      	str	r3, [r7, #100]	; 0x64
87803bb4:	68bb      	ldr	r3, [r7, #8]
87803bb6:	781b      	ldrb	r3, [r3, #0]
87803bb8:	2b00      	cmp	r3, #0
87803bba:	d004      	beq.n	87803bc6 <vsscanf+0x7ba>
87803bbc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803bbe:	781b      	ldrb	r3, [r3, #0]
87803bc0:	2b00      	cmp	r3, #0
87803bc2:	f47f ac30 	bne.w	87803426 <vsscanf+0x1a>
87803bc6:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803bc8:	4618      	mov	r0, r3
87803bca:	376c      	adds	r7, #108	; 0x6c
87803bcc:	46bd      	mov	sp, r7
87803bce:	bd90      	pop	{r4, r7, pc}

87803bd0 <sscanf>:
87803bd0:	b40e      	push	{r1, r2, r3}
87803bd2:	b580      	push	{r7, lr}
87803bd4:	b085      	sub	sp, #20
87803bd6:	af00      	add	r7, sp, #0
87803bd8:	6078      	str	r0, [r7, #4]
87803bda:	f107 0320 	add.w	r3, r7, #32
87803bde:	60fb      	str	r3, [r7, #12]
87803be0:	69fb      	ldr	r3, [r7, #28]
87803be2:	68fa      	ldr	r2, [r7, #12]
87803be4:	4619      	mov	r1, r3
87803be6:	6878      	ldr	r0, [r7, #4]
87803be8:	f7ff fc10 	bl	8780340c <vsscanf>
87803bec:	60b8      	str	r0, [r7, #8]
87803bee:	68bb      	ldr	r3, [r7, #8]
87803bf0:	4618      	mov	r0, r3
87803bf2:	3714      	adds	r7, #20
87803bf4:	46bd      	mov	sp, r7
87803bf6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803bfa:	b003      	add	sp, #12
87803bfc:	4770      	bx	lr
87803bfe:	bf00      	nop

87803c00 <__aeabi_uidiv>:
87803c00:	1e4a      	subs	r2, r1, #1
87803c02:	bf08      	it	eq
87803c04:	4770      	bxeq	lr
87803c06:	f0c0 8124 	bcc.w	87803e52 <__aeabi_uidiv+0x252>
87803c0a:	4288      	cmp	r0, r1
87803c0c:	f240 8116 	bls.w	87803e3c <__aeabi_uidiv+0x23c>
87803c10:	4211      	tst	r1, r2
87803c12:	f000 8117 	beq.w	87803e44 <__aeabi_uidiv+0x244>
87803c16:	fab0 f380 	clz	r3, r0
87803c1a:	fab1 f281 	clz	r2, r1
87803c1e:	eba2 0303 	sub.w	r3, r2, r3
87803c22:	f1c3 031f 	rsb	r3, r3, #31
87803c26:	a204      	add	r2, pc, #16	; (adr r2, 87803c38 <__aeabi_uidiv+0x38>)
87803c28:	eb02 1303 	add.w	r3, r2, r3, lsl #4
87803c2c:	f04f 0200 	mov.w	r2, #0
87803c30:	469f      	mov	pc, r3
87803c32:	bf00      	nop
87803c34:	f3af 8000 	nop.w
87803c38:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
87803c3c:	bf00      	nop
87803c3e:	eb42 0202 	adc.w	r2, r2, r2
87803c42:	bf28      	it	cs
87803c44:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
87803c48:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
87803c4c:	bf00      	nop
87803c4e:	eb42 0202 	adc.w	r2, r2, r2
87803c52:	bf28      	it	cs
87803c54:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
87803c58:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
87803c5c:	bf00      	nop
87803c5e:	eb42 0202 	adc.w	r2, r2, r2
87803c62:	bf28      	it	cs
87803c64:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
87803c68:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
87803c6c:	bf00      	nop
87803c6e:	eb42 0202 	adc.w	r2, r2, r2
87803c72:	bf28      	it	cs
87803c74:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
87803c78:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
87803c7c:	bf00      	nop
87803c7e:	eb42 0202 	adc.w	r2, r2, r2
87803c82:	bf28      	it	cs
87803c84:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
87803c88:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
87803c8c:	bf00      	nop
87803c8e:	eb42 0202 	adc.w	r2, r2, r2
87803c92:	bf28      	it	cs
87803c94:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
87803c98:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
87803c9c:	bf00      	nop
87803c9e:	eb42 0202 	adc.w	r2, r2, r2
87803ca2:	bf28      	it	cs
87803ca4:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
87803ca8:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
87803cac:	bf00      	nop
87803cae:	eb42 0202 	adc.w	r2, r2, r2
87803cb2:	bf28      	it	cs
87803cb4:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
87803cb8:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
87803cbc:	bf00      	nop
87803cbe:	eb42 0202 	adc.w	r2, r2, r2
87803cc2:	bf28      	it	cs
87803cc4:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
87803cc8:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
87803ccc:	bf00      	nop
87803cce:	eb42 0202 	adc.w	r2, r2, r2
87803cd2:	bf28      	it	cs
87803cd4:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
87803cd8:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
87803cdc:	bf00      	nop
87803cde:	eb42 0202 	adc.w	r2, r2, r2
87803ce2:	bf28      	it	cs
87803ce4:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
87803ce8:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
87803cec:	bf00      	nop
87803cee:	eb42 0202 	adc.w	r2, r2, r2
87803cf2:	bf28      	it	cs
87803cf4:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
87803cf8:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
87803cfc:	bf00      	nop
87803cfe:	eb42 0202 	adc.w	r2, r2, r2
87803d02:	bf28      	it	cs
87803d04:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
87803d08:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
87803d0c:	bf00      	nop
87803d0e:	eb42 0202 	adc.w	r2, r2, r2
87803d12:	bf28      	it	cs
87803d14:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
87803d18:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
87803d1c:	bf00      	nop
87803d1e:	eb42 0202 	adc.w	r2, r2, r2
87803d22:	bf28      	it	cs
87803d24:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
87803d28:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
87803d2c:	bf00      	nop
87803d2e:	eb42 0202 	adc.w	r2, r2, r2
87803d32:	bf28      	it	cs
87803d34:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
87803d38:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
87803d3c:	bf00      	nop
87803d3e:	eb42 0202 	adc.w	r2, r2, r2
87803d42:	bf28      	it	cs
87803d44:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
87803d48:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
87803d4c:	bf00      	nop
87803d4e:	eb42 0202 	adc.w	r2, r2, r2
87803d52:	bf28      	it	cs
87803d54:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
87803d58:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
87803d5c:	bf00      	nop
87803d5e:	eb42 0202 	adc.w	r2, r2, r2
87803d62:	bf28      	it	cs
87803d64:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
87803d68:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
87803d6c:	bf00      	nop
87803d6e:	eb42 0202 	adc.w	r2, r2, r2
87803d72:	bf28      	it	cs
87803d74:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
87803d78:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
87803d7c:	bf00      	nop
87803d7e:	eb42 0202 	adc.w	r2, r2, r2
87803d82:	bf28      	it	cs
87803d84:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
87803d88:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
87803d8c:	bf00      	nop
87803d8e:	eb42 0202 	adc.w	r2, r2, r2
87803d92:	bf28      	it	cs
87803d94:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
87803d98:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
87803d9c:	bf00      	nop
87803d9e:	eb42 0202 	adc.w	r2, r2, r2
87803da2:	bf28      	it	cs
87803da4:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
87803da8:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
87803dac:	bf00      	nop
87803dae:	eb42 0202 	adc.w	r2, r2, r2
87803db2:	bf28      	it	cs
87803db4:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
87803db8:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
87803dbc:	bf00      	nop
87803dbe:	eb42 0202 	adc.w	r2, r2, r2
87803dc2:	bf28      	it	cs
87803dc4:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
87803dc8:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
87803dcc:	bf00      	nop
87803dce:	eb42 0202 	adc.w	r2, r2, r2
87803dd2:	bf28      	it	cs
87803dd4:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
87803dd8:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
87803ddc:	bf00      	nop
87803dde:	eb42 0202 	adc.w	r2, r2, r2
87803de2:	bf28      	it	cs
87803de4:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
87803de8:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
87803dec:	bf00      	nop
87803dee:	eb42 0202 	adc.w	r2, r2, r2
87803df2:	bf28      	it	cs
87803df4:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
87803df8:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
87803dfc:	bf00      	nop
87803dfe:	eb42 0202 	adc.w	r2, r2, r2
87803e02:	bf28      	it	cs
87803e04:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
87803e08:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
87803e0c:	bf00      	nop
87803e0e:	eb42 0202 	adc.w	r2, r2, r2
87803e12:	bf28      	it	cs
87803e14:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
87803e18:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
87803e1c:	bf00      	nop
87803e1e:	eb42 0202 	adc.w	r2, r2, r2
87803e22:	bf28      	it	cs
87803e24:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
87803e28:	ebb0 0f01 	cmp.w	r0, r1
87803e2c:	bf00      	nop
87803e2e:	eb42 0202 	adc.w	r2, r2, r2
87803e32:	bf28      	it	cs
87803e34:	eba0 0001 	subcs.w	r0, r0, r1
87803e38:	4610      	mov	r0, r2
87803e3a:	4770      	bx	lr
87803e3c:	bf0c      	ite	eq
87803e3e:	2001      	moveq	r0, #1
87803e40:	2000      	movne	r0, #0
87803e42:	4770      	bx	lr
87803e44:	fab1 f281 	clz	r2, r1
87803e48:	f1c2 021f 	rsb	r2, r2, #31
87803e4c:	fa20 f002 	lsr.w	r0, r0, r2
87803e50:	4770      	bx	lr
87803e52:	b108      	cbz	r0, 87803e58 <__aeabi_uidiv+0x258>
87803e54:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
87803e58:	f000 b826 	b.w	87803ea8 <__aeabi_idiv0>

87803e5c <__aeabi_uidivmod>:
87803e5c:	2900      	cmp	r1, #0
87803e5e:	d0f8      	beq.n	87803e52 <__aeabi_uidiv+0x252>
87803e60:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
87803e64:	f7ff fecc 	bl	87803c00 <__aeabi_uidiv>
87803e68:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87803e6c:	fb02 f300 	mul.w	r3, r2, r0
87803e70:	eba1 0103 	sub.w	r1, r1, r3
87803e74:	4770      	bx	lr
87803e76:	bf00      	nop

87803e78 <__aeabi_uldivmod>:
87803e78:	b953      	cbnz	r3, 87803e90 <__aeabi_uldivmod+0x18>
87803e7a:	b94a      	cbnz	r2, 87803e90 <__aeabi_uldivmod+0x18>
87803e7c:	2900      	cmp	r1, #0
87803e7e:	bf08      	it	eq
87803e80:	2800      	cmpeq	r0, #0
87803e82:	bf1c      	itt	ne
87803e84:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
87803e88:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
87803e8c:	f000 b80c 	b.w	87803ea8 <__aeabi_idiv0>
87803e90:	f1ad 0c08 	sub.w	ip, sp, #8
87803e94:	e96d ce04 	strd	ip, lr, [sp, #-16]!
87803e98:	f000 f80c 	bl	87803eb4 <__udivmoddi4>
87803e9c:	f8dd e004 	ldr.w	lr, [sp, #4]
87803ea0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
87803ea4:	b004      	add	sp, #16
87803ea6:	4770      	bx	lr

87803ea8 <__aeabi_idiv0>:
87803ea8:	b502      	push	{r1, lr}
87803eaa:	f04f 0008 	mov.w	r0, #8
87803eae:	f7fd fc07 	bl	878016c0 <raise>
87803eb2:	bd02      	pop	{r1, pc}

87803eb4 <__udivmoddi4>:
87803eb4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
87803eb8:	460d      	mov	r5, r1
87803eba:	429d      	cmp	r5, r3
87803ebc:	4604      	mov	r4, r0
87803ebe:	4610      	mov	r0, r2
87803ec0:	4619      	mov	r1, r3
87803ec2:	bf08      	it	eq
87803ec4:	4284      	cmpeq	r4, r0
87803ec6:	9a07      	ldr	r2, [sp, #28]
87803ec8:	bf3c      	itt	cc
87803eca:	2000      	movcc	r0, #0
87803ecc:	2100      	movcc	r1, #0
87803ece:	d36a      	bcc.n	87803fa6 <__udivmoddi4+0xf2>
87803ed0:	fab1 f681 	clz	r6, r1
87803ed4:	2900      	cmp	r1, #0
87803ed6:	d06f      	beq.n	87803fb8 <__udivmoddi4+0x104>
87803ed8:	fab5 f385 	clz	r3, r5
87803edc:	2d00      	cmp	r5, #0
87803ede:	d067      	beq.n	87803fb0 <__udivmoddi4+0xfc>
87803ee0:	1af3      	subs	r3, r6, r3
87803ee2:	f1a3 0c20 	sub.w	ip, r3, #32
87803ee6:	fa01 f703 	lsl.w	r7, r1, r3
87803eea:	fa00 fe0c 	lsl.w	lr, r0, ip
87803eee:	f1c3 0820 	rsb	r8, r3, #32
87803ef2:	fa20 f108 	lsr.w	r1, r0, r8
87803ef6:	fa00 f603 	lsl.w	r6, r0, r3
87803efa:	ea47 070e 	orr.w	r7, r7, lr
87803efe:	469e      	mov	lr, r3
87803f00:	430f      	orrs	r7, r1
87803f02:	42bd      	cmp	r5, r7
87803f04:	bf08      	it	eq
87803f06:	42b4      	cmpeq	r4, r6
87803f08:	bf3c      	itt	cc
87803f0a:	2000      	movcc	r0, #0
87803f0c:	2100      	movcc	r1, #0
87803f0e:	d30c      	bcc.n	87803f2a <__udivmoddi4+0x76>
87803f10:	f04f 0901 	mov.w	r9, #1
87803f14:	1ba4      	subs	r4, r4, r6
87803f16:	fa29 f808 	lsr.w	r8, r9, r8
87803f1a:	fa09 f10c 	lsl.w	r1, r9, ip
87803f1e:	fa09 f003 	lsl.w	r0, r9, r3
87803f22:	ea41 0108 	orr.w	r1, r1, r8
87803f26:	eb65 0507 	sbc.w	r5, r5, r7
87803f2a:	2b00      	cmp	r3, #0
87803f2c:	d03b      	beq.n	87803fa6 <__udivmoddi4+0xf2>
87803f2e:	087f      	lsrs	r7, r7, #1
87803f30:	ea4f 0636 	mov.w	r6, r6, rrx
87803f34:	e009      	b.n	87803f4a <__udivmoddi4+0x96>
87803f36:	1ba4      	subs	r4, r4, r6
87803f38:	eb65 0507 	sbc.w	r5, r5, r7
87803f3c:	1924      	adds	r4, r4, r4
87803f3e:	416d      	adcs	r5, r5
87803f40:	3401      	adds	r4, #1
87803f42:	f145 0500 	adc.w	r5, r5, #0
87803f46:	3b01      	subs	r3, #1
87803f48:	d007      	beq.n	87803f5a <__udivmoddi4+0xa6>
87803f4a:	42bd      	cmp	r5, r7
87803f4c:	bf08      	it	eq
87803f4e:	42b4      	cmpeq	r4, r6
87803f50:	d2f1      	bcs.n	87803f36 <__udivmoddi4+0x82>
87803f52:	1924      	adds	r4, r4, r4
87803f54:	416d      	adcs	r5, r5
87803f56:	3b01      	subs	r3, #1
87803f58:	d1f7      	bne.n	87803f4a <__udivmoddi4+0x96>
87803f5a:	f1ce 0720 	rsb	r7, lr, #32
87803f5e:	fa24 f60e 	lsr.w	r6, r4, lr
87803f62:	fa05 f707 	lsl.w	r7, r5, r7
87803f66:	f1ae 0320 	sub.w	r3, lr, #32
87803f6a:	fa25 f303 	lsr.w	r3, r5, r3
87803f6e:	fa25 fc0e 	lsr.w	ip, r5, lr
87803f72:	1900      	adds	r0, r0, r4
87803f74:	ea46 0607 	orr.w	r6, r6, r7
87803f78:	ea46 0403 	orr.w	r4, r6, r3
87803f7c:	4169      	adcs	r1, r5
87803f7e:	4665      	mov	r5, ip
87803f80:	f1ae 0c20 	sub.w	ip, lr, #32
87803f84:	fa05 f70e 	lsl.w	r7, r5, lr
87803f88:	fa04 fc0c 	lsl.w	ip, r4, ip
87803f8c:	fa04 f60e 	lsl.w	r6, r4, lr
87803f90:	f1ce 0320 	rsb	r3, lr, #32
87803f94:	fa24 f303 	lsr.w	r3, r4, r3
87803f98:	ea47 070c 	orr.w	r7, r7, ip
87803f9c:	1b80      	subs	r0, r0, r6
87803f9e:	ea47 0703 	orr.w	r7, r7, r3
87803fa2:	eb61 0107 	sbc.w	r1, r1, r7
87803fa6:	b10a      	cbz	r2, 87803fac <__udivmoddi4+0xf8>
87803fa8:	e9c2 4500 	strd	r4, r5, [r2]
87803fac:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
87803fb0:	fab4 f384 	clz	r3, r4
87803fb4:	3320      	adds	r3, #32
87803fb6:	e793      	b.n	87803ee0 <__udivmoddi4+0x2c>
87803fb8:	fab0 f380 	clz	r3, r0
87803fbc:	f103 0620 	add.w	r6, r3, #32
87803fc0:	fab5 f385 	clz	r3, r5
87803fc4:	2d00      	cmp	r5, #0
87803fc6:	d18b      	bne.n	87803ee0 <__udivmoddi4+0x2c>
87803fc8:	e7f2      	b.n	87803fb0 <__udivmoddi4+0xfc>
87803fca:	bf00      	nop
87803fcc:	0000      	movs	r0, r0
	...

87803fd0 <__main_from_arm>:
87803fd0:	e51ff004 	ldr	pc, [pc, #-4]	; 87803fd4 <__main_from_arm+0x4>
87803fd4:	87803fd9 			; <UNDEFINED> instruction: 0x87803fd9

Disassembly of section .text.startup:

87803fd8 <main>:
87803fd8:	b510      	push	{r4, lr}
87803fda:	b082      	sub	sp, #8
87803fdc:	2400      	movs	r4, #0
87803fde:	f7fc fd81 	bl	87800ae4 <int_init>
87803fe2:	f7fc f8f1 	bl	878001c8 <imx6u_clkinit>
87803fe6:	f7fc fa73 	bl	878004d0 <delay_init>
87803fea:	f7fc f8b5 	bl	87800158 <clk_enable>
87803fee:	f7fc fa05 	bl	878003fc <led_init>
87803ff2:	f7fc fb4b 	bl	8780068c <beep_init>
87803ff6:	f7fd f8e5 	bl	878011c4 <uart_init>
87803ffa:	f244 0038 	movw	r0, #16440	; 0x4038
87803ffe:	f084 0401 	eor.w	r4, r4, #1
87804002:	f2c8 7080 	movt	r0, #34688	; 0x8780
87804006:	f7fd fd21 	bl	87801a4c <printf>
8780400a:	f244 0064 	movw	r0, #16484	; 0x4064
8780400e:	aa01      	add	r2, sp, #4
87804010:	4669      	mov	r1, sp
87804012:	f2c8 7080 	movt	r0, #34688	; 0x8780
87804016:	f7fd fd4d 	bl	87801ab4 <scanf>
8780401a:	9b00      	ldr	r3, [sp, #0]
8780401c:	f244 006c 	movw	r0, #16492	; 0x406c
87804020:	9a01      	ldr	r2, [sp, #4]
87804022:	f2c8 7080 	movt	r0, #34688	; 0x8780
87804026:	4619      	mov	r1, r3
87804028:	4413      	add	r3, r2
8780402a:	f7fd fd0f 	bl	87801a4c <printf>
8780402e:	4621      	mov	r1, r4
87804030:	2000      	movs	r0, #0
87804032:	f7fc fa1f 	bl	87800474 <led_switch>
87804036:	e7e0      	b.n	87803ffa <main+0x22>

Disassembly of section .rodata:

87804038 <.LC0-0x50>:
87804038:	e593bee8 	ldr	fp, [r3, #3816]	; 0xee8
8780403c:	b8e4a585 	stmialt	r4!, {r0, r2, r7, r8, sl, sp, pc}^
87804040:	aab8e4a4 	bge	8663d2d8 <shift+0x8663d2d8>
87804044:	e6b495e6 	ldrt	r9, [r4], r6, ror #11
87804048:	bcefb095 	stcllt	0, cr11, [pc], #596	; 878042a4 <irqTable+0xf4>
8780404c:	bfbde48c 	svclt	0x00bde48c
87804050:	e7a894e7 	str	r9, [r8, r7, ror #9]!
87804054:	a0e6baa9 	rscge	fp, r6, r9, lsr #21
87804058:	949ae9bc 	ldrls	lr, [sl], #2492	; 0x9bc
8780405c:	3a80bce5 	bcc	858333f8 <shift+0x858333f8>
87804060:	00000000 	andeq	r0, r0, r0
87804064:	25206425 	strcs	r6, [r0, #-1061]!	; 0x425
87804068:	00000064 	andeq	r0, r0, r4, rrx
8780406c:	95e60a0d 	strbls	r0, [r6, #2573]!	; 0xa0d
87804070:	ae8de6b0 	mcrge	6, 4, lr, cr13, cr0, {5}
87804074:	2b206425 	blcs	8801d110 <__bss_end+0x818258>
87804078:	20642520 	rsbcs	r2, r4, r0, lsr #10
8780407c:	6425203d 	strtvs	r2, [r5], #-61	; 0x3d
87804080:	0a0d0a0d 	beq	87b468bc <__bss_end+0x341a04>
87804084:	00000000 	andeq	r0, r0, r0

87804088 <.LC0>:
87804088:	4c554e3c 	mrrcmi	14, 3, r4, r5, cr12
8780408c:	00003e4c 	andeq	r3, r0, ip, asr #28

87804090 <digits.7616>:
87804090:	33323130 	teqcc	r2, #48, 2
87804094:	37363534 			; <UNDEFINED> instruction: 0x37363534
87804098:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
8780409c:	46454443 	strbmi	r4, [r5], -r3, asr #8

Disassembly of section .ARM.exidx:

878040a0 <.ARM.exidx>:
878040a0:	7ffffe14 	svcvc	0x00fffe14
878040a4:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

878040a8 <release.7465>:
878040a8:	00000001 	andeq	r0, r0, r1

878040ac <_ctype>:
878040ac:	08080808 	stmdaeq	r8, {r3, fp}
878040b0:	08080808 	stmdaeq	r8, {r3, fp}
878040b4:	28282808 	stmdacs	r8!, {r3, fp, sp}
878040b8:	08082828 	stmdaeq	r8, {r3, r5, fp, sp}
878040bc:	08080808 	stmdaeq	r8, {r3, fp}
878040c0:	08080808 	stmdaeq	r8, {r3, fp}
878040c4:	08080808 	stmdaeq	r8, {r3, fp}
878040c8:	08080808 	stmdaeq	r8, {r3, fp}
878040cc:	101010a0 	andsne	r1, r0, r0, lsr #1
878040d0:	10101010 	andsne	r1, r0, r0, lsl r0
878040d4:	10101010 	andsne	r1, r0, r0, lsl r0
878040d8:	10101010 	andsne	r1, r0, r0, lsl r0
878040dc:	04040404 	streq	r0, [r4], #-1028	; 0x404
878040e0:	04040404 	streq	r0, [r4], #-1028	; 0x404
878040e4:	10100404 	andsne	r0, r0, r4, lsl #8
878040e8:	10101010 	andsne	r1, r0, r0, lsl r0
878040ec:	41414110 	cmpmi	r1, r0, lsl r1
878040f0:	01414141 	cmpeq	r1, r1, asr #2
878040f4:	01010101 	tsteq	r1, r1, lsl #2
878040f8:	01010101 	tsteq	r1, r1, lsl #2
878040fc:	01010101 	tsteq	r1, r1, lsl #2
87804100:	01010101 	tsteq	r1, r1, lsl #2
87804104:	10010101 	andne	r0, r1, r1, lsl #2
87804108:	10101010 	andsne	r1, r0, r0, lsl r0
8780410c:	42424210 	submi	r4, r2, #16, 4
87804110:	02424242 	subeq	r4, r2, #536870916	; 0x20000004
87804114:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
87804118:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780411c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
87804120:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
87804124:	10020202 	andne	r0, r2, r2, lsl #4
87804128:	08101010 	ldmdaeq	r0, {r4, ip}
	...
8780414c:	101010a0 	andsne	r1, r0, r0, lsr #1
87804150:	10101010 	andsne	r1, r0, r0, lsl r0
87804154:	10101010 	andsne	r1, r0, r0, lsl r0
87804158:	10101010 	andsne	r1, r0, r0, lsl r0
8780415c:	10101010 	andsne	r1, r0, r0, lsl r0
87804160:	10101010 	andsne	r1, r0, r0, lsl r0
87804164:	10101010 	andsne	r1, r0, r0, lsl r0
87804168:	10101010 	andsne	r1, r0, r0, lsl r0
8780416c:	01010101 	tsteq	r1, r1, lsl #2
87804170:	01010101 	tsteq	r1, r1, lsl #2
87804174:	01010101 	tsteq	r1, r1, lsl #2
87804178:	01010101 	tsteq	r1, r1, lsl #2
8780417c:	01010101 	tsteq	r1, r1, lsl #2
87804180:	10010101 	andne	r0, r1, r1, lsl #2
87804184:	01010101 	tsteq	r1, r1, lsl #2
87804188:	02010101 	andeq	r0, r1, #1073741824	; 0x40000000
8780418c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
87804190:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
87804194:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
87804198:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780419c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
878041a0:	10020202 	andne	r0, r2, r2, lsl #4
878041a4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
878041a8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000

Disassembly of section .bss:

878041ac <irqNesting>:
878041ac:	00000000 	andeq	r0, r0, r0

878041b0 <irqTable>:
	...

878046b0 <state.7483>:
	...

878046b1 <state.7434>:
	...

878046b2 <state.7499>:
	...

878046b4 <g_pcOutBuf>:
	...

87804ab4 <g_pcInBuf>:
	...

87804eb4 <___strtok>:
87804eb4:	00000000 	andeq	r0, r0, r0

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
  18:	87803c01 	strhi	r3, [r0, r1, lsl #24]
  1c:	0000025c 	andeq	r0, r0, ip, asr r2
  20:	0000000c 	andeq	r0, r0, ip
  24:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  28:	7c020001 	stcvc	0, cr0, [r2], {1}
  2c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  30:	00000018 	andeq	r0, r0, r8, lsl r0
  34:	00000020 	andeq	r0, r0, r0, lsr #32
  38:	87803e78 			; <UNDEFINED> instruction: 0x87803e78
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
  64:	87803eb4 			; <UNDEFINED> instruction: 0x87803eb4
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
  d4:	87803c00 	strhi	r3, [r0, r0, lsl #24]
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
 1d4:	87803e78 			; <UNDEFINED> instruction: 0x87803e78
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
 2b8:	803ea802 	eorshi	sl, lr, r2, lsl #16
 2bc:	0ab00387 	beq	fec010e0 <__bss_end+0x773fc228>
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
 3a0:	87803eb4 			; <UNDEFINED> instruction: 0x87803eb4
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
  10:	87803c00 	strhi	r3, [r0, r0, lsl #24]
  14:	87803e76 			; <UNDEFINED> instruction: 0x87803e76
  18:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; ffffff64 <__bss_end+0x787fb0ac>
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
  a8:	6c2f3130 	stfvss	f3, [pc], #-192	; fffffff0 <__bss_end+0x787fb138>
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
  f8:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; ffffff34 <__bss_end+0x787fb07c>
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
 1cc:	78000001 	stmdavc	r0, {r0}
 1d0:	a887803e 	stmge	r7, {r1, r2, r3, r4, r5, pc}
 1d4:	2f87803e 	svccs	0x0087803e
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
 388:	3ea80000 	cdpcc	0, 10, cr0, cr8, cr0, {0}
 38c:	3eb48780 	cdpcc	7, 11, cr8, cr4, cr0, {4}
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
 550:	3eb40000 	cdpcc	0, 11, cr0, cr4, cr0, {0}
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
 5f0:	87803eb4 			; <UNDEFINED> instruction: 0x87803eb4
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
  10:	87803c00 	strhi	r3, [r0, r0, lsl #24]
  14:	00000276 	andeq	r0, r0, r6, ror r2
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01bf0002 			; <UNDEFINED> instruction: 0x01bf0002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	87803e78 			; <UNDEFINED> instruction: 0x87803e78
  34:	00000030 	andeq	r0, r0, r0, lsr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	037a0002 	cmneq	sl, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	87803ea8 	strhi	r3, [r0, r8, lsr #29]
  54:	0000000c 	andeq	r0, r0, ip
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	05390002 	ldreq	r0, [r9, #-2]!
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	87803eb4 			; <UNDEFINED> instruction: 0x87803eb4
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
  3c:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; fffffe78 <__bss_end+0x787fafc0>
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

