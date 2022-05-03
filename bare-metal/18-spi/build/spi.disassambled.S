
build/spi.elf:     file format elf32-littlearm


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
87800080:	ea001b5e 	b	87806e00 <__main_from_arm>

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
87800134:	87800d4d 	strhi	r0, [r0, sp, asr #26]
87800138:	00001e41 	andeq	r1, r0, r1, asr #28
8780013c:	61656100 	cmnvs	r5, r0, lsl #2
87800140:	01006962 	tsteq	r0, r2, ror #18
87800144:	00000014 	andeq	r0, r0, r4, lsl r0
87800148:	412d3705 	teqmi	sp, r5, lsl #14
8780014c:	070a0600 	streq	r0, [sl, -r0, lsl #12]
87800150:	09010841 	stmdbeq	r1, {r0, r6, fp}
87800154:	00040a02 	andeq	r0, r4, r2, lsl #20

87800158 <integer_display>:
87800158:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
8780015c:	f64c 041c 	movw	r4, #51228	; 0xc81c
87800160:	f2c8 7480 	movt	r4, #34688	; 0x8780
87800164:	fa1f f882 	uxth.w	r8, r2
87800168:	b0b5      	sub	sp, #212	; 0xd4
8780016a:	69e4      	ldr	r4, [r4, #28]
8780016c:	eb08 0e01 	add.w	lr, r8, r1
87800170:	4617      	mov	r7, r2
87800172:	f100 0232 	add.w	r2, r0, #50	; 0x32
87800176:	4699      	mov	r9, r3
87800178:	b292      	uxth	r2, r2
8780017a:	fa1f f38e 	uxth.w	r3, lr
8780017e:	9400      	str	r4, [sp, #0]
87800180:	ac02      	add	r4, sp, #8
87800182:	460e      	mov	r6, r1
87800184:	4605      	mov	r5, r0
87800186:	f004 febd 	bl	87804f04 <lcd_fill>
8780018a:	2100      	movs	r1, #0
8780018c:	22c8      	movs	r2, #200	; 0xc8
8780018e:	4620      	mov	r0, r4
87800190:	f001 ffde 	bl	87802150 <memset>
87800194:	f1b9 0f00 	cmp.w	r9, #0
87800198:	4620      	mov	r0, r4
8780019a:	bfb7      	itett	lt
8780019c:	f247 112c 	movwlt	r1, #28972	; 0x712c
878001a0:	f247 1134 	movwge	r1, #28980	; 0x7134
878001a4:	f1c9 0200 	rsblt	r2, r9, #0
878001a8:	f2c8 7180 	movtlt	r1, #34688	; 0x8780
878001ac:	bfa4      	itt	ge
878001ae:	464a      	movge	r2, r9
878001b0:	f2c8 7180 	movtge	r1, #34688	; 0x8780
878001b4:	f003 f9c2 	bl	8780353c <sprintf>
878001b8:	9401      	str	r4, [sp, #4]
878001ba:	4643      	mov	r3, r8
878001bc:	9700      	str	r7, [sp, #0]
878001be:	4631      	mov	r1, r6
878001c0:	4628      	mov	r0, r5
878001c2:	2232      	movs	r2, #50	; 0x32
878001c4:	f005 fa5e 	bl	87805684 <lcd_show_string>
878001c8:	b035      	add	sp, #212	; 0xd4
878001ca:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
878001ce:	bf00      	nop

878001d0 <decimals_display>:
878001d0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
878001d4:	1e1d      	subs	r5, r3, #0
878001d6:	b0b5      	sub	sp, #212	; 0xd4
878001d8:	4607      	mov	r7, r0
878001da:	ae02      	add	r6, sp, #8
878001dc:	4688      	mov	r8, r1
878001de:	4691      	mov	r9, r2
878001e0:	4630      	mov	r0, r6
878001e2:	f04f 02c8 	mov.w	r2, #200	; 0xc8
878001e6:	f04f 0100 	mov.w	r1, #0
878001ea:	db36      	blt.n	8780025a <decimals_display+0x8a>
878001ec:	f001 ffb0 	bl	87802150 <memset>
878001f0:	f248 521f 	movw	r2, #34079	; 0x851f
878001f4:	17ec      	asrs	r4, r5, #31
878001f6:	f2c5 12eb 	movt	r2, #20971	; 0x51eb
878001fa:	fb85 2302 	smull	r2, r3, r5, r2
878001fe:	f247 1138 	movw	r1, #28984	; 0x7138
87800202:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800206:	4630      	mov	r0, r6
87800208:	ebc4 1363 	rsb	r3, r4, r3, asr #5
8780020c:	011c      	lsls	r4, r3, #4
8780020e:	461a      	mov	r2, r3
87800210:	eb04 0483 	add.w	r4, r4, r3, lsl #2
87800214:	eb04 0384 	add.w	r3, r4, r4, lsl #2
87800218:	1aeb      	subs	r3, r5, r3
8780021a:	f003 f98f 	bl	8780353c <sprintf>
8780021e:	f64c 031c 	movw	r3, #51228	; 0xc81c
87800222:	fa1f f489 	uxth.w	r4, r9
87800226:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780022a:	69d8      	ldr	r0, [r3, #28]
8780022c:	f107 023c 	add.w	r2, r7, #60	; 0x3c
87800230:	eb04 0308 	add.w	r3, r4, r8
87800234:	4641      	mov	r1, r8
87800236:	b29b      	uxth	r3, r3
87800238:	b292      	uxth	r2, r2
8780023a:	9000      	str	r0, [sp, #0]
8780023c:	4638      	mov	r0, r7
8780023e:	f004 fe61 	bl	87804f04 <lcd_fill>
87800242:	4623      	mov	r3, r4
87800244:	9601      	str	r6, [sp, #4]
87800246:	f8cd 9000 	str.w	r9, [sp]
8780024a:	4641      	mov	r1, r8
8780024c:	4638      	mov	r0, r7
8780024e:	223c      	movs	r2, #60	; 0x3c
87800250:	f005 fa18 	bl	87805684 <lcd_show_string>
87800254:	b035      	add	sp, #212	; 0xd4
87800256:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
8780025a:	f001 ff79 	bl	87802150 <memset>
8780025e:	f248 521f 	movw	r2, #34079	; 0x851f
87800262:	426d      	negs	r5, r5
87800264:	f2c5 12eb 	movt	r2, #20971	; 0x51eb
87800268:	17ec      	asrs	r4, r5, #31
8780026a:	fb85 2302 	smull	r2, r3, r5, r2
8780026e:	f247 1130 	movw	r1, #28976	; 0x7130
87800272:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800276:	4630      	mov	r0, r6
87800278:	ebc4 1e63 	rsb	lr, r4, r3, asr #5
8780027c:	ea4f 140e 	mov.w	r4, lr, lsl #4
87800280:	4672      	mov	r2, lr
87800282:	eb04 048e 	add.w	r4, r4, lr, lsl #2
87800286:	eb04 0384 	add.w	r3, r4, r4, lsl #2
8780028a:	1aeb      	subs	r3, r5, r3
8780028c:	f003 f956 	bl	8780353c <sprintf>
87800290:	e7c5      	b.n	8780021e <decimals_display+0x4e>
87800292:	bf00      	nop

87800294 <imx6ul_hardfpu_enable>:
87800294:	ee11 3f50 	mrc	15, 0, r3, cr1, cr0, {2}
87800298:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
8780029c:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
878002a0:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
878002a4:	ee01 3f50 	mcr	15, 0, r3, cr1, cr0, {2}
878002a8:	eef8 3a10 	vmrs	r3, fpexc
878002ac:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
878002b0:	eee8 3a10 	vmsr	fpexc, r3
878002b4:	4770      	bx	lr
878002b6:	bf00      	nop

878002b8 <clk_enable>:
878002b8:	b480      	push	{r7}
878002ba:	af00      	add	r7, sp, #0
878002bc:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002c0:	f2c0 230c 	movt	r3, #524	; 0x20c
878002c4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878002c8:	669a      	str	r2, [r3, #104]	; 0x68
878002ca:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002ce:	f2c0 230c 	movt	r3, #524	; 0x20c
878002d2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878002d6:	66da      	str	r2, [r3, #108]	; 0x6c
878002d8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002dc:	f2c0 230c 	movt	r3, #524	; 0x20c
878002e0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878002e4:	671a      	str	r2, [r3, #112]	; 0x70
878002e6:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002ea:	f2c0 230c 	movt	r3, #524	; 0x20c
878002ee:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
878002f2:	675a      	str	r2, [r3, #116]	; 0x74
878002f4:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878002f8:	f2c0 230c 	movt	r3, #524	; 0x20c
878002fc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800300:	679a      	str	r2, [r3, #120]	; 0x78
87800302:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800306:	f2c0 230c 	movt	r3, #524	; 0x20c
8780030a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780030e:	67da      	str	r2, [r3, #124]	; 0x7c
87800310:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800314:	f2c0 230c 	movt	r3, #524	; 0x20c
87800318:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
8780031c:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
87800320:	46bd      	mov	sp, r7
87800322:	f85d 7b04 	ldr.w	r7, [sp], #4
87800326:	4770      	bx	lr

87800328 <imx6u_clkinit>:
87800328:	b480      	push	{r7}
8780032a:	b083      	sub	sp, #12
8780032c:	af00      	add	r7, sp, #0
8780032e:	2300      	movs	r3, #0
87800330:	607b      	str	r3, [r7, #4]
87800332:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800336:	f2c0 230c 	movt	r3, #524	; 0x20c
8780033a:	68db      	ldr	r3, [r3, #12]
8780033c:	089b      	lsrs	r3, r3, #2
8780033e:	f003 0301 	and.w	r3, r3, #1
87800342:	2b00      	cmp	r3, #0
87800344:	d117      	bne.n	87800376 <imx6u_clkinit+0x4e>
87800346:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780034a:	f2c0 230c 	movt	r3, #524	; 0x20c
8780034e:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800352:	f2c0 220c 	movt	r2, #524	; 0x20c
87800356:	68d2      	ldr	r2, [r2, #12]
87800358:	f422 7280 	bic.w	r2, r2, #256	; 0x100
8780035c:	60da      	str	r2, [r3, #12]
8780035e:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800362:	f2c0 230c 	movt	r3, #524	; 0x20c
87800366:	f44f 4280 	mov.w	r2, #16384	; 0x4000
8780036a:	f2c0 220c 	movt	r2, #524	; 0x20c
8780036e:	68d2      	ldr	r2, [r2, #12]
87800370:	f042 0204 	orr.w	r2, r2, #4
87800374:	60da      	str	r2, [r3, #12]
87800376:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780037a:	f2c0 230c 	movt	r3, #524	; 0x20c
8780037e:	f242 0242 	movw	r2, #8258	; 0x2042
87800382:	601a      	str	r2, [r3, #0]
87800384:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800388:	f2c0 230c 	movt	r3, #524	; 0x20c
8780038c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800390:	f2c0 220c 	movt	r2, #524	; 0x20c
87800394:	68d2      	ldr	r2, [r2, #12]
87800396:	f022 0204 	bic.w	r2, r2, #4
8780039a:	60da      	str	r2, [r3, #12]
8780039c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878003a0:	f2c0 230c 	movt	r3, #524	; 0x20c
878003a4:	2200      	movs	r2, #0
878003a6:	611a      	str	r2, [r3, #16]
878003a8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003ac:	f2c0 230c 	movt	r3, #524	; 0x20c
878003b0:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
878003b4:	607b      	str	r3, [r7, #4]
878003b6:	687b      	ldr	r3, [r7, #4]
878003b8:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
878003bc:	607b      	str	r3, [r7, #4]
878003be:	687b      	ldr	r3, [r7, #4]
878003c0:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
878003c4:	607b      	str	r3, [r7, #4]
878003c6:	687b      	ldr	r3, [r7, #4]
878003c8:	f443 13c0 	orr.w	r3, r3, #1572864	; 0x180000
878003cc:	607b      	str	r3, [r7, #4]
878003ce:	687b      	ldr	r3, [r7, #4]
878003d0:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
878003d4:	607b      	str	r3, [r7, #4]
878003d6:	687b      	ldr	r3, [r7, #4]
878003d8:	f043 031b 	orr.w	r3, r3, #27
878003dc:	607b      	str	r3, [r7, #4]
878003de:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003e2:	f2c0 230c 	movt	r3, #524	; 0x20c
878003e6:	687a      	ldr	r2, [r7, #4]
878003e8:	f8c3 2100 	str.w	r2, [r3, #256]	; 0x100
878003ec:	2300      	movs	r3, #0
878003ee:	607b      	str	r3, [r7, #4]
878003f0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878003f4:	f2c0 230c 	movt	r3, #524	; 0x20c
878003f8:	f8d3 30f0 	ldr.w	r3, [r3, #240]	; 0xf0
878003fc:	607b      	str	r3, [r7, #4]
878003fe:	687b      	ldr	r3, [r7, #4]
87800400:	f003 33c0 	and.w	r3, r3, #3233857728	; 0xc0c0c0c0
87800404:	607b      	str	r3, [r7, #4]
87800406:	687b      	ldr	r3, [r7, #4]
87800408:	f043 5398 	orr.w	r3, r3, #318767104	; 0x13000000
8780040c:	607b      	str	r3, [r7, #4]
8780040e:	687b      	ldr	r3, [r7, #4]
87800410:	f443 1388 	orr.w	r3, r3, #1114112	; 0x110000
87800414:	607b      	str	r3, [r7, #4]
87800416:	687b      	ldr	r3, [r7, #4]
87800418:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
8780041c:	607b      	str	r3, [r7, #4]
8780041e:	687b      	ldr	r3, [r7, #4]
87800420:	f043 030c 	orr.w	r3, r3, #12
87800424:	607b      	str	r3, [r7, #4]
87800426:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780042a:	f2c0 230c 	movt	r3, #524	; 0x20c
8780042e:	687a      	ldr	r2, [r7, #4]
87800430:	f8c3 20f0 	str.w	r2, [r3, #240]	; 0xf0
87800434:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800438:	f2c0 230c 	movt	r3, #524	; 0x20c
8780043c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800440:	f2c0 220c 	movt	r2, #524	; 0x20c
87800444:	6992      	ldr	r2, [r2, #24]
87800446:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
8780044a:	619a      	str	r2, [r3, #24]
8780044c:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800450:	f2c0 230c 	movt	r3, #524	; 0x20c
87800454:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800458:	f2c0 220c 	movt	r2, #524	; 0x20c
8780045c:	6992      	ldr	r2, [r2, #24]
8780045e:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
87800462:	619a      	str	r2, [r3, #24]
87800464:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800468:	f2c0 230c 	movt	r3, #524	; 0x20c
8780046c:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87800470:	f2c0 220c 	movt	r2, #524	; 0x20c
87800474:	6952      	ldr	r2, [r2, #20]
87800476:	f022 7200 	bic.w	r2, r2, #33554432	; 0x2000000
8780047a:	615a      	str	r2, [r3, #20]
8780047c:	bf00      	nop
8780047e:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800482:	f2c0 230c 	movt	r3, #524	; 0x20c
87800486:	6c9b      	ldr	r3, [r3, #72]	; 0x48
87800488:	f003 0320 	and.w	r3, r3, #32
8780048c:	2b00      	cmp	r3, #0
8780048e:	d1f6      	bne.n	8780047e <imx6u_clkinit+0x156>
87800490:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87800494:	f2c0 230c 	movt	r3, #524	; 0x20c
87800498:	f44f 4280 	mov.w	r2, #16384	; 0x4000
8780049c:	f2c0 220c 	movt	r2, #524	; 0x20c
878004a0:	6952      	ldr	r2, [r2, #20]
878004a2:	f422 7240 	bic.w	r2, r2, #768	; 0x300
878004a6:	615a      	str	r2, [r3, #20]
878004a8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878004ac:	f2c0 230c 	movt	r3, #524	; 0x20c
878004b0:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878004b4:	f2c0 220c 	movt	r2, #524	; 0x20c
878004b8:	6952      	ldr	r2, [r2, #20]
878004ba:	f442 7280 	orr.w	r2, r2, #256	; 0x100
878004be:	615a      	str	r2, [r3, #20]
878004c0:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878004c4:	f2c0 230c 	movt	r3, #524	; 0x20c
878004c8:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878004cc:	f2c0 220c 	movt	r2, #524	; 0x20c
878004d0:	69d2      	ldr	r2, [r2, #28]
878004d2:	f022 0240 	bic.w	r2, r2, #64	; 0x40
878004d6:	61da      	str	r2, [r3, #28]
878004d8:	f44f 4380 	mov.w	r3, #16384	; 0x4000
878004dc:	f2c0 230c 	movt	r3, #524	; 0x20c
878004e0:	f44f 4280 	mov.w	r2, #16384	; 0x4000
878004e4:	f2c0 220c 	movt	r2, #524	; 0x20c
878004e8:	69d2      	ldr	r2, [r2, #28]
878004ea:	f022 0207 	bic.w	r2, r2, #7
878004ee:	61da      	str	r2, [r3, #28]
878004f0:	370c      	adds	r7, #12
878004f2:	46bd      	mov	sp, r7
878004f4:	f85d 7b04 	ldr.w	r7, [sp], #4
878004f8:	4770      	bx	lr
878004fa:	bf00      	nop

878004fc <IOMUXC_SetPinMux>:
878004fc:	b480      	push	{r7}
878004fe:	b085      	sub	sp, #20
87800500:	af00      	add	r7, sp, #0
87800502:	60f8      	str	r0, [r7, #12]
87800504:	60b9      	str	r1, [r7, #8]
87800506:	607a      	str	r2, [r7, #4]
87800508:	603b      	str	r3, [r7, #0]
8780050a:	68fb      	ldr	r3, [r7, #12]
8780050c:	68ba      	ldr	r2, [r7, #8]
8780050e:	f002 010f 	and.w	r1, r2, #15
87800512:	69fa      	ldr	r2, [r7, #28]
87800514:	0112      	lsls	r2, r2, #4
87800516:	f002 0210 	and.w	r2, r2, #16
8780051a:	430a      	orrs	r2, r1
8780051c:	601a      	str	r2, [r3, #0]
8780051e:	687b      	ldr	r3, [r7, #4]
87800520:	2b00      	cmp	r3, #0
87800522:	d004      	beq.n	8780052e <IOMUXC_SetPinMux+0x32>
87800524:	687b      	ldr	r3, [r7, #4]
87800526:	683a      	ldr	r2, [r7, #0]
87800528:	f002 0207 	and.w	r2, r2, #7
8780052c:	601a      	str	r2, [r3, #0]
8780052e:	3714      	adds	r7, #20
87800530:	46bd      	mov	sp, r7
87800532:	f85d 7b04 	ldr.w	r7, [sp], #4
87800536:	4770      	bx	lr

87800538 <IOMUXC_SetPinConfig>:
87800538:	b480      	push	{r7}
8780053a:	b085      	sub	sp, #20
8780053c:	af00      	add	r7, sp, #0
8780053e:	60f8      	str	r0, [r7, #12]
87800540:	60b9      	str	r1, [r7, #8]
87800542:	607a      	str	r2, [r7, #4]
87800544:	603b      	str	r3, [r7, #0]
87800546:	69bb      	ldr	r3, [r7, #24]
87800548:	2b00      	cmp	r3, #0
8780054a:	d002      	beq.n	87800552 <IOMUXC_SetPinConfig+0x1a>
8780054c:	69bb      	ldr	r3, [r7, #24]
8780054e:	69fa      	ldr	r2, [r7, #28]
87800550:	601a      	str	r2, [r3, #0]
87800552:	3714      	adds	r7, #20
87800554:	46bd      	mov	sp, r7
87800556:	f85d 7b04 	ldr.w	r7, [sp], #4
8780055a:	4770      	bx	lr

8780055c <led_init>:
8780055c:	b580      	push	{r7, lr}
8780055e:	b082      	sub	sp, #8
87800560:	af02      	add	r7, sp, #8
87800562:	2300      	movs	r3, #0
87800564:	9301      	str	r3, [sp, #4]
87800566:	f44f 733d 	mov.w	r3, #756	; 0x2f4
8780056a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780056e:	9300      	str	r3, [sp, #0]
87800570:	2300      	movs	r3, #0
87800572:	2200      	movs	r2, #0
87800574:	2105      	movs	r1, #5
87800576:	2068      	movs	r0, #104	; 0x68
87800578:	f2c0 200e 	movt	r0, #526	; 0x20e
8780057c:	f7ff ffbe 	bl	878004fc <IOMUXC_SetPinMux>
87800580:	f241 03b0 	movw	r3, #4272	; 0x10b0
87800584:	9301      	str	r3, [sp, #4]
87800586:	f44f 733d 	mov.w	r3, #756	; 0x2f4
8780058a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780058e:	9300      	str	r3, [sp, #0]
87800590:	2300      	movs	r3, #0
87800592:	2200      	movs	r2, #0
87800594:	2105      	movs	r1, #5
87800596:	2068      	movs	r0, #104	; 0x68
87800598:	f2c0 200e 	movt	r0, #526	; 0x20e
8780059c:	f7ff ffcc 	bl	87800538 <IOMUXC_SetPinConfig>
878005a0:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878005a4:	f2c0 2309 	movt	r3, #521	; 0x209
878005a8:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878005ac:	f2c0 2209 	movt	r2, #521	; 0x209
878005b0:	6852      	ldr	r2, [r2, #4]
878005b2:	f042 0208 	orr.w	r2, r2, #8
878005b6:	605a      	str	r2, [r3, #4]
878005b8:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878005bc:	f2c0 2309 	movt	r3, #521	; 0x209
878005c0:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878005c4:	f2c0 2209 	movt	r2, #521	; 0x209
878005c8:	6812      	ldr	r2, [r2, #0]
878005ca:	f022 0208 	bic.w	r2, r2, #8
878005ce:	601a      	str	r2, [r3, #0]
878005d0:	46bd      	mov	sp, r7
878005d2:	bd80      	pop	{r7, pc}

878005d4 <led_switch>:
878005d4:	b480      	push	{r7}
878005d6:	b083      	sub	sp, #12
878005d8:	af00      	add	r7, sp, #0
878005da:	6078      	str	r0, [r7, #4]
878005dc:	6039      	str	r1, [r7, #0]
878005de:	687b      	ldr	r3, [r7, #4]
878005e0:	2b00      	cmp	r3, #0
878005e2:	d11f      	bne.n	87800624 <led_switch+0x50>
878005e4:	683b      	ldr	r3, [r7, #0]
878005e6:	2b01      	cmp	r3, #1
878005e8:	d10c      	bne.n	87800604 <led_switch+0x30>
878005ea:	f44f 4340 	mov.w	r3, #49152	; 0xc000
878005ee:	f2c0 2309 	movt	r3, #521	; 0x209
878005f2:	f44f 4240 	mov.w	r2, #49152	; 0xc000
878005f6:	f2c0 2209 	movt	r2, #521	; 0x209
878005fa:	6812      	ldr	r2, [r2, #0]
878005fc:	f022 0208 	bic.w	r2, r2, #8
87800600:	601a      	str	r2, [r3, #0]
87800602:	e00e      	b.n	87800622 <led_switch+0x4e>
87800604:	683b      	ldr	r3, [r7, #0]
87800606:	2b00      	cmp	r3, #0
87800608:	d10b      	bne.n	87800622 <led_switch+0x4e>
8780060a:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780060e:	f2c0 2309 	movt	r3, #521	; 0x209
87800612:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800616:	f2c0 2209 	movt	r2, #521	; 0x209
8780061a:	6812      	ldr	r2, [r2, #0]
8780061c:	f042 0208 	orr.w	r2, r2, #8
87800620:	601a      	str	r2, [r3, #0]
87800622:	bf00      	nop
87800624:	370c      	adds	r7, #12
87800626:	46bd      	mov	sp, r7
87800628:	f85d 7b04 	ldr.w	r7, [sp], #4
8780062c:	4770      	bx	lr
8780062e:	bf00      	nop

87800630 <delay_init>:
87800630:	b480      	push	{r7}
87800632:	af00      	add	r7, sp, #0
87800634:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800638:	f2c0 2309 	movt	r3, #521	; 0x209
8780063c:	2200      	movs	r2, #0
8780063e:	601a      	str	r2, [r3, #0]
87800640:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800644:	f2c0 2309 	movt	r3, #521	; 0x209
87800648:	f44f 4200 	mov.w	r2, #32768	; 0x8000
8780064c:	601a      	str	r2, [r3, #0]
8780064e:	bf00      	nop
87800650:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800654:	f2c0 2309 	movt	r3, #521	; 0x209
87800658:	681b      	ldr	r3, [r3, #0]
8780065a:	0bdb      	lsrs	r3, r3, #15
8780065c:	f003 0301 	and.w	r3, r3, #1
87800660:	2b00      	cmp	r3, #0
87800662:	d1f5      	bne.n	87800650 <delay_init+0x20>
87800664:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800668:	f2c0 2309 	movt	r3, #521	; 0x209
8780066c:	2240      	movs	r2, #64	; 0x40
8780066e:	601a      	str	r2, [r3, #0]
87800670:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800674:	f2c0 2309 	movt	r3, #521	; 0x209
87800678:	2241      	movs	r2, #65	; 0x41
8780067a:	605a      	str	r2, [r3, #4]
8780067c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87800680:	f2c0 2309 	movt	r3, #521	; 0x209
87800684:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
87800688:	611a      	str	r2, [r3, #16]
8780068a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780068e:	f2c0 2309 	movt	r3, #521	; 0x209
87800692:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87800696:	f2c0 2209 	movt	r2, #521	; 0x209
8780069a:	6812      	ldr	r2, [r2, #0]
8780069c:	f042 0201 	orr.w	r2, r2, #1
878006a0:	601a      	str	r2, [r3, #0]
878006a2:	46bd      	mov	sp, r7
878006a4:	f85d 7b04 	ldr.w	r7, [sp], #4
878006a8:	4770      	bx	lr
878006aa:	bf00      	nop

878006ac <delayus>:
878006ac:	b480      	push	{r7}
878006ae:	b087      	sub	sp, #28
878006b0:	af00      	add	r7, sp, #0
878006b2:	6078      	str	r0, [r7, #4]
878006b4:	2300      	movs	r3, #0
878006b6:	613b      	str	r3, [r7, #16]
878006b8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878006bc:	f2c0 2309 	movt	r3, #521	; 0x209
878006c0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
878006c2:	617b      	str	r3, [r7, #20]
878006c4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878006c8:	f2c0 2309 	movt	r3, #521	; 0x209
878006cc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
878006ce:	60fb      	str	r3, [r7, #12]
878006d0:	68fa      	ldr	r2, [r7, #12]
878006d2:	697b      	ldr	r3, [r7, #20]
878006d4:	429a      	cmp	r2, r3
878006d6:	d018      	beq.n	8780070a <delayus+0x5e>
878006d8:	68fa      	ldr	r2, [r7, #12]
878006da:	697b      	ldr	r3, [r7, #20]
878006dc:	429a      	cmp	r2, r3
878006de:	d906      	bls.n	878006ee <delayus+0x42>
878006e0:	68fa      	ldr	r2, [r7, #12]
878006e2:	697b      	ldr	r3, [r7, #20]
878006e4:	1ad3      	subs	r3, r2, r3
878006e6:	693a      	ldr	r2, [r7, #16]
878006e8:	4413      	add	r3, r2
878006ea:	613b      	str	r3, [r7, #16]
878006ec:	e006      	b.n	878006fc <delayus+0x50>
878006ee:	68fa      	ldr	r2, [r7, #12]
878006f0:	697b      	ldr	r3, [r7, #20]
878006f2:	1ad2      	subs	r2, r2, r3
878006f4:	693b      	ldr	r3, [r7, #16]
878006f6:	4413      	add	r3, r2
878006f8:	3b01      	subs	r3, #1
878006fa:	613b      	str	r3, [r7, #16]
878006fc:	68fb      	ldr	r3, [r7, #12]
878006fe:	617b      	str	r3, [r7, #20]
87800700:	693a      	ldr	r2, [r7, #16]
87800702:	687b      	ldr	r3, [r7, #4]
87800704:	429a      	cmp	r2, r3
87800706:	d300      	bcc.n	8780070a <delayus+0x5e>
87800708:	e000      	b.n	8780070c <delayus+0x60>
8780070a:	e7db      	b.n	878006c4 <delayus+0x18>
8780070c:	371c      	adds	r7, #28
8780070e:	46bd      	mov	sp, r7
87800710:	f85d 7b04 	ldr.w	r7, [sp], #4
87800714:	4770      	bx	lr
87800716:	bf00      	nop

87800718 <delayms>:
87800718:	b580      	push	{r7, lr}
8780071a:	b084      	sub	sp, #16
8780071c:	af00      	add	r7, sp, #0
8780071e:	6078      	str	r0, [r7, #4]
87800720:	2300      	movs	r3, #0
87800722:	60fb      	str	r3, [r7, #12]
87800724:	2300      	movs	r3, #0
87800726:	60fb      	str	r3, [r7, #12]
87800728:	e006      	b.n	87800738 <delayms+0x20>
8780072a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
8780072e:	f7ff ffbd 	bl	878006ac <delayus>
87800732:	68fb      	ldr	r3, [r7, #12]
87800734:	3301      	adds	r3, #1
87800736:	60fb      	str	r3, [r7, #12]
87800738:	68fa      	ldr	r2, [r7, #12]
8780073a:	687b      	ldr	r3, [r7, #4]
8780073c:	429a      	cmp	r2, r3
8780073e:	d3f4      	bcc.n	8780072a <delayms+0x12>
87800740:	3710      	adds	r7, #16
87800742:	46bd      	mov	sp, r7
87800744:	bd80      	pop	{r7, pc}
87800746:	bf00      	nop

87800748 <delay_short>:
87800748:	b480      	push	{r7}
8780074a:	b083      	sub	sp, #12
8780074c:	af00      	add	r7, sp, #0
8780074e:	6078      	str	r0, [r7, #4]
87800750:	bf00      	nop
87800752:	687b      	ldr	r3, [r7, #4]
87800754:	1e5a      	subs	r2, r3, #1
87800756:	607a      	str	r2, [r7, #4]
87800758:	2b00      	cmp	r3, #0
8780075a:	d1fa      	bne.n	87800752 <delay_short+0xa>
8780075c:	370c      	adds	r7, #12
8780075e:	46bd      	mov	sp, r7
87800760:	f85d 7b04 	ldr.w	r7, [sp], #4
87800764:	4770      	bx	lr
87800766:	bf00      	nop

87800768 <delay>:
87800768:	b580      	push	{r7, lr}
8780076a:	b082      	sub	sp, #8
8780076c:	af00      	add	r7, sp, #0
8780076e:	6078      	str	r0, [r7, #4]
87800770:	e003      	b.n	8780077a <delay+0x12>
87800772:	f240 70ff 	movw	r0, #2047	; 0x7ff
87800776:	f7ff ffe7 	bl	87800748 <delay_short>
8780077a:	687b      	ldr	r3, [r7, #4]
8780077c:	1e5a      	subs	r2, r3, #1
8780077e:	607a      	str	r2, [r7, #4]
87800780:	2b00      	cmp	r3, #0
87800782:	d1f6      	bne.n	87800772 <delay+0xa>
87800784:	3708      	adds	r7, #8
87800786:	46bd      	mov	sp, r7
87800788:	bd80      	pop	{r7, pc}
8780078a:	bf00      	nop

8780078c <IOMUXC_SetPinMux>:
8780078c:	b480      	push	{r7}
8780078e:	b085      	sub	sp, #20
87800790:	af00      	add	r7, sp, #0
87800792:	60f8      	str	r0, [r7, #12]
87800794:	60b9      	str	r1, [r7, #8]
87800796:	607a      	str	r2, [r7, #4]
87800798:	603b      	str	r3, [r7, #0]
8780079a:	68fb      	ldr	r3, [r7, #12]
8780079c:	68ba      	ldr	r2, [r7, #8]
8780079e:	f002 010f 	and.w	r1, r2, #15
878007a2:	69fa      	ldr	r2, [r7, #28]
878007a4:	0112      	lsls	r2, r2, #4
878007a6:	f002 0210 	and.w	r2, r2, #16
878007aa:	430a      	orrs	r2, r1
878007ac:	601a      	str	r2, [r3, #0]
878007ae:	687b      	ldr	r3, [r7, #4]
878007b0:	2b00      	cmp	r3, #0
878007b2:	d004      	beq.n	878007be <IOMUXC_SetPinMux+0x32>
878007b4:	687b      	ldr	r3, [r7, #4]
878007b6:	683a      	ldr	r2, [r7, #0]
878007b8:	f002 0207 	and.w	r2, r2, #7
878007bc:	601a      	str	r2, [r3, #0]
878007be:	3714      	adds	r7, #20
878007c0:	46bd      	mov	sp, r7
878007c2:	f85d 7b04 	ldr.w	r7, [sp], #4
878007c6:	4770      	bx	lr

878007c8 <IOMUXC_SetPinConfig>:
878007c8:	b480      	push	{r7}
878007ca:	b085      	sub	sp, #20
878007cc:	af00      	add	r7, sp, #0
878007ce:	60f8      	str	r0, [r7, #12]
878007d0:	60b9      	str	r1, [r7, #8]
878007d2:	607a      	str	r2, [r7, #4]
878007d4:	603b      	str	r3, [r7, #0]
878007d6:	69bb      	ldr	r3, [r7, #24]
878007d8:	2b00      	cmp	r3, #0
878007da:	d002      	beq.n	878007e2 <IOMUXC_SetPinConfig+0x1a>
878007dc:	69bb      	ldr	r3, [r7, #24]
878007de:	69fa      	ldr	r2, [r7, #28]
878007e0:	601a      	str	r2, [r3, #0]
878007e2:	3714      	adds	r7, #20
878007e4:	46bd      	mov	sp, r7
878007e6:	f85d 7b04 	ldr.w	r7, [sp], #4
878007ea:	4770      	bx	lr

878007ec <beep_init>:
878007ec:	b580      	push	{r7, lr}
878007ee:	b082      	sub	sp, #8
878007f0:	af02      	add	r7, sp, #8
878007f2:	2300      	movs	r3, #0
878007f4:	9301      	str	r3, [sp, #4]
878007f6:	2350      	movs	r3, #80	; 0x50
878007f8:	f2c0 2329 	movt	r3, #553	; 0x229
878007fc:	9300      	str	r3, [sp, #0]
878007fe:	2300      	movs	r3, #0
87800800:	2200      	movs	r2, #0
87800802:	2105      	movs	r1, #5
87800804:	200c      	movs	r0, #12
87800806:	f2c0 2029 	movt	r0, #553	; 0x229
8780080a:	f7ff ffbf 	bl	8780078c <IOMUXC_SetPinMux>
8780080e:	f241 03b0 	movw	r3, #4272	; 0x10b0
87800812:	9301      	str	r3, [sp, #4]
87800814:	2350      	movs	r3, #80	; 0x50
87800816:	f2c0 2329 	movt	r3, #553	; 0x229
8780081a:	9300      	str	r3, [sp, #0]
8780081c:	2300      	movs	r3, #0
8780081e:	2200      	movs	r2, #0
87800820:	2105      	movs	r1, #5
87800822:	200c      	movs	r0, #12
87800824:	f2c0 2029 	movt	r0, #553	; 0x229
87800828:	f7ff ffce 	bl	878007c8 <IOMUXC_SetPinConfig>
8780082c:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800830:	f2c0 230a 	movt	r3, #522	; 0x20a
87800834:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800838:	f2c0 220a 	movt	r2, #522	; 0x20a
8780083c:	6852      	ldr	r2, [r2, #4]
8780083e:	f042 0202 	orr.w	r2, r2, #2
87800842:	605a      	str	r2, [r3, #4]
87800844:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800848:	f2c0 230a 	movt	r3, #522	; 0x20a
8780084c:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87800850:	f2c0 220a 	movt	r2, #522	; 0x20a
87800854:	6812      	ldr	r2, [r2, #0]
87800856:	f042 0202 	orr.w	r2, r2, #2
8780085a:	601a      	str	r2, [r3, #0]
8780085c:	46bd      	mov	sp, r7
8780085e:	bd80      	pop	{r7, pc}

87800860 <beep_switch>:
87800860:	b480      	push	{r7}
87800862:	b083      	sub	sp, #12
87800864:	af00      	add	r7, sp, #0
87800866:	6078      	str	r0, [r7, #4]
87800868:	687b      	ldr	r3, [r7, #4]
8780086a:	2b01      	cmp	r3, #1
8780086c:	d10c      	bne.n	87800888 <beep_switch+0x28>
8780086e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800872:	f2c0 230a 	movt	r3, #522	; 0x20a
87800876:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780087a:	f2c0 220a 	movt	r2, #522	; 0x20a
8780087e:	6812      	ldr	r2, [r2, #0]
87800880:	f022 0202 	bic.w	r2, r2, #2
87800884:	601a      	str	r2, [r3, #0]
87800886:	e00e      	b.n	878008a6 <beep_switch+0x46>
87800888:	687b      	ldr	r3, [r7, #4]
8780088a:	2b00      	cmp	r3, #0
8780088c:	d10b      	bne.n	878008a6 <beep_switch+0x46>
8780088e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87800892:	f2c0 230a 	movt	r3, #522	; 0x20a
87800896:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780089a:	f2c0 220a 	movt	r2, #522	; 0x20a
8780089e:	6812      	ldr	r2, [r2, #0]
878008a0:	f042 0202 	orr.w	r2, r2, #2
878008a4:	601a      	str	r2, [r3, #0]
878008a6:	370c      	adds	r7, #12
878008a8:	46bd      	mov	sp, r7
878008aa:	f85d 7b04 	ldr.w	r7, [sp], #4
878008ae:	4770      	bx	lr

878008b0 <IOMUXC_SetPinMux>:
878008b0:	b480      	push	{r7}
878008b2:	b085      	sub	sp, #20
878008b4:	af00      	add	r7, sp, #0
878008b6:	60f8      	str	r0, [r7, #12]
878008b8:	60b9      	str	r1, [r7, #8]
878008ba:	607a      	str	r2, [r7, #4]
878008bc:	603b      	str	r3, [r7, #0]
878008be:	68fb      	ldr	r3, [r7, #12]
878008c0:	68ba      	ldr	r2, [r7, #8]
878008c2:	f002 010f 	and.w	r1, r2, #15
878008c6:	69fa      	ldr	r2, [r7, #28]
878008c8:	0112      	lsls	r2, r2, #4
878008ca:	f002 0210 	and.w	r2, r2, #16
878008ce:	430a      	orrs	r2, r1
878008d0:	601a      	str	r2, [r3, #0]
878008d2:	687b      	ldr	r3, [r7, #4]
878008d4:	2b00      	cmp	r3, #0
878008d6:	d004      	beq.n	878008e2 <IOMUXC_SetPinMux+0x32>
878008d8:	687b      	ldr	r3, [r7, #4]
878008da:	683a      	ldr	r2, [r7, #0]
878008dc:	f002 0207 	and.w	r2, r2, #7
878008e0:	601a      	str	r2, [r3, #0]
878008e2:	3714      	adds	r7, #20
878008e4:	46bd      	mov	sp, r7
878008e6:	f85d 7b04 	ldr.w	r7, [sp], #4
878008ea:	4770      	bx	lr

878008ec <IOMUXC_SetPinConfig>:
878008ec:	b480      	push	{r7}
878008ee:	b085      	sub	sp, #20
878008f0:	af00      	add	r7, sp, #0
878008f2:	60f8      	str	r0, [r7, #12]
878008f4:	60b9      	str	r1, [r7, #8]
878008f6:	607a      	str	r2, [r7, #4]
878008f8:	603b      	str	r3, [r7, #0]
878008fa:	69bb      	ldr	r3, [r7, #24]
878008fc:	2b00      	cmp	r3, #0
878008fe:	d002      	beq.n	87800906 <IOMUXC_SetPinConfig+0x1a>
87800900:	69bb      	ldr	r3, [r7, #24]
87800902:	69fa      	ldr	r2, [r7, #28]
87800904:	601a      	str	r2, [r3, #0]
87800906:	3714      	adds	r7, #20
87800908:	46bd      	mov	sp, r7
8780090a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780090e:	4770      	bx	lr

87800910 <key_init>:
87800910:	b580      	push	{r7, lr}
87800912:	b086      	sub	sp, #24
87800914:	af02      	add	r7, sp, #8
87800916:	2300      	movs	r3, #0
87800918:	9301      	str	r3, [sp, #4]
8780091a:	f44f 7346 	mov.w	r3, #792	; 0x318
8780091e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800922:	9300      	str	r3, [sp, #0]
87800924:	2300      	movs	r3, #0
87800926:	2200      	movs	r2, #0
87800928:	2105      	movs	r1, #5
8780092a:	208c      	movs	r0, #140	; 0x8c
8780092c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800930:	f7ff ffbe 	bl	878008b0 <IOMUXC_SetPinMux>
87800934:	f24f 0380 	movw	r3, #61568	; 0xf080
87800938:	9301      	str	r3, [sp, #4]
8780093a:	f44f 7346 	mov.w	r3, #792	; 0x318
8780093e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800942:	9300      	str	r3, [sp, #0]
87800944:	2300      	movs	r3, #0
87800946:	2200      	movs	r2, #0
87800948:	2105      	movs	r1, #5
8780094a:	208c      	movs	r0, #140	; 0x8c
8780094c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800950:	f7ff ffcc 	bl	878008ec <IOMUXC_SetPinConfig>
87800954:	2300      	movs	r3, #0
87800956:	607b      	str	r3, [r7, #4]
87800958:	1d3b      	adds	r3, r7, #4
8780095a:	461a      	mov	r2, r3
8780095c:	2112      	movs	r1, #18
8780095e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800962:	f2c0 2009 	movt	r0, #521	; 0x209
87800966:	f000 f847 	bl	878009f8 <gpio_init>
8780096a:	3710      	adds	r7, #16
8780096c:	46bd      	mov	sp, r7
8780096e:	bd80      	pop	{r7, pc}

87800970 <key_getvalue>:
87800970:	b580      	push	{r7, lr}
87800972:	b082      	sub	sp, #8
87800974:	af00      	add	r7, sp, #0
87800976:	2300      	movs	r3, #0
87800978:	607b      	str	r3, [r7, #4]
8780097a:	f64b 13d4 	movw	r3, #47572	; 0xb9d4
8780097e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800982:	781b      	ldrb	r3, [r3, #0]
87800984:	2b01      	cmp	r3, #1
87800986:	d120      	bne.n	878009ca <key_getvalue+0x5a>
87800988:	2112      	movs	r1, #18
8780098a:	f44f 4040 	mov.w	r0, #49152	; 0xc000
8780098e:	f2c0 2009 	movt	r0, #521	; 0x209
87800992:	f000 f86b 	bl	87800a6c <gpio_pinread>
87800996:	4603      	mov	r3, r0
87800998:	2b00      	cmp	r3, #0
8780099a:	d116      	bne.n	878009ca <key_getvalue+0x5a>
8780099c:	200a      	movs	r0, #10
8780099e:	f7ff fee3 	bl	87800768 <delay>
878009a2:	f64b 13d4 	movw	r3, #47572	; 0xb9d4
878009a6:	f2c8 7380 	movt	r3, #34688	; 0x8780
878009aa:	2200      	movs	r2, #0
878009ac:	701a      	strb	r2, [r3, #0]
878009ae:	2112      	movs	r1, #18
878009b0:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878009b4:	f2c0 2009 	movt	r0, #521	; 0x209
878009b8:	f000 f858 	bl	87800a6c <gpio_pinread>
878009bc:	4603      	mov	r3, r0
878009be:	2b00      	cmp	r3, #0
878009c0:	d102      	bne.n	878009c8 <key_getvalue+0x58>
878009c2:	2301      	movs	r3, #1
878009c4:	607b      	str	r3, [r7, #4]
878009c6:	e012      	b.n	878009ee <key_getvalue+0x7e>
878009c8:	e011      	b.n	878009ee <key_getvalue+0x7e>
878009ca:	2112      	movs	r1, #18
878009cc:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878009d0:	f2c0 2009 	movt	r0, #521	; 0x209
878009d4:	f000 f84a 	bl	87800a6c <gpio_pinread>
878009d8:	4603      	mov	r3, r0
878009da:	2b01      	cmp	r3, #1
878009dc:	d107      	bne.n	878009ee <key_getvalue+0x7e>
878009de:	2300      	movs	r3, #0
878009e0:	607b      	str	r3, [r7, #4]
878009e2:	f64b 13d4 	movw	r3, #47572	; 0xb9d4
878009e6:	f2c8 7380 	movt	r3, #34688	; 0x8780
878009ea:	2201      	movs	r2, #1
878009ec:	701a      	strb	r2, [r3, #0]
878009ee:	687b      	ldr	r3, [r7, #4]
878009f0:	4618      	mov	r0, r3
878009f2:	3708      	adds	r7, #8
878009f4:	46bd      	mov	sp, r7
878009f6:	bd80      	pop	{r7, pc}

878009f8 <gpio_init>:
878009f8:	b580      	push	{r7, lr}
878009fa:	b084      	sub	sp, #16
878009fc:	af00      	add	r7, sp, #0
878009fe:	60f8      	str	r0, [r7, #12]
87800a00:	60b9      	str	r1, [r7, #8]
87800a02:	607a      	str	r2, [r7, #4]
87800a04:	68fb      	ldr	r3, [r7, #12]
87800a06:	695a      	ldr	r2, [r3, #20]
87800a08:	2101      	movs	r1, #1
87800a0a:	68bb      	ldr	r3, [r7, #8]
87800a0c:	fa01 f303 	lsl.w	r3, r1, r3
87800a10:	43db      	mvns	r3, r3
87800a12:	401a      	ands	r2, r3
87800a14:	68fb      	ldr	r3, [r7, #12]
87800a16:	615a      	str	r2, [r3, #20]
87800a18:	687b      	ldr	r3, [r7, #4]
87800a1a:	681b      	ldr	r3, [r3, #0]
87800a1c:	2b00      	cmp	r3, #0
87800a1e:	d10a      	bne.n	87800a36 <gpio_init+0x3e>
87800a20:	68fb      	ldr	r3, [r7, #12]
87800a22:	685b      	ldr	r3, [r3, #4]
87800a24:	2101      	movs	r1, #1
87800a26:	68ba      	ldr	r2, [r7, #8]
87800a28:	fa01 f202 	lsl.w	r2, r1, r2
87800a2c:	43d2      	mvns	r2, r2
87800a2e:	401a      	ands	r2, r3
87800a30:	68fb      	ldr	r3, [r7, #12]
87800a32:	605a      	str	r2, [r3, #4]
87800a34:	e00f      	b.n	87800a56 <gpio_init+0x5e>
87800a36:	68fb      	ldr	r3, [r7, #12]
87800a38:	685b      	ldr	r3, [r3, #4]
87800a3a:	2101      	movs	r1, #1
87800a3c:	68ba      	ldr	r2, [r7, #8]
87800a3e:	fa01 f202 	lsl.w	r2, r1, r2
87800a42:	431a      	orrs	r2, r3
87800a44:	68fb      	ldr	r3, [r7, #12]
87800a46:	605a      	str	r2, [r3, #4]
87800a48:	687b      	ldr	r3, [r7, #4]
87800a4a:	791b      	ldrb	r3, [r3, #4]
87800a4c:	461a      	mov	r2, r3
87800a4e:	68b9      	ldr	r1, [r7, #8]
87800a50:	68f8      	ldr	r0, [r7, #12]
87800a52:	f000 f81d 	bl	87800a90 <gpio_pinwrite>
87800a56:	68b9      	ldr	r1, [r7, #8]
87800a58:	687b      	ldr	r3, [r7, #4]
87800a5a:	689b      	ldr	r3, [r3, #8]
87800a5c:	461a      	mov	r2, r3
87800a5e:	68f8      	ldr	r0, [r7, #12]
87800a60:	f000 f838 	bl	87800ad4 <gpio_intconfig>
87800a64:	3710      	adds	r7, #16
87800a66:	46bd      	mov	sp, r7
87800a68:	bd80      	pop	{r7, pc}
87800a6a:	bf00      	nop

87800a6c <gpio_pinread>:
87800a6c:	b480      	push	{r7}
87800a6e:	b083      	sub	sp, #12
87800a70:	af00      	add	r7, sp, #0
87800a72:	6078      	str	r0, [r7, #4]
87800a74:	6039      	str	r1, [r7, #0]
87800a76:	687b      	ldr	r3, [r7, #4]
87800a78:	681a      	ldr	r2, [r3, #0]
87800a7a:	683b      	ldr	r3, [r7, #0]
87800a7c:	fa22 f303 	lsr.w	r3, r2, r3
87800a80:	f003 0301 	and.w	r3, r3, #1
87800a84:	4618      	mov	r0, r3
87800a86:	370c      	adds	r7, #12
87800a88:	46bd      	mov	sp, r7
87800a8a:	f85d 7b04 	ldr.w	r7, [sp], #4
87800a8e:	4770      	bx	lr

87800a90 <gpio_pinwrite>:
87800a90:	b480      	push	{r7}
87800a92:	b085      	sub	sp, #20
87800a94:	af00      	add	r7, sp, #0
87800a96:	60f8      	str	r0, [r7, #12]
87800a98:	60b9      	str	r1, [r7, #8]
87800a9a:	607a      	str	r2, [r7, #4]
87800a9c:	687b      	ldr	r3, [r7, #4]
87800a9e:	2b00      	cmp	r3, #0
87800aa0:	d10a      	bne.n	87800ab8 <gpio_pinwrite+0x28>
87800aa2:	68fb      	ldr	r3, [r7, #12]
87800aa4:	681a      	ldr	r2, [r3, #0]
87800aa6:	2101      	movs	r1, #1
87800aa8:	68bb      	ldr	r3, [r7, #8]
87800aaa:	fa01 f303 	lsl.w	r3, r1, r3
87800aae:	43db      	mvns	r3, r3
87800ab0:	401a      	ands	r2, r3
87800ab2:	68fb      	ldr	r3, [r7, #12]
87800ab4:	601a      	str	r2, [r3, #0]
87800ab6:	e008      	b.n	87800aca <gpio_pinwrite+0x3a>
87800ab8:	68fb      	ldr	r3, [r7, #12]
87800aba:	681a      	ldr	r2, [r3, #0]
87800abc:	2101      	movs	r1, #1
87800abe:	68bb      	ldr	r3, [r7, #8]
87800ac0:	fa01 f303 	lsl.w	r3, r1, r3
87800ac4:	431a      	orrs	r2, r3
87800ac6:	68fb      	ldr	r3, [r7, #12]
87800ac8:	601a      	str	r2, [r3, #0]
87800aca:	3714      	adds	r7, #20
87800acc:	46bd      	mov	sp, r7
87800ace:	f85d 7b04 	ldr.w	r7, [sp], #4
87800ad2:	4770      	bx	lr

87800ad4 <gpio_intconfig>:
87800ad4:	b480      	push	{r7}
87800ad6:	b087      	sub	sp, #28
87800ad8:	af00      	add	r7, sp, #0
87800ada:	60f8      	str	r0, [r7, #12]
87800adc:	60b9      	str	r1, [r7, #8]
87800ade:	607a      	str	r2, [r7, #4]
87800ae0:	68bb      	ldr	r3, [r7, #8]
87800ae2:	613b      	str	r3, [r7, #16]
87800ae4:	68fb      	ldr	r3, [r7, #12]
87800ae6:	69da      	ldr	r2, [r3, #28]
87800ae8:	68bb      	ldr	r3, [r7, #8]
87800aea:	2101      	movs	r1, #1
87800aec:	fa01 f303 	lsl.w	r3, r1, r3
87800af0:	43db      	mvns	r3, r3
87800af2:	401a      	ands	r2, r3
87800af4:	68fb      	ldr	r3, [r7, #12]
87800af6:	61da      	str	r2, [r3, #28]
87800af8:	68bb      	ldr	r3, [r7, #8]
87800afa:	2b0f      	cmp	r3, #15
87800afc:	d803      	bhi.n	87800b06 <gpio_intconfig+0x32>
87800afe:	68fb      	ldr	r3, [r7, #12]
87800b00:	330c      	adds	r3, #12
87800b02:	617b      	str	r3, [r7, #20]
87800b04:	e005      	b.n	87800b12 <gpio_intconfig+0x3e>
87800b06:	68fb      	ldr	r3, [r7, #12]
87800b08:	3310      	adds	r3, #16
87800b0a:	617b      	str	r3, [r7, #20]
87800b0c:	693b      	ldr	r3, [r7, #16]
87800b0e:	3b10      	subs	r3, #16
87800b10:	613b      	str	r3, [r7, #16]
87800b12:	687b      	ldr	r3, [r7, #4]
87800b14:	3b01      	subs	r3, #1
87800b16:	2b04      	cmp	r3, #4
87800b18:	d851      	bhi.n	87800bbe <gpio_intconfig+0xea>
87800b1a:	a201      	add	r2, pc, #4	; (adr r2, 87800b20 <gpio_intconfig+0x4c>)
87800b1c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87800b20:	87800b35 			; <UNDEFINED> instruction: 0x87800b35
87800b24:	87800b4d 	strhi	r0, [r0, sp, asr #22]
87800b28:	87800b71 			; <UNDEFINED> instruction: 0x87800b71
87800b2c:	87800b95 			; <UNDEFINED> instruction: 0x87800b95
87800b30:	87800bab 	strhi	r0, [r0, fp, lsr #23]
87800b34:	697b      	ldr	r3, [r7, #20]
87800b36:	681a      	ldr	r2, [r3, #0]
87800b38:	693b      	ldr	r3, [r7, #16]
87800b3a:	005b      	lsls	r3, r3, #1
87800b3c:	4619      	mov	r1, r3
87800b3e:	2303      	movs	r3, #3
87800b40:	408b      	lsls	r3, r1
87800b42:	43db      	mvns	r3, r3
87800b44:	401a      	ands	r2, r3
87800b46:	697b      	ldr	r3, [r7, #20]
87800b48:	601a      	str	r2, [r3, #0]
87800b4a:	e039      	b.n	87800bc0 <gpio_intconfig+0xec>
87800b4c:	697b      	ldr	r3, [r7, #20]
87800b4e:	681a      	ldr	r2, [r3, #0]
87800b50:	693b      	ldr	r3, [r7, #16]
87800b52:	005b      	lsls	r3, r3, #1
87800b54:	4619      	mov	r1, r3
87800b56:	2303      	movs	r3, #3
87800b58:	408b      	lsls	r3, r1
87800b5a:	43db      	mvns	r3, r3
87800b5c:	401a      	ands	r2, r3
87800b5e:	693b      	ldr	r3, [r7, #16]
87800b60:	005b      	lsls	r3, r3, #1
87800b62:	4619      	mov	r1, r3
87800b64:	2301      	movs	r3, #1
87800b66:	408b      	lsls	r3, r1
87800b68:	431a      	orrs	r2, r3
87800b6a:	697b      	ldr	r3, [r7, #20]
87800b6c:	601a      	str	r2, [r3, #0]
87800b6e:	e027      	b.n	87800bc0 <gpio_intconfig+0xec>
87800b70:	697b      	ldr	r3, [r7, #20]
87800b72:	681a      	ldr	r2, [r3, #0]
87800b74:	693b      	ldr	r3, [r7, #16]
87800b76:	005b      	lsls	r3, r3, #1
87800b78:	4619      	mov	r1, r3
87800b7a:	2303      	movs	r3, #3
87800b7c:	408b      	lsls	r3, r1
87800b7e:	43db      	mvns	r3, r3
87800b80:	401a      	ands	r2, r3
87800b82:	693b      	ldr	r3, [r7, #16]
87800b84:	005b      	lsls	r3, r3, #1
87800b86:	4619      	mov	r1, r3
87800b88:	2302      	movs	r3, #2
87800b8a:	408b      	lsls	r3, r1
87800b8c:	431a      	orrs	r2, r3
87800b8e:	697b      	ldr	r3, [r7, #20]
87800b90:	601a      	str	r2, [r3, #0]
87800b92:	e015      	b.n	87800bc0 <gpio_intconfig+0xec>
87800b94:	697b      	ldr	r3, [r7, #20]
87800b96:	681a      	ldr	r2, [r3, #0]
87800b98:	693b      	ldr	r3, [r7, #16]
87800b9a:	005b      	lsls	r3, r3, #1
87800b9c:	4619      	mov	r1, r3
87800b9e:	2303      	movs	r3, #3
87800ba0:	408b      	lsls	r3, r1
87800ba2:	431a      	orrs	r2, r3
87800ba4:	697b      	ldr	r3, [r7, #20]
87800ba6:	601a      	str	r2, [r3, #0]
87800ba8:	e00a      	b.n	87800bc0 <gpio_intconfig+0xec>
87800baa:	68fb      	ldr	r3, [r7, #12]
87800bac:	69da      	ldr	r2, [r3, #28]
87800bae:	68bb      	ldr	r3, [r7, #8]
87800bb0:	2101      	movs	r1, #1
87800bb2:	fa01 f303 	lsl.w	r3, r1, r3
87800bb6:	431a      	orrs	r2, r3
87800bb8:	68fb      	ldr	r3, [r7, #12]
87800bba:	61da      	str	r2, [r3, #28]
87800bbc:	e000      	b.n	87800bc0 <gpio_intconfig+0xec>
87800bbe:	bf00      	nop
87800bc0:	371c      	adds	r7, #28
87800bc2:	46bd      	mov	sp, r7
87800bc4:	f85d 7b04 	ldr.w	r7, [sp], #4
87800bc8:	4770      	bx	lr
87800bca:	bf00      	nop

87800bcc <gpio_enableint>:
87800bcc:	b480      	push	{r7}
87800bce:	b083      	sub	sp, #12
87800bd0:	af00      	add	r7, sp, #0
87800bd2:	6078      	str	r0, [r7, #4]
87800bd4:	6039      	str	r1, [r7, #0]
87800bd6:	687b      	ldr	r3, [r7, #4]
87800bd8:	695b      	ldr	r3, [r3, #20]
87800bda:	683a      	ldr	r2, [r7, #0]
87800bdc:	2101      	movs	r1, #1
87800bde:	fa01 f202 	lsl.w	r2, r1, r2
87800be2:	431a      	orrs	r2, r3
87800be4:	687b      	ldr	r3, [r7, #4]
87800be6:	615a      	str	r2, [r3, #20]
87800be8:	370c      	adds	r7, #12
87800bea:	46bd      	mov	sp, r7
87800bec:	f85d 7b04 	ldr.w	r7, [sp], #4
87800bf0:	4770      	bx	lr
87800bf2:	bf00      	nop

87800bf4 <gpio_disableint>:
87800bf4:	b480      	push	{r7}
87800bf6:	b083      	sub	sp, #12
87800bf8:	af00      	add	r7, sp, #0
87800bfa:	6078      	str	r0, [r7, #4]
87800bfc:	6039      	str	r1, [r7, #0]
87800bfe:	687b      	ldr	r3, [r7, #4]
87800c00:	695b      	ldr	r3, [r3, #20]
87800c02:	683a      	ldr	r2, [r7, #0]
87800c04:	2101      	movs	r1, #1
87800c06:	fa01 f202 	lsl.w	r2, r1, r2
87800c0a:	43d2      	mvns	r2, r2
87800c0c:	401a      	ands	r2, r3
87800c0e:	687b      	ldr	r3, [r7, #4]
87800c10:	615a      	str	r2, [r3, #20]
87800c12:	370c      	adds	r7, #12
87800c14:	46bd      	mov	sp, r7
87800c16:	f85d 7b04 	ldr.w	r7, [sp], #4
87800c1a:	4770      	bx	lr

87800c1c <gpio_clearintflags>:
87800c1c:	b480      	push	{r7}
87800c1e:	b083      	sub	sp, #12
87800c20:	af00      	add	r7, sp, #0
87800c22:	6078      	str	r0, [r7, #4]
87800c24:	6039      	str	r1, [r7, #0]
87800c26:	687b      	ldr	r3, [r7, #4]
87800c28:	699b      	ldr	r3, [r3, #24]
87800c2a:	683a      	ldr	r2, [r7, #0]
87800c2c:	2101      	movs	r1, #1
87800c2e:	fa01 f202 	lsl.w	r2, r1, r2
87800c32:	431a      	orrs	r2, r3
87800c34:	687b      	ldr	r3, [r7, #4]
87800c36:	619a      	str	r2, [r3, #24]
87800c38:	370c      	adds	r7, #12
87800c3a:	46bd      	mov	sp, r7
87800c3c:	f85d 7b04 	ldr.w	r7, [sp], #4
87800c40:	4770      	bx	lr
87800c42:	bf00      	nop

87800c44 <int_init>:
87800c44:	b580      	push	{r7, lr}
87800c46:	b086      	sub	sp, #24
87800c48:	af00      	add	r7, sp, #0
87800c4a:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800c4e:	617b      	str	r3, [r7, #20]
87800c50:	697b      	ldr	r3, [r7, #20]
87800c52:	0c1b      	lsrs	r3, r3, #16
87800c54:	041b      	lsls	r3, r3, #16
87800c56:	613b      	str	r3, [r7, #16]
87800c58:	693b      	ldr	r3, [r7, #16]
87800c5a:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
87800c5e:	3304      	adds	r3, #4
87800c60:	681b      	ldr	r3, [r3, #0]
87800c62:	f003 031f 	and.w	r3, r3, #31
87800c66:	3301      	adds	r3, #1
87800c68:	60fb      	str	r3, [r7, #12]
87800c6a:	2300      	movs	r3, #0
87800c6c:	60bb      	str	r3, [r7, #8]
87800c6e:	e00a      	b.n	87800c86 <int_init+0x42>
87800c70:	693b      	ldr	r3, [r7, #16]
87800c72:	68ba      	ldr	r2, [r7, #8]
87800c74:	f502 628c 	add.w	r2, r2, #1120	; 0x460
87800c78:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
87800c7c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800c80:	68bb      	ldr	r3, [r7, #8]
87800c82:	3301      	adds	r3, #1
87800c84:	60bb      	str	r3, [r7, #8]
87800c86:	68fa      	ldr	r2, [r7, #12]
87800c88:	68bb      	ldr	r3, [r7, #8]
87800c8a:	429a      	cmp	r2, r3
87800c8c:	d8f0      	bhi.n	87800c70 <int_init+0x2c>
87800c8e:	693b      	ldr	r3, [r7, #16]
87800c90:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800c94:	3304      	adds	r3, #4
87800c96:	22f8      	movs	r2, #248	; 0xf8
87800c98:	601a      	str	r2, [r3, #0]
87800c9a:	693b      	ldr	r3, [r7, #16]
87800c9c:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800ca0:	3308      	adds	r3, #8
87800ca2:	2202      	movs	r2, #2
87800ca4:	601a      	str	r2, [r3, #0]
87800ca6:	693b      	ldr	r3, [r7, #16]
87800ca8:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
87800cac:	2201      	movs	r2, #1
87800cae:	601a      	str	r2, [r3, #0]
87800cb0:	693b      	ldr	r3, [r7, #16]
87800cb2:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
87800cb6:	2201      	movs	r2, #1
87800cb8:	601a      	str	r2, [r3, #0]
87800cba:	f000 f80b 	bl	87800cd4 <system_irqtable_init>
87800cbe:	2300      	movs	r3, #0
87800cc0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800cc4:	607b      	str	r3, [r7, #4]
87800cc6:	687b      	ldr	r3, [r7, #4]
87800cc8:	ee0c 3f10 	mcr	15, 0, r3, cr12, cr0, {0}
87800ccc:	3718      	adds	r7, #24
87800cce:	46bd      	mov	sp, r7
87800cd0:	bd80      	pop	{r7, pc}
87800cd2:	bf00      	nop

87800cd4 <system_irqtable_init>:
87800cd4:	b580      	push	{r7, lr}
87800cd6:	b082      	sub	sp, #8
87800cd8:	af00      	add	r7, sp, #0
87800cda:	2300      	movs	r3, #0
87800cdc:	607b      	str	r3, [r7, #4]
87800cde:	f64b 23d8 	movw	r3, #47832	; 0xbad8
87800ce2:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800ce6:	2200      	movs	r2, #0
87800ce8:	601a      	str	r2, [r3, #0]
87800cea:	2300      	movs	r3, #0
87800cec:	607b      	str	r3, [r7, #4]
87800cee:	e00b      	b.n	87800d08 <system_irqtable_init+0x34>
87800cf0:	687b      	ldr	r3, [r7, #4]
87800cf2:	2200      	movs	r2, #0
87800cf4:	f640 51c5 	movw	r1, #3525	; 0xdc5
87800cf8:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800cfc:	4618      	mov	r0, r3
87800cfe:	f000 f809 	bl	87800d14 <system_register_irqhandler>
87800d02:	687b      	ldr	r3, [r7, #4]
87800d04:	3301      	adds	r3, #1
87800d06:	607b      	str	r3, [r7, #4]
87800d08:	687b      	ldr	r3, [r7, #4]
87800d0a:	2b9f      	cmp	r3, #159	; 0x9f
87800d0c:	d9f0      	bls.n	87800cf0 <system_irqtable_init+0x1c>
87800d0e:	3708      	adds	r7, #8
87800d10:	46bd      	mov	sp, r7
87800d12:	bd80      	pop	{r7, pc}

87800d14 <system_register_irqhandler>:
87800d14:	b480      	push	{r7}
87800d16:	b085      	sub	sp, #20
87800d18:	af00      	add	r7, sp, #0
87800d1a:	60f8      	str	r0, [r7, #12]
87800d1c:	60b9      	str	r1, [r7, #8]
87800d1e:	607a      	str	r2, [r7, #4]
87800d20:	f64b 23dc 	movw	r3, #47836	; 0xbadc
87800d24:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800d28:	68fa      	ldr	r2, [r7, #12]
87800d2a:	68b9      	ldr	r1, [r7, #8]
87800d2c:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
87800d30:	f64b 22dc 	movw	r2, #47836	; 0xbadc
87800d34:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800d38:	68fb      	ldr	r3, [r7, #12]
87800d3a:	00db      	lsls	r3, r3, #3
87800d3c:	4413      	add	r3, r2
87800d3e:	687a      	ldr	r2, [r7, #4]
87800d40:	605a      	str	r2, [r3, #4]
87800d42:	3714      	adds	r7, #20
87800d44:	46bd      	mov	sp, r7
87800d46:	f85d 7b04 	ldr.w	r7, [sp], #4
87800d4a:	4770      	bx	lr

87800d4c <system_irqhandler>:
87800d4c:	b590      	push	{r4, r7, lr}
87800d4e:	b085      	sub	sp, #20
87800d50:	af00      	add	r7, sp, #0
87800d52:	6078      	str	r0, [r7, #4]
87800d54:	687b      	ldr	r3, [r7, #4]
87800d56:	f3c3 0309 	ubfx	r3, r3, #0, #10
87800d5a:	60fb      	str	r3, [r7, #12]
87800d5c:	68fb      	ldr	r3, [r7, #12]
87800d5e:	f240 32ff 	movw	r2, #1023	; 0x3ff
87800d62:	4293      	cmp	r3, r2
87800d64:	d002      	beq.n	87800d6c <system_irqhandler+0x20>
87800d66:	68fb      	ldr	r3, [r7, #12]
87800d68:	2b9f      	cmp	r3, #159	; 0x9f
87800d6a:	d900      	bls.n	87800d6e <system_irqhandler+0x22>
87800d6c:	e027      	b.n	87800dbe <system_irqhandler+0x72>
87800d6e:	f64b 23d8 	movw	r3, #47832	; 0xbad8
87800d72:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800d76:	681b      	ldr	r3, [r3, #0]
87800d78:	1c5a      	adds	r2, r3, #1
87800d7a:	f64b 23d8 	movw	r3, #47832	; 0xbad8
87800d7e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800d82:	601a      	str	r2, [r3, #0]
87800d84:	f64b 23dc 	movw	r3, #47836	; 0xbadc
87800d88:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800d8c:	68fa      	ldr	r2, [r7, #12]
87800d8e:	f853 4032 	ldr.w	r4, [r3, r2, lsl #3]
87800d92:	f64b 22dc 	movw	r2, #47836	; 0xbadc
87800d96:	f2c8 7280 	movt	r2, #34688	; 0x8780
87800d9a:	68fb      	ldr	r3, [r7, #12]
87800d9c:	00db      	lsls	r3, r3, #3
87800d9e:	4413      	add	r3, r2
87800da0:	685b      	ldr	r3, [r3, #4]
87800da2:	4619      	mov	r1, r3
87800da4:	68f8      	ldr	r0, [r7, #12]
87800da6:	47a0      	blx	r4
87800da8:	f64b 23d8 	movw	r3, #47832	; 0xbad8
87800dac:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800db0:	681b      	ldr	r3, [r3, #0]
87800db2:	1e5a      	subs	r2, r3, #1
87800db4:	f64b 23d8 	movw	r3, #47832	; 0xbad8
87800db8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800dbc:	601a      	str	r2, [r3, #0]
87800dbe:	3714      	adds	r7, #20
87800dc0:	46bd      	mov	sp, r7
87800dc2:	bd90      	pop	{r4, r7, pc}

87800dc4 <default_irqhandler>:
87800dc4:	b480      	push	{r7}
87800dc6:	b083      	sub	sp, #12
87800dc8:	af00      	add	r7, sp, #0
87800dca:	6078      	str	r0, [r7, #4]
87800dcc:	6039      	str	r1, [r7, #0]
87800dce:	e7fe      	b.n	87800dce <default_irqhandler+0xa>

87800dd0 <IOMUXC_SetPinMux>:
87800dd0:	b480      	push	{r7}
87800dd2:	b085      	sub	sp, #20
87800dd4:	af00      	add	r7, sp, #0
87800dd6:	60f8      	str	r0, [r7, #12]
87800dd8:	60b9      	str	r1, [r7, #8]
87800dda:	607a      	str	r2, [r7, #4]
87800ddc:	603b      	str	r3, [r7, #0]
87800dde:	68fb      	ldr	r3, [r7, #12]
87800de0:	68ba      	ldr	r2, [r7, #8]
87800de2:	f002 010f 	and.w	r1, r2, #15
87800de6:	69fa      	ldr	r2, [r7, #28]
87800de8:	0112      	lsls	r2, r2, #4
87800dea:	f002 0210 	and.w	r2, r2, #16
87800dee:	430a      	orrs	r2, r1
87800df0:	601a      	str	r2, [r3, #0]
87800df2:	687b      	ldr	r3, [r7, #4]
87800df4:	2b00      	cmp	r3, #0
87800df6:	d004      	beq.n	87800e02 <IOMUXC_SetPinMux+0x32>
87800df8:	687b      	ldr	r3, [r7, #4]
87800dfa:	683a      	ldr	r2, [r7, #0]
87800dfc:	f002 0207 	and.w	r2, r2, #7
87800e00:	601a      	str	r2, [r3, #0]
87800e02:	3714      	adds	r7, #20
87800e04:	46bd      	mov	sp, r7
87800e06:	f85d 7b04 	ldr.w	r7, [sp], #4
87800e0a:	4770      	bx	lr

87800e0c <IOMUXC_SetPinConfig>:
87800e0c:	b480      	push	{r7}
87800e0e:	b085      	sub	sp, #20
87800e10:	af00      	add	r7, sp, #0
87800e12:	60f8      	str	r0, [r7, #12]
87800e14:	60b9      	str	r1, [r7, #8]
87800e16:	607a      	str	r2, [r7, #4]
87800e18:	603b      	str	r3, [r7, #0]
87800e1a:	69bb      	ldr	r3, [r7, #24]
87800e1c:	2b00      	cmp	r3, #0
87800e1e:	d002      	beq.n	87800e26 <IOMUXC_SetPinConfig+0x1a>
87800e20:	69bb      	ldr	r3, [r7, #24]
87800e22:	69fa      	ldr	r2, [r7, #28]
87800e24:	601a      	str	r2, [r3, #0]
87800e26:	3714      	adds	r7, #20
87800e28:	46bd      	mov	sp, r7
87800e2a:	f85d 7b04 	ldr.w	r7, [sp], #4
87800e2e:	4770      	bx	lr

87800e30 <exit_init>:
87800e30:	b580      	push	{r7, lr}
87800e32:	b088      	sub	sp, #32
87800e34:	af02      	add	r7, sp, #8
87800e36:	2300      	movs	r3, #0
87800e38:	9301      	str	r3, [sp, #4]
87800e3a:	f44f 7346 	mov.w	r3, #792	; 0x318
87800e3e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800e42:	9300      	str	r3, [sp, #0]
87800e44:	2300      	movs	r3, #0
87800e46:	2200      	movs	r2, #0
87800e48:	2105      	movs	r1, #5
87800e4a:	208c      	movs	r0, #140	; 0x8c
87800e4c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800e50:	f7ff ffbe 	bl	87800dd0 <IOMUXC_SetPinMux>
87800e54:	f24f 0380 	movw	r3, #61568	; 0xf080
87800e58:	9301      	str	r3, [sp, #4]
87800e5a:	f44f 7346 	mov.w	r3, #792	; 0x318
87800e5e:	f2c0 230e 	movt	r3, #526	; 0x20e
87800e62:	9300      	str	r3, [sp, #0]
87800e64:	2300      	movs	r3, #0
87800e66:	2200      	movs	r2, #0
87800e68:	2105      	movs	r1, #5
87800e6a:	208c      	movs	r0, #140	; 0x8c
87800e6c:	f2c0 200e 	movt	r0, #526	; 0x20e
87800e70:	f7ff ffcc 	bl	87800e0c <IOMUXC_SetPinConfig>
87800e74:	2300      	movs	r3, #0
87800e76:	603b      	str	r3, [r7, #0]
87800e78:	2304      	movs	r3, #4
87800e7a:	60bb      	str	r3, [r7, #8]
87800e7c:	2301      	movs	r3, #1
87800e7e:	713b      	strb	r3, [r7, #4]
87800e80:	463b      	mov	r3, r7
87800e82:	461a      	mov	r2, r3
87800e84:	2112      	movs	r1, #18
87800e86:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800e8a:	f2c0 2009 	movt	r0, #521	; 0x209
87800e8e:	f7ff fdb3 	bl	878009f8 <gpio_init>
87800e92:	2363      	movs	r3, #99	; 0x63
87800e94:	617b      	str	r3, [r7, #20]
87800e96:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800e9a:	613b      	str	r3, [r7, #16]
87800e9c:	693b      	ldr	r3, [r7, #16]
87800e9e:	0c1b      	lsrs	r3, r3, #16
87800ea0:	041b      	lsls	r3, r3, #16
87800ea2:	60fb      	str	r3, [r7, #12]
87800ea4:	697b      	ldr	r3, [r7, #20]
87800ea6:	095a      	lsrs	r2, r3, #5
87800ea8:	697b      	ldr	r3, [r7, #20]
87800eaa:	f003 031f 	and.w	r3, r3, #31
87800eae:	2101      	movs	r1, #1
87800eb0:	4099      	lsls	r1, r3
87800eb2:	68fb      	ldr	r3, [r7, #12]
87800eb4:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800eb8:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800ebc:	2200      	movs	r2, #0
87800ebe:	f640 61e1 	movw	r1, #3809	; 0xee1
87800ec2:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800ec6:	2063      	movs	r0, #99	; 0x63
87800ec8:	f7ff ff24 	bl	87800d14 <system_register_irqhandler>
87800ecc:	2112      	movs	r1, #18
87800ece:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800ed2:	f2c0 2009 	movt	r0, #521	; 0x209
87800ed6:	f7ff fe79 	bl	87800bcc <gpio_enableint>
87800eda:	3718      	adds	r7, #24
87800edc:	46bd      	mov	sp, r7
87800ede:	bd80      	pop	{r7, pc}

87800ee0 <gpio1_io18_irqhandler>:
87800ee0:	b580      	push	{r7, lr}
87800ee2:	af00      	add	r7, sp, #0
87800ee4:	200a      	movs	r0, #10
87800ee6:	f7ff fc3f 	bl	87800768 <delay>
87800eea:	2112      	movs	r1, #18
87800eec:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800ef0:	f2c0 2009 	movt	r0, #521	; 0x209
87800ef4:	f7ff fdba 	bl	87800a6c <gpio_pinread>
87800ef8:	4603      	mov	r3, r0
87800efa:	2b00      	cmp	r3, #0
87800efc:	d117      	bne.n	87800f2e <gpio1_io18_irqhandler+0x4e>
87800efe:	f64b 73dc 	movw	r3, #49116	; 0xbfdc
87800f02:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800f06:	781b      	ldrb	r3, [r3, #0]
87800f08:	2b00      	cmp	r3, #0
87800f0a:	bf0c      	ite	eq
87800f0c:	2301      	moveq	r3, #1
87800f0e:	2300      	movne	r3, #0
87800f10:	b2db      	uxtb	r3, r3
87800f12:	461a      	mov	r2, r3
87800f14:	f64b 73dc 	movw	r3, #49116	; 0xbfdc
87800f18:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800f1c:	701a      	strb	r2, [r3, #0]
87800f1e:	f64b 73dc 	movw	r3, #49116	; 0xbfdc
87800f22:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800f26:	781b      	ldrb	r3, [r3, #0]
87800f28:	4618      	mov	r0, r3
87800f2a:	f7ff fc99 	bl	87800860 <beep_switch>
87800f2e:	2112      	movs	r1, #18
87800f30:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87800f34:	f2c0 2009 	movt	r0, #521	; 0x209
87800f38:	f7ff fe70 	bl	87800c1c <gpio_clearintflags>
87800f3c:	bd80      	pop	{r7, pc}
87800f3e:	bf00      	nop

87800f40 <epit1_init>:
87800f40:	b580      	push	{r7, lr}
87800f42:	b086      	sub	sp, #24
87800f44:	af00      	add	r7, sp, #0
87800f46:	6078      	str	r0, [r7, #4]
87800f48:	6039      	str	r1, [r7, #0]
87800f4a:	687b      	ldr	r3, [r7, #4]
87800f4c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
87800f50:	d302      	bcc.n	87800f58 <epit1_init+0x18>
87800f52:	f640 73ff 	movw	r3, #4095	; 0xfff
87800f56:	607b      	str	r3, [r7, #4]
87800f58:	2300      	movs	r3, #0
87800f5a:	f2c0 230d 	movt	r3, #525	; 0x20d
87800f5e:	2200      	movs	r2, #0
87800f60:	601a      	str	r2, [r3, #0]
87800f62:	2200      	movs	r2, #0
87800f64:	f2c0 220d 	movt	r2, #525	; 0x20d
87800f68:	687b      	ldr	r3, [r7, #4]
87800f6a:	011b      	lsls	r3, r3, #4
87800f6c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
87800f70:	f043 030e 	orr.w	r3, r3, #14
87800f74:	6013      	str	r3, [r2, #0]
87800f76:	2300      	movs	r3, #0
87800f78:	f2c0 230d 	movt	r3, #525	; 0x20d
87800f7c:	683a      	ldr	r2, [r7, #0]
87800f7e:	609a      	str	r2, [r3, #8]
87800f80:	2300      	movs	r3, #0
87800f82:	f2c0 230d 	movt	r3, #525	; 0x20d
87800f86:	2200      	movs	r2, #0
87800f88:	60da      	str	r2, [r3, #12]
87800f8a:	2358      	movs	r3, #88	; 0x58
87800f8c:	617b      	str	r3, [r7, #20]
87800f8e:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87800f92:	613b      	str	r3, [r7, #16]
87800f94:	693b      	ldr	r3, [r7, #16]
87800f96:	0c1b      	lsrs	r3, r3, #16
87800f98:	041b      	lsls	r3, r3, #16
87800f9a:	60fb      	str	r3, [r7, #12]
87800f9c:	697b      	ldr	r3, [r7, #20]
87800f9e:	095a      	lsrs	r2, r3, #5
87800fa0:	697b      	ldr	r3, [r7, #20]
87800fa2:	f003 031f 	and.w	r3, r3, #31
87800fa6:	2101      	movs	r1, #1
87800fa8:	4099      	lsls	r1, r3
87800faa:	68fb      	ldr	r3, [r7, #12]
87800fac:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87800fb0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87800fb4:	2200      	movs	r2, #0
87800fb6:	f640 71e1 	movw	r1, #4065	; 0xfe1
87800fba:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800fbe:	2058      	movs	r0, #88	; 0x58
87800fc0:	f7ff fea8 	bl	87800d14 <system_register_irqhandler>
87800fc4:	2300      	movs	r3, #0
87800fc6:	f2c0 230d 	movt	r3, #525	; 0x20d
87800fca:	2200      	movs	r2, #0
87800fcc:	f2c0 220d 	movt	r2, #525	; 0x20d
87800fd0:	6812      	ldr	r2, [r2, #0]
87800fd2:	f042 0201 	orr.w	r2, r2, #1
87800fd6:	601a      	str	r2, [r3, #0]
87800fd8:	3718      	adds	r7, #24
87800fda:	46bd      	mov	sp, r7
87800fdc:	bd80      	pop	{r7, pc}
87800fde:	bf00      	nop

87800fe0 <epit1_irqhandler>:
87800fe0:	b580      	push	{r7, lr}
87800fe2:	af00      	add	r7, sp, #0
87800fe4:	f64b 73dd 	movw	r3, #49117	; 0xbfdd
87800fe8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87800fec:	781b      	ldrb	r3, [r3, #0]
87800fee:	2b00      	cmp	r3, #0
87800ff0:	bf0c      	ite	eq
87800ff2:	2301      	moveq	r3, #1
87800ff4:	2300      	movne	r3, #0
87800ff6:	b2db      	uxtb	r3, r3
87800ff8:	461a      	mov	r2, r3
87800ffa:	f64b 73dd 	movw	r3, #49117	; 0xbfdd
87800ffe:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801002:	701a      	strb	r2, [r3, #0]
87801004:	2300      	movs	r3, #0
87801006:	f2c0 230d 	movt	r3, #525	; 0x20d
8780100a:	685b      	ldr	r3, [r3, #4]
8780100c:	f003 0301 	and.w	r3, r3, #1
87801010:	2b00      	cmp	r3, #0
87801012:	d008      	beq.n	87801026 <epit1_irqhandler+0x46>
87801014:	f64b 73dd 	movw	r3, #49117	; 0xbfdd
87801018:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780101c:	781b      	ldrb	r3, [r3, #0]
8780101e:	4619      	mov	r1, r3
87801020:	2000      	movs	r0, #0
87801022:	f7ff fad7 	bl	878005d4 <led_switch>
87801026:	2300      	movs	r3, #0
87801028:	f2c0 230d 	movt	r3, #525	; 0x20d
8780102c:	2200      	movs	r2, #0
8780102e:	f2c0 220d 	movt	r2, #525	; 0x20d
87801032:	6852      	ldr	r2, [r2, #4]
87801034:	f042 0201 	orr.w	r2, r2, #1
87801038:	605a      	str	r2, [r3, #4]
8780103a:	bd80      	pop	{r7, pc}

8780103c <IOMUXC_SetPinMux>:
8780103c:	b480      	push	{r7}
8780103e:	b085      	sub	sp, #20
87801040:	af00      	add	r7, sp, #0
87801042:	60f8      	str	r0, [r7, #12]
87801044:	60b9      	str	r1, [r7, #8]
87801046:	607a      	str	r2, [r7, #4]
87801048:	603b      	str	r3, [r7, #0]
8780104a:	68fb      	ldr	r3, [r7, #12]
8780104c:	68ba      	ldr	r2, [r7, #8]
8780104e:	f002 010f 	and.w	r1, r2, #15
87801052:	69fa      	ldr	r2, [r7, #28]
87801054:	0112      	lsls	r2, r2, #4
87801056:	f002 0210 	and.w	r2, r2, #16
8780105a:	430a      	orrs	r2, r1
8780105c:	601a      	str	r2, [r3, #0]
8780105e:	687b      	ldr	r3, [r7, #4]
87801060:	2b00      	cmp	r3, #0
87801062:	d004      	beq.n	8780106e <IOMUXC_SetPinMux+0x32>
87801064:	687b      	ldr	r3, [r7, #4]
87801066:	683a      	ldr	r2, [r7, #0]
87801068:	f002 0207 	and.w	r2, r2, #7
8780106c:	601a      	str	r2, [r3, #0]
8780106e:	3714      	adds	r7, #20
87801070:	46bd      	mov	sp, r7
87801072:	f85d 7b04 	ldr.w	r7, [sp], #4
87801076:	4770      	bx	lr

87801078 <IOMUXC_SetPinConfig>:
87801078:	b480      	push	{r7}
8780107a:	b085      	sub	sp, #20
8780107c:	af00      	add	r7, sp, #0
8780107e:	60f8      	str	r0, [r7, #12]
87801080:	60b9      	str	r1, [r7, #8]
87801082:	607a      	str	r2, [r7, #4]
87801084:	603b      	str	r3, [r7, #0]
87801086:	69bb      	ldr	r3, [r7, #24]
87801088:	2b00      	cmp	r3, #0
8780108a:	d002      	beq.n	87801092 <IOMUXC_SetPinConfig+0x1a>
8780108c:	69bb      	ldr	r3, [r7, #24]
8780108e:	69fa      	ldr	r2, [r7, #28]
87801090:	601a      	str	r2, [r3, #0]
87801092:	3714      	adds	r7, #20
87801094:	46bd      	mov	sp, r7
87801096:	f85d 7b04 	ldr.w	r7, [sp], #4
8780109a:	4770      	bx	lr

8780109c <filterkey_init>:
8780109c:	b580      	push	{r7, lr}
8780109e:	b088      	sub	sp, #32
878010a0:	af02      	add	r7, sp, #8
878010a2:	2300      	movs	r3, #0
878010a4:	9301      	str	r3, [sp, #4]
878010a6:	f44f 7346 	mov.w	r3, #792	; 0x318
878010aa:	f2c0 230e 	movt	r3, #526	; 0x20e
878010ae:	9300      	str	r3, [sp, #0]
878010b0:	2300      	movs	r3, #0
878010b2:	2200      	movs	r2, #0
878010b4:	2105      	movs	r1, #5
878010b6:	208c      	movs	r0, #140	; 0x8c
878010b8:	f2c0 200e 	movt	r0, #526	; 0x20e
878010bc:	f7ff ffbe 	bl	8780103c <IOMUXC_SetPinMux>
878010c0:	f24f 0380 	movw	r3, #61568	; 0xf080
878010c4:	9301      	str	r3, [sp, #4]
878010c6:	f44f 7346 	mov.w	r3, #792	; 0x318
878010ca:	f2c0 230e 	movt	r3, #526	; 0x20e
878010ce:	9300      	str	r3, [sp, #0]
878010d0:	2300      	movs	r3, #0
878010d2:	2200      	movs	r2, #0
878010d4:	2105      	movs	r1, #5
878010d6:	208c      	movs	r0, #140	; 0x8c
878010d8:	f2c0 200e 	movt	r0, #526	; 0x20e
878010dc:	f7ff ffcc 	bl	87801078 <IOMUXC_SetPinConfig>
878010e0:	2300      	movs	r3, #0
878010e2:	603b      	str	r3, [r7, #0]
878010e4:	2304      	movs	r3, #4
878010e6:	60bb      	str	r3, [r7, #8]
878010e8:	2301      	movs	r3, #1
878010ea:	713b      	strb	r3, [r7, #4]
878010ec:	463b      	mov	r3, r7
878010ee:	461a      	mov	r2, r3
878010f0:	2112      	movs	r1, #18
878010f2:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878010f6:	f2c0 2009 	movt	r0, #521	; 0x209
878010fa:	f7ff fc7d 	bl	878009f8 <gpio_init>
878010fe:	2363      	movs	r3, #99	; 0x63
87801100:	617b      	str	r3, [r7, #20]
87801102:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87801106:	613b      	str	r3, [r7, #16]
87801108:	693b      	ldr	r3, [r7, #16]
8780110a:	0c1b      	lsrs	r3, r3, #16
8780110c:	041b      	lsls	r3, r3, #16
8780110e:	60fb      	str	r3, [r7, #12]
87801110:	697b      	ldr	r3, [r7, #20]
87801112:	095a      	lsrs	r2, r3, #5
87801114:	697b      	ldr	r3, [r7, #20]
87801116:	f003 031f 	and.w	r3, r3, #31
8780111a:	2101      	movs	r1, #1
8780111c:	4099      	lsls	r1, r3
8780111e:	68fb      	ldr	r3, [r7, #12]
87801120:	f502 6288 	add.w	r2, r2, #1088	; 0x440
87801124:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
87801128:	2200      	movs	r2, #0
8780112a:	f241 21a5 	movw	r1, #4773	; 0x12a5
8780112e:	f2c8 7180 	movt	r1, #34688	; 0x8780
87801132:	2063      	movs	r0, #99	; 0x63
87801134:	f7ff fdee 	bl	87800d14 <system_register_irqhandler>
87801138:	2112      	movs	r1, #18
8780113a:	f44f 4040 	mov.w	r0, #49152	; 0xc000
8780113e:	f2c0 2009 	movt	r0, #521	; 0x209
87801142:	f7ff fd43 	bl	87800bcc <gpio_enableint>
87801146:	f44f 5091 	mov.w	r0, #4640	; 0x1220
8780114a:	f2c0 000a 	movt	r0, #10
8780114e:	f000 f803 	bl	87801158 <filtertimer_init>
87801152:	3718      	adds	r7, #24
87801154:	46bd      	mov	sp, r7
87801156:	bd80      	pop	{r7, pc}

87801158 <filtertimer_init>:
87801158:	b580      	push	{r7, lr}
8780115a:	b086      	sub	sp, #24
8780115c:	af00      	add	r7, sp, #0
8780115e:	6078      	str	r0, [r7, #4]
87801160:	2300      	movs	r3, #0
87801162:	f2c0 230d 	movt	r3, #525	; 0x20d
87801166:	2200      	movs	r2, #0
87801168:	601a      	str	r2, [r3, #0]
8780116a:	2300      	movs	r3, #0
8780116c:	f2c0 230d 	movt	r3, #525	; 0x20d
87801170:	220e      	movs	r2, #14
87801172:	f2c0 1200 	movt	r2, #256	; 0x100
87801176:	601a      	str	r2, [r3, #0]
87801178:	2300      	movs	r3, #0
8780117a:	f2c0 230d 	movt	r3, #525	; 0x20d
8780117e:	687a      	ldr	r2, [r7, #4]
87801180:	609a      	str	r2, [r3, #8]
87801182:	2300      	movs	r3, #0
87801184:	f2c0 230d 	movt	r3, #525	; 0x20d
87801188:	2200      	movs	r2, #0
8780118a:	60da      	str	r2, [r3, #12]
8780118c:	2358      	movs	r3, #88	; 0x58
8780118e:	617b      	str	r3, [r7, #20]
87801190:	ee9f 3f10 	mrc	15, 4, r3, cr15, cr0, {0}
87801194:	613b      	str	r3, [r7, #16]
87801196:	693b      	ldr	r3, [r7, #16]
87801198:	0c1b      	lsrs	r3, r3, #16
8780119a:	041b      	lsls	r3, r3, #16
8780119c:	60fb      	str	r3, [r7, #12]
8780119e:	697b      	ldr	r3, [r7, #20]
878011a0:	095a      	lsrs	r2, r3, #5
878011a2:	697b      	ldr	r3, [r7, #20]
878011a4:	f003 031f 	and.w	r3, r3, #31
878011a8:	2101      	movs	r1, #1
878011aa:	4099      	lsls	r1, r3
878011ac:	68fb      	ldr	r3, [r7, #12]
878011ae:	f502 6288 	add.w	r2, r2, #1088	; 0x440
878011b2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
878011b6:	2200      	movs	r2, #0
878011b8:	f241 2131 	movw	r1, #4657	; 0x1231
878011bc:	f2c8 7180 	movt	r1, #34688	; 0x8780
878011c0:	2058      	movs	r0, #88	; 0x58
878011c2:	f7ff fda7 	bl	87800d14 <system_register_irqhandler>
878011c6:	3718      	adds	r7, #24
878011c8:	46bd      	mov	sp, r7
878011ca:	bd80      	pop	{r7, pc}

878011cc <filtertimer_stop>:
878011cc:	b480      	push	{r7}
878011ce:	af00      	add	r7, sp, #0
878011d0:	2300      	movs	r3, #0
878011d2:	f2c0 230d 	movt	r3, #525	; 0x20d
878011d6:	2200      	movs	r2, #0
878011d8:	f2c0 220d 	movt	r2, #525	; 0x20d
878011dc:	6812      	ldr	r2, [r2, #0]
878011de:	f022 0201 	bic.w	r2, r2, #1
878011e2:	601a      	str	r2, [r3, #0]
878011e4:	46bd      	mov	sp, r7
878011e6:	f85d 7b04 	ldr.w	r7, [sp], #4
878011ea:	4770      	bx	lr

878011ec <filtertimer_restart>:
878011ec:	b480      	push	{r7}
878011ee:	b083      	sub	sp, #12
878011f0:	af00      	add	r7, sp, #0
878011f2:	6078      	str	r0, [r7, #4]
878011f4:	2300      	movs	r3, #0
878011f6:	f2c0 230d 	movt	r3, #525	; 0x20d
878011fa:	2200      	movs	r2, #0
878011fc:	f2c0 220d 	movt	r2, #525	; 0x20d
87801200:	6812      	ldr	r2, [r2, #0]
87801202:	f022 0201 	bic.w	r2, r2, #1
87801206:	601a      	str	r2, [r3, #0]
87801208:	2300      	movs	r3, #0
8780120a:	f2c0 230d 	movt	r3, #525	; 0x20d
8780120e:	687a      	ldr	r2, [r7, #4]
87801210:	609a      	str	r2, [r3, #8]
87801212:	2300      	movs	r3, #0
87801214:	f2c0 230d 	movt	r3, #525	; 0x20d
87801218:	2200      	movs	r2, #0
8780121a:	f2c0 220d 	movt	r2, #525	; 0x20d
8780121e:	6812      	ldr	r2, [r2, #0]
87801220:	f042 0201 	orr.w	r2, r2, #1
87801224:	601a      	str	r2, [r3, #0]
87801226:	370c      	adds	r7, #12
87801228:	46bd      	mov	sp, r7
8780122a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780122e:	4770      	bx	lr

87801230 <filtertimer_irqhandler>:
87801230:	b580      	push	{r7, lr}
87801232:	af00      	add	r7, sp, #0
87801234:	2300      	movs	r3, #0
87801236:	f2c0 230d 	movt	r3, #525	; 0x20d
8780123a:	685b      	ldr	r3, [r3, #4]
8780123c:	f003 0301 	and.w	r3, r3, #1
87801240:	2b00      	cmp	r3, #0
87801242:	d023      	beq.n	8780128c <filtertimer_irqhandler+0x5c>
87801244:	f7ff ffc2 	bl	878011cc <filtertimer_stop>
87801248:	2112      	movs	r1, #18
8780124a:	f44f 4040 	mov.w	r0, #49152	; 0xc000
8780124e:	f2c0 2009 	movt	r0, #521	; 0x209
87801252:	f7ff fc0b 	bl	87800a6c <gpio_pinread>
87801256:	4603      	mov	r3, r0
87801258:	2b00      	cmp	r3, #0
8780125a:	d117      	bne.n	8780128c <filtertimer_irqhandler+0x5c>
8780125c:	f64b 73de 	movw	r3, #49118	; 0xbfde
87801260:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801264:	781b      	ldrb	r3, [r3, #0]
87801266:	2b00      	cmp	r3, #0
87801268:	bf0c      	ite	eq
8780126a:	2301      	moveq	r3, #1
8780126c:	2300      	movne	r3, #0
8780126e:	b2db      	uxtb	r3, r3
87801270:	461a      	mov	r2, r3
87801272:	f64b 73de 	movw	r3, #49118	; 0xbfde
87801276:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780127a:	701a      	strb	r2, [r3, #0]
8780127c:	f64b 73de 	movw	r3, #49118	; 0xbfde
87801280:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801284:	781b      	ldrb	r3, [r3, #0]
87801286:	4618      	mov	r0, r3
87801288:	f7ff faea 	bl	87800860 <beep_switch>
8780128c:	2300      	movs	r3, #0
8780128e:	f2c0 230d 	movt	r3, #525	; 0x20d
87801292:	2200      	movs	r2, #0
87801294:	f2c0 220d 	movt	r2, #525	; 0x20d
87801298:	6852      	ldr	r2, [r2, #4]
8780129a:	f042 0201 	orr.w	r2, r2, #1
8780129e:	605a      	str	r2, [r3, #4]
878012a0:	bd80      	pop	{r7, pc}
878012a2:	bf00      	nop

878012a4 <gpio1_16_31_irqhandler>:
878012a4:	b580      	push	{r7, lr}
878012a6:	af00      	add	r7, sp, #0
878012a8:	f44f 5091 	mov.w	r0, #4640	; 0x1220
878012ac:	f2c0 000a 	movt	r0, #10
878012b0:	f7ff ff9c 	bl	878011ec <filtertimer_restart>
878012b4:	2112      	movs	r1, #18
878012b6:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878012ba:	f2c0 2009 	movt	r0, #521	; 0x209
878012be:	f7ff fcad 	bl	87800c1c <gpio_clearintflags>
878012c2:	bd80      	pop	{r7, pc}

878012c4 <IOMUXC_SetPinMux>:
878012c4:	b480      	push	{r7}
878012c6:	b085      	sub	sp, #20
878012c8:	af00      	add	r7, sp, #0
878012ca:	60f8      	str	r0, [r7, #12]
878012cc:	60b9      	str	r1, [r7, #8]
878012ce:	607a      	str	r2, [r7, #4]
878012d0:	603b      	str	r3, [r7, #0]
878012d2:	68fb      	ldr	r3, [r7, #12]
878012d4:	68ba      	ldr	r2, [r7, #8]
878012d6:	f002 010f 	and.w	r1, r2, #15
878012da:	69fa      	ldr	r2, [r7, #28]
878012dc:	0112      	lsls	r2, r2, #4
878012de:	f002 0210 	and.w	r2, r2, #16
878012e2:	430a      	orrs	r2, r1
878012e4:	601a      	str	r2, [r3, #0]
878012e6:	687b      	ldr	r3, [r7, #4]
878012e8:	2b00      	cmp	r3, #0
878012ea:	d004      	beq.n	878012f6 <IOMUXC_SetPinMux+0x32>
878012ec:	687b      	ldr	r3, [r7, #4]
878012ee:	683a      	ldr	r2, [r7, #0]
878012f0:	f002 0207 	and.w	r2, r2, #7
878012f4:	601a      	str	r2, [r3, #0]
878012f6:	3714      	adds	r7, #20
878012f8:	46bd      	mov	sp, r7
878012fa:	f85d 7b04 	ldr.w	r7, [sp], #4
878012fe:	4770      	bx	lr

87801300 <IOMUXC_SetPinConfig>:
87801300:	b480      	push	{r7}
87801302:	b085      	sub	sp, #20
87801304:	af00      	add	r7, sp, #0
87801306:	60f8      	str	r0, [r7, #12]
87801308:	60b9      	str	r1, [r7, #8]
8780130a:	607a      	str	r2, [r7, #4]
8780130c:	603b      	str	r3, [r7, #0]
8780130e:	69bb      	ldr	r3, [r7, #24]
87801310:	2b00      	cmp	r3, #0
87801312:	d002      	beq.n	8780131a <IOMUXC_SetPinConfig+0x1a>
87801314:	69bb      	ldr	r3, [r7, #24]
87801316:	69fa      	ldr	r2, [r7, #28]
87801318:	601a      	str	r2, [r3, #0]
8780131a:	3714      	adds	r7, #20
8780131c:	46bd      	mov	sp, r7
8780131e:	f85d 7b04 	ldr.w	r7, [sp], #4
87801322:	4770      	bx	lr

87801324 <uart_init>:
87801324:	b580      	push	{r7, lr}
87801326:	af00      	add	r7, sp, #0
87801328:	f000 f850 	bl	878013cc <uart_io_init>
8780132c:	2000      	movs	r0, #0
8780132e:	f2c0 2002 	movt	r0, #514	; 0x202
87801332:	f000 f9f1 	bl	87801718 <uart_disable>
87801336:	2000      	movs	r0, #0
87801338:	f2c0 2002 	movt	r0, #514	; 0x202
8780133c:	f000 fa10 	bl	87801760 <uart_softreset>
87801340:	2300      	movs	r3, #0
87801342:	f2c0 2302 	movt	r3, #514	; 0x202
87801346:	2200      	movs	r2, #0
87801348:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
8780134c:	2200      	movs	r2, #0
8780134e:	f2c0 2202 	movt	r2, #514	; 0x202
87801352:	2300      	movs	r3, #0
87801354:	f2c0 2302 	movt	r3, #514	; 0x202
87801358:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
8780135c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
87801360:	f043 0326 	orr.w	r3, r3, #38	; 0x26
87801364:	f8c2 3084 	str.w	r3, [r2, #132]	; 0x84
87801368:	2300      	movs	r3, #0
8780136a:	f2c0 2302 	movt	r3, #514	; 0x202
8780136e:	2200      	movs	r2, #0
87801370:	f2c0 2202 	movt	r2, #514	; 0x202
87801374:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
87801378:	f042 0204 	orr.w	r2, r2, #4
8780137c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
87801380:	2300      	movs	r3, #0
87801382:	f2c0 2302 	movt	r3, #514	; 0x202
87801386:	2200      	movs	r2, #0
87801388:	f2c0 2202 	movt	r2, #514	; 0x202
8780138c:	f8d2 2080 	ldr.w	r2, [r2, #128]	; 0x80
87801390:	f422 4280 	bic.w	r2, r2, #16384	; 0x4000
87801394:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
87801398:	2300      	movs	r3, #0
8780139a:	f2c0 2302 	movt	r3, #514	; 0x202
8780139e:	f44f 7220 	mov.w	r2, #640	; 0x280
878013a2:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
878013a6:	2300      	movs	r3, #0
878013a8:	f2c0 2302 	movt	r3, #514	; 0x202
878013ac:	2247      	movs	r2, #71	; 0x47
878013ae:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
878013b2:	2300      	movs	r3, #0
878013b4:	f2c0 2302 	movt	r3, #514	; 0x202
878013b8:	f640 4234 	movw	r2, #3124	; 0xc34
878013bc:	f8c3 20a8 	str.w	r2, [r3, #168]	; 0xa8
878013c0:	2000      	movs	r0, #0
878013c2:	f2c0 2002 	movt	r0, #514	; 0x202
878013c6:	f000 f9b9 	bl	8780173c <uart_enable>
878013ca:	bd80      	pop	{r7, pc}

878013cc <uart_io_init>:
878013cc:	b580      	push	{r7, lr}
878013ce:	b082      	sub	sp, #8
878013d0:	af02      	add	r7, sp, #8
878013d2:	2300      	movs	r3, #0
878013d4:	9301      	str	r3, [sp, #4]
878013d6:	f44f 7344 	mov.w	r3, #784	; 0x310
878013da:	f2c0 230e 	movt	r3, #526	; 0x20e
878013de:	9300      	str	r3, [sp, #0]
878013e0:	2300      	movs	r3, #0
878013e2:	2200      	movs	r2, #0
878013e4:	2100      	movs	r1, #0
878013e6:	2084      	movs	r0, #132	; 0x84
878013e8:	f2c0 200e 	movt	r0, #526	; 0x20e
878013ec:	f7ff ff6a 	bl	878012c4 <IOMUXC_SetPinMux>
878013f0:	2300      	movs	r3, #0
878013f2:	9301      	str	r3, [sp, #4]
878013f4:	f44f 7345 	mov.w	r3, #788	; 0x314
878013f8:	f2c0 230e 	movt	r3, #526	; 0x20e
878013fc:	9300      	str	r3, [sp, #0]
878013fe:	2303      	movs	r3, #3
87801400:	f240 6224 	movw	r2, #1572	; 0x624
87801404:	f2c0 220e 	movt	r2, #526	; 0x20e
87801408:	2100      	movs	r1, #0
8780140a:	2088      	movs	r0, #136	; 0x88
8780140c:	f2c0 200e 	movt	r0, #526	; 0x20e
87801410:	f7ff ff58 	bl	878012c4 <IOMUXC_SetPinMux>
87801414:	f241 03b0 	movw	r3, #4272	; 0x10b0
87801418:	9301      	str	r3, [sp, #4]
8780141a:	f44f 7344 	mov.w	r3, #784	; 0x310
8780141e:	f2c0 230e 	movt	r3, #526	; 0x20e
87801422:	9300      	str	r3, [sp, #0]
87801424:	2300      	movs	r3, #0
87801426:	2200      	movs	r2, #0
87801428:	2100      	movs	r1, #0
8780142a:	2084      	movs	r0, #132	; 0x84
8780142c:	f2c0 200e 	movt	r0, #526	; 0x20e
87801430:	f7ff ff66 	bl	87801300 <IOMUXC_SetPinConfig>
87801434:	f241 03b0 	movw	r3, #4272	; 0x10b0
87801438:	9301      	str	r3, [sp, #4]
8780143a:	f44f 7345 	mov.w	r3, #788	; 0x314
8780143e:	f2c0 230e 	movt	r3, #526	; 0x20e
87801442:	9300      	str	r3, [sp, #0]
87801444:	2303      	movs	r3, #3
87801446:	f240 6224 	movw	r2, #1572	; 0x624
8780144a:	f2c0 220e 	movt	r2, #526	; 0x20e
8780144e:	2100      	movs	r1, #0
87801450:	2088      	movs	r0, #136	; 0x88
87801452:	f2c0 200e 	movt	r0, #526	; 0x20e
87801456:	f7ff ff53 	bl	87801300 <IOMUXC_SetPinConfig>
8780145a:	46bd      	mov	sp, r7
8780145c:	bd80      	pop	{r7, pc}
8780145e:	bf00      	nop

87801460 <uart_setbaudrate>:
87801460:	b590      	push	{r4, r7, lr}
87801462:	b093      	sub	sp, #76	; 0x4c
87801464:	af00      	add	r7, sp, #0
87801466:	60f8      	str	r0, [r7, #12]
87801468:	60b9      	str	r1, [r7, #8]
8780146a:	607a      	str	r2, [r7, #4]
8780146c:	2300      	movs	r3, #0
8780146e:	647b      	str	r3, [r7, #68]	; 0x44
87801470:	2300      	movs	r3, #0
87801472:	643b      	str	r3, [r7, #64]	; 0x40
87801474:	2300      	movs	r3, #0
87801476:	63fb      	str	r3, [r7, #60]	; 0x3c
87801478:	2300      	movs	r3, #0
8780147a:	63bb      	str	r3, [r7, #56]	; 0x38
8780147c:	2301      	movs	r3, #1
8780147e:	62bb      	str	r3, [r7, #40]	; 0x28
87801480:	f04f 0300 	mov.w	r3, #0
87801484:	f04f 0400 	mov.w	r4, #0
87801488:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780148c:	f04f 0300 	mov.w	r3, #0
87801490:	f04f 0400 	mov.w	r4, #0
87801494:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
87801498:	2300      	movs	r3, #0
8780149a:	62fb      	str	r3, [r7, #44]	; 0x2c
8780149c:	687b      	ldr	r3, [r7, #4]
8780149e:	647b      	str	r3, [r7, #68]	; 0x44
878014a0:	68bb      	ldr	r3, [r7, #8]
878014a2:	011b      	lsls	r3, r3, #4
878014a4:	643b      	str	r3, [r7, #64]	; 0x40
878014a6:	2301      	movs	r3, #1
878014a8:	63fb      	str	r3, [r7, #60]	; 0x3c
878014aa:	e00a      	b.n	878014c2 <uart_setbaudrate+0x62>
878014ac:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878014ae:	63fb      	str	r3, [r7, #60]	; 0x3c
878014b0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878014b2:	6c39      	ldr	r1, [r7, #64]	; 0x40
878014b4:	4618      	mov	r0, r3
878014b6:	f005 fbe9 	bl	87806c8c <__aeabi_uidivmod>
878014ba:	460b      	mov	r3, r1
878014bc:	643b      	str	r3, [r7, #64]	; 0x40
878014be:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878014c0:	647b      	str	r3, [r7, #68]	; 0x44
878014c2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878014c4:	2b00      	cmp	r3, #0
878014c6:	d1f1      	bne.n	878014ac <uart_setbaudrate+0x4c>
878014c8:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
878014ca:	6878      	ldr	r0, [r7, #4]
878014cc:	f005 fab0 	bl	87806a30 <__aeabi_uidiv>
878014d0:	4603      	mov	r3, r0
878014d2:	647b      	str	r3, [r7, #68]	; 0x44
878014d4:	68bb      	ldr	r3, [r7, #8]
878014d6:	011b      	lsls	r3, r3, #4
878014d8:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
878014da:	4618      	mov	r0, r3
878014dc:	f005 faa8 	bl	87806a30 <__aeabi_uidiv>
878014e0:	4603      	mov	r3, r0
878014e2:	643b      	str	r3, [r7, #64]	; 0x40
878014e4:	6c7a      	ldr	r2, [r7, #68]	; 0x44
878014e6:	f64f 73f9 	movw	r3, #65529	; 0xfff9
878014ea:	f2c0 0306 	movt	r3, #6
878014ee:	429a      	cmp	r2, r3
878014f0:	d803      	bhi.n	878014fa <uart_setbaudrate+0x9a>
878014f2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878014f4:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
878014f8:	d334      	bcc.n	87801564 <uart_setbaudrate+0x104>
878014fa:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878014fc:	1e5a      	subs	r2, r3, #1
878014fe:	f646 53b9 	movw	r3, #28089	; 0x6db9
87801502:	f2c2 4393 	movt	r3, #9363	; 0x2493
87801506:	fba2 3403 	umull	r3, r4, r2, r3
8780150a:	1b12      	subs	r2, r2, r4
8780150c:	0852      	lsrs	r2, r2, #1
8780150e:	1913      	adds	r3, r2, r4
87801510:	0c9b      	lsrs	r3, r3, #18
87801512:	3301      	adds	r3, #1
87801514:	61fb      	str	r3, [r7, #28]
87801516:	6c3b      	ldr	r3, [r7, #64]	; 0x40
87801518:	1e5a      	subs	r2, r3, #1
8780151a:	f248 0301 	movw	r3, #32769	; 0x8001
8780151e:	f2c8 0300 	movt	r3, #32768	; 0x8000
87801522:	fba2 3403 	umull	r3, r4, r2, r3
87801526:	0be3      	lsrs	r3, r4, #15
87801528:	3301      	adds	r3, #1
8780152a:	61bb      	str	r3, [r7, #24]
8780152c:	69ba      	ldr	r2, [r7, #24]
8780152e:	69fb      	ldr	r3, [r7, #28]
87801530:	4293      	cmp	r3, r2
87801532:	bf38      	it	cc
87801534:	4613      	movcc	r3, r2
87801536:	617b      	str	r3, [r7, #20]
87801538:	6979      	ldr	r1, [r7, #20]
8780153a:	6c78      	ldr	r0, [r7, #68]	; 0x44
8780153c:	f005 fa78 	bl	87806a30 <__aeabi_uidiv>
87801540:	4603      	mov	r3, r0
87801542:	647b      	str	r3, [r7, #68]	; 0x44
87801544:	6979      	ldr	r1, [r7, #20]
87801546:	6c38      	ldr	r0, [r7, #64]	; 0x40
87801548:	f005 fa72 	bl	87806a30 <__aeabi_uidiv>
8780154c:	4603      	mov	r3, r0
8780154e:	643b      	str	r3, [r7, #64]	; 0x40
87801550:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87801552:	2b00      	cmp	r3, #0
87801554:	d101      	bne.n	8780155a <uart_setbaudrate+0xfa>
87801556:	2301      	movs	r3, #1
87801558:	647b      	str	r3, [r7, #68]	; 0x44
8780155a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
8780155c:	2b00      	cmp	r3, #0
8780155e:	d101      	bne.n	87801564 <uart_setbaudrate+0x104>
87801560:	2301      	movs	r3, #1
87801562:	643b      	str	r3, [r7, #64]	; 0x40
87801564:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87801566:	1e5a      	subs	r2, r3, #1
87801568:	f248 0301 	movw	r3, #32769	; 0x8001
8780156c:	f2c8 0300 	movt	r3, #32768	; 0x8000
87801570:	fba2 3403 	umull	r3, r4, r2, r3
87801574:	0be3      	lsrs	r3, r4, #15
87801576:	3301      	adds	r3, #1
87801578:	62bb      	str	r3, [r7, #40]	; 0x28
8780157a:	6abb      	ldr	r3, [r7, #40]	; 0x28
8780157c:	3b01      	subs	r3, #1
8780157e:	2b06      	cmp	r3, #6
87801580:	d825      	bhi.n	878015ce <uart_setbaudrate+0x16e>
87801582:	a201      	add	r2, pc, #4	; (adr r2, 87801588 <uart_setbaudrate+0x128>)
87801584:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87801588:	878015a5 	strhi	r1, [r0, r5, lsr #11]
8780158c:	878015ab 	strhi	r1, [r0, fp, lsr #11]
87801590:	878015b1 			; <UNDEFINED> instruction: 0x878015b1
87801594:	878015b7 			; <UNDEFINED> instruction: 0x878015b7
87801598:	878015bd 			; <UNDEFINED> instruction: 0x878015bd
8780159c:	878015c3 	strhi	r1, [r0, r3, asr #11]
878015a0:	878015c9 	strhi	r1, [r0, r9, asr #11]
878015a4:	2305      	movs	r3, #5
878015a6:	63bb      	str	r3, [r7, #56]	; 0x38
878015a8:	e014      	b.n	878015d4 <uart_setbaudrate+0x174>
878015aa:	2304      	movs	r3, #4
878015ac:	63bb      	str	r3, [r7, #56]	; 0x38
878015ae:	e011      	b.n	878015d4 <uart_setbaudrate+0x174>
878015b0:	2303      	movs	r3, #3
878015b2:	63bb      	str	r3, [r7, #56]	; 0x38
878015b4:	e00e      	b.n	878015d4 <uart_setbaudrate+0x174>
878015b6:	2302      	movs	r3, #2
878015b8:	63bb      	str	r3, [r7, #56]	; 0x38
878015ba:	e00b      	b.n	878015d4 <uart_setbaudrate+0x174>
878015bc:	2301      	movs	r3, #1
878015be:	63bb      	str	r3, [r7, #56]	; 0x38
878015c0:	e008      	b.n	878015d4 <uart_setbaudrate+0x174>
878015c2:	2300      	movs	r3, #0
878015c4:	63bb      	str	r3, [r7, #56]	; 0x38
878015c6:	e005      	b.n	878015d4 <uart_setbaudrate+0x174>
878015c8:	2306      	movs	r3, #6
878015ca:	63bb      	str	r3, [r7, #56]	; 0x38
878015cc:	e002      	b.n	878015d4 <uart_setbaudrate+0x174>
878015ce:	2305      	movs	r3, #5
878015d0:	63bb      	str	r3, [r7, #56]	; 0x38
878015d2:	bf00      	nop
878015d4:	687b      	ldr	r3, [r7, #4]
878015d6:	f04f 0400 	mov.w	r4, #0
878015da:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
878015de:	6c7b      	ldr	r3, [r7, #68]	; 0x44
878015e0:	011b      	lsls	r3, r3, #4
878015e2:	62fb      	str	r3, [r7, #44]	; 0x2c
878015e4:	2301      	movs	r3, #1
878015e6:	63fb      	str	r3, [r7, #60]	; 0x3c
878015e8:	e012      	b.n	87801610 <uart_setbaudrate+0x1b0>
878015ea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878015ec:	63fb      	str	r3, [r7, #60]	; 0x3c
878015ee:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878015f0:	f04f 0400 	mov.w	r4, #0
878015f4:	e9d7 010c 	ldrd	r0, r1, [r7, #48]	; 0x30
878015f8:	461a      	mov	r2, r3
878015fa:	4623      	mov	r3, r4
878015fc:	f005 fb54 	bl	87806ca8 <__aeabi_uldivmod>
87801600:	461c      	mov	r4, r3
87801602:	4613      	mov	r3, r2
87801604:	62fb      	str	r3, [r7, #44]	; 0x2c
87801606:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87801608:	f04f 0400 	mov.w	r4, #0
8780160c:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
87801610:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87801612:	2b00      	cmp	r3, #0
87801614:	d1e9      	bne.n	878015ea <uart_setbaudrate+0x18a>
87801616:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
87801618:	6878      	ldr	r0, [r7, #4]
8780161a:	f005 fa09 	bl	87806a30 <__aeabi_uidiv>
8780161e:	4603      	mov	r3, r0
87801620:	f04f 0400 	mov.w	r4, #0
87801624:	e9c7 340c 	strd	r3, r4, [r7, #48]	; 0x30
87801628:	6c7b      	ldr	r3, [r7, #68]	; 0x44
8780162a:	011b      	lsls	r3, r3, #4
8780162c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
8780162e:	4618      	mov	r0, r3
87801630:	f005 f9fe 	bl	87806a30 <__aeabi_uidiv>
87801634:	4603      	mov	r3, r0
87801636:	62fb      	str	r3, [r7, #44]	; 0x2c
87801638:	6c3b      	ldr	r3, [r7, #64]	; 0x40
8780163a:	f04f 0400 	mov.w	r4, #0
8780163e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
87801640:	fb04 f102 	mul.w	r1, r4, r2
87801644:	6b7a      	ldr	r2, [r7, #52]	; 0x34
87801646:	fb03 f202 	mul.w	r2, r3, r2
8780164a:	440a      	add	r2, r1
8780164c:	6b39      	ldr	r1, [r7, #48]	; 0x30
8780164e:	fba1 0103 	umull	r0, r1, r1, r3
87801652:	1853      	adds	r3, r2, r1
87801654:	4619      	mov	r1, r3
87801656:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87801658:	f04f 0400 	mov.w	r4, #0
8780165c:	461a      	mov	r2, r3
8780165e:	4623      	mov	r3, r4
87801660:	f005 fb22 	bl	87806ca8 <__aeabi_uldivmod>
87801664:	4603      	mov	r3, r0
87801666:	460c      	mov	r4, r1
87801668:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780166c:	68bb      	ldr	r3, [r7, #8]
8780166e:	f04f 0400 	mov.w	r4, #0
87801672:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
87801676:	42a2      	cmp	r2, r4
87801678:	bf08      	it	eq
8780167a:	4299      	cmpeq	r1, r3
8780167c:	d308      	bcc.n	87801690 <uart_setbaudrate+0x230>
8780167e:	68bb      	ldr	r3, [r7, #8]
87801680:	f04f 0400 	mov.w	r4, #0
87801684:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
87801688:	1acb      	subs	r3, r1, r3
8780168a:	eb62 0404 	sbc.w	r4, r2, r4
8780168e:	e008      	b.n	878016a2 <uart_setbaudrate+0x242>
87801690:	68bb      	ldr	r3, [r7, #8]
87801692:	4619      	mov	r1, r3
87801694:	f04f 0200 	mov.w	r2, #0
87801698:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
8780169c:	1acb      	subs	r3, r1, r3
8780169e:	eb62 0404 	sbc.w	r4, r2, r4
878016a2:	e9c7 3408 	strd	r3, r4, [r7, #32]
878016a6:	68ba      	ldr	r2, [r7, #8]
878016a8:	f248 531f 	movw	r3, #34079	; 0x851f
878016ac:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
878016b0:	fba2 3403 	umull	r3, r4, r2, r3
878016b4:	0962      	lsrs	r2, r4, #5
878016b6:	4613      	mov	r3, r2
878016b8:	005b      	lsls	r3, r3, #1
878016ba:	4413      	add	r3, r2
878016bc:	f04f 0400 	mov.w	r4, #0
878016c0:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
878016c4:	42a2      	cmp	r2, r4
878016c6:	bf08      	it	eq
878016c8:	4299      	cmpeq	r1, r3
878016ca:	d222      	bcs.n	87801712 <uart_setbaudrate+0x2b2>
878016cc:	68fb      	ldr	r3, [r7, #12]
878016ce:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
878016d2:	f423 7260 	bic.w	r2, r3, #896	; 0x380
878016d6:	68fb      	ldr	r3, [r7, #12]
878016d8:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
878016dc:	68fb      	ldr	r3, [r7, #12]
878016de:	f8d3 2090 	ldr.w	r2, [r3, #144]	; 0x90
878016e2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878016e4:	01db      	lsls	r3, r3, #7
878016e6:	f403 7360 	and.w	r3, r3, #896	; 0x380
878016ea:	431a      	orrs	r2, r3
878016ec:	68fb      	ldr	r3, [r7, #12]
878016ee:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
878016f2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
878016f4:	3b01      	subs	r3, #1
878016f6:	b29a      	uxth	r2, r3
878016f8:	68fb      	ldr	r3, [r7, #12]
878016fa:	f8c3 20a4 	str.w	r2, [r3, #164]	; 0xa4
878016fe:	6ab9      	ldr	r1, [r7, #40]	; 0x28
87801700:	6c78      	ldr	r0, [r7, #68]	; 0x44
87801702:	f005 f995 	bl	87806a30 <__aeabi_uidiv>
87801706:	4603      	mov	r3, r0
87801708:	3b01      	subs	r3, #1
8780170a:	b29a      	uxth	r2, r3
8780170c:	68fb      	ldr	r3, [r7, #12]
8780170e:	f8c3 20a8 	str.w	r2, [r3, #168]	; 0xa8
87801712:	374c      	adds	r7, #76	; 0x4c
87801714:	46bd      	mov	sp, r7
87801716:	bd90      	pop	{r4, r7, pc}

87801718 <uart_disable>:
87801718:	b480      	push	{r7}
8780171a:	b083      	sub	sp, #12
8780171c:	af00      	add	r7, sp, #0
8780171e:	6078      	str	r0, [r7, #4]
87801720:	687b      	ldr	r3, [r7, #4]
87801722:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
87801726:	f023 0201 	bic.w	r2, r3, #1
8780172a:	687b      	ldr	r3, [r7, #4]
8780172c:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
87801730:	370c      	adds	r7, #12
87801732:	46bd      	mov	sp, r7
87801734:	f85d 7b04 	ldr.w	r7, [sp], #4
87801738:	4770      	bx	lr
8780173a:	bf00      	nop

8780173c <uart_enable>:
8780173c:	b480      	push	{r7}
8780173e:	b083      	sub	sp, #12
87801740:	af00      	add	r7, sp, #0
87801742:	6078      	str	r0, [r7, #4]
87801744:	687b      	ldr	r3, [r7, #4]
87801746:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
8780174a:	f043 0201 	orr.w	r2, r3, #1
8780174e:	687b      	ldr	r3, [r7, #4]
87801750:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
87801754:	370c      	adds	r7, #12
87801756:	46bd      	mov	sp, r7
87801758:	f85d 7b04 	ldr.w	r7, [sp], #4
8780175c:	4770      	bx	lr
8780175e:	bf00      	nop

87801760 <uart_softreset>:
87801760:	b480      	push	{r7}
87801762:	b083      	sub	sp, #12
87801764:	af00      	add	r7, sp, #0
87801766:	6078      	str	r0, [r7, #4]
87801768:	687b      	ldr	r3, [r7, #4]
8780176a:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
8780176e:	f023 0201 	bic.w	r2, r3, #1
87801772:	687b      	ldr	r3, [r7, #4]
87801774:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
87801778:	bf00      	nop
8780177a:	687b      	ldr	r3, [r7, #4]
8780177c:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
87801780:	f003 0301 	and.w	r3, r3, #1
87801784:	2b00      	cmp	r3, #0
87801786:	d0f8      	beq.n	8780177a <uart_softreset+0x1a>
87801788:	370c      	adds	r7, #12
8780178a:	46bd      	mov	sp, r7
8780178c:	f85d 7b04 	ldr.w	r7, [sp], #4
87801790:	4770      	bx	lr
87801792:	bf00      	nop

87801794 <putc>:
87801794:	b480      	push	{r7}
87801796:	b083      	sub	sp, #12
87801798:	af00      	add	r7, sp, #0
8780179a:	4603      	mov	r3, r0
8780179c:	71fb      	strb	r3, [r7, #7]
8780179e:	bf00      	nop
878017a0:	2300      	movs	r3, #0
878017a2:	f2c0 2302 	movt	r3, #514	; 0x202
878017a6:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
878017aa:	08db      	lsrs	r3, r3, #3
878017ac:	f003 0301 	and.w	r3, r3, #1
878017b0:	2b00      	cmp	r3, #0
878017b2:	d0f5      	beq.n	878017a0 <putc+0xc>
878017b4:	2300      	movs	r3, #0
878017b6:	f2c0 2302 	movt	r3, #514	; 0x202
878017ba:	79fa      	ldrb	r2, [r7, #7]
878017bc:	641a      	str	r2, [r3, #64]	; 0x40
878017be:	370c      	adds	r7, #12
878017c0:	46bd      	mov	sp, r7
878017c2:	f85d 7b04 	ldr.w	r7, [sp], #4
878017c6:	4770      	bx	lr

878017c8 <puts>:
878017c8:	b580      	push	{r7, lr}
878017ca:	b084      	sub	sp, #16
878017cc:	af00      	add	r7, sp, #0
878017ce:	6078      	str	r0, [r7, #4]
878017d0:	687b      	ldr	r3, [r7, #4]
878017d2:	60fb      	str	r3, [r7, #12]
878017d4:	e006      	b.n	878017e4 <puts+0x1c>
878017d6:	68fb      	ldr	r3, [r7, #12]
878017d8:	1c5a      	adds	r2, r3, #1
878017da:	60fa      	str	r2, [r7, #12]
878017dc:	781b      	ldrb	r3, [r3, #0]
878017de:	4618      	mov	r0, r3
878017e0:	f7ff ffd8 	bl	87801794 <putc>
878017e4:	68fb      	ldr	r3, [r7, #12]
878017e6:	781b      	ldrb	r3, [r3, #0]
878017e8:	2b00      	cmp	r3, #0
878017ea:	d1f4      	bne.n	878017d6 <puts+0xe>
878017ec:	3710      	adds	r7, #16
878017ee:	46bd      	mov	sp, r7
878017f0:	bd80      	pop	{r7, pc}
878017f2:	bf00      	nop

878017f4 <getc>:
878017f4:	b480      	push	{r7}
878017f6:	af00      	add	r7, sp, #0
878017f8:	bf00      	nop
878017fa:	2300      	movs	r3, #0
878017fc:	f2c0 2302 	movt	r3, #514	; 0x202
87801800:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
87801804:	f003 0301 	and.w	r3, r3, #1
87801808:	2b00      	cmp	r3, #0
8780180a:	d0f6      	beq.n	878017fa <getc+0x6>
8780180c:	2300      	movs	r3, #0
8780180e:	f2c0 2302 	movt	r3, #514	; 0x202
87801812:	681b      	ldr	r3, [r3, #0]
87801814:	b2db      	uxtb	r3, r3
87801816:	4618      	mov	r0, r3
87801818:	46bd      	mov	sp, r7
8780181a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780181e:	4770      	bx	lr

87801820 <raise>:
87801820:	b480      	push	{r7}
87801822:	b083      	sub	sp, #12
87801824:	af00      	add	r7, sp, #0
87801826:	6078      	str	r0, [r7, #4]
87801828:	370c      	adds	r7, #12
8780182a:	46bd      	mov	sp, r7
8780182c:	f85d 7b04 	ldr.w	r7, [sp], #4
87801830:	4770      	bx	lr
87801832:	bf00      	nop

87801834 <__div64_32>:
87801834:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
87801838:	b08c      	sub	sp, #48	; 0x30
8780183a:	af00      	add	r7, sp, #0
8780183c:	6078      	str	r0, [r7, #4]
8780183e:	6039      	str	r1, [r7, #0]
87801840:	687b      	ldr	r3, [r7, #4]
87801842:	e9d3 2300 	ldrd	r2, r3, [r3]
87801846:	e9c7 230a 	strd	r2, r3, [r7, #40]	; 0x28
8780184a:	683b      	ldr	r3, [r7, #0]
8780184c:	461a      	mov	r2, r3
8780184e:	f04f 0300 	mov.w	r3, #0
87801852:	e9c7 2308 	strd	r2, r3, [r7, #32]
87801856:	f04f 0201 	mov.w	r2, #1
8780185a:	f04f 0300 	mov.w	r3, #0
8780185e:	e9c7 2304 	strd	r2, r3, [r7, #16]
87801862:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	; 0x28
87801866:	469a      	mov	sl, r3
87801868:	f04f 0b00 	mov.w	fp, #0
8780186c:	4653      	mov	r3, sl
8780186e:	60fb      	str	r3, [r7, #12]
87801870:	f04f 0200 	mov.w	r2, #0
87801874:	f04f 0300 	mov.w	r3, #0
87801878:	e9c7 2306 	strd	r2, r3, [r7, #24]
8780187c:	68fa      	ldr	r2, [r7, #12]
8780187e:	683b      	ldr	r3, [r7, #0]
87801880:	429a      	cmp	r2, r3
87801882:	d320      	bcc.n	878018c6 <__div64_32+0x92>
87801884:	6839      	ldr	r1, [r7, #0]
87801886:	68f8      	ldr	r0, [r7, #12]
87801888:	f005 f8d2 	bl	87806a30 <__aeabi_uidiv>
8780188c:	4603      	mov	r3, r0
8780188e:	60fb      	str	r3, [r7, #12]
87801890:	68fb      	ldr	r3, [r7, #12]
87801892:	461a      	mov	r2, r3
87801894:	f04f 0300 	mov.w	r3, #0
87801898:	4691      	mov	r9, r2
8780189a:	f04f 0800 	mov.w	r8, #0
8780189e:	e9c7 8906 	strd	r8, r9, [r7, #24]
878018a2:	68fb      	ldr	r3, [r7, #12]
878018a4:	683a      	ldr	r2, [r7, #0]
878018a6:	fb02 f303 	mul.w	r3, r2, r3
878018aa:	461a      	mov	r2, r3
878018ac:	f04f 0300 	mov.w	r3, #0
878018b0:	0015      	movs	r5, r2
878018b2:	2400      	movs	r4, #0
878018b4:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	; 0x28
878018b8:	1b12      	subs	r2, r2, r4
878018ba:	eb63 0305 	sbc.w	r3, r3, r5
878018be:	461c      	mov	r4, r3
878018c0:	4613      	mov	r3, r2
878018c2:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
878018c6:	e011      	b.n	878018ec <__div64_32+0xb8>
878018c8:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
878018cc:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878018d0:	185b      	adds	r3, r3, r1
878018d2:	eb44 0402 	adc.w	r4, r4, r2
878018d6:	e9c7 3408 	strd	r3, r4, [r7, #32]
878018da:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
878018de:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
878018e2:	185b      	adds	r3, r3, r1
878018e4:	eb44 0402 	adc.w	r4, r4, r2
878018e8:	e9c7 3404 	strd	r3, r4, [r7, #16]
878018ec:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
878018f0:	2b01      	cmp	r3, #1
878018f2:	f174 0300 	sbcs.w	r3, r4, #0
878018f6:	db07      	blt.n	87801908 <__div64_32+0xd4>
878018f8:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
878018fc:	e9d7 340a 	ldrd	r3, r4, [r7, #40]	; 0x28
87801900:	42a2      	cmp	r2, r4
87801902:	bf08      	it	eq
87801904:	4299      	cmpeq	r1, r3
87801906:	d3df      	bcc.n	878018c8 <__div64_32+0x94>
87801908:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	; 0x28
8780190c:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801910:	42a2      	cmp	r2, r4
87801912:	bf08      	it	eq
87801914:	4299      	cmpeq	r1, r3
87801916:	d311      	bcc.n	8780193c <__div64_32+0x108>
87801918:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	; 0x28
8780191c:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801920:	1acb      	subs	r3, r1, r3
87801922:	eb62 0404 	sbc.w	r4, r2, r4
87801926:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
8780192a:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
8780192e:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
87801932:	185b      	adds	r3, r3, r1
87801934:	eb44 0402 	adc.w	r4, r4, r2
87801938:	e9c7 3406 	strd	r3, r4, [r7, #24]
8780193c:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
87801940:	0864      	lsrs	r4, r4, #1
87801942:	ea4f 0333 	mov.w	r3, r3, rrx
87801946:	e9c7 3408 	strd	r3, r4, [r7, #32]
8780194a:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
8780194e:	0864      	lsrs	r4, r4, #1
87801950:	ea4f 0333 	mov.w	r3, r3, rrx
87801954:	e9c7 3404 	strd	r3, r4, [r7, #16]
87801958:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
8780195c:	4323      	orrs	r3, r4
8780195e:	d1d3      	bne.n	87801908 <__div64_32+0xd4>
87801960:	687a      	ldr	r2, [r7, #4]
87801962:	e9d7 3406 	ldrd	r3, r4, [r7, #24]
87801966:	e9c2 3400 	strd	r3, r4, [r2]
8780196a:	6abb      	ldr	r3, [r7, #40]	; 0x28
8780196c:	4618      	mov	r0, r3
8780196e:	3730      	adds	r7, #48	; 0x30
87801970:	46bd      	mov	sp, r7
87801972:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
87801976:	bf00      	nop
	...

87801980 <__umodsi3>:
87801980:	e2512001 	subs	r2, r1, #1
87801984:	3a000062 	bcc	87801b14 <Ldiv0>
87801988:	11500001 	cmpne	r0, r1
8780198c:	03a00000 	moveq	r0, #0
87801990:	81110002 	tsthi	r1, r2
87801994:	00000002 	andeq	r0, r0, r2
87801998:	91a0f00e 	movls	pc, lr
8780199c:	e3a02000 	mov	r2, #0
878019a0:	e3510201 	cmp	r1, #268435456	; 0x10000000
878019a4:	31510000 	cmpcc	r1, r0
878019a8:	31a01201 	lslcc	r1, r1, #4
878019ac:	32822004 	addcc	r2, r2, #4
878019b0:	3afffffa 	bcc	878019a0 <__umodsi3+0x20>
878019b4:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
878019b8:	31510000 	cmpcc	r1, r0
878019bc:	31a01081 	lslcc	r1, r1, #1
878019c0:	32822001 	addcc	r2, r2, #1
878019c4:	3afffffa 	bcc	878019b4 <__umodsi3+0x34>
878019c8:	e2522003 	subs	r2, r2, #3
878019cc:	ba00000e 	blt	87801a0c <__umodsi3+0x8c>
878019d0:	e1500001 	cmp	r0, r1
878019d4:	20400001 	subcs	r0, r0, r1
878019d8:	e15000a1 	cmp	r0, r1, lsr #1
878019dc:	204000a1 	subcs	r0, r0, r1, lsr #1
878019e0:	e1500121 	cmp	r0, r1, lsr #2
878019e4:	20400121 	subcs	r0, r0, r1, lsr #2
878019e8:	e15001a1 	cmp	r0, r1, lsr #3
878019ec:	204001a1 	subcs	r0, r0, r1, lsr #3
878019f0:	e3500001 	cmp	r0, #1
878019f4:	e1a01221 	lsr	r1, r1, #4
878019f8:	a2522004 	subsge	r2, r2, #4
878019fc:	aafffff3 	bge	878019d0 <__umodsi3+0x50>
87801a00:	e3120003 	tst	r2, #3
87801a04:	13300000 	teqne	r0, #0
87801a08:	0a00000a 	beq	87801a38 <__umodsi3+0xb8>
87801a0c:	e3720002 	cmn	r2, #2
87801a10:	ba000006 	blt	87801a30 <__umodsi3+0xb0>
87801a14:	0a000002 	beq	87801a24 <__umodsi3+0xa4>
87801a18:	e1500001 	cmp	r0, r1
87801a1c:	20400001 	subcs	r0, r0, r1
87801a20:	e1a010a1 	lsr	r1, r1, #1
87801a24:	e1500001 	cmp	r0, r1
87801a28:	20400001 	subcs	r0, r0, r1
87801a2c:	e1a010a1 	lsr	r1, r1, #1
87801a30:	e1500001 	cmp	r0, r1
87801a34:	20400001 	subcs	r0, r0, r1
87801a38:	e1a0f00e 	mov	pc, lr
87801a3c:	90909090 	umullsls	r9, r0, r0, r0

87801a40 <__modsi3>:
87801a40:	e3510000 	cmp	r1, #0
87801a44:	0a000032 	beq	87801b14 <Ldiv0>
87801a48:	42611000 	rsbmi	r1, r1, #0
87801a4c:	e1b0c000 	movs	ip, r0
87801a50:	42600000 	rsbmi	r0, r0, #0
87801a54:	e2512001 	subs	r2, r1, #1
87801a58:	11500001 	cmpne	r0, r1
87801a5c:	03a00000 	moveq	r0, #0
87801a60:	81110002 	tsthi	r1, r2
87801a64:	00000002 	andeq	r0, r0, r2
87801a68:	9a000026 	bls	87801b08 <__modsi3+0xc8>
87801a6c:	e3a02000 	mov	r2, #0
87801a70:	e3510201 	cmp	r1, #268435456	; 0x10000000
87801a74:	31510000 	cmpcc	r1, r0
87801a78:	31a01201 	lslcc	r1, r1, #4
87801a7c:	32822004 	addcc	r2, r2, #4
87801a80:	3afffffa 	bcc	87801a70 <__modsi3+0x30>
87801a84:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
87801a88:	31510000 	cmpcc	r1, r0
87801a8c:	31a01081 	lslcc	r1, r1, #1
87801a90:	32822001 	addcc	r2, r2, #1
87801a94:	3afffffa 	bcc	87801a84 <__modsi3+0x44>
87801a98:	e2522003 	subs	r2, r2, #3
87801a9c:	ba00000e 	blt	87801adc <__modsi3+0x9c>
87801aa0:	e1500001 	cmp	r0, r1
87801aa4:	20400001 	subcs	r0, r0, r1
87801aa8:	e15000a1 	cmp	r0, r1, lsr #1
87801aac:	204000a1 	subcs	r0, r0, r1, lsr #1
87801ab0:	e1500121 	cmp	r0, r1, lsr #2
87801ab4:	20400121 	subcs	r0, r0, r1, lsr #2
87801ab8:	e15001a1 	cmp	r0, r1, lsr #3
87801abc:	204001a1 	subcs	r0, r0, r1, lsr #3
87801ac0:	e3500001 	cmp	r0, #1
87801ac4:	e1a01221 	lsr	r1, r1, #4
87801ac8:	a2522004 	subsge	r2, r2, #4
87801acc:	aafffff3 	bge	87801aa0 <__modsi3+0x60>
87801ad0:	e3120003 	tst	r2, #3
87801ad4:	13300000 	teqne	r0, #0
87801ad8:	0a00000a 	beq	87801b08 <__modsi3+0xc8>
87801adc:	e3720002 	cmn	r2, #2
87801ae0:	ba000006 	blt	87801b00 <__modsi3+0xc0>
87801ae4:	0a000002 	beq	87801af4 <__modsi3+0xb4>
87801ae8:	e1500001 	cmp	r0, r1
87801aec:	20400001 	subcs	r0, r0, r1
87801af0:	e1a010a1 	lsr	r1, r1, #1
87801af4:	e1500001 	cmp	r0, r1
87801af8:	20400001 	subcs	r0, r0, r1
87801afc:	e1a010a1 	lsr	r1, r1, #1
87801b00:	e1500001 	cmp	r0, r1
87801b04:	20400001 	subcs	r0, r0, r1
87801b08:	e35c0000 	cmp	ip, #0
87801b0c:	42600000 	rsbmi	r0, r0, #0
87801b10:	e1a0f00e 	mov	pc, lr

87801b14 <Ldiv0>:
87801b14:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87801b18:	e3a00000 	mov	r0, #0
87801b1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87801b20 <__muldi3>:
87801b20:	b490      	push	{r4, r7}
87801b22:	b08c      	sub	sp, #48	; 0x30
87801b24:	af00      	add	r7, sp, #0
87801b26:	e9c7 0102 	strd	r0, r1, [r7, #8]
87801b2a:	e9c7 2300 	strd	r2, r3, [r7]
87801b2e:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
87801b32:	e9c7 3408 	strd	r3, r4, [r7, #32]
87801b36:	e9d7 3400 	ldrd	r3, r4, [r7]
87801b3a:	e9c7 3406 	strd	r3, r4, [r7, #24]
87801b3e:	6a3b      	ldr	r3, [r7, #32]
87801b40:	69ba      	ldr	r2, [r7, #24]
87801b42:	4611      	mov	r1, r2
87801b44:	ea4f 4013 	mov.w	r0, r3, lsr #16
87801b48:	ea4f 4211 	mov.w	r2, r1, lsr #16
87801b4c:	ea23 4400 	bic.w	r4, r3, r0, lsl #16
87801b50:	ea21 4102 	bic.w	r1, r1, r2, lsl #16
87801b54:	fb04 f301 	mul.w	r3, r4, r1
87801b58:	fb00 f101 	mul.w	r1, r0, r1
87801b5c:	fb02 f404 	mul.w	r4, r2, r4
87801b60:	fb00 f202 	mul.w	r2, r0, r2
87801b64:	190c      	adds	r4, r1, r4
87801b66:	bf28      	it	cs
87801b68:	f502 3280 	addcs.w	r2, r2, #65536	; 0x10000
87801b6c:	eb13 4304 	adds.w	r3, r3, r4, lsl #16
87801b70:	eb42 4214 	adc.w	r2, r2, r4, lsr #16
87801b74:	617a      	str	r2, [r7, #20]
87801b76:	613b      	str	r3, [r7, #16]
87801b78:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
87801b7c:	e9c7 340a 	strd	r3, r4, [r7, #40]	; 0x28
87801b80:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87801b82:	4619      	mov	r1, r3
87801b84:	6a3b      	ldr	r3, [r7, #32]
87801b86:	69fa      	ldr	r2, [r7, #28]
87801b88:	fb02 f203 	mul.w	r2, r2, r3
87801b8c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87801b8e:	69b8      	ldr	r0, [r7, #24]
87801b90:	fb00 f303 	mul.w	r3, r0, r3
87801b94:	4413      	add	r3, r2
87801b96:	440b      	add	r3, r1
87801b98:	62fb      	str	r3, [r7, #44]	; 0x2c
87801b9a:	e9d7 340a 	ldrd	r3, r4, [r7, #40]	; 0x28
87801b9e:	4618      	mov	r0, r3
87801ba0:	4621      	mov	r1, r4
87801ba2:	3730      	adds	r7, #48	; 0x30
87801ba4:	46bd      	mov	sp, r7
87801ba6:	bc90      	pop	{r4, r7}
87801ba8:	4770      	bx	lr
87801baa:	bf00      	nop

87801bac <printf>:
87801bac:	b40f      	push	{r0, r1, r2, r3}
87801bae:	b590      	push	{r4, r7, lr}
87801bb0:	b085      	sub	sp, #20
87801bb2:	af00      	add	r7, sp, #0
87801bb4:	f107 0324 	add.w	r3, r7, #36	; 0x24
87801bb8:	60bb      	str	r3, [r7, #8]
87801bba:	6a3b      	ldr	r3, [r7, #32]
87801bbc:	68ba      	ldr	r2, [r7, #8]
87801bbe:	4619      	mov	r1, r3
87801bc0:	f64b 70e0 	movw	r0, #49120	; 0xbfe0
87801bc4:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801bc8:	f001 fca6 	bl	87803518 <vsprintf>
87801bcc:	6078      	str	r0, [r7, #4]
87801bce:	2300      	movs	r3, #0
87801bd0:	60fb      	str	r3, [r7, #12]
87801bd2:	e00c      	b.n	87801bee <printf+0x42>
87801bd4:	f64b 73e0 	movw	r3, #49120	; 0xbfe0
87801bd8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801bdc:	68fa      	ldr	r2, [r7, #12]
87801bde:	4413      	add	r3, r2
87801be0:	781b      	ldrb	r3, [r3, #0]
87801be2:	4618      	mov	r0, r3
87801be4:	f7ff fdd6 	bl	87801794 <putc>
87801be8:	68fb      	ldr	r3, [r7, #12]
87801bea:	3301      	adds	r3, #1
87801bec:	60fb      	str	r3, [r7, #12]
87801bee:	68fc      	ldr	r4, [r7, #12]
87801bf0:	f64b 70e0 	movw	r0, #49120	; 0xbfe0
87801bf4:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801bf8:	f000 f9b2 	bl	87801f60 <strlen>
87801bfc:	4603      	mov	r3, r0
87801bfe:	429c      	cmp	r4, r3
87801c00:	d3e8      	bcc.n	87801bd4 <printf+0x28>
87801c02:	687b      	ldr	r3, [r7, #4]
87801c04:	4618      	mov	r0, r3
87801c06:	3714      	adds	r7, #20
87801c08:	46bd      	mov	sp, r7
87801c0a:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
87801c0e:	b004      	add	sp, #16
87801c10:	4770      	bx	lr
87801c12:	bf00      	nop

87801c14 <scanf>:
87801c14:	b40f      	push	{r0, r1, r2, r3}
87801c16:	b580      	push	{r7, lr}
87801c18:	b084      	sub	sp, #16
87801c1a:	af00      	add	r7, sp, #0
87801c1c:	2300      	movs	r3, #0
87801c1e:	60fb      	str	r3, [r7, #12]
87801c20:	f7ff fde8 	bl	878017f4 <getc>
87801c24:	4603      	mov	r3, r0
87801c26:	72fb      	strb	r3, [r7, #11]
87801c28:	7afb      	ldrb	r3, [r7, #11]
87801c2a:	4618      	mov	r0, r3
87801c2c:	f7ff fdb2 	bl	87801794 <putc>
87801c30:	7afb      	ldrb	r3, [r7, #11]
87801c32:	2b0d      	cmp	r3, #13
87801c34:	d002      	beq.n	87801c3c <scanf+0x28>
87801c36:	7afb      	ldrb	r3, [r7, #11]
87801c38:	2b0a      	cmp	r3, #10
87801c3a:	d108      	bne.n	87801c4e <scanf+0x3a>
87801c3c:	f24c 33e0 	movw	r3, #50144	; 0xc3e0
87801c40:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801c44:	68fa      	ldr	r2, [r7, #12]
87801c46:	4413      	add	r3, r2
87801c48:	2200      	movs	r2, #0
87801c4a:	701a      	strb	r2, [r3, #0]
87801c4c:	e009      	b.n	87801c62 <scanf+0x4e>
87801c4e:	68fa      	ldr	r2, [r7, #12]
87801c50:	1c53      	adds	r3, r2, #1
87801c52:	60fb      	str	r3, [r7, #12]
87801c54:	f24c 33e0 	movw	r3, #50144	; 0xc3e0
87801c58:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801c5c:	7af9      	ldrb	r1, [r7, #11]
87801c5e:	5499      	strb	r1, [r3, r2]
87801c60:	e7de      	b.n	87801c20 <scanf+0xc>
87801c62:	f107 031c 	add.w	r3, r7, #28
87801c66:	607b      	str	r3, [r7, #4]
87801c68:	69bb      	ldr	r3, [r7, #24]
87801c6a:	687a      	ldr	r2, [r7, #4]
87801c6c:	4619      	mov	r1, r3
87801c6e:	f24c 30e0 	movw	r0, #50144	; 0xc3e0
87801c72:	f2c8 7080 	movt	r0, #34688	; 0x8780
87801c76:	f001 fc79 	bl	8780356c <vsscanf>
87801c7a:	60f8      	str	r0, [r7, #12]
87801c7c:	68fb      	ldr	r3, [r7, #12]
87801c7e:	4618      	mov	r0, r3
87801c80:	3710      	adds	r7, #16
87801c82:	46bd      	mov	sp, r7
87801c84:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87801c88:	b004      	add	sp, #16
87801c8a:	4770      	bx	lr

87801c8c <__tolower>:
87801c8c:	b480      	push	{r7}
87801c8e:	b083      	sub	sp, #12
87801c90:	af00      	add	r7, sp, #0
87801c92:	4603      	mov	r3, r0
87801c94:	71fb      	strb	r3, [r7, #7]
87801c96:	79fa      	ldrb	r2, [r7, #7]
87801c98:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87801c9c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87801ca0:	5c9b      	ldrb	r3, [r3, r2]
87801ca2:	f003 0301 	and.w	r3, r3, #1
87801ca6:	2b00      	cmp	r3, #0
87801ca8:	d002      	beq.n	87801cb0 <__tolower+0x24>
87801caa:	79fb      	ldrb	r3, [r7, #7]
87801cac:	3320      	adds	r3, #32
87801cae:	71fb      	strb	r3, [r7, #7]
87801cb0:	79fb      	ldrb	r3, [r7, #7]
87801cb2:	4618      	mov	r0, r3
87801cb4:	370c      	adds	r7, #12
87801cb6:	46bd      	mov	sp, r7
87801cb8:	f85d 7b04 	ldr.w	r7, [sp], #4
87801cbc:	4770      	bx	lr
87801cbe:	bf00      	nop

87801cc0 <strnicmp>:
87801cc0:	b580      	push	{r7, lr}
87801cc2:	b086      	sub	sp, #24
87801cc4:	af00      	add	r7, sp, #0
87801cc6:	60f8      	str	r0, [r7, #12]
87801cc8:	60b9      	str	r1, [r7, #8]
87801cca:	607a      	str	r2, [r7, #4]
87801ccc:	2300      	movs	r3, #0
87801cce:	75fb      	strb	r3, [r7, #23]
87801cd0:	2300      	movs	r3, #0
87801cd2:	75bb      	strb	r3, [r7, #22]
87801cd4:	687b      	ldr	r3, [r7, #4]
87801cd6:	2b00      	cmp	r3, #0
87801cd8:	d02f      	beq.n	87801d3a <strnicmp+0x7a>
87801cda:	68fb      	ldr	r3, [r7, #12]
87801cdc:	781b      	ldrb	r3, [r3, #0]
87801cde:	75fb      	strb	r3, [r7, #23]
87801ce0:	68bb      	ldr	r3, [r7, #8]
87801ce2:	781b      	ldrb	r3, [r3, #0]
87801ce4:	75bb      	strb	r3, [r7, #22]
87801ce6:	68fb      	ldr	r3, [r7, #12]
87801ce8:	3301      	adds	r3, #1
87801cea:	60fb      	str	r3, [r7, #12]
87801cec:	68bb      	ldr	r3, [r7, #8]
87801cee:	3301      	adds	r3, #1
87801cf0:	60bb      	str	r3, [r7, #8]
87801cf2:	7dfb      	ldrb	r3, [r7, #23]
87801cf4:	2b00      	cmp	r3, #0
87801cf6:	d100      	bne.n	87801cfa <strnicmp+0x3a>
87801cf8:	e01f      	b.n	87801d3a <strnicmp+0x7a>
87801cfa:	7dbb      	ldrb	r3, [r7, #22]
87801cfc:	2b00      	cmp	r3, #0
87801cfe:	d100      	bne.n	87801d02 <strnicmp+0x42>
87801d00:	e01b      	b.n	87801d3a <strnicmp+0x7a>
87801d02:	7dfa      	ldrb	r2, [r7, #23]
87801d04:	7dbb      	ldrb	r3, [r7, #22]
87801d06:	429a      	cmp	r2, r3
87801d08:	d100      	bne.n	87801d0c <strnicmp+0x4c>
87801d0a:	e010      	b.n	87801d2e <strnicmp+0x6e>
87801d0c:	7dfb      	ldrb	r3, [r7, #23]
87801d0e:	4618      	mov	r0, r3
87801d10:	f7ff ffbc 	bl	87801c8c <__tolower>
87801d14:	4603      	mov	r3, r0
87801d16:	75fb      	strb	r3, [r7, #23]
87801d18:	7dbb      	ldrb	r3, [r7, #22]
87801d1a:	4618      	mov	r0, r3
87801d1c:	f7ff ffb6 	bl	87801c8c <__tolower>
87801d20:	4603      	mov	r3, r0
87801d22:	75bb      	strb	r3, [r7, #22]
87801d24:	7dfa      	ldrb	r2, [r7, #23]
87801d26:	7dbb      	ldrb	r3, [r7, #22]
87801d28:	429a      	cmp	r2, r3
87801d2a:	d000      	beq.n	87801d2e <strnicmp+0x6e>
87801d2c:	e005      	b.n	87801d3a <strnicmp+0x7a>
87801d2e:	687b      	ldr	r3, [r7, #4]
87801d30:	3b01      	subs	r3, #1
87801d32:	607b      	str	r3, [r7, #4]
87801d34:	687b      	ldr	r3, [r7, #4]
87801d36:	2b00      	cmp	r3, #0
87801d38:	d1cf      	bne.n	87801cda <strnicmp+0x1a>
87801d3a:	7dfa      	ldrb	r2, [r7, #23]
87801d3c:	7dbb      	ldrb	r3, [r7, #22]
87801d3e:	1ad3      	subs	r3, r2, r3
87801d40:	4618      	mov	r0, r3
87801d42:	3718      	adds	r7, #24
87801d44:	46bd      	mov	sp, r7
87801d46:	bd80      	pop	{r7, pc}

87801d48 <strcpy>:
87801d48:	b480      	push	{r7}
87801d4a:	b085      	sub	sp, #20
87801d4c:	af00      	add	r7, sp, #0
87801d4e:	6078      	str	r0, [r7, #4]
87801d50:	6039      	str	r1, [r7, #0]
87801d52:	687b      	ldr	r3, [r7, #4]
87801d54:	60fb      	str	r3, [r7, #12]
87801d56:	bf00      	nop
87801d58:	687b      	ldr	r3, [r7, #4]
87801d5a:	1c5a      	adds	r2, r3, #1
87801d5c:	607a      	str	r2, [r7, #4]
87801d5e:	683a      	ldr	r2, [r7, #0]
87801d60:	1c51      	adds	r1, r2, #1
87801d62:	6039      	str	r1, [r7, #0]
87801d64:	7812      	ldrb	r2, [r2, #0]
87801d66:	701a      	strb	r2, [r3, #0]
87801d68:	781b      	ldrb	r3, [r3, #0]
87801d6a:	2b00      	cmp	r3, #0
87801d6c:	d1f4      	bne.n	87801d58 <strcpy+0x10>
87801d6e:	68fb      	ldr	r3, [r7, #12]
87801d70:	4618      	mov	r0, r3
87801d72:	3714      	adds	r7, #20
87801d74:	46bd      	mov	sp, r7
87801d76:	f85d 7b04 	ldr.w	r7, [sp], #4
87801d7a:	4770      	bx	lr

87801d7c <strncpy>:
87801d7c:	b480      	push	{r7}
87801d7e:	b087      	sub	sp, #28
87801d80:	af00      	add	r7, sp, #0
87801d82:	60f8      	str	r0, [r7, #12]
87801d84:	60b9      	str	r1, [r7, #8]
87801d86:	607a      	str	r2, [r7, #4]
87801d88:	68fb      	ldr	r3, [r7, #12]
87801d8a:	617b      	str	r3, [r7, #20]
87801d8c:	bf00      	nop
87801d8e:	687b      	ldr	r3, [r7, #4]
87801d90:	1e5a      	subs	r2, r3, #1
87801d92:	607a      	str	r2, [r7, #4]
87801d94:	2b00      	cmp	r3, #0
87801d96:	d00a      	beq.n	87801dae <strncpy+0x32>
87801d98:	68fb      	ldr	r3, [r7, #12]
87801d9a:	1c5a      	adds	r2, r3, #1
87801d9c:	60fa      	str	r2, [r7, #12]
87801d9e:	68ba      	ldr	r2, [r7, #8]
87801da0:	1c51      	adds	r1, r2, #1
87801da2:	60b9      	str	r1, [r7, #8]
87801da4:	7812      	ldrb	r2, [r2, #0]
87801da6:	701a      	strb	r2, [r3, #0]
87801da8:	781b      	ldrb	r3, [r3, #0]
87801daa:	2b00      	cmp	r3, #0
87801dac:	d1ef      	bne.n	87801d8e <strncpy+0x12>
87801dae:	697b      	ldr	r3, [r7, #20]
87801db0:	4618      	mov	r0, r3
87801db2:	371c      	adds	r7, #28
87801db4:	46bd      	mov	sp, r7
87801db6:	f85d 7b04 	ldr.w	r7, [sp], #4
87801dba:	4770      	bx	lr

87801dbc <strcat>:
87801dbc:	b480      	push	{r7}
87801dbe:	b085      	sub	sp, #20
87801dc0:	af00      	add	r7, sp, #0
87801dc2:	6078      	str	r0, [r7, #4]
87801dc4:	6039      	str	r1, [r7, #0]
87801dc6:	687b      	ldr	r3, [r7, #4]
87801dc8:	60fb      	str	r3, [r7, #12]
87801dca:	e002      	b.n	87801dd2 <strcat+0x16>
87801dcc:	687b      	ldr	r3, [r7, #4]
87801dce:	3301      	adds	r3, #1
87801dd0:	607b      	str	r3, [r7, #4]
87801dd2:	687b      	ldr	r3, [r7, #4]
87801dd4:	781b      	ldrb	r3, [r3, #0]
87801dd6:	2b00      	cmp	r3, #0
87801dd8:	d1f8      	bne.n	87801dcc <strcat+0x10>
87801dda:	bf00      	nop
87801ddc:	687b      	ldr	r3, [r7, #4]
87801dde:	1c5a      	adds	r2, r3, #1
87801de0:	607a      	str	r2, [r7, #4]
87801de2:	683a      	ldr	r2, [r7, #0]
87801de4:	1c51      	adds	r1, r2, #1
87801de6:	6039      	str	r1, [r7, #0]
87801de8:	7812      	ldrb	r2, [r2, #0]
87801dea:	701a      	strb	r2, [r3, #0]
87801dec:	781b      	ldrb	r3, [r3, #0]
87801dee:	2b00      	cmp	r3, #0
87801df0:	d1f4      	bne.n	87801ddc <strcat+0x20>
87801df2:	68fb      	ldr	r3, [r7, #12]
87801df4:	4618      	mov	r0, r3
87801df6:	3714      	adds	r7, #20
87801df8:	46bd      	mov	sp, r7
87801dfa:	f85d 7b04 	ldr.w	r7, [sp], #4
87801dfe:	4770      	bx	lr

87801e00 <strncat>:
87801e00:	b480      	push	{r7}
87801e02:	b087      	sub	sp, #28
87801e04:	af00      	add	r7, sp, #0
87801e06:	60f8      	str	r0, [r7, #12]
87801e08:	60b9      	str	r1, [r7, #8]
87801e0a:	607a      	str	r2, [r7, #4]
87801e0c:	68fb      	ldr	r3, [r7, #12]
87801e0e:	617b      	str	r3, [r7, #20]
87801e10:	687b      	ldr	r3, [r7, #4]
87801e12:	2b00      	cmp	r3, #0
87801e14:	d01d      	beq.n	87801e52 <strncat+0x52>
87801e16:	e002      	b.n	87801e1e <strncat+0x1e>
87801e18:	68fb      	ldr	r3, [r7, #12]
87801e1a:	3301      	adds	r3, #1
87801e1c:	60fb      	str	r3, [r7, #12]
87801e1e:	68fb      	ldr	r3, [r7, #12]
87801e20:	781b      	ldrb	r3, [r3, #0]
87801e22:	2b00      	cmp	r3, #0
87801e24:	d1f8      	bne.n	87801e18 <strncat+0x18>
87801e26:	e009      	b.n	87801e3c <strncat+0x3c>
87801e28:	687b      	ldr	r3, [r7, #4]
87801e2a:	3b01      	subs	r3, #1
87801e2c:	607b      	str	r3, [r7, #4]
87801e2e:	687b      	ldr	r3, [r7, #4]
87801e30:	2b00      	cmp	r3, #0
87801e32:	d103      	bne.n	87801e3c <strncat+0x3c>
87801e34:	68fb      	ldr	r3, [r7, #12]
87801e36:	2200      	movs	r2, #0
87801e38:	701a      	strb	r2, [r3, #0]
87801e3a:	e00a      	b.n	87801e52 <strncat+0x52>
87801e3c:	68fb      	ldr	r3, [r7, #12]
87801e3e:	1c5a      	adds	r2, r3, #1
87801e40:	60fa      	str	r2, [r7, #12]
87801e42:	68ba      	ldr	r2, [r7, #8]
87801e44:	1c51      	adds	r1, r2, #1
87801e46:	60b9      	str	r1, [r7, #8]
87801e48:	7812      	ldrb	r2, [r2, #0]
87801e4a:	701a      	strb	r2, [r3, #0]
87801e4c:	781b      	ldrb	r3, [r3, #0]
87801e4e:	2b00      	cmp	r3, #0
87801e50:	d1ea      	bne.n	87801e28 <strncat+0x28>
87801e52:	697b      	ldr	r3, [r7, #20]
87801e54:	4618      	mov	r0, r3
87801e56:	371c      	adds	r7, #28
87801e58:	46bd      	mov	sp, r7
87801e5a:	f85d 7b04 	ldr.w	r7, [sp], #4
87801e5e:	4770      	bx	lr

87801e60 <strcmp>:
87801e60:	b490      	push	{r4, r7}
87801e62:	b082      	sub	sp, #8
87801e64:	af00      	add	r7, sp, #0
87801e66:	6078      	str	r0, [r7, #4]
87801e68:	6039      	str	r1, [r7, #0]
87801e6a:	687b      	ldr	r3, [r7, #4]
87801e6c:	781a      	ldrb	r2, [r3, #0]
87801e6e:	683b      	ldr	r3, [r7, #0]
87801e70:	1c59      	adds	r1, r3, #1
87801e72:	6039      	str	r1, [r7, #0]
87801e74:	781b      	ldrb	r3, [r3, #0]
87801e76:	1ad3      	subs	r3, r2, r3
87801e78:	b2db      	uxtb	r3, r3
87801e7a:	b2dc      	uxtb	r4, r3
87801e7c:	2c00      	cmp	r4, #0
87801e7e:	d106      	bne.n	87801e8e <strcmp+0x2e>
87801e80:	687b      	ldr	r3, [r7, #4]
87801e82:	1c5a      	adds	r2, r3, #1
87801e84:	607a      	str	r2, [r7, #4]
87801e86:	781b      	ldrb	r3, [r3, #0]
87801e88:	2b00      	cmp	r3, #0
87801e8a:	d000      	beq.n	87801e8e <strcmp+0x2e>
87801e8c:	e7ed      	b.n	87801e6a <strcmp+0xa>
87801e8e:	b263      	sxtb	r3, r4
87801e90:	4618      	mov	r0, r3
87801e92:	3708      	adds	r7, #8
87801e94:	46bd      	mov	sp, r7
87801e96:	bc90      	pop	{r4, r7}
87801e98:	4770      	bx	lr
87801e9a:	bf00      	nop

87801e9c <strncmp>:
87801e9c:	b490      	push	{r4, r7}
87801e9e:	b084      	sub	sp, #16
87801ea0:	af00      	add	r7, sp, #0
87801ea2:	60f8      	str	r0, [r7, #12]
87801ea4:	60b9      	str	r1, [r7, #8]
87801ea6:	607a      	str	r2, [r7, #4]
87801ea8:	2400      	movs	r4, #0
87801eaa:	e013      	b.n	87801ed4 <strncmp+0x38>
87801eac:	68fb      	ldr	r3, [r7, #12]
87801eae:	781a      	ldrb	r2, [r3, #0]
87801eb0:	68bb      	ldr	r3, [r7, #8]
87801eb2:	1c59      	adds	r1, r3, #1
87801eb4:	60b9      	str	r1, [r7, #8]
87801eb6:	781b      	ldrb	r3, [r3, #0]
87801eb8:	1ad3      	subs	r3, r2, r3
87801eba:	b2db      	uxtb	r3, r3
87801ebc:	b2dc      	uxtb	r4, r3
87801ebe:	2c00      	cmp	r4, #0
87801ec0:	d10b      	bne.n	87801eda <strncmp+0x3e>
87801ec2:	68fb      	ldr	r3, [r7, #12]
87801ec4:	1c5a      	adds	r2, r3, #1
87801ec6:	60fa      	str	r2, [r7, #12]
87801ec8:	781b      	ldrb	r3, [r3, #0]
87801eca:	2b00      	cmp	r3, #0
87801ecc:	d005      	beq.n	87801eda <strncmp+0x3e>
87801ece:	687b      	ldr	r3, [r7, #4]
87801ed0:	3b01      	subs	r3, #1
87801ed2:	607b      	str	r3, [r7, #4]
87801ed4:	687b      	ldr	r3, [r7, #4]
87801ed6:	2b00      	cmp	r3, #0
87801ed8:	d1e8      	bne.n	87801eac <strncmp+0x10>
87801eda:	b263      	sxtb	r3, r4
87801edc:	4618      	mov	r0, r3
87801ede:	3710      	adds	r7, #16
87801ee0:	46bd      	mov	sp, r7
87801ee2:	bc90      	pop	{r4, r7}
87801ee4:	4770      	bx	lr
87801ee6:	bf00      	nop

87801ee8 <strchr>:
87801ee8:	b480      	push	{r7}
87801eea:	b083      	sub	sp, #12
87801eec:	af00      	add	r7, sp, #0
87801eee:	6078      	str	r0, [r7, #4]
87801ef0:	6039      	str	r1, [r7, #0]
87801ef2:	e008      	b.n	87801f06 <strchr+0x1e>
87801ef4:	687b      	ldr	r3, [r7, #4]
87801ef6:	781b      	ldrb	r3, [r3, #0]
87801ef8:	2b00      	cmp	r3, #0
87801efa:	d101      	bne.n	87801f00 <strchr+0x18>
87801efc:	2300      	movs	r3, #0
87801efe:	e009      	b.n	87801f14 <strchr+0x2c>
87801f00:	687b      	ldr	r3, [r7, #4]
87801f02:	3301      	adds	r3, #1
87801f04:	607b      	str	r3, [r7, #4]
87801f06:	687b      	ldr	r3, [r7, #4]
87801f08:	781a      	ldrb	r2, [r3, #0]
87801f0a:	683b      	ldr	r3, [r7, #0]
87801f0c:	b2db      	uxtb	r3, r3
87801f0e:	429a      	cmp	r2, r3
87801f10:	d1f0      	bne.n	87801ef4 <strchr+0xc>
87801f12:	687b      	ldr	r3, [r7, #4]
87801f14:	4618      	mov	r0, r3
87801f16:	370c      	adds	r7, #12
87801f18:	46bd      	mov	sp, r7
87801f1a:	f85d 7b04 	ldr.w	r7, [sp], #4
87801f1e:	4770      	bx	lr

87801f20 <strrchr>:
87801f20:	b580      	push	{r7, lr}
87801f22:	b084      	sub	sp, #16
87801f24:	af00      	add	r7, sp, #0
87801f26:	6078      	str	r0, [r7, #4]
87801f28:	6039      	str	r1, [r7, #0]
87801f2a:	6878      	ldr	r0, [r7, #4]
87801f2c:	f000 f818 	bl	87801f60 <strlen>
87801f30:	4602      	mov	r2, r0
87801f32:	687b      	ldr	r3, [r7, #4]
87801f34:	4413      	add	r3, r2
87801f36:	60fb      	str	r3, [r7, #12]
87801f38:	68fb      	ldr	r3, [r7, #12]
87801f3a:	781a      	ldrb	r2, [r3, #0]
87801f3c:	683b      	ldr	r3, [r7, #0]
87801f3e:	b2db      	uxtb	r3, r3
87801f40:	429a      	cmp	r2, r3
87801f42:	d101      	bne.n	87801f48 <strrchr+0x28>
87801f44:	68fb      	ldr	r3, [r7, #12]
87801f46:	e007      	b.n	87801f58 <strrchr+0x38>
87801f48:	68fb      	ldr	r3, [r7, #12]
87801f4a:	3b01      	subs	r3, #1
87801f4c:	60fb      	str	r3, [r7, #12]
87801f4e:	68fa      	ldr	r2, [r7, #12]
87801f50:	687b      	ldr	r3, [r7, #4]
87801f52:	429a      	cmp	r2, r3
87801f54:	d2f0      	bcs.n	87801f38 <strrchr+0x18>
87801f56:	2300      	movs	r3, #0
87801f58:	4618      	mov	r0, r3
87801f5a:	3710      	adds	r7, #16
87801f5c:	46bd      	mov	sp, r7
87801f5e:	bd80      	pop	{r7, pc}

87801f60 <strlen>:
87801f60:	b480      	push	{r7}
87801f62:	b085      	sub	sp, #20
87801f64:	af00      	add	r7, sp, #0
87801f66:	6078      	str	r0, [r7, #4]
87801f68:	687b      	ldr	r3, [r7, #4]
87801f6a:	60fb      	str	r3, [r7, #12]
87801f6c:	e002      	b.n	87801f74 <strlen+0x14>
87801f6e:	68fb      	ldr	r3, [r7, #12]
87801f70:	3301      	adds	r3, #1
87801f72:	60fb      	str	r3, [r7, #12]
87801f74:	68fb      	ldr	r3, [r7, #12]
87801f76:	781b      	ldrb	r3, [r3, #0]
87801f78:	2b00      	cmp	r3, #0
87801f7a:	d1f8      	bne.n	87801f6e <strlen+0xe>
87801f7c:	68fa      	ldr	r2, [r7, #12]
87801f7e:	687b      	ldr	r3, [r7, #4]
87801f80:	1ad3      	subs	r3, r2, r3
87801f82:	4618      	mov	r0, r3
87801f84:	3714      	adds	r7, #20
87801f86:	46bd      	mov	sp, r7
87801f88:	f85d 7b04 	ldr.w	r7, [sp], #4
87801f8c:	4770      	bx	lr
87801f8e:	bf00      	nop

87801f90 <strnlen>:
87801f90:	b480      	push	{r7}
87801f92:	b085      	sub	sp, #20
87801f94:	af00      	add	r7, sp, #0
87801f96:	6078      	str	r0, [r7, #4]
87801f98:	6039      	str	r1, [r7, #0]
87801f9a:	687b      	ldr	r3, [r7, #4]
87801f9c:	60fb      	str	r3, [r7, #12]
87801f9e:	e002      	b.n	87801fa6 <strnlen+0x16>
87801fa0:	68fb      	ldr	r3, [r7, #12]
87801fa2:	3301      	adds	r3, #1
87801fa4:	60fb      	str	r3, [r7, #12]
87801fa6:	683b      	ldr	r3, [r7, #0]
87801fa8:	1e5a      	subs	r2, r3, #1
87801faa:	603a      	str	r2, [r7, #0]
87801fac:	2b00      	cmp	r3, #0
87801fae:	d003      	beq.n	87801fb8 <strnlen+0x28>
87801fb0:	68fb      	ldr	r3, [r7, #12]
87801fb2:	781b      	ldrb	r3, [r3, #0]
87801fb4:	2b00      	cmp	r3, #0
87801fb6:	d1f3      	bne.n	87801fa0 <strnlen+0x10>
87801fb8:	68fa      	ldr	r2, [r7, #12]
87801fba:	687b      	ldr	r3, [r7, #4]
87801fbc:	1ad3      	subs	r3, r2, r3
87801fbe:	4618      	mov	r0, r3
87801fc0:	3714      	adds	r7, #20
87801fc2:	46bd      	mov	sp, r7
87801fc4:	f85d 7b04 	ldr.w	r7, [sp], #4
87801fc8:	4770      	bx	lr
87801fca:	bf00      	nop

87801fcc <strspn>:
87801fcc:	b480      	push	{r7}
87801fce:	b087      	sub	sp, #28
87801fd0:	af00      	add	r7, sp, #0
87801fd2:	6078      	str	r0, [r7, #4]
87801fd4:	6039      	str	r1, [r7, #0]
87801fd6:	2300      	movs	r3, #0
87801fd8:	60fb      	str	r3, [r7, #12]
87801fda:	687b      	ldr	r3, [r7, #4]
87801fdc:	617b      	str	r3, [r7, #20]
87801fde:	e01c      	b.n	8780201a <strspn+0x4e>
87801fe0:	683b      	ldr	r3, [r7, #0]
87801fe2:	613b      	str	r3, [r7, #16]
87801fe4:	e009      	b.n	87801ffa <strspn+0x2e>
87801fe6:	697b      	ldr	r3, [r7, #20]
87801fe8:	781a      	ldrb	r2, [r3, #0]
87801fea:	693b      	ldr	r3, [r7, #16]
87801fec:	781b      	ldrb	r3, [r3, #0]
87801fee:	429a      	cmp	r2, r3
87801ff0:	d100      	bne.n	87801ff4 <strspn+0x28>
87801ff2:	e006      	b.n	87802002 <strspn+0x36>
87801ff4:	693b      	ldr	r3, [r7, #16]
87801ff6:	3301      	adds	r3, #1
87801ff8:	613b      	str	r3, [r7, #16]
87801ffa:	693b      	ldr	r3, [r7, #16]
87801ffc:	781b      	ldrb	r3, [r3, #0]
87801ffe:	2b00      	cmp	r3, #0
87802000:	d1f1      	bne.n	87801fe6 <strspn+0x1a>
87802002:	693b      	ldr	r3, [r7, #16]
87802004:	781b      	ldrb	r3, [r3, #0]
87802006:	2b00      	cmp	r3, #0
87802008:	d101      	bne.n	8780200e <strspn+0x42>
8780200a:	68fb      	ldr	r3, [r7, #12]
8780200c:	e00a      	b.n	87802024 <strspn+0x58>
8780200e:	68fb      	ldr	r3, [r7, #12]
87802010:	3301      	adds	r3, #1
87802012:	60fb      	str	r3, [r7, #12]
87802014:	697b      	ldr	r3, [r7, #20]
87802016:	3301      	adds	r3, #1
87802018:	617b      	str	r3, [r7, #20]
8780201a:	697b      	ldr	r3, [r7, #20]
8780201c:	781b      	ldrb	r3, [r3, #0]
8780201e:	2b00      	cmp	r3, #0
87802020:	d1de      	bne.n	87801fe0 <strspn+0x14>
87802022:	68fb      	ldr	r3, [r7, #12]
87802024:	4618      	mov	r0, r3
87802026:	371c      	adds	r7, #28
87802028:	46bd      	mov	sp, r7
8780202a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780202e:	4770      	bx	lr

87802030 <strpbrk>:
87802030:	b480      	push	{r7}
87802032:	b085      	sub	sp, #20
87802034:	af00      	add	r7, sp, #0
87802036:	6078      	str	r0, [r7, #4]
87802038:	6039      	str	r1, [r7, #0]
8780203a:	687b      	ldr	r3, [r7, #4]
8780203c:	60fb      	str	r3, [r7, #12]
8780203e:	e014      	b.n	8780206a <strpbrk+0x3a>
87802040:	683b      	ldr	r3, [r7, #0]
87802042:	60bb      	str	r3, [r7, #8]
87802044:	e00a      	b.n	8780205c <strpbrk+0x2c>
87802046:	68fb      	ldr	r3, [r7, #12]
87802048:	781a      	ldrb	r2, [r3, #0]
8780204a:	68bb      	ldr	r3, [r7, #8]
8780204c:	781b      	ldrb	r3, [r3, #0]
8780204e:	429a      	cmp	r2, r3
87802050:	d101      	bne.n	87802056 <strpbrk+0x26>
87802052:	68fb      	ldr	r3, [r7, #12]
87802054:	e00e      	b.n	87802074 <strpbrk+0x44>
87802056:	68bb      	ldr	r3, [r7, #8]
87802058:	3301      	adds	r3, #1
8780205a:	60bb      	str	r3, [r7, #8]
8780205c:	68bb      	ldr	r3, [r7, #8]
8780205e:	781b      	ldrb	r3, [r3, #0]
87802060:	2b00      	cmp	r3, #0
87802062:	d1f0      	bne.n	87802046 <strpbrk+0x16>
87802064:	68fb      	ldr	r3, [r7, #12]
87802066:	3301      	adds	r3, #1
87802068:	60fb      	str	r3, [r7, #12]
8780206a:	68fb      	ldr	r3, [r7, #12]
8780206c:	781b      	ldrb	r3, [r3, #0]
8780206e:	2b00      	cmp	r3, #0
87802070:	d1e6      	bne.n	87802040 <strpbrk+0x10>
87802072:	2300      	movs	r3, #0
87802074:	4618      	mov	r0, r3
87802076:	3714      	adds	r7, #20
87802078:	46bd      	mov	sp, r7
8780207a:	f85d 7b04 	ldr.w	r7, [sp], #4
8780207e:	4770      	bx	lr

87802080 <strtok>:
87802080:	b580      	push	{r7, lr}
87802082:	b084      	sub	sp, #16
87802084:	af00      	add	r7, sp, #0
87802086:	6078      	str	r0, [r7, #4]
87802088:	6039      	str	r1, [r7, #0]
8780208a:	687b      	ldr	r3, [r7, #4]
8780208c:	2b00      	cmp	r3, #0
8780208e:	d001      	beq.n	87802094 <strtok+0x14>
87802090:	687b      	ldr	r3, [r7, #4]
87802092:	e004      	b.n	8780209e <strtok+0x1e>
87802094:	f64c 0318 	movw	r3, #51224	; 0xc818
87802098:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780209c:	681b      	ldr	r3, [r3, #0]
8780209e:	60bb      	str	r3, [r7, #8]
878020a0:	68bb      	ldr	r3, [r7, #8]
878020a2:	2b00      	cmp	r3, #0
878020a4:	d101      	bne.n	878020aa <strtok+0x2a>
878020a6:	2300      	movs	r3, #0
878020a8:	e02b      	b.n	87802102 <strtok+0x82>
878020aa:	6839      	ldr	r1, [r7, #0]
878020ac:	68b8      	ldr	r0, [r7, #8]
878020ae:	f7ff ff8d 	bl	87801fcc <strspn>
878020b2:	4602      	mov	r2, r0
878020b4:	68bb      	ldr	r3, [r7, #8]
878020b6:	4413      	add	r3, r2
878020b8:	60bb      	str	r3, [r7, #8]
878020ba:	68bb      	ldr	r3, [r7, #8]
878020bc:	781b      	ldrb	r3, [r3, #0]
878020be:	2b00      	cmp	r3, #0
878020c0:	d107      	bne.n	878020d2 <strtok+0x52>
878020c2:	f64c 0318 	movw	r3, #51224	; 0xc818
878020c6:	f2c8 7380 	movt	r3, #34688	; 0x8780
878020ca:	2200      	movs	r2, #0
878020cc:	601a      	str	r2, [r3, #0]
878020ce:	2300      	movs	r3, #0
878020d0:	e017      	b.n	87802102 <strtok+0x82>
878020d2:	6839      	ldr	r1, [r7, #0]
878020d4:	68b8      	ldr	r0, [r7, #8]
878020d6:	f7ff ffab 	bl	87802030 <strpbrk>
878020da:	60f8      	str	r0, [r7, #12]
878020dc:	68fb      	ldr	r3, [r7, #12]
878020de:	2b00      	cmp	r3, #0
878020e0:	d008      	beq.n	878020f4 <strtok+0x74>
878020e2:	68fb      	ldr	r3, [r7, #12]
878020e4:	781b      	ldrb	r3, [r3, #0]
878020e6:	2b00      	cmp	r3, #0
878020e8:	d004      	beq.n	878020f4 <strtok+0x74>
878020ea:	68fb      	ldr	r3, [r7, #12]
878020ec:	1c5a      	adds	r2, r3, #1
878020ee:	60fa      	str	r2, [r7, #12]
878020f0:	2200      	movs	r2, #0
878020f2:	701a      	strb	r2, [r3, #0]
878020f4:	f64c 0318 	movw	r3, #51224	; 0xc818
878020f8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878020fc:	68fa      	ldr	r2, [r7, #12]
878020fe:	601a      	str	r2, [r3, #0]
87802100:	68bb      	ldr	r3, [r7, #8]
87802102:	4618      	mov	r0, r3
87802104:	3710      	adds	r7, #16
87802106:	46bd      	mov	sp, r7
87802108:	bd80      	pop	{r7, pc}
8780210a:	bf00      	nop

8780210c <strsep>:
8780210c:	b580      	push	{r7, lr}
8780210e:	b084      	sub	sp, #16
87802110:	af00      	add	r7, sp, #0
87802112:	6078      	str	r0, [r7, #4]
87802114:	6039      	str	r1, [r7, #0]
87802116:	687b      	ldr	r3, [r7, #4]
87802118:	681b      	ldr	r3, [r3, #0]
8780211a:	60bb      	str	r3, [r7, #8]
8780211c:	68bb      	ldr	r3, [r7, #8]
8780211e:	2b00      	cmp	r3, #0
87802120:	d101      	bne.n	87802126 <strsep+0x1a>
87802122:	2300      	movs	r3, #0
87802124:	e010      	b.n	87802148 <strsep+0x3c>
87802126:	6839      	ldr	r1, [r7, #0]
87802128:	68b8      	ldr	r0, [r7, #8]
8780212a:	f7ff ff81 	bl	87802030 <strpbrk>
8780212e:	60f8      	str	r0, [r7, #12]
87802130:	68fb      	ldr	r3, [r7, #12]
87802132:	2b00      	cmp	r3, #0
87802134:	d004      	beq.n	87802140 <strsep+0x34>
87802136:	68fb      	ldr	r3, [r7, #12]
87802138:	1c5a      	adds	r2, r3, #1
8780213a:	60fa      	str	r2, [r7, #12]
8780213c:	2200      	movs	r2, #0
8780213e:	701a      	strb	r2, [r3, #0]
87802140:	687b      	ldr	r3, [r7, #4]
87802142:	68fa      	ldr	r2, [r7, #12]
87802144:	601a      	str	r2, [r3, #0]
87802146:	68bb      	ldr	r3, [r7, #8]
87802148:	4618      	mov	r0, r3
8780214a:	3710      	adds	r7, #16
8780214c:	46bd      	mov	sp, r7
8780214e:	bd80      	pop	{r7, pc}

87802150 <memset>:
87802150:	b480      	push	{r7}
87802152:	b087      	sub	sp, #28
87802154:	af00      	add	r7, sp, #0
87802156:	60f8      	str	r0, [r7, #12]
87802158:	60b9      	str	r1, [r7, #8]
8780215a:	607a      	str	r2, [r7, #4]
8780215c:	68fb      	ldr	r3, [r7, #12]
8780215e:	617b      	str	r3, [r7, #20]
87802160:	e005      	b.n	8780216e <memset+0x1e>
87802162:	697b      	ldr	r3, [r7, #20]
87802164:	1c5a      	adds	r2, r3, #1
87802166:	617a      	str	r2, [r7, #20]
87802168:	68ba      	ldr	r2, [r7, #8]
8780216a:	b2d2      	uxtb	r2, r2
8780216c:	701a      	strb	r2, [r3, #0]
8780216e:	687b      	ldr	r3, [r7, #4]
87802170:	1e5a      	subs	r2, r3, #1
87802172:	607a      	str	r2, [r7, #4]
87802174:	2b00      	cmp	r3, #0
87802176:	d1f4      	bne.n	87802162 <memset+0x12>
87802178:	68fb      	ldr	r3, [r7, #12]
8780217a:	4618      	mov	r0, r3
8780217c:	371c      	adds	r7, #28
8780217e:	46bd      	mov	sp, r7
87802180:	f85d 7b04 	ldr.w	r7, [sp], #4
87802184:	4770      	bx	lr
87802186:	bf00      	nop

87802188 <bcopy>:
87802188:	b480      	push	{r7}
8780218a:	b087      	sub	sp, #28
8780218c:	af00      	add	r7, sp, #0
8780218e:	60f8      	str	r0, [r7, #12]
87802190:	60b9      	str	r1, [r7, #8]
87802192:	607a      	str	r2, [r7, #4]
87802194:	68bb      	ldr	r3, [r7, #8]
87802196:	617b      	str	r3, [r7, #20]
87802198:	68fb      	ldr	r3, [r7, #12]
8780219a:	613b      	str	r3, [r7, #16]
8780219c:	e007      	b.n	878021ae <bcopy+0x26>
8780219e:	697b      	ldr	r3, [r7, #20]
878021a0:	1c5a      	adds	r2, r3, #1
878021a2:	617a      	str	r2, [r7, #20]
878021a4:	693a      	ldr	r2, [r7, #16]
878021a6:	1c51      	adds	r1, r2, #1
878021a8:	6139      	str	r1, [r7, #16]
878021aa:	7812      	ldrb	r2, [r2, #0]
878021ac:	701a      	strb	r2, [r3, #0]
878021ae:	687b      	ldr	r3, [r7, #4]
878021b0:	1e5a      	subs	r2, r3, #1
878021b2:	607a      	str	r2, [r7, #4]
878021b4:	2b00      	cmp	r3, #0
878021b6:	d1f2      	bne.n	8780219e <bcopy+0x16>
878021b8:	371c      	adds	r7, #28
878021ba:	46bd      	mov	sp, r7
878021bc:	f85d 7b04 	ldr.w	r7, [sp], #4
878021c0:	4770      	bx	lr
878021c2:	bf00      	nop

878021c4 <memcpy>:
878021c4:	b480      	push	{r7}
878021c6:	b087      	sub	sp, #28
878021c8:	af00      	add	r7, sp, #0
878021ca:	60f8      	str	r0, [r7, #12]
878021cc:	60b9      	str	r1, [r7, #8]
878021ce:	607a      	str	r2, [r7, #4]
878021d0:	68fb      	ldr	r3, [r7, #12]
878021d2:	617b      	str	r3, [r7, #20]
878021d4:	68bb      	ldr	r3, [r7, #8]
878021d6:	613b      	str	r3, [r7, #16]
878021d8:	e007      	b.n	878021ea <memcpy+0x26>
878021da:	697b      	ldr	r3, [r7, #20]
878021dc:	1c5a      	adds	r2, r3, #1
878021de:	617a      	str	r2, [r7, #20]
878021e0:	693a      	ldr	r2, [r7, #16]
878021e2:	1c51      	adds	r1, r2, #1
878021e4:	6139      	str	r1, [r7, #16]
878021e6:	7812      	ldrb	r2, [r2, #0]
878021e8:	701a      	strb	r2, [r3, #0]
878021ea:	687b      	ldr	r3, [r7, #4]
878021ec:	1e5a      	subs	r2, r3, #1
878021ee:	607a      	str	r2, [r7, #4]
878021f0:	2b00      	cmp	r3, #0
878021f2:	d1f2      	bne.n	878021da <memcpy+0x16>
878021f4:	68fb      	ldr	r3, [r7, #12]
878021f6:	4618      	mov	r0, r3
878021f8:	371c      	adds	r7, #28
878021fa:	46bd      	mov	sp, r7
878021fc:	f85d 7b04 	ldr.w	r7, [sp], #4
87802200:	4770      	bx	lr
87802202:	bf00      	nop

87802204 <memmove>:
87802204:	b480      	push	{r7}
87802206:	b087      	sub	sp, #28
87802208:	af00      	add	r7, sp, #0
8780220a:	60f8      	str	r0, [r7, #12]
8780220c:	60b9      	str	r1, [r7, #8]
8780220e:	607a      	str	r2, [r7, #4]
87802210:	68fa      	ldr	r2, [r7, #12]
87802212:	68bb      	ldr	r3, [r7, #8]
87802214:	429a      	cmp	r2, r3
87802216:	d812      	bhi.n	8780223e <memmove+0x3a>
87802218:	68fb      	ldr	r3, [r7, #12]
8780221a:	617b      	str	r3, [r7, #20]
8780221c:	68bb      	ldr	r3, [r7, #8]
8780221e:	613b      	str	r3, [r7, #16]
87802220:	e007      	b.n	87802232 <memmove+0x2e>
87802222:	697b      	ldr	r3, [r7, #20]
87802224:	1c5a      	adds	r2, r3, #1
87802226:	617a      	str	r2, [r7, #20]
87802228:	693a      	ldr	r2, [r7, #16]
8780222a:	1c51      	adds	r1, r2, #1
8780222c:	6139      	str	r1, [r7, #16]
8780222e:	7812      	ldrb	r2, [r2, #0]
87802230:	701a      	strb	r2, [r3, #0]
87802232:	687b      	ldr	r3, [r7, #4]
87802234:	1e5a      	subs	r2, r3, #1
87802236:	607a      	str	r2, [r7, #4]
87802238:	2b00      	cmp	r3, #0
8780223a:	d1f2      	bne.n	87802222 <memmove+0x1e>
8780223c:	e017      	b.n	8780226e <memmove+0x6a>
8780223e:	68fa      	ldr	r2, [r7, #12]
87802240:	687b      	ldr	r3, [r7, #4]
87802242:	4413      	add	r3, r2
87802244:	617b      	str	r3, [r7, #20]
87802246:	68ba      	ldr	r2, [r7, #8]
87802248:	687b      	ldr	r3, [r7, #4]
8780224a:	4413      	add	r3, r2
8780224c:	613b      	str	r3, [r7, #16]
8780224e:	e009      	b.n	87802264 <memmove+0x60>
87802250:	697b      	ldr	r3, [r7, #20]
87802252:	3b01      	subs	r3, #1
87802254:	617b      	str	r3, [r7, #20]
87802256:	693b      	ldr	r3, [r7, #16]
87802258:	3b01      	subs	r3, #1
8780225a:	613b      	str	r3, [r7, #16]
8780225c:	693b      	ldr	r3, [r7, #16]
8780225e:	781a      	ldrb	r2, [r3, #0]
87802260:	697b      	ldr	r3, [r7, #20]
87802262:	701a      	strb	r2, [r3, #0]
87802264:	687b      	ldr	r3, [r7, #4]
87802266:	1e5a      	subs	r2, r3, #1
87802268:	607a      	str	r2, [r7, #4]
8780226a:	2b00      	cmp	r3, #0
8780226c:	d1f0      	bne.n	87802250 <memmove+0x4c>
8780226e:	68fb      	ldr	r3, [r7, #12]
87802270:	4618      	mov	r0, r3
87802272:	371c      	adds	r7, #28
87802274:	46bd      	mov	sp, r7
87802276:	f85d 7b04 	ldr.w	r7, [sp], #4
8780227a:	4770      	bx	lr

8780227c <memcmp>:
8780227c:	b480      	push	{r7}
8780227e:	b089      	sub	sp, #36	; 0x24
87802280:	af00      	add	r7, sp, #0
87802282:	60f8      	str	r0, [r7, #12]
87802284:	60b9      	str	r1, [r7, #8]
87802286:	607a      	str	r2, [r7, #4]
87802288:	2300      	movs	r3, #0
8780228a:	617b      	str	r3, [r7, #20]
8780228c:	68fb      	ldr	r3, [r7, #12]
8780228e:	61fb      	str	r3, [r7, #28]
87802290:	68bb      	ldr	r3, [r7, #8]
87802292:	61bb      	str	r3, [r7, #24]
87802294:	e013      	b.n	878022be <memcmp+0x42>
87802296:	69fb      	ldr	r3, [r7, #28]
87802298:	781b      	ldrb	r3, [r3, #0]
8780229a:	461a      	mov	r2, r3
8780229c:	69bb      	ldr	r3, [r7, #24]
8780229e:	781b      	ldrb	r3, [r3, #0]
878022a0:	1ad3      	subs	r3, r2, r3
878022a2:	617b      	str	r3, [r7, #20]
878022a4:	697b      	ldr	r3, [r7, #20]
878022a6:	2b00      	cmp	r3, #0
878022a8:	d000      	beq.n	878022ac <memcmp+0x30>
878022aa:	e00b      	b.n	878022c4 <memcmp+0x48>
878022ac:	69fb      	ldr	r3, [r7, #28]
878022ae:	3301      	adds	r3, #1
878022b0:	61fb      	str	r3, [r7, #28]
878022b2:	69bb      	ldr	r3, [r7, #24]
878022b4:	3301      	adds	r3, #1
878022b6:	61bb      	str	r3, [r7, #24]
878022b8:	687b      	ldr	r3, [r7, #4]
878022ba:	3b01      	subs	r3, #1
878022bc:	607b      	str	r3, [r7, #4]
878022be:	687b      	ldr	r3, [r7, #4]
878022c0:	2b00      	cmp	r3, #0
878022c2:	d1e8      	bne.n	87802296 <memcmp+0x1a>
878022c4:	697b      	ldr	r3, [r7, #20]
878022c6:	4618      	mov	r0, r3
878022c8:	3724      	adds	r7, #36	; 0x24
878022ca:	46bd      	mov	sp, r7
878022cc:	f85d 7b04 	ldr.w	r7, [sp], #4
878022d0:	4770      	bx	lr
878022d2:	bf00      	nop

878022d4 <memscan>:
878022d4:	b480      	push	{r7}
878022d6:	b087      	sub	sp, #28
878022d8:	af00      	add	r7, sp, #0
878022da:	60f8      	str	r0, [r7, #12]
878022dc:	60b9      	str	r1, [r7, #8]
878022de:	607a      	str	r2, [r7, #4]
878022e0:	68fb      	ldr	r3, [r7, #12]
878022e2:	617b      	str	r3, [r7, #20]
878022e4:	e00d      	b.n	87802302 <memscan+0x2e>
878022e6:	697b      	ldr	r3, [r7, #20]
878022e8:	781b      	ldrb	r3, [r3, #0]
878022ea:	461a      	mov	r2, r3
878022ec:	68bb      	ldr	r3, [r7, #8]
878022ee:	429a      	cmp	r2, r3
878022f0:	d101      	bne.n	878022f6 <memscan+0x22>
878022f2:	697b      	ldr	r3, [r7, #20]
878022f4:	e009      	b.n	8780230a <memscan+0x36>
878022f6:	697b      	ldr	r3, [r7, #20]
878022f8:	3301      	adds	r3, #1
878022fa:	617b      	str	r3, [r7, #20]
878022fc:	687b      	ldr	r3, [r7, #4]
878022fe:	3b01      	subs	r3, #1
87802300:	607b      	str	r3, [r7, #4]
87802302:	687b      	ldr	r3, [r7, #4]
87802304:	2b00      	cmp	r3, #0
87802306:	d1ee      	bne.n	878022e6 <memscan+0x12>
87802308:	697b      	ldr	r3, [r7, #20]
8780230a:	4618      	mov	r0, r3
8780230c:	371c      	adds	r7, #28
8780230e:	46bd      	mov	sp, r7
87802310:	f85d 7b04 	ldr.w	r7, [sp], #4
87802314:	4770      	bx	lr
87802316:	bf00      	nop

87802318 <strstr>:
87802318:	b580      	push	{r7, lr}
8780231a:	b084      	sub	sp, #16
8780231c:	af00      	add	r7, sp, #0
8780231e:	6078      	str	r0, [r7, #4]
87802320:	6039      	str	r1, [r7, #0]
87802322:	6838      	ldr	r0, [r7, #0]
87802324:	f7ff fe1c 	bl	87801f60 <strlen>
87802328:	4603      	mov	r3, r0
8780232a:	60bb      	str	r3, [r7, #8]
8780232c:	68bb      	ldr	r3, [r7, #8]
8780232e:	2b00      	cmp	r3, #0
87802330:	d101      	bne.n	87802336 <strstr+0x1e>
87802332:	687b      	ldr	r3, [r7, #4]
87802334:	e01b      	b.n	8780236e <strstr+0x56>
87802336:	6878      	ldr	r0, [r7, #4]
87802338:	f7ff fe12 	bl	87801f60 <strlen>
8780233c:	4603      	mov	r3, r0
8780233e:	60fb      	str	r3, [r7, #12]
87802340:	e010      	b.n	87802364 <strstr+0x4c>
87802342:	68fb      	ldr	r3, [r7, #12]
87802344:	3b01      	subs	r3, #1
87802346:	60fb      	str	r3, [r7, #12]
87802348:	68bb      	ldr	r3, [r7, #8]
8780234a:	461a      	mov	r2, r3
8780234c:	6839      	ldr	r1, [r7, #0]
8780234e:	6878      	ldr	r0, [r7, #4]
87802350:	f7ff ff94 	bl	8780227c <memcmp>
87802354:	4603      	mov	r3, r0
87802356:	2b00      	cmp	r3, #0
87802358:	d101      	bne.n	8780235e <strstr+0x46>
8780235a:	687b      	ldr	r3, [r7, #4]
8780235c:	e007      	b.n	8780236e <strstr+0x56>
8780235e:	687b      	ldr	r3, [r7, #4]
87802360:	3301      	adds	r3, #1
87802362:	607b      	str	r3, [r7, #4]
87802364:	68fa      	ldr	r2, [r7, #12]
87802366:	68bb      	ldr	r3, [r7, #8]
87802368:	429a      	cmp	r2, r3
8780236a:	daea      	bge.n	87802342 <strstr+0x2a>
8780236c:	2300      	movs	r3, #0
8780236e:	4618      	mov	r0, r3
87802370:	3710      	adds	r7, #16
87802372:	46bd      	mov	sp, r7
87802374:	bd80      	pop	{r7, pc}
87802376:	bf00      	nop

87802378 <memchr>:
87802378:	b480      	push	{r7}
8780237a:	b087      	sub	sp, #28
8780237c:	af00      	add	r7, sp, #0
8780237e:	60f8      	str	r0, [r7, #12]
87802380:	60b9      	str	r1, [r7, #8]
87802382:	607a      	str	r2, [r7, #4]
87802384:	68fb      	ldr	r3, [r7, #12]
87802386:	617b      	str	r3, [r7, #20]
87802388:	e00a      	b.n	878023a0 <memchr+0x28>
8780238a:	68bb      	ldr	r3, [r7, #8]
8780238c:	b2da      	uxtb	r2, r3
8780238e:	697b      	ldr	r3, [r7, #20]
87802390:	1c59      	adds	r1, r3, #1
87802392:	6179      	str	r1, [r7, #20]
87802394:	781b      	ldrb	r3, [r3, #0]
87802396:	429a      	cmp	r2, r3
87802398:	d102      	bne.n	878023a0 <memchr+0x28>
8780239a:	697b      	ldr	r3, [r7, #20]
8780239c:	3b01      	subs	r3, #1
8780239e:	e005      	b.n	878023ac <memchr+0x34>
878023a0:	687b      	ldr	r3, [r7, #4]
878023a2:	1e5a      	subs	r2, r3, #1
878023a4:	607a      	str	r2, [r7, #4]
878023a6:	2b00      	cmp	r3, #0
878023a8:	d1ef      	bne.n	8780238a <memchr+0x12>
878023aa:	2300      	movs	r3, #0
878023ac:	4618      	mov	r0, r3
878023ae:	371c      	adds	r7, #28
878023b0:	46bd      	mov	sp, r7
878023b2:	f85d 7b04 	ldr.w	r7, [sp], #4
878023b6:	4770      	bx	lr

878023b8 <__toupper>:
878023b8:	b480      	push	{r7}
878023ba:	b083      	sub	sp, #12
878023bc:	af00      	add	r7, sp, #0
878023be:	4603      	mov	r3, r0
878023c0:	71fb      	strb	r3, [r7, #7]
878023c2:	79fa      	ldrb	r2, [r7, #7]
878023c4:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
878023c8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878023cc:	5c9b      	ldrb	r3, [r3, r2]
878023ce:	f003 0302 	and.w	r3, r3, #2
878023d2:	2b00      	cmp	r3, #0
878023d4:	d002      	beq.n	878023dc <__toupper+0x24>
878023d6:	79fb      	ldrb	r3, [r7, #7]
878023d8:	3b20      	subs	r3, #32
878023da:	71fb      	strb	r3, [r7, #7]
878023dc:	79fb      	ldrb	r3, [r7, #7]
878023de:	4618      	mov	r0, r3
878023e0:	370c      	adds	r7, #12
878023e2:	46bd      	mov	sp, r7
878023e4:	f85d 7b04 	ldr.w	r7, [sp], #4
878023e8:	4770      	bx	lr
878023ea:	bf00      	nop

878023ec <simple_strtoul>:
878023ec:	b580      	push	{r7, lr}
878023ee:	b086      	sub	sp, #24
878023f0:	af00      	add	r7, sp, #0
878023f2:	60f8      	str	r0, [r7, #12]
878023f4:	60b9      	str	r1, [r7, #8]
878023f6:	607a      	str	r2, [r7, #4]
878023f8:	2300      	movs	r3, #0
878023fa:	617b      	str	r3, [r7, #20]
878023fc:	687b      	ldr	r3, [r7, #4]
878023fe:	2b00      	cmp	r3, #0
87802400:	d125      	bne.n	8780244e <simple_strtoul+0x62>
87802402:	230a      	movs	r3, #10
87802404:	607b      	str	r3, [r7, #4]
87802406:	68fb      	ldr	r3, [r7, #12]
87802408:	781b      	ldrb	r3, [r3, #0]
8780240a:	2b30      	cmp	r3, #48	; 0x30
8780240c:	d132      	bne.n	87802474 <simple_strtoul+0x88>
8780240e:	2308      	movs	r3, #8
87802410:	607b      	str	r3, [r7, #4]
87802412:	68fb      	ldr	r3, [r7, #12]
87802414:	3301      	adds	r3, #1
87802416:	60fb      	str	r3, [r7, #12]
87802418:	68fb      	ldr	r3, [r7, #12]
8780241a:	781b      	ldrb	r3, [r3, #0]
8780241c:	4618      	mov	r0, r3
8780241e:	f7ff ffcb 	bl	878023b8 <__toupper>
87802422:	4603      	mov	r3, r0
87802424:	2b58      	cmp	r3, #88	; 0x58
87802426:	d125      	bne.n	87802474 <simple_strtoul+0x88>
87802428:	68fb      	ldr	r3, [r7, #12]
8780242a:	3301      	adds	r3, #1
8780242c:	781b      	ldrb	r3, [r3, #0]
8780242e:	461a      	mov	r2, r3
87802430:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87802434:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802438:	5c9b      	ldrb	r3, [r3, r2]
8780243a:	f003 0344 	and.w	r3, r3, #68	; 0x44
8780243e:	2b00      	cmp	r3, #0
87802440:	d018      	beq.n	87802474 <simple_strtoul+0x88>
87802442:	68fb      	ldr	r3, [r7, #12]
87802444:	3301      	adds	r3, #1
87802446:	60fb      	str	r3, [r7, #12]
87802448:	2310      	movs	r3, #16
8780244a:	607b      	str	r3, [r7, #4]
8780244c:	e01d      	b.n	8780248a <simple_strtoul+0x9e>
8780244e:	687b      	ldr	r3, [r7, #4]
87802450:	2b10      	cmp	r3, #16
87802452:	d10f      	bne.n	87802474 <simple_strtoul+0x88>
87802454:	68fb      	ldr	r3, [r7, #12]
87802456:	781b      	ldrb	r3, [r3, #0]
87802458:	2b30      	cmp	r3, #48	; 0x30
8780245a:	d10b      	bne.n	87802474 <simple_strtoul+0x88>
8780245c:	68fb      	ldr	r3, [r7, #12]
8780245e:	3301      	adds	r3, #1
87802460:	781b      	ldrb	r3, [r3, #0]
87802462:	4618      	mov	r0, r3
87802464:	f7ff ffa8 	bl	878023b8 <__toupper>
87802468:	4603      	mov	r3, r0
8780246a:	2b58      	cmp	r3, #88	; 0x58
8780246c:	d102      	bne.n	87802474 <simple_strtoul+0x88>
8780246e:	68fb      	ldr	r3, [r7, #12]
87802470:	3302      	adds	r3, #2
87802472:	60fb      	str	r3, [r7, #12]
87802474:	e009      	b.n	8780248a <simple_strtoul+0x9e>
87802476:	697b      	ldr	r3, [r7, #20]
87802478:	687a      	ldr	r2, [r7, #4]
8780247a:	fb02 f203 	mul.w	r2, r2, r3
8780247e:	693b      	ldr	r3, [r7, #16]
87802480:	4413      	add	r3, r2
87802482:	617b      	str	r3, [r7, #20]
87802484:	68fb      	ldr	r3, [r7, #12]
87802486:	3301      	adds	r3, #1
87802488:	60fb      	str	r3, [r7, #12]
8780248a:	68fb      	ldr	r3, [r7, #12]
8780248c:	781b      	ldrb	r3, [r3, #0]
8780248e:	461a      	mov	r2, r3
87802490:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87802494:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802498:	5c9b      	ldrb	r3, [r3, r2]
8780249a:	f003 0344 	and.w	r3, r3, #68	; 0x44
8780249e:	2b00      	cmp	r3, #0
878024a0:	d01b      	beq.n	878024da <simple_strtoul+0xee>
878024a2:	68fb      	ldr	r3, [r7, #12]
878024a4:	781b      	ldrb	r3, [r3, #0]
878024a6:	461a      	mov	r2, r3
878024a8:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
878024ac:	f2c8 7380 	movt	r3, #34688	; 0x8780
878024b0:	5c9b      	ldrb	r3, [r3, r2]
878024b2:	f003 0304 	and.w	r3, r3, #4
878024b6:	2b00      	cmp	r3, #0
878024b8:	d003      	beq.n	878024c2 <simple_strtoul+0xd6>
878024ba:	68fb      	ldr	r3, [r7, #12]
878024bc:	781b      	ldrb	r3, [r3, #0]
878024be:	3b30      	subs	r3, #48	; 0x30
878024c0:	e006      	b.n	878024d0 <simple_strtoul+0xe4>
878024c2:	68fb      	ldr	r3, [r7, #12]
878024c4:	781b      	ldrb	r3, [r3, #0]
878024c6:	4618      	mov	r0, r3
878024c8:	f7ff ff76 	bl	878023b8 <__toupper>
878024cc:	4603      	mov	r3, r0
878024ce:	3b37      	subs	r3, #55	; 0x37
878024d0:	613b      	str	r3, [r7, #16]
878024d2:	693a      	ldr	r2, [r7, #16]
878024d4:	687b      	ldr	r3, [r7, #4]
878024d6:	429a      	cmp	r2, r3
878024d8:	d3cd      	bcc.n	87802476 <simple_strtoul+0x8a>
878024da:	68bb      	ldr	r3, [r7, #8]
878024dc:	2b00      	cmp	r3, #0
878024de:	d002      	beq.n	878024e6 <simple_strtoul+0xfa>
878024e0:	68bb      	ldr	r3, [r7, #8]
878024e2:	68fa      	ldr	r2, [r7, #12]
878024e4:	601a      	str	r2, [r3, #0]
878024e6:	697b      	ldr	r3, [r7, #20]
878024e8:	4618      	mov	r0, r3
878024ea:	3718      	adds	r7, #24
878024ec:	46bd      	mov	sp, r7
878024ee:	bd80      	pop	{r7, pc}

878024f0 <simple_strtol>:
878024f0:	b580      	push	{r7, lr}
878024f2:	b084      	sub	sp, #16
878024f4:	af00      	add	r7, sp, #0
878024f6:	60f8      	str	r0, [r7, #12]
878024f8:	60b9      	str	r1, [r7, #8]
878024fa:	607a      	str	r2, [r7, #4]
878024fc:	68fb      	ldr	r3, [r7, #12]
878024fe:	781b      	ldrb	r3, [r3, #0]
87802500:	2b2d      	cmp	r3, #45	; 0x2d
87802502:	d109      	bne.n	87802518 <simple_strtol+0x28>
87802504:	68fb      	ldr	r3, [r7, #12]
87802506:	3301      	adds	r3, #1
87802508:	687a      	ldr	r2, [r7, #4]
8780250a:	68b9      	ldr	r1, [r7, #8]
8780250c:	4618      	mov	r0, r3
8780250e:	f7ff ff6d 	bl	878023ec <simple_strtoul>
87802512:	4603      	mov	r3, r0
87802514:	425b      	negs	r3, r3
87802516:	e005      	b.n	87802524 <simple_strtol+0x34>
87802518:	687a      	ldr	r2, [r7, #4]
8780251a:	68b9      	ldr	r1, [r7, #8]
8780251c:	68f8      	ldr	r0, [r7, #12]
8780251e:	f7ff ff65 	bl	878023ec <simple_strtoul>
87802522:	4603      	mov	r3, r0
87802524:	4618      	mov	r0, r3
87802526:	3710      	adds	r7, #16
87802528:	46bd      	mov	sp, r7
8780252a:	bd80      	pop	{r7, pc}

8780252c <simple_strtoull>:
8780252c:	b590      	push	{r4, r7, lr}
8780252e:	b089      	sub	sp, #36	; 0x24
87802530:	af00      	add	r7, sp, #0
87802532:	60f8      	str	r0, [r7, #12]
87802534:	60b9      	str	r1, [r7, #8]
87802536:	607a      	str	r2, [r7, #4]
87802538:	f04f 0300 	mov.w	r3, #0
8780253c:	f04f 0400 	mov.w	r4, #0
87802540:	e9c7 3406 	strd	r3, r4, [r7, #24]
87802544:	687b      	ldr	r3, [r7, #4]
87802546:	2b00      	cmp	r3, #0
87802548:	d125      	bne.n	87802596 <simple_strtoull+0x6a>
8780254a:	230a      	movs	r3, #10
8780254c:	607b      	str	r3, [r7, #4]
8780254e:	68fb      	ldr	r3, [r7, #12]
87802550:	781b      	ldrb	r3, [r3, #0]
87802552:	2b30      	cmp	r3, #48	; 0x30
87802554:	d132      	bne.n	878025bc <simple_strtoull+0x90>
87802556:	2308      	movs	r3, #8
87802558:	607b      	str	r3, [r7, #4]
8780255a:	68fb      	ldr	r3, [r7, #12]
8780255c:	3301      	adds	r3, #1
8780255e:	60fb      	str	r3, [r7, #12]
87802560:	68fb      	ldr	r3, [r7, #12]
87802562:	781b      	ldrb	r3, [r3, #0]
87802564:	4618      	mov	r0, r3
87802566:	f7ff ff27 	bl	878023b8 <__toupper>
8780256a:	4603      	mov	r3, r0
8780256c:	2b58      	cmp	r3, #88	; 0x58
8780256e:	d125      	bne.n	878025bc <simple_strtoull+0x90>
87802570:	68fb      	ldr	r3, [r7, #12]
87802572:	3301      	adds	r3, #1
87802574:	781b      	ldrb	r3, [r3, #0]
87802576:	461a      	mov	r2, r3
87802578:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
8780257c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802580:	5c9b      	ldrb	r3, [r3, r2]
87802582:	f003 0344 	and.w	r3, r3, #68	; 0x44
87802586:	2b00      	cmp	r3, #0
87802588:	d018      	beq.n	878025bc <simple_strtoull+0x90>
8780258a:	68fb      	ldr	r3, [r7, #12]
8780258c:	3301      	adds	r3, #1
8780258e:	60fb      	str	r3, [r7, #12]
87802590:	2310      	movs	r3, #16
87802592:	607b      	str	r3, [r7, #4]
87802594:	e02c      	b.n	878025f0 <simple_strtoull+0xc4>
87802596:	687b      	ldr	r3, [r7, #4]
87802598:	2b10      	cmp	r3, #16
8780259a:	d10f      	bne.n	878025bc <simple_strtoull+0x90>
8780259c:	68fb      	ldr	r3, [r7, #12]
8780259e:	781b      	ldrb	r3, [r3, #0]
878025a0:	2b30      	cmp	r3, #48	; 0x30
878025a2:	d10b      	bne.n	878025bc <simple_strtoull+0x90>
878025a4:	68fb      	ldr	r3, [r7, #12]
878025a6:	3301      	adds	r3, #1
878025a8:	781b      	ldrb	r3, [r3, #0]
878025aa:	4618      	mov	r0, r3
878025ac:	f7ff ff04 	bl	878023b8 <__toupper>
878025b0:	4603      	mov	r3, r0
878025b2:	2b58      	cmp	r3, #88	; 0x58
878025b4:	d102      	bne.n	878025bc <simple_strtoull+0x90>
878025b6:	68fb      	ldr	r3, [r7, #12]
878025b8:	3302      	adds	r3, #2
878025ba:	60fb      	str	r3, [r7, #12]
878025bc:	e018      	b.n	878025f0 <simple_strtoull+0xc4>
878025be:	687b      	ldr	r3, [r7, #4]
878025c0:	f04f 0400 	mov.w	r4, #0
878025c4:	69ba      	ldr	r2, [r7, #24]
878025c6:	fb04 f102 	mul.w	r1, r4, r2
878025ca:	69fa      	ldr	r2, [r7, #28]
878025cc:	fb03 f202 	mul.w	r2, r3, r2
878025d0:	440a      	add	r2, r1
878025d2:	69b9      	ldr	r1, [r7, #24]
878025d4:	fba1 3403 	umull	r3, r4, r1, r3
878025d8:	4422      	add	r2, r4
878025da:	4614      	mov	r4, r2
878025dc:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
878025e0:	185b      	adds	r3, r3, r1
878025e2:	eb44 0402 	adc.w	r4, r4, r2
878025e6:	e9c7 3406 	strd	r3, r4, [r7, #24]
878025ea:	68fb      	ldr	r3, [r7, #12]
878025ec:	3301      	adds	r3, #1
878025ee:	60fb      	str	r3, [r7, #12]
878025f0:	68fb      	ldr	r3, [r7, #12]
878025f2:	781b      	ldrb	r3, [r3, #0]
878025f4:	461a      	mov	r2, r3
878025f6:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
878025fa:	f2c8 7380 	movt	r3, #34688	; 0x8780
878025fe:	5c9b      	ldrb	r3, [r3, r2]
87802600:	f003 0344 	and.w	r3, r3, #68	; 0x44
87802604:	2b00      	cmp	r3, #0
87802606:	d033      	beq.n	87802670 <simple_strtoull+0x144>
87802608:	68fb      	ldr	r3, [r7, #12]
8780260a:	781b      	ldrb	r3, [r3, #0]
8780260c:	461a      	mov	r2, r3
8780260e:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87802612:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802616:	5c9b      	ldrb	r3, [r3, r2]
87802618:	f003 0304 	and.w	r3, r3, #4
8780261c:	2b00      	cmp	r3, #0
8780261e:	d003      	beq.n	87802628 <simple_strtoull+0xfc>
87802620:	68fb      	ldr	r3, [r7, #12]
87802622:	781b      	ldrb	r3, [r3, #0]
87802624:	3b30      	subs	r3, #48	; 0x30
87802626:	e016      	b.n	87802656 <simple_strtoull+0x12a>
87802628:	68fb      	ldr	r3, [r7, #12]
8780262a:	781b      	ldrb	r3, [r3, #0]
8780262c:	461a      	mov	r2, r3
8780262e:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87802632:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802636:	5c9b      	ldrb	r3, [r3, r2]
87802638:	f003 0302 	and.w	r3, r3, #2
8780263c:	2b00      	cmp	r3, #0
8780263e:	d007      	beq.n	87802650 <simple_strtoull+0x124>
87802640:	68fb      	ldr	r3, [r7, #12]
87802642:	781b      	ldrb	r3, [r3, #0]
87802644:	4618      	mov	r0, r3
87802646:	f7ff feb7 	bl	878023b8 <__toupper>
8780264a:	4603      	mov	r3, r0
8780264c:	3b37      	subs	r3, #55	; 0x37
8780264e:	e002      	b.n	87802656 <simple_strtoull+0x12a>
87802650:	68fb      	ldr	r3, [r7, #12]
87802652:	781b      	ldrb	r3, [r3, #0]
87802654:	3b37      	subs	r3, #55	; 0x37
87802656:	ea4f 74e3 	mov.w	r4, r3, asr #31
8780265a:	e9c7 3404 	strd	r3, r4, [r7, #16]
8780265e:	687b      	ldr	r3, [r7, #4]
87802660:	f04f 0400 	mov.w	r4, #0
87802664:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
87802668:	42a2      	cmp	r2, r4
8780266a:	bf08      	it	eq
8780266c:	4299      	cmpeq	r1, r3
8780266e:	d3a6      	bcc.n	878025be <simple_strtoull+0x92>
87802670:	68bb      	ldr	r3, [r7, #8]
87802672:	2b00      	cmp	r3, #0
87802674:	d002      	beq.n	8780267c <simple_strtoull+0x150>
87802676:	68bb      	ldr	r3, [r7, #8]
87802678:	68fa      	ldr	r2, [r7, #12]
8780267a:	601a      	str	r2, [r3, #0]
8780267c:	e9d7 3406 	ldrd	r3, r4, [r7, #24]
87802680:	4618      	mov	r0, r3
87802682:	4621      	mov	r1, r4
87802684:	3724      	adds	r7, #36	; 0x24
87802686:	46bd      	mov	sp, r7
87802688:	bd90      	pop	{r4, r7, pc}
8780268a:	bf00      	nop

8780268c <simple_strtoll>:
8780268c:	b590      	push	{r4, r7, lr}
8780268e:	b085      	sub	sp, #20
87802690:	af00      	add	r7, sp, #0
87802692:	60f8      	str	r0, [r7, #12]
87802694:	60b9      	str	r1, [r7, #8]
87802696:	607a      	str	r2, [r7, #4]
87802698:	68fb      	ldr	r3, [r7, #12]
8780269a:	781b      	ldrb	r3, [r3, #0]
8780269c:	2b2d      	cmp	r3, #45	; 0x2d
8780269e:	d10c      	bne.n	878026ba <simple_strtoll+0x2e>
878026a0:	68fb      	ldr	r3, [r7, #12]
878026a2:	3301      	adds	r3, #1
878026a4:	687a      	ldr	r2, [r7, #4]
878026a6:	68b9      	ldr	r1, [r7, #8]
878026a8:	4618      	mov	r0, r3
878026aa:	f7ff ff3f 	bl	8780252c <simple_strtoull>
878026ae:	4603      	mov	r3, r0
878026b0:	460c      	mov	r4, r1
878026b2:	425b      	negs	r3, r3
878026b4:	eb64 0444 	sbc.w	r4, r4, r4, lsl #1
878026b8:	e006      	b.n	878026c8 <simple_strtoll+0x3c>
878026ba:	687a      	ldr	r2, [r7, #4]
878026bc:	68b9      	ldr	r1, [r7, #8]
878026be:	68f8      	ldr	r0, [r7, #12]
878026c0:	f7ff ff34 	bl	8780252c <simple_strtoull>
878026c4:	4603      	mov	r3, r0
878026c6:	460c      	mov	r4, r1
878026c8:	4618      	mov	r0, r3
878026ca:	4621      	mov	r1, r4
878026cc:	3714      	adds	r7, #20
878026ce:	46bd      	mov	sp, r7
878026d0:	bd90      	pop	{r4, r7, pc}
878026d2:	bf00      	nop

878026d4 <skip_atoi>:
878026d4:	b480      	push	{r7}
878026d6:	b085      	sub	sp, #20
878026d8:	af00      	add	r7, sp, #0
878026da:	6078      	str	r0, [r7, #4]
878026dc:	2300      	movs	r3, #0
878026de:	60fb      	str	r3, [r7, #12]
878026e0:	e00c      	b.n	878026fc <skip_atoi+0x28>
878026e2:	68fb      	ldr	r3, [r7, #12]
878026e4:	005b      	lsls	r3, r3, #1
878026e6:	009a      	lsls	r2, r3, #2
878026e8:	441a      	add	r2, r3
878026ea:	687b      	ldr	r3, [r7, #4]
878026ec:	681b      	ldr	r3, [r3, #0]
878026ee:	1c58      	adds	r0, r3, #1
878026f0:	6879      	ldr	r1, [r7, #4]
878026f2:	6008      	str	r0, [r1, #0]
878026f4:	781b      	ldrb	r3, [r3, #0]
878026f6:	4413      	add	r3, r2
878026f8:	3b30      	subs	r3, #48	; 0x30
878026fa:	60fb      	str	r3, [r7, #12]
878026fc:	687b      	ldr	r3, [r7, #4]
878026fe:	681b      	ldr	r3, [r3, #0]
87802700:	781b      	ldrb	r3, [r3, #0]
87802702:	461a      	mov	r2, r3
87802704:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87802708:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780270c:	5c9b      	ldrb	r3, [r3, r2]
8780270e:	f003 0304 	and.w	r3, r3, #4
87802712:	2b00      	cmp	r3, #0
87802714:	d1e5      	bne.n	878026e2 <skip_atoi+0xe>
87802716:	68fb      	ldr	r3, [r7, #12]
87802718:	4618      	mov	r0, r3
8780271a:	3714      	adds	r7, #20
8780271c:	46bd      	mov	sp, r7
8780271e:	f85d 7b04 	ldr.w	r7, [sp], #4
87802722:	4770      	bx	lr

87802724 <put_dec_trunc>:
87802724:	b480      	push	{r7}
87802726:	b087      	sub	sp, #28
87802728:	af00      	add	r7, sp, #0
8780272a:	6078      	str	r0, [r7, #4]
8780272c:	6039      	str	r1, [r7, #0]
8780272e:	683b      	ldr	r3, [r7, #0]
87802730:	091b      	lsrs	r3, r3, #4
87802732:	f003 030f 	and.w	r3, r3, #15
87802736:	617b      	str	r3, [r7, #20]
87802738:	683b      	ldr	r3, [r7, #0]
8780273a:	0a1b      	lsrs	r3, r3, #8
8780273c:	f003 030f 	and.w	r3, r3, #15
87802740:	613b      	str	r3, [r7, #16]
87802742:	683b      	ldr	r3, [r7, #0]
87802744:	0b1b      	lsrs	r3, r3, #12
87802746:	60fb      	str	r3, [r7, #12]
87802748:	68fa      	ldr	r2, [r7, #12]
8780274a:	693b      	ldr	r3, [r7, #16]
8780274c:	441a      	add	r2, r3
8780274e:	697b      	ldr	r3, [r7, #20]
87802750:	4413      	add	r3, r2
87802752:	005b      	lsls	r3, r3, #1
87802754:	009a      	lsls	r2, r3, #2
87802756:	1ad2      	subs	r2, r2, r3
87802758:	683b      	ldr	r3, [r7, #0]
8780275a:	f003 030f 	and.w	r3, r3, #15
8780275e:	4413      	add	r3, r2
87802760:	60bb      	str	r3, [r7, #8]
87802762:	68bb      	ldr	r3, [r7, #8]
87802764:	22cd      	movs	r2, #205	; 0xcd
87802766:	fb02 f303 	mul.w	r3, r2, r3
8780276a:	0adb      	lsrs	r3, r3, #11
8780276c:	603b      	str	r3, [r7, #0]
8780276e:	683b      	ldr	r3, [r7, #0]
87802770:	005b      	lsls	r3, r3, #1
87802772:	009a      	lsls	r2, r3, #2
87802774:	4413      	add	r3, r2
87802776:	68ba      	ldr	r2, [r7, #8]
87802778:	1ad3      	subs	r3, r2, r3
8780277a:	60bb      	str	r3, [r7, #8]
8780277c:	687b      	ldr	r3, [r7, #4]
8780277e:	1c5a      	adds	r2, r3, #1
87802780:	607a      	str	r2, [r7, #4]
87802782:	68ba      	ldr	r2, [r7, #8]
87802784:	b2d2      	uxtb	r2, r2
87802786:	3230      	adds	r2, #48	; 0x30
87802788:	b2d2      	uxtb	r2, r2
8780278a:	701a      	strb	r2, [r3, #0]
8780278c:	68fa      	ldr	r2, [r7, #12]
8780278e:	4613      	mov	r3, r2
87802790:	00db      	lsls	r3, r3, #3
87802792:	1899      	adds	r1, r3, r2
87802794:	693a      	ldr	r2, [r7, #16]
87802796:	4613      	mov	r3, r2
87802798:	009b      	lsls	r3, r3, #2
8780279a:	4413      	add	r3, r2
8780279c:	18ca      	adds	r2, r1, r3
8780279e:	683b      	ldr	r3, [r7, #0]
878027a0:	4413      	add	r3, r2
878027a2:	697a      	ldr	r2, [r7, #20]
878027a4:	4413      	add	r3, r2
878027a6:	617b      	str	r3, [r7, #20]
878027a8:	697b      	ldr	r3, [r7, #20]
878027aa:	2b00      	cmp	r3, #0
878027ac:	d05f      	beq.n	8780286e <put_dec_trunc+0x14a>
878027ae:	697b      	ldr	r3, [r7, #20]
878027b0:	22cd      	movs	r2, #205	; 0xcd
878027b2:	fb02 f303 	mul.w	r3, r2, r3
878027b6:	0adb      	lsrs	r3, r3, #11
878027b8:	603b      	str	r3, [r7, #0]
878027ba:	683b      	ldr	r3, [r7, #0]
878027bc:	005b      	lsls	r3, r3, #1
878027be:	009a      	lsls	r2, r3, #2
878027c0:	4413      	add	r3, r2
878027c2:	697a      	ldr	r2, [r7, #20]
878027c4:	1ad3      	subs	r3, r2, r3
878027c6:	617b      	str	r3, [r7, #20]
878027c8:	687b      	ldr	r3, [r7, #4]
878027ca:	1c5a      	adds	r2, r3, #1
878027cc:	607a      	str	r2, [r7, #4]
878027ce:	697a      	ldr	r2, [r7, #20]
878027d0:	b2d2      	uxtb	r2, r2
878027d2:	3230      	adds	r2, #48	; 0x30
878027d4:	b2d2      	uxtb	r2, r2
878027d6:	701a      	strb	r2, [r3, #0]
878027d8:	693b      	ldr	r3, [r7, #16]
878027da:	005a      	lsls	r2, r3, #1
878027dc:	683b      	ldr	r3, [r7, #0]
878027de:	4413      	add	r3, r2
878027e0:	613b      	str	r3, [r7, #16]
878027e2:	693b      	ldr	r3, [r7, #16]
878027e4:	2b00      	cmp	r3, #0
878027e6:	d102      	bne.n	878027ee <put_dec_trunc+0xca>
878027e8:	68fb      	ldr	r3, [r7, #12]
878027ea:	2b00      	cmp	r3, #0
878027ec:	d03f      	beq.n	8780286e <put_dec_trunc+0x14a>
878027ee:	6939      	ldr	r1, [r7, #16]
878027f0:	460a      	mov	r2, r1
878027f2:	0093      	lsls	r3, r2, #2
878027f4:	461a      	mov	r2, r3
878027f6:	0093      	lsls	r3, r2, #2
878027f8:	1a9b      	subs	r3, r3, r2
878027fa:	440b      	add	r3, r1
878027fc:	09db      	lsrs	r3, r3, #7
878027fe:	603b      	str	r3, [r7, #0]
87802800:	683b      	ldr	r3, [r7, #0]
87802802:	005b      	lsls	r3, r3, #1
87802804:	009a      	lsls	r2, r3, #2
87802806:	4413      	add	r3, r2
87802808:	693a      	ldr	r2, [r7, #16]
8780280a:	1ad3      	subs	r3, r2, r3
8780280c:	613b      	str	r3, [r7, #16]
8780280e:	687b      	ldr	r3, [r7, #4]
87802810:	1c5a      	adds	r2, r3, #1
87802812:	607a      	str	r2, [r7, #4]
87802814:	693a      	ldr	r2, [r7, #16]
87802816:	b2d2      	uxtb	r2, r2
87802818:	3230      	adds	r2, #48	; 0x30
8780281a:	b2d2      	uxtb	r2, r2
8780281c:	701a      	strb	r2, [r3, #0]
8780281e:	68fb      	ldr	r3, [r7, #12]
87802820:	009a      	lsls	r2, r3, #2
87802822:	683b      	ldr	r3, [r7, #0]
87802824:	4413      	add	r3, r2
87802826:	60fb      	str	r3, [r7, #12]
87802828:	68fb      	ldr	r3, [r7, #12]
8780282a:	2b00      	cmp	r3, #0
8780282c:	d01f      	beq.n	8780286e <put_dec_trunc+0x14a>
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
87802858:	683b      	ldr	r3, [r7, #0]
8780285a:	2b00      	cmp	r3, #0
8780285c:	d007      	beq.n	8780286e <put_dec_trunc+0x14a>
8780285e:	687b      	ldr	r3, [r7, #4]
87802860:	1c5a      	adds	r2, r3, #1
87802862:	607a      	str	r2, [r7, #4]
87802864:	683a      	ldr	r2, [r7, #0]
87802866:	b2d2      	uxtb	r2, r2
87802868:	3230      	adds	r2, #48	; 0x30
8780286a:	b2d2      	uxtb	r2, r2
8780286c:	701a      	strb	r2, [r3, #0]
8780286e:	687b      	ldr	r3, [r7, #4]
87802870:	4618      	mov	r0, r3
87802872:	371c      	adds	r7, #28
87802874:	46bd      	mov	sp, r7
87802876:	f85d 7b04 	ldr.w	r7, [sp], #4
8780287a:	4770      	bx	lr

8780287c <put_dec_full>:
8780287c:	b480      	push	{r7}
8780287e:	b087      	sub	sp, #28
87802880:	af00      	add	r7, sp, #0
87802882:	6078      	str	r0, [r7, #4]
87802884:	6039      	str	r1, [r7, #0]
87802886:	683b      	ldr	r3, [r7, #0]
87802888:	091b      	lsrs	r3, r3, #4
8780288a:	f003 030f 	and.w	r3, r3, #15
8780288e:	617b      	str	r3, [r7, #20]
87802890:	683b      	ldr	r3, [r7, #0]
87802892:	0a1b      	lsrs	r3, r3, #8
87802894:	f003 030f 	and.w	r3, r3, #15
87802898:	613b      	str	r3, [r7, #16]
8780289a:	683b      	ldr	r3, [r7, #0]
8780289c:	0b1b      	lsrs	r3, r3, #12
8780289e:	60fb      	str	r3, [r7, #12]
878028a0:	68fa      	ldr	r2, [r7, #12]
878028a2:	693b      	ldr	r3, [r7, #16]
878028a4:	441a      	add	r2, r3
878028a6:	697b      	ldr	r3, [r7, #20]
878028a8:	4413      	add	r3, r2
878028aa:	005b      	lsls	r3, r3, #1
878028ac:	009a      	lsls	r2, r3, #2
878028ae:	1ad2      	subs	r2, r2, r3
878028b0:	683b      	ldr	r3, [r7, #0]
878028b2:	f003 030f 	and.w	r3, r3, #15
878028b6:	4413      	add	r3, r2
878028b8:	60bb      	str	r3, [r7, #8]
878028ba:	68bb      	ldr	r3, [r7, #8]
878028bc:	22cd      	movs	r2, #205	; 0xcd
878028be:	fb02 f303 	mul.w	r3, r2, r3
878028c2:	0adb      	lsrs	r3, r3, #11
878028c4:	603b      	str	r3, [r7, #0]
878028c6:	683b      	ldr	r3, [r7, #0]
878028c8:	005b      	lsls	r3, r3, #1
878028ca:	009a      	lsls	r2, r3, #2
878028cc:	4413      	add	r3, r2
878028ce:	68ba      	ldr	r2, [r7, #8]
878028d0:	1ad3      	subs	r3, r2, r3
878028d2:	60bb      	str	r3, [r7, #8]
878028d4:	687b      	ldr	r3, [r7, #4]
878028d6:	1c5a      	adds	r2, r3, #1
878028d8:	607a      	str	r2, [r7, #4]
878028da:	68ba      	ldr	r2, [r7, #8]
878028dc:	b2d2      	uxtb	r2, r2
878028de:	3230      	adds	r2, #48	; 0x30
878028e0:	b2d2      	uxtb	r2, r2
878028e2:	701a      	strb	r2, [r3, #0]
878028e4:	68fa      	ldr	r2, [r7, #12]
878028e6:	4613      	mov	r3, r2
878028e8:	00db      	lsls	r3, r3, #3
878028ea:	1899      	adds	r1, r3, r2
878028ec:	693a      	ldr	r2, [r7, #16]
878028ee:	4613      	mov	r3, r2
878028f0:	009b      	lsls	r3, r3, #2
878028f2:	4413      	add	r3, r2
878028f4:	18ca      	adds	r2, r1, r3
878028f6:	683b      	ldr	r3, [r7, #0]
878028f8:	4413      	add	r3, r2
878028fa:	697a      	ldr	r2, [r7, #20]
878028fc:	4413      	add	r3, r2
878028fe:	617b      	str	r3, [r7, #20]
87802900:	697b      	ldr	r3, [r7, #20]
87802902:	22cd      	movs	r2, #205	; 0xcd
87802904:	fb02 f303 	mul.w	r3, r2, r3
87802908:	0adb      	lsrs	r3, r3, #11
8780290a:	603b      	str	r3, [r7, #0]
8780290c:	683b      	ldr	r3, [r7, #0]
8780290e:	005b      	lsls	r3, r3, #1
87802910:	009a      	lsls	r2, r3, #2
87802912:	4413      	add	r3, r2
87802914:	697a      	ldr	r2, [r7, #20]
87802916:	1ad3      	subs	r3, r2, r3
87802918:	617b      	str	r3, [r7, #20]
8780291a:	687b      	ldr	r3, [r7, #4]
8780291c:	1c5a      	adds	r2, r3, #1
8780291e:	607a      	str	r2, [r7, #4]
87802920:	697a      	ldr	r2, [r7, #20]
87802922:	b2d2      	uxtb	r2, r2
87802924:	3230      	adds	r2, #48	; 0x30
87802926:	b2d2      	uxtb	r2, r2
87802928:	701a      	strb	r2, [r3, #0]
8780292a:	693b      	ldr	r3, [r7, #16]
8780292c:	005a      	lsls	r2, r3, #1
8780292e:	683b      	ldr	r3, [r7, #0]
87802930:	4413      	add	r3, r2
87802932:	613b      	str	r3, [r7, #16]
87802934:	6939      	ldr	r1, [r7, #16]
87802936:	460a      	mov	r2, r1
87802938:	0093      	lsls	r3, r2, #2
8780293a:	461a      	mov	r2, r3
8780293c:	0093      	lsls	r3, r2, #2
8780293e:	1a9b      	subs	r3, r3, r2
87802940:	440b      	add	r3, r1
87802942:	09db      	lsrs	r3, r3, #7
87802944:	603b      	str	r3, [r7, #0]
87802946:	683b      	ldr	r3, [r7, #0]
87802948:	005b      	lsls	r3, r3, #1
8780294a:	009a      	lsls	r2, r3, #2
8780294c:	4413      	add	r3, r2
8780294e:	693a      	ldr	r2, [r7, #16]
87802950:	1ad3      	subs	r3, r2, r3
87802952:	613b      	str	r3, [r7, #16]
87802954:	687b      	ldr	r3, [r7, #4]
87802956:	1c5a      	adds	r2, r3, #1
87802958:	607a      	str	r2, [r7, #4]
8780295a:	693a      	ldr	r2, [r7, #16]
8780295c:	b2d2      	uxtb	r2, r2
8780295e:	3230      	adds	r2, #48	; 0x30
87802960:	b2d2      	uxtb	r2, r2
87802962:	701a      	strb	r2, [r3, #0]
87802964:	68fb      	ldr	r3, [r7, #12]
87802966:	009a      	lsls	r2, r3, #2
87802968:	683b      	ldr	r3, [r7, #0]
8780296a:	4413      	add	r3, r2
8780296c:	60fb      	str	r3, [r7, #12]
8780296e:	68fb      	ldr	r3, [r7, #12]
87802970:	22cd      	movs	r2, #205	; 0xcd
87802972:	fb02 f303 	mul.w	r3, r2, r3
87802976:	0adb      	lsrs	r3, r3, #11
87802978:	603b      	str	r3, [r7, #0]
8780297a:	683b      	ldr	r3, [r7, #0]
8780297c:	005b      	lsls	r3, r3, #1
8780297e:	009a      	lsls	r2, r3, #2
87802980:	4413      	add	r3, r2
87802982:	68fa      	ldr	r2, [r7, #12]
87802984:	1ad3      	subs	r3, r2, r3
87802986:	60fb      	str	r3, [r7, #12]
87802988:	687b      	ldr	r3, [r7, #4]
8780298a:	1c5a      	adds	r2, r3, #1
8780298c:	607a      	str	r2, [r7, #4]
8780298e:	68fa      	ldr	r2, [r7, #12]
87802990:	b2d2      	uxtb	r2, r2
87802992:	3230      	adds	r2, #48	; 0x30
87802994:	b2d2      	uxtb	r2, r2
87802996:	701a      	strb	r2, [r3, #0]
87802998:	687b      	ldr	r3, [r7, #4]
8780299a:	1c5a      	adds	r2, r3, #1
8780299c:	607a      	str	r2, [r7, #4]
8780299e:	683a      	ldr	r2, [r7, #0]
878029a0:	b2d2      	uxtb	r2, r2
878029a2:	3230      	adds	r2, #48	; 0x30
878029a4:	b2d2      	uxtb	r2, r2
878029a6:	701a      	strb	r2, [r3, #0]
878029a8:	687b      	ldr	r3, [r7, #4]
878029aa:	4618      	mov	r0, r3
878029ac:	371c      	adds	r7, #28
878029ae:	46bd      	mov	sp, r7
878029b0:	f85d 7b04 	ldr.w	r7, [sp], #4
878029b4:	4770      	bx	lr
878029b6:	bf00      	nop

878029b8 <put_dec>:
878029b8:	b5b0      	push	{r4, r5, r7, lr}
878029ba:	b088      	sub	sp, #32
878029bc:	af00      	add	r7, sp, #0
878029be:	60f8      	str	r0, [r7, #12]
878029c0:	e9c7 2300 	strd	r2, r3, [r7]
878029c4:	e9d7 2300 	ldrd	r2, r3, [r7]
878029c8:	f248 609f 	movw	r0, #34463	; 0x869f
878029cc:	f2c0 0001 	movt	r0, #1
878029d0:	f04f 0100 	mov.w	r1, #0
878029d4:	4299      	cmp	r1, r3
878029d6:	bf08      	it	eq
878029d8:	4290      	cmpeq	r0, r2
878029da:	d307      	bcc.n	878029ec <put_dec+0x34>
878029dc:	e9d7 3400 	ldrd	r3, r4, [r7]
878029e0:	4619      	mov	r1, r3
878029e2:	68f8      	ldr	r0, [r7, #12]
878029e4:	f7ff fe9e 	bl	87802724 <put_dec_trunc>
878029e8:	4603      	mov	r3, r0
878029ea:	e030      	b.n	87802a4e <put_dec+0x96>
878029ec:	f248 63a0 	movw	r3, #34464	; 0x86a0
878029f0:	f2c0 0301 	movt	r3, #1
878029f4:	61bb      	str	r3, [r7, #24]
878029f6:	e9d7 2300 	ldrd	r2, r3, [r7]
878029fa:	001c      	movs	r4, r3
878029fc:	2500      	movs	r5, #0
878029fe:	ea54 0305 	orrs.w	r3, r4, r5
87802a02:	d116      	bne.n	87802a32 <put_dec+0x7a>
87802a04:	e9d7 2300 	ldrd	r2, r3, [r7]
87802a08:	4613      	mov	r3, r2
87802a0a:	69b9      	ldr	r1, [r7, #24]
87802a0c:	4618      	mov	r0, r3
87802a0e:	f004 f93d 	bl	87806c8c <__aeabi_uidivmod>
87802a12:	460b      	mov	r3, r1
87802a14:	61fb      	str	r3, [r7, #28]
87802a16:	e9d7 2300 	ldrd	r2, r3, [r7]
87802a1a:	4613      	mov	r3, r2
87802a1c:	69b9      	ldr	r1, [r7, #24]
87802a1e:	4618      	mov	r0, r3
87802a20:	f004 f806 	bl	87806a30 <__aeabi_uidiv>
87802a24:	4603      	mov	r3, r0
87802a26:	461a      	mov	r2, r3
87802a28:	f04f 0300 	mov.w	r3, #0
87802a2c:	e9c7 2300 	strd	r2, r3, [r7]
87802a30:	e005      	b.n	87802a3e <put_dec+0x86>
87802a32:	463b      	mov	r3, r7
87802a34:	69b9      	ldr	r1, [r7, #24]
87802a36:	4618      	mov	r0, r3
87802a38:	f7fe fefc 	bl	87801834 <__div64_32>
87802a3c:	61f8      	str	r0, [r7, #28]
87802a3e:	69fb      	ldr	r3, [r7, #28]
87802a40:	617b      	str	r3, [r7, #20]
87802a42:	6979      	ldr	r1, [r7, #20]
87802a44:	68f8      	ldr	r0, [r7, #12]
87802a46:	f7ff ff19 	bl	8780287c <put_dec_full>
87802a4a:	60f8      	str	r0, [r7, #12]
87802a4c:	e7ba      	b.n	878029c4 <put_dec+0xc>
87802a4e:	4618      	mov	r0, r3
87802a50:	3720      	adds	r7, #32
87802a52:	46bd      	mov	sp, r7
87802a54:	bdb0      	pop	{r4, r5, r7, pc}
87802a56:	bf00      	nop

87802a58 <number>:
87802a58:	b5f0      	push	{r4, r5, r6, r7, lr}
87802a5a:	b0a5      	sub	sp, #148	; 0x94
87802a5c:	af00      	add	r7, sp, #0
87802a5e:	60f8      	str	r0, [r7, #12]
87802a60:	60b9      	str	r1, [r7, #8]
87802a62:	e9c7 2300 	strd	r2, r3, [r7]
87802a66:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802a6a:	f003 0320 	and.w	r3, r3, #32
87802a6e:	2b00      	cmp	r3, #0
87802a70:	d005      	beq.n	87802a7e <number+0x26>
87802a72:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802a76:	2b0a      	cmp	r3, #10
87802a78:	d001      	beq.n	87802a7e <number+0x26>
87802a7a:	2301      	movs	r3, #1
87802a7c:	e000      	b.n	87802a80 <number+0x28>
87802a7e:	2300      	movs	r3, #0
87802a80:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
87802a84:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802a88:	b2db      	uxtb	r3, r3
87802a8a:	f003 0320 	and.w	r3, r3, #32
87802a8e:	f887 307f 	strb.w	r3, [r7, #127]	; 0x7f
87802a92:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802a96:	f003 0310 	and.w	r3, r3, #16
87802a9a:	2b00      	cmp	r3, #0
87802a9c:	d005      	beq.n	87802aaa <number+0x52>
87802a9e:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802aa2:	f023 0301 	bic.w	r3, r3, #1
87802aa6:	f8c7 30b4 	str.w	r3, [r7, #180]	; 0xb4
87802aaa:	2300      	movs	r3, #0
87802aac:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
87802ab0:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802ab4:	f003 0302 	and.w	r3, r3, #2
87802ab8:	2b00      	cmp	r3, #0
87802aba:	d032      	beq.n	87802b22 <number+0xca>
87802abc:	e9d7 2300 	ldrd	r2, r3, [r7]
87802ac0:	2a00      	cmp	r2, #0
87802ac2:	f173 0300 	sbcs.w	r3, r3, #0
87802ac6:	da0f      	bge.n	87802ae8 <number+0x90>
87802ac8:	232d      	movs	r3, #45	; 0x2d
87802aca:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
87802ace:	e9d7 2300 	ldrd	r2, r3, [r7]
87802ad2:	4252      	negs	r2, r2
87802ad4:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
87802ad8:	e9c7 2300 	strd	r2, r3, [r7]
87802adc:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802ae0:	3b01      	subs	r3, #1
87802ae2:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802ae6:	e01c      	b.n	87802b22 <number+0xca>
87802ae8:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802aec:	f003 0304 	and.w	r3, r3, #4
87802af0:	2b00      	cmp	r3, #0
87802af2:	d008      	beq.n	87802b06 <number+0xae>
87802af4:	232b      	movs	r3, #43	; 0x2b
87802af6:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
87802afa:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802afe:	3b01      	subs	r3, #1
87802b00:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802b04:	e00d      	b.n	87802b22 <number+0xca>
87802b06:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802b0a:	f003 0308 	and.w	r3, r3, #8
87802b0e:	2b00      	cmp	r3, #0
87802b10:	d007      	beq.n	87802b22 <number+0xca>
87802b12:	2320      	movs	r3, #32
87802b14:	f887 308f 	strb.w	r3, [r7, #143]	; 0x8f
87802b18:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802b1c:	3b01      	subs	r3, #1
87802b1e:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802b22:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
87802b26:	2b00      	cmp	r3, #0
87802b28:	d00d      	beq.n	87802b46 <number+0xee>
87802b2a:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802b2e:	3b01      	subs	r3, #1
87802b30:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802b34:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802b38:	2b10      	cmp	r3, #16
87802b3a:	d104      	bne.n	87802b46 <number+0xee>
87802b3c:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802b40:	3b01      	subs	r3, #1
87802b42:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802b46:	2300      	movs	r3, #0
87802b48:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802b4c:	e9d7 2300 	ldrd	r2, r3, [r7]
87802b50:	4313      	orrs	r3, r2
87802b52:	d10b      	bne.n	87802b6c <number+0x114>
87802b54:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802b58:	1c5a      	adds	r2, r3, #1
87802b5a:	f8c7 2088 	str.w	r2, [r7, #136]	; 0x88
87802b5e:	f107 0290 	add.w	r2, r7, #144	; 0x90
87802b62:	4413      	add	r3, r2
87802b64:	2230      	movs	r2, #48	; 0x30
87802b66:	f803 2c80 	strb.w	r2, [r3, #-128]
87802b6a:	e054      	b.n	87802c16 <number+0x1be>
87802b6c:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802b70:	2b0a      	cmp	r3, #10
87802b72:	d040      	beq.n	87802bf6 <number+0x19e>
87802b74:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802b78:	3b01      	subs	r3, #1
87802b7a:	67bb      	str	r3, [r7, #120]	; 0x78
87802b7c:	2303      	movs	r3, #3
87802b7e:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
87802b82:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802b86:	2b10      	cmp	r3, #16
87802b88:	d102      	bne.n	87802b90 <number+0x138>
87802b8a:	2304      	movs	r3, #4
87802b8c:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
87802b90:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
87802b94:	1c53      	adds	r3, r2, #1
87802b96:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802b9a:	783b      	ldrb	r3, [r7, #0]
87802b9c:	4619      	mov	r1, r3
87802b9e:	6fbb      	ldr	r3, [r7, #120]	; 0x78
87802ba0:	4019      	ands	r1, r3
87802ba2:	f247 232c 	movw	r3, #29228	; 0x722c
87802ba6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802baa:	5c59      	ldrb	r1, [r3, r1]
87802bac:	f897 307f 	ldrb.w	r3, [r7, #127]	; 0x7f
87802bb0:	430b      	orrs	r3, r1
87802bb2:	b2d9      	uxtb	r1, r3
87802bb4:	f107 0390 	add.w	r3, r7, #144	; 0x90
87802bb8:	4413      	add	r3, r2
87802bba:	460a      	mov	r2, r1
87802bbc:	f803 2c80 	strb.w	r2, [r3, #-128]
87802bc0:	e9d7 2300 	ldrd	r2, r3, [r7]
87802bc4:	f8d7 1084 	ldr.w	r1, [r7, #132]	; 0x84
87802bc8:	f1c1 0620 	rsb	r6, r1, #32
87802bcc:	f1b1 0020 	subs.w	r0, r1, #32
87802bd0:	fa22 f401 	lsr.w	r4, r2, r1
87802bd4:	fa03 f606 	lsl.w	r6, r3, r6
87802bd8:	ea44 0406 	orr.w	r4, r4, r6
87802bdc:	d402      	bmi.n	87802be4 <number+0x18c>
87802bde:	fa43 f000 	asr.w	r0, r3, r0
87802be2:	4304      	orrs	r4, r0
87802be4:	fa43 f501 	asr.w	r5, r3, r1
87802be8:	e9c7 4500 	strd	r4, r5, [r7]
87802bec:	e9d7 2300 	ldrd	r2, r3, [r7]
87802bf0:	4313      	orrs	r3, r2
87802bf2:	d1cd      	bne.n	87802b90 <number+0x138>
87802bf4:	e00f      	b.n	87802c16 <number+0x1be>
87802bf6:	e9d7 3400 	ldrd	r3, r4, [r7]
87802bfa:	f107 0110 	add.w	r1, r7, #16
87802bfe:	461a      	mov	r2, r3
87802c00:	4623      	mov	r3, r4
87802c02:	4608      	mov	r0, r1
87802c04:	f7ff fed8 	bl	878029b8 <put_dec>
87802c08:	4603      	mov	r3, r0
87802c0a:	461a      	mov	r2, r3
87802c0c:	f107 0310 	add.w	r3, r7, #16
87802c10:	1ad3      	subs	r3, r2, r3
87802c12:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802c16:	f8d7 2088 	ldr.w	r2, [r7, #136]	; 0x88
87802c1a:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802c1e:	429a      	cmp	r2, r3
87802c20:	dd03      	ble.n	87802c2a <number+0x1d2>
87802c22:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802c26:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
87802c2a:	f8d7 20ac 	ldr.w	r2, [r7, #172]	; 0xac
87802c2e:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802c32:	1ad3      	subs	r3, r2, r3
87802c34:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802c38:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802c3c:	f003 0311 	and.w	r3, r3, #17
87802c40:	2b00      	cmp	r3, #0
87802c42:	d113      	bne.n	87802c6c <number+0x214>
87802c44:	e009      	b.n	87802c5a <number+0x202>
87802c46:	68fa      	ldr	r2, [r7, #12]
87802c48:	68bb      	ldr	r3, [r7, #8]
87802c4a:	429a      	cmp	r2, r3
87802c4c:	d202      	bcs.n	87802c54 <number+0x1fc>
87802c4e:	68fb      	ldr	r3, [r7, #12]
87802c50:	2220      	movs	r2, #32
87802c52:	701a      	strb	r2, [r3, #0]
87802c54:	68fb      	ldr	r3, [r7, #12]
87802c56:	3301      	adds	r3, #1
87802c58:	60fb      	str	r3, [r7, #12]
87802c5a:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802c5e:	3b01      	subs	r3, #1
87802c60:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802c64:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802c68:	2b00      	cmp	r3, #0
87802c6a:	daec      	bge.n	87802c46 <number+0x1ee>
87802c6c:	f897 308f 	ldrb.w	r3, [r7, #143]	; 0x8f
87802c70:	2b00      	cmp	r3, #0
87802c72:	d00a      	beq.n	87802c8a <number+0x232>
87802c74:	68fa      	ldr	r2, [r7, #12]
87802c76:	68bb      	ldr	r3, [r7, #8]
87802c78:	429a      	cmp	r2, r3
87802c7a:	d203      	bcs.n	87802c84 <number+0x22c>
87802c7c:	68fb      	ldr	r3, [r7, #12]
87802c7e:	f897 208f 	ldrb.w	r2, [r7, #143]	; 0x8f
87802c82:	701a      	strb	r2, [r3, #0]
87802c84:	68fb      	ldr	r3, [r7, #12]
87802c86:	3301      	adds	r3, #1
87802c88:	60fb      	str	r3, [r7, #12]
87802c8a:	f8d7 3080 	ldr.w	r3, [r7, #128]	; 0x80
87802c8e:	2b00      	cmp	r3, #0
87802c90:	d01b      	beq.n	87802cca <number+0x272>
87802c92:	68fa      	ldr	r2, [r7, #12]
87802c94:	68bb      	ldr	r3, [r7, #8]
87802c96:	429a      	cmp	r2, r3
87802c98:	d202      	bcs.n	87802ca0 <number+0x248>
87802c9a:	68fb      	ldr	r3, [r7, #12]
87802c9c:	2230      	movs	r2, #48	; 0x30
87802c9e:	701a      	strb	r2, [r3, #0]
87802ca0:	68fb      	ldr	r3, [r7, #12]
87802ca2:	3301      	adds	r3, #1
87802ca4:	60fb      	str	r3, [r7, #12]
87802ca6:	f8d7 30a8 	ldr.w	r3, [r7, #168]	; 0xa8
87802caa:	2b10      	cmp	r3, #16
87802cac:	d10d      	bne.n	87802cca <number+0x272>
87802cae:	68fa      	ldr	r2, [r7, #12]
87802cb0:	68bb      	ldr	r3, [r7, #8]
87802cb2:	429a      	cmp	r2, r3
87802cb4:	d206      	bcs.n	87802cc4 <number+0x26c>
87802cb6:	f897 307f 	ldrb.w	r3, [r7, #127]	; 0x7f
87802cba:	f043 0358 	orr.w	r3, r3, #88	; 0x58
87802cbe:	b2da      	uxtb	r2, r3
87802cc0:	68fb      	ldr	r3, [r7, #12]
87802cc2:	701a      	strb	r2, [r3, #0]
87802cc4:	68fb      	ldr	r3, [r7, #12]
87802cc6:	3301      	adds	r3, #1
87802cc8:	60fb      	str	r3, [r7, #12]
87802cca:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802cce:	f003 0310 	and.w	r3, r3, #16
87802cd2:	2b00      	cmp	r3, #0
87802cd4:	d11f      	bne.n	87802d16 <number+0x2be>
87802cd6:	f8d7 30b4 	ldr.w	r3, [r7, #180]	; 0xb4
87802cda:	f003 0301 	and.w	r3, r3, #1
87802cde:	2b00      	cmp	r3, #0
87802ce0:	d001      	beq.n	87802ce6 <number+0x28e>
87802ce2:	2330      	movs	r3, #48	; 0x30
87802ce4:	e000      	b.n	87802ce8 <number+0x290>
87802ce6:	2320      	movs	r3, #32
87802ce8:	f887 3077 	strb.w	r3, [r7, #119]	; 0x77
87802cec:	e00a      	b.n	87802d04 <number+0x2ac>
87802cee:	68fa      	ldr	r2, [r7, #12]
87802cf0:	68bb      	ldr	r3, [r7, #8]
87802cf2:	429a      	cmp	r2, r3
87802cf4:	d203      	bcs.n	87802cfe <number+0x2a6>
87802cf6:	68fb      	ldr	r3, [r7, #12]
87802cf8:	f897 2077 	ldrb.w	r2, [r7, #119]	; 0x77
87802cfc:	701a      	strb	r2, [r3, #0]
87802cfe:	68fb      	ldr	r3, [r7, #12]
87802d00:	3301      	adds	r3, #1
87802d02:	60fb      	str	r3, [r7, #12]
87802d04:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802d08:	3b01      	subs	r3, #1
87802d0a:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802d0e:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802d12:	2b00      	cmp	r3, #0
87802d14:	daeb      	bge.n	87802cee <number+0x296>
87802d16:	e009      	b.n	87802d2c <number+0x2d4>
87802d18:	68fa      	ldr	r2, [r7, #12]
87802d1a:	68bb      	ldr	r3, [r7, #8]
87802d1c:	429a      	cmp	r2, r3
87802d1e:	d202      	bcs.n	87802d26 <number+0x2ce>
87802d20:	68fb      	ldr	r3, [r7, #12]
87802d22:	2230      	movs	r2, #48	; 0x30
87802d24:	701a      	strb	r2, [r3, #0]
87802d26:	68fb      	ldr	r3, [r7, #12]
87802d28:	3301      	adds	r3, #1
87802d2a:	60fb      	str	r3, [r7, #12]
87802d2c:	f8d7 30b0 	ldr.w	r3, [r7, #176]	; 0xb0
87802d30:	3b01      	subs	r3, #1
87802d32:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
87802d36:	f8d7 20b0 	ldr.w	r2, [r7, #176]	; 0xb0
87802d3a:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802d3e:	429a      	cmp	r2, r3
87802d40:	daea      	bge.n	87802d18 <number+0x2c0>
87802d42:	e00e      	b.n	87802d62 <number+0x30a>
87802d44:	68fa      	ldr	r2, [r7, #12]
87802d46:	68bb      	ldr	r3, [r7, #8]
87802d48:	429a      	cmp	r2, r3
87802d4a:	d207      	bcs.n	87802d5c <number+0x304>
87802d4c:	f107 0210 	add.w	r2, r7, #16
87802d50:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802d54:	4413      	add	r3, r2
87802d56:	781a      	ldrb	r2, [r3, #0]
87802d58:	68fb      	ldr	r3, [r7, #12]
87802d5a:	701a      	strb	r2, [r3, #0]
87802d5c:	68fb      	ldr	r3, [r7, #12]
87802d5e:	3301      	adds	r3, #1
87802d60:	60fb      	str	r3, [r7, #12]
87802d62:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802d66:	3b01      	subs	r3, #1
87802d68:	f8c7 3088 	str.w	r3, [r7, #136]	; 0x88
87802d6c:	f8d7 3088 	ldr.w	r3, [r7, #136]	; 0x88
87802d70:	2b00      	cmp	r3, #0
87802d72:	dae7      	bge.n	87802d44 <number+0x2ec>
87802d74:	e009      	b.n	87802d8a <number+0x332>
87802d76:	68fa      	ldr	r2, [r7, #12]
87802d78:	68bb      	ldr	r3, [r7, #8]
87802d7a:	429a      	cmp	r2, r3
87802d7c:	d202      	bcs.n	87802d84 <number+0x32c>
87802d7e:	68fb      	ldr	r3, [r7, #12]
87802d80:	2220      	movs	r2, #32
87802d82:	701a      	strb	r2, [r3, #0]
87802d84:	68fb      	ldr	r3, [r7, #12]
87802d86:	3301      	adds	r3, #1
87802d88:	60fb      	str	r3, [r7, #12]
87802d8a:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802d8e:	3b01      	subs	r3, #1
87802d90:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
87802d94:	f8d7 30ac 	ldr.w	r3, [r7, #172]	; 0xac
87802d98:	2b00      	cmp	r3, #0
87802d9a:	daec      	bge.n	87802d76 <number+0x31e>
87802d9c:	68fb      	ldr	r3, [r7, #12]
87802d9e:	4618      	mov	r0, r3
87802da0:	3794      	adds	r7, #148	; 0x94
87802da2:	46bd      	mov	sp, r7
87802da4:	bdf0      	pop	{r4, r5, r6, r7, pc}
87802da6:	bf00      	nop

87802da8 <vsnprintf>:
87802da8:	b590      	push	{r4, r7, lr}
87802daa:	b099      	sub	sp, #100	; 0x64
87802dac:	af04      	add	r7, sp, #16
87802dae:	60f8      	str	r0, [r7, #12]
87802db0:	60b9      	str	r1, [r7, #8]
87802db2:	607a      	str	r2, [r7, #4]
87802db4:	603b      	str	r3, [r7, #0]
87802db6:	68bb      	ldr	r3, [r7, #8]
87802db8:	0fdb      	lsrs	r3, r3, #31
87802dba:	b2db      	uxtb	r3, r3
87802dbc:	2b00      	cmp	r3, #0
87802dbe:	d001      	beq.n	87802dc4 <vsnprintf+0x1c>
87802dc0:	2300      	movs	r3, #0
87802dc2:	e353      	b.n	8780346c <vsnprintf+0x6c4>
87802dc4:	68fb      	ldr	r3, [r7, #12]
87802dc6:	63fb      	str	r3, [r7, #60]	; 0x3c
87802dc8:	68bb      	ldr	r3, [r7, #8]
87802dca:	3b01      	subs	r3, #1
87802dcc:	68fa      	ldr	r2, [r7, #12]
87802dce:	4413      	add	r3, r2
87802dd0:	63bb      	str	r3, [r7, #56]	; 0x38
87802dd2:	68fb      	ldr	r3, [r7, #12]
87802dd4:	1e5a      	subs	r2, r3, #1
87802dd6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802dd8:	429a      	cmp	r2, r3
87802dda:	d907      	bls.n	87802dec <vsnprintf+0x44>
87802ddc:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802de0:	63bb      	str	r3, [r7, #56]	; 0x38
87802de2:	6bba      	ldr	r2, [r7, #56]	; 0x38
87802de4:	68fb      	ldr	r3, [r7, #12]
87802de6:	1ad3      	subs	r3, r2, r3
87802de8:	3301      	adds	r3, #1
87802dea:	60bb      	str	r3, [r7, #8]
87802dec:	e328      	b.n	87803440 <vsnprintf+0x698>
87802dee:	687b      	ldr	r3, [r7, #4]
87802df0:	781b      	ldrb	r3, [r3, #0]
87802df2:	2b25      	cmp	r3, #37	; 0x25
87802df4:	d00b      	beq.n	87802e0e <vsnprintf+0x66>
87802df6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87802df8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87802dfa:	429a      	cmp	r2, r3
87802dfc:	d803      	bhi.n	87802e06 <vsnprintf+0x5e>
87802dfe:	687b      	ldr	r3, [r7, #4]
87802e00:	781a      	ldrb	r2, [r3, #0]
87802e02:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802e04:	701a      	strb	r2, [r3, #0]
87802e06:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87802e08:	3301      	adds	r3, #1
87802e0a:	63fb      	str	r3, [r7, #60]	; 0x3c
87802e0c:	e315      	b.n	8780343a <vsnprintf+0x692>
87802e0e:	2300      	movs	r3, #0
87802e10:	633b      	str	r3, [r7, #48]	; 0x30
87802e12:	687b      	ldr	r3, [r7, #4]
87802e14:	3301      	adds	r3, #1
87802e16:	607b      	str	r3, [r7, #4]
87802e18:	687b      	ldr	r3, [r7, #4]
87802e1a:	781b      	ldrb	r3, [r3, #0]
87802e1c:	3b20      	subs	r3, #32
87802e1e:	2b10      	cmp	r3, #16
87802e20:	d83d      	bhi.n	87802e9e <vsnprintf+0xf6>
87802e22:	a201      	add	r2, pc, #4	; (adr r2, 87802e28 <vsnprintf+0x80>)
87802e24:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87802e28:	87802e81 	strhi	r2, [r0, r1, lsl #29]
87802e2c:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e30:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e34:	87802e8b 	strhi	r2, [r0, fp, lsl #29]
87802e38:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e3c:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e40:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e44:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e48:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e4c:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e50:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e54:	87802e77 			; <UNDEFINED> instruction: 0x87802e77
87802e58:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e5c:	87802e6d 	strhi	r2, [r0, sp, ror #28]
87802e60:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e64:	87802e9f 			; <UNDEFINED> instruction: 0x87802e9f
87802e68:	87802e95 			; <UNDEFINED> instruction: 0x87802e95
87802e6c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802e6e:	f043 0310 	orr.w	r3, r3, #16
87802e72:	633b      	str	r3, [r7, #48]	; 0x30
87802e74:	e7cd      	b.n	87802e12 <vsnprintf+0x6a>
87802e76:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802e78:	f043 0304 	orr.w	r3, r3, #4
87802e7c:	633b      	str	r3, [r7, #48]	; 0x30
87802e7e:	e7c8      	b.n	87802e12 <vsnprintf+0x6a>
87802e80:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802e82:	f043 0308 	orr.w	r3, r3, #8
87802e86:	633b      	str	r3, [r7, #48]	; 0x30
87802e88:	e7c3      	b.n	87802e12 <vsnprintf+0x6a>
87802e8a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802e8c:	f043 0320 	orr.w	r3, r3, #32
87802e90:	633b      	str	r3, [r7, #48]	; 0x30
87802e92:	e7be      	b.n	87802e12 <vsnprintf+0x6a>
87802e94:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802e96:	f043 0301 	orr.w	r3, r3, #1
87802e9a:	633b      	str	r3, [r7, #48]	; 0x30
87802e9c:	e7b9      	b.n	87802e12 <vsnprintf+0x6a>
87802e9e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802ea2:	62fb      	str	r3, [r7, #44]	; 0x2c
87802ea4:	687b      	ldr	r3, [r7, #4]
87802ea6:	781b      	ldrb	r3, [r3, #0]
87802ea8:	461a      	mov	r2, r3
87802eaa:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87802eae:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802eb2:	5c9b      	ldrb	r3, [r3, r2]
87802eb4:	f003 0304 	and.w	r3, r3, #4
87802eb8:	2b00      	cmp	r3, #0
87802eba:	d005      	beq.n	87802ec8 <vsnprintf+0x120>
87802ebc:	1d3b      	adds	r3, r7, #4
87802ebe:	4618      	mov	r0, r3
87802ec0:	f7ff fc08 	bl	878026d4 <skip_atoi>
87802ec4:	62f8      	str	r0, [r7, #44]	; 0x2c
87802ec6:	e017      	b.n	87802ef8 <vsnprintf+0x150>
87802ec8:	687b      	ldr	r3, [r7, #4]
87802eca:	781b      	ldrb	r3, [r3, #0]
87802ecc:	2b2a      	cmp	r3, #42	; 0x2a
87802ece:	d113      	bne.n	87802ef8 <vsnprintf+0x150>
87802ed0:	687b      	ldr	r3, [r7, #4]
87802ed2:	3301      	adds	r3, #1
87802ed4:	607b      	str	r3, [r7, #4]
87802ed6:	683b      	ldr	r3, [r7, #0]
87802ed8:	3304      	adds	r3, #4
87802eda:	603b      	str	r3, [r7, #0]
87802edc:	683b      	ldr	r3, [r7, #0]
87802ede:	f853 3c04 	ldr.w	r3, [r3, #-4]
87802ee2:	62fb      	str	r3, [r7, #44]	; 0x2c
87802ee4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802ee6:	2b00      	cmp	r3, #0
87802ee8:	da06      	bge.n	87802ef8 <vsnprintf+0x150>
87802eea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87802eec:	425b      	negs	r3, r3
87802eee:	62fb      	str	r3, [r7, #44]	; 0x2c
87802ef0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87802ef2:	f043 0310 	orr.w	r3, r3, #16
87802ef6:	633b      	str	r3, [r7, #48]	; 0x30
87802ef8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802efc:	62bb      	str	r3, [r7, #40]	; 0x28
87802efe:	687b      	ldr	r3, [r7, #4]
87802f00:	781b      	ldrb	r3, [r3, #0]
87802f02:	2b2e      	cmp	r3, #46	; 0x2e
87802f04:	d127      	bne.n	87802f56 <vsnprintf+0x1ae>
87802f06:	687b      	ldr	r3, [r7, #4]
87802f08:	3301      	adds	r3, #1
87802f0a:	607b      	str	r3, [r7, #4]
87802f0c:	687b      	ldr	r3, [r7, #4]
87802f0e:	781b      	ldrb	r3, [r3, #0]
87802f10:	461a      	mov	r2, r3
87802f12:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87802f16:	f2c8 7380 	movt	r3, #34688	; 0x8780
87802f1a:	5c9b      	ldrb	r3, [r3, r2]
87802f1c:	f003 0304 	and.w	r3, r3, #4
87802f20:	2b00      	cmp	r3, #0
87802f22:	d005      	beq.n	87802f30 <vsnprintf+0x188>
87802f24:	1d3b      	adds	r3, r7, #4
87802f26:	4618      	mov	r0, r3
87802f28:	f7ff fbd4 	bl	878026d4 <skip_atoi>
87802f2c:	62b8      	str	r0, [r7, #40]	; 0x28
87802f2e:	e00d      	b.n	87802f4c <vsnprintf+0x1a4>
87802f30:	687b      	ldr	r3, [r7, #4]
87802f32:	781b      	ldrb	r3, [r3, #0]
87802f34:	2b2a      	cmp	r3, #42	; 0x2a
87802f36:	d109      	bne.n	87802f4c <vsnprintf+0x1a4>
87802f38:	687b      	ldr	r3, [r7, #4]
87802f3a:	3301      	adds	r3, #1
87802f3c:	607b      	str	r3, [r7, #4]
87802f3e:	683b      	ldr	r3, [r7, #0]
87802f40:	3304      	adds	r3, #4
87802f42:	603b      	str	r3, [r7, #0]
87802f44:	683b      	ldr	r3, [r7, #0]
87802f46:	f853 3c04 	ldr.w	r3, [r3, #-4]
87802f4a:	62bb      	str	r3, [r7, #40]	; 0x28
87802f4c:	6abb      	ldr	r3, [r7, #40]	; 0x28
87802f4e:	2b00      	cmp	r3, #0
87802f50:	da01      	bge.n	87802f56 <vsnprintf+0x1ae>
87802f52:	2300      	movs	r3, #0
87802f54:	62bb      	str	r3, [r7, #40]	; 0x28
87802f56:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87802f5a:	627b      	str	r3, [r7, #36]	; 0x24
87802f5c:	687b      	ldr	r3, [r7, #4]
87802f5e:	781b      	ldrb	r3, [r3, #0]
87802f60:	2b68      	cmp	r3, #104	; 0x68
87802f62:	d00f      	beq.n	87802f84 <vsnprintf+0x1dc>
87802f64:	687b      	ldr	r3, [r7, #4]
87802f66:	781b      	ldrb	r3, [r3, #0]
87802f68:	2b6c      	cmp	r3, #108	; 0x6c
87802f6a:	d00b      	beq.n	87802f84 <vsnprintf+0x1dc>
87802f6c:	687b      	ldr	r3, [r7, #4]
87802f6e:	781b      	ldrb	r3, [r3, #0]
87802f70:	2b4c      	cmp	r3, #76	; 0x4c
87802f72:	d007      	beq.n	87802f84 <vsnprintf+0x1dc>
87802f74:	687b      	ldr	r3, [r7, #4]
87802f76:	781b      	ldrb	r3, [r3, #0]
87802f78:	2b5a      	cmp	r3, #90	; 0x5a
87802f7a:	d003      	beq.n	87802f84 <vsnprintf+0x1dc>
87802f7c:	687b      	ldr	r3, [r7, #4]
87802f7e:	781b      	ldrb	r3, [r3, #0]
87802f80:	2b7a      	cmp	r3, #122	; 0x7a
87802f82:	d111      	bne.n	87802fa8 <vsnprintf+0x200>
87802f84:	687b      	ldr	r3, [r7, #4]
87802f86:	781b      	ldrb	r3, [r3, #0]
87802f88:	627b      	str	r3, [r7, #36]	; 0x24
87802f8a:	687b      	ldr	r3, [r7, #4]
87802f8c:	3301      	adds	r3, #1
87802f8e:	607b      	str	r3, [r7, #4]
87802f90:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87802f92:	2b6c      	cmp	r3, #108	; 0x6c
87802f94:	d108      	bne.n	87802fa8 <vsnprintf+0x200>
87802f96:	687b      	ldr	r3, [r7, #4]
87802f98:	781b      	ldrb	r3, [r3, #0]
87802f9a:	2b6c      	cmp	r3, #108	; 0x6c
87802f9c:	d104      	bne.n	87802fa8 <vsnprintf+0x200>
87802f9e:	234c      	movs	r3, #76	; 0x4c
87802fa0:	627b      	str	r3, [r7, #36]	; 0x24
87802fa2:	687b      	ldr	r3, [r7, #4]
87802fa4:	3301      	adds	r3, #1
87802fa6:	607b      	str	r3, [r7, #4]
87802fa8:	230a      	movs	r3, #10
87802faa:	643b      	str	r3, [r7, #64]	; 0x40
87802fac:	687b      	ldr	r3, [r7, #4]
87802fae:	781b      	ldrb	r3, [r3, #0]
87802fb0:	3b25      	subs	r3, #37	; 0x25
87802fb2:	2b53      	cmp	r3, #83	; 0x53
87802fb4:	f200 81ac 	bhi.w	87803310 <vsnprintf+0x568>
87802fb8:	a201      	add	r2, pc, #4	; (adr r2, 87802fc0 <vsnprintf+0x218>)
87802fba:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87802fbe:	bf00      	nop
87802fc0:	878032dd 			; <UNDEFINED> instruction: 0x878032dd
87802fc4:	87803311 	usada8hi	r0, r1, r3, r3
87802fc8:	87803311 	usada8hi	r0, r1, r3, r3
87802fcc:	87803311 	usada8hi	r0, r1, r3, r3
87802fd0:	87803311 	usada8hi	r0, r1, r3, r3
87802fd4:	87803311 	usada8hi	r0, r1, r3, r3
87802fd8:	87803311 	usada8hi	r0, r1, r3, r3
87802fdc:	87803311 	usada8hi	r0, r1, r3, r3
87802fe0:	87803311 	usada8hi	r0, r1, r3, r3
87802fe4:	87803311 	usada8hi	r0, r1, r3, r3
87802fe8:	87803311 	usada8hi	r0, r1, r3, r3
87802fec:	87803311 	usada8hi	r0, r1, r3, r3
87802ff0:	87803311 	usada8hi	r0, r1, r3, r3
87802ff4:	87803311 	usada8hi	r0, r1, r3, r3
87802ff8:	87803311 	usada8hi	r0, r1, r3, r3
87802ffc:	87803311 	usada8hi	r0, r1, r3, r3
87803000:	87803311 	usada8hi	r0, r1, r3, r3
87803004:	87803311 	usada8hi	r0, r1, r3, r3
87803008:	87803311 	usada8hi	r0, r1, r3, r3
8780300c:	87803311 	usada8hi	r0, r1, r3, r3
87803010:	87803311 	usada8hi	r0, r1, r3, r3
87803014:	87803311 	usada8hi	r0, r1, r3, r3
87803018:	87803311 	usada8hi	r0, r1, r3, r3
8780301c:	87803311 	usada8hi	r0, r1, r3, r3
87803020:	87803311 	usada8hi	r0, r1, r3, r3
87803024:	87803311 	usada8hi	r0, r1, r3, r3
87803028:	87803311 	usada8hi	r0, r1, r3, r3
8780302c:	87803311 	usada8hi	r0, r1, r3, r3
87803030:	87803311 	usada8hi	r0, r1, r3, r3
87803034:	87803311 	usada8hi	r0, r1, r3, r3
87803038:	87803311 	usada8hi	r0, r1, r3, r3
8780303c:	87803311 	usada8hi	r0, r1, r3, r3
87803040:	87803311 	usada8hi	r0, r1, r3, r3
87803044:	87803311 	usada8hi	r0, r1, r3, r3
87803048:	87803311 	usada8hi	r0, r1, r3, r3
8780304c:	87803311 	usada8hi	r0, r1, r3, r3
87803050:	87803311 	usada8hi	r0, r1, r3, r3
87803054:	87803311 	usada8hi	r0, r1, r3, r3
87803058:	87803311 	usada8hi	r0, r1, r3, r3
8780305c:	87803311 	usada8hi	r0, r1, r3, r3
87803060:	87803311 	usada8hi	r0, r1, r3, r3
87803064:	87803311 	usada8hi	r0, r1, r3, r3
87803068:	87803311 	usada8hi	r0, r1, r3, r3
8780306c:	87803311 	usada8hi	r0, r1, r3, r3
87803070:	87803311 	usada8hi	r0, r1, r3, r3
87803074:	87803311 	usada8hi	r0, r1, r3, r3
87803078:	87803311 	usada8hi	r0, r1, r3, r3
8780307c:	87803311 	usada8hi	r0, r1, r3, r3
87803080:	87803311 	usada8hi	r0, r1, r3, r3
87803084:	87803311 	usada8hi	r0, r1, r3, r3
87803088:	87803311 	usada8hi	r0, r1, r3, r3
8780308c:	878032f9 			; <UNDEFINED> instruction: 0x878032f9
87803090:	87803311 	usada8hi	r0, r1, r3, r3
87803094:	87803311 	usada8hi	r0, r1, r3, r3
87803098:	87803311 	usada8hi	r0, r1, r3, r3
8780309c:	87803311 	usada8hi	r0, r1, r3, r3
878030a0:	87803311 	usada8hi	r0, r1, r3, r3
878030a4:	87803311 	usada8hi	r0, r1, r3, r3
878030a8:	87803311 	usada8hi	r0, r1, r3, r3
878030ac:	87803311 	usada8hi	r0, r1, r3, r3
878030b0:	87803311 	usada8hi	r0, r1, r3, r3
878030b4:	87803311 	usada8hi	r0, r1, r3, r3
878030b8:	87803111 	usada8hi	r0, r1, r1, r3
878030bc:	87803307 	strhi	r3, [r0, r7, lsl #6]
878030c0:	87803311 	usada8hi	r0, r1, r3, r3
878030c4:	87803311 	usada8hi	r0, r1, r3, r3
878030c8:	87803311 	usada8hi	r0, r1, r3, r3
878030cc:	87803311 	usada8hi	r0, r1, r3, r3
878030d0:	87803307 	strhi	r3, [r0, r7, lsl #6]
878030d4:	87803311 	usada8hi	r0, r1, r3, r3
878030d8:	87803311 	usada8hi	r0, r1, r3, r3
878030dc:	87803311 	usada8hi	r0, r1, r3, r3
878030e0:	87803311 	usada8hi	r0, r1, r3, r3
878030e4:	87803279 			; <UNDEFINED> instruction: 0x87803279
878030e8:	878032f3 			; <UNDEFINED> instruction: 0x878032f3
878030ec:	87803235 			; <UNDEFINED> instruction: 0x87803235
878030f0:	87803311 	usada8hi	r0, r1, r3, r3
878030f4:	87803311 	usada8hi	r0, r1, r3, r3
878030f8:	87803187 	strhi	r3, [r0, r7, lsl #3]
878030fc:	87803311 	usada8hi	r0, r1, r3, r3
87803100:	8780334d 	strhi	r3, [r0, sp, asr #6]
87803104:	87803311 	usada8hi	r0, r1, r3, r3
87803108:	87803311 	usada8hi	r0, r1, r3, r3
8780310c:	87803301 	strhi	r3, [r0, r1, lsl #6]
87803110:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803112:	f003 0310 	and.w	r3, r3, #16
87803116:	2b00      	cmp	r3, #0
87803118:	d110      	bne.n	8780313c <vsnprintf+0x394>
8780311a:	e009      	b.n	87803130 <vsnprintf+0x388>
8780311c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780311e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803120:	429a      	cmp	r2, r3
87803122:	d802      	bhi.n	8780312a <vsnprintf+0x382>
87803124:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803126:	2220      	movs	r2, #32
87803128:	701a      	strb	r2, [r3, #0]
8780312a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780312c:	3301      	adds	r3, #1
8780312e:	63fb      	str	r3, [r7, #60]	; 0x3c
87803130:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803132:	3b01      	subs	r3, #1
87803134:	62fb      	str	r3, [r7, #44]	; 0x2c
87803136:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803138:	2b00      	cmp	r3, #0
8780313a:	dcef      	bgt.n	8780311c <vsnprintf+0x374>
8780313c:	683b      	ldr	r3, [r7, #0]
8780313e:	3304      	adds	r3, #4
87803140:	603b      	str	r3, [r7, #0]
87803142:	683b      	ldr	r3, [r7, #0]
87803144:	3b04      	subs	r3, #4
87803146:	681b      	ldr	r3, [r3, #0]
87803148:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
8780314c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780314e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803150:	429a      	cmp	r2, r3
87803152:	d803      	bhi.n	8780315c <vsnprintf+0x3b4>
87803154:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803156:	f897 2023 	ldrb.w	r2, [r7, #35]	; 0x23
8780315a:	701a      	strb	r2, [r3, #0]
8780315c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780315e:	3301      	adds	r3, #1
87803160:	63fb      	str	r3, [r7, #60]	; 0x3c
87803162:	e009      	b.n	87803178 <vsnprintf+0x3d0>
87803164:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803166:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803168:	429a      	cmp	r2, r3
8780316a:	d802      	bhi.n	87803172 <vsnprintf+0x3ca>
8780316c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780316e:	2220      	movs	r2, #32
87803170:	701a      	strb	r2, [r3, #0]
87803172:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803174:	3301      	adds	r3, #1
87803176:	63fb      	str	r3, [r7, #60]	; 0x3c
87803178:	6afb      	ldr	r3, [r7, #44]	; 0x2c
8780317a:	3b01      	subs	r3, #1
8780317c:	62fb      	str	r3, [r7, #44]	; 0x2c
8780317e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803180:	2b00      	cmp	r3, #0
87803182:	dcef      	bgt.n	87803164 <vsnprintf+0x3bc>
87803184:	e159      	b.n	8780343a <vsnprintf+0x692>
87803186:	683b      	ldr	r3, [r7, #0]
87803188:	3304      	adds	r3, #4
8780318a:	603b      	str	r3, [r7, #0]
8780318c:	683b      	ldr	r3, [r7, #0]
8780318e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803192:	637b      	str	r3, [r7, #52]	; 0x34
87803194:	6b7b      	ldr	r3, [r7, #52]	; 0x34
87803196:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
8780319a:	d204      	bcs.n	878031a6 <vsnprintf+0x3fe>
8780319c:	f247 2324 	movw	r3, #29220	; 0x7224
878031a0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878031a4:	637b      	str	r3, [r7, #52]	; 0x34
878031a6:	6abb      	ldr	r3, [r7, #40]	; 0x28
878031a8:	4619      	mov	r1, r3
878031aa:	6b78      	ldr	r0, [r7, #52]	; 0x34
878031ac:	f7fe fef0 	bl	87801f90 <strnlen>
878031b0:	4603      	mov	r3, r0
878031b2:	61fb      	str	r3, [r7, #28]
878031b4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878031b6:	f003 0310 	and.w	r3, r3, #16
878031ba:	2b00      	cmp	r3, #0
878031bc:	d110      	bne.n	878031e0 <vsnprintf+0x438>
878031be:	e009      	b.n	878031d4 <vsnprintf+0x42c>
878031c0:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878031c2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878031c4:	429a      	cmp	r2, r3
878031c6:	d802      	bhi.n	878031ce <vsnprintf+0x426>
878031c8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031ca:	2220      	movs	r2, #32
878031cc:	701a      	strb	r2, [r3, #0]
878031ce:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031d0:	3301      	adds	r3, #1
878031d2:	63fb      	str	r3, [r7, #60]	; 0x3c
878031d4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
878031d6:	1e5a      	subs	r2, r3, #1
878031d8:	62fa      	str	r2, [r7, #44]	; 0x2c
878031da:	69fa      	ldr	r2, [r7, #28]
878031dc:	4293      	cmp	r3, r2
878031de:	dcef      	bgt.n	878031c0 <vsnprintf+0x418>
878031e0:	2300      	movs	r3, #0
878031e2:	647b      	str	r3, [r7, #68]	; 0x44
878031e4:	e010      	b.n	87803208 <vsnprintf+0x460>
878031e6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878031e8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878031ea:	429a      	cmp	r2, r3
878031ec:	d803      	bhi.n	878031f6 <vsnprintf+0x44e>
878031ee:	6b7b      	ldr	r3, [r7, #52]	; 0x34
878031f0:	781a      	ldrb	r2, [r3, #0]
878031f2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031f4:	701a      	strb	r2, [r3, #0]
878031f6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878031f8:	3301      	adds	r3, #1
878031fa:	63fb      	str	r3, [r7, #60]	; 0x3c
878031fc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
878031fe:	3301      	adds	r3, #1
87803200:	637b      	str	r3, [r7, #52]	; 0x34
87803202:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87803204:	3301      	adds	r3, #1
87803206:	647b      	str	r3, [r7, #68]	; 0x44
87803208:	6c7a      	ldr	r2, [r7, #68]	; 0x44
8780320a:	69fb      	ldr	r3, [r7, #28]
8780320c:	429a      	cmp	r2, r3
8780320e:	dbea      	blt.n	878031e6 <vsnprintf+0x43e>
87803210:	e009      	b.n	87803226 <vsnprintf+0x47e>
87803212:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803214:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803216:	429a      	cmp	r2, r3
87803218:	d802      	bhi.n	87803220 <vsnprintf+0x478>
8780321a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780321c:	2220      	movs	r2, #32
8780321e:	701a      	strb	r2, [r3, #0]
87803220:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803222:	3301      	adds	r3, #1
87803224:	63fb      	str	r3, [r7, #60]	; 0x3c
87803226:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803228:	1e5a      	subs	r2, r3, #1
8780322a:	62fa      	str	r2, [r7, #44]	; 0x2c
8780322c:	69fa      	ldr	r2, [r7, #28]
8780322e:	4293      	cmp	r3, r2
87803230:	dcef      	bgt.n	87803212 <vsnprintf+0x46a>
87803232:	e102      	b.n	8780343a <vsnprintf+0x692>
87803234:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803236:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
8780323a:	d105      	bne.n	87803248 <vsnprintf+0x4a0>
8780323c:	2308      	movs	r3, #8
8780323e:	62fb      	str	r3, [r7, #44]	; 0x2c
87803240:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803242:	f043 0301 	orr.w	r3, r3, #1
87803246:	633b      	str	r3, [r7, #48]	; 0x30
87803248:	683b      	ldr	r3, [r7, #0]
8780324a:	3304      	adds	r3, #4
8780324c:	603b      	str	r3, [r7, #0]
8780324e:	683b      	ldr	r3, [r7, #0]
87803250:	3b04      	subs	r3, #4
87803252:	681b      	ldr	r3, [r3, #0]
87803254:	f04f 0400 	mov.w	r4, #0
87803258:	6b3a      	ldr	r2, [r7, #48]	; 0x30
8780325a:	9203      	str	r2, [sp, #12]
8780325c:	6aba      	ldr	r2, [r7, #40]	; 0x28
8780325e:	9202      	str	r2, [sp, #8]
87803260:	6afa      	ldr	r2, [r7, #44]	; 0x2c
87803262:	9201      	str	r2, [sp, #4]
87803264:	2210      	movs	r2, #16
87803266:	9200      	str	r2, [sp, #0]
87803268:	461a      	mov	r2, r3
8780326a:	4623      	mov	r3, r4
8780326c:	6bb9      	ldr	r1, [r7, #56]	; 0x38
8780326e:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
87803270:	f7ff fbf2 	bl	87802a58 <number>
87803274:	63f8      	str	r0, [r7, #60]	; 0x3c
87803276:	e0e0      	b.n	8780343a <vsnprintf+0x692>
87803278:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780327a:	2b6c      	cmp	r3, #108	; 0x6c
8780327c:	d10c      	bne.n	87803298 <vsnprintf+0x4f0>
8780327e:	683b      	ldr	r3, [r7, #0]
87803280:	3304      	adds	r3, #4
87803282:	603b      	str	r3, [r7, #0]
87803284:	683b      	ldr	r3, [r7, #0]
87803286:	f853 3c04 	ldr.w	r3, [r3, #-4]
8780328a:	61bb      	str	r3, [r7, #24]
8780328c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780328e:	68fb      	ldr	r3, [r7, #12]
87803290:	1ad2      	subs	r2, r2, r3
87803292:	69bb      	ldr	r3, [r7, #24]
87803294:	601a      	str	r2, [r3, #0]
87803296:	e020      	b.n	878032da <vsnprintf+0x532>
87803298:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780329a:	2b5a      	cmp	r3, #90	; 0x5a
8780329c:	d002      	beq.n	878032a4 <vsnprintf+0x4fc>
8780329e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878032a0:	2b7a      	cmp	r3, #122	; 0x7a
878032a2:	d10d      	bne.n	878032c0 <vsnprintf+0x518>
878032a4:	683b      	ldr	r3, [r7, #0]
878032a6:	3304      	adds	r3, #4
878032a8:	603b      	str	r3, [r7, #0]
878032aa:	683b      	ldr	r3, [r7, #0]
878032ac:	f853 3c04 	ldr.w	r3, [r3, #-4]
878032b0:	613b      	str	r3, [r7, #16]
878032b2:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878032b4:	68fb      	ldr	r3, [r7, #12]
878032b6:	1ad3      	subs	r3, r2, r3
878032b8:	461a      	mov	r2, r3
878032ba:	693b      	ldr	r3, [r7, #16]
878032bc:	601a      	str	r2, [r3, #0]
878032be:	e00c      	b.n	878032da <vsnprintf+0x532>
878032c0:	683b      	ldr	r3, [r7, #0]
878032c2:	3304      	adds	r3, #4
878032c4:	603b      	str	r3, [r7, #0]
878032c6:	683b      	ldr	r3, [r7, #0]
878032c8:	f853 3c04 	ldr.w	r3, [r3, #-4]
878032cc:	617b      	str	r3, [r7, #20]
878032ce:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878032d0:	68fb      	ldr	r3, [r7, #12]
878032d2:	1ad2      	subs	r2, r2, r3
878032d4:	697b      	ldr	r3, [r7, #20]
878032d6:	601a      	str	r2, [r3, #0]
878032d8:	e0af      	b.n	8780343a <vsnprintf+0x692>
878032da:	e0ae      	b.n	8780343a <vsnprintf+0x692>
878032dc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
878032de:	6bbb      	ldr	r3, [r7, #56]	; 0x38
878032e0:	429a      	cmp	r2, r3
878032e2:	d802      	bhi.n	878032ea <vsnprintf+0x542>
878032e4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878032e6:	2225      	movs	r2, #37	; 0x25
878032e8:	701a      	strb	r2, [r3, #0]
878032ea:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
878032ec:	3301      	adds	r3, #1
878032ee:	63fb      	str	r3, [r7, #60]	; 0x3c
878032f0:	e0a3      	b.n	8780343a <vsnprintf+0x692>
878032f2:	2308      	movs	r3, #8
878032f4:	643b      	str	r3, [r7, #64]	; 0x40
878032f6:	e02a      	b.n	8780334e <vsnprintf+0x5a6>
878032f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878032fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
878032fe:	633b      	str	r3, [r7, #48]	; 0x30
87803300:	2310      	movs	r3, #16
87803302:	643b      	str	r3, [r7, #64]	; 0x40
87803304:	e023      	b.n	8780334e <vsnprintf+0x5a6>
87803306:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803308:	f043 0302 	orr.w	r3, r3, #2
8780330c:	633b      	str	r3, [r7, #48]	; 0x30
8780330e:	e01d      	b.n	8780334c <vsnprintf+0x5a4>
87803310:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803312:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803314:	429a      	cmp	r2, r3
87803316:	d802      	bhi.n	8780331e <vsnprintf+0x576>
87803318:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780331a:	2225      	movs	r2, #37	; 0x25
8780331c:	701a      	strb	r2, [r3, #0]
8780331e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803320:	3301      	adds	r3, #1
87803322:	63fb      	str	r3, [r7, #60]	; 0x3c
87803324:	687b      	ldr	r3, [r7, #4]
87803326:	781b      	ldrb	r3, [r3, #0]
87803328:	2b00      	cmp	r3, #0
8780332a:	d00b      	beq.n	87803344 <vsnprintf+0x59c>
8780332c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780332e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803330:	429a      	cmp	r2, r3
87803332:	d803      	bhi.n	8780333c <vsnprintf+0x594>
87803334:	687b      	ldr	r3, [r7, #4]
87803336:	781a      	ldrb	r2, [r3, #0]
87803338:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780333a:	701a      	strb	r2, [r3, #0]
8780333c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
8780333e:	3301      	adds	r3, #1
87803340:	63fb      	str	r3, [r7, #60]	; 0x3c
87803342:	e07a      	b.n	8780343a <vsnprintf+0x692>
87803344:	687b      	ldr	r3, [r7, #4]
87803346:	3b01      	subs	r3, #1
87803348:	607b      	str	r3, [r7, #4]
8780334a:	e076      	b.n	8780343a <vsnprintf+0x692>
8780334c:	bf00      	nop
8780334e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803350:	2b4c      	cmp	r3, #76	; 0x4c
87803352:	d108      	bne.n	87803366 <vsnprintf+0x5be>
87803354:	683b      	ldr	r3, [r7, #0]
87803356:	3308      	adds	r3, #8
87803358:	603b      	str	r3, [r7, #0]
8780335a:	683b      	ldr	r3, [r7, #0]
8780335c:	e953 3402 	ldrd	r3, r4, [r3, #-8]
87803360:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803364:	e058      	b.n	87803418 <vsnprintf+0x670>
87803366:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803368:	2b6c      	cmp	r3, #108	; 0x6c
8780336a:	d114      	bne.n	87803396 <vsnprintf+0x5ee>
8780336c:	683b      	ldr	r3, [r7, #0]
8780336e:	3304      	adds	r3, #4
87803370:	603b      	str	r3, [r7, #0]
87803372:	683b      	ldr	r3, [r7, #0]
87803374:	3b04      	subs	r3, #4
87803376:	681b      	ldr	r3, [r3, #0]
87803378:	f04f 0400 	mov.w	r4, #0
8780337c:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803380:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803382:	f003 0302 	and.w	r3, r3, #2
87803386:	2b00      	cmp	r3, #0
87803388:	d046      	beq.n	87803418 <vsnprintf+0x670>
8780338a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
8780338c:	ea4f 74e3 	mov.w	r4, r3, asr #31
87803390:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803394:	e040      	b.n	87803418 <vsnprintf+0x670>
87803396:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87803398:	2b5a      	cmp	r3, #90	; 0x5a
8780339a:	d002      	beq.n	878033a2 <vsnprintf+0x5fa>
8780339c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
8780339e:	2b7a      	cmp	r3, #122	; 0x7a
878033a0:	d10a      	bne.n	878033b8 <vsnprintf+0x610>
878033a2:	683b      	ldr	r3, [r7, #0]
878033a4:	3304      	adds	r3, #4
878033a6:	603b      	str	r3, [r7, #0]
878033a8:	683b      	ldr	r3, [r7, #0]
878033aa:	3b04      	subs	r3, #4
878033ac:	681b      	ldr	r3, [r3, #0]
878033ae:	f04f 0400 	mov.w	r4, #0
878033b2:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878033b6:	e02f      	b.n	87803418 <vsnprintf+0x670>
878033b8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878033ba:	2b68      	cmp	r3, #104	; 0x68
878033bc:	d118      	bne.n	878033f0 <vsnprintf+0x648>
878033be:	683b      	ldr	r3, [r7, #0]
878033c0:	3304      	adds	r3, #4
878033c2:	603b      	str	r3, [r7, #0]
878033c4:	683b      	ldr	r3, [r7, #0]
878033c6:	3b04      	subs	r3, #4
878033c8:	681b      	ldr	r3, [r3, #0]
878033ca:	b29b      	uxth	r3, r3
878033cc:	b29b      	uxth	r3, r3
878033ce:	f04f 0400 	mov.w	r4, #0
878033d2:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878033d6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
878033d8:	f003 0302 	and.w	r3, r3, #2
878033dc:	2b00      	cmp	r3, #0
878033de:	d01b      	beq.n	87803418 <vsnprintf+0x670>
878033e0:	f8b7 3048 	ldrh.w	r3, [r7, #72]	; 0x48
878033e4:	b21b      	sxth	r3, r3
878033e6:	ea4f 74e3 	mov.w	r4, r3, asr #31
878033ea:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
878033ee:	e013      	b.n	87803418 <vsnprintf+0x670>
878033f0:	683b      	ldr	r3, [r7, #0]
878033f2:	3304      	adds	r3, #4
878033f4:	603b      	str	r3, [r7, #0]
878033f6:	683b      	ldr	r3, [r7, #0]
878033f8:	3b04      	subs	r3, #4
878033fa:	681b      	ldr	r3, [r3, #0]
878033fc:	f04f 0400 	mov.w	r4, #0
87803400:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803404:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803406:	f003 0302 	and.w	r3, r3, #2
8780340a:	2b00      	cmp	r3, #0
8780340c:	d004      	beq.n	87803418 <vsnprintf+0x670>
8780340e:	6cbb      	ldr	r3, [r7, #72]	; 0x48
87803410:	ea4f 74e3 	mov.w	r4, r3, asr #31
87803414:	e9c7 3412 	strd	r3, r4, [r7, #72]	; 0x48
87803418:	e9d7 3412 	ldrd	r3, r4, [r7, #72]	; 0x48
8780341c:	6b3a      	ldr	r2, [r7, #48]	; 0x30
8780341e:	9203      	str	r2, [sp, #12]
87803420:	6aba      	ldr	r2, [r7, #40]	; 0x28
87803422:	9202      	str	r2, [sp, #8]
87803424:	6afa      	ldr	r2, [r7, #44]	; 0x2c
87803426:	9201      	str	r2, [sp, #4]
87803428:	6c3a      	ldr	r2, [r7, #64]	; 0x40
8780342a:	9200      	str	r2, [sp, #0]
8780342c:	461a      	mov	r2, r3
8780342e:	4623      	mov	r3, r4
87803430:	6bb9      	ldr	r1, [r7, #56]	; 0x38
87803432:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
87803434:	f7ff fb10 	bl	87802a58 <number>
87803438:	63f8      	str	r0, [r7, #60]	; 0x3c
8780343a:	687b      	ldr	r3, [r7, #4]
8780343c:	3301      	adds	r3, #1
8780343e:	607b      	str	r3, [r7, #4]
87803440:	687b      	ldr	r3, [r7, #4]
87803442:	781b      	ldrb	r3, [r3, #0]
87803444:	2b00      	cmp	r3, #0
87803446:	f47f acd2 	bne.w	87802dee <vsnprintf+0x46>
8780344a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
8780344c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
8780344e:	429a      	cmp	r2, r3
87803450:	d803      	bhi.n	8780345a <vsnprintf+0x6b2>
87803452:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803454:	2200      	movs	r2, #0
87803456:	701a      	strb	r2, [r3, #0]
87803458:	e005      	b.n	87803466 <vsnprintf+0x6be>
8780345a:	68bb      	ldr	r3, [r7, #8]
8780345c:	2b00      	cmp	r3, #0
8780345e:	d002      	beq.n	87803466 <vsnprintf+0x6be>
87803460:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803462:	2200      	movs	r2, #0
87803464:	701a      	strb	r2, [r3, #0]
87803466:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
87803468:	68fb      	ldr	r3, [r7, #12]
8780346a:	1ad3      	subs	r3, r2, r3
8780346c:	4618      	mov	r0, r3
8780346e:	3754      	adds	r7, #84	; 0x54
87803470:	46bd      	mov	sp, r7
87803472:	bd90      	pop	{r4, r7, pc}

87803474 <vscnprintf>:
87803474:	b580      	push	{r7, lr}
87803476:	b086      	sub	sp, #24
87803478:	af00      	add	r7, sp, #0
8780347a:	60f8      	str	r0, [r7, #12]
8780347c:	60b9      	str	r1, [r7, #8]
8780347e:	607a      	str	r2, [r7, #4]
87803480:	603b      	str	r3, [r7, #0]
87803482:	683b      	ldr	r3, [r7, #0]
87803484:	687a      	ldr	r2, [r7, #4]
87803486:	68b9      	ldr	r1, [r7, #8]
87803488:	68f8      	ldr	r0, [r7, #12]
8780348a:	f7ff fc8d 	bl	87802da8 <vsnprintf>
8780348e:	6178      	str	r0, [r7, #20]
87803490:	697a      	ldr	r2, [r7, #20]
87803492:	68bb      	ldr	r3, [r7, #8]
87803494:	429a      	cmp	r2, r3
87803496:	d302      	bcc.n	8780349e <vscnprintf+0x2a>
87803498:	68bb      	ldr	r3, [r7, #8]
8780349a:	3b01      	subs	r3, #1
8780349c:	e000      	b.n	878034a0 <vscnprintf+0x2c>
8780349e:	697b      	ldr	r3, [r7, #20]
878034a0:	4618      	mov	r0, r3
878034a2:	3718      	adds	r7, #24
878034a4:	46bd      	mov	sp, r7
878034a6:	bd80      	pop	{r7, pc}

878034a8 <snprintf>:
878034a8:	b40c      	push	{r2, r3}
878034aa:	b580      	push	{r7, lr}
878034ac:	b084      	sub	sp, #16
878034ae:	af00      	add	r7, sp, #0
878034b0:	6078      	str	r0, [r7, #4]
878034b2:	6039      	str	r1, [r7, #0]
878034b4:	f107 031c 	add.w	r3, r7, #28
878034b8:	60fb      	str	r3, [r7, #12]
878034ba:	69ba      	ldr	r2, [r7, #24]
878034bc:	68fb      	ldr	r3, [r7, #12]
878034be:	6839      	ldr	r1, [r7, #0]
878034c0:	6878      	ldr	r0, [r7, #4]
878034c2:	f7ff fc71 	bl	87802da8 <vsnprintf>
878034c6:	60b8      	str	r0, [r7, #8]
878034c8:	68bb      	ldr	r3, [r7, #8]
878034ca:	4618      	mov	r0, r3
878034cc:	3710      	adds	r7, #16
878034ce:	46bd      	mov	sp, r7
878034d0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
878034d4:	b002      	add	sp, #8
878034d6:	4770      	bx	lr

878034d8 <scnprintf>:
878034d8:	b40c      	push	{r2, r3}
878034da:	b580      	push	{r7, lr}
878034dc:	b084      	sub	sp, #16
878034de:	af00      	add	r7, sp, #0
878034e0:	6078      	str	r0, [r7, #4]
878034e2:	6039      	str	r1, [r7, #0]
878034e4:	f107 031c 	add.w	r3, r7, #28
878034e8:	60fb      	str	r3, [r7, #12]
878034ea:	69ba      	ldr	r2, [r7, #24]
878034ec:	68fb      	ldr	r3, [r7, #12]
878034ee:	6839      	ldr	r1, [r7, #0]
878034f0:	6878      	ldr	r0, [r7, #4]
878034f2:	f7ff fc59 	bl	87802da8 <vsnprintf>
878034f6:	60b8      	str	r0, [r7, #8]
878034f8:	68ba      	ldr	r2, [r7, #8]
878034fa:	683b      	ldr	r3, [r7, #0]
878034fc:	429a      	cmp	r2, r3
878034fe:	d302      	bcc.n	87803506 <scnprintf+0x2e>
87803500:	683b      	ldr	r3, [r7, #0]
87803502:	3b01      	subs	r3, #1
87803504:	e000      	b.n	87803508 <scnprintf+0x30>
87803506:	68bb      	ldr	r3, [r7, #8]
87803508:	4618      	mov	r0, r3
8780350a:	3710      	adds	r7, #16
8780350c:	46bd      	mov	sp, r7
8780350e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803512:	b002      	add	sp, #8
87803514:	4770      	bx	lr
87803516:	bf00      	nop

87803518 <vsprintf>:
87803518:	b580      	push	{r7, lr}
8780351a:	b084      	sub	sp, #16
8780351c:	af00      	add	r7, sp, #0
8780351e:	60f8      	str	r0, [r7, #12]
87803520:	60b9      	str	r1, [r7, #8]
87803522:	607a      	str	r2, [r7, #4]
87803524:	687b      	ldr	r3, [r7, #4]
87803526:	68ba      	ldr	r2, [r7, #8]
87803528:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
8780352c:	68f8      	ldr	r0, [r7, #12]
8780352e:	f7ff fc3b 	bl	87802da8 <vsnprintf>
87803532:	4603      	mov	r3, r0
87803534:	4618      	mov	r0, r3
87803536:	3710      	adds	r7, #16
87803538:	46bd      	mov	sp, r7
8780353a:	bd80      	pop	{r7, pc}

8780353c <sprintf>:
8780353c:	b40e      	push	{r1, r2, r3}
8780353e:	b580      	push	{r7, lr}
87803540:	b085      	sub	sp, #20
87803542:	af00      	add	r7, sp, #0
87803544:	6078      	str	r0, [r7, #4]
87803546:	f107 0320 	add.w	r3, r7, #32
8780354a:	60fb      	str	r3, [r7, #12]
8780354c:	69fb      	ldr	r3, [r7, #28]
8780354e:	68fa      	ldr	r2, [r7, #12]
87803550:	4619      	mov	r1, r3
87803552:	6878      	ldr	r0, [r7, #4]
87803554:	f7ff ffe0 	bl	87803518 <vsprintf>
87803558:	60b8      	str	r0, [r7, #8]
8780355a:	68bb      	ldr	r3, [r7, #8]
8780355c:	4618      	mov	r0, r3
8780355e:	3714      	adds	r7, #20
87803560:	46bd      	mov	sp, r7
87803562:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803566:	b003      	add	sp, #12
87803568:	4770      	bx	lr
8780356a:	bf00      	nop

8780356c <vsscanf>:
8780356c:	b590      	push	{r4, r7, lr}
8780356e:	b09b      	sub	sp, #108	; 0x6c
87803570:	af00      	add	r7, sp, #0
87803572:	60f8      	str	r0, [r7, #12]
87803574:	60b9      	str	r1, [r7, #8]
87803576:	607a      	str	r2, [r7, #4]
87803578:	68fb      	ldr	r3, [r7, #12]
8780357a:	667b      	str	r3, [r7, #100]	; 0x64
8780357c:	2300      	movs	r3, #0
8780357e:	65fb      	str	r3, [r7, #92]	; 0x5c
87803580:	2300      	movs	r3, #0
87803582:	64fb      	str	r3, [r7, #76]	; 0x4c
87803584:	e3c6      	b.n	87803d14 <vsscanf+0x7a8>
87803586:	68bb      	ldr	r3, [r7, #8]
87803588:	781b      	ldrb	r3, [r3, #0]
8780358a:	461a      	mov	r2, r3
8780358c:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803590:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803594:	5c9b      	ldrb	r3, [r3, r2]
87803596:	f003 0320 	and.w	r3, r3, #32
8780359a:	2b00      	cmp	r3, #0
8780359c:	d01f      	beq.n	878035de <vsscanf+0x72>
8780359e:	e002      	b.n	878035a6 <vsscanf+0x3a>
878035a0:	68bb      	ldr	r3, [r7, #8]
878035a2:	3301      	adds	r3, #1
878035a4:	60bb      	str	r3, [r7, #8]
878035a6:	68bb      	ldr	r3, [r7, #8]
878035a8:	781b      	ldrb	r3, [r3, #0]
878035aa:	461a      	mov	r2, r3
878035ac:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
878035b0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878035b4:	5c9b      	ldrb	r3, [r3, r2]
878035b6:	f003 0320 	and.w	r3, r3, #32
878035ba:	2b00      	cmp	r3, #0
878035bc:	d1f0      	bne.n	878035a0 <vsscanf+0x34>
878035be:	e002      	b.n	878035c6 <vsscanf+0x5a>
878035c0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878035c2:	3301      	adds	r3, #1
878035c4:	667b      	str	r3, [r7, #100]	; 0x64
878035c6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878035c8:	781b      	ldrb	r3, [r3, #0]
878035ca:	461a      	mov	r2, r3
878035cc:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
878035d0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878035d4:	5c9b      	ldrb	r3, [r3, r2]
878035d6:	f003 0320 	and.w	r3, r3, #32
878035da:	2b00      	cmp	r3, #0
878035dc:	d1f0      	bne.n	878035c0 <vsscanf+0x54>
878035de:	68bb      	ldr	r3, [r7, #8]
878035e0:	781b      	ldrb	r3, [r3, #0]
878035e2:	2b25      	cmp	r3, #37	; 0x25
878035e4:	d00f      	beq.n	87803606 <vsscanf+0x9a>
878035e6:	68bb      	ldr	r3, [r7, #8]
878035e8:	781b      	ldrb	r3, [r3, #0]
878035ea:	2b00      	cmp	r3, #0
878035ec:	d00b      	beq.n	87803606 <vsscanf+0x9a>
878035ee:	68bb      	ldr	r3, [r7, #8]
878035f0:	1c5a      	adds	r2, r3, #1
878035f2:	60ba      	str	r2, [r7, #8]
878035f4:	781a      	ldrb	r2, [r3, #0]
878035f6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878035f8:	1c59      	adds	r1, r3, #1
878035fa:	6679      	str	r1, [r7, #100]	; 0x64
878035fc:	781b      	ldrb	r3, [r3, #0]
878035fe:	429a      	cmp	r2, r3
87803600:	d000      	beq.n	87803604 <vsscanf+0x98>
87803602:	e390      	b.n	87803d26 <vsscanf+0x7ba>
87803604:	e386      	b.n	87803d14 <vsscanf+0x7a8>
87803606:	68bb      	ldr	r3, [r7, #8]
87803608:	781b      	ldrb	r3, [r3, #0]
8780360a:	2b00      	cmp	r3, #0
8780360c:	d100      	bne.n	87803610 <vsscanf+0xa4>
8780360e:	e38a      	b.n	87803d26 <vsscanf+0x7ba>
87803610:	68bb      	ldr	r3, [r7, #8]
87803612:	3301      	adds	r3, #1
87803614:	60bb      	str	r3, [r7, #8]
87803616:	68bb      	ldr	r3, [r7, #8]
87803618:	781b      	ldrb	r3, [r3, #0]
8780361a:	2b2a      	cmp	r3, #42	; 0x2a
8780361c:	d128      	bne.n	87803670 <vsscanf+0x104>
8780361e:	e002      	b.n	87803626 <vsscanf+0xba>
87803620:	68bb      	ldr	r3, [r7, #8]
87803622:	3301      	adds	r3, #1
87803624:	60bb      	str	r3, [r7, #8]
87803626:	68bb      	ldr	r3, [r7, #8]
87803628:	781b      	ldrb	r3, [r3, #0]
8780362a:	461a      	mov	r2, r3
8780362c:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803630:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803634:	5c9b      	ldrb	r3, [r3, r2]
87803636:	f003 0320 	and.w	r3, r3, #32
8780363a:	2b00      	cmp	r3, #0
8780363c:	d103      	bne.n	87803646 <vsscanf+0xda>
8780363e:	68bb      	ldr	r3, [r7, #8]
87803640:	781b      	ldrb	r3, [r3, #0]
87803642:	2b00      	cmp	r3, #0
87803644:	d1ec      	bne.n	87803620 <vsscanf+0xb4>
87803646:	e002      	b.n	8780364e <vsscanf+0xe2>
87803648:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780364a:	3301      	adds	r3, #1
8780364c:	667b      	str	r3, [r7, #100]	; 0x64
8780364e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803650:	781b      	ldrb	r3, [r3, #0]
87803652:	461a      	mov	r2, r3
87803654:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803658:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780365c:	5c9b      	ldrb	r3, [r3, r2]
8780365e:	f003 0320 	and.w	r3, r3, #32
87803662:	2b00      	cmp	r3, #0
87803664:	d103      	bne.n	8780366e <vsscanf+0x102>
87803666:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803668:	781b      	ldrb	r3, [r3, #0]
8780366a:	2b00      	cmp	r3, #0
8780366c:	d1ec      	bne.n	87803648 <vsscanf+0xdc>
8780366e:	e351      	b.n	87803d14 <vsscanf+0x7a8>
87803670:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87803674:	653b      	str	r3, [r7, #80]	; 0x50
87803676:	68bb      	ldr	r3, [r7, #8]
87803678:	781b      	ldrb	r3, [r3, #0]
8780367a:	461a      	mov	r2, r3
8780367c:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803680:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803684:	5c9b      	ldrb	r3, [r3, r2]
87803686:	f003 0304 	and.w	r3, r3, #4
8780368a:	2b00      	cmp	r3, #0
8780368c:	d005      	beq.n	8780369a <vsscanf+0x12e>
8780368e:	f107 0308 	add.w	r3, r7, #8
87803692:	4618      	mov	r0, r3
87803694:	f7ff f81e 	bl	878026d4 <skip_atoi>
87803698:	6538      	str	r0, [r7, #80]	; 0x50
8780369a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
8780369e:	65bb      	str	r3, [r7, #88]	; 0x58
878036a0:	68bb      	ldr	r3, [r7, #8]
878036a2:	781b      	ldrb	r3, [r3, #0]
878036a4:	2b68      	cmp	r3, #104	; 0x68
878036a6:	d00f      	beq.n	878036c8 <vsscanf+0x15c>
878036a8:	68bb      	ldr	r3, [r7, #8]
878036aa:	781b      	ldrb	r3, [r3, #0]
878036ac:	2b6c      	cmp	r3, #108	; 0x6c
878036ae:	d00b      	beq.n	878036c8 <vsscanf+0x15c>
878036b0:	68bb      	ldr	r3, [r7, #8]
878036b2:	781b      	ldrb	r3, [r3, #0]
878036b4:	2b4c      	cmp	r3, #76	; 0x4c
878036b6:	d007      	beq.n	878036c8 <vsscanf+0x15c>
878036b8:	68bb      	ldr	r3, [r7, #8]
878036ba:	781b      	ldrb	r3, [r3, #0]
878036bc:	2b5a      	cmp	r3, #90	; 0x5a
878036be:	d003      	beq.n	878036c8 <vsscanf+0x15c>
878036c0:	68bb      	ldr	r3, [r7, #8]
878036c2:	781b      	ldrb	r3, [r3, #0]
878036c4:	2b7a      	cmp	r3, #122	; 0x7a
878036c6:	d120      	bne.n	8780370a <vsscanf+0x19e>
878036c8:	68bb      	ldr	r3, [r7, #8]
878036ca:	1c5a      	adds	r2, r3, #1
878036cc:	60ba      	str	r2, [r7, #8]
878036ce:	781b      	ldrb	r3, [r3, #0]
878036d0:	65bb      	str	r3, [r7, #88]	; 0x58
878036d2:	68bb      	ldr	r3, [r7, #8]
878036d4:	781b      	ldrb	r3, [r3, #0]
878036d6:	461a      	mov	r2, r3
878036d8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
878036da:	429a      	cmp	r2, r3
878036dc:	bf0c      	ite	eq
878036de:	2301      	moveq	r3, #1
878036e0:	2300      	movne	r3, #0
878036e2:	b2db      	uxtb	r3, r3
878036e4:	2b00      	cmp	r3, #0
878036e6:	d010      	beq.n	8780370a <vsscanf+0x19e>
878036e8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
878036ea:	2b68      	cmp	r3, #104	; 0x68
878036ec:	d105      	bne.n	878036fa <vsscanf+0x18e>
878036ee:	2348      	movs	r3, #72	; 0x48
878036f0:	65bb      	str	r3, [r7, #88]	; 0x58
878036f2:	68bb      	ldr	r3, [r7, #8]
878036f4:	3301      	adds	r3, #1
878036f6:	60bb      	str	r3, [r7, #8]
878036f8:	e007      	b.n	8780370a <vsscanf+0x19e>
878036fa:	6dbb      	ldr	r3, [r7, #88]	; 0x58
878036fc:	2b6c      	cmp	r3, #108	; 0x6c
878036fe:	d104      	bne.n	8780370a <vsscanf+0x19e>
87803700:	234c      	movs	r3, #76	; 0x4c
87803702:	65bb      	str	r3, [r7, #88]	; 0x58
87803704:	68bb      	ldr	r3, [r7, #8]
87803706:	3301      	adds	r3, #1
87803708:	60bb      	str	r3, [r7, #8]
8780370a:	230a      	movs	r3, #10
8780370c:	657b      	str	r3, [r7, #84]	; 0x54
8780370e:	2300      	movs	r3, #0
87803710:	64fb      	str	r3, [r7, #76]	; 0x4c
87803712:	68bb      	ldr	r3, [r7, #8]
87803714:	781b      	ldrb	r3, [r3, #0]
87803716:	2b00      	cmp	r3, #0
87803718:	f000 8305 	beq.w	87803d26 <vsscanf+0x7ba>
8780371c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780371e:	781b      	ldrb	r3, [r3, #0]
87803720:	2b00      	cmp	r3, #0
87803722:	f000 8300 	beq.w	87803d26 <vsscanf+0x7ba>
87803726:	68bb      	ldr	r3, [r7, #8]
87803728:	1c5a      	adds	r2, r3, #1
8780372a:	60ba      	str	r2, [r7, #8]
8780372c:	781b      	ldrb	r3, [r3, #0]
8780372e:	3b25      	subs	r3, #37	; 0x25
87803730:	2b53      	cmp	r3, #83	; 0x53
87803732:	f200 8132 	bhi.w	8780399a <vsscanf+0x42e>
87803736:	a201      	add	r2, pc, #4	; (adr r2, 8780373c <vsscanf+0x1d0>)
87803738:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
8780373c:	87803989 	strhi	r3, [r0, r9, lsl #19]
87803740:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803744:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803748:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780374c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803750:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803754:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803758:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780375c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803760:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803764:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803768:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780376c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803770:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803774:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803778:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780377c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803780:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803784:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803788:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780378c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803790:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803794:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803798:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780379c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037a0:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037a4:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037a8:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037ac:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037b0:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037b4:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037b8:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037bc:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037c0:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037c4:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037c8:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037cc:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037d0:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037d4:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037d8:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037dc:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037e0:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037e4:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037e8:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037ec:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037f0:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037f4:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037f8:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
878037fc:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803800:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803804:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803808:	87803979 			; <UNDEFINED> instruction: 0x87803979
8780380c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803810:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803814:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803818:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780381c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803820:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803824:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803828:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780382c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803830:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803834:	8780388d 	strhi	r3, [r0, sp, lsl #17]
87803838:	87803983 	strhi	r3, [r0, r3, lsl #19]
8780383c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803840:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803844:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803848:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780384c:	8780397f 			; <UNDEFINED> instruction: 0x8780397f
87803850:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803854:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803858:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780385c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803860:	87803959 			; <UNDEFINED> instruction: 0x87803959
87803864:	87803973 			; <UNDEFINED> instruction: 0x87803973
87803868:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780386c:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803870:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803874:	878038d3 			; <UNDEFINED> instruction: 0x878038d3
87803878:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
8780387c:	8780399f 			; <UNDEFINED> instruction: 0x8780399f
87803880:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803884:	8780399b 			; <UNDEFINED> instruction: 0x8780399b
87803888:	87803979 			; <UNDEFINED> instruction: 0x87803979
8780388c:	687b      	ldr	r3, [r7, #4]
8780388e:	3304      	adds	r3, #4
87803890:	607b      	str	r3, [r7, #4]
87803892:	687b      	ldr	r3, [r7, #4]
87803894:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803898:	64bb      	str	r3, [r7, #72]	; 0x48
8780389a:	6d3b      	ldr	r3, [r7, #80]	; 0x50
8780389c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
878038a0:	d101      	bne.n	878038a6 <vsscanf+0x33a>
878038a2:	2301      	movs	r3, #1
878038a4:	653b      	str	r3, [r7, #80]	; 0x50
878038a6:	6cbb      	ldr	r3, [r7, #72]	; 0x48
878038a8:	1c5a      	adds	r2, r3, #1
878038aa:	64ba      	str	r2, [r7, #72]	; 0x48
878038ac:	6e7a      	ldr	r2, [r7, #100]	; 0x64
878038ae:	1c51      	adds	r1, r2, #1
878038b0:	6679      	str	r1, [r7, #100]	; 0x64
878038b2:	7812      	ldrb	r2, [r2, #0]
878038b4:	701a      	strb	r2, [r3, #0]
878038b6:	6d3b      	ldr	r3, [r7, #80]	; 0x50
878038b8:	3b01      	subs	r3, #1
878038ba:	653b      	str	r3, [r7, #80]	; 0x50
878038bc:	6d3b      	ldr	r3, [r7, #80]	; 0x50
878038be:	2b00      	cmp	r3, #0
878038c0:	dd03      	ble.n	878038ca <vsscanf+0x35e>
878038c2:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878038c4:	781b      	ldrb	r3, [r3, #0]
878038c6:	2b00      	cmp	r3, #0
878038c8:	d1ed      	bne.n	878038a6 <vsscanf+0x33a>
878038ca:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
878038cc:	3301      	adds	r3, #1
878038ce:	65fb      	str	r3, [r7, #92]	; 0x5c
878038d0:	e220      	b.n	87803d14 <vsscanf+0x7a8>
878038d2:	687b      	ldr	r3, [r7, #4]
878038d4:	3304      	adds	r3, #4
878038d6:	607b      	str	r3, [r7, #4]
878038d8:	687b      	ldr	r3, [r7, #4]
878038da:	f853 3c04 	ldr.w	r3, [r3, #-4]
878038de:	647b      	str	r3, [r7, #68]	; 0x44
878038e0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
878038e2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
878038e6:	d102      	bne.n	878038ee <vsscanf+0x382>
878038e8:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
878038ec:	653b      	str	r3, [r7, #80]	; 0x50
878038ee:	e002      	b.n	878038f6 <vsscanf+0x38a>
878038f0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878038f2:	3301      	adds	r3, #1
878038f4:	667b      	str	r3, [r7, #100]	; 0x64
878038f6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878038f8:	781b      	ldrb	r3, [r3, #0]
878038fa:	461a      	mov	r2, r3
878038fc:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803900:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803904:	5c9b      	ldrb	r3, [r3, r2]
87803906:	f003 0320 	and.w	r3, r3, #32
8780390a:	2b00      	cmp	r3, #0
8780390c:	d1f0      	bne.n	878038f0 <vsscanf+0x384>
8780390e:	e007      	b.n	87803920 <vsscanf+0x3b4>
87803910:	6c7b      	ldr	r3, [r7, #68]	; 0x44
87803912:	1c5a      	adds	r2, r3, #1
87803914:	647a      	str	r2, [r7, #68]	; 0x44
87803916:	6e7a      	ldr	r2, [r7, #100]	; 0x64
87803918:	1c51      	adds	r1, r2, #1
8780391a:	6679      	str	r1, [r7, #100]	; 0x64
8780391c:	7812      	ldrb	r2, [r2, #0]
8780391e:	701a      	strb	r2, [r3, #0]
87803920:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803922:	781b      	ldrb	r3, [r3, #0]
87803924:	2b00      	cmp	r3, #0
87803926:	d010      	beq.n	8780394a <vsscanf+0x3de>
87803928:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780392a:	781b      	ldrb	r3, [r3, #0]
8780392c:	461a      	mov	r2, r3
8780392e:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803932:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803936:	5c9b      	ldrb	r3, [r3, r2]
87803938:	f003 0320 	and.w	r3, r3, #32
8780393c:	2b00      	cmp	r3, #0
8780393e:	d104      	bne.n	8780394a <vsscanf+0x3de>
87803940:	6d3b      	ldr	r3, [r7, #80]	; 0x50
87803942:	1e5a      	subs	r2, r3, #1
87803944:	653a      	str	r2, [r7, #80]	; 0x50
87803946:	2b00      	cmp	r3, #0
87803948:	d1e2      	bne.n	87803910 <vsscanf+0x3a4>
8780394a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
8780394c:	2200      	movs	r2, #0
8780394e:	701a      	strb	r2, [r3, #0]
87803950:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803952:	3301      	adds	r3, #1
87803954:	65fb      	str	r3, [r7, #92]	; 0x5c
87803956:	e1dd      	b.n	87803d14 <vsscanf+0x7a8>
87803958:	687b      	ldr	r3, [r7, #4]
8780395a:	3304      	adds	r3, #4
8780395c:	607b      	str	r3, [r7, #4]
8780395e:	687b      	ldr	r3, [r7, #4]
87803960:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803964:	643b      	str	r3, [r7, #64]	; 0x40
87803966:	6e7a      	ldr	r2, [r7, #100]	; 0x64
87803968:	68fb      	ldr	r3, [r7, #12]
8780396a:	1ad2      	subs	r2, r2, r3
8780396c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
8780396e:	601a      	str	r2, [r3, #0]
87803970:	e1d0      	b.n	87803d14 <vsscanf+0x7a8>
87803972:	2308      	movs	r3, #8
87803974:	657b      	str	r3, [r7, #84]	; 0x54
87803976:	e013      	b.n	878039a0 <vsscanf+0x434>
87803978:	2310      	movs	r3, #16
8780397a:	657b      	str	r3, [r7, #84]	; 0x54
8780397c:	e010      	b.n	878039a0 <vsscanf+0x434>
8780397e:	2300      	movs	r3, #0
87803980:	657b      	str	r3, [r7, #84]	; 0x54
87803982:	2301      	movs	r3, #1
87803984:	64fb      	str	r3, [r7, #76]	; 0x4c
87803986:	e00a      	b.n	8780399e <vsscanf+0x432>
87803988:	6e7b      	ldr	r3, [r7, #100]	; 0x64
8780398a:	1c5a      	adds	r2, r3, #1
8780398c:	667a      	str	r2, [r7, #100]	; 0x64
8780398e:	781b      	ldrb	r3, [r3, #0]
87803990:	2b25      	cmp	r3, #37	; 0x25
87803992:	d001      	beq.n	87803998 <vsscanf+0x42c>
87803994:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803996:	e1c7      	b.n	87803d28 <vsscanf+0x7bc>
87803998:	e1bc      	b.n	87803d14 <vsscanf+0x7a8>
8780399a:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
8780399c:	e1c4      	b.n	87803d28 <vsscanf+0x7bc>
8780399e:	bf00      	nop
878039a0:	e002      	b.n	878039a8 <vsscanf+0x43c>
878039a2:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878039a4:	3301      	adds	r3, #1
878039a6:	667b      	str	r3, [r7, #100]	; 0x64
878039a8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878039aa:	781b      	ldrb	r3, [r3, #0]
878039ac:	461a      	mov	r2, r3
878039ae:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
878039b2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878039b6:	5c9b      	ldrb	r3, [r3, r2]
878039b8:	f003 0320 	and.w	r3, r3, #32
878039bc:	2b00      	cmp	r3, #0
878039be:	d1f0      	bne.n	878039a2 <vsscanf+0x436>
878039c0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878039c2:	781b      	ldrb	r3, [r3, #0]
878039c4:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
878039c8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
878039ca:	2b00      	cmp	r3, #0
878039cc:	d007      	beq.n	878039de <vsscanf+0x472>
878039ce:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
878039d2:	2b2d      	cmp	r3, #45	; 0x2d
878039d4:	d103      	bne.n	878039de <vsscanf+0x472>
878039d6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
878039d8:	785b      	ldrb	r3, [r3, #1]
878039da:	f887 3063 	strb.w	r3, [r7, #99]	; 0x63
878039de:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
878039e2:	2b00      	cmp	r3, #0
878039e4:	f000 819f 	beq.w	87803d26 <vsscanf+0x7ba>
878039e8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
878039ea:	2b10      	cmp	r3, #16
878039ec:	d10b      	bne.n	87803a06 <vsscanf+0x49a>
878039ee:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
878039f2:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
878039f6:	f2c8 7380 	movt	r3, #34688	; 0x8780
878039fa:	5c9b      	ldrb	r3, [r3, r2]
878039fc:	f003 0344 	and.w	r3, r3, #68	; 0x44
87803a00:	2b00      	cmp	r3, #0
87803a02:	f000 8190 	beq.w	87803d26 <vsscanf+0x7ba>
87803a06:	6d7b      	ldr	r3, [r7, #84]	; 0x54
87803a08:	2b0a      	cmp	r3, #10
87803a0a:	d10b      	bne.n	87803a24 <vsscanf+0x4b8>
87803a0c:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
87803a10:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803a14:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803a18:	5c9b      	ldrb	r3, [r3, r2]
87803a1a:	f003 0304 	and.w	r3, r3, #4
87803a1e:	2b00      	cmp	r3, #0
87803a20:	f000 8181 	beq.w	87803d26 <vsscanf+0x7ba>
87803a24:	6d7b      	ldr	r3, [r7, #84]	; 0x54
87803a26:	2b08      	cmp	r3, #8
87803a28:	d110      	bne.n	87803a4c <vsscanf+0x4e0>
87803a2a:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
87803a2e:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803a32:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803a36:	5c9b      	ldrb	r3, [r3, r2]
87803a38:	f003 0304 	and.w	r3, r3, #4
87803a3c:	2b00      	cmp	r3, #0
87803a3e:	f000 8172 	beq.w	87803d26 <vsscanf+0x7ba>
87803a42:	f897 3063 	ldrb.w	r3, [r7, #99]	; 0x63
87803a46:	2b37      	cmp	r3, #55	; 0x37
87803a48:	f200 816d 	bhi.w	87803d26 <vsscanf+0x7ba>
87803a4c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
87803a4e:	2b00      	cmp	r3, #0
87803a50:	d10b      	bne.n	87803a6a <vsscanf+0x4fe>
87803a52:	f897 2063 	ldrb.w	r2, [r7, #99]	; 0x63
87803a56:	f64b 13d8 	movw	r3, #47576	; 0xb9d8
87803a5a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803a5e:	5c9b      	ldrb	r3, [r3, r2]
87803a60:	f003 0304 	and.w	r3, r3, #4
87803a64:	2b00      	cmp	r3, #0
87803a66:	f000 815e 	beq.w	87803d26 <vsscanf+0x7ba>
87803a6a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
87803a6c:	3b48      	subs	r3, #72	; 0x48
87803a6e:	2b32      	cmp	r3, #50	; 0x32
87803a70:	f200 8120 	bhi.w	87803cb4 <vsscanf+0x748>
87803a74:	a201      	add	r2, pc, #4	; (adr r2, 87803a7c <vsscanf+0x510>)
87803a76:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87803a7a:	bf00      	nop
87803a7c:	87803b49 	strhi	r3, [r0, r9, asr #22]
87803a80:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803a84:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803a88:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803a8c:	87803c3b 			; <UNDEFINED> instruction: 0x87803c3b
87803a90:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803a94:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803a98:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803a9c:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803aa0:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803aa4:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803aa8:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803aac:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ab0:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ab4:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ab8:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803abc:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ac0:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ac4:	87803c91 			; <UNDEFINED> instruction: 0x87803c91
87803ac8:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803acc:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ad0:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ad4:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ad8:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803adc:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ae0:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ae4:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803ae8:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803aec:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803af0:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803af4:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803af8:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803afc:	87803b9b 			; <UNDEFINED> instruction: 0x87803b9b
87803b00:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b04:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b08:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b0c:	87803bed 	strhi	r3, [r0, sp, ror #23]
87803b10:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b14:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b18:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b1c:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b20:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b24:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b28:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b2c:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b30:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b34:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b38:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b3c:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b40:	87803cb5 			; <UNDEFINED> instruction: 0x87803cb5
87803b44:	87803c91 			; <UNDEFINED> instruction: 0x87803c91
87803b48:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803b4a:	2b00      	cmp	r3, #0
87803b4c:	d012      	beq.n	87803b74 <vsscanf+0x608>
87803b4e:	687b      	ldr	r3, [r7, #4]
87803b50:	3304      	adds	r3, #4
87803b52:	607b      	str	r3, [r7, #4]
87803b54:	687b      	ldr	r3, [r7, #4]
87803b56:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b5a:	63fb      	str	r3, [r7, #60]	; 0x3c
87803b5c:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b5e:	f107 0310 	add.w	r3, r7, #16
87803b62:	4619      	mov	r1, r3
87803b64:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b66:	f7fe fcc3 	bl	878024f0 <simple_strtol>
87803b6a:	4603      	mov	r3, r0
87803b6c:	b2da      	uxtb	r2, r3
87803b6e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
87803b70:	701a      	strb	r2, [r3, #0]
87803b72:	e0c6      	b.n	87803d02 <vsscanf+0x796>
87803b74:	687b      	ldr	r3, [r7, #4]
87803b76:	3304      	adds	r3, #4
87803b78:	607b      	str	r3, [r7, #4]
87803b7a:	687b      	ldr	r3, [r7, #4]
87803b7c:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803b80:	63bb      	str	r3, [r7, #56]	; 0x38
87803b82:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803b84:	f107 0310 	add.w	r3, r7, #16
87803b88:	4619      	mov	r1, r3
87803b8a:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803b8c:	f7fe fc2e 	bl	878023ec <simple_strtoul>
87803b90:	4603      	mov	r3, r0
87803b92:	b2da      	uxtb	r2, r3
87803b94:	6bbb      	ldr	r3, [r7, #56]	; 0x38
87803b96:	701a      	strb	r2, [r3, #0]
87803b98:	e0b3      	b.n	87803d02 <vsscanf+0x796>
87803b9a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803b9c:	2b00      	cmp	r3, #0
87803b9e:	d012      	beq.n	87803bc6 <vsscanf+0x65a>
87803ba0:	687b      	ldr	r3, [r7, #4]
87803ba2:	3304      	adds	r3, #4
87803ba4:	607b      	str	r3, [r7, #4]
87803ba6:	687b      	ldr	r3, [r7, #4]
87803ba8:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803bac:	637b      	str	r3, [r7, #52]	; 0x34
87803bae:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803bb0:	f107 0310 	add.w	r3, r7, #16
87803bb4:	4619      	mov	r1, r3
87803bb6:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803bb8:	f7fe fc9a 	bl	878024f0 <simple_strtol>
87803bbc:	4603      	mov	r3, r0
87803bbe:	b29a      	uxth	r2, r3
87803bc0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
87803bc2:	801a      	strh	r2, [r3, #0]
87803bc4:	e09d      	b.n	87803d02 <vsscanf+0x796>
87803bc6:	687b      	ldr	r3, [r7, #4]
87803bc8:	3304      	adds	r3, #4
87803bca:	607b      	str	r3, [r7, #4]
87803bcc:	687b      	ldr	r3, [r7, #4]
87803bce:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803bd2:	633b      	str	r3, [r7, #48]	; 0x30
87803bd4:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803bd6:	f107 0310 	add.w	r3, r7, #16
87803bda:	4619      	mov	r1, r3
87803bdc:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803bde:	f7fe fc05 	bl	878023ec <simple_strtoul>
87803be2:	4603      	mov	r3, r0
87803be4:	b29a      	uxth	r2, r3
87803be6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
87803be8:	801a      	strh	r2, [r3, #0]
87803bea:	e08a      	b.n	87803d02 <vsscanf+0x796>
87803bec:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803bee:	2b00      	cmp	r3, #0
87803bf0:	d011      	beq.n	87803c16 <vsscanf+0x6aa>
87803bf2:	687b      	ldr	r3, [r7, #4]
87803bf4:	3304      	adds	r3, #4
87803bf6:	607b      	str	r3, [r7, #4]
87803bf8:	687b      	ldr	r3, [r7, #4]
87803bfa:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803bfe:	62fb      	str	r3, [r7, #44]	; 0x2c
87803c00:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803c02:	f107 0310 	add.w	r3, r7, #16
87803c06:	4619      	mov	r1, r3
87803c08:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803c0a:	f7fe fc71 	bl	878024f0 <simple_strtol>
87803c0e:	4602      	mov	r2, r0
87803c10:	6afb      	ldr	r3, [r7, #44]	; 0x2c
87803c12:	601a      	str	r2, [r3, #0]
87803c14:	e075      	b.n	87803d02 <vsscanf+0x796>
87803c16:	687b      	ldr	r3, [r7, #4]
87803c18:	3304      	adds	r3, #4
87803c1a:	607b      	str	r3, [r7, #4]
87803c1c:	687b      	ldr	r3, [r7, #4]
87803c1e:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803c22:	62bb      	str	r3, [r7, #40]	; 0x28
87803c24:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803c26:	f107 0310 	add.w	r3, r7, #16
87803c2a:	4619      	mov	r1, r3
87803c2c:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803c2e:	f7fe fbdd 	bl	878023ec <simple_strtoul>
87803c32:	4602      	mov	r2, r0
87803c34:	6abb      	ldr	r3, [r7, #40]	; 0x28
87803c36:	601a      	str	r2, [r3, #0]
87803c38:	e063      	b.n	87803d02 <vsscanf+0x796>
87803c3a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803c3c:	2b00      	cmp	r3, #0
87803c3e:	d013      	beq.n	87803c68 <vsscanf+0x6fc>
87803c40:	687b      	ldr	r3, [r7, #4]
87803c42:	3304      	adds	r3, #4
87803c44:	607b      	str	r3, [r7, #4]
87803c46:	687b      	ldr	r3, [r7, #4]
87803c48:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803c4c:	627b      	str	r3, [r7, #36]	; 0x24
87803c4e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803c50:	f107 0310 	add.w	r3, r7, #16
87803c54:	4619      	mov	r1, r3
87803c56:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803c58:	f7fe fd18 	bl	8780268c <simple_strtoll>
87803c5c:	4603      	mov	r3, r0
87803c5e:	460c      	mov	r4, r1
87803c60:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87803c62:	e9c2 3400 	strd	r3, r4, [r2]
87803c66:	e04c      	b.n	87803d02 <vsscanf+0x796>
87803c68:	687b      	ldr	r3, [r7, #4]
87803c6a:	3304      	adds	r3, #4
87803c6c:	607b      	str	r3, [r7, #4]
87803c6e:	687b      	ldr	r3, [r7, #4]
87803c70:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803c74:	623b      	str	r3, [r7, #32]
87803c76:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803c78:	f107 0310 	add.w	r3, r7, #16
87803c7c:	4619      	mov	r1, r3
87803c7e:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803c80:	f7fe fc54 	bl	8780252c <simple_strtoull>
87803c84:	4603      	mov	r3, r0
87803c86:	460c      	mov	r4, r1
87803c88:	6a3a      	ldr	r2, [r7, #32]
87803c8a:	e9c2 3400 	strd	r3, r4, [r2]
87803c8e:	e038      	b.n	87803d02 <vsscanf+0x796>
87803c90:	687b      	ldr	r3, [r7, #4]
87803c92:	3304      	adds	r3, #4
87803c94:	607b      	str	r3, [r7, #4]
87803c96:	687b      	ldr	r3, [r7, #4]
87803c98:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803c9c:	61fb      	str	r3, [r7, #28]
87803c9e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803ca0:	f107 0310 	add.w	r3, r7, #16
87803ca4:	4619      	mov	r1, r3
87803ca6:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803ca8:	f7fe fba0 	bl	878023ec <simple_strtoul>
87803cac:	4602      	mov	r2, r0
87803cae:	69fb      	ldr	r3, [r7, #28]
87803cb0:	601a      	str	r2, [r3, #0]
87803cb2:	e026      	b.n	87803d02 <vsscanf+0x796>
87803cb4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
87803cb6:	2b00      	cmp	r3, #0
87803cb8:	d011      	beq.n	87803cde <vsscanf+0x772>
87803cba:	687b      	ldr	r3, [r7, #4]
87803cbc:	3304      	adds	r3, #4
87803cbe:	607b      	str	r3, [r7, #4]
87803cc0:	687b      	ldr	r3, [r7, #4]
87803cc2:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803cc6:	61bb      	str	r3, [r7, #24]
87803cc8:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803cca:	f107 0310 	add.w	r3, r7, #16
87803cce:	4619      	mov	r1, r3
87803cd0:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803cd2:	f7fe fc0d 	bl	878024f0 <simple_strtol>
87803cd6:	4602      	mov	r2, r0
87803cd8:	69bb      	ldr	r3, [r7, #24]
87803cda:	601a      	str	r2, [r3, #0]
87803cdc:	e010      	b.n	87803d00 <vsscanf+0x794>
87803cde:	687b      	ldr	r3, [r7, #4]
87803ce0:	3304      	adds	r3, #4
87803ce2:	607b      	str	r3, [r7, #4]
87803ce4:	687b      	ldr	r3, [r7, #4]
87803ce6:	f853 3c04 	ldr.w	r3, [r3, #-4]
87803cea:	617b      	str	r3, [r7, #20]
87803cec:	6d7a      	ldr	r2, [r7, #84]	; 0x54
87803cee:	f107 0310 	add.w	r3, r7, #16
87803cf2:	4619      	mov	r1, r3
87803cf4:	6e78      	ldr	r0, [r7, #100]	; 0x64
87803cf6:	f7fe fb79 	bl	878023ec <simple_strtoul>
87803cfa:	4602      	mov	r2, r0
87803cfc:	697b      	ldr	r3, [r7, #20]
87803cfe:	601a      	str	r2, [r3, #0]
87803d00:	bf00      	nop
87803d02:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803d04:	3301      	adds	r3, #1
87803d06:	65fb      	str	r3, [r7, #92]	; 0x5c
87803d08:	693b      	ldr	r3, [r7, #16]
87803d0a:	2b00      	cmp	r3, #0
87803d0c:	d100      	bne.n	87803d10 <vsscanf+0x7a4>
87803d0e:	e00a      	b.n	87803d26 <vsscanf+0x7ba>
87803d10:	693b      	ldr	r3, [r7, #16]
87803d12:	667b      	str	r3, [r7, #100]	; 0x64
87803d14:	68bb      	ldr	r3, [r7, #8]
87803d16:	781b      	ldrb	r3, [r3, #0]
87803d18:	2b00      	cmp	r3, #0
87803d1a:	d004      	beq.n	87803d26 <vsscanf+0x7ba>
87803d1c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
87803d1e:	781b      	ldrb	r3, [r3, #0]
87803d20:	2b00      	cmp	r3, #0
87803d22:	f47f ac30 	bne.w	87803586 <vsscanf+0x1a>
87803d26:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
87803d28:	4618      	mov	r0, r3
87803d2a:	376c      	adds	r7, #108	; 0x6c
87803d2c:	46bd      	mov	sp, r7
87803d2e:	bd90      	pop	{r4, r7, pc}

87803d30 <sscanf>:
87803d30:	b40e      	push	{r1, r2, r3}
87803d32:	b580      	push	{r7, lr}
87803d34:	b085      	sub	sp, #20
87803d36:	af00      	add	r7, sp, #0
87803d38:	6078      	str	r0, [r7, #4]
87803d3a:	f107 0320 	add.w	r3, r7, #32
87803d3e:	60fb      	str	r3, [r7, #12]
87803d40:	69fb      	ldr	r3, [r7, #28]
87803d42:	68fa      	ldr	r2, [r7, #12]
87803d44:	4619      	mov	r1, r3
87803d46:	6878      	ldr	r0, [r7, #4]
87803d48:	f7ff fc10 	bl	8780356c <vsscanf>
87803d4c:	60b8      	str	r0, [r7, #8]
87803d4e:	68bb      	ldr	r3, [r7, #8]
87803d50:	4618      	mov	r0, r3
87803d52:	3714      	adds	r7, #20
87803d54:	46bd      	mov	sp, r7
87803d56:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
87803d5a:	b003      	add	sp, #12
87803d5c:	4770      	bx	lr
87803d5e:	bf00      	nop

87803d60 <IOMUXC_SetPinMux>:
87803d60:	b480      	push	{r7}
87803d62:	b085      	sub	sp, #20
87803d64:	af00      	add	r7, sp, #0
87803d66:	60f8      	str	r0, [r7, #12]
87803d68:	60b9      	str	r1, [r7, #8]
87803d6a:	607a      	str	r2, [r7, #4]
87803d6c:	603b      	str	r3, [r7, #0]
87803d6e:	68fb      	ldr	r3, [r7, #12]
87803d70:	68ba      	ldr	r2, [r7, #8]
87803d72:	f002 010f 	and.w	r1, r2, #15
87803d76:	69fa      	ldr	r2, [r7, #28]
87803d78:	0112      	lsls	r2, r2, #4
87803d7a:	f002 0210 	and.w	r2, r2, #16
87803d7e:	430a      	orrs	r2, r1
87803d80:	601a      	str	r2, [r3, #0]
87803d82:	687b      	ldr	r3, [r7, #4]
87803d84:	2b00      	cmp	r3, #0
87803d86:	d004      	beq.n	87803d92 <IOMUXC_SetPinMux+0x32>
87803d88:	687b      	ldr	r3, [r7, #4]
87803d8a:	683a      	ldr	r2, [r7, #0]
87803d8c:	f002 0207 	and.w	r2, r2, #7
87803d90:	601a      	str	r2, [r3, #0]
87803d92:	3714      	adds	r7, #20
87803d94:	46bd      	mov	sp, r7
87803d96:	f85d 7b04 	ldr.w	r7, [sp], #4
87803d9a:	4770      	bx	lr

87803d9c <IOMUXC_SetPinConfig>:
87803d9c:	b480      	push	{r7}
87803d9e:	b085      	sub	sp, #20
87803da0:	af00      	add	r7, sp, #0
87803da2:	60f8      	str	r0, [r7, #12]
87803da4:	60b9      	str	r1, [r7, #8]
87803da6:	607a      	str	r2, [r7, #4]
87803da8:	603b      	str	r3, [r7, #0]
87803daa:	69bb      	ldr	r3, [r7, #24]
87803dac:	2b00      	cmp	r3, #0
87803dae:	d002      	beq.n	87803db6 <IOMUXC_SetPinConfig+0x1a>
87803db0:	69bb      	ldr	r3, [r7, #24]
87803db2:	69fa      	ldr	r2, [r7, #28]
87803db4:	601a      	str	r2, [r3, #0]
87803db6:	3714      	adds	r7, #20
87803db8:	46bd      	mov	sp, r7
87803dba:	f85d 7b04 	ldr.w	r7, [sp], #4
87803dbe:	4770      	bx	lr

87803dc0 <lcd_init>:
87803dc0:	b580      	push	{r7, lr}
87803dc2:	b082      	sub	sp, #8
87803dc4:	af00      	add	r7, sp, #0
87803dc6:	2300      	movs	r3, #0
87803dc8:	80fb      	strh	r3, [r7, #6]
87803dca:	f000 fa7d 	bl	878042c8 <lcd_read_panelid>
87803dce:	4603      	mov	r3, r0
87803dd0:	80fb      	strh	r3, [r7, #6]
87803dd2:	88fa      	ldrh	r2, [r7, #6]
87803dd4:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803dd8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ddc:	621a      	str	r2, [r3, #32]
87803dde:	88fb      	ldrh	r3, [r7, #6]
87803de0:	4619      	mov	r1, r3
87803de2:	f247 203c 	movw	r0, #29244	; 0x723c
87803de6:	f2c8 7080 	movt	r0, #34688	; 0x8780
87803dea:	f7fd fedf 	bl	87801bac <printf>
87803dee:	f000 fb6f 	bl	878044d0 <lcdgpio_init>
87803df2:	f000 ffd9 	bl	87804da8 <lcd_reset>
87803df6:	200a      	movs	r0, #10
87803df8:	f7fc fc8e 	bl	87800718 <delayms>
87803dfc:	f000 ffe2 	bl	87804dc4 <lcd_noreset>
87803e00:	88fb      	ldrh	r3, [r7, #6]
87803e02:	f244 3242 	movw	r2, #17218	; 0x4342
87803e06:	4293      	cmp	r3, r2
87803e08:	d137      	bne.n	87803e7a <lcd_init+0xba>
87803e0a:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e0e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e12:	f44f 7288 	mov.w	r2, #272	; 0x110
87803e16:	801a      	strh	r2, [r3, #0]
87803e18:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e1c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e20:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
87803e24:	805a      	strh	r2, [r3, #2]
87803e26:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e2a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e2e:	2201      	movs	r2, #1
87803e30:	80da      	strh	r2, [r3, #6]
87803e32:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e36:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e3a:	2208      	movs	r2, #8
87803e3c:	811a      	strh	r2, [r3, #8]
87803e3e:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e42:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e46:	2208      	movs	r2, #8
87803e48:	815a      	strh	r2, [r3, #10]
87803e4a:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e4e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e52:	2201      	movs	r2, #1
87803e54:	819a      	strh	r2, [r3, #12]
87803e56:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e5a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e5e:	2228      	movs	r2, #40	; 0x28
87803e60:	81da      	strh	r2, [r3, #14]
87803e62:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e66:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e6a:	2205      	movs	r2, #5
87803e6c:	821a      	strh	r2, [r3, #16]
87803e6e:	2208      	movs	r2, #8
87803e70:	2108      	movs	r1, #8
87803e72:	201b      	movs	r0, #27
87803e74:	f000 fefc 	bl	87804c70 <lcdclk_init>
87803e78:	e12e      	b.n	878040d8 <lcd_init+0x318>
87803e7a:	88fb      	ldrh	r3, [r7, #6]
87803e7c:	f244 3284 	movw	r2, #17284	; 0x4384
87803e80:	4293      	cmp	r3, r2
87803e82:	d137      	bne.n	87803ef4 <lcd_init+0x134>
87803e84:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e88:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e8c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
87803e90:	801a      	strh	r2, [r3, #0]
87803e92:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803e96:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803e9a:	f44f 7248 	mov.w	r2, #800	; 0x320
87803e9e:	805a      	strh	r2, [r3, #2]
87803ea0:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803ea4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ea8:	2203      	movs	r2, #3
87803eaa:	80da      	strh	r2, [r3, #6]
87803eac:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803eb0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803eb4:	2220      	movs	r2, #32
87803eb6:	811a      	strh	r2, [r3, #8]
87803eb8:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803ebc:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ec0:	220d      	movs	r2, #13
87803ec2:	815a      	strh	r2, [r3, #10]
87803ec4:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803ec8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ecc:	2230      	movs	r2, #48	; 0x30
87803ece:	819a      	strh	r2, [r3, #12]
87803ed0:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803ed4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ed8:	2258      	movs	r2, #88	; 0x58
87803eda:	81da      	strh	r2, [r3, #14]
87803edc:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803ee0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ee4:	2228      	movs	r2, #40	; 0x28
87803ee6:	821a      	strh	r2, [r3, #16]
87803ee8:	2208      	movs	r2, #8
87803eea:	2104      	movs	r1, #4
87803eec:	202a      	movs	r0, #42	; 0x2a
87803eee:	f000 febf 	bl	87804c70 <lcdclk_init>
87803ef2:	e0f1      	b.n	878040d8 <lcd_init+0x318>
87803ef4:	88fb      	ldrh	r3, [r7, #6]
87803ef6:	f247 0284 	movw	r2, #28804	; 0x7084
87803efa:	4293      	cmp	r3, r2
87803efc:	d137      	bne.n	87803f6e <lcd_init+0x1ae>
87803efe:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f02:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f06:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
87803f0a:	801a      	strh	r2, [r3, #0]
87803f0c:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f10:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f14:	f44f 7248 	mov.w	r2, #800	; 0x320
87803f18:	805a      	strh	r2, [r3, #2]
87803f1a:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f1e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f22:	2201      	movs	r2, #1
87803f24:	80da      	strh	r2, [r3, #6]
87803f26:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f2a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f2e:	2217      	movs	r2, #23
87803f30:	811a      	strh	r2, [r3, #8]
87803f32:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f36:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f3a:	2216      	movs	r2, #22
87803f3c:	815a      	strh	r2, [r3, #10]
87803f3e:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f42:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f46:	2201      	movs	r2, #1
87803f48:	819a      	strh	r2, [r3, #12]
87803f4a:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f4e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f52:	222e      	movs	r2, #46	; 0x2e
87803f54:	81da      	strh	r2, [r3, #14]
87803f56:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f5a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f5e:	22d2      	movs	r2, #210	; 0xd2
87803f60:	821a      	strh	r2, [r3, #16]
87803f62:	2207      	movs	r2, #7
87803f64:	2103      	movs	r1, #3
87803f66:	201e      	movs	r0, #30
87803f68:	f000 fe82 	bl	87804c70 <lcdclk_init>
87803f6c:	e0b4      	b.n	878040d8 <lcd_init+0x318>
87803f6e:	88fb      	ldrh	r3, [r7, #6]
87803f70:	f247 0216 	movw	r2, #28694	; 0x7016
87803f74:	4293      	cmp	r3, r2
87803f76:	d137      	bne.n	87803fe8 <lcd_init+0x228>
87803f78:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f7c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f80:	f44f 7216 	mov.w	r2, #600	; 0x258
87803f84:	801a      	strh	r2, [r3, #0]
87803f86:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f8a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f8e:	f44f 6280 	mov.w	r2, #1024	; 0x400
87803f92:	805a      	strh	r2, [r3, #2]
87803f94:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803f98:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803f9c:	2203      	movs	r2, #3
87803f9e:	80da      	strh	r2, [r3, #6]
87803fa0:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803fa4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fa8:	2214      	movs	r2, #20
87803faa:	811a      	strh	r2, [r3, #8]
87803fac:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803fb0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fb4:	220c      	movs	r2, #12
87803fb6:	815a      	strh	r2, [r3, #10]
87803fb8:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803fbc:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fc0:	2214      	movs	r2, #20
87803fc2:	819a      	strh	r2, [r3, #12]
87803fc4:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803fc8:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fcc:	228c      	movs	r2, #140	; 0x8c
87803fce:	81da      	strh	r2, [r3, #14]
87803fd0:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803fd4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803fd8:	22a0      	movs	r2, #160	; 0xa0
87803fda:	821a      	strh	r2, [r3, #16]
87803fdc:	2205      	movs	r2, #5
87803fde:	2103      	movs	r1, #3
87803fe0:	2020      	movs	r0, #32
87803fe2:	f000 fe45 	bl	87804c70 <lcdclk_init>
87803fe6:	e077      	b.n	878040d8 <lcd_init+0x318>
87803fe8:	88fb      	ldrh	r3, [r7, #6]
87803fea:	f241 0218 	movw	r2, #4120	; 0x1018
87803fee:	4293      	cmp	r3, r2
87803ff0:	d137      	bne.n	87804062 <lcd_init+0x2a2>
87803ff2:	f64c 031c 	movw	r3, #51228	; 0xc81c
87803ff6:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803ffa:	f44f 7248 	mov.w	r2, #800	; 0x320
87803ffe:	801a      	strh	r2, [r3, #0]
87804000:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804004:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804008:	f44f 62a0 	mov.w	r2, #1280	; 0x500
8780400c:	805a      	strh	r2, [r3, #2]
8780400e:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804012:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804016:	2203      	movs	r2, #3
87804018:	80da      	strh	r2, [r3, #6]
8780401a:	f64c 031c 	movw	r3, #51228	; 0xc81c
8780401e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804022:	220a      	movs	r2, #10
87804024:	811a      	strh	r2, [r3, #8]
87804026:	f64c 031c 	movw	r3, #51228	; 0xc81c
8780402a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780402e:	220a      	movs	r2, #10
87804030:	815a      	strh	r2, [r3, #10]
87804032:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804036:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780403a:	220a      	movs	r2, #10
8780403c:	819a      	strh	r2, [r3, #12]
8780403e:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804042:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804046:	2250      	movs	r2, #80	; 0x50
87804048:	81da      	strh	r2, [r3, #14]
8780404a:	f64c 031c 	movw	r3, #51228	; 0xc81c
8780404e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804052:	2246      	movs	r2, #70	; 0x46
87804054:	821a      	strh	r2, [r3, #16]
87804056:	2205      	movs	r2, #5
87804058:	2103      	movs	r1, #3
8780405a:	2023      	movs	r0, #35	; 0x23
8780405c:	f000 fe08 	bl	87804c70 <lcdclk_init>
87804060:	e03a      	b.n	878040d8 <lcd_init+0x318>
87804062:	88fb      	ldrh	r3, [r7, #6]
87804064:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
87804068:	d136      	bne.n	878040d8 <lcd_init+0x318>
8780406a:	f64c 031c 	movw	r3, #51228	; 0xc81c
8780406e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804072:	f44f 7240 	mov.w	r2, #768	; 0x300
87804076:	801a      	strh	r2, [r3, #0]
87804078:	f64c 031c 	movw	r3, #51228	; 0xc81c
8780407c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804080:	f240 5256 	movw	r2, #1366	; 0x556
87804084:	805a      	strh	r2, [r3, #2]
87804086:	f64c 031c 	movw	r3, #51228	; 0xc81c
8780408a:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780408e:	2203      	movs	r2, #3
87804090:	80da      	strh	r2, [r3, #6]
87804092:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804096:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780409a:	2218      	movs	r2, #24
8780409c:	811a      	strh	r2, [r3, #8]
8780409e:	f64c 031c 	movw	r3, #51228	; 0xc81c
878040a2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878040a6:	2203      	movs	r2, #3
878040a8:	815a      	strh	r2, [r3, #10]
878040aa:	f64c 031c 	movw	r3, #51228	; 0xc81c
878040ae:	f2c8 7380 	movt	r3, #34688	; 0x8780
878040b2:	228f      	movs	r2, #143	; 0x8f
878040b4:	819a      	strh	r2, [r3, #12]
878040b6:	f64c 031c 	movw	r3, #51228	; 0xc81c
878040ba:	f2c8 7380 	movt	r3, #34688	; 0x8780
878040be:	22d5      	movs	r2, #213	; 0xd5
878040c0:	81da      	strh	r2, [r3, #14]
878040c2:	f64c 031c 	movw	r3, #51228	; 0xc81c
878040c6:	f2c8 7380 	movt	r3, #34688	; 0x8780
878040ca:	2246      	movs	r2, #70	; 0x46
878040cc:	821a      	strh	r2, [r3, #16]
878040ce:	2203      	movs	r2, #3
878040d0:	2103      	movs	r1, #3
878040d2:	2020      	movs	r0, #32
878040d4:	f000 fdcc 	bl	87804c70 <lcdclk_init>
878040d8:	f64c 031c 	movw	r3, #51228	; 0xc81c
878040dc:	f2c8 7380 	movt	r3, #34688	; 0x8780
878040e0:	2204      	movs	r2, #4
878040e2:	711a      	strb	r2, [r3, #4]
878040e4:	f64c 031c 	movw	r3, #51228	; 0xc81c
878040e8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878040ec:	f04f 4209 	mov.w	r2, #2298478592	; 0x89000000
878040f0:	615a      	str	r2, [r3, #20]
878040f2:	f64c 031c 	movw	r3, #51228	; 0xc81c
878040f6:	f2c8 7380 	movt	r3, #34688	; 0x8780
878040fa:	f06f 427f 	mvn.w	r2, #4278190080	; 0xff000000
878040fe:	61da      	str	r2, [r3, #28]
87804100:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804104:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804108:	2200      	movs	r2, #0
8780410a:	619a      	str	r2, [r3, #24]
8780410c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87804110:	f2c0 221c 	movt	r2, #540	; 0x21c
87804114:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804118:	f2c0 231c 	movt	r3, #540	; 0x21c
8780411c:	681b      	ldr	r3, [r3, #0]
8780411e:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
87804122:	f443 6372 	orr.w	r3, r3, #3872	; 0xf20
87804126:	6013      	str	r3, [r2, #0]
87804128:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780412c:	f2c0 231c 	movt	r3, #540	; 0x21c
87804130:	f44f 22e0 	mov.w	r2, #458752	; 0x70000
87804134:	611a      	str	r2, [r3, #16]
87804136:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780413a:	f2c0 231c 	movt	r3, #540	; 0x21c
8780413e:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804142:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804146:	8812      	ldrh	r2, [r2, #0]
87804148:	0411      	lsls	r1, r2, #16
8780414a:	f64c 021c 	movw	r2, #51228	; 0xc81c
8780414e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804152:	8852      	ldrh	r2, [r2, #2]
87804154:	430a      	orrs	r2, r1
87804156:	631a      	str	r2, [r3, #48]	; 0x30
87804158:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780415c:	f2c0 231c 	movt	r3, #540	; 0x21c
87804160:	2200      	movs	r2, #0
87804162:	671a      	str	r2, [r3, #112]	; 0x70
87804164:	88fb      	ldrh	r3, [r7, #6]
87804166:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
8780416a:	d10e      	bne.n	8780418a <lcd_init+0x3ca>
8780416c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804170:	f2c0 231c 	movt	r3, #540	; 0x21c
87804174:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804178:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780417c:	88d2      	ldrh	r2, [r2, #6]
8780417e:	f042 5291 	orr.w	r2, r2, #304087040	; 0x12200000
87804182:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
87804186:	671a      	str	r2, [r3, #112]	; 0x70
87804188:	e00d      	b.n	878041a6 <lcd_init+0x3e6>
8780418a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780418e:	f2c0 231c 	movt	r3, #540	; 0x21c
87804192:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804196:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780419a:	88d2      	ldrh	r2, [r2, #6]
8780419c:	f042 5289 	orr.w	r2, r2, #287309824	; 0x11200000
878041a0:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
878041a4:	671a      	str	r2, [r3, #112]	; 0x70
878041a6:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878041aa:	f2c0 231c 	movt	r3, #540	; 0x21c
878041ae:	f64c 021c 	movw	r2, #51228	; 0xc81c
878041b2:	f2c8 7280 	movt	r2, #34688	; 0x8780
878041b6:	8812      	ldrh	r2, [r2, #0]
878041b8:	4611      	mov	r1, r2
878041ba:	f64c 021c 	movw	r2, #51228	; 0xc81c
878041be:	f2c8 7280 	movt	r2, #34688	; 0x8780
878041c2:	88d2      	ldrh	r2, [r2, #6]
878041c4:	4411      	add	r1, r2
878041c6:	f64c 021c 	movw	r2, #51228	; 0xc81c
878041ca:	f2c8 7280 	movt	r2, #34688	; 0x8780
878041ce:	8952      	ldrh	r2, [r2, #10]
878041d0:	4411      	add	r1, r2
878041d2:	f64c 021c 	movw	r2, #51228	; 0xc81c
878041d6:	f2c8 7280 	movt	r2, #34688	; 0x8780
878041da:	8912      	ldrh	r2, [r2, #8]
878041dc:	440a      	add	r2, r1
878041de:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
878041e2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
878041e6:	f2c0 231c 	movt	r3, #540	; 0x21c
878041ea:	f64c 021c 	movw	r2, #51228	; 0xc81c
878041ee:	f2c8 7280 	movt	r2, #34688	; 0x8780
878041f2:	8992      	ldrh	r2, [r2, #12]
878041f4:	0491      	lsls	r1, r2, #18
878041f6:	f64c 021c 	movw	r2, #51228	; 0xc81c
878041fa:	f2c8 7280 	movt	r2, #34688	; 0x8780
878041fe:	8852      	ldrh	r2, [r2, #2]
87804200:	4610      	mov	r0, r2
87804202:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804206:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780420a:	8992      	ldrh	r2, [r2, #12]
8780420c:	4410      	add	r0, r2
8780420e:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804212:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804216:	8a12      	ldrh	r2, [r2, #16]
87804218:	4410      	add	r0, r2
8780421a:	f64c 021c 	movw	r2, #51228	; 0xc81c
8780421e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804222:	89d2      	ldrh	r2, [r2, #14]
87804224:	4402      	add	r2, r0
87804226:	430a      	orrs	r2, r1
87804228:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
8780422c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804230:	f2c0 231c 	movt	r3, #540	; 0x21c
87804234:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804238:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780423c:	89d2      	ldrh	r2, [r2, #14]
8780423e:	4611      	mov	r1, r2
87804240:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804244:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804248:	8992      	ldrh	r2, [r2, #12]
8780424a:	440a      	add	r2, r1
8780424c:	0411      	lsls	r1, r2, #16
8780424e:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804252:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804256:	8912      	ldrh	r2, [r2, #8]
87804258:	4610      	mov	r0, r2
8780425a:	f64c 021c 	movw	r2, #51228	; 0xc81c
8780425e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804262:	88d2      	ldrh	r2, [r2, #6]
87804264:	4402      	add	r2, r0
87804266:	430a      	orrs	r2, r1
87804268:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
8780426c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804270:	f2c0 231c 	movt	r3, #540	; 0x21c
87804274:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804278:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780427c:	8852      	ldrh	r2, [r2, #2]
8780427e:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
87804282:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
87804286:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780428a:	f2c0 231c 	movt	r3, #540	; 0x21c
8780428e:	f64c 021c 	movw	r2, #51228	; 0xc81c
87804292:	f2c8 7280 	movt	r2, #34688	; 0x8780
87804296:	6952      	ldr	r2, [r2, #20]
87804298:	641a      	str	r2, [r3, #64]	; 0x40
8780429a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
8780429e:	f2c0 231c 	movt	r3, #540	; 0x21c
878042a2:	f64c 021c 	movw	r2, #51228	; 0xc81c
878042a6:	f2c8 7280 	movt	r2, #34688	; 0x8780
878042aa:	6952      	ldr	r2, [r2, #20]
878042ac:	651a      	str	r2, [r3, #80]	; 0x50
878042ae:	f000 fd95 	bl	87804ddc <lcd_enable>
878042b2:	200a      	movs	r0, #10
878042b4:	f7fc fa30 	bl	87800718 <delayms>
878042b8:	f06f 407f 	mvn.w	r0, #4278190080	; 0xff000000
878042bc:	f000 fdf2 	bl	87804ea4 <lcd_clear>
878042c0:	3708      	adds	r7, #8
878042c2:	46bd      	mov	sp, r7
878042c4:	bd80      	pop	{r7, pc}
878042c6:	bf00      	nop

878042c8 <lcd_read_panelid>:
878042c8:	b580      	push	{r7, lr}
878042ca:	b086      	sub	sp, #24
878042cc:	af02      	add	r7, sp, #8
878042ce:	2300      	movs	r3, #0
878042d0:	73fb      	strb	r3, [r7, #15]
878042d2:	2300      	movs	r3, #0
878042d4:	9301      	str	r3, [sp, #4]
878042d6:	f44f 7367 	mov.w	r3, #924	; 0x39c
878042da:	f2c0 230e 	movt	r3, #526	; 0x20e
878042de:	9300      	str	r3, [sp, #0]
878042e0:	2300      	movs	r3, #0
878042e2:	2200      	movs	r2, #0
878042e4:	2105      	movs	r1, #5
878042e6:	f44f 7088 	mov.w	r0, #272	; 0x110
878042ea:	f2c0 200e 	movt	r0, #526	; 0x20e
878042ee:	f7ff fd37 	bl	87803d60 <IOMUXC_SetPinMux>
878042f2:	f241 03b0 	movw	r3, #4272	; 0x10b0
878042f6:	9301      	str	r3, [sp, #4]
878042f8:	f44f 7367 	mov.w	r3, #924	; 0x39c
878042fc:	f2c0 230e 	movt	r3, #526	; 0x20e
87804300:	9300      	str	r3, [sp, #0]
87804302:	2300      	movs	r3, #0
87804304:	2200      	movs	r2, #0
87804306:	2105      	movs	r1, #5
87804308:	f44f 7088 	mov.w	r0, #272	; 0x110
8780430c:	f2c0 200e 	movt	r0, #526	; 0x20e
87804310:	f7ff fd44 	bl	87803d9c <IOMUXC_SetPinConfig>
87804314:	2301      	movs	r3, #1
87804316:	603b      	str	r3, [r7, #0]
87804318:	2301      	movs	r3, #1
8780431a:	713b      	strb	r3, [r7, #4]
8780431c:	463b      	mov	r3, r7
8780431e:	461a      	mov	r2, r3
87804320:	2103      	movs	r1, #3
87804322:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804326:	f2c0 200a 	movt	r0, #522	; 0x20a
8780432a:	f7fc fb65 	bl	878009f8 <gpio_init>
8780432e:	2300      	movs	r3, #0
87804330:	9301      	str	r3, [sp, #4]
87804332:	f44f 7370 	mov.w	r3, #960	; 0x3c0
87804336:	f2c0 230e 	movt	r3, #526	; 0x20e
8780433a:	9300      	str	r3, [sp, #0]
8780433c:	2300      	movs	r3, #0
8780433e:	2200      	movs	r2, #0
87804340:	2105      	movs	r1, #5
87804342:	f44f 709a 	mov.w	r0, #308	; 0x134
87804346:	f2c0 200e 	movt	r0, #526	; 0x20e
8780434a:	f7ff fd09 	bl	87803d60 <IOMUXC_SetPinMux>
8780434e:	2300      	movs	r3, #0
87804350:	9301      	str	r3, [sp, #4]
87804352:	f44f 7378 	mov.w	r3, #992	; 0x3e0
87804356:	f2c0 230e 	movt	r3, #526	; 0x20e
8780435a:	9300      	str	r3, [sp, #0]
8780435c:	2300      	movs	r3, #0
8780435e:	2200      	movs	r2, #0
87804360:	2105      	movs	r1, #5
87804362:	f44f 70aa 	mov.w	r0, #340	; 0x154
87804366:	f2c0 200e 	movt	r0, #526	; 0x20e
8780436a:	f7ff fcf9 	bl	87803d60 <IOMUXC_SetPinMux>
8780436e:	2300      	movs	r3, #0
87804370:	9301      	str	r3, [sp, #4]
87804372:	f44f 6380 	mov.w	r3, #1024	; 0x400
87804376:	f2c0 230e 	movt	r3, #526	; 0x20e
8780437a:	9300      	str	r3, [sp, #0]
8780437c:	2300      	movs	r3, #0
8780437e:	2200      	movs	r2, #0
87804380:	2105      	movs	r1, #5
87804382:	f44f 70ba 	mov.w	r0, #372	; 0x174
87804386:	f2c0 200e 	movt	r0, #526	; 0x20e
8780438a:	f7ff fce9 	bl	87803d60 <IOMUXC_SetPinMux>
8780438e:	f24f 0380 	movw	r3, #61568	; 0xf080
87804392:	9301      	str	r3, [sp, #4]
87804394:	f44f 7370 	mov.w	r3, #960	; 0x3c0
87804398:	f2c0 230e 	movt	r3, #526	; 0x20e
8780439c:	9300      	str	r3, [sp, #0]
8780439e:	2300      	movs	r3, #0
878043a0:	2200      	movs	r2, #0
878043a2:	2105      	movs	r1, #5
878043a4:	f44f 709a 	mov.w	r0, #308	; 0x134
878043a8:	f2c0 200e 	movt	r0, #526	; 0x20e
878043ac:	f7ff fcf6 	bl	87803d9c <IOMUXC_SetPinConfig>
878043b0:	f24f 0380 	movw	r3, #61568	; 0xf080
878043b4:	9301      	str	r3, [sp, #4]
878043b6:	f44f 7378 	mov.w	r3, #992	; 0x3e0
878043ba:	f2c0 230e 	movt	r3, #526	; 0x20e
878043be:	9300      	str	r3, [sp, #0]
878043c0:	2300      	movs	r3, #0
878043c2:	2200      	movs	r2, #0
878043c4:	2105      	movs	r1, #5
878043c6:	f44f 70aa 	mov.w	r0, #340	; 0x154
878043ca:	f2c0 200e 	movt	r0, #526	; 0x20e
878043ce:	f7ff fce5 	bl	87803d9c <IOMUXC_SetPinConfig>
878043d2:	f24f 0380 	movw	r3, #61568	; 0xf080
878043d6:	9301      	str	r3, [sp, #4]
878043d8:	f44f 6380 	mov.w	r3, #1024	; 0x400
878043dc:	f2c0 230e 	movt	r3, #526	; 0x20e
878043e0:	9300      	str	r3, [sp, #0]
878043e2:	2300      	movs	r3, #0
878043e4:	2200      	movs	r2, #0
878043e6:	2105      	movs	r1, #5
878043e8:	f44f 70ba 	mov.w	r0, #372	; 0x174
878043ec:	f2c0 200e 	movt	r0, #526	; 0x20e
878043f0:	f7ff fcd4 	bl	87803d9c <IOMUXC_SetPinConfig>
878043f4:	2300      	movs	r3, #0
878043f6:	603b      	str	r3, [r7, #0]
878043f8:	463b      	mov	r3, r7
878043fa:	461a      	mov	r2, r3
878043fc:	210c      	movs	r1, #12
878043fe:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804402:	f2c0 200a 	movt	r0, #522	; 0x20a
87804406:	f7fc faf7 	bl	878009f8 <gpio_init>
8780440a:	463b      	mov	r3, r7
8780440c:	461a      	mov	r2, r3
8780440e:	2114      	movs	r1, #20
87804410:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804414:	f2c0 200a 	movt	r0, #522	; 0x20a
87804418:	f7fc faee 	bl	878009f8 <gpio_init>
8780441c:	463b      	mov	r3, r7
8780441e:	461a      	mov	r2, r3
87804420:	211c      	movs	r1, #28
87804422:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804426:	f2c0 200a 	movt	r0, #522	; 0x20a
8780442a:	f7fc fae5 	bl	878009f8 <gpio_init>
8780442e:	211c      	movs	r1, #28
87804430:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804434:	f2c0 200a 	movt	r0, #522	; 0x20a
87804438:	f7fc fb18 	bl	87800a6c <gpio_pinread>
8780443c:	4603      	mov	r3, r0
8780443e:	73fb      	strb	r3, [r7, #15]
87804440:	2114      	movs	r1, #20
87804442:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804446:	f2c0 200a 	movt	r0, #522	; 0x20a
8780444a:	f7fc fb0f 	bl	87800a6c <gpio_pinread>
8780444e:	4603      	mov	r3, r0
87804450:	b2db      	uxtb	r3, r3
87804452:	005b      	lsls	r3, r3, #1
87804454:	b2da      	uxtb	r2, r3
87804456:	7bfb      	ldrb	r3, [r7, #15]
87804458:	4313      	orrs	r3, r2
8780445a:	b2db      	uxtb	r3, r3
8780445c:	73fb      	strb	r3, [r7, #15]
8780445e:	210c      	movs	r1, #12
87804460:	f44f 4080 	mov.w	r0, #16384	; 0x4000
87804464:	f2c0 200a 	movt	r0, #522	; 0x20a
87804468:	f7fc fb00 	bl	87800a6c <gpio_pinread>
8780446c:	4603      	mov	r3, r0
8780446e:	b2db      	uxtb	r3, r3
87804470:	009b      	lsls	r3, r3, #2
87804472:	b2da      	uxtb	r2, r3
87804474:	7bfb      	ldrb	r3, [r7, #15]
87804476:	4313      	orrs	r3, r2
87804478:	b2db      	uxtb	r3, r3
8780447a:	73fb      	strb	r3, [r7, #15]
8780447c:	7bfb      	ldrb	r3, [r7, #15]
8780447e:	2b00      	cmp	r3, #0
87804480:	d102      	bne.n	87804488 <lcd_read_panelid+0x1c0>
87804482:	f244 3342 	movw	r3, #17218	; 0x4342
87804486:	e01e      	b.n	878044c6 <lcd_read_panelid+0x1fe>
87804488:	7bfb      	ldrb	r3, [r7, #15]
8780448a:	2b01      	cmp	r3, #1
8780448c:	d102      	bne.n	87804494 <lcd_read_panelid+0x1cc>
8780448e:	f247 0384 	movw	r3, #28804	; 0x7084
87804492:	e018      	b.n	878044c6 <lcd_read_panelid+0x1fe>
87804494:	7bfb      	ldrb	r3, [r7, #15]
87804496:	2b02      	cmp	r3, #2
87804498:	d102      	bne.n	878044a0 <lcd_read_panelid+0x1d8>
8780449a:	f247 0316 	movw	r3, #28694	; 0x7016
8780449e:	e012      	b.n	878044c6 <lcd_read_panelid+0x1fe>
878044a0:	7bfb      	ldrb	r3, [r7, #15]
878044a2:	2b04      	cmp	r3, #4
878044a4:	d102      	bne.n	878044ac <lcd_read_panelid+0x1e4>
878044a6:	f244 3384 	movw	r3, #17284	; 0x4384
878044aa:	e00c      	b.n	878044c6 <lcd_read_panelid+0x1fe>
878044ac:	7bfb      	ldrb	r3, [r7, #15]
878044ae:	2b05      	cmp	r3, #5
878044b0:	d102      	bne.n	878044b8 <lcd_read_panelid+0x1f0>
878044b2:	f241 0318 	movw	r3, #4120	; 0x1018
878044b6:	e006      	b.n	878044c6 <lcd_read_panelid+0x1fe>
878044b8:	7bfb      	ldrb	r3, [r7, #15]
878044ba:	2b07      	cmp	r3, #7
878044bc:	d102      	bne.n	878044c4 <lcd_read_panelid+0x1fc>
878044be:	f44f 437f 	mov.w	r3, #65280	; 0xff00
878044c2:	e000      	b.n	878044c6 <lcd_read_panelid+0x1fe>
878044c4:	2300      	movs	r3, #0
878044c6:	4618      	mov	r0, r3
878044c8:	3710      	adds	r7, #16
878044ca:	46bd      	mov	sp, r7
878044cc:	bd80      	pop	{r7, pc}
878044ce:	bf00      	nop

878044d0 <lcdgpio_init>:
878044d0:	b580      	push	{r7, lr}
878044d2:	b086      	sub	sp, #24
878044d4:	af02      	add	r7, sp, #8
878044d6:	2300      	movs	r3, #0
878044d8:	9301      	str	r3, [sp, #4]
878044da:	f44f 7369 	mov.w	r3, #932	; 0x3a4
878044de:	f2c0 230e 	movt	r3, #526	; 0x20e
878044e2:	9300      	str	r3, [sp, #0]
878044e4:	2300      	movs	r3, #0
878044e6:	2200      	movs	r2, #0
878044e8:	2100      	movs	r1, #0
878044ea:	f44f 708c 	mov.w	r0, #280	; 0x118
878044ee:	f2c0 200e 	movt	r0, #526	; 0x20e
878044f2:	f7ff fc35 	bl	87803d60 <IOMUXC_SetPinMux>
878044f6:	2300      	movs	r3, #0
878044f8:	9301      	str	r3, [sp, #4]
878044fa:	f44f 736a 	mov.w	r3, #936	; 0x3a8
878044fe:	f2c0 230e 	movt	r3, #526	; 0x20e
87804502:	9300      	str	r3, [sp, #0]
87804504:	2300      	movs	r3, #0
87804506:	2200      	movs	r2, #0
87804508:	2100      	movs	r1, #0
8780450a:	f44f 708e 	mov.w	r0, #284	; 0x11c
8780450e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804512:	f7ff fc25 	bl	87803d60 <IOMUXC_SetPinMux>
87804516:	2300      	movs	r3, #0
87804518:	9301      	str	r3, [sp, #4]
8780451a:	f44f 736b 	mov.w	r3, #940	; 0x3ac
8780451e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804522:	9300      	str	r3, [sp, #0]
87804524:	2300      	movs	r3, #0
87804526:	2200      	movs	r2, #0
87804528:	2100      	movs	r1, #0
8780452a:	f44f 7090 	mov.w	r0, #288	; 0x120
8780452e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804532:	f7ff fc15 	bl	87803d60 <IOMUXC_SetPinMux>
87804536:	2300      	movs	r3, #0
87804538:	9301      	str	r3, [sp, #4]
8780453a:	f44f 736c 	mov.w	r3, #944	; 0x3b0
8780453e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804542:	9300      	str	r3, [sp, #0]
87804544:	2300      	movs	r3, #0
87804546:	2200      	movs	r2, #0
87804548:	2100      	movs	r1, #0
8780454a:	f44f 7092 	mov.w	r0, #292	; 0x124
8780454e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804552:	f7ff fc05 	bl	87803d60 <IOMUXC_SetPinMux>
87804556:	2300      	movs	r3, #0
87804558:	9301      	str	r3, [sp, #4]
8780455a:	f44f 736d 	mov.w	r3, #948	; 0x3b4
8780455e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804562:	9300      	str	r3, [sp, #0]
87804564:	2300      	movs	r3, #0
87804566:	2200      	movs	r2, #0
87804568:	2100      	movs	r1, #0
8780456a:	f44f 7094 	mov.w	r0, #296	; 0x128
8780456e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804572:	f7ff fbf5 	bl	87803d60 <IOMUXC_SetPinMux>
87804576:	2300      	movs	r3, #0
87804578:	9301      	str	r3, [sp, #4]
8780457a:	f44f 736e 	mov.w	r3, #952	; 0x3b8
8780457e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804582:	9300      	str	r3, [sp, #0]
87804584:	2300      	movs	r3, #0
87804586:	2200      	movs	r2, #0
87804588:	2100      	movs	r1, #0
8780458a:	f44f 7096 	mov.w	r0, #300	; 0x12c
8780458e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804592:	f7ff fbe5 	bl	87803d60 <IOMUXC_SetPinMux>
87804596:	2300      	movs	r3, #0
87804598:	9301      	str	r3, [sp, #4]
8780459a:	f44f 736f 	mov.w	r3, #956	; 0x3bc
8780459e:	f2c0 230e 	movt	r3, #526	; 0x20e
878045a2:	9300      	str	r3, [sp, #0]
878045a4:	2300      	movs	r3, #0
878045a6:	2200      	movs	r2, #0
878045a8:	2100      	movs	r1, #0
878045aa:	f44f 7098 	mov.w	r0, #304	; 0x130
878045ae:	f2c0 200e 	movt	r0, #526	; 0x20e
878045b2:	f7ff fbd5 	bl	87803d60 <IOMUXC_SetPinMux>
878045b6:	2300      	movs	r3, #0
878045b8:	9301      	str	r3, [sp, #4]
878045ba:	f44f 7370 	mov.w	r3, #960	; 0x3c0
878045be:	f2c0 230e 	movt	r3, #526	; 0x20e
878045c2:	9300      	str	r3, [sp, #0]
878045c4:	2300      	movs	r3, #0
878045c6:	2200      	movs	r2, #0
878045c8:	2100      	movs	r1, #0
878045ca:	f44f 709a 	mov.w	r0, #308	; 0x134
878045ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878045d2:	f7ff fbc5 	bl	87803d60 <IOMUXC_SetPinMux>
878045d6:	2300      	movs	r3, #0
878045d8:	9301      	str	r3, [sp, #4]
878045da:	f44f 7371 	mov.w	r3, #964	; 0x3c4
878045de:	f2c0 230e 	movt	r3, #526	; 0x20e
878045e2:	9300      	str	r3, [sp, #0]
878045e4:	2300      	movs	r3, #0
878045e6:	2200      	movs	r2, #0
878045e8:	2100      	movs	r1, #0
878045ea:	f44f 709c 	mov.w	r0, #312	; 0x138
878045ee:	f2c0 200e 	movt	r0, #526	; 0x20e
878045f2:	f7ff fbb5 	bl	87803d60 <IOMUXC_SetPinMux>
878045f6:	2300      	movs	r3, #0
878045f8:	9301      	str	r3, [sp, #4]
878045fa:	f44f 7372 	mov.w	r3, #968	; 0x3c8
878045fe:	f2c0 230e 	movt	r3, #526	; 0x20e
87804602:	9300      	str	r3, [sp, #0]
87804604:	2300      	movs	r3, #0
87804606:	2200      	movs	r2, #0
87804608:	2100      	movs	r1, #0
8780460a:	f44f 709e 	mov.w	r0, #316	; 0x13c
8780460e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804612:	f7ff fba5 	bl	87803d60 <IOMUXC_SetPinMux>
87804616:	2300      	movs	r3, #0
87804618:	9301      	str	r3, [sp, #4]
8780461a:	f44f 7373 	mov.w	r3, #972	; 0x3cc
8780461e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804622:	9300      	str	r3, [sp, #0]
87804624:	2300      	movs	r3, #0
87804626:	2200      	movs	r2, #0
87804628:	2100      	movs	r1, #0
8780462a:	f44f 70a0 	mov.w	r0, #320	; 0x140
8780462e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804632:	f7ff fb95 	bl	87803d60 <IOMUXC_SetPinMux>
87804636:	2300      	movs	r3, #0
87804638:	9301      	str	r3, [sp, #4]
8780463a:	f44f 7374 	mov.w	r3, #976	; 0x3d0
8780463e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804642:	9300      	str	r3, [sp, #0]
87804644:	2300      	movs	r3, #0
87804646:	2200      	movs	r2, #0
87804648:	2100      	movs	r1, #0
8780464a:	f44f 70a2 	mov.w	r0, #324	; 0x144
8780464e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804652:	f7ff fb85 	bl	87803d60 <IOMUXC_SetPinMux>
87804656:	2300      	movs	r3, #0
87804658:	9301      	str	r3, [sp, #4]
8780465a:	f44f 7375 	mov.w	r3, #980	; 0x3d4
8780465e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804662:	9300      	str	r3, [sp, #0]
87804664:	2300      	movs	r3, #0
87804666:	2200      	movs	r2, #0
87804668:	2100      	movs	r1, #0
8780466a:	f44f 70a4 	mov.w	r0, #328	; 0x148
8780466e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804672:	f7ff fb75 	bl	87803d60 <IOMUXC_SetPinMux>
87804676:	2300      	movs	r3, #0
87804678:	9301      	str	r3, [sp, #4]
8780467a:	f44f 7376 	mov.w	r3, #984	; 0x3d8
8780467e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804682:	9300      	str	r3, [sp, #0]
87804684:	2300      	movs	r3, #0
87804686:	2200      	movs	r2, #0
87804688:	2100      	movs	r1, #0
8780468a:	f44f 70a6 	mov.w	r0, #332	; 0x14c
8780468e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804692:	f7ff fb65 	bl	87803d60 <IOMUXC_SetPinMux>
87804696:	2300      	movs	r3, #0
87804698:	9301      	str	r3, [sp, #4]
8780469a:	f44f 7377 	mov.w	r3, #988	; 0x3dc
8780469e:	f2c0 230e 	movt	r3, #526	; 0x20e
878046a2:	9300      	str	r3, [sp, #0]
878046a4:	2300      	movs	r3, #0
878046a6:	2200      	movs	r2, #0
878046a8:	2100      	movs	r1, #0
878046aa:	f44f 70a8 	mov.w	r0, #336	; 0x150
878046ae:	f2c0 200e 	movt	r0, #526	; 0x20e
878046b2:	f7ff fb55 	bl	87803d60 <IOMUXC_SetPinMux>
878046b6:	2300      	movs	r3, #0
878046b8:	9301      	str	r3, [sp, #4]
878046ba:	f44f 7378 	mov.w	r3, #992	; 0x3e0
878046be:	f2c0 230e 	movt	r3, #526	; 0x20e
878046c2:	9300      	str	r3, [sp, #0]
878046c4:	2300      	movs	r3, #0
878046c6:	2200      	movs	r2, #0
878046c8:	2100      	movs	r1, #0
878046ca:	f44f 70aa 	mov.w	r0, #340	; 0x154
878046ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878046d2:	f7ff fb45 	bl	87803d60 <IOMUXC_SetPinMux>
878046d6:	2300      	movs	r3, #0
878046d8:	9301      	str	r3, [sp, #4]
878046da:	f44f 7379 	mov.w	r3, #996	; 0x3e4
878046de:	f2c0 230e 	movt	r3, #526	; 0x20e
878046e2:	9300      	str	r3, [sp, #0]
878046e4:	2300      	movs	r3, #0
878046e6:	2200      	movs	r2, #0
878046e8:	2100      	movs	r1, #0
878046ea:	f44f 70ac 	mov.w	r0, #344	; 0x158
878046ee:	f2c0 200e 	movt	r0, #526	; 0x20e
878046f2:	f7ff fb35 	bl	87803d60 <IOMUXC_SetPinMux>
878046f6:	2300      	movs	r3, #0
878046f8:	9301      	str	r3, [sp, #4]
878046fa:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
878046fe:	f2c0 230e 	movt	r3, #526	; 0x20e
87804702:	9300      	str	r3, [sp, #0]
87804704:	2300      	movs	r3, #0
87804706:	2200      	movs	r2, #0
87804708:	2100      	movs	r1, #0
8780470a:	f44f 70ae 	mov.w	r0, #348	; 0x15c
8780470e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804712:	f7ff fb25 	bl	87803d60 <IOMUXC_SetPinMux>
87804716:	2300      	movs	r3, #0
87804718:	9301      	str	r3, [sp, #4]
8780471a:	f44f 737b 	mov.w	r3, #1004	; 0x3ec
8780471e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804722:	9300      	str	r3, [sp, #0]
87804724:	2300      	movs	r3, #0
87804726:	2200      	movs	r2, #0
87804728:	2100      	movs	r1, #0
8780472a:	f44f 70b0 	mov.w	r0, #352	; 0x160
8780472e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804732:	f7ff fb15 	bl	87803d60 <IOMUXC_SetPinMux>
87804736:	2300      	movs	r3, #0
87804738:	9301      	str	r3, [sp, #4]
8780473a:	f44f 737c 	mov.w	r3, #1008	; 0x3f0
8780473e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804742:	9300      	str	r3, [sp, #0]
87804744:	2300      	movs	r3, #0
87804746:	2200      	movs	r2, #0
87804748:	2100      	movs	r1, #0
8780474a:	f44f 70b2 	mov.w	r0, #356	; 0x164
8780474e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804752:	f7ff fb05 	bl	87803d60 <IOMUXC_SetPinMux>
87804756:	2300      	movs	r3, #0
87804758:	9301      	str	r3, [sp, #4]
8780475a:	f44f 737d 	mov.w	r3, #1012	; 0x3f4
8780475e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804762:	9300      	str	r3, [sp, #0]
87804764:	2300      	movs	r3, #0
87804766:	2200      	movs	r2, #0
87804768:	2100      	movs	r1, #0
8780476a:	f44f 70b4 	mov.w	r0, #360	; 0x168
8780476e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804772:	f7ff faf5 	bl	87803d60 <IOMUXC_SetPinMux>
87804776:	2300      	movs	r3, #0
87804778:	9301      	str	r3, [sp, #4]
8780477a:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
8780477e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804782:	9300      	str	r3, [sp, #0]
87804784:	2300      	movs	r3, #0
87804786:	2200      	movs	r2, #0
87804788:	2100      	movs	r1, #0
8780478a:	f44f 70b6 	mov.w	r0, #364	; 0x16c
8780478e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804792:	f7ff fae5 	bl	87803d60 <IOMUXC_SetPinMux>
87804796:	2300      	movs	r3, #0
87804798:	9301      	str	r3, [sp, #4]
8780479a:	f44f 737f 	mov.w	r3, #1020	; 0x3fc
8780479e:	f2c0 230e 	movt	r3, #526	; 0x20e
878047a2:	9300      	str	r3, [sp, #0]
878047a4:	2300      	movs	r3, #0
878047a6:	2200      	movs	r2, #0
878047a8:	2100      	movs	r1, #0
878047aa:	f44f 70b8 	mov.w	r0, #368	; 0x170
878047ae:	f2c0 200e 	movt	r0, #526	; 0x20e
878047b2:	f7ff fad5 	bl	87803d60 <IOMUXC_SetPinMux>
878047b6:	2300      	movs	r3, #0
878047b8:	9301      	str	r3, [sp, #4]
878047ba:	f44f 6380 	mov.w	r3, #1024	; 0x400
878047be:	f2c0 230e 	movt	r3, #526	; 0x20e
878047c2:	9300      	str	r3, [sp, #0]
878047c4:	2300      	movs	r3, #0
878047c6:	2200      	movs	r2, #0
878047c8:	2100      	movs	r1, #0
878047ca:	f44f 70ba 	mov.w	r0, #372	; 0x174
878047ce:	f2c0 200e 	movt	r0, #526	; 0x20e
878047d2:	f7ff fac5 	bl	87803d60 <IOMUXC_SetPinMux>
878047d6:	2300      	movs	r3, #0
878047d8:	9301      	str	r3, [sp, #4]
878047da:	f44f 7364 	mov.w	r3, #912	; 0x390
878047de:	f2c0 230e 	movt	r3, #526	; 0x20e
878047e2:	9300      	str	r3, [sp, #0]
878047e4:	2300      	movs	r3, #0
878047e6:	2200      	movs	r2, #0
878047e8:	2100      	movs	r1, #0
878047ea:	f44f 7082 	mov.w	r0, #260	; 0x104
878047ee:	f2c0 200e 	movt	r0, #526	; 0x20e
878047f2:	f7ff fab5 	bl	87803d60 <IOMUXC_SetPinMux>
878047f6:	2300      	movs	r3, #0
878047f8:	9301      	str	r3, [sp, #4]
878047fa:	f44f 7365 	mov.w	r3, #916	; 0x394
878047fe:	f2c0 230e 	movt	r3, #526	; 0x20e
87804802:	9300      	str	r3, [sp, #0]
87804804:	2300      	movs	r3, #0
87804806:	2200      	movs	r2, #0
87804808:	2100      	movs	r1, #0
8780480a:	f44f 7084 	mov.w	r0, #264	; 0x108
8780480e:	f2c0 200e 	movt	r0, #526	; 0x20e
87804812:	f7ff faa5 	bl	87803d60 <IOMUXC_SetPinMux>
87804816:	2300      	movs	r3, #0
87804818:	9301      	str	r3, [sp, #4]
8780481a:	f44f 7366 	mov.w	r3, #920	; 0x398
8780481e:	f2c0 230e 	movt	r3, #526	; 0x20e
87804822:	9300      	str	r3, [sp, #0]
87804824:	2300      	movs	r3, #0
87804826:	f240 52dc 	movw	r2, #1500	; 0x5dc
8780482a:	f2c0 220e 	movt	r2, #526	; 0x20e
8780482e:	2100      	movs	r1, #0
87804830:	f44f 7086 	mov.w	r0, #268	; 0x10c
87804834:	f2c0 200e 	movt	r0, #526	; 0x20e
87804838:	f7ff fa92 	bl	87803d60 <IOMUXC_SetPinMux>
8780483c:	2300      	movs	r3, #0
8780483e:	9301      	str	r3, [sp, #4]
87804840:	f44f 7367 	mov.w	r3, #924	; 0x39c
87804844:	f2c0 230e 	movt	r3, #526	; 0x20e
87804848:	9300      	str	r3, [sp, #0]
8780484a:	2300      	movs	r3, #0
8780484c:	2200      	movs	r2, #0
8780484e:	2100      	movs	r1, #0
87804850:	f44f 7088 	mov.w	r0, #272	; 0x110
87804854:	f2c0 200e 	movt	r0, #526	; 0x20e
87804858:	f7ff fa82 	bl	87803d60 <IOMUXC_SetPinMux>
8780485c:	2300      	movs	r3, #0
8780485e:	9301      	str	r3, [sp, #4]
87804860:	f44f 7342 	mov.w	r3, #776	; 0x308
87804864:	f2c0 230e 	movt	r3, #526	; 0x20e
87804868:	9300      	str	r3, [sp, #0]
8780486a:	2300      	movs	r3, #0
8780486c:	2200      	movs	r2, #0
8780486e:	2105      	movs	r1, #5
87804870:	207c      	movs	r0, #124	; 0x7c
87804872:	f2c0 200e 	movt	r0, #526	; 0x20e
87804876:	f7ff fa73 	bl	87803d60 <IOMUXC_SetPinMux>
8780487a:	f24f 0380 	movw	r3, #61568	; 0xf080
8780487e:	9301      	str	r3, [sp, #4]
87804880:	f44f 7346 	mov.w	r3, #792	; 0x318
87804884:	f2c0 230e 	movt	r3, #526	; 0x20e
87804888:	9300      	str	r3, [sp, #0]
8780488a:	2300      	movs	r3, #0
8780488c:	2200      	movs	r2, #0
8780488e:	2105      	movs	r1, #5
87804890:	208c      	movs	r0, #140	; 0x8c
87804892:	f2c0 200e 	movt	r0, #526	; 0x20e
87804896:	f7ff fa81 	bl	87803d9c <IOMUXC_SetPinConfig>
8780489a:	23b9      	movs	r3, #185	; 0xb9
8780489c:	9301      	str	r3, [sp, #4]
8780489e:	f44f 7369 	mov.w	r3, #932	; 0x3a4
878048a2:	f2c0 230e 	movt	r3, #526	; 0x20e
878048a6:	9300      	str	r3, [sp, #0]
878048a8:	2300      	movs	r3, #0
878048aa:	2200      	movs	r2, #0
878048ac:	2100      	movs	r1, #0
878048ae:	f44f 708c 	mov.w	r0, #280	; 0x118
878048b2:	f2c0 200e 	movt	r0, #526	; 0x20e
878048b6:	f7ff fa71 	bl	87803d9c <IOMUXC_SetPinConfig>
878048ba:	23b9      	movs	r3, #185	; 0xb9
878048bc:	9301      	str	r3, [sp, #4]
878048be:	f44f 736a 	mov.w	r3, #936	; 0x3a8
878048c2:	f2c0 230e 	movt	r3, #526	; 0x20e
878048c6:	9300      	str	r3, [sp, #0]
878048c8:	2300      	movs	r3, #0
878048ca:	2200      	movs	r2, #0
878048cc:	2100      	movs	r1, #0
878048ce:	f44f 708e 	mov.w	r0, #284	; 0x11c
878048d2:	f2c0 200e 	movt	r0, #526	; 0x20e
878048d6:	f7ff fa61 	bl	87803d9c <IOMUXC_SetPinConfig>
878048da:	23b9      	movs	r3, #185	; 0xb9
878048dc:	9301      	str	r3, [sp, #4]
878048de:	f44f 736b 	mov.w	r3, #940	; 0x3ac
878048e2:	f2c0 230e 	movt	r3, #526	; 0x20e
878048e6:	9300      	str	r3, [sp, #0]
878048e8:	2300      	movs	r3, #0
878048ea:	2200      	movs	r2, #0
878048ec:	2100      	movs	r1, #0
878048ee:	f44f 7090 	mov.w	r0, #288	; 0x120
878048f2:	f2c0 200e 	movt	r0, #526	; 0x20e
878048f6:	f7ff fa51 	bl	87803d9c <IOMUXC_SetPinConfig>
878048fa:	23b9      	movs	r3, #185	; 0xb9
878048fc:	9301      	str	r3, [sp, #4]
878048fe:	f44f 736c 	mov.w	r3, #944	; 0x3b0
87804902:	f2c0 230e 	movt	r3, #526	; 0x20e
87804906:	9300      	str	r3, [sp, #0]
87804908:	2300      	movs	r3, #0
8780490a:	2200      	movs	r2, #0
8780490c:	2100      	movs	r1, #0
8780490e:	f44f 7092 	mov.w	r0, #292	; 0x124
87804912:	f2c0 200e 	movt	r0, #526	; 0x20e
87804916:	f7ff fa41 	bl	87803d9c <IOMUXC_SetPinConfig>
8780491a:	23b9      	movs	r3, #185	; 0xb9
8780491c:	9301      	str	r3, [sp, #4]
8780491e:	f44f 736d 	mov.w	r3, #948	; 0x3b4
87804922:	f2c0 230e 	movt	r3, #526	; 0x20e
87804926:	9300      	str	r3, [sp, #0]
87804928:	2300      	movs	r3, #0
8780492a:	2200      	movs	r2, #0
8780492c:	2100      	movs	r1, #0
8780492e:	f44f 7094 	mov.w	r0, #296	; 0x128
87804932:	f2c0 200e 	movt	r0, #526	; 0x20e
87804936:	f7ff fa31 	bl	87803d9c <IOMUXC_SetPinConfig>
8780493a:	23b9      	movs	r3, #185	; 0xb9
8780493c:	9301      	str	r3, [sp, #4]
8780493e:	f44f 736e 	mov.w	r3, #952	; 0x3b8
87804942:	f2c0 230e 	movt	r3, #526	; 0x20e
87804946:	9300      	str	r3, [sp, #0]
87804948:	2300      	movs	r3, #0
8780494a:	2200      	movs	r2, #0
8780494c:	2100      	movs	r1, #0
8780494e:	f44f 7096 	mov.w	r0, #300	; 0x12c
87804952:	f2c0 200e 	movt	r0, #526	; 0x20e
87804956:	f7ff fa21 	bl	87803d9c <IOMUXC_SetPinConfig>
8780495a:	23b9      	movs	r3, #185	; 0xb9
8780495c:	9301      	str	r3, [sp, #4]
8780495e:	f44f 736f 	mov.w	r3, #956	; 0x3bc
87804962:	f2c0 230e 	movt	r3, #526	; 0x20e
87804966:	9300      	str	r3, [sp, #0]
87804968:	2300      	movs	r3, #0
8780496a:	2200      	movs	r2, #0
8780496c:	2100      	movs	r1, #0
8780496e:	f44f 7098 	mov.w	r0, #304	; 0x130
87804972:	f2c0 200e 	movt	r0, #526	; 0x20e
87804976:	f7ff fa11 	bl	87803d9c <IOMUXC_SetPinConfig>
8780497a:	23b9      	movs	r3, #185	; 0xb9
8780497c:	9301      	str	r3, [sp, #4]
8780497e:	f44f 7370 	mov.w	r3, #960	; 0x3c0
87804982:	f2c0 230e 	movt	r3, #526	; 0x20e
87804986:	9300      	str	r3, [sp, #0]
87804988:	2300      	movs	r3, #0
8780498a:	2200      	movs	r2, #0
8780498c:	2100      	movs	r1, #0
8780498e:	f44f 709a 	mov.w	r0, #308	; 0x134
87804992:	f2c0 200e 	movt	r0, #526	; 0x20e
87804996:	f7ff fa01 	bl	87803d9c <IOMUXC_SetPinConfig>
8780499a:	23b9      	movs	r3, #185	; 0xb9
8780499c:	9301      	str	r3, [sp, #4]
8780499e:	f44f 7371 	mov.w	r3, #964	; 0x3c4
878049a2:	f2c0 230e 	movt	r3, #526	; 0x20e
878049a6:	9300      	str	r3, [sp, #0]
878049a8:	2300      	movs	r3, #0
878049aa:	2200      	movs	r2, #0
878049ac:	2100      	movs	r1, #0
878049ae:	f44f 709c 	mov.w	r0, #312	; 0x138
878049b2:	f2c0 200e 	movt	r0, #526	; 0x20e
878049b6:	f7ff f9f1 	bl	87803d9c <IOMUXC_SetPinConfig>
878049ba:	23b9      	movs	r3, #185	; 0xb9
878049bc:	9301      	str	r3, [sp, #4]
878049be:	f44f 7372 	mov.w	r3, #968	; 0x3c8
878049c2:	f2c0 230e 	movt	r3, #526	; 0x20e
878049c6:	9300      	str	r3, [sp, #0]
878049c8:	2300      	movs	r3, #0
878049ca:	2200      	movs	r2, #0
878049cc:	2100      	movs	r1, #0
878049ce:	f44f 709e 	mov.w	r0, #316	; 0x13c
878049d2:	f2c0 200e 	movt	r0, #526	; 0x20e
878049d6:	f7ff f9e1 	bl	87803d9c <IOMUXC_SetPinConfig>
878049da:	23b9      	movs	r3, #185	; 0xb9
878049dc:	9301      	str	r3, [sp, #4]
878049de:	f44f 7373 	mov.w	r3, #972	; 0x3cc
878049e2:	f2c0 230e 	movt	r3, #526	; 0x20e
878049e6:	9300      	str	r3, [sp, #0]
878049e8:	2300      	movs	r3, #0
878049ea:	2200      	movs	r2, #0
878049ec:	2100      	movs	r1, #0
878049ee:	f44f 70a0 	mov.w	r0, #320	; 0x140
878049f2:	f2c0 200e 	movt	r0, #526	; 0x20e
878049f6:	f7ff f9d1 	bl	87803d9c <IOMUXC_SetPinConfig>
878049fa:	23b9      	movs	r3, #185	; 0xb9
878049fc:	9301      	str	r3, [sp, #4]
878049fe:	f44f 7374 	mov.w	r3, #976	; 0x3d0
87804a02:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a06:	9300      	str	r3, [sp, #0]
87804a08:	2300      	movs	r3, #0
87804a0a:	2200      	movs	r2, #0
87804a0c:	2100      	movs	r1, #0
87804a0e:	f44f 70a2 	mov.w	r0, #324	; 0x144
87804a12:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a16:	f7ff f9c1 	bl	87803d9c <IOMUXC_SetPinConfig>
87804a1a:	23b9      	movs	r3, #185	; 0xb9
87804a1c:	9301      	str	r3, [sp, #4]
87804a1e:	f44f 7375 	mov.w	r3, #980	; 0x3d4
87804a22:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a26:	9300      	str	r3, [sp, #0]
87804a28:	2300      	movs	r3, #0
87804a2a:	2200      	movs	r2, #0
87804a2c:	2100      	movs	r1, #0
87804a2e:	f44f 70a4 	mov.w	r0, #328	; 0x148
87804a32:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a36:	f7ff f9b1 	bl	87803d9c <IOMUXC_SetPinConfig>
87804a3a:	23b9      	movs	r3, #185	; 0xb9
87804a3c:	9301      	str	r3, [sp, #4]
87804a3e:	f44f 7376 	mov.w	r3, #984	; 0x3d8
87804a42:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a46:	9300      	str	r3, [sp, #0]
87804a48:	2300      	movs	r3, #0
87804a4a:	2200      	movs	r2, #0
87804a4c:	2100      	movs	r1, #0
87804a4e:	f44f 70a6 	mov.w	r0, #332	; 0x14c
87804a52:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a56:	f7ff f9a1 	bl	87803d9c <IOMUXC_SetPinConfig>
87804a5a:	23b9      	movs	r3, #185	; 0xb9
87804a5c:	9301      	str	r3, [sp, #4]
87804a5e:	f44f 7377 	mov.w	r3, #988	; 0x3dc
87804a62:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a66:	9300      	str	r3, [sp, #0]
87804a68:	2300      	movs	r3, #0
87804a6a:	2200      	movs	r2, #0
87804a6c:	2100      	movs	r1, #0
87804a6e:	f44f 70a8 	mov.w	r0, #336	; 0x150
87804a72:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a76:	f7ff f991 	bl	87803d9c <IOMUXC_SetPinConfig>
87804a7a:	23b9      	movs	r3, #185	; 0xb9
87804a7c:	9301      	str	r3, [sp, #4]
87804a7e:	f44f 7378 	mov.w	r3, #992	; 0x3e0
87804a82:	f2c0 230e 	movt	r3, #526	; 0x20e
87804a86:	9300      	str	r3, [sp, #0]
87804a88:	2300      	movs	r3, #0
87804a8a:	2200      	movs	r2, #0
87804a8c:	2100      	movs	r1, #0
87804a8e:	f44f 70aa 	mov.w	r0, #340	; 0x154
87804a92:	f2c0 200e 	movt	r0, #526	; 0x20e
87804a96:	f7ff f981 	bl	87803d9c <IOMUXC_SetPinConfig>
87804a9a:	23b9      	movs	r3, #185	; 0xb9
87804a9c:	9301      	str	r3, [sp, #4]
87804a9e:	f44f 7379 	mov.w	r3, #996	; 0x3e4
87804aa2:	f2c0 230e 	movt	r3, #526	; 0x20e
87804aa6:	9300      	str	r3, [sp, #0]
87804aa8:	2300      	movs	r3, #0
87804aaa:	2200      	movs	r2, #0
87804aac:	2100      	movs	r1, #0
87804aae:	f44f 70ac 	mov.w	r0, #344	; 0x158
87804ab2:	f2c0 200e 	movt	r0, #526	; 0x20e
87804ab6:	f7ff f971 	bl	87803d9c <IOMUXC_SetPinConfig>
87804aba:	23b9      	movs	r3, #185	; 0xb9
87804abc:	9301      	str	r3, [sp, #4]
87804abe:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
87804ac2:	f2c0 230e 	movt	r3, #526	; 0x20e
87804ac6:	9300      	str	r3, [sp, #0]
87804ac8:	2300      	movs	r3, #0
87804aca:	2200      	movs	r2, #0
87804acc:	2100      	movs	r1, #0
87804ace:	f44f 70ae 	mov.w	r0, #348	; 0x15c
87804ad2:	f2c0 200e 	movt	r0, #526	; 0x20e
87804ad6:	f7ff f961 	bl	87803d9c <IOMUXC_SetPinConfig>
87804ada:	23b9      	movs	r3, #185	; 0xb9
87804adc:	9301      	str	r3, [sp, #4]
87804ade:	f44f 737b 	mov.w	r3, #1004	; 0x3ec
87804ae2:	f2c0 230e 	movt	r3, #526	; 0x20e
87804ae6:	9300      	str	r3, [sp, #0]
87804ae8:	2300      	movs	r3, #0
87804aea:	2200      	movs	r2, #0
87804aec:	2100      	movs	r1, #0
87804aee:	f44f 70b0 	mov.w	r0, #352	; 0x160
87804af2:	f2c0 200e 	movt	r0, #526	; 0x20e
87804af6:	f7ff f951 	bl	87803d9c <IOMUXC_SetPinConfig>
87804afa:	23b9      	movs	r3, #185	; 0xb9
87804afc:	9301      	str	r3, [sp, #4]
87804afe:	f44f 737c 	mov.w	r3, #1008	; 0x3f0
87804b02:	f2c0 230e 	movt	r3, #526	; 0x20e
87804b06:	9300      	str	r3, [sp, #0]
87804b08:	2300      	movs	r3, #0
87804b0a:	2200      	movs	r2, #0
87804b0c:	2100      	movs	r1, #0
87804b0e:	f44f 70b2 	mov.w	r0, #356	; 0x164
87804b12:	f2c0 200e 	movt	r0, #526	; 0x20e
87804b16:	f7ff f941 	bl	87803d9c <IOMUXC_SetPinConfig>
87804b1a:	23b9      	movs	r3, #185	; 0xb9
87804b1c:	9301      	str	r3, [sp, #4]
87804b1e:	f44f 737d 	mov.w	r3, #1012	; 0x3f4
87804b22:	f2c0 230e 	movt	r3, #526	; 0x20e
87804b26:	9300      	str	r3, [sp, #0]
87804b28:	2300      	movs	r3, #0
87804b2a:	2200      	movs	r2, #0
87804b2c:	2100      	movs	r1, #0
87804b2e:	f44f 70b4 	mov.w	r0, #360	; 0x168
87804b32:	f2c0 200e 	movt	r0, #526	; 0x20e
87804b36:	f7ff f931 	bl	87803d9c <IOMUXC_SetPinConfig>
87804b3a:	23b9      	movs	r3, #185	; 0xb9
87804b3c:	9301      	str	r3, [sp, #4]
87804b3e:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
87804b42:	f2c0 230e 	movt	r3, #526	; 0x20e
87804b46:	9300      	str	r3, [sp, #0]
87804b48:	2300      	movs	r3, #0
87804b4a:	2200      	movs	r2, #0
87804b4c:	2100      	movs	r1, #0
87804b4e:	f44f 70b6 	mov.w	r0, #364	; 0x16c
87804b52:	f2c0 200e 	movt	r0, #526	; 0x20e
87804b56:	f7ff f921 	bl	87803d9c <IOMUXC_SetPinConfig>
87804b5a:	23b9      	movs	r3, #185	; 0xb9
87804b5c:	9301      	str	r3, [sp, #4]
87804b5e:	f44f 737f 	mov.w	r3, #1020	; 0x3fc
87804b62:	f2c0 230e 	movt	r3, #526	; 0x20e
87804b66:	9300      	str	r3, [sp, #0]
87804b68:	2300      	movs	r3, #0
87804b6a:	2200      	movs	r2, #0
87804b6c:	2100      	movs	r1, #0
87804b6e:	f44f 70b8 	mov.w	r0, #368	; 0x170
87804b72:	f2c0 200e 	movt	r0, #526	; 0x20e
87804b76:	f7ff f911 	bl	87803d9c <IOMUXC_SetPinConfig>
87804b7a:	23b9      	movs	r3, #185	; 0xb9
87804b7c:	9301      	str	r3, [sp, #4]
87804b7e:	f44f 6380 	mov.w	r3, #1024	; 0x400
87804b82:	f2c0 230e 	movt	r3, #526	; 0x20e
87804b86:	9300      	str	r3, [sp, #0]
87804b88:	2300      	movs	r3, #0
87804b8a:	2200      	movs	r2, #0
87804b8c:	2100      	movs	r1, #0
87804b8e:	f44f 70ba 	mov.w	r0, #372	; 0x174
87804b92:	f2c0 200e 	movt	r0, #526	; 0x20e
87804b96:	f7ff f901 	bl	87803d9c <IOMUXC_SetPinConfig>
87804b9a:	23b9      	movs	r3, #185	; 0xb9
87804b9c:	9301      	str	r3, [sp, #4]
87804b9e:	f44f 7364 	mov.w	r3, #912	; 0x390
87804ba2:	f2c0 230e 	movt	r3, #526	; 0x20e
87804ba6:	9300      	str	r3, [sp, #0]
87804ba8:	2300      	movs	r3, #0
87804baa:	2200      	movs	r2, #0
87804bac:	2100      	movs	r1, #0
87804bae:	f44f 7082 	mov.w	r0, #260	; 0x104
87804bb2:	f2c0 200e 	movt	r0, #526	; 0x20e
87804bb6:	f7ff f8f1 	bl	87803d9c <IOMUXC_SetPinConfig>
87804bba:	23b9      	movs	r3, #185	; 0xb9
87804bbc:	9301      	str	r3, [sp, #4]
87804bbe:	f44f 7365 	mov.w	r3, #916	; 0x394
87804bc2:	f2c0 230e 	movt	r3, #526	; 0x20e
87804bc6:	9300      	str	r3, [sp, #0]
87804bc8:	2300      	movs	r3, #0
87804bca:	2200      	movs	r2, #0
87804bcc:	2100      	movs	r1, #0
87804bce:	f44f 7084 	mov.w	r0, #264	; 0x108
87804bd2:	f2c0 200e 	movt	r0, #526	; 0x20e
87804bd6:	f7ff f8e1 	bl	87803d9c <IOMUXC_SetPinConfig>
87804bda:	23b9      	movs	r3, #185	; 0xb9
87804bdc:	9301      	str	r3, [sp, #4]
87804bde:	f44f 7366 	mov.w	r3, #920	; 0x398
87804be2:	f2c0 230e 	movt	r3, #526	; 0x20e
87804be6:	9300      	str	r3, [sp, #0]
87804be8:	2300      	movs	r3, #0
87804bea:	f240 52dc 	movw	r2, #1500	; 0x5dc
87804bee:	f2c0 220e 	movt	r2, #526	; 0x20e
87804bf2:	2100      	movs	r1, #0
87804bf4:	f44f 7086 	mov.w	r0, #268	; 0x10c
87804bf8:	f2c0 200e 	movt	r0, #526	; 0x20e
87804bfc:	f7ff f8ce 	bl	87803d9c <IOMUXC_SetPinConfig>
87804c00:	23b9      	movs	r3, #185	; 0xb9
87804c02:	9301      	str	r3, [sp, #4]
87804c04:	f44f 7367 	mov.w	r3, #924	; 0x39c
87804c08:	f2c0 230e 	movt	r3, #526	; 0x20e
87804c0c:	9300      	str	r3, [sp, #0]
87804c0e:	2300      	movs	r3, #0
87804c10:	2200      	movs	r2, #0
87804c12:	2100      	movs	r1, #0
87804c14:	f44f 7088 	mov.w	r0, #272	; 0x110
87804c18:	f2c0 200e 	movt	r0, #526	; 0x20e
87804c1c:	f7ff f8be 	bl	87803d9c <IOMUXC_SetPinConfig>
87804c20:	23b9      	movs	r3, #185	; 0xb9
87804c22:	9301      	str	r3, [sp, #4]
87804c24:	f44f 7342 	mov.w	r3, #776	; 0x308
87804c28:	f2c0 230e 	movt	r3, #526	; 0x20e
87804c2c:	9300      	str	r3, [sp, #0]
87804c2e:	2300      	movs	r3, #0
87804c30:	2200      	movs	r2, #0
87804c32:	2105      	movs	r1, #5
87804c34:	207c      	movs	r0, #124	; 0x7c
87804c36:	f2c0 200e 	movt	r0, #526	; 0x20e
87804c3a:	f7ff f8af 	bl	87803d9c <IOMUXC_SetPinConfig>
87804c3e:	2301      	movs	r3, #1
87804c40:	607b      	str	r3, [r7, #4]
87804c42:	2301      	movs	r3, #1
87804c44:	723b      	strb	r3, [r7, #8]
87804c46:	1d3b      	adds	r3, r7, #4
87804c48:	461a      	mov	r2, r3
87804c4a:	2108      	movs	r1, #8
87804c4c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87804c50:	f2c0 2009 	movt	r0, #521	; 0x209
87804c54:	f7fb fed0 	bl	878009f8 <gpio_init>
87804c58:	2201      	movs	r2, #1
87804c5a:	2108      	movs	r1, #8
87804c5c:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87804c60:	f2c0 2009 	movt	r0, #521	; 0x209
87804c64:	f7fb ff14 	bl	87800a90 <gpio_pinwrite>
87804c68:	3710      	adds	r7, #16
87804c6a:	46bd      	mov	sp, r7
87804c6c:	bd80      	pop	{r7, pc}
87804c6e:	bf00      	nop

87804c70 <lcdclk_init>:
87804c70:	b480      	push	{r7}
87804c72:	b083      	sub	sp, #12
87804c74:	af00      	add	r7, sp, #0
87804c76:	4603      	mov	r3, r0
87804c78:	71fb      	strb	r3, [r7, #7]
87804c7a:	460b      	mov	r3, r1
87804c7c:	71bb      	strb	r3, [r7, #6]
87804c7e:	4613      	mov	r3, r2
87804c80:	717b      	strb	r3, [r7, #5]
87804c82:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804c86:	f2c0 230c 	movt	r3, #524	; 0x20c
87804c8a:	2200      	movs	r2, #0
87804c8c:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
87804c90:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804c94:	f2c0 230c 	movt	r3, #524	; 0x20c
87804c98:	2200      	movs	r2, #0
87804c9a:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
87804c9e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804ca2:	f2c0 230c 	movt	r3, #524	; 0x20c
87804ca6:	79fa      	ldrb	r2, [r7, #7]
87804ca8:	f442 1281 	orr.w	r2, r2, #1056768	; 0x102000
87804cac:	f8c3 20a0 	str.w	r2, [r3, #160]	; 0xa0
87804cb0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804cb4:	f2c0 230c 	movt	r3, #524	; 0x20c
87804cb8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87804cbc:	f2c0 220c 	movt	r2, #524	; 0x20c
87804cc0:	f8d2 2170 	ldr.w	r2, [r2, #368]	; 0x170
87804cc4:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
87804cc8:	f8c3 2170 	str.w	r2, [r3, #368]	; 0x170
87804ccc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804cd0:	f2c0 230c 	movt	r3, #524	; 0x20c
87804cd4:	2200      	movs	r2, #0
87804cd6:	f8c3 2170 	str.w	r2, [r3, #368]	; 0x170
87804cda:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804cde:	f2c0 230c 	movt	r3, #524	; 0x20c
87804ce2:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804ce6:	f2c0 220c 	movt	r2, #524	; 0x20c
87804cea:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804cec:	f422 3260 	bic.w	r2, r2, #229376	; 0x38000
87804cf0:	639a      	str	r2, [r3, #56]	; 0x38
87804cf2:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804cf6:	f2c0 230c 	movt	r3, #524	; 0x20c
87804cfa:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804cfe:	f2c0 220c 	movt	r2, #524	; 0x20c
87804d02:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804d04:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
87804d08:	639a      	str	r2, [r3, #56]	; 0x38
87804d0a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804d0e:	f2c0 230c 	movt	r3, #524	; 0x20c
87804d12:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804d16:	f2c0 220c 	movt	r2, #524	; 0x20c
87804d1a:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804d1c:	f422 42e0 	bic.w	r2, r2, #28672	; 0x7000
87804d20:	639a      	str	r2, [r3, #56]	; 0x38
87804d22:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804d26:	f2c0 230c 	movt	r3, #524	; 0x20c
87804d2a:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804d2e:	f2c0 220c 	movt	r2, #524	; 0x20c
87804d32:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804d34:	79b9      	ldrb	r1, [r7, #6]
87804d36:	3901      	subs	r1, #1
87804d38:	0309      	lsls	r1, r1, #12
87804d3a:	430a      	orrs	r2, r1
87804d3c:	639a      	str	r2, [r3, #56]	; 0x38
87804d3e:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804d42:	f2c0 230c 	movt	r3, #524	; 0x20c
87804d46:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804d4a:	f2c0 220c 	movt	r2, #524	; 0x20c
87804d4e:	6992      	ldr	r2, [r2, #24]
87804d50:	f022 7260 	bic.w	r2, r2, #58720256	; 0x3800000
87804d54:	619a      	str	r2, [r3, #24]
87804d56:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804d5a:	f2c0 230c 	movt	r3, #524	; 0x20c
87804d5e:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804d62:	f2c0 220c 	movt	r2, #524	; 0x20c
87804d66:	6992      	ldr	r2, [r2, #24]
87804d68:	7979      	ldrb	r1, [r7, #5]
87804d6a:	3901      	subs	r1, #1
87804d6c:	05c9      	lsls	r1, r1, #23
87804d6e:	430a      	orrs	r2, r1
87804d70:	619a      	str	r2, [r3, #24]
87804d72:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804d76:	f2c0 230c 	movt	r3, #524	; 0x20c
87804d7a:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804d7e:	f2c0 220c 	movt	r2, #524	; 0x20c
87804d82:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804d84:	f422 6260 	bic.w	r2, r2, #3584	; 0xe00
87804d88:	639a      	str	r2, [r3, #56]	; 0x38
87804d8a:	f44f 4380 	mov.w	r3, #16384	; 0x4000
87804d8e:	f2c0 230c 	movt	r3, #524	; 0x20c
87804d92:	f44f 4280 	mov.w	r2, #16384	; 0x4000
87804d96:	f2c0 220c 	movt	r2, #524	; 0x20c
87804d9a:	6b92      	ldr	r2, [r2, #56]	; 0x38
87804d9c:	639a      	str	r2, [r3, #56]	; 0x38
87804d9e:	370c      	adds	r7, #12
87804da0:	46bd      	mov	sp, r7
87804da2:	f85d 7b04 	ldr.w	r7, [sp], #4
87804da6:	4770      	bx	lr

87804da8 <lcd_reset>:
87804da8:	b480      	push	{r7}
87804daa:	af00      	add	r7, sp, #0
87804dac:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804db0:	f2c0 231c 	movt	r3, #540	; 0x21c
87804db4:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
87804db8:	601a      	str	r2, [r3, #0]
87804dba:	46bd      	mov	sp, r7
87804dbc:	f85d 7b04 	ldr.w	r7, [sp], #4
87804dc0:	4770      	bx	lr
87804dc2:	bf00      	nop

87804dc4 <lcd_noreset>:
87804dc4:	b480      	push	{r7}
87804dc6:	af00      	add	r7, sp, #0
87804dc8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804dcc:	f2c0 231c 	movt	r3, #540	; 0x21c
87804dd0:	2200      	movs	r2, #0
87804dd2:	601a      	str	r2, [r3, #0]
87804dd4:	46bd      	mov	sp, r7
87804dd6:	f85d 7b04 	ldr.w	r7, [sp], #4
87804dda:	4770      	bx	lr

87804ddc <lcd_enable>:
87804ddc:	b480      	push	{r7}
87804dde:	af00      	add	r7, sp, #0
87804de0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
87804de4:	f2c0 231c 	movt	r3, #540	; 0x21c
87804de8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
87804dec:	f2c0 221c 	movt	r2, #540	; 0x21c
87804df0:	6812      	ldr	r2, [r2, #0]
87804df2:	f042 0201 	orr.w	r2, r2, #1
87804df6:	601a      	str	r2, [r3, #0]
87804df8:	46bd      	mov	sp, r7
87804dfa:	f85d 7b04 	ldr.w	r7, [sp], #4
87804dfe:	4770      	bx	lr

87804e00 <lcd_drawpoint>:
87804e00:	b480      	push	{r7}
87804e02:	b083      	sub	sp, #12
87804e04:	af00      	add	r7, sp, #0
87804e06:	4603      	mov	r3, r0
87804e08:	603a      	str	r2, [r7, #0]
87804e0a:	80fb      	strh	r3, [r7, #6]
87804e0c:	460b      	mov	r3, r1
87804e0e:	80bb      	strh	r3, [r7, #4]
87804e10:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804e14:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e18:	695a      	ldr	r2, [r3, #20]
87804e1a:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804e1e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e22:	791b      	ldrb	r3, [r3, #4]
87804e24:	4618      	mov	r0, r3
87804e26:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804e2a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e2e:	885b      	ldrh	r3, [r3, #2]
87804e30:	4619      	mov	r1, r3
87804e32:	88bb      	ldrh	r3, [r7, #4]
87804e34:	fb03 f101 	mul.w	r1, r3, r1
87804e38:	88fb      	ldrh	r3, [r7, #6]
87804e3a:	440b      	add	r3, r1
87804e3c:	fb03 f300 	mul.w	r3, r3, r0
87804e40:	4413      	add	r3, r2
87804e42:	461a      	mov	r2, r3
87804e44:	683b      	ldr	r3, [r7, #0]
87804e46:	6013      	str	r3, [r2, #0]
87804e48:	370c      	adds	r7, #12
87804e4a:	46bd      	mov	sp, r7
87804e4c:	f85d 7b04 	ldr.w	r7, [sp], #4
87804e50:	4770      	bx	lr
87804e52:	bf00      	nop

87804e54 <lcd_readpoint>:
87804e54:	b480      	push	{r7}
87804e56:	b083      	sub	sp, #12
87804e58:	af00      	add	r7, sp, #0
87804e5a:	4603      	mov	r3, r0
87804e5c:	460a      	mov	r2, r1
87804e5e:	80fb      	strh	r3, [r7, #6]
87804e60:	4613      	mov	r3, r2
87804e62:	80bb      	strh	r3, [r7, #4]
87804e64:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804e68:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e6c:	695a      	ldr	r2, [r3, #20]
87804e6e:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804e72:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e76:	791b      	ldrb	r3, [r3, #4]
87804e78:	4618      	mov	r0, r3
87804e7a:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804e7e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804e82:	885b      	ldrh	r3, [r3, #2]
87804e84:	4619      	mov	r1, r3
87804e86:	88bb      	ldrh	r3, [r7, #4]
87804e88:	fb03 f101 	mul.w	r1, r3, r1
87804e8c:	88fb      	ldrh	r3, [r7, #6]
87804e8e:	440b      	add	r3, r1
87804e90:	fb03 f300 	mul.w	r3, r3, r0
87804e94:	4413      	add	r3, r2
87804e96:	681b      	ldr	r3, [r3, #0]
87804e98:	4618      	mov	r0, r3
87804e9a:	370c      	adds	r7, #12
87804e9c:	46bd      	mov	sp, r7
87804e9e:	f85d 7b04 	ldr.w	r7, [sp], #4
87804ea2:	4770      	bx	lr

87804ea4 <lcd_clear>:
87804ea4:	b480      	push	{r7}
87804ea6:	b087      	sub	sp, #28
87804ea8:	af00      	add	r7, sp, #0
87804eaa:	6078      	str	r0, [r7, #4]
87804eac:	2300      	movs	r3, #0
87804eae:	617b      	str	r3, [r7, #20]
87804eb0:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804eb4:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804eb8:	695b      	ldr	r3, [r3, #20]
87804eba:	613b      	str	r3, [r7, #16]
87804ebc:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804ec0:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804ec4:	885b      	ldrh	r3, [r3, #2]
87804ec6:	461a      	mov	r2, r3
87804ec8:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804ecc:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804ed0:	881b      	ldrh	r3, [r3, #0]
87804ed2:	fb03 f302 	mul.w	r3, r3, r2
87804ed6:	60fb      	str	r3, [r7, #12]
87804ed8:	2300      	movs	r3, #0
87804eda:	617b      	str	r3, [r7, #20]
87804edc:	e008      	b.n	87804ef0 <lcd_clear+0x4c>
87804ede:	697b      	ldr	r3, [r7, #20]
87804ee0:	009b      	lsls	r3, r3, #2
87804ee2:	693a      	ldr	r2, [r7, #16]
87804ee4:	4413      	add	r3, r2
87804ee6:	687a      	ldr	r2, [r7, #4]
87804ee8:	601a      	str	r2, [r3, #0]
87804eea:	697b      	ldr	r3, [r7, #20]
87804eec:	3301      	adds	r3, #1
87804eee:	617b      	str	r3, [r7, #20]
87804ef0:	697a      	ldr	r2, [r7, #20]
87804ef2:	68fb      	ldr	r3, [r7, #12]
87804ef4:	429a      	cmp	r2, r3
87804ef6:	d3f2      	bcc.n	87804ede <lcd_clear+0x3a>
87804ef8:	371c      	adds	r7, #28
87804efa:	46bd      	mov	sp, r7
87804efc:	f85d 7b04 	ldr.w	r7, [sp], #4
87804f00:	4770      	bx	lr
87804f02:	bf00      	nop

87804f04 <lcd_fill>:
87804f04:	b590      	push	{r4, r7, lr}
87804f06:	b085      	sub	sp, #20
87804f08:	af00      	add	r7, sp, #0
87804f0a:	4604      	mov	r4, r0
87804f0c:	4608      	mov	r0, r1
87804f0e:	4611      	mov	r1, r2
87804f10:	461a      	mov	r2, r3
87804f12:	4623      	mov	r3, r4
87804f14:	80fb      	strh	r3, [r7, #6]
87804f16:	4603      	mov	r3, r0
87804f18:	80bb      	strh	r3, [r7, #4]
87804f1a:	460b      	mov	r3, r1
87804f1c:	807b      	strh	r3, [r7, #2]
87804f1e:	4613      	mov	r3, r2
87804f20:	803b      	strh	r3, [r7, #0]
87804f22:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804f26:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804f2a:	885b      	ldrh	r3, [r3, #2]
87804f2c:	887a      	ldrh	r2, [r7, #2]
87804f2e:	429a      	cmp	r2, r3
87804f30:	d306      	bcc.n	87804f40 <lcd_fill+0x3c>
87804f32:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804f36:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804f3a:	885b      	ldrh	r3, [r3, #2]
87804f3c:	3b01      	subs	r3, #1
87804f3e:	807b      	strh	r3, [r7, #2]
87804f40:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804f44:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804f48:	881b      	ldrh	r3, [r3, #0]
87804f4a:	883a      	ldrh	r2, [r7, #0]
87804f4c:	429a      	cmp	r2, r3
87804f4e:	d306      	bcc.n	87804f5e <lcd_fill+0x5a>
87804f50:	f64c 031c 	movw	r3, #51228	; 0xc81c
87804f54:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804f58:	881b      	ldrh	r3, [r3, #0]
87804f5a:	3b01      	subs	r3, #1
87804f5c:	803b      	strh	r3, [r7, #0]
87804f5e:	88bb      	ldrh	r3, [r7, #4]
87804f60:	81bb      	strh	r3, [r7, #12]
87804f62:	e012      	b.n	87804f8a <lcd_fill+0x86>
87804f64:	88fb      	ldrh	r3, [r7, #6]
87804f66:	81fb      	strh	r3, [r7, #14]
87804f68:	e008      	b.n	87804f7c <lcd_fill+0x78>
87804f6a:	89b9      	ldrh	r1, [r7, #12]
87804f6c:	89fb      	ldrh	r3, [r7, #14]
87804f6e:	6a3a      	ldr	r2, [r7, #32]
87804f70:	4618      	mov	r0, r3
87804f72:	f7ff ff45 	bl	87804e00 <lcd_drawpoint>
87804f76:	89fb      	ldrh	r3, [r7, #14]
87804f78:	3301      	adds	r3, #1
87804f7a:	81fb      	strh	r3, [r7, #14]
87804f7c:	89fa      	ldrh	r2, [r7, #14]
87804f7e:	887b      	ldrh	r3, [r7, #2]
87804f80:	429a      	cmp	r2, r3
87804f82:	d9f2      	bls.n	87804f6a <lcd_fill+0x66>
87804f84:	89bb      	ldrh	r3, [r7, #12]
87804f86:	3301      	adds	r3, #1
87804f88:	81bb      	strh	r3, [r7, #12]
87804f8a:	89ba      	ldrh	r2, [r7, #12]
87804f8c:	883b      	ldrh	r3, [r7, #0]
87804f8e:	429a      	cmp	r2, r3
87804f90:	d9e8      	bls.n	87804f64 <lcd_fill+0x60>
87804f92:	3714      	adds	r7, #20
87804f94:	46bd      	mov	sp, r7
87804f96:	bd90      	pop	{r4, r7, pc}

87804f98 <lcd_drawline>:
87804f98:	b590      	push	{r4, r7, lr}
87804f9a:	b08d      	sub	sp, #52	; 0x34
87804f9c:	af00      	add	r7, sp, #0
87804f9e:	4604      	mov	r4, r0
87804fa0:	4608      	mov	r0, r1
87804fa2:	4611      	mov	r1, r2
87804fa4:	461a      	mov	r2, r3
87804fa6:	4623      	mov	r3, r4
87804fa8:	80fb      	strh	r3, [r7, #6]
87804faa:	4603      	mov	r3, r0
87804fac:	80bb      	strh	r3, [r7, #4]
87804fae:	460b      	mov	r3, r1
87804fb0:	807b      	strh	r3, [r7, #2]
87804fb2:	4613      	mov	r3, r2
87804fb4:	803b      	strh	r3, [r7, #0]
87804fb6:	2300      	movs	r3, #0
87804fb8:	62bb      	str	r3, [r7, #40]	; 0x28
87804fba:	2300      	movs	r3, #0
87804fbc:	627b      	str	r3, [r7, #36]	; 0x24
87804fbe:	887a      	ldrh	r2, [r7, #2]
87804fc0:	88fb      	ldrh	r3, [r7, #6]
87804fc2:	1ad3      	subs	r3, r2, r3
87804fc4:	623b      	str	r3, [r7, #32]
87804fc6:	883a      	ldrh	r2, [r7, #0]
87804fc8:	88bb      	ldrh	r3, [r7, #4]
87804fca:	1ad3      	subs	r3, r2, r3
87804fcc:	61fb      	str	r3, [r7, #28]
87804fce:	88fb      	ldrh	r3, [r7, #6]
87804fd0:	60fb      	str	r3, [r7, #12]
87804fd2:	88bb      	ldrh	r3, [r7, #4]
87804fd4:	60bb      	str	r3, [r7, #8]
87804fd6:	6a3b      	ldr	r3, [r7, #32]
87804fd8:	2b00      	cmp	r3, #0
87804fda:	dd02      	ble.n	87804fe2 <lcd_drawline+0x4a>
87804fdc:	2301      	movs	r3, #1
87804fde:	617b      	str	r3, [r7, #20]
87804fe0:	e00b      	b.n	87804ffa <lcd_drawline+0x62>
87804fe2:	6a3b      	ldr	r3, [r7, #32]
87804fe4:	2b00      	cmp	r3, #0
87804fe6:	d102      	bne.n	87804fee <lcd_drawline+0x56>
87804fe8:	2300      	movs	r3, #0
87804fea:	617b      	str	r3, [r7, #20]
87804fec:	e005      	b.n	87804ffa <lcd_drawline+0x62>
87804fee:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87804ff2:	617b      	str	r3, [r7, #20]
87804ff4:	6a3b      	ldr	r3, [r7, #32]
87804ff6:	425b      	negs	r3, r3
87804ff8:	623b      	str	r3, [r7, #32]
87804ffa:	69fb      	ldr	r3, [r7, #28]
87804ffc:	2b00      	cmp	r3, #0
87804ffe:	dd02      	ble.n	87805006 <lcd_drawline+0x6e>
87805000:	2301      	movs	r3, #1
87805002:	613b      	str	r3, [r7, #16]
87805004:	e00b      	b.n	8780501e <lcd_drawline+0x86>
87805006:	69fb      	ldr	r3, [r7, #28]
87805008:	2b00      	cmp	r3, #0
8780500a:	d102      	bne.n	87805012 <lcd_drawline+0x7a>
8780500c:	2300      	movs	r3, #0
8780500e:	613b      	str	r3, [r7, #16]
87805010:	e005      	b.n	8780501e <lcd_drawline+0x86>
87805012:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
87805016:	613b      	str	r3, [r7, #16]
87805018:	69fb      	ldr	r3, [r7, #28]
8780501a:	425b      	negs	r3, r3
8780501c:	61fb      	str	r3, [r7, #28]
8780501e:	6a3a      	ldr	r2, [r7, #32]
87805020:	69fb      	ldr	r3, [r7, #28]
87805022:	429a      	cmp	r2, r3
87805024:	dd02      	ble.n	8780502c <lcd_drawline+0x94>
87805026:	6a3b      	ldr	r3, [r7, #32]
87805028:	61bb      	str	r3, [r7, #24]
8780502a:	e001      	b.n	87805030 <lcd_drawline+0x98>
8780502c:	69fb      	ldr	r3, [r7, #28]
8780502e:	61bb      	str	r3, [r7, #24]
87805030:	2300      	movs	r3, #0
87805032:	85fb      	strh	r3, [r7, #46]	; 0x2e
87805034:	e02e      	b.n	87805094 <lcd_drawline+0xfc>
87805036:	68fb      	ldr	r3, [r7, #12]
87805038:	b298      	uxth	r0, r3
8780503a:	68bb      	ldr	r3, [r7, #8]
8780503c:	b299      	uxth	r1, r3
8780503e:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805042:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805046:	699b      	ldr	r3, [r3, #24]
87805048:	461a      	mov	r2, r3
8780504a:	f7ff fed9 	bl	87804e00 <lcd_drawpoint>
8780504e:	6aba      	ldr	r2, [r7, #40]	; 0x28
87805050:	6a3b      	ldr	r3, [r7, #32]
87805052:	4413      	add	r3, r2
87805054:	62bb      	str	r3, [r7, #40]	; 0x28
87805056:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87805058:	69fb      	ldr	r3, [r7, #28]
8780505a:	4413      	add	r3, r2
8780505c:	627b      	str	r3, [r7, #36]	; 0x24
8780505e:	6aba      	ldr	r2, [r7, #40]	; 0x28
87805060:	69bb      	ldr	r3, [r7, #24]
87805062:	429a      	cmp	r2, r3
87805064:	dd07      	ble.n	87805076 <lcd_drawline+0xde>
87805066:	6aba      	ldr	r2, [r7, #40]	; 0x28
87805068:	69bb      	ldr	r3, [r7, #24]
8780506a:	1ad3      	subs	r3, r2, r3
8780506c:	62bb      	str	r3, [r7, #40]	; 0x28
8780506e:	68fa      	ldr	r2, [r7, #12]
87805070:	697b      	ldr	r3, [r7, #20]
87805072:	4413      	add	r3, r2
87805074:	60fb      	str	r3, [r7, #12]
87805076:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87805078:	69bb      	ldr	r3, [r7, #24]
8780507a:	429a      	cmp	r2, r3
8780507c:	dd07      	ble.n	8780508e <lcd_drawline+0xf6>
8780507e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
87805080:	69bb      	ldr	r3, [r7, #24]
87805082:	1ad3      	subs	r3, r2, r3
87805084:	627b      	str	r3, [r7, #36]	; 0x24
87805086:	68ba      	ldr	r2, [r7, #8]
87805088:	693b      	ldr	r3, [r7, #16]
8780508a:	4413      	add	r3, r2
8780508c:	60bb      	str	r3, [r7, #8]
8780508e:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
87805090:	3301      	adds	r3, #1
87805092:	85fb      	strh	r3, [r7, #46]	; 0x2e
87805094:	8dfa      	ldrh	r2, [r7, #46]	; 0x2e
87805096:	69bb      	ldr	r3, [r7, #24]
87805098:	3301      	adds	r3, #1
8780509a:	429a      	cmp	r2, r3
8780509c:	ddcb      	ble.n	87805036 <lcd_drawline+0x9e>
8780509e:	3734      	adds	r7, #52	; 0x34
878050a0:	46bd      	mov	sp, r7
878050a2:	bd90      	pop	{r4, r7, pc}

878050a4 <lcd_draw_rectangle>:
878050a4:	b590      	push	{r4, r7, lr}
878050a6:	b083      	sub	sp, #12
878050a8:	af00      	add	r7, sp, #0
878050aa:	4604      	mov	r4, r0
878050ac:	4608      	mov	r0, r1
878050ae:	4611      	mov	r1, r2
878050b0:	461a      	mov	r2, r3
878050b2:	4623      	mov	r3, r4
878050b4:	80fb      	strh	r3, [r7, #6]
878050b6:	4603      	mov	r3, r0
878050b8:	80bb      	strh	r3, [r7, #4]
878050ba:	460b      	mov	r3, r1
878050bc:	807b      	strh	r3, [r7, #2]
878050be:	4613      	mov	r3, r2
878050c0:	803b      	strh	r3, [r7, #0]
878050c2:	88bb      	ldrh	r3, [r7, #4]
878050c4:	887a      	ldrh	r2, [r7, #2]
878050c6:	88b9      	ldrh	r1, [r7, #4]
878050c8:	88f8      	ldrh	r0, [r7, #6]
878050ca:	f7ff ff65 	bl	87804f98 <lcd_drawline>
878050ce:	883b      	ldrh	r3, [r7, #0]
878050d0:	88fa      	ldrh	r2, [r7, #6]
878050d2:	88b9      	ldrh	r1, [r7, #4]
878050d4:	88f8      	ldrh	r0, [r7, #6]
878050d6:	f7ff ff5f 	bl	87804f98 <lcd_drawline>
878050da:	883b      	ldrh	r3, [r7, #0]
878050dc:	887a      	ldrh	r2, [r7, #2]
878050de:	8839      	ldrh	r1, [r7, #0]
878050e0:	88f8      	ldrh	r0, [r7, #6]
878050e2:	f7ff ff59 	bl	87804f98 <lcd_drawline>
878050e6:	883b      	ldrh	r3, [r7, #0]
878050e8:	887a      	ldrh	r2, [r7, #2]
878050ea:	88b9      	ldrh	r1, [r7, #4]
878050ec:	8878      	ldrh	r0, [r7, #2]
878050ee:	f7ff ff53 	bl	87804f98 <lcd_drawline>
878050f2:	370c      	adds	r7, #12
878050f4:	46bd      	mov	sp, r7
878050f6:	bd90      	pop	{r4, r7, pc}

878050f8 <lcd_draw_Circle>:
878050f8:	b580      	push	{r7, lr}
878050fa:	b088      	sub	sp, #32
878050fc:	af00      	add	r7, sp, #0
878050fe:	4603      	mov	r3, r0
87805100:	80fb      	strh	r3, [r7, #6]
87805102:	460b      	mov	r3, r1
87805104:	80bb      	strh	r3, [r7, #4]
87805106:	4613      	mov	r3, r2
87805108:	70fb      	strb	r3, [r7, #3]
8780510a:	88fb      	ldrh	r3, [r7, #6]
8780510c:	613b      	str	r3, [r7, #16]
8780510e:	88bb      	ldrh	r3, [r7, #4]
87805110:	60fb      	str	r3, [r7, #12]
87805112:	2300      	movs	r3, #0
87805114:	61fb      	str	r3, [r7, #28]
87805116:	78fb      	ldrb	r3, [r7, #3]
87805118:	61bb      	str	r3, [r7, #24]
8780511a:	78fb      	ldrb	r3, [r7, #3]
8780511c:	f1c3 0301 	rsb	r3, r3, #1
87805120:	617b      	str	r3, [r7, #20]
87805122:	e0b7      	b.n	87805294 <lcd_draw_Circle+0x19c>
87805124:	69fb      	ldr	r3, [r7, #28]
87805126:	b29a      	uxth	r2, r3
87805128:	693b      	ldr	r3, [r7, #16]
8780512a:	b29b      	uxth	r3, r3
8780512c:	4413      	add	r3, r2
8780512e:	b298      	uxth	r0, r3
87805130:	69bb      	ldr	r3, [r7, #24]
87805132:	b29a      	uxth	r2, r3
87805134:	68fb      	ldr	r3, [r7, #12]
87805136:	b29b      	uxth	r3, r3
87805138:	4413      	add	r3, r2
8780513a:	b299      	uxth	r1, r3
8780513c:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805140:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805144:	699b      	ldr	r3, [r3, #24]
87805146:	461a      	mov	r2, r3
87805148:	f7ff fe5a 	bl	87804e00 <lcd_drawpoint>
8780514c:	69bb      	ldr	r3, [r7, #24]
8780514e:	b29a      	uxth	r2, r3
87805150:	693b      	ldr	r3, [r7, #16]
87805152:	b29b      	uxth	r3, r3
87805154:	4413      	add	r3, r2
87805156:	b298      	uxth	r0, r3
87805158:	69fb      	ldr	r3, [r7, #28]
8780515a:	b29a      	uxth	r2, r3
8780515c:	68fb      	ldr	r3, [r7, #12]
8780515e:	b29b      	uxth	r3, r3
87805160:	4413      	add	r3, r2
87805162:	b299      	uxth	r1, r3
87805164:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805168:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780516c:	699b      	ldr	r3, [r3, #24]
8780516e:	461a      	mov	r2, r3
87805170:	f7ff fe46 	bl	87804e00 <lcd_drawpoint>
87805174:	693b      	ldr	r3, [r7, #16]
87805176:	b29a      	uxth	r2, r3
87805178:	69fb      	ldr	r3, [r7, #28]
8780517a:	b29b      	uxth	r3, r3
8780517c:	1ad3      	subs	r3, r2, r3
8780517e:	b298      	uxth	r0, r3
87805180:	69bb      	ldr	r3, [r7, #24]
87805182:	b29a      	uxth	r2, r3
87805184:	68fb      	ldr	r3, [r7, #12]
87805186:	b29b      	uxth	r3, r3
87805188:	4413      	add	r3, r2
8780518a:	b299      	uxth	r1, r3
8780518c:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805190:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805194:	699b      	ldr	r3, [r3, #24]
87805196:	461a      	mov	r2, r3
87805198:	f7ff fe32 	bl	87804e00 <lcd_drawpoint>
8780519c:	693b      	ldr	r3, [r7, #16]
8780519e:	b29a      	uxth	r2, r3
878051a0:	69bb      	ldr	r3, [r7, #24]
878051a2:	b29b      	uxth	r3, r3
878051a4:	1ad3      	subs	r3, r2, r3
878051a6:	b298      	uxth	r0, r3
878051a8:	69fb      	ldr	r3, [r7, #28]
878051aa:	b29a      	uxth	r2, r3
878051ac:	68fb      	ldr	r3, [r7, #12]
878051ae:	b29b      	uxth	r3, r3
878051b0:	4413      	add	r3, r2
878051b2:	b299      	uxth	r1, r3
878051b4:	f64c 031c 	movw	r3, #51228	; 0xc81c
878051b8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878051bc:	699b      	ldr	r3, [r3, #24]
878051be:	461a      	mov	r2, r3
878051c0:	f7ff fe1e 	bl	87804e00 <lcd_drawpoint>
878051c4:	693b      	ldr	r3, [r7, #16]
878051c6:	b29a      	uxth	r2, r3
878051c8:	69fb      	ldr	r3, [r7, #28]
878051ca:	b29b      	uxth	r3, r3
878051cc:	1ad3      	subs	r3, r2, r3
878051ce:	b298      	uxth	r0, r3
878051d0:	68fb      	ldr	r3, [r7, #12]
878051d2:	b29a      	uxth	r2, r3
878051d4:	69bb      	ldr	r3, [r7, #24]
878051d6:	b29b      	uxth	r3, r3
878051d8:	1ad3      	subs	r3, r2, r3
878051da:	b299      	uxth	r1, r3
878051dc:	f64c 031c 	movw	r3, #51228	; 0xc81c
878051e0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878051e4:	699b      	ldr	r3, [r3, #24]
878051e6:	461a      	mov	r2, r3
878051e8:	f7ff fe0a 	bl	87804e00 <lcd_drawpoint>
878051ec:	693b      	ldr	r3, [r7, #16]
878051ee:	b29a      	uxth	r2, r3
878051f0:	69bb      	ldr	r3, [r7, #24]
878051f2:	b29b      	uxth	r3, r3
878051f4:	1ad3      	subs	r3, r2, r3
878051f6:	b298      	uxth	r0, r3
878051f8:	68fb      	ldr	r3, [r7, #12]
878051fa:	b29a      	uxth	r2, r3
878051fc:	69fb      	ldr	r3, [r7, #28]
878051fe:	b29b      	uxth	r3, r3
87805200:	1ad3      	subs	r3, r2, r3
87805202:	b299      	uxth	r1, r3
87805204:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805208:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780520c:	699b      	ldr	r3, [r3, #24]
8780520e:	461a      	mov	r2, r3
87805210:	f7ff fdf6 	bl	87804e00 <lcd_drawpoint>
87805214:	69fb      	ldr	r3, [r7, #28]
87805216:	b29a      	uxth	r2, r3
87805218:	693b      	ldr	r3, [r7, #16]
8780521a:	b29b      	uxth	r3, r3
8780521c:	4413      	add	r3, r2
8780521e:	b298      	uxth	r0, r3
87805220:	68fb      	ldr	r3, [r7, #12]
87805222:	b29a      	uxth	r2, r3
87805224:	69bb      	ldr	r3, [r7, #24]
87805226:	b29b      	uxth	r3, r3
87805228:	1ad3      	subs	r3, r2, r3
8780522a:	b299      	uxth	r1, r3
8780522c:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805230:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805234:	699b      	ldr	r3, [r3, #24]
87805236:	461a      	mov	r2, r3
87805238:	f7ff fde2 	bl	87804e00 <lcd_drawpoint>
8780523c:	69bb      	ldr	r3, [r7, #24]
8780523e:	b29a      	uxth	r2, r3
87805240:	693b      	ldr	r3, [r7, #16]
87805242:	b29b      	uxth	r3, r3
87805244:	4413      	add	r3, r2
87805246:	b298      	uxth	r0, r3
87805248:	68fb      	ldr	r3, [r7, #12]
8780524a:	b29a      	uxth	r2, r3
8780524c:	69fb      	ldr	r3, [r7, #28]
8780524e:	b29b      	uxth	r3, r3
87805250:	1ad3      	subs	r3, r2, r3
87805252:	b299      	uxth	r1, r3
87805254:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805258:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780525c:	699b      	ldr	r3, [r3, #24]
8780525e:	461a      	mov	r2, r3
87805260:	f7ff fdce 	bl	87804e00 <lcd_drawpoint>
87805264:	697b      	ldr	r3, [r7, #20]
87805266:	2b00      	cmp	r3, #0
87805268:	da06      	bge.n	87805278 <lcd_draw_Circle+0x180>
8780526a:	69fb      	ldr	r3, [r7, #28]
8780526c:	005a      	lsls	r2, r3, #1
8780526e:	697b      	ldr	r3, [r7, #20]
87805270:	4413      	add	r3, r2
87805272:	3303      	adds	r3, #3
87805274:	617b      	str	r3, [r7, #20]
87805276:	e00a      	b.n	8780528e <lcd_draw_Circle+0x196>
87805278:	69fa      	ldr	r2, [r7, #28]
8780527a:	69bb      	ldr	r3, [r7, #24]
8780527c:	1ad3      	subs	r3, r2, r3
8780527e:	005a      	lsls	r2, r3, #1
87805280:	697b      	ldr	r3, [r7, #20]
87805282:	4413      	add	r3, r2
87805284:	3305      	adds	r3, #5
87805286:	617b      	str	r3, [r7, #20]
87805288:	69bb      	ldr	r3, [r7, #24]
8780528a:	3b01      	subs	r3, #1
8780528c:	61bb      	str	r3, [r7, #24]
8780528e:	69fb      	ldr	r3, [r7, #28]
87805290:	3301      	adds	r3, #1
87805292:	61fb      	str	r3, [r7, #28]
87805294:	69ba      	ldr	r2, [r7, #24]
87805296:	69fb      	ldr	r3, [r7, #28]
87805298:	429a      	cmp	r2, r3
8780529a:	f73f af43 	bgt.w	87805124 <lcd_draw_Circle+0x2c>
8780529e:	3720      	adds	r7, #32
878052a0:	46bd      	mov	sp, r7
878052a2:	bd80      	pop	{r7, pc}

878052a4 <lcd_showchar>:
878052a4:	b590      	push	{r4, r7, lr}
878052a6:	b085      	sub	sp, #20
878052a8:	af00      	add	r7, sp, #0
878052aa:	4604      	mov	r4, r0
878052ac:	4608      	mov	r0, r1
878052ae:	4611      	mov	r1, r2
878052b0:	461a      	mov	r2, r3
878052b2:	4623      	mov	r3, r4
878052b4:	80fb      	strh	r3, [r7, #6]
878052b6:	4603      	mov	r3, r0
878052b8:	80bb      	strh	r3, [r7, #4]
878052ba:	460b      	mov	r3, r1
878052bc:	70fb      	strb	r3, [r7, #3]
878052be:	4613      	mov	r3, r2
878052c0:	70bb      	strb	r3, [r7, #2]
878052c2:	88bb      	ldrh	r3, [r7, #4]
878052c4:	817b      	strh	r3, [r7, #10]
878052c6:	78bb      	ldrb	r3, [r7, #2]
878052c8:	08db      	lsrs	r3, r3, #3
878052ca:	b2db      	uxtb	r3, r3
878052cc:	461a      	mov	r2, r3
878052ce:	78bb      	ldrb	r3, [r7, #2]
878052d0:	f003 0307 	and.w	r3, r3, #7
878052d4:	b2db      	uxtb	r3, r3
878052d6:	2b00      	cmp	r3, #0
878052d8:	bf14      	ite	ne
878052da:	2301      	movne	r3, #1
878052dc:	2300      	moveq	r3, #0
878052de:	b2db      	uxtb	r3, r3
878052e0:	4413      	add	r3, r2
878052e2:	b2da      	uxtb	r2, r3
878052e4:	78bb      	ldrb	r3, [r7, #2]
878052e6:	085b      	lsrs	r3, r3, #1
878052e8:	b2db      	uxtb	r3, r3
878052ea:	fb12 f303 	smulbb	r3, r2, r3
878052ee:	727b      	strb	r3, [r7, #9]
878052f0:	78fb      	ldrb	r3, [r7, #3]
878052f2:	3b20      	subs	r3, #32
878052f4:	70fb      	strb	r3, [r7, #3]
878052f6:	2300      	movs	r3, #0
878052f8:	737b      	strb	r3, [r7, #13]
878052fa:	e08f      	b.n	8780541c <lcd_showchar+0x178>
878052fc:	78bb      	ldrb	r3, [r7, #2]
878052fe:	2b0c      	cmp	r3, #12
87805300:	d10f      	bne.n	87805322 <lcd_showchar+0x7e>
87805302:	78fb      	ldrb	r3, [r7, #3]
87805304:	7b78      	ldrb	r0, [r7, #13]
87805306:	f247 224c 	movw	r2, #29260	; 0x724c
8780530a:	f2c8 7280 	movt	r2, #34688	; 0x8780
8780530e:	4619      	mov	r1, r3
87805310:	008b      	lsls	r3, r1, #2
87805312:	4619      	mov	r1, r3
87805314:	008b      	lsls	r3, r1, #2
87805316:	1a5b      	subs	r3, r3, r1
87805318:	4403      	add	r3, r0
8780531a:	4413      	add	r3, r2
8780531c:	781b      	ldrb	r3, [r3, #0]
8780531e:	73fb      	strb	r3, [r7, #15]
87805320:	e02f      	b.n	87805382 <lcd_showchar+0xde>
87805322:	78bb      	ldrb	r3, [r7, #2]
87805324:	2b10      	cmp	r3, #16
87805326:	d10b      	bne.n	87805340 <lcd_showchar+0x9c>
87805328:	78f9      	ldrb	r1, [r7, #3]
8780532a:	7b7a      	ldrb	r2, [r7, #13]
8780532c:	f247 63c0 	movw	r3, #30400	; 0x76c0
87805330:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805334:	0109      	lsls	r1, r1, #4
87805336:	440a      	add	r2, r1
87805338:	4413      	add	r3, r2
8780533a:	781b      	ldrb	r3, [r3, #0]
8780533c:	73fb      	strb	r3, [r7, #15]
8780533e:	e020      	b.n	87805382 <lcd_showchar+0xde>
87805340:	78bb      	ldrb	r3, [r7, #2]
87805342:	2b18      	cmp	r3, #24
87805344:	d10d      	bne.n	87805362 <lcd_showchar+0xbe>
87805346:	78fb      	ldrb	r3, [r7, #3]
87805348:	7b79      	ldrb	r1, [r7, #13]
8780534a:	f647 42b0 	movw	r2, #31920	; 0x7cb0
8780534e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87805352:	009b      	lsls	r3, r3, #2
87805354:	00d8      	lsls	r0, r3, #3
87805356:	4403      	add	r3, r0
87805358:	440b      	add	r3, r1
8780535a:	4413      	add	r3, r2
8780535c:	781b      	ldrb	r3, [r3, #0]
8780535e:	73fb      	strb	r3, [r7, #15]
87805360:	e00f      	b.n	87805382 <lcd_showchar+0xde>
87805362:	78bb      	ldrb	r3, [r7, #2]
87805364:	2b20      	cmp	r3, #32
87805366:	d10b      	bne.n	87805380 <lcd_showchar+0xdc>
87805368:	78f9      	ldrb	r1, [r7, #3]
8780536a:	7b7a      	ldrb	r2, [r7, #13]
8780536c:	f648 230c 	movw	r3, #35340	; 0x8a0c
87805370:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805374:	01c9      	lsls	r1, r1, #7
87805376:	440a      	add	r2, r1
87805378:	4413      	add	r3, r2
8780537a:	781b      	ldrb	r3, [r3, #0]
8780537c:	73fb      	strb	r3, [r7, #15]
8780537e:	e000      	b.n	87805382 <lcd_showchar+0xde>
87805380:	e051      	b.n	87805426 <lcd_showchar+0x182>
87805382:	2300      	movs	r3, #0
87805384:	73bb      	strb	r3, [r7, #14]
87805386:	e043      	b.n	87805410 <lcd_showchar+0x16c>
87805388:	7bfb      	ldrb	r3, [r7, #15]
8780538a:	b25b      	sxtb	r3, r3
8780538c:	2b00      	cmp	r3, #0
8780538e:	da0a      	bge.n	878053a6 <lcd_showchar+0x102>
87805390:	f64c 031c 	movw	r3, #51228	; 0xc81c
87805394:	f2c8 7380 	movt	r3, #34688	; 0x8780
87805398:	699a      	ldr	r2, [r3, #24]
8780539a:	88b9      	ldrh	r1, [r7, #4]
8780539c:	88fb      	ldrh	r3, [r7, #6]
8780539e:	4618      	mov	r0, r3
878053a0:	f7ff fd2e 	bl	87804e00 <lcd_drawpoint>
878053a4:	e00d      	b.n	878053c2 <lcd_showchar+0x11e>
878053a6:	f897 3020 	ldrb.w	r3, [r7, #32]
878053aa:	2b00      	cmp	r3, #0
878053ac:	d109      	bne.n	878053c2 <lcd_showchar+0x11e>
878053ae:	f64c 031c 	movw	r3, #51228	; 0xc81c
878053b2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878053b6:	69da      	ldr	r2, [r3, #28]
878053b8:	88b9      	ldrh	r1, [r7, #4]
878053ba:	88fb      	ldrh	r3, [r7, #6]
878053bc:	4618      	mov	r0, r3
878053be:	f7ff fd1f 	bl	87804e00 <lcd_drawpoint>
878053c2:	7bfb      	ldrb	r3, [r7, #15]
878053c4:	005b      	lsls	r3, r3, #1
878053c6:	73fb      	strb	r3, [r7, #15]
878053c8:	88bb      	ldrh	r3, [r7, #4]
878053ca:	3301      	adds	r3, #1
878053cc:	80bb      	strh	r3, [r7, #4]
878053ce:	f64c 031c 	movw	r3, #51228	; 0xc81c
878053d2:	f2c8 7380 	movt	r3, #34688	; 0x8780
878053d6:	881b      	ldrh	r3, [r3, #0]
878053d8:	88ba      	ldrh	r2, [r7, #4]
878053da:	429a      	cmp	r2, r3
878053dc:	d300      	bcc.n	878053e0 <lcd_showchar+0x13c>
878053de:	e022      	b.n	87805426 <lcd_showchar+0x182>
878053e0:	88ba      	ldrh	r2, [r7, #4]
878053e2:	897b      	ldrh	r3, [r7, #10]
878053e4:	1ad2      	subs	r2, r2, r3
878053e6:	78bb      	ldrb	r3, [r7, #2]
878053e8:	429a      	cmp	r2, r3
878053ea:	d10e      	bne.n	8780540a <lcd_showchar+0x166>
878053ec:	897b      	ldrh	r3, [r7, #10]
878053ee:	80bb      	strh	r3, [r7, #4]
878053f0:	88fb      	ldrh	r3, [r7, #6]
878053f2:	3301      	adds	r3, #1
878053f4:	80fb      	strh	r3, [r7, #6]
878053f6:	f64c 031c 	movw	r3, #51228	; 0xc81c
878053fa:	f2c8 7380 	movt	r3, #34688	; 0x8780
878053fe:	885b      	ldrh	r3, [r3, #2]
87805400:	88fa      	ldrh	r2, [r7, #6]
87805402:	429a      	cmp	r2, r3
87805404:	d300      	bcc.n	87805408 <lcd_showchar+0x164>
87805406:	e00e      	b.n	87805426 <lcd_showchar+0x182>
87805408:	e005      	b.n	87805416 <lcd_showchar+0x172>
8780540a:	7bbb      	ldrb	r3, [r7, #14]
8780540c:	3301      	adds	r3, #1
8780540e:	73bb      	strb	r3, [r7, #14]
87805410:	7bbb      	ldrb	r3, [r7, #14]
87805412:	2b07      	cmp	r3, #7
87805414:	d9b8      	bls.n	87805388 <lcd_showchar+0xe4>
87805416:	7b7b      	ldrb	r3, [r7, #13]
87805418:	3301      	adds	r3, #1
8780541a:	737b      	strb	r3, [r7, #13]
8780541c:	7b7a      	ldrb	r2, [r7, #13]
8780541e:	7a7b      	ldrb	r3, [r7, #9]
87805420:	429a      	cmp	r2, r3
87805422:	f4ff af6b 	bcc.w	878052fc <lcd_showchar+0x58>
87805426:	3714      	adds	r7, #20
87805428:	46bd      	mov	sp, r7
8780542a:	bd90      	pop	{r4, r7, pc}

8780542c <lcd_pow>:
8780542c:	b480      	push	{r7}
8780542e:	b085      	sub	sp, #20
87805430:	af00      	add	r7, sp, #0
87805432:	4603      	mov	r3, r0
87805434:	460a      	mov	r2, r1
87805436:	71fb      	strb	r3, [r7, #7]
87805438:	4613      	mov	r3, r2
8780543a:	71bb      	strb	r3, [r7, #6]
8780543c:	2301      	movs	r3, #1
8780543e:	60fb      	str	r3, [r7, #12]
87805440:	e004      	b.n	8780544c <lcd_pow+0x20>
87805442:	79fa      	ldrb	r2, [r7, #7]
87805444:	68fb      	ldr	r3, [r7, #12]
87805446:	fb02 f303 	mul.w	r3, r2, r3
8780544a:	60fb      	str	r3, [r7, #12]
8780544c:	79bb      	ldrb	r3, [r7, #6]
8780544e:	1e5a      	subs	r2, r3, #1
87805450:	71ba      	strb	r2, [r7, #6]
87805452:	2b00      	cmp	r3, #0
87805454:	d1f5      	bne.n	87805442 <lcd_pow+0x16>
87805456:	68fb      	ldr	r3, [r7, #12]
87805458:	4618      	mov	r0, r3
8780545a:	3714      	adds	r7, #20
8780545c:	46bd      	mov	sp, r7
8780545e:	f85d 7b04 	ldr.w	r7, [sp], #4
87805462:	4770      	bx	lr

87805464 <lcd_shownum>:
87805464:	b590      	push	{r4, r7, lr}
87805466:	b089      	sub	sp, #36	; 0x24
87805468:	af02      	add	r7, sp, #8
8780546a:	60ba      	str	r2, [r7, #8]
8780546c:	461a      	mov	r2, r3
8780546e:	4603      	mov	r3, r0
87805470:	81fb      	strh	r3, [r7, #14]
87805472:	460b      	mov	r3, r1
87805474:	81bb      	strh	r3, [r7, #12]
87805476:	4613      	mov	r3, r2
87805478:	71fb      	strb	r3, [r7, #7]
8780547a:	2300      	movs	r3, #0
8780547c:	75bb      	strb	r3, [r7, #22]
8780547e:	2300      	movs	r3, #0
87805480:	75fb      	strb	r3, [r7, #23]
87805482:	e05b      	b.n	8780553c <lcd_shownum+0xd8>
87805484:	79fa      	ldrb	r2, [r7, #7]
87805486:	7dfb      	ldrb	r3, [r7, #23]
87805488:	1ad3      	subs	r3, r2, r3
8780548a:	b2db      	uxtb	r3, r3
8780548c:	3b01      	subs	r3, #1
8780548e:	b2db      	uxtb	r3, r3
87805490:	4619      	mov	r1, r3
87805492:	200a      	movs	r0, #10
87805494:	f7ff ffca 	bl	8780542c <lcd_pow>
87805498:	4603      	mov	r3, r0
8780549a:	4619      	mov	r1, r3
8780549c:	68b8      	ldr	r0, [r7, #8]
8780549e:	f001 fac7 	bl	87806a30 <__aeabi_uidiv>
878054a2:	4603      	mov	r3, r0
878054a4:	461a      	mov	r2, r3
878054a6:	f64c 43cd 	movw	r3, #52429	; 0xcccd
878054aa:	f6cc 43cc 	movt	r3, #52428	; 0xcccc
878054ae:	fba2 3403 	umull	r3, r4, r2, r3
878054b2:	08e3      	lsrs	r3, r4, #3
878054b4:	005b      	lsls	r3, r3, #1
878054b6:	0099      	lsls	r1, r3, #2
878054b8:	440b      	add	r3, r1
878054ba:	1ad3      	subs	r3, r2, r3
878054bc:	757b      	strb	r3, [r7, #21]
878054be:	7dbb      	ldrb	r3, [r7, #22]
878054c0:	2b00      	cmp	r3, #0
878054c2:	d120      	bne.n	87805506 <lcd_shownum+0xa2>
878054c4:	7dfa      	ldrb	r2, [r7, #23]
878054c6:	79fb      	ldrb	r3, [r7, #7]
878054c8:	3b01      	subs	r3, #1
878054ca:	429a      	cmp	r2, r3
878054cc:	da1b      	bge.n	87805506 <lcd_shownum+0xa2>
878054ce:	7d7b      	ldrb	r3, [r7, #21]
878054d0:	2b00      	cmp	r3, #0
878054d2:	d116      	bne.n	87805502 <lcd_shownum+0x9e>
878054d4:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
878054d8:	085b      	lsrs	r3, r3, #1
878054da:	b2db      	uxtb	r3, r3
878054dc:	b29a      	uxth	r2, r3
878054de:	7dfb      	ldrb	r3, [r7, #23]
878054e0:	b29b      	uxth	r3, r3
878054e2:	fb12 f303 	smulbb	r3, r2, r3
878054e6:	b29a      	uxth	r2, r3
878054e8:	89fb      	ldrh	r3, [r7, #14]
878054ea:	4413      	add	r3, r2
878054ec:	b298      	uxth	r0, r3
878054ee:	f897 2028 	ldrb.w	r2, [r7, #40]	; 0x28
878054f2:	89b9      	ldrh	r1, [r7, #12]
878054f4:	2300      	movs	r3, #0
878054f6:	9300      	str	r3, [sp, #0]
878054f8:	4613      	mov	r3, r2
878054fa:	2220      	movs	r2, #32
878054fc:	f7ff fed2 	bl	878052a4 <lcd_showchar>
87805500:	e019      	b.n	87805536 <lcd_shownum+0xd2>
87805502:	2301      	movs	r3, #1
87805504:	75bb      	strb	r3, [r7, #22]
87805506:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
8780550a:	085b      	lsrs	r3, r3, #1
8780550c:	b2db      	uxtb	r3, r3
8780550e:	b29a      	uxth	r2, r3
87805510:	7dfb      	ldrb	r3, [r7, #23]
87805512:	b29b      	uxth	r3, r3
87805514:	fb12 f303 	smulbb	r3, r2, r3
87805518:	b29a      	uxth	r2, r3
8780551a:	89fb      	ldrh	r3, [r7, #14]
8780551c:	4413      	add	r3, r2
8780551e:	b298      	uxth	r0, r3
87805520:	7d7b      	ldrb	r3, [r7, #21]
87805522:	3330      	adds	r3, #48	; 0x30
87805524:	b2da      	uxtb	r2, r3
87805526:	f897 4028 	ldrb.w	r4, [r7, #40]	; 0x28
8780552a:	89b9      	ldrh	r1, [r7, #12]
8780552c:	2300      	movs	r3, #0
8780552e:	9300      	str	r3, [sp, #0]
87805530:	4623      	mov	r3, r4
87805532:	f7ff feb7 	bl	878052a4 <lcd_showchar>
87805536:	7dfb      	ldrb	r3, [r7, #23]
87805538:	3301      	adds	r3, #1
8780553a:	75fb      	strb	r3, [r7, #23]
8780553c:	7dfa      	ldrb	r2, [r7, #23]
8780553e:	79fb      	ldrb	r3, [r7, #7]
87805540:	429a      	cmp	r2, r3
87805542:	d39f      	bcc.n	87805484 <lcd_shownum+0x20>
87805544:	371c      	adds	r7, #28
87805546:	46bd      	mov	sp, r7
87805548:	bd90      	pop	{r4, r7, pc}
8780554a:	bf00      	nop

8780554c <lcd_showxnum>:
8780554c:	b590      	push	{r4, r7, lr}
8780554e:	b089      	sub	sp, #36	; 0x24
87805550:	af02      	add	r7, sp, #8
87805552:	60ba      	str	r2, [r7, #8]
87805554:	461a      	mov	r2, r3
87805556:	4603      	mov	r3, r0
87805558:	81fb      	strh	r3, [r7, #14]
8780555a:	460b      	mov	r3, r1
8780555c:	81bb      	strh	r3, [r7, #12]
8780555e:	4613      	mov	r3, r2
87805560:	71fb      	strb	r3, [r7, #7]
87805562:	2300      	movs	r3, #0
87805564:	75bb      	strb	r3, [r7, #22]
87805566:	2300      	movs	r3, #0
87805568:	75fb      	strb	r3, [r7, #23]
8780556a:	e083      	b.n	87805674 <lcd_showxnum+0x128>
8780556c:	79fa      	ldrb	r2, [r7, #7]
8780556e:	7dfb      	ldrb	r3, [r7, #23]
87805570:	1ad3      	subs	r3, r2, r3
87805572:	b2db      	uxtb	r3, r3
87805574:	3b01      	subs	r3, #1
87805576:	b2db      	uxtb	r3, r3
87805578:	4619      	mov	r1, r3
8780557a:	200a      	movs	r0, #10
8780557c:	f7ff ff56 	bl	8780542c <lcd_pow>
87805580:	4603      	mov	r3, r0
87805582:	4619      	mov	r1, r3
87805584:	68b8      	ldr	r0, [r7, #8]
87805586:	f001 fa53 	bl	87806a30 <__aeabi_uidiv>
8780558a:	4603      	mov	r3, r0
8780558c:	461a      	mov	r2, r3
8780558e:	f64c 43cd 	movw	r3, #52429	; 0xcccd
87805592:	f6cc 43cc 	movt	r3, #52428	; 0xcccc
87805596:	fba2 3403 	umull	r3, r4, r2, r3
8780559a:	08e3      	lsrs	r3, r4, #3
8780559c:	005b      	lsls	r3, r3, #1
8780559e:	0099      	lsls	r1, r3, #2
878055a0:	440b      	add	r3, r1
878055a2:	1ad3      	subs	r3, r2, r3
878055a4:	757b      	strb	r3, [r7, #21]
878055a6:	7dbb      	ldrb	r3, [r7, #22]
878055a8:	2b00      	cmp	r3, #0
878055aa:	d144      	bne.n	87805636 <lcd_showxnum+0xea>
878055ac:	7dfa      	ldrb	r2, [r7, #23]
878055ae:	79fb      	ldrb	r3, [r7, #7]
878055b0:	3b01      	subs	r3, #1
878055b2:	429a      	cmp	r2, r3
878055b4:	da3f      	bge.n	87805636 <lcd_showxnum+0xea>
878055b6:	7d7b      	ldrb	r3, [r7, #21]
878055b8:	2b00      	cmp	r3, #0
878055ba:	d13a      	bne.n	87805632 <lcd_showxnum+0xe6>
878055bc:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
878055c0:	b25b      	sxtb	r3, r3
878055c2:	2b00      	cmp	r3, #0
878055c4:	da1a      	bge.n	878055fc <lcd_showxnum+0xb0>
878055c6:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
878055ca:	085b      	lsrs	r3, r3, #1
878055cc:	b2db      	uxtb	r3, r3
878055ce:	b29a      	uxth	r2, r3
878055d0:	7dfb      	ldrb	r3, [r7, #23]
878055d2:	b29b      	uxth	r3, r3
878055d4:	fb12 f303 	smulbb	r3, r2, r3
878055d8:	b29a      	uxth	r2, r3
878055da:	89fb      	ldrh	r3, [r7, #14]
878055dc:	4413      	add	r3, r2
878055de:	b298      	uxth	r0, r3
878055e0:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
878055e4:	f003 0301 	and.w	r3, r3, #1
878055e8:	b2db      	uxtb	r3, r3
878055ea:	f897 2028 	ldrb.w	r2, [r7, #40]	; 0x28
878055ee:	89b9      	ldrh	r1, [r7, #12]
878055f0:	9300      	str	r3, [sp, #0]
878055f2:	4613      	mov	r3, r2
878055f4:	2230      	movs	r2, #48	; 0x30
878055f6:	f7ff fe55 	bl	878052a4 <lcd_showchar>
878055fa:	e038      	b.n	8780566e <lcd_showxnum+0x122>
878055fc:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
87805600:	085b      	lsrs	r3, r3, #1
87805602:	b2db      	uxtb	r3, r3
87805604:	b29a      	uxth	r2, r3
87805606:	7dfb      	ldrb	r3, [r7, #23]
87805608:	b29b      	uxth	r3, r3
8780560a:	fb12 f303 	smulbb	r3, r2, r3
8780560e:	b29a      	uxth	r2, r3
87805610:	89fb      	ldrh	r3, [r7, #14]
87805612:	4413      	add	r3, r2
87805614:	b298      	uxth	r0, r3
87805616:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
8780561a:	f003 0301 	and.w	r3, r3, #1
8780561e:	b2db      	uxtb	r3, r3
87805620:	f897 2028 	ldrb.w	r2, [r7, #40]	; 0x28
87805624:	89b9      	ldrh	r1, [r7, #12]
87805626:	9300      	str	r3, [sp, #0]
87805628:	4613      	mov	r3, r2
8780562a:	2220      	movs	r2, #32
8780562c:	f7ff fe3a 	bl	878052a4 <lcd_showchar>
87805630:	e01d      	b.n	8780566e <lcd_showxnum+0x122>
87805632:	2301      	movs	r3, #1
87805634:	75bb      	strb	r3, [r7, #22]
87805636:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
8780563a:	085b      	lsrs	r3, r3, #1
8780563c:	b2db      	uxtb	r3, r3
8780563e:	b29a      	uxth	r2, r3
87805640:	7dfb      	ldrb	r3, [r7, #23]
87805642:	b29b      	uxth	r3, r3
87805644:	fb12 f303 	smulbb	r3, r2, r3
87805648:	b29a      	uxth	r2, r3
8780564a:	89fb      	ldrh	r3, [r7, #14]
8780564c:	4413      	add	r3, r2
8780564e:	b298      	uxth	r0, r3
87805650:	7d7b      	ldrb	r3, [r7, #21]
87805652:	3330      	adds	r3, #48	; 0x30
87805654:	b2da      	uxtb	r2, r3
87805656:	f897 302c 	ldrb.w	r3, [r7, #44]	; 0x2c
8780565a:	f003 0301 	and.w	r3, r3, #1
8780565e:	b2db      	uxtb	r3, r3
87805660:	f897 4028 	ldrb.w	r4, [r7, #40]	; 0x28
87805664:	89b9      	ldrh	r1, [r7, #12]
87805666:	9300      	str	r3, [sp, #0]
87805668:	4623      	mov	r3, r4
8780566a:	f7ff fe1b 	bl	878052a4 <lcd_showchar>
8780566e:	7dfb      	ldrb	r3, [r7, #23]
87805670:	3301      	adds	r3, #1
87805672:	75fb      	strb	r3, [r7, #23]
87805674:	7dfa      	ldrb	r2, [r7, #23]
87805676:	79fb      	ldrb	r3, [r7, #7]
87805678:	429a      	cmp	r2, r3
8780567a:	f4ff af77 	bcc.w	8780556c <lcd_showxnum+0x20>
8780567e:	371c      	adds	r7, #28
87805680:	46bd      	mov	sp, r7
87805682:	bd90      	pop	{r4, r7, pc}

87805684 <lcd_show_string>:
87805684:	b590      	push	{r4, r7, lr}
87805686:	b087      	sub	sp, #28
87805688:	af02      	add	r7, sp, #8
8780568a:	4604      	mov	r4, r0
8780568c:	4608      	mov	r0, r1
8780568e:	4611      	mov	r1, r2
87805690:	461a      	mov	r2, r3
87805692:	4623      	mov	r3, r4
87805694:	80fb      	strh	r3, [r7, #6]
87805696:	4603      	mov	r3, r0
87805698:	80bb      	strh	r3, [r7, #4]
8780569a:	460b      	mov	r3, r1
8780569c:	807b      	strh	r3, [r7, #2]
8780569e:	4613      	mov	r3, r2
878056a0:	803b      	strh	r3, [r7, #0]
878056a2:	88fb      	ldrh	r3, [r7, #6]
878056a4:	73fb      	strb	r3, [r7, #15]
878056a6:	887a      	ldrh	r2, [r7, #2]
878056a8:	88fb      	ldrh	r3, [r7, #6]
878056aa:	4413      	add	r3, r2
878056ac:	807b      	strh	r3, [r7, #2]
878056ae:	883a      	ldrh	r2, [r7, #0]
878056b0:	88bb      	ldrh	r3, [r7, #4]
878056b2:	4413      	add	r3, r2
878056b4:	803b      	strh	r3, [r7, #0]
878056b6:	e026      	b.n	87805706 <lcd_show_string+0x82>
878056b8:	88fa      	ldrh	r2, [r7, #6]
878056ba:	887b      	ldrh	r3, [r7, #2]
878056bc:	429a      	cmp	r2, r3
878056be:	d307      	bcc.n	878056d0 <lcd_show_string+0x4c>
878056c0:	7bfb      	ldrb	r3, [r7, #15]
878056c2:	80fb      	strh	r3, [r7, #6]
878056c4:	f897 3020 	ldrb.w	r3, [r7, #32]
878056c8:	b29a      	uxth	r2, r3
878056ca:	88bb      	ldrh	r3, [r7, #4]
878056cc:	4413      	add	r3, r2
878056ce:	80bb      	strh	r3, [r7, #4]
878056d0:	88ba      	ldrh	r2, [r7, #4]
878056d2:	883b      	ldrh	r3, [r7, #0]
878056d4:	429a      	cmp	r2, r3
878056d6:	d300      	bcc.n	878056da <lcd_show_string+0x56>
878056d8:	e01d      	b.n	87805716 <lcd_show_string+0x92>
878056da:	6a7b      	ldr	r3, [r7, #36]	; 0x24
878056dc:	781a      	ldrb	r2, [r3, #0]
878056de:	f897 4020 	ldrb.w	r4, [r7, #32]
878056e2:	88b9      	ldrh	r1, [r7, #4]
878056e4:	88f8      	ldrh	r0, [r7, #6]
878056e6:	2300      	movs	r3, #0
878056e8:	9300      	str	r3, [sp, #0]
878056ea:	4623      	mov	r3, r4
878056ec:	f7ff fdda 	bl	878052a4 <lcd_showchar>
878056f0:	f897 3020 	ldrb.w	r3, [r7, #32]
878056f4:	085b      	lsrs	r3, r3, #1
878056f6:	b2db      	uxtb	r3, r3
878056f8:	b29a      	uxth	r2, r3
878056fa:	88fb      	ldrh	r3, [r7, #6]
878056fc:	4413      	add	r3, r2
878056fe:	80fb      	strh	r3, [r7, #6]
87805700:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805702:	3301      	adds	r3, #1
87805704:	627b      	str	r3, [r7, #36]	; 0x24
87805706:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805708:	781b      	ldrb	r3, [r3, #0]
8780570a:	2b7e      	cmp	r3, #126	; 0x7e
8780570c:	d803      	bhi.n	87805716 <lcd_show_string+0x92>
8780570e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805710:	781b      	ldrb	r3, [r3, #0]
87805712:	2b1f      	cmp	r3, #31
87805714:	d8d0      	bhi.n	878056b8 <lcd_show_string+0x34>
87805716:	3714      	adds	r7, #20
87805718:	46bd      	mov	sp, r7
8780571a:	bd90      	pop	{r4, r7, pc}

8780571c <rtc_init>:
8780571c:	b580      	push	{r7, lr}
8780571e:	af00      	add	r7, sp, #0
87805720:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87805724:	f2c0 220c 	movt	r2, #524	; 0x20c
87805728:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780572c:	f2c0 230c 	movt	r3, #524	; 0x20c
87805730:	685b      	ldr	r3, [r3, #4]
87805732:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
87805736:	f443 7380 	orr.w	r3, r3, #256	; 0x100
8780573a:	6053      	str	r3, [r2, #4]
8780573c:	f000 f802 	bl	87805744 <rtc_enable>
87805740:	bd80      	pop	{r7, pc}
87805742:	bf00      	nop

87805744 <rtc_enable>:
87805744:	b480      	push	{r7}
87805746:	af00      	add	r7, sp, #0
87805748:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780574c:	f2c0 230c 	movt	r3, #524	; 0x20c
87805750:	f44f 4240 	mov.w	r2, #49152	; 0xc000
87805754:	f2c0 220c 	movt	r2, #524	; 0x20c
87805758:	6b92      	ldr	r2, [r2, #56]	; 0x38
8780575a:	f042 0201 	orr.w	r2, r2, #1
8780575e:	639a      	str	r2, [r3, #56]	; 0x38
87805760:	bf00      	nop
87805762:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805766:	f2c0 230c 	movt	r3, #524	; 0x20c
8780576a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
8780576c:	f003 0301 	and.w	r3, r3, #1
87805770:	2b00      	cmp	r3, #0
87805772:	d0f6      	beq.n	87805762 <rtc_enable+0x1e>
87805774:	46bd      	mov	sp, r7
87805776:	f85d 7b04 	ldr.w	r7, [sp], #4
8780577a:	4770      	bx	lr

8780577c <rtc_disable>:
8780577c:	b480      	push	{r7}
8780577e:	af00      	add	r7, sp, #0
87805780:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805784:	f2c0 230c 	movt	r3, #524	; 0x20c
87805788:	f44f 4240 	mov.w	r2, #49152	; 0xc000
8780578c:	f2c0 220c 	movt	r2, #524	; 0x20c
87805790:	6b92      	ldr	r2, [r2, #56]	; 0x38
87805792:	f022 0201 	bic.w	r2, r2, #1
87805796:	639a      	str	r2, [r3, #56]	; 0x38
87805798:	bf00      	nop
8780579a:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780579e:	f2c0 230c 	movt	r3, #524	; 0x20c
878057a2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
878057a4:	f003 0301 	and.w	r3, r3, #1
878057a8:	2b00      	cmp	r3, #0
878057aa:	d1f6      	bne.n	8780579a <rtc_disable+0x1e>
878057ac:	46bd      	mov	sp, r7
878057ae:	f85d 7b04 	ldr.w	r7, [sp], #4
878057b2:	4770      	bx	lr

878057b4 <rtc_isleapyear>:
878057b4:	b490      	push	{r4, r7}
878057b6:	b084      	sub	sp, #16
878057b8:	af00      	add	r7, sp, #0
878057ba:	4603      	mov	r3, r0
878057bc:	80fb      	strh	r3, [r7, #6]
878057be:	2300      	movs	r3, #0
878057c0:	73fb      	strb	r3, [r7, #15]
878057c2:	88fa      	ldrh	r2, [r7, #6]
878057c4:	f248 531f 	movw	r3, #34079	; 0x851f
878057c8:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
878057cc:	fba2 3403 	umull	r3, r4, r2, r3
878057d0:	09e3      	lsrs	r3, r4, #7
878057d2:	011b      	lsls	r3, r3, #4
878057d4:	0099      	lsls	r1, r3, #2
878057d6:	440b      	add	r3, r1
878057d8:	0099      	lsls	r1, r3, #2
878057da:	440b      	add	r3, r1
878057dc:	1ad3      	subs	r3, r2, r3
878057de:	b29b      	uxth	r3, r3
878057e0:	2b00      	cmp	r3, #0
878057e2:	d102      	bne.n	878057ea <rtc_isleapyear+0x36>
878057e4:	2301      	movs	r3, #1
878057e6:	73fb      	strb	r3, [r7, #15]
878057e8:	e01b      	b.n	87805822 <rtc_isleapyear+0x6e>
878057ea:	88fb      	ldrh	r3, [r7, #6]
878057ec:	f003 0303 	and.w	r3, r3, #3
878057f0:	b29b      	uxth	r3, r3
878057f2:	2b00      	cmp	r3, #0
878057f4:	d113      	bne.n	8780581e <rtc_isleapyear+0x6a>
878057f6:	88fa      	ldrh	r2, [r7, #6]
878057f8:	f248 531f 	movw	r3, #34079	; 0x851f
878057fc:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
87805800:	fba2 3403 	umull	r3, r4, r2, r3
87805804:	0963      	lsrs	r3, r4, #5
87805806:	009b      	lsls	r3, r3, #2
87805808:	0099      	lsls	r1, r3, #2
8780580a:	440b      	add	r3, r1
8780580c:	0099      	lsls	r1, r3, #2
8780580e:	440b      	add	r3, r1
87805810:	1ad3      	subs	r3, r2, r3
87805812:	b29b      	uxth	r3, r3
87805814:	2b00      	cmp	r3, #0
87805816:	d002      	beq.n	8780581e <rtc_isleapyear+0x6a>
87805818:	2301      	movs	r3, #1
8780581a:	73fb      	strb	r3, [r7, #15]
8780581c:	e001      	b.n	87805822 <rtc_isleapyear+0x6e>
8780581e:	2300      	movs	r3, #0
87805820:	73fb      	strb	r3, [r7, #15]
87805822:	7bfb      	ldrb	r3, [r7, #15]
87805824:	4618      	mov	r0, r3
87805826:	3710      	adds	r7, #16
87805828:	46bd      	mov	sp, r7
8780582a:	bc90      	pop	{r4, r7}
8780582c:	4770      	bx	lr
8780582e:	bf00      	nop

87805830 <rtc_coverdate_to_seconds>:
87805830:	b5b0      	push	{r4, r5, r7, lr}
87805832:	b08c      	sub	sp, #48	; 0x30
87805834:	af00      	add	r7, sp, #0
87805836:	6078      	str	r0, [r7, #4]
87805838:	2300      	movs	r3, #0
8780583a:	85fb      	strh	r3, [r7, #46]	; 0x2e
8780583c:	2300      	movs	r3, #0
8780583e:	627b      	str	r3, [r7, #36]	; 0x24
87805840:	2300      	movs	r3, #0
87805842:	62bb      	str	r3, [r7, #40]	; 0x28
87805844:	f64b 138c 	movw	r3, #47500	; 0xb98c
87805848:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780584c:	f107 0408 	add.w	r4, r7, #8
87805850:	461d      	mov	r5, r3
87805852:	6828      	ldr	r0, [r5, #0]
87805854:	6869      	ldr	r1, [r5, #4]
87805856:	68aa      	ldr	r2, [r5, #8]
87805858:	68eb      	ldr	r3, [r5, #12]
8780585a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
8780585c:	6928      	ldr	r0, [r5, #16]
8780585e:	6969      	ldr	r1, [r5, #20]
87805860:	c403      	stmia	r4!, {r0, r1}
87805862:	8b2b      	ldrh	r3, [r5, #24]
87805864:	8023      	strh	r3, [r4, #0]
87805866:	f240 73b2 	movw	r3, #1970	; 0x7b2
8780586a:	85fb      	strh	r3, [r7, #46]	; 0x2e
8780586c:	e010      	b.n	87805890 <rtc_coverdate_to_seconds+0x60>
8780586e:	6abb      	ldr	r3, [r7, #40]	; 0x28
87805870:	f203 136d 	addw	r3, r3, #365	; 0x16d
87805874:	62bb      	str	r3, [r7, #40]	; 0x28
87805876:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
87805878:	4618      	mov	r0, r3
8780587a:	f7ff ff9b 	bl	878057b4 <rtc_isleapyear>
8780587e:	4603      	mov	r3, r0
87805880:	2b00      	cmp	r3, #0
87805882:	d002      	beq.n	8780588a <rtc_coverdate_to_seconds+0x5a>
87805884:	6abb      	ldr	r3, [r7, #40]	; 0x28
87805886:	3301      	adds	r3, #1
87805888:	62bb      	str	r3, [r7, #40]	; 0x28
8780588a:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
8780588c:	3301      	adds	r3, #1
8780588e:	85fb      	strh	r3, [r7, #46]	; 0x2e
87805890:	687b      	ldr	r3, [r7, #4]
87805892:	881b      	ldrh	r3, [r3, #0]
87805894:	8dfa      	ldrh	r2, [r7, #46]	; 0x2e
87805896:	429a      	cmp	r2, r3
87805898:	d3e9      	bcc.n	8780586e <rtc_coverdate_to_seconds+0x3e>
8780589a:	687b      	ldr	r3, [r7, #4]
8780589c:	789b      	ldrb	r3, [r3, #2]
8780589e:	005b      	lsls	r3, r3, #1
878058a0:	f107 0230 	add.w	r2, r7, #48	; 0x30
878058a4:	4413      	add	r3, r2
878058a6:	f833 3c28 	ldrh.w	r3, [r3, #-40]
878058aa:	461a      	mov	r2, r3
878058ac:	6abb      	ldr	r3, [r7, #40]	; 0x28
878058ae:	4413      	add	r3, r2
878058b0:	62bb      	str	r3, [r7, #40]	; 0x28
878058b2:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
878058b4:	4618      	mov	r0, r3
878058b6:	f7ff ff7d 	bl	878057b4 <rtc_isleapyear>
878058ba:	4603      	mov	r3, r0
878058bc:	2b00      	cmp	r3, #0
878058be:	d006      	beq.n	878058ce <rtc_coverdate_to_seconds+0x9e>
878058c0:	687b      	ldr	r3, [r7, #4]
878058c2:	789b      	ldrb	r3, [r3, #2]
878058c4:	2b02      	cmp	r3, #2
878058c6:	d902      	bls.n	878058ce <rtc_coverdate_to_seconds+0x9e>
878058c8:	6abb      	ldr	r3, [r7, #40]	; 0x28
878058ca:	3301      	adds	r3, #1
878058cc:	62bb      	str	r3, [r7, #40]	; 0x28
878058ce:	687b      	ldr	r3, [r7, #4]
878058d0:	78db      	ldrb	r3, [r3, #3]
878058d2:	461a      	mov	r2, r3
878058d4:	6abb      	ldr	r3, [r7, #40]	; 0x28
878058d6:	4413      	add	r3, r2
878058d8:	3b01      	subs	r3, #1
878058da:	62bb      	str	r3, [r7, #40]	; 0x28
878058dc:	6aba      	ldr	r2, [r7, #40]	; 0x28
878058de:	f44f 43a3 	mov.w	r3, #20864	; 0x5180
878058e2:	f2c0 0301 	movt	r3, #1
878058e6:	fb03 f102 	mul.w	r1, r3, r2
878058ea:	687b      	ldr	r3, [r7, #4]
878058ec:	791b      	ldrb	r3, [r3, #4]
878058ee:	461a      	mov	r2, r3
878058f0:	0113      	lsls	r3, r2, #4
878058f2:	461a      	mov	r2, r3
878058f4:	0113      	lsls	r3, r2, #4
878058f6:	1a9b      	subs	r3, r3, r2
878058f8:	011a      	lsls	r2, r3, #4
878058fa:	1ad3      	subs	r3, r2, r3
878058fc:	18ca      	adds	r2, r1, r3
878058fe:	687b      	ldr	r3, [r7, #4]
87805900:	795b      	ldrb	r3, [r3, #5]
87805902:	009b      	lsls	r3, r3, #2
87805904:	0119      	lsls	r1, r3, #4
87805906:	1acb      	subs	r3, r1, r3
87805908:	4413      	add	r3, r2
8780590a:	687a      	ldr	r2, [r7, #4]
8780590c:	7992      	ldrb	r2, [r2, #6]
8780590e:	4413      	add	r3, r2
87805910:	627b      	str	r3, [r7, #36]	; 0x24
87805912:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805914:	4618      	mov	r0, r3
87805916:	3730      	adds	r7, #48	; 0x30
87805918:	46bd      	mov	sp, r7
8780591a:	bdb0      	pop	{r4, r5, r7, pc}

8780591c <rtc_setdatetime>:
8780591c:	b580      	push	{r7, lr}
8780591e:	b084      	sub	sp, #16
87805920:	af00      	add	r7, sp, #0
87805922:	6078      	str	r0, [r7, #4]
87805924:	2300      	movs	r3, #0
87805926:	60fb      	str	r3, [r7, #12]
87805928:	f44f 4340 	mov.w	r3, #49152	; 0xc000
8780592c:	f2c0 230c 	movt	r3, #524	; 0x20c
87805930:	6b9b      	ldr	r3, [r3, #56]	; 0x38
87805932:	60bb      	str	r3, [r7, #8]
87805934:	f7ff ff22 	bl	8780577c <rtc_disable>
87805938:	6878      	ldr	r0, [r7, #4]
8780593a:	f7ff ff79 	bl	87805830 <rtc_coverdate_to_seconds>
8780593e:	60f8      	str	r0, [r7, #12]
87805940:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805944:	f2c0 230c 	movt	r3, #524	; 0x20c
87805948:	68fa      	ldr	r2, [r7, #12]
8780594a:	0c52      	lsrs	r2, r2, #17
8780594c:	651a      	str	r2, [r3, #80]	; 0x50
8780594e:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805952:	f2c0 230c 	movt	r3, #524	; 0x20c
87805956:	68fa      	ldr	r2, [r7, #12]
87805958:	03d2      	lsls	r2, r2, #15
8780595a:	655a      	str	r2, [r3, #84]	; 0x54
8780595c:	68bb      	ldr	r3, [r7, #8]
8780595e:	f003 0301 	and.w	r3, r3, #1
87805962:	2b00      	cmp	r3, #0
87805964:	d001      	beq.n	8780596a <rtc_setdatetime+0x4e>
87805966:	f7ff feed 	bl	87805744 <rtc_enable>
8780596a:	3710      	adds	r7, #16
8780596c:	46bd      	mov	sp, r7
8780596e:	bd80      	pop	{r7, pc}

87805970 <rtc_convertseconds_to_datetime>:
87805970:	b590      	push	{r4, r7, lr}
87805972:	b08b      	sub	sp, #44	; 0x2c
87805974:	af00      	add	r7, sp, #0
87805976:	6078      	str	r0, [r7, #4]
87805978:	6039      	str	r1, [r7, #0]
8780597a:	f64b 12a8 	movw	r2, #47528	; 0xb9a8
8780597e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87805982:	f107 0308 	add.w	r3, r7, #8
87805986:	4614      	mov	r4, r2
87805988:	6820      	ldr	r0, [r4, #0]
8780598a:	6861      	ldr	r1, [r4, #4]
8780598c:	68a2      	ldr	r2, [r4, #8]
8780598e:	c307      	stmia	r3!, {r0, r1, r2}
87805990:	7b22      	ldrb	r2, [r4, #12]
87805992:	701a      	strb	r2, [r3, #0]
87805994:	687b      	ldr	r3, [r7, #4]
87805996:	61bb      	str	r3, [r7, #24]
87805998:	69ba      	ldr	r2, [r7, #24]
8780599a:	f244 5307 	movw	r3, #17671	; 0x4507
8780599e:	f2cc 232e 	movt	r3, #49710	; 0xc22e
878059a2:	fba2 3403 	umull	r3, r4, r2, r3
878059a6:	0c23      	lsrs	r3, r4, #16
878059a8:	3301      	adds	r3, #1
878059aa:	623b      	str	r3, [r7, #32]
878059ac:	69ba      	ldr	r2, [r7, #24]
878059ae:	f244 5307 	movw	r3, #17671	; 0x4507
878059b2:	f2cc 232e 	movt	r3, #49710	; 0xc22e
878059b6:	fba2 3403 	umull	r3, r4, r2, r3
878059ba:	0c21      	lsrs	r1, r4, #16
878059bc:	f44f 43a3 	mov.w	r3, #20864	; 0x5180
878059c0:	f2c0 0301 	movt	r3, #1
878059c4:	fb03 f301 	mul.w	r3, r3, r1
878059c8:	1ad3      	subs	r3, r2, r3
878059ca:	61bb      	str	r3, [r7, #24]
878059cc:	69ba      	ldr	r2, [r7, #24]
878059ce:	f24b 33c5 	movw	r3, #46021	; 0xb3c5
878059d2:	f2c9 13a2 	movt	r3, #37282	; 0x91a2
878059d6:	fba2 3403 	umull	r3, r4, r2, r3
878059da:	0ae3      	lsrs	r3, r4, #11
878059dc:	b2da      	uxtb	r2, r3
878059de:	683b      	ldr	r3, [r7, #0]
878059e0:	711a      	strb	r2, [r3, #4]
878059e2:	69b9      	ldr	r1, [r7, #24]
878059e4:	f24b 33c5 	movw	r3, #46021	; 0xb3c5
878059e8:	f2c9 13a2 	movt	r3, #37282	; 0x91a2
878059ec:	fba1 3403 	umull	r3, r4, r1, r3
878059f0:	0ae3      	lsrs	r3, r4, #11
878059f2:	461a      	mov	r2, r3
878059f4:	0113      	lsls	r3, r2, #4
878059f6:	461a      	mov	r2, r3
878059f8:	0113      	lsls	r3, r2, #4
878059fa:	1a9b      	subs	r3, r3, r2
878059fc:	011a      	lsls	r2, r3, #4
878059fe:	1ad2      	subs	r2, r2, r3
87805a00:	1a8b      	subs	r3, r1, r2
87805a02:	61bb      	str	r3, [r7, #24]
87805a04:	69ba      	ldr	r2, [r7, #24]
87805a06:	f648 0389 	movw	r3, #34953	; 0x8889
87805a0a:	f6c8 0388 	movt	r3, #34952	; 0x8888
87805a0e:	fba2 3403 	umull	r3, r4, r2, r3
87805a12:	0963      	lsrs	r3, r4, #5
87805a14:	b2da      	uxtb	r2, r3
87805a16:	683b      	ldr	r3, [r7, #0]
87805a18:	715a      	strb	r2, [r3, #5]
87805a1a:	69b9      	ldr	r1, [r7, #24]
87805a1c:	f648 0389 	movw	r3, #34953	; 0x8889
87805a20:	f6c8 0388 	movt	r3, #34952	; 0x8888
87805a24:	fba1 3403 	umull	r3, r4, r1, r3
87805a28:	0963      	lsrs	r3, r4, #5
87805a2a:	461a      	mov	r2, r3
87805a2c:	0093      	lsls	r3, r2, #2
87805a2e:	461a      	mov	r2, r3
87805a30:	0113      	lsls	r3, r2, #4
87805a32:	1a9b      	subs	r3, r3, r2
87805a34:	1acb      	subs	r3, r1, r3
87805a36:	b2da      	uxtb	r2, r3
87805a38:	683b      	ldr	r3, [r7, #0]
87805a3a:	719a      	strb	r2, [r3, #6]
87805a3c:	f240 136d 	movw	r3, #365	; 0x16d
87805a40:	83fb      	strh	r3, [r7, #30]
87805a42:	683b      	ldr	r3, [r7, #0]
87805a44:	f240 72b2 	movw	r2, #1970	; 0x7b2
87805a48:	801a      	strh	r2, [r3, #0]
87805a4a:	e018      	b.n	87805a7e <rtc_convertseconds_to_datetime+0x10e>
87805a4c:	8bfb      	ldrh	r3, [r7, #30]
87805a4e:	6a3a      	ldr	r2, [r7, #32]
87805a50:	1ad3      	subs	r3, r2, r3
87805a52:	623b      	str	r3, [r7, #32]
87805a54:	683b      	ldr	r3, [r7, #0]
87805a56:	881b      	ldrh	r3, [r3, #0]
87805a58:	3301      	adds	r3, #1
87805a5a:	b29a      	uxth	r2, r3
87805a5c:	683b      	ldr	r3, [r7, #0]
87805a5e:	801a      	strh	r2, [r3, #0]
87805a60:	683b      	ldr	r3, [r7, #0]
87805a62:	881b      	ldrh	r3, [r3, #0]
87805a64:	4618      	mov	r0, r3
87805a66:	f7ff fea5 	bl	878057b4 <rtc_isleapyear>
87805a6a:	4603      	mov	r3, r0
87805a6c:	2b00      	cmp	r3, #0
87805a6e:	d103      	bne.n	87805a78 <rtc_convertseconds_to_datetime+0x108>
87805a70:	f240 136d 	movw	r3, #365	; 0x16d
87805a74:	83fb      	strh	r3, [r7, #30]
87805a76:	e002      	b.n	87805a7e <rtc_convertseconds_to_datetime+0x10e>
87805a78:	f44f 73b7 	mov.w	r3, #366	; 0x16e
87805a7c:	83fb      	strh	r3, [r7, #30]
87805a7e:	8bfa      	ldrh	r2, [r7, #30]
87805a80:	6a3b      	ldr	r3, [r7, #32]
87805a82:	429a      	cmp	r2, r3
87805a84:	d3e2      	bcc.n	87805a4c <rtc_convertseconds_to_datetime+0xdc>
87805a86:	683b      	ldr	r3, [r7, #0]
87805a88:	881b      	ldrh	r3, [r3, #0]
87805a8a:	4618      	mov	r0, r3
87805a8c:	f7ff fe92 	bl	878057b4 <rtc_isleapyear>
87805a90:	4603      	mov	r3, r0
87805a92:	2b00      	cmp	r3, #0
87805a94:	d001      	beq.n	87805a9a <rtc_convertseconds_to_datetime+0x12a>
87805a96:	231d      	movs	r3, #29
87805a98:	72bb      	strb	r3, [r7, #10]
87805a9a:	2301      	movs	r3, #1
87805a9c:	627b      	str	r3, [r7, #36]	; 0x24
87805a9e:	e019      	b.n	87805ad4 <rtc_convertseconds_to_datetime+0x164>
87805aa0:	f107 0208 	add.w	r2, r7, #8
87805aa4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805aa6:	4413      	add	r3, r2
87805aa8:	781b      	ldrb	r3, [r3, #0]
87805aaa:	461a      	mov	r2, r3
87805aac:	6a3b      	ldr	r3, [r7, #32]
87805aae:	429a      	cmp	r2, r3
87805ab0:	d304      	bcc.n	87805abc <rtc_convertseconds_to_datetime+0x14c>
87805ab2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805ab4:	b2da      	uxtb	r2, r3
87805ab6:	683b      	ldr	r3, [r7, #0]
87805ab8:	709a      	strb	r2, [r3, #2]
87805aba:	e00e      	b.n	87805ada <rtc_convertseconds_to_datetime+0x16a>
87805abc:	f107 0208 	add.w	r2, r7, #8
87805ac0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805ac2:	4413      	add	r3, r2
87805ac4:	781b      	ldrb	r3, [r3, #0]
87805ac6:	461a      	mov	r2, r3
87805ac8:	6a3b      	ldr	r3, [r7, #32]
87805aca:	1a9b      	subs	r3, r3, r2
87805acc:	623b      	str	r3, [r7, #32]
87805ace:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805ad0:	3301      	adds	r3, #1
87805ad2:	627b      	str	r3, [r7, #36]	; 0x24
87805ad4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
87805ad6:	2b0c      	cmp	r3, #12
87805ad8:	d9e2      	bls.n	87805aa0 <rtc_convertseconds_to_datetime+0x130>
87805ada:	6a3b      	ldr	r3, [r7, #32]
87805adc:	b2da      	uxtb	r2, r3
87805ade:	683b      	ldr	r3, [r7, #0]
87805ae0:	70da      	strb	r2, [r3, #3]
87805ae2:	372c      	adds	r7, #44	; 0x2c
87805ae4:	46bd      	mov	sp, r7
87805ae6:	bd90      	pop	{r4, r7, pc}

87805ae8 <rtc_getseconds>:
87805ae8:	b480      	push	{r7}
87805aea:	b083      	sub	sp, #12
87805aec:	af00      	add	r7, sp, #0
87805aee:	2300      	movs	r3, #0
87805af0:	607b      	str	r3, [r7, #4]
87805af2:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805af6:	f2c0 230c 	movt	r3, #524	; 0x20c
87805afa:	6d1b      	ldr	r3, [r3, #80]	; 0x50
87805afc:	045a      	lsls	r2, r3, #17
87805afe:	f44f 4340 	mov.w	r3, #49152	; 0xc000
87805b02:	f2c0 230c 	movt	r3, #524	; 0x20c
87805b06:	6d5b      	ldr	r3, [r3, #84]	; 0x54
87805b08:	0bdb      	lsrs	r3, r3, #15
87805b0a:	4313      	orrs	r3, r2
87805b0c:	607b      	str	r3, [r7, #4]
87805b0e:	687b      	ldr	r3, [r7, #4]
87805b10:	4618      	mov	r0, r3
87805b12:	370c      	adds	r7, #12
87805b14:	46bd      	mov	sp, r7
87805b16:	f85d 7b04 	ldr.w	r7, [sp], #4
87805b1a:	4770      	bx	lr

87805b1c <rtc_getdatetime>:
87805b1c:	b580      	push	{r7, lr}
87805b1e:	b084      	sub	sp, #16
87805b20:	af00      	add	r7, sp, #0
87805b22:	6078      	str	r0, [r7, #4]
87805b24:	2300      	movs	r3, #0
87805b26:	60fb      	str	r3, [r7, #12]
87805b28:	f7ff ffde 	bl	87805ae8 <rtc_getseconds>
87805b2c:	60f8      	str	r0, [r7, #12]
87805b2e:	6879      	ldr	r1, [r7, #4]
87805b30:	68f8      	ldr	r0, [r7, #12]
87805b32:	f7ff ff1d 	bl	87805970 <rtc_convertseconds_to_datetime>
87805b36:	3710      	adds	r7, #16
87805b38:	46bd      	mov	sp, r7
87805b3a:	bd80      	pop	{r7, pc}

87805b3c <i2c_init>:
87805b3c:	b480      	push	{r7}
87805b3e:	b083      	sub	sp, #12
87805b40:	af00      	add	r7, sp, #0
87805b42:	6078      	str	r0, [r7, #4]
87805b44:	687b      	ldr	r3, [r7, #4]
87805b46:	891b      	ldrh	r3, [r3, #8]
87805b48:	b29b      	uxth	r3, r3
87805b4a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
87805b4e:	b29a      	uxth	r2, r3
87805b50:	687b      	ldr	r3, [r7, #4]
87805b52:	811a      	strh	r2, [r3, #8]
87805b54:	687b      	ldr	r3, [r7, #4]
87805b56:	2215      	movs	r2, #21
87805b58:	809a      	strh	r2, [r3, #4]
87805b5a:	687b      	ldr	r3, [r7, #4]
87805b5c:	891b      	ldrh	r3, [r3, #8]
87805b5e:	b29b      	uxth	r3, r3
87805b60:	f043 0380 	orr.w	r3, r3, #128	; 0x80
87805b64:	b29a      	uxth	r2, r3
87805b66:	687b      	ldr	r3, [r7, #4]
87805b68:	811a      	strh	r2, [r3, #8]
87805b6a:	370c      	adds	r7, #12
87805b6c:	46bd      	mov	sp, r7
87805b6e:	f85d 7b04 	ldr.w	r7, [sp], #4
87805b72:	4770      	bx	lr

87805b74 <i2c_master_repeated_start>:
87805b74:	b480      	push	{r7}
87805b76:	b085      	sub	sp, #20
87805b78:	af00      	add	r7, sp, #0
87805b7a:	60f8      	str	r0, [r7, #12]
87805b7c:	460b      	mov	r3, r1
87805b7e:	607a      	str	r2, [r7, #4]
87805b80:	72fb      	strb	r3, [r7, #11]
87805b82:	68fb      	ldr	r3, [r7, #12]
87805b84:	899b      	ldrh	r3, [r3, #12]
87805b86:	b29b      	uxth	r3, r3
87805b88:	f003 0320 	and.w	r3, r3, #32
87805b8c:	2b00      	cmp	r3, #0
87805b8e:	d008      	beq.n	87805ba2 <i2c_master_repeated_start+0x2e>
87805b90:	68fb      	ldr	r3, [r7, #12]
87805b92:	891b      	ldrh	r3, [r3, #8]
87805b94:	b29b      	uxth	r3, r3
87805b96:	f003 0320 	and.w	r3, r3, #32
87805b9a:	2b00      	cmp	r3, #0
87805b9c:	d101      	bne.n	87805ba2 <i2c_master_repeated_start+0x2e>
87805b9e:	2301      	movs	r3, #1
87805ba0:	e016      	b.n	87805bd0 <i2c_master_repeated_start+0x5c>
87805ba2:	68fb      	ldr	r3, [r7, #12]
87805ba4:	891b      	ldrh	r3, [r3, #8]
87805ba6:	b29b      	uxth	r3, r3
87805ba8:	f043 0314 	orr.w	r3, r3, #20
87805bac:	b29a      	uxth	r2, r3
87805bae:	68fb      	ldr	r3, [r7, #12]
87805bb0:	811a      	strh	r2, [r3, #8]
87805bb2:	7afb      	ldrb	r3, [r7, #11]
87805bb4:	b29b      	uxth	r3, r3
87805bb6:	005b      	lsls	r3, r3, #1
87805bb8:	b29a      	uxth	r2, r3
87805bba:	687b      	ldr	r3, [r7, #4]
87805bbc:	2b01      	cmp	r3, #1
87805bbe:	d101      	bne.n	87805bc4 <i2c_master_repeated_start+0x50>
87805bc0:	2301      	movs	r3, #1
87805bc2:	e000      	b.n	87805bc6 <i2c_master_repeated_start+0x52>
87805bc4:	2300      	movs	r3, #0
87805bc6:	4313      	orrs	r3, r2
87805bc8:	b29a      	uxth	r2, r3
87805bca:	68fb      	ldr	r3, [r7, #12]
87805bcc:	821a      	strh	r2, [r3, #16]
87805bce:	2300      	movs	r3, #0
87805bd0:	4618      	mov	r0, r3
87805bd2:	3714      	adds	r7, #20
87805bd4:	46bd      	mov	sp, r7
87805bd6:	f85d 7b04 	ldr.w	r7, [sp], #4
87805bda:	4770      	bx	lr

87805bdc <i2c_master_start>:
87805bdc:	b480      	push	{r7}
87805bde:	b085      	sub	sp, #20
87805be0:	af00      	add	r7, sp, #0
87805be2:	60f8      	str	r0, [r7, #12]
87805be4:	460b      	mov	r3, r1
87805be6:	607a      	str	r2, [r7, #4]
87805be8:	72fb      	strb	r3, [r7, #11]
87805bea:	68fb      	ldr	r3, [r7, #12]
87805bec:	899b      	ldrh	r3, [r3, #12]
87805bee:	b29b      	uxth	r3, r3
87805bf0:	f003 0320 	and.w	r3, r3, #32
87805bf4:	2b00      	cmp	r3, #0
87805bf6:	d001      	beq.n	87805bfc <i2c_master_start+0x20>
87805bf8:	2301      	movs	r3, #1
87805bfa:	e016      	b.n	87805c2a <i2c_master_start+0x4e>
87805bfc:	68fb      	ldr	r3, [r7, #12]
87805bfe:	891b      	ldrh	r3, [r3, #8]
87805c00:	b29b      	uxth	r3, r3
87805c02:	f043 0330 	orr.w	r3, r3, #48	; 0x30
87805c06:	b29a      	uxth	r2, r3
87805c08:	68fb      	ldr	r3, [r7, #12]
87805c0a:	811a      	strh	r2, [r3, #8]
87805c0c:	7afb      	ldrb	r3, [r7, #11]
87805c0e:	b29b      	uxth	r3, r3
87805c10:	005b      	lsls	r3, r3, #1
87805c12:	b29a      	uxth	r2, r3
87805c14:	687b      	ldr	r3, [r7, #4]
87805c16:	2b01      	cmp	r3, #1
87805c18:	d101      	bne.n	87805c1e <i2c_master_start+0x42>
87805c1a:	2301      	movs	r3, #1
87805c1c:	e000      	b.n	87805c20 <i2c_master_start+0x44>
87805c1e:	2300      	movs	r3, #0
87805c20:	4313      	orrs	r3, r2
87805c22:	b29a      	uxth	r2, r3
87805c24:	68fb      	ldr	r3, [r7, #12]
87805c26:	821a      	strh	r2, [r3, #16]
87805c28:	2300      	movs	r3, #0
87805c2a:	4618      	mov	r0, r3
87805c2c:	3714      	adds	r7, #20
87805c2e:	46bd      	mov	sp, r7
87805c30:	f85d 7b04 	ldr.w	r7, [sp], #4
87805c34:	4770      	bx	lr
87805c36:	bf00      	nop

87805c38 <i2c_check_and_clear_error>:
87805c38:	b480      	push	{r7}
87805c3a:	b083      	sub	sp, #12
87805c3c:	af00      	add	r7, sp, #0
87805c3e:	6078      	str	r0, [r7, #4]
87805c40:	6039      	str	r1, [r7, #0]
87805c42:	683b      	ldr	r3, [r7, #0]
87805c44:	f003 0310 	and.w	r3, r3, #16
87805c48:	2b00      	cmp	r3, #0
87805c4a:	d019      	beq.n	87805c80 <i2c_check_and_clear_error+0x48>
87805c4c:	687b      	ldr	r3, [r7, #4]
87805c4e:	899b      	ldrh	r3, [r3, #12]
87805c50:	b29b      	uxth	r3, r3
87805c52:	f023 0310 	bic.w	r3, r3, #16
87805c56:	b29a      	uxth	r2, r3
87805c58:	687b      	ldr	r3, [r7, #4]
87805c5a:	819a      	strh	r2, [r3, #12]
87805c5c:	687b      	ldr	r3, [r7, #4]
87805c5e:	891b      	ldrh	r3, [r3, #8]
87805c60:	b29b      	uxth	r3, r3
87805c62:	f023 0380 	bic.w	r3, r3, #128	; 0x80
87805c66:	b29a      	uxth	r2, r3
87805c68:	687b      	ldr	r3, [r7, #4]
87805c6a:	811a      	strh	r2, [r3, #8]
87805c6c:	687b      	ldr	r3, [r7, #4]
87805c6e:	891b      	ldrh	r3, [r3, #8]
87805c70:	b29b      	uxth	r3, r3
87805c72:	f043 0380 	orr.w	r3, r3, #128	; 0x80
87805c76:	b29a      	uxth	r2, r3
87805c78:	687b      	ldr	r3, [r7, #4]
87805c7a:	811a      	strh	r2, [r3, #8]
87805c7c:	2304      	movs	r3, #4
87805c7e:	e007      	b.n	87805c90 <i2c_check_and_clear_error+0x58>
87805c80:	683b      	ldr	r3, [r7, #0]
87805c82:	f003 0301 	and.w	r3, r3, #1
87805c86:	2b00      	cmp	r3, #0
87805c88:	d001      	beq.n	87805c8e <i2c_check_and_clear_error+0x56>
87805c8a:	2303      	movs	r3, #3
87805c8c:	e000      	b.n	87805c90 <i2c_check_and_clear_error+0x58>
87805c8e:	2300      	movs	r3, #0
87805c90:	4618      	mov	r0, r3
87805c92:	370c      	adds	r7, #12
87805c94:	46bd      	mov	sp, r7
87805c96:	f85d 7b04 	ldr.w	r7, [sp], #4
87805c9a:	4770      	bx	lr

87805c9c <i2c_master_stop>:
87805c9c:	b480      	push	{r7}
87805c9e:	b085      	sub	sp, #20
87805ca0:	af00      	add	r7, sp, #0
87805ca2:	6078      	str	r0, [r7, #4]
87805ca4:	f64f 73ff 	movw	r3, #65535	; 0xffff
87805ca8:	81fb      	strh	r3, [r7, #14]
87805caa:	687b      	ldr	r3, [r7, #4]
87805cac:	891b      	ldrh	r3, [r3, #8]
87805cae:	b29b      	uxth	r3, r3
87805cb0:	f023 0338 	bic.w	r3, r3, #56	; 0x38
87805cb4:	b29a      	uxth	r2, r3
87805cb6:	687b      	ldr	r3, [r7, #4]
87805cb8:	811a      	strh	r2, [r3, #8]
87805cba:	e007      	b.n	87805ccc <i2c_master_stop+0x30>
87805cbc:	89fb      	ldrh	r3, [r7, #14]
87805cbe:	3b01      	subs	r3, #1
87805cc0:	81fb      	strh	r3, [r7, #14]
87805cc2:	89fb      	ldrh	r3, [r7, #14]
87805cc4:	2b00      	cmp	r3, #0
87805cc6:	d101      	bne.n	87805ccc <i2c_master_stop+0x30>
87805cc8:	2305      	movs	r3, #5
87805cca:	e007      	b.n	87805cdc <i2c_master_stop+0x40>
87805ccc:	687b      	ldr	r3, [r7, #4]
87805cce:	899b      	ldrh	r3, [r3, #12]
87805cd0:	b29b      	uxth	r3, r3
87805cd2:	f003 0320 	and.w	r3, r3, #32
87805cd6:	2b00      	cmp	r3, #0
87805cd8:	d1f0      	bne.n	87805cbc <i2c_master_stop+0x20>
87805cda:	2300      	movs	r3, #0
87805cdc:	4618      	mov	r0, r3
87805cde:	3714      	adds	r7, #20
87805ce0:	46bd      	mov	sp, r7
87805ce2:	f85d 7b04 	ldr.w	r7, [sp], #4
87805ce6:	4770      	bx	lr

87805ce8 <i2c_master_write>:
87805ce8:	b580      	push	{r7, lr}
87805cea:	b084      	sub	sp, #16
87805cec:	af00      	add	r7, sp, #0
87805cee:	60f8      	str	r0, [r7, #12]
87805cf0:	60b9      	str	r1, [r7, #8]
87805cf2:	607a      	str	r2, [r7, #4]
87805cf4:	bf00      	nop
87805cf6:	68fb      	ldr	r3, [r7, #12]
87805cf8:	899b      	ldrh	r3, [r3, #12]
87805cfa:	b29b      	uxth	r3, r3
87805cfc:	f003 0380 	and.w	r3, r3, #128	; 0x80
87805d00:	2b00      	cmp	r3, #0
87805d02:	d0f8      	beq.n	87805cf6 <i2c_master_write+0xe>
87805d04:	68fb      	ldr	r3, [r7, #12]
87805d06:	899b      	ldrh	r3, [r3, #12]
87805d08:	b29b      	uxth	r3, r3
87805d0a:	f023 0302 	bic.w	r3, r3, #2
87805d0e:	b29a      	uxth	r2, r3
87805d10:	68fb      	ldr	r3, [r7, #12]
87805d12:	819a      	strh	r2, [r3, #12]
87805d14:	68fb      	ldr	r3, [r7, #12]
87805d16:	891b      	ldrh	r3, [r3, #8]
87805d18:	b29b      	uxth	r3, r3
87805d1a:	f043 0310 	orr.w	r3, r3, #16
87805d1e:	b29a      	uxth	r2, r3
87805d20:	68fb      	ldr	r3, [r7, #12]
87805d22:	811a      	strh	r2, [r3, #8]
87805d24:	e021      	b.n	87805d6a <i2c_master_write+0x82>
87805d26:	68bb      	ldr	r3, [r7, #8]
87805d28:	1c5a      	adds	r2, r3, #1
87805d2a:	60ba      	str	r2, [r7, #8]
87805d2c:	781b      	ldrb	r3, [r3, #0]
87805d2e:	b29a      	uxth	r2, r3
87805d30:	68fb      	ldr	r3, [r7, #12]
87805d32:	821a      	strh	r2, [r3, #16]
87805d34:	bf00      	nop
87805d36:	68fb      	ldr	r3, [r7, #12]
87805d38:	899b      	ldrh	r3, [r3, #12]
87805d3a:	b29b      	uxth	r3, r3
87805d3c:	f003 0302 	and.w	r3, r3, #2
87805d40:	2b00      	cmp	r3, #0
87805d42:	d0f8      	beq.n	87805d36 <i2c_master_write+0x4e>
87805d44:	68fb      	ldr	r3, [r7, #12]
87805d46:	899b      	ldrh	r3, [r3, #12]
87805d48:	b29b      	uxth	r3, r3
87805d4a:	f023 0302 	bic.w	r3, r3, #2
87805d4e:	b29a      	uxth	r2, r3
87805d50:	68fb      	ldr	r3, [r7, #12]
87805d52:	819a      	strh	r2, [r3, #12]
87805d54:	68fb      	ldr	r3, [r7, #12]
87805d56:	899b      	ldrh	r3, [r3, #12]
87805d58:	b29b      	uxth	r3, r3
87805d5a:	4619      	mov	r1, r3
87805d5c:	68f8      	ldr	r0, [r7, #12]
87805d5e:	f7ff ff6b 	bl	87805c38 <i2c_check_and_clear_error>
87805d62:	4603      	mov	r3, r0
87805d64:	2b00      	cmp	r3, #0
87805d66:	d000      	beq.n	87805d6a <i2c_master_write+0x82>
87805d68:	e004      	b.n	87805d74 <i2c_master_write+0x8c>
87805d6a:	687b      	ldr	r3, [r7, #4]
87805d6c:	1e5a      	subs	r2, r3, #1
87805d6e:	607a      	str	r2, [r7, #4]
87805d70:	2b00      	cmp	r3, #0
87805d72:	d1d8      	bne.n	87805d26 <i2c_master_write+0x3e>
87805d74:	68fb      	ldr	r3, [r7, #12]
87805d76:	899b      	ldrh	r3, [r3, #12]
87805d78:	b29b      	uxth	r3, r3
87805d7a:	f023 0302 	bic.w	r3, r3, #2
87805d7e:	b29a      	uxth	r2, r3
87805d80:	68fb      	ldr	r3, [r7, #12]
87805d82:	819a      	strh	r2, [r3, #12]
87805d84:	68f8      	ldr	r0, [r7, #12]
87805d86:	f7ff ff89 	bl	87805c9c <i2c_master_stop>
87805d8a:	3710      	adds	r7, #16
87805d8c:	46bd      	mov	sp, r7
87805d8e:	bd80      	pop	{r7, pc}

87805d90 <i2c_master_read>:
87805d90:	b580      	push	{r7, lr}
87805d92:	b086      	sub	sp, #24
87805d94:	af00      	add	r7, sp, #0
87805d96:	60f8      	str	r0, [r7, #12]
87805d98:	60b9      	str	r1, [r7, #8]
87805d9a:	607a      	str	r2, [r7, #4]
87805d9c:	2300      	movs	r3, #0
87805d9e:	75fb      	strb	r3, [r7, #23]
87805da0:	7dfb      	ldrb	r3, [r7, #23]
87805da2:	b2db      	uxtb	r3, r3
87805da4:	3301      	adds	r3, #1
87805da6:	b2db      	uxtb	r3, r3
87805da8:	75fb      	strb	r3, [r7, #23]
87805daa:	bf00      	nop
87805dac:	68fb      	ldr	r3, [r7, #12]
87805dae:	899b      	ldrh	r3, [r3, #12]
87805db0:	b29b      	uxth	r3, r3
87805db2:	f003 0380 	and.w	r3, r3, #128	; 0x80
87805db6:	2b00      	cmp	r3, #0
87805db8:	d0f8      	beq.n	87805dac <i2c_master_read+0x1c>
87805dba:	68fb      	ldr	r3, [r7, #12]
87805dbc:	899b      	ldrh	r3, [r3, #12]
87805dbe:	b29b      	uxth	r3, r3
87805dc0:	f023 0302 	bic.w	r3, r3, #2
87805dc4:	b29a      	uxth	r2, r3
87805dc6:	68fb      	ldr	r3, [r7, #12]
87805dc8:	819a      	strh	r2, [r3, #12]
87805dca:	68fb      	ldr	r3, [r7, #12]
87805dcc:	891b      	ldrh	r3, [r3, #8]
87805dce:	b29b      	uxth	r3, r3
87805dd0:	f023 0318 	bic.w	r3, r3, #24
87805dd4:	b29a      	uxth	r2, r3
87805dd6:	68fb      	ldr	r3, [r7, #12]
87805dd8:	811a      	strh	r2, [r3, #8]
87805dda:	687b      	ldr	r3, [r7, #4]
87805ddc:	2b01      	cmp	r3, #1
87805dde:	d107      	bne.n	87805df0 <i2c_master_read+0x60>
87805de0:	68fb      	ldr	r3, [r7, #12]
87805de2:	891b      	ldrh	r3, [r3, #8]
87805de4:	b29b      	uxth	r3, r3
87805de6:	f043 0308 	orr.w	r3, r3, #8
87805dea:	b29a      	uxth	r2, r3
87805dec:	68fb      	ldr	r3, [r7, #12]
87805dee:	811a      	strh	r2, [r3, #8]
87805df0:	68fb      	ldr	r3, [r7, #12]
87805df2:	8a1b      	ldrh	r3, [r3, #16]
87805df4:	b29b      	uxth	r3, r3
87805df6:	b2db      	uxtb	r3, r3
87805df8:	75fb      	strb	r3, [r7, #23]
87805dfa:	e028      	b.n	87805e4e <i2c_master_read+0xbe>
87805dfc:	bf00      	nop
87805dfe:	68fb      	ldr	r3, [r7, #12]
87805e00:	899b      	ldrh	r3, [r3, #12]
87805e02:	b29b      	uxth	r3, r3
87805e04:	f003 0302 	and.w	r3, r3, #2
87805e08:	2b00      	cmp	r3, #0
87805e0a:	d0f8      	beq.n	87805dfe <i2c_master_read+0x6e>
87805e0c:	68fb      	ldr	r3, [r7, #12]
87805e0e:	899b      	ldrh	r3, [r3, #12]
87805e10:	b29b      	uxth	r3, r3
87805e12:	f023 0302 	bic.w	r3, r3, #2
87805e16:	b29a      	uxth	r2, r3
87805e18:	68fb      	ldr	r3, [r7, #12]
87805e1a:	819a      	strh	r2, [r3, #12]
87805e1c:	687b      	ldr	r3, [r7, #4]
87805e1e:	2b00      	cmp	r3, #0
87805e20:	d102      	bne.n	87805e28 <i2c_master_read+0x98>
87805e22:	68f8      	ldr	r0, [r7, #12]
87805e24:	f7ff ff3a 	bl	87805c9c <i2c_master_stop>
87805e28:	687b      	ldr	r3, [r7, #4]
87805e2a:	2b01      	cmp	r3, #1
87805e2c:	d107      	bne.n	87805e3e <i2c_master_read+0xae>
87805e2e:	68fb      	ldr	r3, [r7, #12]
87805e30:	891b      	ldrh	r3, [r3, #8]
87805e32:	b29b      	uxth	r3, r3
87805e34:	f043 0308 	orr.w	r3, r3, #8
87805e38:	b29a      	uxth	r2, r3
87805e3a:	68fb      	ldr	r3, [r7, #12]
87805e3c:	811a      	strh	r2, [r3, #8]
87805e3e:	68bb      	ldr	r3, [r7, #8]
87805e40:	1c5a      	adds	r2, r3, #1
87805e42:	60ba      	str	r2, [r7, #8]
87805e44:	68fa      	ldr	r2, [r7, #12]
87805e46:	8a12      	ldrh	r2, [r2, #16]
87805e48:	b292      	uxth	r2, r2
87805e4a:	b2d2      	uxtb	r2, r2
87805e4c:	701a      	strb	r2, [r3, #0]
87805e4e:	687b      	ldr	r3, [r7, #4]
87805e50:	1e5a      	subs	r2, r3, #1
87805e52:	607a      	str	r2, [r7, #4]
87805e54:	2b00      	cmp	r3, #0
87805e56:	d1d1      	bne.n	87805dfc <i2c_master_read+0x6c>
87805e58:	3718      	adds	r7, #24
87805e5a:	46bd      	mov	sp, r7
87805e5c:	bd80      	pop	{r7, pc}
87805e5e:	bf00      	nop

87805e60 <i2c_master_transfer>:
87805e60:	b580      	push	{r7, lr}
87805e62:	b084      	sub	sp, #16
87805e64:	af00      	add	r7, sp, #0
87805e66:	6078      	str	r0, [r7, #4]
87805e68:	6039      	str	r1, [r7, #0]
87805e6a:	2300      	movs	r3, #0
87805e6c:	72fb      	strb	r3, [r7, #11]
87805e6e:	683b      	ldr	r3, [r7, #0]
87805e70:	685b      	ldr	r3, [r3, #4]
87805e72:	60fb      	str	r3, [r7, #12]
87805e74:	687b      	ldr	r3, [r7, #4]
87805e76:	899b      	ldrh	r3, [r3, #12]
87805e78:	b29b      	uxth	r3, r3
87805e7a:	f023 0312 	bic.w	r3, r3, #18
87805e7e:	b29a      	uxth	r2, r3
87805e80:	687b      	ldr	r3, [r7, #4]
87805e82:	819a      	strh	r2, [r3, #12]
87805e84:	bf00      	nop
87805e86:	687b      	ldr	r3, [r7, #4]
87805e88:	899b      	ldrh	r3, [r3, #12]
87805e8a:	b29b      	uxth	r3, r3
87805e8c:	09db      	lsrs	r3, r3, #7
87805e8e:	b29b      	uxth	r3, r3
87805e90:	f003 0301 	and.w	r3, r3, #1
87805e94:	2b00      	cmp	r3, #0
87805e96:	d0f6      	beq.n	87805e86 <i2c_master_transfer+0x26>
87805e98:	683b      	ldr	r3, [r7, #0]
87805e9a:	7b1b      	ldrb	r3, [r3, #12]
87805e9c:	2b00      	cmp	r3, #0
87805e9e:	d005      	beq.n	87805eac <i2c_master_transfer+0x4c>
87805ea0:	683b      	ldr	r3, [r7, #0]
87805ea2:	685b      	ldr	r3, [r3, #4]
87805ea4:	2b01      	cmp	r3, #1
87805ea6:	d101      	bne.n	87805eac <i2c_master_transfer+0x4c>
87805ea8:	2300      	movs	r3, #0
87805eaa:	60fb      	str	r3, [r7, #12]
87805eac:	683b      	ldr	r3, [r7, #0]
87805eae:	781b      	ldrb	r3, [r3, #0]
87805eb0:	68fa      	ldr	r2, [r7, #12]
87805eb2:	4619      	mov	r1, r3
87805eb4:	6878      	ldr	r0, [r7, #4]
87805eb6:	f7ff fe91 	bl	87805bdc <i2c_master_start>
87805eba:	4603      	mov	r3, r0
87805ebc:	72fb      	strb	r3, [r7, #11]
87805ebe:	7afb      	ldrb	r3, [r7, #11]
87805ec0:	2b00      	cmp	r3, #0
87805ec2:	d001      	beq.n	87805ec8 <i2c_master_transfer+0x68>
87805ec4:	7afb      	ldrb	r3, [r7, #11]
87805ec6:	e0a3      	b.n	87806010 <i2c_master_transfer+0x1b0>
87805ec8:	bf00      	nop
87805eca:	687b      	ldr	r3, [r7, #4]
87805ecc:	899b      	ldrh	r3, [r3, #12]
87805ece:	b29b      	uxth	r3, r3
87805ed0:	f003 0302 	and.w	r3, r3, #2
87805ed4:	2b00      	cmp	r3, #0
87805ed6:	d0f8      	beq.n	87805eca <i2c_master_transfer+0x6a>
87805ed8:	687b      	ldr	r3, [r7, #4]
87805eda:	899b      	ldrh	r3, [r3, #12]
87805edc:	b29b      	uxth	r3, r3
87805ede:	4619      	mov	r1, r3
87805ee0:	6878      	ldr	r0, [r7, #4]
87805ee2:	f7ff fea9 	bl	87805c38 <i2c_check_and_clear_error>
87805ee6:	4603      	mov	r3, r0
87805ee8:	72fb      	strb	r3, [r7, #11]
87805eea:	7afb      	ldrb	r3, [r7, #11]
87805eec:	2b00      	cmp	r3, #0
87805eee:	d004      	beq.n	87805efa <i2c_master_transfer+0x9a>
87805ef0:	6878      	ldr	r0, [r7, #4]
87805ef2:	f7ff fed3 	bl	87805c9c <i2c_master_stop>
87805ef6:	7afb      	ldrb	r3, [r7, #11]
87805ef8:	e08a      	b.n	87806010 <i2c_master_transfer+0x1b0>
87805efa:	683b      	ldr	r3, [r7, #0]
87805efc:	7b1b      	ldrb	r3, [r3, #12]
87805efe:	2b00      	cmp	r3, #0
87805f00:	d065      	beq.n	87805fce <i2c_master_transfer+0x16e>
87805f02:	687b      	ldr	r3, [r7, #4]
87805f04:	899b      	ldrh	r3, [r3, #12]
87805f06:	b29b      	uxth	r3, r3
87805f08:	f023 0302 	bic.w	r3, r3, #2
87805f0c:	b29a      	uxth	r2, r3
87805f0e:	687b      	ldr	r3, [r7, #4]
87805f10:	819a      	strh	r2, [r3, #12]
87805f12:	683b      	ldr	r3, [r7, #0]
87805f14:	7b1b      	ldrb	r3, [r3, #12]
87805f16:	3b01      	subs	r3, #1
87805f18:	b2da      	uxtb	r2, r3
87805f1a:	683b      	ldr	r3, [r7, #0]
87805f1c:	731a      	strb	r2, [r3, #12]
87805f1e:	683b      	ldr	r3, [r7, #0]
87805f20:	689a      	ldr	r2, [r3, #8]
87805f22:	683b      	ldr	r3, [r7, #0]
87805f24:	7b1b      	ldrb	r3, [r3, #12]
87805f26:	00db      	lsls	r3, r3, #3
87805f28:	fa22 f303 	lsr.w	r3, r2, r3
87805f2c:	b29a      	uxth	r2, r3
87805f2e:	687b      	ldr	r3, [r7, #4]
87805f30:	821a      	strh	r2, [r3, #16]
87805f32:	bf00      	nop
87805f34:	687b      	ldr	r3, [r7, #4]
87805f36:	899b      	ldrh	r3, [r3, #12]
87805f38:	b29b      	uxth	r3, r3
87805f3a:	f003 0302 	and.w	r3, r3, #2
87805f3e:	2b00      	cmp	r3, #0
87805f40:	d0f8      	beq.n	87805f34 <i2c_master_transfer+0xd4>
87805f42:	687b      	ldr	r3, [r7, #4]
87805f44:	899b      	ldrh	r3, [r3, #12]
87805f46:	b29b      	uxth	r3, r3
87805f48:	4619      	mov	r1, r3
87805f4a:	6878      	ldr	r0, [r7, #4]
87805f4c:	f7ff fe74 	bl	87805c38 <i2c_check_and_clear_error>
87805f50:	4603      	mov	r3, r0
87805f52:	72fb      	strb	r3, [r7, #11]
87805f54:	7afb      	ldrb	r3, [r7, #11]
87805f56:	2b00      	cmp	r3, #0
87805f58:	d004      	beq.n	87805f64 <i2c_master_transfer+0x104>
87805f5a:	6878      	ldr	r0, [r7, #4]
87805f5c:	f7ff fe9e 	bl	87805c9c <i2c_master_stop>
87805f60:	7afb      	ldrb	r3, [r7, #11]
87805f62:	e055      	b.n	87806010 <i2c_master_transfer+0x1b0>
87805f64:	683b      	ldr	r3, [r7, #0]
87805f66:	7b1b      	ldrb	r3, [r3, #12]
87805f68:	2b00      	cmp	r3, #0
87805f6a:	d002      	beq.n	87805f72 <i2c_master_transfer+0x112>
87805f6c:	7afb      	ldrb	r3, [r7, #11]
87805f6e:	2b00      	cmp	r3, #0
87805f70:	d0c7      	beq.n	87805f02 <i2c_master_transfer+0xa2>
87805f72:	683b      	ldr	r3, [r7, #0]
87805f74:	685b      	ldr	r3, [r3, #4]
87805f76:	2b01      	cmp	r3, #1
87805f78:	d129      	bne.n	87805fce <i2c_master_transfer+0x16e>
87805f7a:	687b      	ldr	r3, [r7, #4]
87805f7c:	899b      	ldrh	r3, [r3, #12]
87805f7e:	b29b      	uxth	r3, r3
87805f80:	f023 0302 	bic.w	r3, r3, #2
87805f84:	b29a      	uxth	r2, r3
87805f86:	687b      	ldr	r3, [r7, #4]
87805f88:	819a      	strh	r2, [r3, #12]
87805f8a:	683b      	ldr	r3, [r7, #0]
87805f8c:	781b      	ldrb	r3, [r3, #0]
87805f8e:	2201      	movs	r2, #1
87805f90:	4619      	mov	r1, r3
87805f92:	6878      	ldr	r0, [r7, #4]
87805f94:	f7ff fdee 	bl	87805b74 <i2c_master_repeated_start>
87805f98:	bf00      	nop
87805f9a:	687b      	ldr	r3, [r7, #4]
87805f9c:	899b      	ldrh	r3, [r3, #12]
87805f9e:	b29b      	uxth	r3, r3
87805fa0:	f003 0302 	and.w	r3, r3, #2
87805fa4:	2b00      	cmp	r3, #0
87805fa6:	d0f8      	beq.n	87805f9a <i2c_master_transfer+0x13a>
87805fa8:	687b      	ldr	r3, [r7, #4]
87805faa:	899b      	ldrh	r3, [r3, #12]
87805fac:	b29b      	uxth	r3, r3
87805fae:	4619      	mov	r1, r3
87805fb0:	6878      	ldr	r0, [r7, #4]
87805fb2:	f7ff fe41 	bl	87805c38 <i2c_check_and_clear_error>
87805fb6:	4603      	mov	r3, r0
87805fb8:	72fb      	strb	r3, [r7, #11]
87805fba:	7afb      	ldrb	r3, [r7, #11]
87805fbc:	2b00      	cmp	r3, #0
87805fbe:	d006      	beq.n	87805fce <i2c_master_transfer+0x16e>
87805fc0:	2306      	movs	r3, #6
87805fc2:	72fb      	strb	r3, [r7, #11]
87805fc4:	6878      	ldr	r0, [r7, #4]
87805fc6:	f7ff fe69 	bl	87805c9c <i2c_master_stop>
87805fca:	7afb      	ldrb	r3, [r7, #11]
87805fcc:	e020      	b.n	87806010 <i2c_master_transfer+0x1b0>
87805fce:	683b      	ldr	r3, [r7, #0]
87805fd0:	685b      	ldr	r3, [r3, #4]
87805fd2:	2b00      	cmp	r3, #0
87805fd4:	d10b      	bne.n	87805fee <i2c_master_transfer+0x18e>
87805fd6:	683b      	ldr	r3, [r7, #0]
87805fd8:	695b      	ldr	r3, [r3, #20]
87805fda:	2b00      	cmp	r3, #0
87805fdc:	d007      	beq.n	87805fee <i2c_master_transfer+0x18e>
87805fde:	683b      	ldr	r3, [r7, #0]
87805fe0:	6919      	ldr	r1, [r3, #16]
87805fe2:	683b      	ldr	r3, [r7, #0]
87805fe4:	695b      	ldr	r3, [r3, #20]
87805fe6:	461a      	mov	r2, r3
87805fe8:	6878      	ldr	r0, [r7, #4]
87805fea:	f7ff fe7d 	bl	87805ce8 <i2c_master_write>
87805fee:	683b      	ldr	r3, [r7, #0]
87805ff0:	685b      	ldr	r3, [r3, #4]
87805ff2:	2b01      	cmp	r3, #1
87805ff4:	d10b      	bne.n	8780600e <i2c_master_transfer+0x1ae>
87805ff6:	683b      	ldr	r3, [r7, #0]
87805ff8:	695b      	ldr	r3, [r3, #20]
87805ffa:	2b00      	cmp	r3, #0
87805ffc:	d007      	beq.n	8780600e <i2c_master_transfer+0x1ae>
87805ffe:	683b      	ldr	r3, [r7, #0]
87806000:	6919      	ldr	r1, [r3, #16]
87806002:	683b      	ldr	r3, [r7, #0]
87806004:	695b      	ldr	r3, [r3, #20]
87806006:	461a      	mov	r2, r3
87806008:	6878      	ldr	r0, [r7, #4]
8780600a:	f7ff fec1 	bl	87805d90 <i2c_master_read>
8780600e:	2300      	movs	r3, #0
87806010:	4618      	mov	r0, r3
87806012:	3710      	adds	r7, #16
87806014:	46bd      	mov	sp, r7
87806016:	bd80      	pop	{r7, pc}

87806018 <IOMUXC_SetPinMux>:
87806018:	b480      	push	{r7}
8780601a:	b085      	sub	sp, #20
8780601c:	af00      	add	r7, sp, #0
8780601e:	60f8      	str	r0, [r7, #12]
87806020:	60b9      	str	r1, [r7, #8]
87806022:	607a      	str	r2, [r7, #4]
87806024:	603b      	str	r3, [r7, #0]
87806026:	68fb      	ldr	r3, [r7, #12]
87806028:	68ba      	ldr	r2, [r7, #8]
8780602a:	f002 010f 	and.w	r1, r2, #15
8780602e:	69fa      	ldr	r2, [r7, #28]
87806030:	0112      	lsls	r2, r2, #4
87806032:	f002 0210 	and.w	r2, r2, #16
87806036:	430a      	orrs	r2, r1
87806038:	601a      	str	r2, [r3, #0]
8780603a:	687b      	ldr	r3, [r7, #4]
8780603c:	2b00      	cmp	r3, #0
8780603e:	d004      	beq.n	8780604a <IOMUXC_SetPinMux+0x32>
87806040:	687b      	ldr	r3, [r7, #4]
87806042:	683a      	ldr	r2, [r7, #0]
87806044:	f002 0207 	and.w	r2, r2, #7
87806048:	601a      	str	r2, [r3, #0]
8780604a:	3714      	adds	r7, #20
8780604c:	46bd      	mov	sp, r7
8780604e:	f85d 7b04 	ldr.w	r7, [sp], #4
87806052:	4770      	bx	lr

87806054 <IOMUXC_SetPinConfig>:
87806054:	b480      	push	{r7}
87806056:	b085      	sub	sp, #20
87806058:	af00      	add	r7, sp, #0
8780605a:	60f8      	str	r0, [r7, #12]
8780605c:	60b9      	str	r1, [r7, #8]
8780605e:	607a      	str	r2, [r7, #4]
87806060:	603b      	str	r3, [r7, #0]
87806062:	69bb      	ldr	r3, [r7, #24]
87806064:	2b00      	cmp	r3, #0
87806066:	d002      	beq.n	8780606e <IOMUXC_SetPinConfig+0x1a>
87806068:	69bb      	ldr	r3, [r7, #24]
8780606a:	69fa      	ldr	r2, [r7, #28]
8780606c:	601a      	str	r2, [r3, #0]
8780606e:	3714      	adds	r7, #20
87806070:	46bd      	mov	sp, r7
87806072:	f85d 7b04 	ldr.w	r7, [sp], #4
87806076:	4770      	bx	lr

87806078 <ap3216c_init>:
87806078:	b580      	push	{r7, lr}
8780607a:	b084      	sub	sp, #16
8780607c:	af02      	add	r7, sp, #8
8780607e:	2300      	movs	r3, #0
87806080:	71fb      	strb	r3, [r7, #7]
87806082:	2301      	movs	r3, #1
87806084:	9301      	str	r3, [sp, #4]
87806086:	f44f 7350 	mov.w	r3, #832	; 0x340
8780608a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780608e:	9300      	str	r3, [sp, #0]
87806090:	2301      	movs	r3, #1
87806092:	f240 52a4 	movw	r2, #1444	; 0x5a4
87806096:	f2c0 220e 	movt	r2, #526	; 0x20e
8780609a:	2102      	movs	r1, #2
8780609c:	20b4      	movs	r0, #180	; 0xb4
8780609e:	f2c0 200e 	movt	r0, #526	; 0x20e
878060a2:	f7ff ffb9 	bl	87806018 <IOMUXC_SetPinMux>
878060a6:	2301      	movs	r3, #1
878060a8:	9301      	str	r3, [sp, #4]
878060aa:	f44f 7351 	mov.w	r3, #836	; 0x344
878060ae:	f2c0 230e 	movt	r3, #526	; 0x20e
878060b2:	9300      	str	r3, [sp, #0]
878060b4:	2302      	movs	r3, #2
878060b6:	f44f 62b5 	mov.w	r2, #1448	; 0x5a8
878060ba:	f2c0 220e 	movt	r2, #526	; 0x20e
878060be:	2102      	movs	r1, #2
878060c0:	20b8      	movs	r0, #184	; 0xb8
878060c2:	f2c0 200e 	movt	r0, #526	; 0x20e
878060c6:	f7ff ffa7 	bl	87806018 <IOMUXC_SetPinMux>
878060ca:	f247 03b0 	movw	r3, #28848	; 0x70b0
878060ce:	9301      	str	r3, [sp, #4]
878060d0:	f44f 7350 	mov.w	r3, #832	; 0x340
878060d4:	f2c0 230e 	movt	r3, #526	; 0x20e
878060d8:	9300      	str	r3, [sp, #0]
878060da:	2301      	movs	r3, #1
878060dc:	f240 52a4 	movw	r2, #1444	; 0x5a4
878060e0:	f2c0 220e 	movt	r2, #526	; 0x20e
878060e4:	2102      	movs	r1, #2
878060e6:	20b4      	movs	r0, #180	; 0xb4
878060e8:	f2c0 200e 	movt	r0, #526	; 0x20e
878060ec:	f7ff ffb2 	bl	87806054 <IOMUXC_SetPinConfig>
878060f0:	f247 03b0 	movw	r3, #28848	; 0x70b0
878060f4:	9301      	str	r3, [sp, #4]
878060f6:	f44f 7351 	mov.w	r3, #836	; 0x344
878060fa:	f2c0 230e 	movt	r3, #526	; 0x20e
878060fe:	9300      	str	r3, [sp, #0]
87806100:	2302      	movs	r3, #2
87806102:	f44f 62b5 	mov.w	r2, #1448	; 0x5a8
87806106:	f2c0 220e 	movt	r2, #526	; 0x20e
8780610a:	2102      	movs	r1, #2
8780610c:	20b8      	movs	r0, #184	; 0xb8
8780610e:	f2c0 200e 	movt	r0, #526	; 0x20e
87806112:	f7ff ff9f 	bl	87806054 <IOMUXC_SetPinConfig>
87806116:	2000      	movs	r0, #0
87806118:	f2c0 201a 	movt	r0, #538	; 0x21a
8780611c:	f7ff fd0e 	bl	87805b3c <i2c_init>
87806120:	2204      	movs	r2, #4
87806122:	2100      	movs	r1, #0
87806124:	201e      	movs	r0, #30
87806126:	f000 f819 	bl	8780615c <ap3216c_writeonebyte>
8780612a:	2032      	movs	r0, #50	; 0x32
8780612c:	f7fa faf4 	bl	87800718 <delayms>
87806130:	2203      	movs	r2, #3
87806132:	2100      	movs	r1, #0
87806134:	201e      	movs	r0, #30
87806136:	f000 f811 	bl	8780615c <ap3216c_writeonebyte>
8780613a:	2100      	movs	r1, #0
8780613c:	201e      	movs	r0, #30
8780613e:	f000 f83d 	bl	878061bc <ap3216c_readonebyte>
87806142:	4603      	mov	r3, r0
87806144:	71fb      	strb	r3, [r7, #7]
87806146:	79fb      	ldrb	r3, [r7, #7]
87806148:	2b03      	cmp	r3, #3
8780614a:	d101      	bne.n	87806150 <ap3216c_init+0xd8>
8780614c:	2300      	movs	r3, #0
8780614e:	e000      	b.n	87806152 <ap3216c_init+0xda>
87806150:	2301      	movs	r3, #1
87806152:	4618      	mov	r0, r3
87806154:	3708      	adds	r7, #8
87806156:	46bd      	mov	sp, r7
87806158:	bd80      	pop	{r7, pc}
8780615a:	bf00      	nop

8780615c <ap3216c_writeonebyte>:
8780615c:	b580      	push	{r7, lr}
8780615e:	b08a      	sub	sp, #40	; 0x28
87806160:	af00      	add	r7, sp, #0
87806162:	4603      	mov	r3, r0
87806164:	71fb      	strb	r3, [r7, #7]
87806166:	460b      	mov	r3, r1
87806168:	71bb      	strb	r3, [r7, #6]
8780616a:	4613      	mov	r3, r2
8780616c:	717b      	strb	r3, [r7, #5]
8780616e:	2300      	movs	r3, #0
87806170:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
87806174:	797b      	ldrb	r3, [r7, #5]
87806176:	f887 3026 	strb.w	r3, [r7, #38]	; 0x26
8780617a:	79fb      	ldrb	r3, [r7, #7]
8780617c:	733b      	strb	r3, [r7, #12]
8780617e:	2300      	movs	r3, #0
87806180:	613b      	str	r3, [r7, #16]
87806182:	79bb      	ldrb	r3, [r7, #6]
87806184:	617b      	str	r3, [r7, #20]
87806186:	2301      	movs	r3, #1
87806188:	763b      	strb	r3, [r7, #24]
8780618a:	f107 0326 	add.w	r3, r7, #38	; 0x26
8780618e:	61fb      	str	r3, [r7, #28]
87806190:	2301      	movs	r3, #1
87806192:	623b      	str	r3, [r7, #32]
87806194:	f107 030c 	add.w	r3, r7, #12
87806198:	4619      	mov	r1, r3
8780619a:	2000      	movs	r0, #0
8780619c:	f2c0 201a 	movt	r0, #538	; 0x21a
878061a0:	f7ff fe5e 	bl	87805e60 <i2c_master_transfer>
878061a4:	4603      	mov	r3, r0
878061a6:	2b00      	cmp	r3, #0
878061a8:	d002      	beq.n	878061b0 <ap3216c_writeonebyte+0x54>
878061aa:	2301      	movs	r3, #1
878061ac:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
878061b0:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
878061b4:	4618      	mov	r0, r3
878061b6:	3728      	adds	r7, #40	; 0x28
878061b8:	46bd      	mov	sp, r7
878061ba:	bd80      	pop	{r7, pc}

878061bc <ap3216c_readonebyte>:
878061bc:	b580      	push	{r7, lr}
878061be:	b08a      	sub	sp, #40	; 0x28
878061c0:	af00      	add	r7, sp, #0
878061c2:	4603      	mov	r3, r0
878061c4:	460a      	mov	r2, r1
878061c6:	71fb      	strb	r3, [r7, #7]
878061c8:	4613      	mov	r3, r2
878061ca:	71bb      	strb	r3, [r7, #6]
878061cc:	2300      	movs	r3, #0
878061ce:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
878061d2:	79fb      	ldrb	r3, [r7, #7]
878061d4:	733b      	strb	r3, [r7, #12]
878061d6:	2301      	movs	r3, #1
878061d8:	613b      	str	r3, [r7, #16]
878061da:	79bb      	ldrb	r3, [r7, #6]
878061dc:	617b      	str	r3, [r7, #20]
878061de:	2301      	movs	r3, #1
878061e0:	763b      	strb	r3, [r7, #24]
878061e2:	f107 0327 	add.w	r3, r7, #39	; 0x27
878061e6:	61fb      	str	r3, [r7, #28]
878061e8:	2301      	movs	r3, #1
878061ea:	623b      	str	r3, [r7, #32]
878061ec:	f107 030c 	add.w	r3, r7, #12
878061f0:	4619      	mov	r1, r3
878061f2:	2000      	movs	r0, #0
878061f4:	f2c0 201a 	movt	r0, #538	; 0x21a
878061f8:	f7ff fe32 	bl	87805e60 <i2c_master_transfer>
878061fc:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
87806200:	4618      	mov	r0, r3
87806202:	3728      	adds	r7, #40	; 0x28
87806204:	46bd      	mov	sp, r7
87806206:	bd80      	pop	{r7, pc}

87806208 <ap3216c_readdata>:
87806208:	b590      	push	{r4, r7, lr}
8780620a:	b087      	sub	sp, #28
8780620c:	af00      	add	r7, sp, #0
8780620e:	60f8      	str	r0, [r7, #12]
87806210:	60b9      	str	r1, [r7, #8]
87806212:	607a      	str	r2, [r7, #4]
87806214:	2300      	movs	r3, #0
87806216:	75fb      	strb	r3, [r7, #23]
87806218:	e011      	b.n	8780623e <ap3216c_readdata+0x36>
8780621a:	7dfc      	ldrb	r4, [r7, #23]
8780621c:	7dfb      	ldrb	r3, [r7, #23]
8780621e:	330a      	adds	r3, #10
87806220:	b2db      	uxtb	r3, r3
87806222:	4619      	mov	r1, r3
87806224:	201e      	movs	r0, #30
87806226:	f7ff ffc9 	bl	878061bc <ap3216c_readonebyte>
8780622a:	4603      	mov	r3, r0
8780622c:	461a      	mov	r2, r3
8780622e:	f107 0318 	add.w	r3, r7, #24
87806232:	4423      	add	r3, r4
87806234:	f803 2c08 	strb.w	r2, [r3, #-8]
87806238:	7dfb      	ldrb	r3, [r7, #23]
8780623a:	3301      	adds	r3, #1
8780623c:	75fb      	strb	r3, [r7, #23]
8780623e:	7dfb      	ldrb	r3, [r7, #23]
87806240:	2b05      	cmp	r3, #5
87806242:	d9ea      	bls.n	8780621a <ap3216c_readdata+0x12>
87806244:	7c3b      	ldrb	r3, [r7, #16]
87806246:	b2db      	uxtb	r3, r3
87806248:	b25b      	sxtb	r3, r3
8780624a:	2b00      	cmp	r3, #0
8780624c:	da03      	bge.n	87806256 <ap3216c_readdata+0x4e>
8780624e:	68fb      	ldr	r3, [r7, #12]
87806250:	2200      	movs	r2, #0
87806252:	801a      	strh	r2, [r3, #0]
87806254:	e00c      	b.n	87806270 <ap3216c_readdata+0x68>
87806256:	7c7b      	ldrb	r3, [r7, #17]
87806258:	009b      	lsls	r3, r3, #2
8780625a:	b29a      	uxth	r2, r3
8780625c:	7c3b      	ldrb	r3, [r7, #16]
8780625e:	b29b      	uxth	r3, r3
87806260:	f003 0303 	and.w	r3, r3, #3
87806264:	b29b      	uxth	r3, r3
87806266:	4313      	orrs	r3, r2
87806268:	b29b      	uxth	r3, r3
8780626a:	b29a      	uxth	r2, r3
8780626c:	68fb      	ldr	r3, [r7, #12]
8780626e:	801a      	strh	r2, [r3, #0]
87806270:	7cfb      	ldrb	r3, [r7, #19]
87806272:	021b      	lsls	r3, r3, #8
87806274:	b29a      	uxth	r2, r3
87806276:	7cbb      	ldrb	r3, [r7, #18]
87806278:	b29b      	uxth	r3, r3
8780627a:	4313      	orrs	r3, r2
8780627c:	b29b      	uxth	r3, r3
8780627e:	b29a      	uxth	r2, r3
87806280:	687b      	ldr	r3, [r7, #4]
87806282:	801a      	strh	r2, [r3, #0]
87806284:	7d3b      	ldrb	r3, [r7, #20]
87806286:	f003 0340 	and.w	r3, r3, #64	; 0x40
8780628a:	2b00      	cmp	r3, #0
8780628c:	d003      	beq.n	87806296 <ap3216c_readdata+0x8e>
8780628e:	68bb      	ldr	r3, [r7, #8]
87806290:	2200      	movs	r2, #0
87806292:	801a      	strh	r2, [r3, #0]
87806294:	e00e      	b.n	878062b4 <ap3216c_readdata+0xac>
87806296:	7d7b      	ldrb	r3, [r7, #21]
87806298:	f003 033f 	and.w	r3, r3, #63	; 0x3f
8780629c:	011b      	lsls	r3, r3, #4
8780629e:	b29a      	uxth	r2, r3
878062a0:	7d3b      	ldrb	r3, [r7, #20]
878062a2:	b29b      	uxth	r3, r3
878062a4:	f003 030f 	and.w	r3, r3, #15
878062a8:	b29b      	uxth	r3, r3
878062aa:	4313      	orrs	r3, r2
878062ac:	b29b      	uxth	r3, r3
878062ae:	b29a      	uxth	r2, r3
878062b0:	68bb      	ldr	r3, [r7, #8]
878062b2:	801a      	strh	r2, [r3, #0]
878062b4:	371c      	adds	r7, #28
878062b6:	46bd      	mov	sp, r7
878062b8:	bd90      	pop	{r4, r7, pc}
878062ba:	bf00      	nop

878062bc <spi_init>:
878062bc:	b480      	push	{r7}
878062be:	b083      	sub	sp, #12
878062c0:	af00      	add	r7, sp, #0
878062c2:	6078      	str	r0, [r7, #4]
878062c4:	687b      	ldr	r3, [r7, #4]
878062c6:	2200      	movs	r2, #0
878062c8:	609a      	str	r2, [r3, #8]
878062ca:	687b      	ldr	r3, [r7, #4]
878062cc:	689b      	ldr	r3, [r3, #8]
878062ce:	f443 03e0 	orr.w	r3, r3, #7340032	; 0x700000
878062d2:	f043 0319 	orr.w	r3, r3, #25
878062d6:	687a      	ldr	r2, [r7, #4]
878062d8:	6093      	str	r3, [r2, #8]
878062da:	687b      	ldr	r3, [r7, #4]
878062dc:	2200      	movs	r2, #0
878062de:	60da      	str	r2, [r3, #12]
878062e0:	687b      	ldr	r3, [r7, #4]
878062e2:	2200      	movs	r2, #0
878062e4:	61da      	str	r2, [r3, #28]
878062e6:	687b      	ldr	r3, [r7, #4]
878062e8:	689b      	ldr	r3, [r3, #8]
878062ea:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
878062ee:	687b      	ldr	r3, [r7, #4]
878062f0:	609a      	str	r2, [r3, #8]
878062f2:	687b      	ldr	r3, [r7, #4]
878062f4:	689b      	ldr	r3, [r3, #8]
878062f6:	f443 4210 	orr.w	r2, r3, #36864	; 0x9000
878062fa:	687b      	ldr	r3, [r7, #4]
878062fc:	609a      	str	r2, [r3, #8]
878062fe:	370c      	adds	r7, #12
87806300:	46bd      	mov	sp, r7
87806302:	f85d 7b04 	ldr.w	r7, [sp], #4
87806306:	4770      	bx	lr

87806308 <spich0_readwrite_byte>:
87806308:	b480      	push	{r7}
8780630a:	b085      	sub	sp, #20
8780630c:	af00      	add	r7, sp, #0
8780630e:	6078      	str	r0, [r7, #4]
87806310:	460b      	mov	r3, r1
87806312:	70fb      	strb	r3, [r7, #3]
87806314:	2300      	movs	r3, #0
87806316:	60fb      	str	r3, [r7, #12]
87806318:	78fb      	ldrb	r3, [r7, #3]
8780631a:	60bb      	str	r3, [r7, #8]
8780631c:	687b      	ldr	r3, [r7, #4]
8780631e:	689b      	ldr	r3, [r3, #8]
87806320:	f423 2240 	bic.w	r2, r3, #786432	; 0xc0000
87806324:	687b      	ldr	r3, [r7, #4]
87806326:	609a      	str	r2, [r3, #8]
87806328:	687b      	ldr	r3, [r7, #4]
8780632a:	689a      	ldr	r2, [r3, #8]
8780632c:	687b      	ldr	r3, [r7, #4]
8780632e:	609a      	str	r2, [r3, #8]
87806330:	bf00      	nop
87806332:	687b      	ldr	r3, [r7, #4]
87806334:	699b      	ldr	r3, [r3, #24]
87806336:	f003 0301 	and.w	r3, r3, #1
8780633a:	2b00      	cmp	r3, #0
8780633c:	d0f9      	beq.n	87806332 <spich0_readwrite_byte+0x2a>
8780633e:	687b      	ldr	r3, [r7, #4]
87806340:	68ba      	ldr	r2, [r7, #8]
87806342:	605a      	str	r2, [r3, #4]
87806344:	bf00      	nop
87806346:	687b      	ldr	r3, [r7, #4]
87806348:	699b      	ldr	r3, [r3, #24]
8780634a:	f003 0308 	and.w	r3, r3, #8
8780634e:	2b00      	cmp	r3, #0
87806350:	d0f9      	beq.n	87806346 <spich0_readwrite_byte+0x3e>
87806352:	687b      	ldr	r3, [r7, #4]
87806354:	681b      	ldr	r3, [r3, #0]
87806356:	60fb      	str	r3, [r7, #12]
87806358:	68fb      	ldr	r3, [r7, #12]
8780635a:	b2db      	uxtb	r3, r3
8780635c:	4618      	mov	r0, r3
8780635e:	3714      	adds	r7, #20
87806360:	46bd      	mov	sp, r7
87806362:	f85d 7b04 	ldr.w	r7, [sp], #4
87806366:	4770      	bx	lr

87806368 <IOMUXC_SetPinMux>:
87806368:	b480      	push	{r7}
8780636a:	b085      	sub	sp, #20
8780636c:	af00      	add	r7, sp, #0
8780636e:	60f8      	str	r0, [r7, #12]
87806370:	60b9      	str	r1, [r7, #8]
87806372:	607a      	str	r2, [r7, #4]
87806374:	603b      	str	r3, [r7, #0]
87806376:	68fb      	ldr	r3, [r7, #12]
87806378:	68ba      	ldr	r2, [r7, #8]
8780637a:	f002 010f 	and.w	r1, r2, #15
8780637e:	69fa      	ldr	r2, [r7, #28]
87806380:	0112      	lsls	r2, r2, #4
87806382:	f002 0210 	and.w	r2, r2, #16
87806386:	430a      	orrs	r2, r1
87806388:	601a      	str	r2, [r3, #0]
8780638a:	687b      	ldr	r3, [r7, #4]
8780638c:	2b00      	cmp	r3, #0
8780638e:	d004      	beq.n	8780639a <IOMUXC_SetPinMux+0x32>
87806390:	687b      	ldr	r3, [r7, #4]
87806392:	683a      	ldr	r2, [r7, #0]
87806394:	f002 0207 	and.w	r2, r2, #7
87806398:	601a      	str	r2, [r3, #0]
8780639a:	3714      	adds	r7, #20
8780639c:	46bd      	mov	sp, r7
8780639e:	f85d 7b04 	ldr.w	r7, [sp], #4
878063a2:	4770      	bx	lr

878063a4 <IOMUXC_SetPinConfig>:
878063a4:	b480      	push	{r7}
878063a6:	b085      	sub	sp, #20
878063a8:	af00      	add	r7, sp, #0
878063aa:	60f8      	str	r0, [r7, #12]
878063ac:	60b9      	str	r1, [r7, #8]
878063ae:	607a      	str	r2, [r7, #4]
878063b0:	603b      	str	r3, [r7, #0]
878063b2:	69bb      	ldr	r3, [r7, #24]
878063b4:	2b00      	cmp	r3, #0
878063b6:	d002      	beq.n	878063be <IOMUXC_SetPinConfig+0x1a>
878063b8:	69bb      	ldr	r3, [r7, #24]
878063ba:	69fa      	ldr	r2, [r7, #28]
878063bc:	601a      	str	r2, [r3, #0]
878063be:	3714      	adds	r7, #20
878063c0:	46bd      	mov	sp, r7
878063c2:	f85d 7b04 	ldr.w	r7, [sp], #4
878063c6:	4770      	bx	lr

878063c8 <icm20608_init>:
878063c8:	b580      	push	{r7, lr}
878063ca:	b086      	sub	sp, #24
878063cc:	af02      	add	r7, sp, #8
878063ce:	2300      	movs	r3, #0
878063d0:	9301      	str	r3, [sp, #4]
878063d2:	f44f 7349 	mov.w	r3, #804	; 0x324
878063d6:	f2c0 230e 	movt	r3, #526	; 0x20e
878063da:	9300      	str	r3, [sp, #0]
878063dc:	2300      	movs	r3, #0
878063de:	f240 5254 	movw	r2, #1364	; 0x554
878063e2:	f2c0 220e 	movt	r2, #526	; 0x20e
878063e6:	2108      	movs	r1, #8
878063e8:	2098      	movs	r0, #152	; 0x98
878063ea:	f2c0 200e 	movt	r0, #526	; 0x20e
878063ee:	f7ff ffbb 	bl	87806368 <IOMUXC_SetPinMux>
878063f2:	2300      	movs	r3, #0
878063f4:	9301      	str	r3, [sp, #4]
878063f6:	f44f 734a 	mov.w	r3, #808	; 0x328
878063fa:	f2c0 230e 	movt	r3, #526	; 0x20e
878063fe:	9300      	str	r3, [sp, #0]
87806400:	2300      	movs	r3, #0
87806402:	f240 525c 	movw	r2, #1372	; 0x55c
87806406:	f2c0 220e 	movt	r2, #526	; 0x20e
8780640a:	2108      	movs	r1, #8
8780640c:	209c      	movs	r0, #156	; 0x9c
8780640e:	f2c0 200e 	movt	r0, #526	; 0x20e
87806412:	f7ff ffa9 	bl	87806368 <IOMUXC_SetPinMux>
87806416:	2300      	movs	r3, #0
87806418:	9301      	str	r3, [sp, #4]
8780641a:	f44f 734b 	mov.w	r3, #812	; 0x32c
8780641e:	f2c0 230e 	movt	r3, #526	; 0x20e
87806422:	9300      	str	r3, [sp, #0]
87806424:	2300      	movs	r3, #0
87806426:	f44f 62ab 	mov.w	r2, #1368	; 0x558
8780642a:	f2c0 220e 	movt	r2, #526	; 0x20e
8780642e:	2108      	movs	r1, #8
87806430:	20a0      	movs	r0, #160	; 0xa0
87806432:	f2c0 200e 	movt	r0, #526	; 0x20e
87806436:	f7ff ff97 	bl	87806368 <IOMUXC_SetPinMux>
8780643a:	f241 03b1 	movw	r3, #4273	; 0x10b1
8780643e:	9301      	str	r3, [sp, #4]
87806440:	f44f 7349 	mov.w	r3, #804	; 0x324
87806444:	f2c0 230e 	movt	r3, #526	; 0x20e
87806448:	9300      	str	r3, [sp, #0]
8780644a:	2300      	movs	r3, #0
8780644c:	f240 5254 	movw	r2, #1364	; 0x554
87806450:	f2c0 220e 	movt	r2, #526	; 0x20e
87806454:	2108      	movs	r1, #8
87806456:	2098      	movs	r0, #152	; 0x98
87806458:	f2c0 200e 	movt	r0, #526	; 0x20e
8780645c:	f7ff ffa2 	bl	878063a4 <IOMUXC_SetPinConfig>
87806460:	f241 03b1 	movw	r3, #4273	; 0x10b1
87806464:	9301      	str	r3, [sp, #4]
87806466:	f44f 734a 	mov.w	r3, #808	; 0x328
8780646a:	f2c0 230e 	movt	r3, #526	; 0x20e
8780646e:	9300      	str	r3, [sp, #0]
87806470:	2300      	movs	r3, #0
87806472:	f240 525c 	movw	r2, #1372	; 0x55c
87806476:	f2c0 220e 	movt	r2, #526	; 0x20e
8780647a:	2108      	movs	r1, #8
8780647c:	209c      	movs	r0, #156	; 0x9c
8780647e:	f2c0 200e 	movt	r0, #526	; 0x20e
87806482:	f7ff ff8f 	bl	878063a4 <IOMUXC_SetPinConfig>
87806486:	f241 03b1 	movw	r3, #4273	; 0x10b1
8780648a:	9301      	str	r3, [sp, #4]
8780648c:	f44f 734b 	mov.w	r3, #812	; 0x32c
87806490:	f2c0 230e 	movt	r3, #526	; 0x20e
87806494:	9300      	str	r3, [sp, #0]
87806496:	2300      	movs	r3, #0
87806498:	f44f 62ab 	mov.w	r2, #1368	; 0x558
8780649c:	f2c0 220e 	movt	r2, #526	; 0x20e
878064a0:	2108      	movs	r1, #8
878064a2:	20a0      	movs	r0, #160	; 0xa0
878064a4:	f2c0 200e 	movt	r0, #526	; 0x20e
878064a8:	f7ff ff7c 	bl	878063a4 <IOMUXC_SetPinConfig>
878064ac:	2300      	movs	r3, #0
878064ae:	9301      	str	r3, [sp, #4]
878064b0:	f44f 7348 	mov.w	r3, #800	; 0x320
878064b4:	f2c0 230e 	movt	r3, #526	; 0x20e
878064b8:	9300      	str	r3, [sp, #0]
878064ba:	2300      	movs	r3, #0
878064bc:	2200      	movs	r2, #0
878064be:	2105      	movs	r1, #5
878064c0:	2094      	movs	r0, #148	; 0x94
878064c2:	f2c0 200e 	movt	r0, #526	; 0x20e
878064c6:	f7ff ff4f 	bl	87806368 <IOMUXC_SetPinMux>
878064ca:	f241 03b0 	movw	r3, #4272	; 0x10b0
878064ce:	9301      	str	r3, [sp, #4]
878064d0:	f44f 7348 	mov.w	r3, #800	; 0x320
878064d4:	f2c0 230e 	movt	r3, #526	; 0x20e
878064d8:	9300      	str	r3, [sp, #0]
878064da:	2300      	movs	r3, #0
878064dc:	2200      	movs	r2, #0
878064de:	2105      	movs	r1, #5
878064e0:	2094      	movs	r0, #148	; 0x94
878064e2:	f2c0 200e 	movt	r0, #526	; 0x20e
878064e6:	f7ff ff5d 	bl	878063a4 <IOMUXC_SetPinConfig>
878064ea:	2301      	movs	r3, #1
878064ec:	603b      	str	r3, [r7, #0]
878064ee:	2300      	movs	r3, #0
878064f0:	713b      	strb	r3, [r7, #4]
878064f2:	463b      	mov	r3, r7
878064f4:	461a      	mov	r2, r3
878064f6:	2114      	movs	r1, #20
878064f8:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878064fc:	f2c0 2009 	movt	r0, #521	; 0x209
87806500:	f7fa fa7a 	bl	878009f8 <gpio_init>
87806504:	2000      	movs	r0, #0
87806506:	f2c0 2001 	movt	r0, #513	; 0x201
8780650a:	f7ff fed7 	bl	878062bc <spi_init>
8780650e:	2180      	movs	r1, #128	; 0x80
87806510:	206b      	movs	r0, #107	; 0x6b
87806512:	f000 f845 	bl	878065a0 <icm20608_write_reg>
87806516:	2032      	movs	r0, #50	; 0x32
87806518:	f7fa f8fe 	bl	87800718 <delayms>
8780651c:	2101      	movs	r1, #1
8780651e:	206b      	movs	r0, #107	; 0x6b
87806520:	f000 f83e 	bl	878065a0 <icm20608_write_reg>
87806524:	2032      	movs	r0, #50	; 0x32
87806526:	f7fa f8f7 	bl	87800718 <delayms>
8780652a:	2075      	movs	r0, #117	; 0x75
8780652c:	f000 f866 	bl	878065fc <icm20608_read_reg>
87806530:	4603      	mov	r3, r0
87806532:	73fb      	strb	r3, [r7, #15]
87806534:	7bfb      	ldrb	r3, [r7, #15]
87806536:	4619      	mov	r1, r3
87806538:	f64b 10b8 	movw	r0, #47544	; 0xb9b8
8780653c:	f2c8 7080 	movt	r0, #34688	; 0x8780
87806540:	f7fb fb34 	bl	87801bac <printf>
87806544:	7bfb      	ldrb	r3, [r7, #15]
87806546:	2baf      	cmp	r3, #175	; 0xaf
87806548:	d004      	beq.n	87806554 <icm20608_init+0x18c>
8780654a:	7bfb      	ldrb	r3, [r7, #15]
8780654c:	2bae      	cmp	r3, #174	; 0xae
8780654e:	d001      	beq.n	87806554 <icm20608_init+0x18c>
87806550:	2301      	movs	r3, #1
87806552:	e020      	b.n	87806596 <icm20608_init+0x1ce>
87806554:	2100      	movs	r1, #0
87806556:	2019      	movs	r0, #25
87806558:	f000 f822 	bl	878065a0 <icm20608_write_reg>
8780655c:	2118      	movs	r1, #24
8780655e:	201b      	movs	r0, #27
87806560:	f000 f81e 	bl	878065a0 <icm20608_write_reg>
87806564:	2118      	movs	r1, #24
87806566:	201c      	movs	r0, #28
87806568:	f000 f81a 	bl	878065a0 <icm20608_write_reg>
8780656c:	2104      	movs	r1, #4
8780656e:	201a      	movs	r0, #26
87806570:	f000 f816 	bl	878065a0 <icm20608_write_reg>
87806574:	2104      	movs	r1, #4
87806576:	201d      	movs	r0, #29
87806578:	f000 f812 	bl	878065a0 <icm20608_write_reg>
8780657c:	2100      	movs	r1, #0
8780657e:	206c      	movs	r0, #108	; 0x6c
87806580:	f000 f80e 	bl	878065a0 <icm20608_write_reg>
87806584:	2100      	movs	r1, #0
87806586:	201e      	movs	r0, #30
87806588:	f000 f80a 	bl	878065a0 <icm20608_write_reg>
8780658c:	2100      	movs	r1, #0
8780658e:	2023      	movs	r0, #35	; 0x23
87806590:	f000 f806 	bl	878065a0 <icm20608_write_reg>
87806594:	2300      	movs	r3, #0
87806596:	4618      	mov	r0, r3
87806598:	3710      	adds	r7, #16
8780659a:	46bd      	mov	sp, r7
8780659c:	bd80      	pop	{r7, pc}
8780659e:	bf00      	nop

878065a0 <icm20608_write_reg>:
878065a0:	b580      	push	{r7, lr}
878065a2:	b082      	sub	sp, #8
878065a4:	af00      	add	r7, sp, #0
878065a6:	4603      	mov	r3, r0
878065a8:	460a      	mov	r2, r1
878065aa:	71fb      	strb	r3, [r7, #7]
878065ac:	4613      	mov	r3, r2
878065ae:	71bb      	strb	r3, [r7, #6]
878065b0:	79fb      	ldrb	r3, [r7, #7]
878065b2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
878065b6:	71fb      	strb	r3, [r7, #7]
878065b8:	2200      	movs	r2, #0
878065ba:	2114      	movs	r1, #20
878065bc:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878065c0:	f2c0 2009 	movt	r0, #521	; 0x209
878065c4:	f7fa fa64 	bl	87800a90 <gpio_pinwrite>
878065c8:	79fb      	ldrb	r3, [r7, #7]
878065ca:	4619      	mov	r1, r3
878065cc:	2000      	movs	r0, #0
878065ce:	f2c0 2001 	movt	r0, #513	; 0x201
878065d2:	f7ff fe99 	bl	87806308 <spich0_readwrite_byte>
878065d6:	79bb      	ldrb	r3, [r7, #6]
878065d8:	4619      	mov	r1, r3
878065da:	2000      	movs	r0, #0
878065dc:	f2c0 2001 	movt	r0, #513	; 0x201
878065e0:	f7ff fe92 	bl	87806308 <spich0_readwrite_byte>
878065e4:	2201      	movs	r2, #1
878065e6:	2114      	movs	r1, #20
878065e8:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878065ec:	f2c0 2009 	movt	r0, #521	; 0x209
878065f0:	f7fa fa4e 	bl	87800a90 <gpio_pinwrite>
878065f4:	3708      	adds	r7, #8
878065f6:	46bd      	mov	sp, r7
878065f8:	bd80      	pop	{r7, pc}
878065fa:	bf00      	nop

878065fc <icm20608_read_reg>:
878065fc:	b580      	push	{r7, lr}
878065fe:	b084      	sub	sp, #16
87806600:	af00      	add	r7, sp, #0
87806602:	4603      	mov	r3, r0
87806604:	71fb      	strb	r3, [r7, #7]
87806606:	79fb      	ldrb	r3, [r7, #7]
87806608:	f063 037f 	orn	r3, r3, #127	; 0x7f
8780660c:	71fb      	strb	r3, [r7, #7]
8780660e:	2200      	movs	r2, #0
87806610:	2114      	movs	r1, #20
87806612:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806616:	f2c0 2009 	movt	r0, #521	; 0x209
8780661a:	f7fa fa39 	bl	87800a90 <gpio_pinwrite>
8780661e:	79fb      	ldrb	r3, [r7, #7]
87806620:	4619      	mov	r1, r3
87806622:	2000      	movs	r0, #0
87806624:	f2c0 2001 	movt	r0, #513	; 0x201
87806628:	f7ff fe6e 	bl	87806308 <spich0_readwrite_byte>
8780662c:	21ff      	movs	r1, #255	; 0xff
8780662e:	2000      	movs	r0, #0
87806630:	f2c0 2001 	movt	r0, #513	; 0x201
87806634:	f7ff fe68 	bl	87806308 <spich0_readwrite_byte>
87806638:	4603      	mov	r3, r0
8780663a:	73fb      	strb	r3, [r7, #15]
8780663c:	2201      	movs	r2, #1
8780663e:	2114      	movs	r1, #20
87806640:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806644:	f2c0 2009 	movt	r0, #521	; 0x209
87806648:	f7fa fa22 	bl	87800a90 <gpio_pinwrite>
8780664c:	7bfb      	ldrb	r3, [r7, #15]
8780664e:	4618      	mov	r0, r3
87806650:	3710      	adds	r7, #16
87806652:	46bd      	mov	sp, r7
87806654:	bd80      	pop	{r7, pc}
87806656:	bf00      	nop

87806658 <icm20608_read_len>:
87806658:	b590      	push	{r4, r7, lr}
8780665a:	b085      	sub	sp, #20
8780665c:	af00      	add	r7, sp, #0
8780665e:	4603      	mov	r3, r0
87806660:	6039      	str	r1, [r7, #0]
87806662:	71fb      	strb	r3, [r7, #7]
87806664:	4613      	mov	r3, r2
87806666:	71bb      	strb	r3, [r7, #6]
87806668:	79fb      	ldrb	r3, [r7, #7]
8780666a:	f063 037f 	orn	r3, r3, #127	; 0x7f
8780666e:	71fb      	strb	r3, [r7, #7]
87806670:	2200      	movs	r2, #0
87806672:	2114      	movs	r1, #20
87806674:	f44f 4040 	mov.w	r0, #49152	; 0xc000
87806678:	f2c0 2009 	movt	r0, #521	; 0x209
8780667c:	f7fa fa08 	bl	87800a90 <gpio_pinwrite>
87806680:	79fb      	ldrb	r3, [r7, #7]
87806682:	4619      	mov	r1, r3
87806684:	2000      	movs	r0, #0
87806686:	f2c0 2001 	movt	r0, #513	; 0x201
8780668a:	f7ff fe3d 	bl	87806308 <spich0_readwrite_byte>
8780668e:	2300      	movs	r3, #0
87806690:	73fb      	strb	r3, [r7, #15]
87806692:	e00d      	b.n	878066b0 <icm20608_read_len+0x58>
87806694:	7bfb      	ldrb	r3, [r7, #15]
87806696:	683a      	ldr	r2, [r7, #0]
87806698:	18d4      	adds	r4, r2, r3
8780669a:	21ff      	movs	r1, #255	; 0xff
8780669c:	2000      	movs	r0, #0
8780669e:	f2c0 2001 	movt	r0, #513	; 0x201
878066a2:	f7ff fe31 	bl	87806308 <spich0_readwrite_byte>
878066a6:	4603      	mov	r3, r0
878066a8:	7023      	strb	r3, [r4, #0]
878066aa:	7bfb      	ldrb	r3, [r7, #15]
878066ac:	3301      	adds	r3, #1
878066ae:	73fb      	strb	r3, [r7, #15]
878066b0:	7bfa      	ldrb	r2, [r7, #15]
878066b2:	79bb      	ldrb	r3, [r7, #6]
878066b4:	429a      	cmp	r2, r3
878066b6:	d3ed      	bcc.n	87806694 <icm20608_read_len+0x3c>
878066b8:	2201      	movs	r2, #1
878066ba:	2114      	movs	r1, #20
878066bc:	f44f 4040 	mov.w	r0, #49152	; 0xc000
878066c0:	f2c0 2009 	movt	r0, #521	; 0x209
878066c4:	f7fa f9e4 	bl	87800a90 <gpio_pinwrite>
878066c8:	3714      	adds	r7, #20
878066ca:	46bd      	mov	sp, r7
878066cc:	bd90      	pop	{r4, r7, pc}
878066ce:	bf00      	nop

878066d0 <icm20608_gyro_scaleget>:
878066d0:	b580      	push	{r7, lr}
878066d2:	b082      	sub	sp, #8
878066d4:	af00      	add	r7, sp, #0
878066d6:	201b      	movs	r0, #27
878066d8:	f7ff ff90 	bl	878065fc <icm20608_read_reg>
878066dc:	4603      	mov	r3, r0
878066de:	08db      	lsrs	r3, r3, #3
878066e0:	b2db      	uxtb	r3, r3
878066e2:	f003 0303 	and.w	r3, r3, #3
878066e6:	70fb      	strb	r3, [r7, #3]
878066e8:	78fb      	ldrb	r3, [r7, #3]
878066ea:	2b03      	cmp	r3, #3
878066ec:	d822      	bhi.n	87806734 <icm20608_gyro_scaleget+0x64>
878066ee:	a201      	add	r2, pc, #4	; (adr r2, 878066f4 <icm20608_gyro_scaleget+0x24>)
878066f0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
878066f4:	87806705 	strhi	r6, [r0, r5, lsl #14]
878066f8:	87806711 	usada8hi	r0, r1, r7, r6
878066fc:	8780671d 	usada8hi	r0, sp, r7, r6
87806700:	87806729 	strhi	r6, [r0, r9, lsr #14]
87806704:	f04f 0300 	mov.w	r3, #0
87806708:	f2c4 3303 	movt	r3, #17155	; 0x4303
8780670c:	607b      	str	r3, [r7, #4]
8780670e:	e011      	b.n	87806734 <icm20608_gyro_scaleget+0x64>
87806710:	f04f 0300 	mov.w	r3, #0
87806714:	f2c4 2383 	movt	r3, #17027	; 0x4283
87806718:	607b      	str	r3, [r7, #4]
8780671a:	e00b      	b.n	87806734 <icm20608_gyro_scaleget+0x64>
8780671c:	f243 3333 	movw	r3, #13107	; 0x3333
87806720:	f2c4 2303 	movt	r3, #16899	; 0x4203
87806724:	607b      	str	r3, [r7, #4]
87806726:	e005      	b.n	87806734 <icm20608_gyro_scaleget+0x64>
87806728:	f243 3333 	movw	r3, #13107	; 0x3333
8780672c:	f2c4 1383 	movt	r3, #16771	; 0x4183
87806730:	607b      	str	r3, [r7, #4]
87806732:	bf00      	nop
87806734:	687b      	ldr	r3, [r7, #4]
87806736:	ee07 3a90 	vmov	s15, r3
8780673a:	eeb0 0a67 	vmov.f32	s0, s15
8780673e:	3708      	adds	r7, #8
87806740:	46bd      	mov	sp, r7
87806742:	bd80      	pop	{r7, pc}

87806744 <icm20608_accel_scaleget>:
87806744:	b580      	push	{r7, lr}
87806746:	b082      	sub	sp, #8
87806748:	af00      	add	r7, sp, #0
8780674a:	201c      	movs	r0, #28
8780674c:	f7ff ff56 	bl	878065fc <icm20608_read_reg>
87806750:	4603      	mov	r3, r0
87806752:	08db      	lsrs	r3, r3, #3
87806754:	b2db      	uxtb	r3, r3
87806756:	f003 0303 	and.w	r3, r3, #3
8780675a:	717b      	strb	r3, [r7, #5]
8780675c:	797b      	ldrb	r3, [r7, #5]
8780675e:	2b03      	cmp	r3, #3
87806760:	d81a      	bhi.n	87806798 <icm20608_accel_scaleget+0x54>
87806762:	a201      	add	r2, pc, #4	; (adr r2, 87806768 <icm20608_accel_scaleget+0x24>)
87806764:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
87806768:	87806779 			; <UNDEFINED> instruction: 0x87806779
8780676c:	87806781 	strhi	r6, [r0, r1, lsl #15]
87806770:	87806789 	strhi	r6, [r0, r9, lsl #15]
87806774:	87806791 			; <UNDEFINED> instruction: 0x87806791
87806778:	f44f 4380 	mov.w	r3, #16384	; 0x4000
8780677c:	80fb      	strh	r3, [r7, #6]
8780677e:	e00b      	b.n	87806798 <icm20608_accel_scaleget+0x54>
87806780:	f44f 5300 	mov.w	r3, #8192	; 0x2000
87806784:	80fb      	strh	r3, [r7, #6]
87806786:	e007      	b.n	87806798 <icm20608_accel_scaleget+0x54>
87806788:	f44f 5380 	mov.w	r3, #4096	; 0x1000
8780678c:	80fb      	strh	r3, [r7, #6]
8780678e:	e003      	b.n	87806798 <icm20608_accel_scaleget+0x54>
87806790:	f44f 6300 	mov.w	r3, #2048	; 0x800
87806794:	80fb      	strh	r3, [r7, #6]
87806796:	bf00      	nop
87806798:	88fb      	ldrh	r3, [r7, #6]
8780679a:	4618      	mov	r0, r3
8780679c:	3708      	adds	r7, #8
8780679e:	46bd      	mov	sp, r7
878067a0:	bd80      	pop	{r7, pc}
878067a2:	bf00      	nop

878067a4 <icm20608_getdata>:
878067a4:	b580      	push	{r7, lr}
878067a6:	b086      	sub	sp, #24
878067a8:	af00      	add	r7, sp, #0
878067aa:	1d3b      	adds	r3, r7, #4
878067ac:	220e      	movs	r2, #14
878067ae:	4619      	mov	r1, r3
878067b0:	203b      	movs	r0, #59	; 0x3b
878067b2:	f7ff ff51 	bl	87806658 <icm20608_read_len>
878067b6:	f7ff ff8b 	bl	878066d0 <icm20608_gyro_scaleget>
878067ba:	ed87 0a05 	vstr	s0, [r7, #20]
878067be:	f7ff ffc1 	bl	87806744 <icm20608_accel_scaleget>
878067c2:	4603      	mov	r3, r0
878067c4:	827b      	strh	r3, [r7, #18]
878067c6:	793b      	ldrb	r3, [r7, #4]
878067c8:	021b      	lsls	r3, r3, #8
878067ca:	b29a      	uxth	r2, r3
878067cc:	797b      	ldrb	r3, [r7, #5]
878067ce:	b29b      	uxth	r3, r3
878067d0:	4313      	orrs	r3, r2
878067d2:	b29b      	uxth	r3, r3
878067d4:	b21a      	sxth	r2, r3
878067d6:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878067da:	f2c8 7380 	movt	r3, #34688	; 0x8780
878067de:	60da      	str	r2, [r3, #12]
878067e0:	79bb      	ldrb	r3, [r7, #6]
878067e2:	021b      	lsls	r3, r3, #8
878067e4:	b29a      	uxth	r2, r3
878067e6:	79fb      	ldrb	r3, [r7, #7]
878067e8:	b29b      	uxth	r3, r3
878067ea:	4313      	orrs	r3, r2
878067ec:	b29b      	uxth	r3, r3
878067ee:	b21a      	sxth	r2, r3
878067f0:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878067f4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878067f8:	611a      	str	r2, [r3, #16]
878067fa:	7a3b      	ldrb	r3, [r7, #8]
878067fc:	021b      	lsls	r3, r3, #8
878067fe:	b29a      	uxth	r2, r3
87806800:	7a7b      	ldrb	r3, [r7, #9]
87806802:	b29b      	uxth	r3, r3
87806804:	4313      	orrs	r3, r2
87806806:	b29b      	uxth	r3, r3
87806808:	b21a      	sxth	r2, r3
8780680a:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
8780680e:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806812:	615a      	str	r2, [r3, #20]
87806814:	7abb      	ldrb	r3, [r7, #10]
87806816:	021b      	lsls	r3, r3, #8
87806818:	b29a      	uxth	r2, r3
8780681a:	7afb      	ldrb	r3, [r7, #11]
8780681c:	b29b      	uxth	r3, r3
8780681e:	4313      	orrs	r3, r2
87806820:	b29b      	uxth	r3, r3
87806822:	b21a      	sxth	r2, r3
87806824:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806828:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780682c:	619a      	str	r2, [r3, #24]
8780682e:	7b3b      	ldrb	r3, [r7, #12]
87806830:	021b      	lsls	r3, r3, #8
87806832:	b29a      	uxth	r2, r3
87806834:	7b7b      	ldrb	r3, [r7, #13]
87806836:	b29b      	uxth	r3, r3
87806838:	4313      	orrs	r3, r2
8780683a:	b29b      	uxth	r3, r3
8780683c:	b21a      	sxth	r2, r3
8780683e:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806842:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806846:	601a      	str	r2, [r3, #0]
87806848:	7bbb      	ldrb	r3, [r7, #14]
8780684a:	021b      	lsls	r3, r3, #8
8780684c:	b29a      	uxth	r2, r3
8780684e:	7bfb      	ldrb	r3, [r7, #15]
87806850:	b29b      	uxth	r3, r3
87806852:	4313      	orrs	r3, r2
87806854:	b29b      	uxth	r3, r3
87806856:	b21a      	sxth	r2, r3
87806858:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
8780685c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806860:	605a      	str	r2, [r3, #4]
87806862:	7c3b      	ldrb	r3, [r7, #16]
87806864:	021b      	lsls	r3, r3, #8
87806866:	b29a      	uxth	r2, r3
87806868:	7c7b      	ldrb	r3, [r7, #17]
8780686a:	b29b      	uxth	r3, r3
8780686c:	4313      	orrs	r3, r2
8780686e:	b29b      	uxth	r3, r3
87806870:	b21a      	sxth	r2, r3
87806872:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806876:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780687a:	609a      	str	r2, [r3, #8]
8780687c:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806880:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806884:	681b      	ldr	r3, [r3, #0]
87806886:	ee07 3a90 	vmov	s15, r3
8780688a:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
8780688e:	edd7 7a05 	vldr	s15, [r7, #20]
87806892:	eec7 7a27 	vdiv.f32	s15, s14, s15
87806896:	ed9f 7a64 	vldr	s14, [pc, #400]	; 87806a28 <icm20608_getdata+0x284>
8780689a:	ee67 7a87 	vmul.f32	s15, s15, s14
8780689e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
878068a2:	ee17 2a90 	vmov	r2, s15
878068a6:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878068aa:	f2c8 7380 	movt	r3, #34688	; 0x8780
878068ae:	61da      	str	r2, [r3, #28]
878068b0:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878068b4:	f2c8 7380 	movt	r3, #34688	; 0x8780
878068b8:	685b      	ldr	r3, [r3, #4]
878068ba:	ee07 3a90 	vmov	s15, r3
878068be:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
878068c2:	edd7 7a05 	vldr	s15, [r7, #20]
878068c6:	eec7 7a27 	vdiv.f32	s15, s14, s15
878068ca:	ed9f 7a57 	vldr	s14, [pc, #348]	; 87806a28 <icm20608_getdata+0x284>
878068ce:	ee67 7a87 	vmul.f32	s15, s15, s14
878068d2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
878068d6:	ee17 2a90 	vmov	r2, s15
878068da:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878068de:	f2c8 7380 	movt	r3, #34688	; 0x8780
878068e2:	621a      	str	r2, [r3, #32]
878068e4:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878068e8:	f2c8 7380 	movt	r3, #34688	; 0x8780
878068ec:	689b      	ldr	r3, [r3, #8]
878068ee:	ee07 3a90 	vmov	s15, r3
878068f2:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
878068f6:	edd7 7a05 	vldr	s15, [r7, #20]
878068fa:	eec7 7a27 	vdiv.f32	s15, s14, s15
878068fe:	ed9f 7a4a 	vldr	s14, [pc, #296]	; 87806a28 <icm20608_getdata+0x284>
87806902:	ee67 7a87 	vmul.f32	s15, s15, s14
87806906:	eefd 7ae7 	vcvt.s32.f32	s15, s15
8780690a:	ee17 2a90 	vmov	r2, s15
8780690e:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806912:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806916:	625a      	str	r2, [r3, #36]	; 0x24
87806918:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
8780691c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806920:	68db      	ldr	r3, [r3, #12]
87806922:	ee07 3a90 	vmov	s15, r3
87806926:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
8780692a:	8a7b      	ldrh	r3, [r7, #18]
8780692c:	ee07 3a90 	vmov	s15, r3
87806930:	eef8 7ae7 	vcvt.f32.s32	s15, s15
87806934:	eec7 7a27 	vdiv.f32	s15, s14, s15
87806938:	ed9f 7a3b 	vldr	s14, [pc, #236]	; 87806a28 <icm20608_getdata+0x284>
8780693c:	ee67 7a87 	vmul.f32	s15, s15, s14
87806940:	eefd 7ae7 	vcvt.s32.f32	s15, s15
87806944:	ee17 2a90 	vmov	r2, s15
87806948:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
8780694c:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806950:	629a      	str	r2, [r3, #40]	; 0x28
87806952:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806956:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780695a:	691b      	ldr	r3, [r3, #16]
8780695c:	ee07 3a90 	vmov	s15, r3
87806960:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
87806964:	8a7b      	ldrh	r3, [r7, #18]
87806966:	ee07 3a90 	vmov	s15, r3
8780696a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
8780696e:	eec7 7a27 	vdiv.f32	s15, s14, s15
87806972:	ed9f 7a2d 	vldr	s14, [pc, #180]	; 87806a28 <icm20608_getdata+0x284>
87806976:	ee67 7a87 	vmul.f32	s15, s15, s14
8780697a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
8780697e:	ee17 2a90 	vmov	r2, s15
87806982:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806986:	f2c8 7380 	movt	r3, #34688	; 0x8780
8780698a:	62da      	str	r2, [r3, #44]	; 0x2c
8780698c:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806990:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806994:	695b      	ldr	r3, [r3, #20]
87806996:	ee07 3a90 	vmov	s15, r3
8780699a:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
8780699e:	8a7b      	ldrh	r3, [r7, #18]
878069a0:	ee07 3a90 	vmov	s15, r3
878069a4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
878069a8:	eec7 7a27 	vdiv.f32	s15, s14, s15
878069ac:	ed9f 7a1e 	vldr	s14, [pc, #120]	; 87806a28 <icm20608_getdata+0x284>
878069b0:	ee67 7a87 	vmul.f32	s15, s15, s14
878069b4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
878069b8:	ee17 2a90 	vmov	r2, s15
878069bc:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878069c0:	f2c8 7380 	movt	r3, #34688	; 0x8780
878069c4:	631a      	str	r2, [r3, #48]	; 0x30
878069c6:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
878069ca:	f2c8 7380 	movt	r3, #34688	; 0x8780
878069ce:	699b      	ldr	r3, [r3, #24]
878069d0:	ee07 3a90 	vmov	s15, r3
878069d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
878069d8:	eeb3 7a09 	vmov.f32	s14, #57	; 0x39
878069dc:	ee77 7ac7 	vsub.f32	s15, s15, s14
878069e0:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
878069e4:	ed9f 6b0c 	vldr	d6, [pc, #48]	; 87806a18 <icm20608_getdata+0x274>
878069e8:	ee87 7b06 	vdiv.f64	d7, d7, d6
878069ec:	eeb3 6b09 	vmov.f64	d6, #57	; 0x39
878069f0:	ee37 7b06 	vadd.f64	d7, d7, d6
878069f4:	ed9f 6b0a 	vldr	d6, [pc, #40]	; 87806a20 <icm20608_getdata+0x27c>
878069f8:	ee27 7b06 	vmul.f64	d7, d7, d6
878069fc:	eefd 7bc7 	vcvt.s32.f64	s15, d7
87806a00:	ee17 2a90 	vmov	r2, s15
87806a04:	f24c 73e0 	movw	r3, #51168	; 0xc7e0
87806a08:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806a0c:	635a      	str	r2, [r3, #52]	; 0x34
87806a0e:	3718      	adds	r7, #24
87806a10:	46bd      	mov	sp, r7
87806a12:	bd80      	pop	{r7, pc}
87806a14:	f3af 8000 	nop.w
87806a18:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd
87806a1c:	40746ccc 	rsbsmi	r6, r4, ip, asr #25
87806a20:	00000000 	andeq	r0, r0, r0
87806a24:	40590000 	subsmi	r0, r9, r0
87806a28:	42c80000 	sbcmi	r0, r8, #0
87806a2c:	f3af 8000 	nop.w

87806a30 <__aeabi_uidiv>:
87806a30:	1e4a      	subs	r2, r1, #1
87806a32:	bf08      	it	eq
87806a34:	4770      	bxeq	lr
87806a36:	f0c0 8124 	bcc.w	87806c82 <__aeabi_uidiv+0x252>
87806a3a:	4288      	cmp	r0, r1
87806a3c:	f240 8116 	bls.w	87806c6c <__aeabi_uidiv+0x23c>
87806a40:	4211      	tst	r1, r2
87806a42:	f000 8117 	beq.w	87806c74 <__aeabi_uidiv+0x244>
87806a46:	fab0 f380 	clz	r3, r0
87806a4a:	fab1 f281 	clz	r2, r1
87806a4e:	eba2 0303 	sub.w	r3, r2, r3
87806a52:	f1c3 031f 	rsb	r3, r3, #31
87806a56:	a204      	add	r2, pc, #16	; (adr r2, 87806a68 <__aeabi_uidiv+0x38>)
87806a58:	eb02 1303 	add.w	r3, r2, r3, lsl #4
87806a5c:	f04f 0200 	mov.w	r2, #0
87806a60:	469f      	mov	pc, r3
87806a62:	bf00      	nop
87806a64:	f3af 8000 	nop.w
87806a68:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
87806a6c:	bf00      	nop
87806a6e:	eb42 0202 	adc.w	r2, r2, r2
87806a72:	bf28      	it	cs
87806a74:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
87806a78:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
87806a7c:	bf00      	nop
87806a7e:	eb42 0202 	adc.w	r2, r2, r2
87806a82:	bf28      	it	cs
87806a84:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
87806a88:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
87806a8c:	bf00      	nop
87806a8e:	eb42 0202 	adc.w	r2, r2, r2
87806a92:	bf28      	it	cs
87806a94:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
87806a98:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
87806a9c:	bf00      	nop
87806a9e:	eb42 0202 	adc.w	r2, r2, r2
87806aa2:	bf28      	it	cs
87806aa4:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
87806aa8:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
87806aac:	bf00      	nop
87806aae:	eb42 0202 	adc.w	r2, r2, r2
87806ab2:	bf28      	it	cs
87806ab4:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
87806ab8:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
87806abc:	bf00      	nop
87806abe:	eb42 0202 	adc.w	r2, r2, r2
87806ac2:	bf28      	it	cs
87806ac4:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
87806ac8:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
87806acc:	bf00      	nop
87806ace:	eb42 0202 	adc.w	r2, r2, r2
87806ad2:	bf28      	it	cs
87806ad4:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
87806ad8:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
87806adc:	bf00      	nop
87806ade:	eb42 0202 	adc.w	r2, r2, r2
87806ae2:	bf28      	it	cs
87806ae4:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
87806ae8:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
87806aec:	bf00      	nop
87806aee:	eb42 0202 	adc.w	r2, r2, r2
87806af2:	bf28      	it	cs
87806af4:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
87806af8:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
87806afc:	bf00      	nop
87806afe:	eb42 0202 	adc.w	r2, r2, r2
87806b02:	bf28      	it	cs
87806b04:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
87806b08:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
87806b0c:	bf00      	nop
87806b0e:	eb42 0202 	adc.w	r2, r2, r2
87806b12:	bf28      	it	cs
87806b14:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
87806b18:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
87806b1c:	bf00      	nop
87806b1e:	eb42 0202 	adc.w	r2, r2, r2
87806b22:	bf28      	it	cs
87806b24:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
87806b28:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
87806b2c:	bf00      	nop
87806b2e:	eb42 0202 	adc.w	r2, r2, r2
87806b32:	bf28      	it	cs
87806b34:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
87806b38:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
87806b3c:	bf00      	nop
87806b3e:	eb42 0202 	adc.w	r2, r2, r2
87806b42:	bf28      	it	cs
87806b44:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
87806b48:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
87806b4c:	bf00      	nop
87806b4e:	eb42 0202 	adc.w	r2, r2, r2
87806b52:	bf28      	it	cs
87806b54:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
87806b58:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
87806b5c:	bf00      	nop
87806b5e:	eb42 0202 	adc.w	r2, r2, r2
87806b62:	bf28      	it	cs
87806b64:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
87806b68:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
87806b6c:	bf00      	nop
87806b6e:	eb42 0202 	adc.w	r2, r2, r2
87806b72:	bf28      	it	cs
87806b74:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
87806b78:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
87806b7c:	bf00      	nop
87806b7e:	eb42 0202 	adc.w	r2, r2, r2
87806b82:	bf28      	it	cs
87806b84:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
87806b88:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
87806b8c:	bf00      	nop
87806b8e:	eb42 0202 	adc.w	r2, r2, r2
87806b92:	bf28      	it	cs
87806b94:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
87806b98:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
87806b9c:	bf00      	nop
87806b9e:	eb42 0202 	adc.w	r2, r2, r2
87806ba2:	bf28      	it	cs
87806ba4:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
87806ba8:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
87806bac:	bf00      	nop
87806bae:	eb42 0202 	adc.w	r2, r2, r2
87806bb2:	bf28      	it	cs
87806bb4:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
87806bb8:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
87806bbc:	bf00      	nop
87806bbe:	eb42 0202 	adc.w	r2, r2, r2
87806bc2:	bf28      	it	cs
87806bc4:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
87806bc8:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
87806bcc:	bf00      	nop
87806bce:	eb42 0202 	adc.w	r2, r2, r2
87806bd2:	bf28      	it	cs
87806bd4:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
87806bd8:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
87806bdc:	bf00      	nop
87806bde:	eb42 0202 	adc.w	r2, r2, r2
87806be2:	bf28      	it	cs
87806be4:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
87806be8:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
87806bec:	bf00      	nop
87806bee:	eb42 0202 	adc.w	r2, r2, r2
87806bf2:	bf28      	it	cs
87806bf4:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
87806bf8:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
87806bfc:	bf00      	nop
87806bfe:	eb42 0202 	adc.w	r2, r2, r2
87806c02:	bf28      	it	cs
87806c04:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
87806c08:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
87806c0c:	bf00      	nop
87806c0e:	eb42 0202 	adc.w	r2, r2, r2
87806c12:	bf28      	it	cs
87806c14:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
87806c18:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
87806c1c:	bf00      	nop
87806c1e:	eb42 0202 	adc.w	r2, r2, r2
87806c22:	bf28      	it	cs
87806c24:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
87806c28:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
87806c2c:	bf00      	nop
87806c2e:	eb42 0202 	adc.w	r2, r2, r2
87806c32:	bf28      	it	cs
87806c34:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
87806c38:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
87806c3c:	bf00      	nop
87806c3e:	eb42 0202 	adc.w	r2, r2, r2
87806c42:	bf28      	it	cs
87806c44:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
87806c48:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
87806c4c:	bf00      	nop
87806c4e:	eb42 0202 	adc.w	r2, r2, r2
87806c52:	bf28      	it	cs
87806c54:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
87806c58:	ebb0 0f01 	cmp.w	r0, r1
87806c5c:	bf00      	nop
87806c5e:	eb42 0202 	adc.w	r2, r2, r2
87806c62:	bf28      	it	cs
87806c64:	eba0 0001 	subcs.w	r0, r0, r1
87806c68:	4610      	mov	r0, r2
87806c6a:	4770      	bx	lr
87806c6c:	bf0c      	ite	eq
87806c6e:	2001      	moveq	r0, #1
87806c70:	2000      	movne	r0, #0
87806c72:	4770      	bx	lr
87806c74:	fab1 f281 	clz	r2, r1
87806c78:	f1c2 021f 	rsb	r2, r2, #31
87806c7c:	fa20 f002 	lsr.w	r0, r0, r2
87806c80:	4770      	bx	lr
87806c82:	b108      	cbz	r0, 87806c88 <__aeabi_uidiv+0x258>
87806c84:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
87806c88:	f000 b826 	b.w	87806cd8 <__aeabi_idiv0>

87806c8c <__aeabi_uidivmod>:
87806c8c:	2900      	cmp	r1, #0
87806c8e:	d0f8      	beq.n	87806c82 <__aeabi_uidiv+0x252>
87806c90:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
87806c94:	f7ff fecc 	bl	87806a30 <__aeabi_uidiv>
87806c98:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87806c9c:	fb02 f300 	mul.w	r3, r2, r0
87806ca0:	eba1 0103 	sub.w	r1, r1, r3
87806ca4:	4770      	bx	lr
87806ca6:	bf00      	nop

87806ca8 <__aeabi_uldivmod>:
87806ca8:	b953      	cbnz	r3, 87806cc0 <__aeabi_uldivmod+0x18>
87806caa:	b94a      	cbnz	r2, 87806cc0 <__aeabi_uldivmod+0x18>
87806cac:	2900      	cmp	r1, #0
87806cae:	bf08      	it	eq
87806cb0:	2800      	cmpeq	r0, #0
87806cb2:	bf1c      	itt	ne
87806cb4:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
87806cb8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
87806cbc:	f000 b80c 	b.w	87806cd8 <__aeabi_idiv0>
87806cc0:	f1ad 0c08 	sub.w	ip, sp, #8
87806cc4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
87806cc8:	f000 f80c 	bl	87806ce4 <__udivmoddi4>
87806ccc:	f8dd e004 	ldr.w	lr, [sp, #4]
87806cd0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
87806cd4:	b004      	add	sp, #16
87806cd6:	4770      	bx	lr

87806cd8 <__aeabi_idiv0>:
87806cd8:	b502      	push	{r1, lr}
87806cda:	f04f 0008 	mov.w	r0, #8
87806cde:	f7fa fd9f 	bl	87801820 <raise>
87806ce2:	bd02      	pop	{r1, pc}

87806ce4 <__udivmoddi4>:
87806ce4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
87806ce8:	460d      	mov	r5, r1
87806cea:	429d      	cmp	r5, r3
87806cec:	4604      	mov	r4, r0
87806cee:	4610      	mov	r0, r2
87806cf0:	4619      	mov	r1, r3
87806cf2:	bf08      	it	eq
87806cf4:	4284      	cmpeq	r4, r0
87806cf6:	9a07      	ldr	r2, [sp, #28]
87806cf8:	bf3c      	itt	cc
87806cfa:	2000      	movcc	r0, #0
87806cfc:	2100      	movcc	r1, #0
87806cfe:	d36a      	bcc.n	87806dd6 <__udivmoddi4+0xf2>
87806d00:	fab1 f681 	clz	r6, r1
87806d04:	2900      	cmp	r1, #0
87806d06:	d06f      	beq.n	87806de8 <__udivmoddi4+0x104>
87806d08:	fab5 f385 	clz	r3, r5
87806d0c:	2d00      	cmp	r5, #0
87806d0e:	d067      	beq.n	87806de0 <__udivmoddi4+0xfc>
87806d10:	1af3      	subs	r3, r6, r3
87806d12:	f1a3 0c20 	sub.w	ip, r3, #32
87806d16:	fa01 f703 	lsl.w	r7, r1, r3
87806d1a:	fa00 fe0c 	lsl.w	lr, r0, ip
87806d1e:	f1c3 0820 	rsb	r8, r3, #32
87806d22:	fa20 f108 	lsr.w	r1, r0, r8
87806d26:	fa00 f603 	lsl.w	r6, r0, r3
87806d2a:	ea47 070e 	orr.w	r7, r7, lr
87806d2e:	469e      	mov	lr, r3
87806d30:	430f      	orrs	r7, r1
87806d32:	42bd      	cmp	r5, r7
87806d34:	bf08      	it	eq
87806d36:	42b4      	cmpeq	r4, r6
87806d38:	bf3c      	itt	cc
87806d3a:	2000      	movcc	r0, #0
87806d3c:	2100      	movcc	r1, #0
87806d3e:	d30c      	bcc.n	87806d5a <__udivmoddi4+0x76>
87806d40:	f04f 0901 	mov.w	r9, #1
87806d44:	1ba4      	subs	r4, r4, r6
87806d46:	fa29 f808 	lsr.w	r8, r9, r8
87806d4a:	fa09 f10c 	lsl.w	r1, r9, ip
87806d4e:	fa09 f003 	lsl.w	r0, r9, r3
87806d52:	ea41 0108 	orr.w	r1, r1, r8
87806d56:	eb65 0507 	sbc.w	r5, r5, r7
87806d5a:	2b00      	cmp	r3, #0
87806d5c:	d03b      	beq.n	87806dd6 <__udivmoddi4+0xf2>
87806d5e:	087f      	lsrs	r7, r7, #1
87806d60:	ea4f 0636 	mov.w	r6, r6, rrx
87806d64:	e009      	b.n	87806d7a <__udivmoddi4+0x96>
87806d66:	1ba4      	subs	r4, r4, r6
87806d68:	eb65 0507 	sbc.w	r5, r5, r7
87806d6c:	1924      	adds	r4, r4, r4
87806d6e:	416d      	adcs	r5, r5
87806d70:	3401      	adds	r4, #1
87806d72:	f145 0500 	adc.w	r5, r5, #0
87806d76:	3b01      	subs	r3, #1
87806d78:	d007      	beq.n	87806d8a <__udivmoddi4+0xa6>
87806d7a:	42bd      	cmp	r5, r7
87806d7c:	bf08      	it	eq
87806d7e:	42b4      	cmpeq	r4, r6
87806d80:	d2f1      	bcs.n	87806d66 <__udivmoddi4+0x82>
87806d82:	1924      	adds	r4, r4, r4
87806d84:	416d      	adcs	r5, r5
87806d86:	3b01      	subs	r3, #1
87806d88:	d1f7      	bne.n	87806d7a <__udivmoddi4+0x96>
87806d8a:	f1ce 0720 	rsb	r7, lr, #32
87806d8e:	fa24 f60e 	lsr.w	r6, r4, lr
87806d92:	fa05 f707 	lsl.w	r7, r5, r7
87806d96:	f1ae 0320 	sub.w	r3, lr, #32
87806d9a:	fa25 f303 	lsr.w	r3, r5, r3
87806d9e:	fa25 fc0e 	lsr.w	ip, r5, lr
87806da2:	1900      	adds	r0, r0, r4
87806da4:	ea46 0607 	orr.w	r6, r6, r7
87806da8:	ea46 0403 	orr.w	r4, r6, r3
87806dac:	4169      	adcs	r1, r5
87806dae:	4665      	mov	r5, ip
87806db0:	f1ae 0c20 	sub.w	ip, lr, #32
87806db4:	fa05 f70e 	lsl.w	r7, r5, lr
87806db8:	fa04 fc0c 	lsl.w	ip, r4, ip
87806dbc:	fa04 f60e 	lsl.w	r6, r4, lr
87806dc0:	f1ce 0320 	rsb	r3, lr, #32
87806dc4:	fa24 f303 	lsr.w	r3, r4, r3
87806dc8:	ea47 070c 	orr.w	r7, r7, ip
87806dcc:	1b80      	subs	r0, r0, r6
87806dce:	ea47 0703 	orr.w	r7, r7, r3
87806dd2:	eb61 0107 	sbc.w	r1, r1, r7
87806dd6:	b10a      	cbz	r2, 87806ddc <__udivmoddi4+0xf8>
87806dd8:	e9c2 4500 	strd	r4, r5, [r2]
87806ddc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
87806de0:	fab4 f384 	clz	r3, r4
87806de4:	3320      	adds	r3, #32
87806de6:	e793      	b.n	87806d10 <__udivmoddi4+0x2c>
87806de8:	fab0 f380 	clz	r3, r0
87806dec:	f103 0620 	add.w	r6, r3, #32
87806df0:	fab5 f385 	clz	r3, r5
87806df4:	2d00      	cmp	r5, #0
87806df6:	d18b      	bne.n	87806d10 <__udivmoddi4+0x2c>
87806df8:	e7f2      	b.n	87806de0 <__udivmoddi4+0xfc>
87806dfa:	bf00      	nop
87806dfc:	0000      	movs	r0, r0
	...

87806e00 <__main_from_arm>:
87806e00:	e51ff004 	ldr	pc, [pc, #-4]	; 87806e04 <__main_from_arm+0x4>
87806e04:	87806e09 	strhi	r6, [r0, r9, lsl #28]

Disassembly of section .text.startup:

87806e08 <main>:
87806e08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
87806e0c:	b082      	sub	sp, #8
87806e0e:	ee11 3f50 	mrc	15, 0, r3, cr1, cr0, {2}
87806e12:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
87806e16:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
87806e1a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
87806e1e:	ee01 3f50 	mcr	15, 0, r3, cr1, cr0, {2}
87806e22:	eef8 3a10 	vmrs	r3, fpexc
87806e26:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
87806e2a:	eee8 3a10 	vmsr	fpexc, r3
87806e2e:	f7f9 ff09 	bl	87800c44 <int_init>
87806e32:	f7f9 fa79 	bl	87800328 <imx6u_clkinit>
87806e36:	f7f9 fbfb 	bl	87800630 <delay_init>
87806e3a:	f7f9 fa3d 	bl	878002b8 <clk_enable>
87806e3e:	f7f9 fb8d 	bl	8780055c <led_init>
87806e42:	f7f9 fcd3 	bl	878007ec <beep_init>
87806e46:	f7fa fa6d 	bl	87801324 <uart_init>
87806e4a:	f7fc ffb9 	bl	87803dc0 <lcd_init>
87806e4e:	f247 1340 	movw	r3, #28992	; 0x7140
87806e52:	2218      	movs	r2, #24
87806e54:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806e58:	f64c 081c 	movw	r8, #51228	; 0xc81c
87806e5c:	9301      	str	r3, [sp, #4]
87806e5e:	f44f 047f 	mov.w	r4, #16711680	; 0xff0000
87806e62:	4613      	mov	r3, r2
87806e64:	9200      	str	r2, [sp, #0]
87806e66:	210a      	movs	r1, #10
87806e68:	f44f 72c8 	mov.w	r2, #400	; 0x190
87806e6c:	2032      	movs	r0, #50	; 0x32
87806e6e:	f2c8 7880 	movt	r8, #34688	; 0x8780
87806e72:	f8c8 4018 	str.w	r4, [r8, #24]
87806e76:	2410      	movs	r4, #16
87806e78:	f7fe fc04 	bl	87805684 <lcd_show_string>
87806e7c:	f247 1258 	movw	r2, #29016	; 0x7158
87806e80:	4623      	mov	r3, r4
87806e82:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806e86:	9400      	str	r4, [sp, #0]
87806e88:	9201      	str	r2, [sp, #4]
87806e8a:	2128      	movs	r1, #40	; 0x28
87806e8c:	22c8      	movs	r2, #200	; 0xc8
87806e8e:	2032      	movs	r0, #50	; 0x32
87806e90:	f7fe fbf8 	bl	87805684 <lcd_show_string>
87806e94:	f247 1268 	movw	r2, #29032	; 0x7168
87806e98:	4623      	mov	r3, r4
87806e9a:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806e9e:	9400      	str	r4, [sp, #0]
87806ea0:	9201      	str	r2, [sp, #4]
87806ea2:	213c      	movs	r1, #60	; 0x3c
87806ea4:	22c8      	movs	r2, #200	; 0xc8
87806ea6:	2032      	movs	r0, #50	; 0x32
87806ea8:	f7fe fbec 	bl	87805684 <lcd_show_string>
87806eac:	f247 1278 	movw	r2, #29048	; 0x7178
87806eb0:	4623      	mov	r3, r4
87806eb2:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806eb6:	9400      	str	r4, [sp, #0]
87806eb8:	9201      	str	r2, [sp, #4]
87806eba:	2150      	movs	r1, #80	; 0x50
87806ebc:	22c8      	movs	r2, #200	; 0xc8
87806ebe:	2032      	movs	r0, #50	; 0x32
87806ec0:	f247 1684 	movw	r6, #29060	; 0x7184
87806ec4:	f247 149c 	movw	r4, #29084	; 0x719c
87806ec8:	461f      	mov	r7, r3
87806eca:	f2c8 7680 	movt	r6, #34688	; 0x8780
87806ece:	f7fe fbd9 	bl	87805684 <lcd_show_string>
87806ed2:	f2c8 7480 	movt	r4, #34688	; 0x8780
87806ed6:	e017      	b.n	87806f08 <main+0x100>
87806ed8:	2310      	movs	r3, #16
87806eda:	22c8      	movs	r2, #200	; 0xc8
87806edc:	2164      	movs	r1, #100	; 0x64
87806ede:	2032      	movs	r0, #50	; 0x32
87806ee0:	9601      	str	r6, [sp, #4]
87806ee2:	9700      	str	r7, [sp, #0]
87806ee4:	f7fe fbce 	bl	87805684 <lcd_show_string>
87806ee8:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
87806eec:	f7f9 fc14 	bl	87800718 <delayms>
87806ef0:	2032      	movs	r0, #50	; 0x32
87806ef2:	9401      	str	r4, [sp, #4]
87806ef4:	2310      	movs	r3, #16
87806ef6:	9700      	str	r7, [sp, #0]
87806ef8:	22c8      	movs	r2, #200	; 0xc8
87806efa:	2164      	movs	r1, #100	; 0x64
87806efc:	f7fe fbc2 	bl	87805684 <lcd_show_string>
87806f00:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
87806f04:	f7f9 fc08 	bl	87800718 <delayms>
87806f08:	f7ff fa5e 	bl	878063c8 <icm20608_init>
87806f0c:	4605      	mov	r5, r0
87806f0e:	2800      	cmp	r0, #0
87806f10:	d1e2      	bne.n	87806ed8 <main+0xd0>
87806f12:	f247 13b4 	movw	r3, #29108	; 0x71b4
87806f16:	2610      	movs	r6, #16
87806f18:	f2c8 7380 	movt	r3, #34688	; 0x8780
87806f1c:	22c8      	movs	r2, #200	; 0xc8
87806f1e:	9301      	str	r3, [sp, #4]
87806f20:	2164      	movs	r1, #100	; 0x64
87806f22:	4633      	mov	r3, r6
87806f24:	2032      	movs	r0, #50	; 0x32
87806f26:	9600      	str	r6, [sp, #0]
87806f28:	f247 2418 	movw	r4, #29208	; 0x7218
87806f2c:	f7fe fbaa 	bl	87805684 <lcd_show_string>
87806f30:	f247 12c4 	movw	r2, #29124	; 0x71c4
87806f34:	4633      	mov	r3, r6
87806f36:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806f3a:	2182      	movs	r1, #130	; 0x82
87806f3c:	9201      	str	r2, [sp, #4]
87806f3e:	2032      	movs	r0, #50	; 0x32
87806f40:	22c8      	movs	r2, #200	; 0xc8
87806f42:	9600      	str	r6, [sp, #0]
87806f44:	f7fe fb9e 	bl	87805684 <lcd_show_string>
87806f48:	f247 12d0 	movw	r2, #29136	; 0x71d0
87806f4c:	4633      	mov	r3, r6
87806f4e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806f52:	2196      	movs	r1, #150	; 0x96
87806f54:	9201      	str	r2, [sp, #4]
87806f56:	2032      	movs	r0, #50	; 0x32
87806f58:	22c8      	movs	r2, #200	; 0xc8
87806f5a:	9600      	str	r6, [sp, #0]
87806f5c:	f7fe fb92 	bl	87805684 <lcd_show_string>
87806f60:	f247 12dc 	movw	r2, #29148	; 0x71dc
87806f64:	4633      	mov	r3, r6
87806f66:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806f6a:	21aa      	movs	r1, #170	; 0xaa
87806f6c:	9201      	str	r2, [sp, #4]
87806f6e:	2032      	movs	r0, #50	; 0x32
87806f70:	22c8      	movs	r2, #200	; 0xc8
87806f72:	9600      	str	r6, [sp, #0]
87806f74:	f7fe fb86 	bl	87805684 <lcd_show_string>
87806f78:	f247 12e8 	movw	r2, #29160	; 0x71e8
87806f7c:	4633      	mov	r3, r6
87806f7e:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806f82:	21be      	movs	r1, #190	; 0xbe
87806f84:	9201      	str	r2, [sp, #4]
87806f86:	2032      	movs	r0, #50	; 0x32
87806f88:	22c8      	movs	r2, #200	; 0xc8
87806f8a:	9600      	str	r6, [sp, #0]
87806f8c:	f7fe fb7a 	bl	87805684 <lcd_show_string>
87806f90:	f247 12f4 	movw	r2, #29172	; 0x71f4
87806f94:	4633      	mov	r3, r6
87806f96:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806f9a:	21d2      	movs	r1, #210	; 0xd2
87806f9c:	9201      	str	r2, [sp, #4]
87806f9e:	2032      	movs	r0, #50	; 0x32
87806fa0:	22c8      	movs	r2, #200	; 0xc8
87806fa2:	9600      	str	r6, [sp, #0]
87806fa4:	f7fe fb6e 	bl	87805684 <lcd_show_string>
87806fa8:	f247 2200 	movw	r2, #29184	; 0x7200
87806fac:	4633      	mov	r3, r6
87806fae:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806fb2:	21e6      	movs	r1, #230	; 0xe6
87806fb4:	9201      	str	r2, [sp, #4]
87806fb6:	2032      	movs	r0, #50	; 0x32
87806fb8:	22c8      	movs	r2, #200	; 0xc8
87806fba:	9600      	str	r6, [sp, #0]
87806fbc:	f7fe fb62 	bl	87805684 <lcd_show_string>
87806fc0:	f247 220c 	movw	r2, #29196	; 0x720c
87806fc4:	f2c8 7480 	movt	r4, #34688	; 0x8780
87806fc8:	f2c8 7280 	movt	r2, #34688	; 0x8780
87806fcc:	4633      	mov	r3, r6
87806fce:	9201      	str	r2, [sp, #4]
87806fd0:	21fa      	movs	r1, #250	; 0xfa
87806fd2:	22c8      	movs	r2, #200	; 0xc8
87806fd4:	2032      	movs	r0, #50	; 0x32
87806fd6:	9600      	str	r6, [sp, #0]
87806fd8:	f247 271c 	movw	r7, #29212	; 0x721c
87806fdc:	f7fe fb52 	bl	87805684 <lcd_show_string>
87806fe0:	4633      	mov	r3, r6
87806fe2:	9401      	str	r4, [sp, #4]
87806fe4:	22c8      	movs	r2, #200	; 0xc8
87806fe6:	2182      	movs	r1, #130	; 0x82
87806fe8:	20e7      	movs	r0, #231	; 0xe7
87806fea:	9600      	str	r6, [sp, #0]
87806fec:	f7fe fb4a 	bl	87805684 <lcd_show_string>
87806ff0:	9401      	str	r4, [sp, #4]
87806ff2:	4633      	mov	r3, r6
87806ff4:	22c8      	movs	r2, #200	; 0xc8
87806ff6:	2196      	movs	r1, #150	; 0x96
87806ff8:	20e7      	movs	r0, #231	; 0xe7
87806ffa:	9600      	str	r6, [sp, #0]
87806ffc:	f7fe fb42 	bl	87805684 <lcd_show_string>
87807000:	f2c8 7780 	movt	r7, #34688	; 0x8780
87807004:	9401      	str	r4, [sp, #4]
87807006:	4633      	mov	r3, r6
87807008:	22c8      	movs	r2, #200	; 0xc8
8780700a:	21aa      	movs	r1, #170	; 0xaa
8780700c:	20e7      	movs	r0, #231	; 0xe7
8780700e:	9600      	str	r6, [sp, #0]
87807010:	f24c 74e0 	movw	r4, #51168	; 0xc7e0
87807014:	f7fe fb36 	bl	87805684 <lcd_show_string>
87807018:	4633      	mov	r3, r6
8780701a:	22c8      	movs	r2, #200	; 0xc8
8780701c:	21be      	movs	r1, #190	; 0xbe
8780701e:	20e7      	movs	r0, #231	; 0xe7
87807020:	9600      	str	r6, [sp, #0]
87807022:	f2c8 7480 	movt	r4, #34688	; 0x8780
87807026:	9701      	str	r7, [sp, #4]
87807028:	f7fe fb2c 	bl	87805684 <lcd_show_string>
8780702c:	4633      	mov	r3, r6
8780702e:	22c8      	movs	r2, #200	; 0xc8
87807030:	21d2      	movs	r1, #210	; 0xd2
87807032:	20e7      	movs	r0, #231	; 0xe7
87807034:	9701      	str	r7, [sp, #4]
87807036:	9600      	str	r6, [sp, #0]
87807038:	f7fe fb24 	bl	87805684 <lcd_show_string>
8780703c:	4633      	mov	r3, r6
8780703e:	22c8      	movs	r2, #200	; 0xc8
87807040:	21e6      	movs	r1, #230	; 0xe6
87807042:	20e7      	movs	r0, #231	; 0xe7
87807044:	9701      	str	r7, [sp, #4]
87807046:	9600      	str	r6, [sp, #0]
87807048:	f7fe fb1c 	bl	87805684 <lcd_show_string>
8780704c:	f247 2220 	movw	r2, #29216	; 0x7220
87807050:	4633      	mov	r3, r6
87807052:	f2c8 7280 	movt	r2, #34688	; 0x8780
87807056:	9600      	str	r6, [sp, #0]
87807058:	9201      	str	r2, [sp, #4]
8780705a:	21fa      	movs	r1, #250	; 0xfa
8780705c:	22c8      	movs	r2, #200	; 0xc8
8780705e:	20e7      	movs	r0, #231	; 0xe7
87807060:	f7fe fb10 	bl	87805684 <lcd_show_string>
87807064:	23ff      	movs	r3, #255	; 0xff
87807066:	f8c8 3018 	str.w	r3, [r8, #24]
8780706a:	f7ff fb9b 	bl	878067a4 <icm20608_getdata>
8780706e:	68e3      	ldr	r3, [r4, #12]
87807070:	2210      	movs	r2, #16
87807072:	2182      	movs	r1, #130	; 0x82
87807074:	2078      	movs	r0, #120	; 0x78
87807076:	f7f9 f86f 	bl	87800158 <integer_display>
8780707a:	6923      	ldr	r3, [r4, #16]
8780707c:	2210      	movs	r2, #16
8780707e:	2196      	movs	r1, #150	; 0x96
87807080:	2078      	movs	r0, #120	; 0x78
87807082:	f7f9 f869 	bl	87800158 <integer_display>
87807086:	6963      	ldr	r3, [r4, #20]
87807088:	2210      	movs	r2, #16
8780708a:	21aa      	movs	r1, #170	; 0xaa
8780708c:	2078      	movs	r0, #120	; 0x78
8780708e:	f7f9 f863 	bl	87800158 <integer_display>
87807092:	6823      	ldr	r3, [r4, #0]
87807094:	2210      	movs	r2, #16
87807096:	21be      	movs	r1, #190	; 0xbe
87807098:	2078      	movs	r0, #120	; 0x78
8780709a:	f7f9 f85d 	bl	87800158 <integer_display>
8780709e:	6863      	ldr	r3, [r4, #4]
878070a0:	2210      	movs	r2, #16
878070a2:	21d2      	movs	r1, #210	; 0xd2
878070a4:	2078      	movs	r0, #120	; 0x78
878070a6:	f7f9 f857 	bl	87800158 <integer_display>
878070aa:	68a3      	ldr	r3, [r4, #8]
878070ac:	2210      	movs	r2, #16
878070ae:	21e6      	movs	r1, #230	; 0xe6
878070b0:	2078      	movs	r0, #120	; 0x78
878070b2:	f7f9 f851 	bl	87800158 <integer_display>
878070b6:	69a3      	ldr	r3, [r4, #24]
878070b8:	2210      	movs	r2, #16
878070ba:	21fa      	movs	r1, #250	; 0xfa
878070bc:	2078      	movs	r0, #120	; 0x78
878070be:	f7f9 f84b 	bl	87800158 <integer_display>
878070c2:	6aa3      	ldr	r3, [r4, #40]	; 0x28
878070c4:	2210      	movs	r2, #16
878070c6:	2182      	movs	r1, #130	; 0x82
878070c8:	20aa      	movs	r0, #170	; 0xaa
878070ca:	f7f9 f881 	bl	878001d0 <decimals_display>
878070ce:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
878070d0:	2210      	movs	r2, #16
878070d2:	2196      	movs	r1, #150	; 0x96
878070d4:	20aa      	movs	r0, #170	; 0xaa
878070d6:	f7f9 f87b 	bl	878001d0 <decimals_display>
878070da:	21aa      	movs	r1, #170	; 0xaa
878070dc:	6b23      	ldr	r3, [r4, #48]	; 0x30
878070de:	4608      	mov	r0, r1
878070e0:	2210      	movs	r2, #16
878070e2:	f7f9 f875 	bl	878001d0 <decimals_display>
878070e6:	69e3      	ldr	r3, [r4, #28]
878070e8:	2210      	movs	r2, #16
878070ea:	21be      	movs	r1, #190	; 0xbe
878070ec:	20aa      	movs	r0, #170	; 0xaa
878070ee:	f7f9 f86f 	bl	878001d0 <decimals_display>
878070f2:	6a23      	ldr	r3, [r4, #32]
878070f4:	2210      	movs	r2, #16
878070f6:	21d2      	movs	r1, #210	; 0xd2
878070f8:	20aa      	movs	r0, #170	; 0xaa
878070fa:	f7f9 f869 	bl	878001d0 <decimals_display>
878070fe:	f085 0501 	eor.w	r5, r5, #1
87807102:	6a63      	ldr	r3, [r4, #36]	; 0x24
87807104:	2210      	movs	r2, #16
87807106:	21e6      	movs	r1, #230	; 0xe6
87807108:	20aa      	movs	r0, #170	; 0xaa
8780710a:	b2ed      	uxtb	r5, r5
8780710c:	f7f9 f860 	bl	878001d0 <decimals_display>
87807110:	6b63      	ldr	r3, [r4, #52]	; 0x34
87807112:	2210      	movs	r2, #16
87807114:	21fa      	movs	r1, #250	; 0xfa
87807116:	20aa      	movs	r0, #170	; 0xaa
87807118:	f7f9 f85a 	bl	878001d0 <decimals_display>
8780711c:	2078      	movs	r0, #120	; 0x78
8780711e:	f7f9 fafb 	bl	87800718 <delayms>
87807122:	2000      	movs	r0, #0
87807124:	4629      	mov	r1, r5
87807126:	f7f9 fa55 	bl	878005d4 <led_switch>
8780712a:	e79e      	b.n	8780706a <main+0x262>

Disassembly of section .rodata:

8780712c <.LC0-0xf8>:
8780712c:	0064252d 	rsbeq	r2, r4, sp, lsr #10
87807130:	2e64252d 	cdpcs	5, 6, cr2, cr4, cr13, {1}
87807134:	00006425 	andeq	r6, r0, r5, lsr #8
87807138:	252e6425 	strcs	r6, [lr, #-1061]!	; 0x425
8780713c:	00000064 	andeq	r0, r0, r4, rrx
87807140:	48504c41 	ldmdami	r0, {r0, r6, sl, fp, lr}^
87807144:	4d492d41 	stclmi	13, cr2, [r9, #-260]	; 0xfffffefc
87807148:	20553658 	subscs	r3, r5, r8, asr r6
8780714c:	20495053 	subcs	r5, r9, r3, asr r0
87807150:	54534554 	ldrbpl	r4, [r3], #-1364	; 0x554
87807154:	00000000 	andeq	r0, r0, r0
87807158:	324d4349 	subcc	r4, sp, #603979777	; 0x24000001
8780715c:	38303630 	ldmdacc	r0!, {r4, r5, r9, sl, ip, sp}
87807160:	53455420 	movtpl	r5, #21536	; 0x5420
87807164:	00000054 	andeq	r0, r0, r4, asr r0
87807168:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 8780706c <main+0x264>
8780716c:	494c4140 	stmdbmi	ip, {r6, r8, lr}^
87807170:	45544e45 	ldrbmi	r4, [r4, #-3653]	; 0xe45
87807174:	0000004b 	andeq	r0, r0, fp, asr #32
87807178:	39313032 	ldmdbcc	r1!, {r1, r4, r5, ip, sp}
8780717c:	322f332f 	eorcc	r3, pc, #-1140850688	; 0xbc000000
87807180:	00000037 	andeq	r0, r0, r7, lsr r0
87807184:	324d4349 	subcc	r4, sp, #603979777	; 0x24000001
87807188:	38303630 	ldmdacc	r0!, {r4, r5, r9, sl, ip, sp}
8780718c:	65684320 	strbvs	r4, [r8, #-800]!	; 0x320
87807190:	46206b63 	strtmi	r6, [r0], -r3, ror #22
87807194:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
87807198:	00002164 	andeq	r2, r0, r4, ror #2
8780719c:	61656c50 	cmnvs	r5, r0, asr ip
878071a0:	43206573 	teqmi	r0, #482344960	; 0x1cc00000
878071a4:	6b636568 	blvs	890e074c <__bss_end+0x18d3f0c>
878071a8:	20202021 	eorcs	r2, r0, r1, lsr #32
878071ac:	20202020 	eorcs	r2, r0, r0, lsr #32
878071b0:	00000020 	andeq	r0, r0, r0, lsr #32
878071b4:	324d4349 	subcc	r4, sp, #603979777	; 0x24000001
878071b8:	38303630 	ldmdacc	r0!, {r4, r5, r9, sl, ip, sp}
878071bc:	61655220 	cmnvs	r5, r0, lsr #4
878071c0:	00007964 	andeq	r7, r0, r4, ror #18
878071c4:	65636361 	strbvs	r6, [r3, #-865]!	; 0x361
878071c8:	3a78206c 	bcc	8960f380 <__bss_end+0x1e02b40>
878071cc:	00000000 	andeq	r0, r0, r0
878071d0:	65636361 	strbvs	r6, [r3, #-865]!	; 0x361
878071d4:	3a79206c 	bcc	8964f38c <__bss_end+0x1e42b4c>
878071d8:	00000000 	andeq	r0, r0, r0
878071dc:	65636361 	strbvs	r6, [r3, #-865]!	; 0x361
878071e0:	3a7a206c 	bcc	8968f398 <__bss_end+0x1e82b58>
878071e4:	00000000 	andeq	r0, r0, r0
878071e8:	6f727967 	svcvs	0x00727967
878071ec:	3a782020 	bcc	8960f274 <__bss_end+0x1e02a34>
878071f0:	00000000 	andeq	r0, r0, r0
878071f4:	6f727967 	svcvs	0x00727967
878071f8:	3a792020 	bcc	8964f280 <__bss_end+0x1e42a40>
878071fc:	00000000 	andeq	r0, r0, r0
87807200:	6f727967 	svcvs	0x00727967
87807204:	3a7a2020 	bcc	8968f28c <__bss_end+0x1e82a4c>
87807208:	00000000 	andeq	r0, r0, r0
8780720c:	706d6574 	rsbvc	r6, sp, r4, ror r5
87807210:	3a202020 	bcc	8800f298 <__bss_end+0x802a58>
87807214:	00000000 	andeq	r0, r0, r0
87807218:	00000067 	andeq	r0, r0, r7, rrx
8780721c:	00732f6f 	rsbseq	r2, r3, pc, ror #30
87807220:	00000043 	andeq	r0, r0, r3, asr #32

87807224 <.LC0>:
87807224:	4c554e3c 	mrrcmi	14, 3, r4, r5, cr12
87807228:	00003e4c 	andeq	r3, r0, ip, asr #28

8780722c <digits.7616>:
8780722c:	33323130 	teqcc	r2, #48, 2
87807230:	37363534 			; <UNDEFINED> instruction: 0x37363534
87807234:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
87807238:	46454443 	strbmi	r4, [r5], -r3, asr #8

8780723c <.LC0>:
8780723c:	2044434c 	subcs	r4, r4, ip, asr #6
87807240:	253d4449 	ldrcs	r4, [sp, #-1097]!	; 0x449
87807244:	0a0d5823 	beq	87b5d2d8 <__bss_end+0x350a98>
87807248:	00000000 	andeq	r0, r0, r0

8780724c <asc2_1206>:
	...
8780725c:	0000403f 	andeq	r4, r0, pc, lsr r0
87807260:	00000000 	andeq	r0, r0, r0
87807264:	00300000 	eorseq	r0, r0, r0
87807268:	00300040 	eorseq	r0, r0, r0, asr #32
8780726c:	00000040 	andeq	r0, r0, r0, asr #32
87807270:	c00b0009 	andgt	r0, fp, r9
87807274:	c00b003d 	andgt	r0, fp, sp, lsr r0
87807278:	0009003d 	andeq	r0, r9, sp, lsr r0
8780727c:	4024c018 	eormi	ip, r4, r8, lsl r0
87807280:	4022e07f 	eormi	lr, r2, pc, ror r0
87807284:	00008031 	andeq	r8, r0, r1, lsr r0
87807288:	c0240018 	eorgt	r0, r4, r8, lsl r0
8780728c:	800d001b 	andhi	r0, sp, fp, lsl r0
87807290:	80014032 	andhi	r4, r1, r2, lsr r0
87807294:	401c8003 	andsmi	r8, ip, r3
87807298:	801c4027 	andshi	r4, ip, r7, lsr #32
8780729c:	40004007 	andmi	r4, r0, r7
878072a0:	00600010 	rsbeq	r0, r0, r0, lsl r0
	...
878072b0:	801f0000 	andshi	r0, pc, r0
878072b4:	20404020 	subcs	r4, r0, r0, lsr #32
878072b8:	20400000 	subcs	r0, r0, r0
878072bc:	801f4020 	andshi	r4, pc, r0, lsr #32
878072c0:	00000000 	andeq	r0, r0, r0
878072c4:	00060009 	andeq	r0, r6, r9
878072c8:	0006801f 	andeq	r8, r6, pc, lsl r0
878072cc:	00000009 	andeq	r0, r0, r9
878072d0:	00040004 	andeq	r0, r4, r4
878072d4:	0004803f 	andeq	r8, r4, pc, lsr r0
878072d8:	00000004 	andeq	r0, r0, r4
878072dc:	60001000 	andvs	r1, r0, r0
	...
878072e8:	00040004 	andeq	r0, r4, r4
878072ec:	00040004 	andeq	r0, r4, r4
878072f0:	00000004 	andeq	r0, r0, r4
878072f4:	40000000 	andmi	r0, r0, r0
	...
87807300:	c0012000 	andgt	r2, r1, r0
87807304:	00380006 	eorseq	r0, r8, r6
87807308:	00000040 	andeq	r0, r0, r0, asr #32
8780730c:	4020801f 	eormi	r8, r0, pc, lsl r0
87807310:	40204020 	eormi	r4, r0, r0, lsr #32
87807314:	0000801f 	andeq	r8, r0, pc, lsl r0
87807318:	40100000 	andsmi	r0, r0, r0
8780731c:	4000c03f 	andmi	ip, r0, pc, lsr r0
87807320:	00000000 	andeq	r0, r0, r0
87807324:	4021c018 	eormi	ip, r1, r8, lsl r0
87807328:	40244022 	eormi	r4, r4, r2, lsr #32
8780732c:	00004018 	andeq	r4, r0, r8, lsl r0
87807330:	40208010 	eormi	r8, r0, r0, lsl r0
87807334:	40244024 	eormi	r4, r4, r4, lsr #32
87807338:	0000801b 	andeq	r8, r0, fp, lsl r0
8780733c:	000d0002 	andeq	r0, sp, r2
87807340:	c03f0011 	eorsgt	r0, pc, r1, lsl r0	; <UNPREDICTABLE>
87807344:	00004001 	andeq	r4, r0, r1
87807348:	4024803c 	eormi	r8, r4, ip, lsr r0
8780734c:	40244024 	eormi	r4, r4, r4, lsr #32
87807350:	00008023 	andeq	r8, r0, r3, lsr #32
87807354:	4024801f 	eormi	r8, r4, pc, lsl r0
87807358:	40344024 	eorsmi	r4, r4, r4, lsr #32
8780735c:	00008003 	andeq	r8, r0, r3
87807360:	00200030 	eoreq	r0, r0, r0, lsr r0
87807364:	0038c027 	eorseq	ip, r8, r7, lsr #32
87807368:	00000020 	andeq	r0, r0, r0, lsr #32
8780736c:	4024801b 	eormi	r8, r4, fp, lsl r0
87807370:	40244024 	eormi	r4, r4, r4, lsr #32
87807374:	0000801b 	andeq	r8, r0, fp, lsl r0
87807378:	c022001c 	eorgt	r0, r2, ip, lsl r0
8780737c:	40224022 	eormi	r4, r2, r2, lsr #32
87807380:	0000801f 	andeq	r8, r0, pc, lsl r0
87807384:	00000000 	andeq	r0, r0, r0
87807388:	00004008 	andeq	r4, r0, r8
	...
87807394:	00006004 	andeq	r6, r0, r4
87807398:	00000000 	andeq	r0, r0, r0
8780739c:	00040000 	andeq	r0, r4, r0
878073a0:	0011000a 	andseq	r0, r1, sl
878073a4:	40408020 	submi	r8, r0, r0, lsr #32
878073a8:	00090009 	andeq	r0, r9, r9
878073ac:	00090009 	andeq	r0, r9, r9
878073b0:	00000009 	andeq	r0, r0, r9
878073b4:	40400000 	submi	r0, r0, r0
878073b8:	00118020 	andseq	r8, r1, r0, lsr #32
878073bc:	0004000a 	andeq	r0, r4, sl
878073c0:	00200018 	eoreq	r0, r0, r8, lsl r0
878073c4:	00244023 	eoreq	r4, r4, r3, lsr #32
878073c8:	00000018 	andeq	r0, r0, r8, lsl r0
878073cc:	4020801f 	eormi	r8, r0, pc, lsl r0
878073d0:	40294027 	eormi	r4, r9, r7, lsr #32
878073d4:	0000401f 	andeq	r4, r0, pc, lsl r0
878073d8:	c0074000 	andgt	r4, r7, r0
878073dc:	000f0039 	andeq	r0, pc, r9, lsr r0	; <UNPREDICTABLE>
878073e0:	4000c001 	andmi	ip, r0, r1
878073e4:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
878073e8:	40244024 	eormi	r4, r4, r4, lsr #32
878073ec:	0000801b 	andeq	r8, r0, fp, lsl r0
878073f0:	4020801f 	eormi	r8, r0, pc, lsl r0
878073f4:	40204020 	eormi	r4, r0, r0, lsr #32
878073f8:	00008030 	andeq	r8, r0, r0, lsr r0
878073fc:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807400:	40204020 	eormi	r4, r0, r0, lsr #32
87807404:	0000801f 	andeq	r8, r0, pc, lsl r0
87807408:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
8780740c:	402e4024 	eormi	r4, lr, r4, lsr #32
87807410:	0000c030 	andeq	ip, r0, r0, lsr r0
87807414:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807418:	002e4024 	eoreq	r4, lr, r4, lsr #32
8780741c:	00000030 	andeq	r0, r0, r0, lsr r0
87807420:	8010000f 	andshi	r0, r0, pc
87807424:	40224020 	eormi	r4, r2, r0, lsr #32
87807428:	00028033 	andeq	r8, r2, r3, lsr r0
8780742c:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807430:	00040004 	andeq	r0, r4, r4
87807434:	4020c03f 	eormi	ip, r0, pc, lsr r0
87807438:	40204020 	eormi	r4, r0, r0, lsr #32
8780743c:	4020c03f 	eormi	ip, r0, pc, lsr r0
87807440:	00004020 	andeq	r4, r0, r0, lsr #32
87807444:	20206000 	eorcs	r6, r0, r0
87807448:	c03f2020 	eorsgt	r2, pc, r0, lsr #32
8780744c:	00200020 	eoreq	r0, r0, r0, lsr #32
87807450:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807454:	000b4024 	andeq	r4, fp, r4, lsr #32
87807458:	4020c030 	eormi	ip, r0, r0, lsr r0
8780745c:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807460:	40004020 	andmi	r4, r0, r0, lsr #32
87807464:	c0004000 	andgt	r4, r0, r0
87807468:	003cc03f 	eorseq	ip, ip, pc, lsr r0
8780746c:	003cc003 	eorseq	ip, ip, r3
87807470:	0000c03f 	andeq	ip, r0, pc, lsr r0
87807474:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807478:	0023400c 	eoreq	r4, r3, ip
8780747c:	0020c03f 	eoreq	ip, r0, pc, lsr r0
87807480:	4020801f 	eormi	r8, r0, pc, lsl r0
87807484:	40204020 	eormi	r4, r0, r0, lsr #32
87807488:	0000801f 	andeq	r8, r0, pc, lsl r0
8780748c:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
87807490:	00244024 	eoreq	r4, r4, r4, lsr #32
87807494:	00000018 	andeq	r0, r0, r8, lsl r0
87807498:	4021801f 	eormi	r8, r1, pc, lsl r0
8780749c:	e0204021 	eor	r4, r0, r1, lsr #32
878074a0:	0000a01f 	andeq	sl, r0, pc, lsl r0
878074a4:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
878074a8:	00264024 	eoreq	r4, r6, r4, lsr #32
878074ac:	4000c019 	andmi	ip, r0, r9, lsl r0
878074b0:	4024c018 	eormi	ip, r4, r8, lsl r0
878074b4:	40224024 	eormi	r4, r2, r4, lsr #32
878074b8:	00008031 	andeq	r8, r0, r1, lsr r0
878074bc:	40200030 	eormi	r0, r0, r0, lsr r0
878074c0:	4020c03f 	eormi	ip, r0, pc, lsr r0
878074c4:	00000030 	andeq	r0, r0, r0, lsr r0
878074c8:	803f0020 	eorshi	r0, pc, r0, lsr #32
878074cc:	40004000 	andmi	r4, r0, r0
878074d0:	0020803f 	eoreq	r8, r0, pc, lsr r0
878074d4:	003e0020 	eorseq	r0, lr, r0, lsr #32
878074d8:	0007c001 	andeq	ip, r7, r1
878074dc:	00200038 	eoreq	r0, r0, r8, lsr r0
878074e0:	c0070038 	andgt	r0, r7, r8, lsr r0
878074e4:	c007003c 	andgt	r0, r7, ip, lsr r0
878074e8:	00000038 	andeq	r0, r0, r8, lsr r0
878074ec:	c0394020 	eorsgt	r4, r9, r0, lsr #32
878074f0:	c0390006 	eorsgt	r0, r9, r6
878074f4:	00004020 	andeq	r4, r0, r0, lsr #32
878074f8:	40380020 	eorsmi	r0, r8, r0, lsr #32
878074fc:	4038c007 	eorsmi	ip, r8, r7
87807500:	00000020 	andeq	r0, r0, r0, lsr #32
87807504:	c0214030 	eorgt	r4, r1, r0, lsr r0
87807508:	40384026 	eorsmi	r4, r8, r6, lsr #32
8780750c:	0000c020 	andeq	ip, r0, r0, lsr #32
87807510:	00000000 	andeq	r0, r0, r0
87807514:	2040e07f 	subcs	lr, r0, pc, ror r0
87807518:	00002040 	andeq	r2, r0, r0, asr #32
8780751c:	00700000 	rsbseq	r0, r0, r0
87807520:	8003000c 	andhi	r0, r3, ip
87807524:	00004000 	andeq	r4, r0, r0
87807528:	20400000 	subcs	r0, r0, r0
8780752c:	e07f2040 	rsbs	r2, pc, r0, asr #32
87807530:	00000000 	andeq	r0, r0, r0
87807534:	00200000 	eoreq	r0, r0, r0
87807538:	00200040 	eoreq	r0, r0, r0, asr #32
8780753c:	00000000 	andeq	r0, r0, r0
87807540:	10001000 	andne	r1, r0, r0
87807544:	10001000 	andne	r1, r0, r0
87807548:	10001000 	andne	r1, r0, r0
8780754c:	00000000 	andeq	r0, r0, r0
87807550:	00000040 	andeq	r0, r0, r0, asr #32
87807554:	00000000 	andeq	r0, r0, r0
87807558:	80020000 	andhi	r0, r2, r0
8780755c:	40054005 	andmi	r4, r5, r5
87807560:	4000c003 	andmi	ip, r0, r3
87807564:	c03f0020 	eorsgt	r0, pc, r0, lsr #32
87807568:	40044004 	andmi	r4, r4, r4
8780756c:	00008003 	andeq	r8, r0, r3
87807570:	80030000 	andhi	r0, r3, r0
87807574:	40044004 	andmi	r4, r4, r4
87807578:	00004006 	andeq	r4, r0, r6
8780757c:	80030000 	andhi	r0, r3, r0
87807580:	40244004 	eormi	r4, r4, r4
87807584:	4000c03f 	andmi	ip, r0, pc, lsr r0
87807588:	80030000 	andhi	r0, r3, r0
8780758c:	40054005 	andmi	r4, r5, r5
87807590:	00004003 	andeq	r4, r0, r3
87807594:	40040000 	andmi	r0, r4, r0
87807598:	4024c01f 	eormi	ip, r4, pc, lsl r0
8780759c:	00204024 	eoreq	r4, r0, r4, lsr #32
878075a0:	e0020000 	and	r0, r2, r0
878075a4:	50055005 	andpl	r5, r5, r5
878075a8:	20045006 	andcs	r5, r4, r6
878075ac:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
878075b0:	00044004 	andeq	r4, r4, r4
878075b4:	4000c003 	andmi	ip, r0, r3
878075b8:	40040000 	andmi	r0, r4, r0
878075bc:	4000c027 	andmi	ip, r0, r7, lsr #32
878075c0:	00000000 	andeq	r0, r0, r0
878075c4:	10001000 	andne	r1, r0, r0
878075c8:	e0271004 	eor	r1, r7, r4
878075cc:	00000000 	andeq	r0, r0, r0
878075d0:	c03f4020 	eorsgt	r4, pc, r0, lsr #32
878075d4:	00074001 	andeq	r4, r7, r1
878075d8:	4004c004 	andmi	ip, r4, r4
878075dc:	40204020 	eormi	r4, r0, r0, lsr #32
878075e0:	4000c03f 	andmi	ip, r0, pc, lsr r0
878075e4:	00004000 	andeq	r4, r0, r0
878075e8:	0004c007 	andeq	ip, r4, r7
878075ec:	0004c007 	andeq	ip, r4, r7
878075f0:	0000c003 	andeq	ip, r0, r3
878075f4:	c0074004 	andgt	r4, r7, r4
878075f8:	00044004 	andeq	r4, r4, r4
878075fc:	4000c003 	andmi	ip, r0, r3
87807600:	80030000 	andhi	r0, r3, r0
87807604:	40044004 	andmi	r4, r4, r4
87807608:	00008003 	andeq	r8, r0, r3
8780760c:	f0071004 			; <UNDEFINED> instruction: 0xf0071004
87807610:	40045004 	andmi	r5, r4, r4
87807614:	00008003 	andeq	r8, r0, r3
87807618:	80030000 	andhi	r0, r3, r0
8780761c:	50044004 	andpl	r4, r4, r4
87807620:	1000f007 	andne	pc, r0, r7
87807624:	c0074004 	andgt	r4, r7, r4
87807628:	00044002 	andeq	r4, r4, r2
8780762c:	00000004 	andeq	r0, r0, r4
87807630:	40060000 	andmi	r0, r6, r0
87807634:	40054005 	andmi	r4, r5, r5
87807638:	0000c004 	andeq	ip, r0, r4
8780763c:	00040000 	andeq	r0, r4, r0
87807640:	4004801f 	andmi	r8, r4, pc, lsl r0
87807644:	00004000 	andeq	r4, r0, r0
87807648:	80070004 	andhi	r0, r7, r4
8780764c:	40044000 	andmi	r4, r4, r0
87807650:	4000c007 	andmi	ip, r0, r7
87807654:	00070004 	andeq	r0, r7, r4
87807658:	8001c004 	andhi	ip, r1, r4
8780765c:	00040006 	andeq	r0, r4, r6
87807660:	c0010006 	andgt	r0, r1, r6
87807664:	c0010007 	andgt	r0, r1, r7
87807668:	00000006 	andeq	r0, r0, r6
8780766c:	c0064004 	andgt	r4, r6, r4
87807670:	c0060001 	andgt	r0, r6, r1
87807674:	00004004 	andeq	r4, r0, r4
87807678:	10071004 	andne	r1, r7, r4
8780767c:	8001e004 	andhi	lr, r1, r4
87807680:	00040006 	andeq	r0, r4, r6
87807684:	40040000 	andmi	r0, r4, r0
87807688:	4006c005 	andmi	ip, r6, r5
8780768c:	00004004 	andeq	r4, r0, r4
87807690:	00000000 	andeq	r0, r0, r0
87807694:	e07b0004 	rsbs	r0, fp, r4
87807698:	00002040 	andeq	r2, r0, r0, asr #32
8780769c:	00000000 	andeq	r0, r0, r0
878076a0:	f0ff0000 			; <UNDEFINED> instruction: 0xf0ff0000
878076a4:	00000000 	andeq	r0, r0, r0
878076a8:	20400000 	subcs	r0, r0, r0
878076ac:	0004e07b 	andeq	lr, r4, fp, ror r0
878076b0:	00000000 	andeq	r0, r0, r0
878076b4:	00800040 	addeq	r0, r0, r0, asr #32
878076b8:	00200040 	eoreq	r0, r0, r0, asr #32
878076bc:	00400020 	subeq	r0, r0, r0, lsr #32

878076c0 <asc2_1608>:
	...
878076d4:	cc1f0000 	ldcgt	0, cr0, [pc], {-0}
878076d8:	00000c00 	andeq	r0, r0, r0, lsl #24
878076dc:	00000000 	andeq	r0, r0, r0
878076e0:	00080000 	andeq	r0, r8, r0
878076e4:	00600030 	rsbeq	r0, r0, r0, lsr r0
878076e8:	00300008 	eorseq	r0, r0, r8
878076ec:	00000060 	andeq	r0, r0, r0, rrx
878076f0:	fc032002 	stc2	0, cr2, [r3], {2}
878076f4:	2002201e 	andcs	r2, r2, lr, lsl r0
878076f8:	201efc03 	andscs	pc, lr, r3, lsl #24
878076fc:	00002002 	andeq	r2, r0, r2
87807700:	180e0000 	stmdane	lr, {}	; <UNPREDICTABLE>
87807704:	ff3f0411 			; <UNDEFINED> instruction: 0xff3f0411
87807708:	780c8410 	stmdavc	ip, {r4, sl, pc}
8780770c:	00000000 	andeq	r0, r0, r0
87807710:	8410000f 	ldrhi	r0, [r0], #-15
87807714:	c000380f 	andgt	r3, r0, pc, lsl #16
87807718:	84187807 	ldrhi	r7, [r8], #-2055	; 0x807
8780771c:	00007800 	andeq	r7, r0, r0, lsl #16
87807720:	840f7800 	strhi	r7, [pc], #-2048	; 87807728 <asc2_1608+0x68>
87807724:	2411c410 	ldrcs	ip, [r1], #-1040	; 0x410
87807728:	e400980e 	str	r9, [r0], #-2062	; 0x80e
8780772c:	08008400 	stmdaeq	r0, {sl, pc}
87807730:	00680008 	rsbeq	r0, r8, r8
87807734:	00000070 	andeq	r0, r0, r0, ror r0
	...
87807744:	e0070000 	and	r0, r7, r0
87807748:	04201818 	strteq	r1, [r0], #-2072	; 0x818
8780774c:	00000240 	andeq	r0, r0, r0, asr #4
87807750:	02400000 	subeq	r0, r0, #0
87807754:	18180420 	ldmdane	r8, {r5, sl}
87807758:	0000e007 	andeq	lr, r0, r7
8780775c:	00000000 	andeq	r0, r0, r0
87807760:	40024002 	andmi	r4, r2, r2
87807764:	f00f8001 			; <UNDEFINED> instruction: 0xf00f8001
87807768:	40028001 	andmi	r8, r2, r1
8780776c:	00004002 	andeq	r4, r0, r2
87807770:	80008000 	andhi	r8, r0, r0
87807774:	f80f8000 			; <UNDEFINED> instruction: 0xf80f8000
87807778:	80008000 	andhi	r8, r0, r0
8780777c:	00008000 	andeq	r8, r0, r0
87807780:	0d000100 	stfeqs	f0, [r0, #-0]
87807784:	00000e00 	andeq	r0, r0, r0, lsl #28
	...
87807790:	80000000 	andhi	r0, r0, r0
87807794:	80008000 	andhi	r8, r0, r0
87807798:	80008000 	andhi	r8, r0, r0
8780779c:	80008000 	andhi	r8, r0, r0
878077a0:	0c000000 	stceq	0, cr0, [r0], {-0}
878077a4:	00000c00 	andeq	r0, r0, r0, lsl #24
	...
878077b0:	06000000 	streq	r0, [r0], -r0
878077b4:	60001800 	andvs	r1, r0, r0, lsl #16
878077b8:	00068001 	andeq	r8, r6, r1
878077bc:	00200018 	eoreq	r0, r0, r8, lsl r0
878077c0:	f0070000 			; <UNDEFINED> instruction: 0xf0070000
878077c4:	04100808 	ldreq	r0, [r0], #-2056	; 0x808
878077c8:	08080410 	stmdaeq	r8, {r4, sl}
878077cc:	0000f007 	andeq	pc, r0, r7
878077d0:	04080000 	streq	r0, [r8], #-0
878077d4:	fc1f0408 	ldc2	4, cr0, [pc], {8}
878077d8:	04000400 	streq	r0, [r0], #-1024	; 0x400
878077dc:	00000000 	andeq	r0, r0, r0
878077e0:	0c0e0000 	stceq	0, cr0, [lr], {-0}
878077e4:	24101410 	ldrcs	r1, [r0], #-1040	; 0x410
878077e8:	84114410 	ldrhi	r4, [r1], #-1040	; 0x410
878077ec:	00000c0e 	andeq	r0, r0, lr, lsl #24
878077f0:	180c0000 	stmdane	ip, {}	; <UNPREDICTABLE>
878077f4:	04110410 	ldreq	r0, [r1], #-1040	; 0x410
878077f8:	88120411 	ldmdahi	r2, {r0, r4, sl}
878077fc:	0000700c 	andeq	r7, r0, ip
87807800:	e0000000 	and	r0, r0, r0
87807804:	24042003 	strcs	r2, [r4], #-3
87807808:	fc1f2408 	ldc2	4, cr2, [pc], {8}
8780780c:	00002400 	andeq	r2, r0, r0, lsl #8
87807810:	981f0000 	ldmdals	pc, {}	; <UNPREDICTABLE>
87807814:	04118410 	ldreq	r8, [r1], #-1040	; 0x410
87807818:	88100411 	ldmdahi	r0, {r0, r4, sl}
8780781c:	00007010 	andeq	r7, r0, r0, lsl r0
87807820:	f0070000 			; <UNDEFINED> instruction: 0xf0070000
87807824:	04118808 	ldreq	r8, [r1], #-2056	; 0x808
87807828:	88180411 	ldmdahi	r8, {r0, r4, sl}
8780782c:	00007000 	andeq	r7, r0, r0
87807830:	001c0000 	andseq	r0, ip, r0
87807834:	fc100010 	ldc2	0, cr0, [r0], {16}
87807838:	001c0013 	andseq	r0, ip, r3, lsl r0
8780783c:	00000010 	andeq	r0, r0, r0, lsl r0
87807840:	380e0000 	stmdacc	lr, {}	; <UNPREDICTABLE>
87807844:	84104411 	ldrhi	r4, [r0], #-1041	; 0x411
87807848:	44118410 	ldrmi	r8, [r1], #-1040	; 0x410
8780784c:	0000380e 	andeq	r3, r0, lr, lsl #16
87807850:	00070000 	andeq	r0, r7, r0
87807854:	44108c08 	ldrmi	r8, [r0], #-3080	; 0xc08
87807858:	88084410 	stmdahi	r8, {r4, sl, lr}
8780785c:	0000f007 	andeq	pc, r0, r7
87807860:	00000000 	andeq	r0, r0, r0
87807864:	0c030000 	stceq	0, cr0, [r3], {-0}
87807868:	00000c03 	andeq	r0, r0, r3, lsl #24
	...
87807874:	06010100 	streq	r0, [r1], -r0, lsl #2
	...
87807880:	80000000 	andhi	r0, r0, r0
87807884:	20024001 	andcs	r4, r2, r1
87807888:	08081004 	stmdaeq	r8, {r2, ip}
8780788c:	00000410 	andeq	r0, r0, r0, lsl r4
87807890:	20022002 	andcs	r2, r2, r2
87807894:	20022002 	andcs	r2, r2, r2
87807898:	20022002 	andcs	r2, r2, r2
8780789c:	00002002 	andeq	r2, r0, r2
878078a0:	04100000 	ldreq	r0, [r0], #-0
878078a4:	10040808 	andne	r0, r4, r8, lsl #16
878078a8:	40012002 	andmi	r2, r1, r2
878078ac:	00008000 	andeq	r8, r0, r0
878078b0:	000e0000 	andeq	r0, lr, r0
878078b4:	0c100012 	ldceq	0, cr0, [r0], {18}
878078b8:	80106c10 	andshi	r6, r0, r0, lsl ip
878078bc:	0000000f 	andeq	r0, r0, pc
878078c0:	180ce003 	stmdane	ip, {r0, r1, sp, lr, pc}
878078c4:	2414e413 	ldrcs	lr, [r4], #-1043	; 0x413
878078c8:	2808c417 	stmdacs	r8, {r0, r1, r2, r4, sl, lr, pc}
878078cc:	0000d007 	andeq	sp, r0, r7
878078d0:	3c000400 	cfstrscc	mvf0, [r0], {-0}
878078d4:	401cc403 	andsmi	ip, ip, r3, lsl #8
878078d8:	e4004007 	str	r4, [r0], #-7
878078dc:	04001c00 	streq	r1, [r0], #-3072	; 0xc00
878078e0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878078e4:	04110411 	ldreq	r0, [r1], #-1041	; 0x411
878078e8:	880e0411 	stmdahi	lr, {r0, r4, sl}
878078ec:	00007000 	andeq	r7, r0, r0
878078f0:	180ce003 	stmdane	ip, {r0, r1, sp, lr, pc}
878078f4:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
878078f8:	08100410 	ldmdaeq	r0, {r4, sl}
878078fc:	0000101c 	andeq	r1, r0, ip, lsl r0
87807900:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807904:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
87807908:	08080410 	stmdaeq	r8, {r4, sl}
8780790c:	0000f007 	andeq	pc, r0, r7
87807910:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807914:	04110411 	ldreq	r0, [r1], #-1041	; 0x411
87807918:	0410c417 	ldreq	ip, [r0], #-1047	; 0x417
8780791c:	00001808 	andeq	r1, r0, r8, lsl #16
87807920:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807924:	00110411 	andseq	r0, r1, r1, lsl r4
87807928:	0010c017 	andseq	ip, r0, r7, lsl r0
8780792c:	00000008 	andeq	r0, r0, r8
87807930:	180ce003 	stmdane	ip, {r0, r1, sp, lr, pc}
87807934:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
87807938:	781c4410 	ldmdavc	ip, {r4, sl, lr}
8780793c:	00004000 	andeq	r4, r0, r0
87807940:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807944:	80008410 	andhi	r8, r0, r0, lsl r4
87807948:	84108000 	ldrhi	r8, [r0], #-0
8780794c:	0410fc1f 	ldreq	pc, [r0], #-3103	; 0xc1f
87807950:	04100000 	ldreq	r0, [r0], #-0
87807954:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807958:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
8780795c:	00000000 	andeq	r0, r0, r0
87807960:	01000300 	mrseq	r0, LR_irq
87807964:	01100110 	tsteq	r0, r0, lsl r1
87807968:	0010fe1f 	andseq	pc, r0, pc, lsl lr	; <UNPREDICTABLE>
8780796c:	00000010 	andeq	r0, r0, r0, lsl r0
87807970:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807974:	80030411 	andhi	r0, r3, r1, lsl r4
87807978:	1c186414 	cfldrsne	mvf6, [r8], {20}
8780797c:	00000410 	andeq	r0, r0, r0, lsl r4
87807980:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807984:	04000410 	streq	r0, [r0], #-1040	; 0x410
87807988:	04000400 	streq	r0, [r0], #-1024	; 0x400
8780798c:	00000c00 	andeq	r0, r0, r0, lsl #24
87807990:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807994:	fc00001f 	stc2	0, cr0, [r0], {31}
87807998:	fc1f001f 	ldc2	0, cr0, [pc], {31}
8780799c:	00000410 	andeq	r0, r0, r0, lsl r4
878079a0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878079a4:	0003040c 	andeq	r0, r3, ip, lsl #8
878079a8:	1810e000 	ldmdane	r0, {sp, lr, pc}
878079ac:	0010fc1f 	andseq	pc, r0, pc, lsl ip	; <UNPREDICTABLE>
878079b0:	0808f007 	stmdaeq	r8, {r0, r1, r2, ip, sp, lr, pc}
878079b4:	04100410 	ldreq	r0, [r0], #-1040	; 0x410
878079b8:	08080410 	stmdaeq	r8, {r4, sl}
878079bc:	0000f007 	andeq	pc, r0, r7
878079c0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878079c4:	80108410 	andshi	r8, r0, r0, lsl r4
878079c8:	80108010 	andshi	r8, r0, r0, lsl r0
878079cc:	0000000f 	andeq	r0, r0, pc
878079d0:	1808f007 	stmdane	r8, {r0, r1, r2, ip, sp, lr, pc}
878079d4:	24102410 	ldrcs	r2, [r0], #-1040	; 0x410
878079d8:	0a081c10 	beq	87a0ea20 <__bss_end+0x2021e0>
878079dc:	0000f207 	andeq	pc, r0, r7, lsl #4
878079e0:	fc1f0410 	ldc2	4, cr0, [pc], {16}
878079e4:	00110411 	andseq	r0, r1, r1, lsl r4
878079e8:	3011c011 	andscc	ip, r1, r1, lsl r0
878079ec:	04000c0e 	streq	r0, [r0], #-3086	; 0xc0e
878079f0:	1c0e0000 	stcne	0, cr0, [lr], {-0}
878079f4:	84100411 	ldrhi	r0, [r0], #-1041	; 0x411
878079f8:	44108410 	ldrmi	r8, [r0], #-1040	; 0x410
878079fc:	0000381c 	andeq	r3, r0, ip, lsl r8
87807a00:	00100018 	andseq	r0, r0, r8, lsl r0
87807a04:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807a08:	00100410 	andseq	r0, r0, r0, lsl r4
87807a0c:	00000018 	andeq	r0, r0, r8, lsl r0
87807a10:	f81f0010 			; <UNDEFINED> instruction: 0xf81f0010
87807a14:	04000410 	streq	r0, [r0], #-1040	; 0x410
87807a18:	04100400 	ldreq	r0, [r0], #-1024	; 0x400
87807a1c:	0010f81f 	andseq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
87807a20:	001e0010 	andseq	r0, lr, r0, lsl r0
87807a24:	1c00e011 	stcne	0, cr14, [r0], {17}
87807a28:	80137000 	andshi	r7, r3, r0
87807a2c:	0010001c 	andseq	r0, r0, ip, lsl r0
87807a30:	3c10c01f 	ldccc	0, cr12, [r0], {31}
87807a34:	001fe000 	andseq	lr, pc, r0
87807a38:	3c10e000 	ldccc	0, cr14, [r0], {-0}
87807a3c:	0000c01f 	andeq	ip, r0, pc, lsl r0
87807a40:	0c180410 	cfldrseq	mvf0, [r8], {16}
87807a44:	c0013416 	andgt	r3, r1, r6, lsl r4
87807a48:	3416c001 	ldrcc	ip, [r6], #-1
87807a4c:	04100c18 	ldreq	r0, [r0], #-3096	; 0xc18
87807a50:	001c0010 	andseq	r0, ip, r0, lsl r0
87807a54:	fc000413 	stc2	4, cr0, [r0], {19}
87807a58:	001c0413 	andseq	r0, ip, r3, lsl r4
87807a5c:	00000010 	andeq	r0, r0, r0, lsl r0
87807a60:	1c100408 	cfldrsne	mvf0, [r0], {8}
87807a64:	84106410 	ldrhi	r6, [r0], #-1040	; 0x410
87807a68:	041c0413 	ldreq	r0, [ip], #-1043	; 0x413
87807a6c:	00001810 	andeq	r1, r0, r0, lsl r8
87807a70:	00000000 	andeq	r0, r0, r0
87807a74:	fe7f0000 	cdp2	0, 7, cr0, cr15, cr0, {0}
87807a78:	02400240 	subeq	r0, r0, #64, 4
87807a7c:	00000240 	andeq	r0, r0, r0, asr #4
87807a80:	00300000 	eorseq	r0, r0, r0
87807a84:	8003000c 	andhi	r0, r3, ip
87807a88:	1c006000 	stcne	0, cr6, [r0], {-0}
87807a8c:	00000300 	andeq	r0, r0, r0, lsl #6
87807a90:	02400000 	subeq	r0, r0, #0
87807a94:	02400240 	subeq	r0, r0, #64, 4
87807a98:	0000fe7f 	andeq	pc, r0, pc, ror lr	; <UNPREDICTABLE>
	...
87807aa4:	00400020 	subeq	r0, r0, r0, lsr #32
87807aa8:	00400040 	subeq	r0, r0, r0, asr #32
87807aac:	00000020 	andeq	r0, r0, r0, lsr #32
87807ab0:	01000100 	mrseq	r0, (UNDEF: 16)
87807ab4:	01000100 	mrseq	r0, (UNDEF: 16)
87807ab8:	01000100 	mrseq	r0, (UNDEF: 16)
87807abc:	01000100 	mrseq	r0, (UNDEF: 16)
87807ac0:	00400000 	subeq	r0, r0, r0
87807ac4:	00200040 	eoreq	r0, r0, r0, asr #32
	...
87807ad0:	98000000 	stmdals	r0, {}	; <UNPREDICTABLE>
87807ad4:	44012401 	strmi	r2, [r1], #-1025	; 0x401
87807ad8:	44014401 	strmi	r4, [r1], #-1025	; 0x401
87807adc:	0400fc00 	streq	pc, [r0], #-3072	; 0xc00
87807ae0:	fc1f0010 	ldc2	0, cr0, [pc], {16}
87807ae4:	04018800 	streq	r8, [r1], #-2048	; 0x800
87807ae8:	88000401 	stmdahi	r0, {r0, sl}
87807aec:	00007000 	andeq	r7, r0, r0
87807af0:	70000000 	andvc	r0, r0, r0
87807af4:	04018800 	streq	r8, [r1], #-2048	; 0x800
87807af8:	04010401 	streq	r0, [r1], #-1025	; 0x401
87807afc:	00008800 	andeq	r8, r0, r0, lsl #16
87807b00:	70000000 	andvc	r0, r0, r0
87807b04:	04018800 	streq	r8, [r1], #-2048	; 0x800
87807b08:	08110401 	ldmdaeq	r1, {r0, sl}
87807b0c:	0400fc1f 	streq	pc, [r0], #-3103	; 0xc1f
87807b10:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
87807b14:	44014401 	strmi	r4, [r1], #-1025	; 0x401
87807b18:	44014401 	strmi	r4, [r1], #-1025	; 0x401
87807b1c:	0000c800 	andeq	ip, r0, r0, lsl #16
87807b20:	04010000 	streq	r0, [r1], #-0
87807b24:	fc0f0401 	stc2	4, cr0, [pc], {1}
87807b28:	04110411 	ldreq	r0, [r1], #-1041	; 0x411
87807b2c:	00180011 	andseq	r0, r8, r1, lsl r0
87807b30:	d6000000 	strle	r0, [r0], -r0
87807b34:	29012901 	stmdbcs	r1, {r0, r8, fp, sp}
87807b38:	c9012901 	stmdbgt	r1, {r0, r8, fp, sp}
87807b3c:	00000601 	andeq	r0, r0, r1, lsl #12
87807b40:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807b44:	00018400 	andeq	r8, r1, r0, lsl #8
87807b48:	04010001 	streq	r0, [r1], #-1
87807b4c:	0400fc00 	streq	pc, [r0], #-3072	; 0xc00
87807b50:	04010000 	streq	r0, [r1], #-0
87807b54:	fc190419 	ldc2	4, cr0, [r9], {25}
87807b58:	04000400 	streq	r0, [r0], #-1024	; 0x400
87807b5c:	00000000 	andeq	r0, r0, r0
87807b60:	03000000 	movweq	r0, #0
87807b64:	01010100 	mrseq	r0, (UNDEF: 17)
87807b68:	fe190119 	mrc2	1, 0, r0, cr9, cr9, {0}
87807b6c:	00000000 	andeq	r0, r0, r0
87807b70:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807b74:	40002400 	andmi	r2, r0, r0, lsl #8
87807b78:	0c01b401 	cfstrseq	mvf11, [r1], {1}
87807b7c:	00000401 	andeq	r0, r0, r1, lsl #8
87807b80:	04100000 	ldreq	r0, [r0], #-0
87807b84:	fc1f0410 	ldc2	4, cr0, [pc], {16}
87807b88:	04000400 	streq	r0, [r0], #-1024	; 0x400
87807b8c:	00000000 	andeq	r0, r0, r0
87807b90:	fc010401 	stc2	4, cr0, [r1], {1}
87807b94:	00010401 	andeq	r0, r1, r1, lsl #8
87807b98:	0401fc01 	streq	pc, [r1], #-3073	; 0xc01
87807b9c:	fc000001 	stc2	0, cr0, [r0], {1}
87807ba0:	fc010401 	stc2	4, cr0, [r1], {1}
87807ba4:	00018400 	andeq	r8, r1, r0, lsl #8
87807ba8:	04010001 	streq	r0, [r1], #-1
87807bac:	0400fc00 	streq	pc, [r0], #-3072	; 0xc00
87807bb0:	f8000000 			; <UNDEFINED> instruction: 0xf8000000
87807bb4:	04010401 	streq	r0, [r1], #-1025	; 0x401
87807bb8:	04010401 	streq	r0, [r1], #-1025	; 0x401
87807bbc:	0000f800 	andeq	pc, r0, r0, lsl #16
87807bc0:	ff010101 			; <UNDEFINED> instruction: 0xff010101
87807bc4:	04018500 	streq	r8, [r1], #-1280	; 0x500
87807bc8:	88000401 	stmdahi	r0, {r0, sl}
87807bcc:	00007000 	andeq	r7, r0, r0
87807bd0:	70000000 	andvc	r0, r0, r0
87807bd4:	04018800 	streq	r8, [r1], #-2048	; 0x800
87807bd8:	05010401 	streq	r0, [r1, #-1025]	; 0x401
87807bdc:	0100ff01 	tsteq	r0, r1, lsl #30
87807be0:	04010401 	streq	r0, [r1], #-1025	; 0x401
87807be4:	8400fc01 	strhi	pc, [r0], #-3073	; 0xc01
87807be8:	00010401 	andeq	r0, r1, r1, lsl #8
87807bec:	00008001 	andeq	r8, r0, r1
87807bf0:	cc000000 	stcgt	0, cr0, [r0], {-0}
87807bf4:	24012401 	strcs	r2, [r1], #-1025	; 0x401
87807bf8:	24012401 	strcs	r2, [r1], #-1025	; 0x401
87807bfc:	00009801 	andeq	r9, r0, r1, lsl #16
87807c00:	00010000 	andeq	r0, r1, r0
87807c04:	f8070001 			; <UNDEFINED> instruction: 0xf8070001
87807c08:	04010401 	streq	r0, [r1], #-1025	; 0x401
87807c0c:	00000000 	andeq	r0, r0, r0
87807c10:	f8010001 			; <UNDEFINED> instruction: 0xf8010001
87807c14:	04000400 	streq	r0, [r0], #-1024	; 0x400
87807c18:	08010400 	stmdaeq	r1, {sl}
87807c1c:	0400fc01 	streq	pc, [r0], #-3073	; 0xc01
87807c20:	80010001 	andhi	r0, r1, r1
87807c24:	0c007001 	stceq	0, cr7, [r0], {1}
87807c28:	60011000 	andvs	r1, r1, r0
87807c2c:	00018001 	andeq	r8, r1, r1
87807c30:	0c01f001 	stceq	0, cr15, [r1], {1}
87807c34:	c0013000 	andgt	r3, r1, r0
87807c38:	0c013000 	stceq	0, cr3, [r1], {-0}
87807c3c:	0001f001 	andeq	pc, r1, r1
87807c40:	04010000 	streq	r0, [r1], #-0
87807c44:	74008c01 	strvc	r8, [r0], #-3073	; 0xc01
87807c48:	8c017001 	stchi	0, cr7, [r1], {1}
87807c4c:	00000401 	andeq	r0, r0, r1, lsl #8
87807c50:	81010101 	tsthi	r1, r1, lsl #2
87807c54:	0e007101 	adfeqs	f7, f0, f1
87807c58:	60011800 	andvs	r1, r1, r0, lsl #16
87807c5c:	00018001 	andeq	r8, r1, r1
87807c60:	84010000 	strhi	r0, [r1], #-0
87807c64:	34010c01 	strcc	r0, [r1], #-3073	; 0xc01
87807c68:	84014401 	strhi	r4, [r1], #-1025	; 0x401
87807c6c:	00000c01 	andeq	r0, r0, r1, lsl #24
	...
87807c78:	fc3e0001 	ldc2	0, cr0, [lr], #-4
87807c7c:	02400240 	subeq	r0, r0, #64, 4
	...
87807c88:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
87807c8c:	00000000 	andeq	r0, r0, r0
87807c90:	02400000 	subeq	r0, r0, #0
87807c94:	fc3e0240 	ldc2	2, cr0, [lr], #-256	; 0xffffff00
87807c98:	00000001 	andeq	r0, r0, r1
87807c9c:	00000000 	andeq	r0, r0, r0
87807ca0:	00600000 	rsbeq	r0, r0, r0
87807ca4:	00800080 	addeq	r0, r0, r0, lsl #1
87807ca8:	00400040 	subeq	r0, r0, r0, asr #32
87807cac:	00200020 	eoreq	r0, r0, r0, lsr #32

87807cb0 <asc2_2412>:
	...
87807ce0:	0f000000 	svceq	0x00000000
87807ce4:	fe0f3880 	cdp2	8, 0, cr3, cr15, cr0, {4}
87807ce8:	38800f38 	stmcc	r0, {r3, r4, r5, r8, r9, sl, fp}
	...
87807cfc:	00010000 	andeq	r0, r1, r0
87807d00:	00000600 	andeq	r0, r0, r0, lsl #12
87807d04:	3800000c 	stmdacc	r0, {r2, r3}
87807d08:	00310000 	eorseq	r0, r1, r0
87807d0c:	00000600 	andeq	r0, r0, r0, lsl #12
87807d10:	3800000c 	stmdacc	r0, {r2, r3}
87807d14:	00300000 	eorseq	r0, r0, r0
	...
87807d20:	67008061 	strvs	r8, [r0, -r1, rrx]
87807d24:	80f907f8 	ldrshthi	r0, [r9], #120	; 0x78
87807d28:	00806100 	addeq	r6, r0, r0, lsl #2
87807d2c:	61008061 	tstvs	r0, r1, rrx
87807d30:	80610080 	rsbhi	r0, r1, r0, lsl #1
87807d34:	07f86700 	ldrbeq	r6, [r8, r0, lsl #14]!
87807d38:	610080f9 	strdvs	r8, [r0, -r9]
87807d3c:	00000080 	andeq	r0, r0, r0, lsl #1
87807d40:	00000000 	andeq	r0, r0, r0
87807d44:	c0010000 	andgt	r0, r1, r0
87807d48:	f0e003e0 			; <UNDEFINED> instruction: 0xf0e003e0
87807d4c:	04083006 	streq	r3, [r8], #-6
87807d50:	ff1f0818 			; <UNDEFINED> instruction: 0xff1f0818
87807d54:	080e04fe 	stmdaeq	lr, {r1, r2, r3, r4, r5, r6, r7, sl}
87807d58:	03f08707 	mvnseq	r8, #1835008	; 0x1c0000
87807d5c:	0000e081 	andeq	lr, r0, r1, lsl #1
87807d60:	00000000 	andeq	r0, r0, r0
87807d64:	0600f001 	streq	pc, [r0], -r1
87807d68:	0404000c 	streq	r0, [r4], #-12
87807d6c:	700c0608 	andvc	r0, ip, r8, lsl #12
87807d70:	00c0f901 	sbceq	pc, r0, r1, lsl #18
87807d74:	3b00000e 	blcc	87807db4 <asc2_2412+0x104>
87807d78:	18ec00e0 	stmiane	ip!, {r5, r6, r7}^
87807d7c:	04080807 	streq	r0, [r8], #-2055	; 0x807
87807d80:	0300180c 	movweq	r1, #2060	; 0x80c
87807d84:	000000e0 	andeq	r0, r0, r0, ror #1
87807d88:	00e00100 	rsceq	r0, r0, r0, lsl #2
87807d8c:	f803f007 			; <UNDEFINED> instruction: 0xf803f007
87807d90:	081c0418 	ldmdaeq	ip, {r3, r4, sl}
87807d94:	07081704 	streq	r1, [r8, -r4, lsl #14]
87807d98:	c003d0e1 	andgt	sp, r3, r1, ror #1
87807d9c:	b02300e0 	eorlt	r0, r3, r0, ror #1
87807da0:	00083c00 	andeq	r3, r8, r0, lsl #24
87807da4:	00000820 	andeq	r0, r0, r0, lsr #16
87807da8:	00000010 	andeq	r0, r0, r0, lsl r0
87807dac:	01000000 	mrseq	r0, (UNDEF: 0)
87807db0:	00310000 	eorseq	r0, r1, r0
87807db4:	00003200 	andeq	r3, r0, r0, lsl #4
87807db8:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
87807de0:	ff01007f 			; <UNDEFINED> instruction: 0xff01007f
87807de4:	f08007c0 			; <UNDEFINED> instruction: 0xf08007c0
87807de8:	1018000c 	andsne	r0, r8, ip
87807dec:	00200400 	eoreq	r0, r0, r0, lsl #8
87807df0:	00000002 	andeq	r0, r0, r2
87807df4:	20000000 	andcs	r0, r0, r0
87807df8:	00100200 	andseq	r0, r0, r0, lsl #4
87807dfc:	18000c04 	stmdane	r0, {r2, sl, fp}
87807e00:	01f08007 	mvnseq	r8, r7
87807e04:	7f00c0ff 	svcvc	0x0000c0ff
	...
87807e1c:	66000042 	strvs	r0, [r0], -r2, asr #32
87807e20:	00660000 	rsbeq	r0, r6, r0
87807e24:	00003c00 	andeq	r3, r0, r0, lsl #24
87807e28:	ff030018 			; <UNDEFINED> instruction: 0xff030018
87807e2c:	001800c0 	andseq	r0, r8, r0, asr #1
87807e30:	00003c00 	andeq	r3, r0, r0, lsl #24
87807e34:	66000066 	strvs	r0, [r0], -r6, rrx
87807e38:	00420000 	subeq	r0, r2, r0
87807e3c:	00000000 	andeq	r0, r0, r0
87807e40:	08000008 	stmdaeq	r0, {r3}
87807e44:	00080000 	andeq	r0, r8, r0
87807e48:	00000800 	andeq	r0, r0, r0, lsl #16
87807e4c:	ff010008 			; <UNDEFINED> instruction: 0xff010008
87807e50:	000800c0 	andeq	r0, r8, r0, asr #1
87807e54:	00000800 	andeq	r0, r0, r0, lsl #16
87807e58:	08000008 	stmdaeq	r0, {r3}
87807e5c:	00080000 	andeq	r0, r8, r0
87807e60:	00000000 	andeq	r0, r0, r0
87807e64:	00000100 	andeq	r0, r0, r0, lsl #2
87807e68:	32000031 	andcc	r0, r0, #49	; 0x31
87807e6c:	001c0000 	andseq	r0, ip, r0
	...
87807e88:	08000008 	stmdaeq	r0, {r3}
87807e8c:	00080000 	andeq	r0, r8, r0
87807e90:	00000800 	andeq	r0, r0, r0, lsl #16
87807e94:	08000008 	stmdaeq	r0, {r3}
87807e98:	00080000 	andeq	r0, r8, r0
87807e9c:	00000800 	andeq	r0, r0, r0, lsl #16
87807ea0:	08000008 	stmdaeq	r0, {r3}
	...
87807eb0:	38000038 	stmdacc	r0, {r3, r4, r5}
87807eb4:	00380000 	eorseq	r0, r8, r0
	...
87807ed0:	00000600 	andeq	r0, r0, r0, lsl #12
87807ed4:	7000001c 	andvc	r0, r0, ip, lsl r0
87807ed8:	00800100 	addeq	r0, r0, r0, lsl #2
87807edc:	3800000e 	stmdacc	r0, {r1, r2, r3}
87807ee0:	00c00000 	sbceq	r0, r0, r0
87807ee4:	1c000007 	stcne	0, cr0, [r0], {7}
87807ee8:	00300000 	eorseq	r0, r0, r0
	...
87807ef4:	ff01807f 			; <UNDEFINED> instruction: 0xff01807f
87807ef8:	708003e0 	addvc	r0, r0, r0, ror #7
87807efc:	04180006 	ldreq	r0, [r8], #-6
87807f00:	00040800 	andeq	r0, r4, r0, lsl #16
87807f04:	18000608 	stmdane	r0, {r3, r9, sl}
87807f08:	01708003 	cmneq	r0, r3
87807f0c:	7f00e0ff 	svcvc	0x0000e0ff
87807f10:	00000080 	andeq	r0, r0, r0, lsl #1
87807f14:	00000000 	andeq	r0, r0, r0
87807f18:	00010000 	andeq	r0, r1, r0
87807f1c:	08000108 	stmdaeq	r0, {r3, r8}
87807f20:	03080001 	movweq	r0, #32769	; 0x8001
87807f24:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87807f28:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
87807f2c:	00080000 	andeq	r0, r8, r0
87807f30:	00000800 	andeq	r0, r0, r0, lsl #16
87807f34:	00000000 	andeq	r0, r0, r0
87807f38:	01000000 	mrseq	r0, (UNDEF: 0)
87807f3c:	c00238c0 	andgt	r3, r2, r0, asr #17
87807f40:	98000458 	stmdals	r0, {r3, r4, r6, sl}
87807f44:	04180104 	ldreq	r0, [r8], #-260	; 0x104
87807f48:	04041802 	streq	r1, [r4], #-2050	; 0x802
87807f4c:	181c0618 	ldmdane	ip, {r3, r4, r9, sl}
87807f50:	0118f803 	tsteq	r8, r3, lsl #16
87807f54:	0000f8e0 	andeq	pc, r0, r0, ror #17
87807f58:	00000000 	andeq	r0, r0, r0
87807f5c:	01000000 	mrseq	r0, (UNDEF: 0)
87807f60:	c003e0c0 	andgt	lr, r3, r0, asr #1
87807f64:	080004f0 	stmdaeq	r0, {r4, r5, r6, r7, sl}
87807f68:	04080804 	streq	r0, [r8], #-2052	; 0x804
87807f6c:	18060808 	stmdane	r6, {r3, fp}
87807f70:	18f40308 	ldmne	r4!, {r3, r8, r9}^
87807f74:	00f0e701 	rscseq	lr, r0, r1, lsl #14
87807f78:	0000e001 	andeq	lr, r0, r1
	...
87807f84:	0d000003 	stceq	0, cr0, [r0, #-12]
87807f88:	00110000 	andseq	r0, r1, r0
87807f8c:	00006100 	andeq	r6, r0, r0, lsl #2
87807f90:	01030881 	smlabbeq	r3, r1, r8, r0
87807f94:	f8ff0708 			; <UNDEFINED> instruction: 0xf8ff0708
87807f98:	00f8ff0f 	rscseq	pc, r8, pc, lsl #30
87807f9c:	01000801 	tsteq	r0, r1, lsl #16
87807fa0:	00000008 	andeq	r0, r0, r8
87807fa4:	00000000 	andeq	r0, r0, r0
87807fa8:	fc07e000 	stc2	0, cr14, [r7], {-0}
87807fac:	080806d0 	stmdaeq	r8, {r4, r6, r7, r9, sl}
87807fb0:	06081006 	streq	r1, [r8], -r6
87807fb4:	10060810 	andne	r0, r6, r0, lsl r8
87807fb8:	38180608 	ldmdacc	r8, {r3, r9, sl}
87807fbc:	06f00f06 	ldrbteq	r0, [r0], r6, lsl #30
87807fc0:	0000c007 	andeq	ip, r0, r7
	...
87807fcc:	ff01803f 			; <UNDEFINED> instruction: 0xff01803f
87807fd0:	308403e0 	addcc	r0, r4, r0, ror #7
87807fd4:	04180802 	ldreq	r0, [r8], #-2050	; 0x802
87807fd8:	10040810 	andne	r0, r4, r0, lsl r8
87807fdc:	08100408 	ldmdaeq	r0, {r3, sl}
87807fe0:	03101807 	tsteq	r0, #458752	; 0x70000
87807fe4:	0700f00f 	streq	pc, [r0, -pc]
87807fe8:	000000c0 	andeq	r0, r0, r0, asr #1
87807fec:	00000000 	andeq	r0, r0, r0
87807ff0:	c0030000 	andgt	r0, r3, r0
87807ff4:	00000700 	andeq	r0, r0, r0, lsl #14
87807ff8:	06000006 	streq	r0, [r0], -r6
87807ffc:	0706f800 	streq	pc, [r6, -r0, lsl #16]
87808000:	001806f8 			; <UNDEFINED> instruction: 0x001806f8
87808004:	0700e006 	streq	lr, [r0, -r6]
87808008:	00060000 	andeq	r0, r6, r0
8780800c:	00000000 	andeq	r0, r0, r0
87808010:	01000000 	mrseq	r0, (UNDEF: 0)
87808014:	f703e0e1 			; <UNDEFINED> instruction: 0xf703e0e1
87808018:	103406f0 	ldrshtne	r0, [r4], -r0
8780801c:	04081804 	streq	r1, [r8], #-2052	; 0x804
87808020:	0c040818 	stceq	8, cr0, [r4], {24}
87808024:	080c0408 	stmdaeq	ip, {r3, sl}
87808028:	03181606 	tsteq	r8, #6291456	; 0x600000
8780802c:	c101f0f3 	strdgt	pc, [r1, -r3]
87808030:	000000e0 	andeq	r0, r0, r0, ror #1
87808034:	00000000 	andeq	r0, r0, r0
87808038:	fc0300f8 	stc2	0, cr0, [r3], {248}	; 0xf8
8780803c:	38060330 	stmdacc	r6, {r4, r5, r8, r9}
87808040:	04080204 	streq	r0, [r8], #-516	; 0x204
87808044:	02040802 	andeq	r0, r4, #131072	; 0x20000
87808048:	10040408 	andne	r0, r4, r8, lsl #8
8780804c:	01f00803 	mvnseq	r0, r3, lsl #16
87808050:	7f00c0ff 	svcvc	0x0000c0ff
	...
87808068:	70003870 	andvc	r3, r0, r0, ror r8
8780806c:	38700038 	ldmdacc	r0!, {r3, r4, r5}^
	...
8780808c:	30001a30 	andcc	r1, r0, r0, lsr sl
87808090:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
878080a4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
878080a8:	00140000 	andseq	r0, r4, r0
878080ac:	00002200 	andeq	r2, r0, r0, lsl #4
878080b0:	80000041 	andhi	r0, r0, r1, asr #32
878080b4:	40000180 	andmi	r0, r0, r0, lsl #3
878080b8:	04200002 	strteq	r0, [r0], #-2
878080bc:	00081000 	andeq	r1, r8, r0
878080c0:	00000008 	andeq	r0, r0, r8
878080c4:	00000000 	andeq	r0, r0, r0
878080c8:	21000021 	tstcs	r0, r1, lsr #32
878080cc:	00210000 	eoreq	r0, r1, r0
878080d0:	00002100 	andeq	r2, r0, r0, lsl #2
878080d4:	21000021 	tstcs	r0, r1, lsr #32
878080d8:	00210000 	eoreq	r0, r1, r0
878080dc:	00002100 	andeq	r2, r0, r0, lsl #2
878080e0:	21000021 	tstcs	r0, r1, lsr #32
	...
878080ec:	00080000 	andeq	r0, r8, r0
878080f0:	10000408 	andne	r0, r0, r8, lsl #8
878080f4:	01200002 	teqeq	r0, r2
878080f8:	80004000 	andhi	r4, r0, r0
878080fc:	00410080 	subeq	r0, r1, r0, lsl #1
87808100:	00002200 	andeq	r2, r0, r0, lsl #4
87808104:	08000014 	stmdaeq	r0, {r2, r4}
87808108:	00000000 	andeq	r0, r0, r0
8780810c:	03000000 	movweq	r0, #0
87808110:	c00400c0 	andgt	r0, r4, r0, asr #1
87808114:	00000400 	andeq	r0, r0, r0, lsl #8
87808118:	08380008 	ldmdaeq	r8!, {r3}
8780811c:	0808380f 	stmdaeq	r8, {r0, r1, r2, r3, fp, ip, sp}
87808120:	00100838 	andseq	r0, r0, r8, lsr r8
87808124:	0700300c 	streq	r3, [r0, -ip]
87808128:	c00300e0 	andgt	r0, r3, r0, ror #1
	...
87808134:	ff00803f 			; <UNDEFINED> instruction: 0xff00803f
87808138:	708003e0 	addvc	r0, r0, r0, ror #7
8780813c:	06100f02 	ldreq	r0, [r0], -r2, lsl #30
87808140:	c0048870 	andgt	r8, r4, r0, ror r8
87808144:	08830488 	stmeq	r3, {r3, r7, sl}
87808148:	02887f04 	addeq	r7, r8, #4, 30
8780814c:	010390c0 	smlabteq	r3, r0, r0, r9
87808150:	40fe0020 	rscsmi	r0, lr, r0, lsr #32
87808154:	00080000 	andeq	r0, r8, r0
87808158:	01001800 	tsteq	r0, r0, lsl #16
8780815c:	083e00f8 	ldmdaeq	lr!, {r3, r4, r5, r6, r7}
87808160:	0700c201 	streq	ip, [r0, -r1, lsl #4]
87808164:	e2070002 	and	r0, r7, #2
87808168:	00fe0000 	rscseq	r0, lr, r0
8780816c:	00c81f00 	sbceq	r1, r8, r0, lsl #30
87808170:	0000f801 	andeq	pc, r0, r1, lsl #16
87808174:	08000038 	stmdaeq	r0, {r3, r4, r5}
87808178:	07080004 	streq	r0, [r8, -r4]
8780817c:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808180:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
87808184:	04080804 	streq	r0, [r8], #-2052	; 0x804
87808188:	08040808 	stmdaeq	r4, {r3, fp}
8780818c:	08180608 	ldmdaeq	r8, {r3, r9, sl}
87808190:	0118f403 	tsteq	r8, r3, lsl #8
87808194:	0100f0e7 	smlatteq	r0, r7, r0, pc	; <UNPREDICTABLE>
87808198:	000000e0 	andeq	r0, r0, r0, ror #1
8780819c:	00000000 	andeq	r0, r0, r0
878081a0:	ff01803f 			; <UNDEFINED> instruction: 0xff01803f
878081a4:	708003e0 	addvc	r0, r0, r0, ror #7
878081a8:	04180002 	ldreq	r0, [r8], #-2
878081ac:	00040800 	andeq	r0, r4, r0, lsl #16
878081b0:	08000408 	stmdaeq	r0, {r3, sl}
878081b4:	06100004 	ldreq	r0, [r0], -r4
878081b8:	80072000 	andhi	r2, r7, r0
878081bc:	000000c0 	andeq	r0, r0, r0, asr #1
878081c0:	07080004 	streq	r0, [r8, -r4]
878081c4:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
878081c8:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
878081cc:	04080004 	streq	r0, [r8], #-4
878081d0:	00040800 	andeq	r0, r4, r0, lsl #16
878081d4:	10000218 	andne	r0, r0, r8, lsl r2
878081d8:	01708003 	cmneq	r0, r3
878081dc:	7f00e0ff 	svcvc	0x0000e0ff
878081e0:	00000080 	andeq	r0, r0, r0, lsl #1
878081e4:	07080004 	streq	r0, [r8, -r4]
878081e8:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
878081ec:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
878081f0:	04080804 	streq	r0, [r8], #-2052	; 0x804
878081f4:	08040808 	stmdaeq	r4, {r3, fp}
878081f8:	083e0408 	ldmdaeq	lr!, {r3, sl}
878081fc:	06080004 	streq	r0, [r8], -r4
87808200:	00011800 	andeq	r1, r1, r0, lsl #16
87808204:	00000060 	andeq	r0, r0, r0, rrx
87808208:	07080004 	streq	r0, [r8, -r4]
8780820c:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808210:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
87808214:	04000804 	streq	r0, [r0], #-2052	; 0x804
87808218:	08040008 	stmdaeq	r4, {r3}
8780821c:	003e0400 	eorseq	r0, lr, r0, lsl #8
87808220:	06000006 	streq	r0, [r0], -r6
87808224:	80010000 	andhi	r0, r1, r0
	...
87808230:	ff01803f 			; <UNDEFINED> instruction: 0xff01803f
87808234:	708003e0 	addvc	r0, r0, r0, ror #7
87808238:	04180006 	ldreq	r0, [r8], #-6
8780823c:	02040800 	andeq	r0, r4, #0, 16
87808240:	08020408 	stmdaeq	r2, {r3, sl}
87808244:	07f00302 	ldrbeq	r0, [r0, r2, lsl #6]!
87808248:	0200f083 	andeq	pc, r0, #131	; 0x83
8780824c:	00020000 	andeq	r0, r2, r0
87808250:	07080004 	streq	r0, [r8, -r4]
87808254:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808258:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
8780825c:	00000800 	andeq	r0, r0, r0, lsl #16
87808260:	08000008 	stmdaeq	r0, {r3}
87808264:	00080000 	andeq	r0, r8, r0
87808268:	07080804 	streq	r0, [r8, -r4, lsl #16]
8780826c:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808270:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808274:	00000000 	andeq	r0, r0, r0
87808278:	00040000 	andeq	r0, r4, r0
8780827c:	08000408 	stmdaeq	r0, {r3, sl}
87808280:	07080004 	streq	r0, [r8, -r4]
87808284:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808288:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
8780828c:	04080004 	streq	r0, [r8], #-4
87808290:	00000800 	andeq	r0, r0, r0, lsl #16
	...
8780829c:	00000600 	andeq	r0, r0, r0, lsl #12
878082a0:	01000007 	tsteq	r0, r7
878082a4:	04010004 	streq	r0, [r1], #-4
878082a8:	00040100 	andeq	r0, r4, r0, lsl #2
878082ac:	feff0703 	cdp2	7, 15, cr0, cr15, cr3, {0}
878082b0:	04fcff07 	ldrbteq	pc, [ip], #3847	; 0xf07	; <UNPREDICTABLE>
878082b4:	00040000 	andeq	r0, r4, r0
878082b8:	00000400 	andeq	r0, r0, r0, lsl #8
878082bc:	07080004 	streq	r0, [r8, -r4]
878082c0:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
878082c4:	080c04f8 	stmdaeq	ip, {r3, r4, r5, r6, r7, sl}
878082c8:	00001800 	andeq	r1, r0, r0, lsl #16
878082cc:	c704003e 	smladxgt	r4, lr, r0, r0
878082d0:	c8030580 	stmdagt	r3, {r7, r8, sl}
878082d4:	04f80006 	ldrbteq	r0, [r8], #6
878082d8:	00043800 	andeq	r3, r4, r0, lsl #16
878082dc:	08000018 	stmdaeq	r0, {r3, r4}
878082e0:	07080004 	streq	r0, [r8, -r4]
878082e4:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
878082e8:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
878082ec:	00080000 	andeq	r0, r8, r0
878082f0:	00000800 	andeq	r0, r0, r0, lsl #16
878082f4:	08000008 	stmdaeq	r0, {r3}
878082f8:	00080000 	andeq	r0, r8, r0
878082fc:	00001800 	andeq	r1, r0, r0, lsl #16
87808300:	00000060 	andeq	r0, r0, r0, rrx
87808304:	07080004 	streq	r0, [r8, -r4]
87808308:	8007f8ff 	strdhi	pc, [r7], -pc	; <UNPREDICTABLE>
8780830c:	00fc0708 	rscseq	r0, ip, r8, lsl #14
87808310:	00c07f00 	sbceq	r7, r0, r0, lsl #30
87808314:	0700f803 	streq	pc, [r0, -r3, lsl #16]
87808318:	007800c0 	rsbseq	r0, r8, r0, asr #1
8780831c:	07088007 	streq	r8, [r8, -r7]
87808320:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808324:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808328:	07080004 	streq	r0, [r8, -r4]
8780832c:	0007f8ff 	strdeq	pc, [r7], -pc	; <UNPREDICTABLE>
87808330:	00c00308 	sbceq	r0, r0, r8, lsl #6
87808334:	0000e000 	andeq	lr, r0, r0
87808338:	1e000038 	mcrne	0, 0, r0, cr0, cr8, {1}
8780833c:	00070000 	andeq	r0, r7, r0
87808340:	04c00100 	strbeq	r0, [r0], #256	; 0x100
87808344:	ff07f000 			; <UNDEFINED> instruction: 0xff07f000
87808348:	000004f8 	strdeq	r0, [r0], -r8
8780834c:	00000000 	andeq	r0, r0, r0
87808350:	ff01807f 			; <UNDEFINED> instruction: 0xff01807f
87808354:	708003e0 	addvc	r0, r0, r0, ror #7
87808358:	04180006 	ldreq	r0, [r8], #-6
8780835c:	00040800 	andeq	r0, r4, r0, lsl #16
87808360:	18000608 	stmdane	r0, {r3, r9, sl}
87808364:	01300003 	teqeq	r0, r3
87808368:	7f00e0ff 	svcvc	0x0000e0ff
8780836c:	00000080 	andeq	r0, r0, r0, lsl #1
87808370:	07080004 	streq	r0, [r8, -r4]
87808374:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808378:	080404f8 	stmdaeq	r4, {r3, r4, r5, r6, r7, sl}
8780837c:	04000404 	streq	r0, [r0], #-1028	; 0x404
87808380:	04040004 	streq	r0, [r4], #-4
87808384:	00040400 	andeq	r0, r4, r0, lsl #8
87808388:	03000c06 	movweq	r0, #3078	; 0xc06
8780838c:	f00100f8 			; <UNDEFINED> instruction: 0xf00100f8
	...
87808398:	ff01807f 			; <UNDEFINED> instruction: 0xff01807f
8780839c:	708003e0 	addvc	r0, r0, r0, ror #7
878083a0:	04880006 	streq	r0, [r8], #6
878083a4:	00048800 	andeq	r8, r4, r0, lsl #16
878083a8:	3c0006c8 	stccc	6, cr0, [r0], {200}	; 0xc8
878083ac:	013e0003 	teqeq	lr, r3
878083b0:	7f00e6ff 	svcvc	0x0000e6ff
878083b4:	00000084 	andeq	r0, r0, r4, lsl #1
878083b8:	07080004 	streq	r0, [r8, -r4]
878083bc:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
878083c0:	080804f8 	stmdaeq	r8, {r3, r4, r5, r6, r7, sl}
878083c4:	04000804 	streq	r0, [r0], #-2052	; 0x804
878083c8:	0f04000c 	svceq	0x0004000c
878083cc:	c00b0400 	andgt	r0, fp, r0, lsl #8
878083d0:	03f01006 	mvnseq	r1, #6
878083d4:	e00138f0 	strd	r3, [r1], -r0
878083d8:	08000008 	stmdaeq	r0, {r3}
878083dc:	01000000 	mrseq	r0, (UNDEF: 0)
878083e0:	f003f8e0 			; <UNDEFINED> instruction: 0xf003f8e0
878083e4:	10300630 	eorsne	r0, r0, r0, lsr r6
878083e8:	04081804 	streq	r1, [r8], #-2052	; 0x804
878083ec:	0c040818 	stceq	8, cr0, [r4], {24}
878083f0:	080c0408 	stmdaeq	ip, {r3, sl}
878083f4:	02180602 	andseq	r0, r8, #2097152	; 0x200000
878083f8:	8107f007 	tsthi	r7, r7
878083fc:	000000e0 	andeq	r0, r0, r0, ror #1
87808400:	06008001 	streq	r8, [r0], -r1
87808404:	00040000 	andeq	r0, r4, r0
87808408:	00000400 	andeq	r0, r0, r0, lsl #8
8780840c:	07080004 	streq	r0, [r8, -r4]
87808410:	ff07f8ff 			; <UNDEFINED> instruction: 0xff07f8ff
87808414:	080004f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, sl}
87808418:	04000004 	streq	r0, [r0], #-4
8780841c:	00060000 	andeq	r0, r6, r0
87808420:	00800100 	addeq	r0, r0, r0, lsl #2
87808424:	07000004 	streq	r0, [r0, -r4]
87808428:	ff07e0ff 			; <UNDEFINED> instruction: 0xff07e0ff
8780842c:	180004f0 	stmdane	r0, {r4, r5, r6, r7, sl}
87808430:	00080000 	andeq	r0, r8, r0
87808434:	00000800 	andeq	r0, r0, r0, lsl #16
87808438:	08000008 	stmdaeq	r0, {r3}
8780843c:	04080000 	streq	r0, [r8], #-0
87808440:	ff071000 			; <UNDEFINED> instruction: 0xff071000
87808444:	000004e0 	andeq	r0, r0, r0, ror #9
87808448:	06000004 	streq	r0, [r0], -r4
8780844c:	e0070000 	and	r0, r7, r0
87808450:	00fe0700 	rscseq	r0, lr, r0, lsl #14
87808454:	00e01f04 	rsceq	r1, r0, r4, lsl #30
87808458:	0000f801 	andeq	pc, r0, r1, lsl #16
8780845c:	e0010038 	and	r0, r1, r8, lsr r0
87808460:	07003e04 	streq	r3, [r0, -r4, lsl #28]
87808464:	000600c0 	andeq	r0, r6, r0, asr #1
87808468:	00000400 	andeq	r0, r0, r0, lsl #8
8780846c:	07000004 	streq	r0, [r0, -r4]
87808470:	ff0700e0 			; <UNDEFINED> instruction: 0xff0700e0
87808474:	f81f04c0 			; <UNDEFINED> instruction: 0xf81f04c0
87808478:	07c00700 	strbeq	r0, [r0, r0, lsl #14]
8780847c:	ff0700f8 			; <UNDEFINED> instruction: 0xff0700f8
87808480:	f83f0480 			; <UNDEFINED> instruction: 0xf83f0480
87808484:	04c00700 	strbeq	r0, [r0], #1792	; 0x700
87808488:	000700f8 	strdeq	r0, [r7], -r8
8780848c:	00000400 	andeq	r0, r0, r0, lsl #8
87808490:	04000000 	streq	r0, [r0], #-0
87808494:	00060800 	andeq	r0, r6, r0, lsl #16
87808498:	78c00718 	stmiavc	r0, {r3, r4, r8, r9, sl}^
8780849c:	00c8f105 	sbceq	pc, r8, r5, lsl #2
878084a0:	1f00003e 	svcne	0x0000003e
878084a4:	e8630480 	stmda	r3!, {r7, sl}^
878084a8:	06f88007 	ldrbteq	r8, [r8], r7
878084ac:	00041800 	andeq	r1, r4, r0, lsl #16
878084b0:	00000008 	andeq	r0, r0, r8
878084b4:	06000004 	streq	r0, [r0], -r4
878084b8:	80070000 	andhi	r0, r7, r0
878084bc:	08e00700 	stmiaeq	r0!, {r8, r9, sl}^
878084c0:	00087c04 	andeq	r7, r8, r4, lsl #24
878084c4:	0700f81f 	smuadeq	r0, pc, r8	; <UNPREDICTABLE>
878084c8:	081800f8 	ldmdaeq	r8, {r3, r4, r5, r6, r7}
878084cc:	0708e004 	streq	lr, [r8, -r4]
878084d0:	00060000 	andeq	r0, r6, r0
878084d4:	00000400 	andeq	r0, r0, r0, lsl #8
878084d8:	01000000 	mrseq	r0, (UNDEF: 0)
878084dc:	00060800 	andeq	r0, r6, r0, lsl #16
878084e0:	f8000438 			; <UNDEFINED> instruction: 0xf8000438
878084e4:	04e80304 	strbteq	r0, [r8], #772	; 0x304
878084e8:	7c04080f 	stcvc	8, cr0, [r4], {15}
878084ec:	08f00508 	ldmeq	r0!, {r3, r8, sl}^
878084f0:	0708c007 	streq	ip, [r8, -r7]
878084f4:	00041800 	andeq	r1, r4, r0, lsl #16
878084f8:	00000060 	andeq	r0, r0, r0, rrx
	...
87808508:	3f000000 	svccc	0x00000000
8780850c:	0020feff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
87808510:	02002002 	andeq	r2, r0, #2
87808514:	20020020 	andcs	r0, r2, r0, lsr #32
87808518:	00200200 	eoreq	r0, r0, r0, lsl #4
8780851c:	00000002 	andeq	r0, r0, r2
87808520:	00000000 	andeq	r0, r0, r0
87808524:	00080000 	andeq	r0, r8, r0
87808528:	00000700 	andeq	r0, r0, r0, lsl #14
8780852c:	0000c000 	andeq	ip, r0, r0
87808530:	06000038 			; <UNDEFINED> instruction: 0x06000038
87808534:	c0010000 	andgt	r0, r1, r0
87808538:	00300000 	eorseq	r0, r0, r0
8780853c:	00000e00 	andeq	r0, r0, r0, lsl #28
87808540:	00000001 	andeq	r0, r0, r1
87808544:	00000000 	andeq	r0, r0, r0
87808548:	00200000 	eoreq	r0, r0, r0
8780854c:	02002002 	andeq	r2, r0, #2
87808550:	20020020 	andcs	r0, r2, r0, lsr #32
87808554:	00200200 	eoreq	r0, r0, r0, lsl #4
87808558:	feff3f02 	cdp2	15, 15, cr3, cr15, cr2, {0}
	...
87808570:	00000800 	andeq	r0, r0, r0, lsl #16
87808574:	30000010 	andcc	r0, r0, r0, lsl r0
87808578:	00200000 	eoreq	r0, r0, r0
8780857c:	00003000 	andeq	r3, r0, r0
87808580:	08000010 	stmdaeq	r0, {r4}
	...
8780858c:	00010000 	andeq	r0, r1, r0
87808590:	00000100 	andeq	r0, r0, r0, lsl #2
87808594:	01000001 	tsteq	r0, r1
87808598:	00010000 	andeq	r0, r1, r0
8780859c:	00000100 	andeq	r0, r0, r0, lsl #2
878085a0:	01000001 	tsteq	r0, r1
878085a4:	00010000 	andeq	r0, r1, r0
878085a8:	00000100 	andeq	r0, r0, r0, lsl #2
878085ac:	01000001 	tsteq	r0, r1
	...
878085b8:	00002000 	andeq	r2, r0, r0
878085bc:	10000020 	andne	r0, r0, r0, lsr #32
878085c0:	00100000 	andseq	r0, r0, r0
	...
878085d8:	1900f000 	stmdbne	r0, {ip, sp, lr, pc}
878085dc:	181b00f8 	ldmdane	fp, {r3, r4, r5, r6, r7}
878085e0:	00082200 	andeq	r2, r8, r0, lsl #4
878085e4:	24000826 	strcs	r0, [r0], #-2086	; 0x826
878085e8:	10240008 	eorne	r0, r4, r8
878085ec:	00f83f00 	rscseq	r3, r8, r0, lsl #30
878085f0:	0000f81f 	andeq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
878085f4:	18000008 	stmdane	r0, {r3}
878085f8:	04000000 	streq	r0, [r0], #-0
878085fc:	ff070000 			; <UNDEFINED> instruction: 0xff070000
87808600:	f0ff0ff8 			; <UNDEFINED> instruction: 0xf0ff0ff8
87808604:	00181800 	andseq	r1, r8, r0, lsl #16
87808608:	20000810 	andcs	r0, r0, r0, lsl r8
8780860c:	08200008 	stmdaeq	r0!, {r3}
87808610:	00183000 	andseq	r3, r8, r0
87808614:	0f00f01f 	svceq	0x0000f01f
87808618:	000000c0 	andeq	r0, r0, r0, asr #1
8780861c:	00000000 	andeq	r0, r0, r0
87808620:	1f00c007 	svcne	0x0000c007
87808624:	301800f0 	ldrshcc	r0, [r8], -r0	; <UNPREDICTABLE>
87808628:	00082000 	andeq	r2, r8, r0
8780862c:	20000820 	andcs	r0, r0, r0, lsr #16
87808630:	083c0008 	ldmdaeq	ip!, {r3}
87808634:	00101c00 	andseq	r1, r0, r0, lsl #24
87808638:	00006000 	andeq	r6, r0, r0
	...
87808644:	1f00c007 	svcne	0x0000c007
87808648:	183800f0 	ldmdane	r8!, {r4, r5, r6, r7}
8780864c:	00082000 	andeq	r2, r8, r0
87808650:	20000820 	andcs	r0, r0, r0, lsr #16
87808654:	10100408 	andsne	r0, r0, r8, lsl #8
87808658:	0ff8ff07 	svceq	0x00f8ff07
8780865c:	0000f0ff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
87808660:	00000010 	andeq	r0, r0, r0, lsl r0
87808664:	00000000 	andeq	r0, r0, r0
87808668:	07000000 	streq	r0, [r0, -r0]
8780866c:	f01f00c0 			; <UNDEFINED> instruction: 0xf01f00c0
87808670:	00301200 	eorseq	r1, r0, r0, lsl #4
87808674:	22001822 	andcs	r1, r0, #2228224	; 0x220000
87808678:	08220008 	stmdaeq	r2!, {r3}
8780867c:	00083200 	andeq	r3, r8, r0, lsl #4
87808680:	0e00101e 	mcreq	0, 0, r1, cr0, cr14, {0}
87808684:	00000020 	andeq	r0, r0, r0, lsr #32
87808688:	00000000 	andeq	r0, r0, r0
8780868c:	20000020 	andcs	r0, r0, r0, lsr #32
87808690:	08200008 	stmdaeq	r0!, {r3}
87808694:	03f8ff01 	mvnseq	pc, #1, 30
87808698:	2006f8ff 	strdcs	pc, [r6], -pc	; <UNPREDICTABLE>
8780869c:	08200408 	stmdaeq	r0!, {r3, sl}
878086a0:	07082004 	streq	r2, [r8, -r4]
878086a4:	00030020 	andeq	r0, r3, r0, lsr #32
	...
878086b0:	0e000e00 	cdpeq	14, 0, cr0, cr0, cr0, {0}
878086b4:	f31f006e 	vhadd.u16	q0, <illegal reg q7.5>, q15
878086b8:	00b13100 	adcseq	r3, r1, r0, lsl #2
878086bc:	2000b120 	andcs	fp, r0, r0, lsr #2
878086c0:	913100b1 	ldrhls	r0, [r1, -r1]!
878086c4:	00131f00 	andseq	r1, r3, r0, lsl #30
878086c8:	20001e2e 	andcs	r1, r0, lr, lsr #28
878086cc:	0030000e 	eorseq	r0, r0, lr
878086d0:	04000000 	streq	r0, [r0], #-0
878086d4:	ff070800 			; <UNDEFINED> instruction: 0xff070800
878086d8:	f8ff0ff8 			; <UNDEFINED> instruction: 0xf8ff0ff8
878086dc:	00081000 	andeq	r1, r8, r0
878086e0:	20000020 	andcs	r0, r0, r0, lsr #32
878086e4:	08200000 	stmdaeq	r0!, {}	; <UNPREDICTABLE>
878086e8:	00f83f00 	rscseq	r3, r8, r0, lsl #30
878086ec:	0000f81f 	andeq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
878086f0:	00000008 	andeq	r0, r0, r8
878086f4:	00000000 	andeq	r0, r0, r0
878086f8:	20000000 	andcs	r0, r0, r0
878086fc:	08200008 	stmdaeq	r0!, {r3}
87808700:	06082000 	streq	r2, [r8], -r0
87808704:	3f06f83f 	svccc	0x0006f83f
87808708:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
8780870c:	00080000 	andeq	r0, r8, r0
87808710:	00000800 	andeq	r0, r0, r0, lsl #16
	...
87808720:	03000003 	movweq	r0, #3
87808724:	00012000 	andeq	r2, r1, r0
87808728:	20000120 	andcs	r0, r0, r0, lsr #2
8780872c:	fe3f0603 	cdp2	6, 3, cr0, cr15, cr3, {0}
87808730:	00fc3f06 	rscseq	r3, ip, r6, lsl #30
	...
8780873c:	04000000 	streq	r0, [r0], #-0
87808740:	ff070800 			; <UNDEFINED> instruction: 0xff070800
87808744:	f8ff0ff8 			; <UNDEFINED> instruction: 0xf8ff0ff8
87808748:	00880100 	addeq	r0, r8, r0, lsl #2
8780874c:	2f000003 	svccs	0x00000003
87808750:	f83800c0 			; <UNDEFINED> instruction: 0xf83800c0
87808754:	00382000 	eorseq	r2, r8, r0
87808758:	00000820 	andeq	r0, r0, r0, lsr #16
8780875c:	00000008 	andeq	r0, r0, r8
87808760:	00000000 	andeq	r0, r0, r0
87808764:	00040000 	andeq	r0, r4, r0
87808768:	08000408 	stmdaeq	r0, {r3, sl}
8780876c:	07080004 	streq	r0, [r8, -r4]
87808770:	ff0ff8ff 			; <UNDEFINED> instruction: 0xff0ff8ff
87808774:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
87808778:	00080000 	andeq	r0, r8, r0
8780877c:	00000800 	andeq	r0, r0, r0, lsl #16
87808780:	00000000 	andeq	r0, r0, r0
87808784:	00082000 	andeq	r2, r8, r0
87808788:	3f00f83f 	svccc	0x0000f83f
8780878c:	081000f8 	ldmdaeq	r0, {r3, r4, r5, r6, r7}
87808790:	00002000 	andeq	r2, r0, r0
87808794:	3f00f83f 	svccc	0x0000f83f
87808798:	081000f8 	ldmdaeq	r0, {r3, r4, r5, r6, r7}
8780879c:	00002000 	andeq	r2, r0, r0
878087a0:	3f00f83f 	svccc	0x0000f83f
878087a4:	080000f8 	stmdaeq	r0, {r3, r4, r5, r6, r7}
878087a8:	00000000 	andeq	r0, r0, r0
878087ac:	3f000820 	svccc	0x00000820
878087b0:	f83f00f8 			; <UNDEFINED> instruction: 0xf83f00f8
878087b4:	00081000 	andeq	r1, r8, r0
878087b8:	20000010 	andcs	r0, r0, r0, lsl r0
878087bc:	08200000 	stmdaeq	r0!, {}	; <UNPREDICTABLE>
878087c0:	00f83f00 	rscseq	r3, r8, r0, lsl #30
878087c4:	0000f81f 	andeq	pc, r0, pc, lsl r8	; <UNPREDICTABLE>
878087c8:	00000008 	andeq	r0, r0, r8
878087cc:	00000000 	andeq	r0, r0, r0
878087d0:	0f00c007 	svceq	0x0000c007
878087d4:	301800f0 	ldrshcc	r0, [r8], -r0	; <UNPREDICTABLE>
878087d8:	00083000 	andeq	r3, r8, r0
878087dc:	20000820 	andcs	r0, r0, r0, lsr #16
878087e0:	08300008 	ldmdaeq	r0!, {r3}
878087e4:	00301800 	eorseq	r1, r0, r0, lsl #16
878087e8:	0700f00f 	streq	pc, [r0, -pc]
878087ec:	000000c0 	andeq	r0, r0, r0, asr #1
878087f0:	00000000 	andeq	r0, r0, r0
878087f4:	3f000120 	svccc	0x00000120
878087f8:	ff3f00ff 			; <UNDEFINED> instruction: 0xff3f00ff
878087fc:	00111000 	andseq	r1, r1, r0
87808800:	20000920 	andcs	r0, r0, r0, lsr #18
87808804:	08200008 	stmdaeq	r0!, {r3}
87808808:	00383000 	eorseq	r3, r8, r0
8780880c:	0f00f01f 	svceq	0x0000f01f
87808810:	000000c0 	andeq	r0, r0, r0, asr #1
87808814:	00000000 	andeq	r0, r0, r0
87808818:	1f00c007 	svcne	0x0000c007
8780881c:	183800f0 	ldmdane	r8!, {r4, r5, r6, r7}
87808820:	00082000 	andeq	r2, r8, r0
87808824:	20000820 	andcs	r0, r0, r0, lsr #16
87808828:	11100009 	tstne	r0, r9
8780882c:	00ff1f00 	rscseq	r1, pc, r0, lsl #30
87808830:	0000ff3f 	andeq	pc, r0, pc, lsr pc	; <UNPREDICTABLE>
87808834:	00000001 	andeq	r0, r0, r1
87808838:	00082000 	andeq	r2, r8, r0
8780883c:	20000820 	andcs	r0, r0, r0, lsr #16
87808840:	f83f0008 			; <UNDEFINED> instruction: 0xf83f0008
87808844:	00f83f00 	rscseq	r3, r8, r0, lsl #30
87808848:	10000808 	andne	r0, r0, r8, lsl #16
8780884c:	08200008 	stmdaeq	r0!, {r3}
87808850:	00002000 	andeq	r2, r0, r0
87808854:	30000030 	andcc	r0, r0, r0, lsr r0
	...
87808860:	0c000000 	stceq	0, cr0, [r0], {-0}
87808864:	181e0078 	ldmdane	lr, {r3, r4, r5, r6}
87808868:	00083300 	andeq	r3, r8, r0, lsl #6
8780886c:	21000823 	tstcs	r0, r3, lsr #16
87808870:	88210008 	stmdahi	r1!, {r3}
87808874:	00982100 	addseq	r2, r8, r0, lsl #2
87808878:	3800f030 	stmdacc	r0, {r4, r5, ip, sp, lr, pc}
8780887c:	00000060 	andeq	r0, r0, r0, rrx
87808880:	00000000 	andeq	r0, r0, r0
87808884:	20000020 	andcs	r0, r0, r0, lsr #32
87808888:	00200000 	eoreq	r0, r0, r0
8780888c:	03f0ff00 	mvnseq	pc, #0, 30
87808890:	2000f8ff 	strdcs	pc, [r0], -pc	; <UNPREDICTABLE>
87808894:	08200008 	stmdaeq	r0!, {r3}
87808898:	00082000 	andeq	r2, r8, r0
8780889c:	00003000 	andeq	r3, r0, r0
	...
878088a8:	3f000020 	svccc	0x00000020
878088ac:	f87f00f0 			; <UNDEFINED> instruction: 0xf87f00f0
878088b0:	00180000 	andseq	r0, r8, r0
878088b4:	00000800 	andeq	r0, r0, r0, lsl #16
878088b8:	10200008 	eorne	r0, r0, r8
878088bc:	00f83f00 	rscseq	r3, r8, r0, lsl #30
878088c0:	0000f07f 	andeq	pc, r0, pc, ror r0	; <UNPREDICTABLE>
878088c4:	00000010 	andeq	r0, r0, r0, lsl r0
878088c8:	00000000 	andeq	r0, r0, r0
878088cc:	30000020 	andcc	r0, r0, r0, lsr #32
878088d0:	003c0000 	eorseq	r0, ip, r0
878088d4:	00803f00 	addeq	r3, r0, r0, lsl #30
878088d8:	0000f023 	andeq	pc, r0, r3, lsr #32
878088dc:	70000078 	andvc	r0, r0, r8, ror r0
878088e0:	00802300 	addeq	r2, r0, r0, lsl #6
878088e4:	3000003c 	andcc	r0, r0, ip, lsr r0
878088e8:	00200000 	eoreq	r0, r0, r0
878088ec:	00002000 	andeq	r2, r0, r0
878088f0:	3f00003c 	svccc	0x0000003c
878088f4:	f82300e0 			; <UNDEFINED> instruction: 0xf82300e0
878088f8:	00e00000 	rsceq	r0, r0, r0
878088fc:	3e000027 	cdpcc	0, 0, cr0, cr0, cr7, {1}
87808900:	e03f0000 	eors	r0, pc, r0
87808904:	00f82100 	rscseq	r2, r8, r0, lsl #2
87808908:	3e00e001 	cdpcc	0, 0, cr14, cr0, cr1, {0}
8780890c:	00200000 	eoreq	r0, r0, r0
87808910:	00000000 	andeq	r0, r0, r0
87808914:	20000820 	andcs	r0, r0, r0, lsr #16
87808918:	38380008 	ldmdacc	r8!, {r3}
8780891c:	00683e00 	rsbeq	r3, r8, r0, lsl #28
87808920:	03008027 	movweq	r8, #39	; 0x27
87808924:	f82c00c8 			; <UNDEFINED> instruction: 0xf82c00c8
87808928:	00383800 	eorseq	r3, r8, r0, lsl #16
8780892c:	20001820 	andcs	r1, r0, r0, lsr #16
87808930:	00000008 	andeq	r0, r0, r8
87808934:	00000000 	andeq	r0, r0, r0
87808938:	30000020 	andcc	r0, r0, r0, lsr #32
8780893c:	013c0003 	teqeq	ip, r3
87808940:	00833f00 	addeq	r3, r3, r0, lsl #30
87808944:	0000ec23 	andeq	lr, r0, r3, lsr #24
87808948:	80230070 	eorhi	r0, r3, r0, ror r0
8780894c:	00003c00 	andeq	r3, r0, r0, lsl #24
87808950:	20000020 	andcs	r0, r0, r0, lsr #32
	...
8780895c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
87808960:	38200008 	stmdacc	r0!, {r3}
87808964:	00f82000 	rscseq	r2, r8, r0
87808968:	2f00e823 	svccs	0x0000e823
8780896c:	083e0088 	ldmdaeq	lr!, {r3, r7}
87808970:	00083800 	andeq	r3, r8, r0, lsl #16
87808974:	00001820 	andeq	r1, r0, r0, lsr #16
87808978:	00000070 	andeq	r0, r0, r0, ror r0
	...
8780898c:	14000008 	strne	r0, [r0], #-8
87808990:	fcf71f00 	ldc2l	15, cr1, [r7]
87808994:	20060030 	andcs	r0, r6, r0, lsr r0
87808998:	00000200 	andeq	r0, r0, r0, lsl #4
	...
878089b0:	ffff0000 			; <UNDEFINED> instruction: 0xffff0000
878089b4:	000000ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
	...
878089c8:	00200000 	eoreq	r0, r0, r0
878089cc:	06003002 	streq	r3, [r0], -r2
878089d0:	00fcf71f 	rscseq	pc, ip, pc, lsl r7	; <UNPREDICTABLE>
878089d4:	08000014 	stmdaeq	r0, {r2, r4}
	...
878089e8:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
878089ec:	00600000 	rsbeq	r0, r0, r0
878089f0:	00004000 	andeq	r4, r0, r0
878089f4:	20000040 	andcs	r0, r0, r0, asr #32
878089f8:	00100000 	andseq	r0, r0, r0
878089fc:	00000800 	andeq	r0, r0, r0, lsl #16
87808a00:	04000004 	streq	r0, [r0], #-4
87808a04:	000c0000 	andeq	r0, ip, r0
87808a08:	00001000 	andeq	r1, r0, r0

87808a0c <asc2_3216>:
	...
87808aa4:	c000f007 	andgt	pc, r0, r7
87808aa8:	e0e1ff07 	rsc	pc, r1, r7, lsl #30
87808aac:	e001f007 	and	pc, r1, r7
87808ab0:	c0000000 	andgt	r0, r0, r0
	...
87808b14:	00002000 	andeq	r2, r0, r0
87808b18:	0000c001 	andeq	ip, r0, r1
87808b1c:	00008007 	andeq	r8, r0, r7
87808b20:	0000001f 	andeq	r0, r0, pc, lsl r0
87808b24:	0000001e 	andeq	r0, r0, lr, lsl r0
87808b28:	0000201c 	andeq	r2, r0, ip, lsl r0
87808b2c:	0000c001 	andeq	ip, r0, r1
87808b30:	00008007 	andeq	r8, r0, r7
87808b34:	0000001f 	andeq	r0, r0, pc, lsl r0
87808b38:	0000001e 	andeq	r0, r0, lr, lsl r0
87808b3c:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
87808b90:	000c1800 	andeq	r1, ip, r0, lsl #16
87808b94:	000c1800 	andeq	r1, ip, r0, lsl #16
87808b98:	e00f1800 	and	r1, pc, r0, lsl #16
87808b9c:	00fc1f00 	rscseq	r1, ip, r0, lsl #30
87808ba0:	000cf803 	andeq	pc, ip, r3, lsl #16
87808ba4:	000c1800 	andeq	r1, ip, r0, lsl #16
87808ba8:	000c1800 	andeq	r1, ip, r0, lsl #16
87808bac:	000c1800 	andeq	r1, ip, r0, lsl #16
87808bb0:	000c1800 	andeq	r1, ip, r0, lsl #16
87808bb4:	e00f1800 	and	r1, pc, r0, lsl #16
87808bb8:	00fc1f00 	rscseq	r1, ip, r0, lsl #30
87808bbc:	000cf803 	andeq	pc, ip, r3, lsl #16
87808bc0:	000c1800 	andeq	r1, ip, r0, lsl #16
87808bc4:	000c1800 	andeq	r1, ip, r0, lsl #16
	...
87808c14:	80070000 	andhi	r0, r7, r0
87808c18:	c0077800 	andgt	r7, r7, r0, lsl #16
87808c1c:	4006fc00 	andmi	pc, r6, r0, lsl #24
87808c20:	20000e01 	andcs	r0, r0, r1, lsl #28
87808c24:	20000703 	andcs	r0, r0, r3, lsl #14
87808c28:	20800302 	addcs	r0, r0, r2, lsl #6
87808c2c:	fcffff0f 	ldc2l	15, cr15, [pc], #60	; 87808c70 <asc2_3216+0x264>
87808c30:	20c00102 	sbccs	r0, r0, r2, lsl #2
87808c34:	60e00002 	rscvs	r0, r0, r2
87808c38:	40703001 	rsbsmi	r3, r0, r1
87808c3c:	803ff001 	eorshi	pc, pc, r1
87808c40:	001ff000 	andseq	pc, pc, r0
	...
87808c8c:	0000fe00 	andeq	pc, r0, r0, lsl #28
87808c90:	0000ff01 	andeq	pc, r0, r1, lsl #30
87808c94:	00800103 	addeq	r0, r0, r3, lsl #2
87808c98:	60800002 	addvs	r0, r0, r2
87808c9c:	c0810103 	addgt	r0, r1, r3, lsl #2
87808ca0:	0007ff01 	andeq	pc, r7, r1, lsl #30
87808ca4:	0018fe00 	andseq	pc, r8, r0, lsl #28
87808ca8:	00e00000 	rsceq	r0, r0, r0
87808cac:	00bf0300 	adcseq	r0, pc, r0, lsl #6
87808cb0:	c0ff0c00 	rscsgt	r0, pc, r0, lsl #24
87808cb4:	60807100 	addvs	r7, r0, r0, lsl #2
87808cb8:	2000c101 	andcs	ip, r0, r1, lsl #2
87808cbc:	60800103 	addvs	r0, r0, r3, lsl #2
87808cc0:	c0ff0000 	rscsgt	r0, pc, r0
87808cc4:	003f0000 	eorseq	r0, pc, r0
	...
87808d0c:	001f0000 	andseq	r0, pc, r0
87808d10:	c07f0000 	rsbsgt	r0, pc, r0
87808d14:	c0c0fc00 	sbcgt	pc, r0, r0, lsl #24
87808d18:	6080ff01 	addvs	pc, r0, r1, lsl #30
87808d1c:	20e00303 	rsccs	r0, r0, r3, lsl #6
87808d20:	20780202 	rsbscs	r0, r8, r2, lsl #4
87808d24:	201e0602 	andscs	r0, lr, r2, lsl #12
87808d28:	4007fc03 	andmi	pc, r7, r3, lsl #24
87808d2c:	8003f001 	andhi	pc, r3, r1
87808d30:	c0030100 	andgt	r0, r3, r0, lsl #2
87808d34:	601c0100 	andsvs	r0, ip, r0, lsl #2
87808d38:	20e00100 	rsccs	r0, r0, r0, lsl #2
87808d3c:	20000100 	andcs	r0, r0, r0, lsl #2
87808d40:	40000100 	andmi	r0, r0, r0, lsl #2
87808d44:	80010000 	andhi	r0, r1, r0
	...
87808d90:	00002000 	andeq	r2, r0, r0
87808d94:	0000601c 	andeq	r6, r0, ip, lsl r0
87808d98:	0000401c 	andeq	r4, r0, ip, lsl r0
87808d9c:	0000801f 	andeq	r8, r0, pc, lsl r0
87808da0:	0000000f 	andeq	r0, r0, pc
	...
87808e28:	00f80700 	rscseq	r0, r8, r0, lsl #14
87808e2c:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
87808e30:	c0077800 	andgt	r7, r7, r0, lsl #16
87808e34:	e000c001 	and	ip, r0, r1
87808e38:	30000003 	andcc	r0, r0, r3
87808e3c:	08000004 	stmdaeq	r0, {r2}
87808e40:	04000008 	streq	r0, [r0], #-8
87808e44:	02000010 	andeq	r0, r0, #16
	...
87808e90:	02000010 	andeq	r0, r0, #16
87808e94:	04000008 	streq	r0, [r0], #-8
87808e98:	08000004 	stmdaeq	r0, {r2}
87808e9c:	30000003 	andcc	r0, r0, r3
87808ea0:	e000c001 	and	ip, r0, r1
87808ea4:	c0077800 	andgt	r7, r7, r0, lsl #16
87808ea8:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
87808eac:	00f80700 	rscseq	r0, r8, r0, lsl #14
	...
87808f14:	00180c00 	andseq	r0, r8, r0, lsl #24
87808f18:	00380e00 	eorseq	r0, r8, r0, lsl #28
87808f1c:	00380e00 	eorseq	r0, r8, r0, lsl #28
87808f20:	00300600 	eorseq	r0, r0, r0, lsl #12
87808f24:	00600300 	rsbeq	r0, r0, r0, lsl #6
87808f28:	80436100 	subhi	r6, r3, r0, lsl #2
87808f2c:	80ffff00 	rscshi	pc, pc, r0, lsl #30
87808f30:	00436100 	subeq	r6, r3, r0, lsl #2
87808f34:	00600300 	rsbeq	r0, r0, r0, lsl #6
87808f38:	00300600 	eorseq	r0, r0, r0, lsl #12
87808f3c:	00380e00 	eorseq	r0, r8, r0, lsl #28
87808f40:	00380e00 	eorseq	r0, r8, r0, lsl #28
87808f44:	00180c00 	andseq	r0, r8, r0, lsl #24
	...
87808f94:	00800000 	addeq	r0, r0, r0
87808f98:	00800000 	addeq	r0, r0, r0
87808f9c:	00800000 	addeq	r0, r0, r0
87808fa0:	00800000 	addeq	r0, r0, r0
87808fa4:	00800000 	addeq	r0, r0, r0
87808fa8:	00800000 	addeq	r0, r0, r0
87808fac:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
87808fb0:	00800000 	addeq	r0, r0, r0
87808fb4:	00800000 	addeq	r0, r0, r0
87808fb8:	00800000 	addeq	r0, r0, r0
87808fbc:	00800000 	addeq	r0, r0, r0
87808fc0:	00800000 	addeq	r0, r0, r0
87808fc4:	00800000 	addeq	r0, r0, r0
	...
87809010:	01000000 	mrseq	r0, (UNDEF: 0)
87809014:	e3000000 	movw	r0, #0
87809018:	e2000000 	and	r0, r0, #0
8780901c:	fc000000 	stc2	0, cr0, [r0], {-0}
87809020:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
	...
87809090:	00800000 	addeq	r0, r0, r0
87809094:	00800000 	addeq	r0, r0, r0
87809098:	00800000 	addeq	r0, r0, r0
8780909c:	00800000 	addeq	r0, r0, r0
878090a0:	00800000 	addeq	r0, r0, r0
878090a4:	00800000 	addeq	r0, r0, r0
878090a8:	00800000 	addeq	r0, r0, r0
878090ac:	00800000 	addeq	r0, r0, r0
878090b0:	00800000 	addeq	r0, r0, r0
878090b4:	00800000 	addeq	r0, r0, r0
878090b8:	00800000 	addeq	r0, r0, r0
878090bc:	00800000 	addeq	r0, r0, r0
878090c0:	00800000 	addeq	r0, r0, r0
878090c4:	00800000 	addeq	r0, r0, r0
	...
87809114:	c0000000 	andgt	r0, r0, r0
87809118:	e0010000 	and	r0, r1, r0
8780911c:	e0010000 	and	r0, r1, r0
87809120:	c0000000 	andgt	r0, r0, r0
	...
87809190:	0c000000 	stceq	0, cr0, [r0], {-0}
87809194:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
87809198:	e0000000 	and	r0, r0, r0
8780919c:	80030000 	andhi	r0, r3, r0
878091a0:	000e0000 	andeq	r0, lr, r0
878091a4:	00380000 	eorseq	r0, r8, r0
878091a8:	00e00000 	rsceq	r0, r0, r0
878091ac:	00800300 	addeq	r0, r0, r0, lsl #6
878091b0:	00000e00 	andeq	r0, r0, r0, lsl #28
878091b4:	00003800 	andeq	r3, r0, r0, lsl #16
878091b8:	0000e000 	andeq	lr, r0, r0
878091bc:	00008003 	andeq	r8, r0, r3
878091c0:	0000000e 	andeq	r0, r0, lr
878091c4:	00000018 	andeq	r0, r0, r8, lsl r0
	...
87809214:	00f80f00 	rscseq	r0, r8, r0, lsl #30
87809218:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
8780921c:	8007f000 	andhi	pc, r7, r0
87809220:	c0008001 	andgt	r8, r0, r1
87809224:	60000003 	andvs	r0, r0, r3
87809228:	20000002 	andcs	r0, r0, r2
8780922c:	20000002 	andcs	r0, r0, r2
87809230:	20000002 	andcs	r0, r0, r2
87809234:	60000003 	andvs	r0, r0, r3
87809238:	c0008001 	andgt	r8, r0, r1
8780923c:	8003e000 	andhi	lr, r3, r0
87809240:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
87809244:	00f80f00 	rscseq	r0, r8, r0, lsl #30
	...
87809298:	20008000 	andcs	r8, r0, r0
8780929c:	20008000 	andcs	r8, r0, r0
878092a0:	20008000 	andcs	r8, r0, r0
878092a4:	60008000 	andvs	r8, r0, r0
878092a8:	e0ffff01 	rscs	pc, pc, r1, lsl #30
878092ac:	e0ffff03 	rscs	pc, pc, r3, lsl #30
878092b0:	60000000 	andvs	r0, r0, r0
878092b4:	20000000 	andcs	r0, r0, r0
878092b8:	20000000 	andcs	r0, r0, r0
878092bc:	20000000 	andcs	r0, r0, r0
	...
87809314:	e0007800 	and	r7, r0, r0, lsl #16
87809318:	60019800 	andvs	r9, r1, r0, lsl #16
8780931c:	60020001 	andvs	r0, r2, r1
87809320:	60040002 	andvs	r0, r4, r2
87809324:	60080002 	andvs	r0, r8, r2
87809328:	60100002 	andsvs	r0, r0, r2
8780932c:	60200002 	eorvs	r0, r0, r2
87809330:	60400002 	subvs	r0, r0, r2
87809334:	60800003 	addvs	r0, r0, r3
87809338:	60008301 	andvs	r8, r0, r1, lsl #6
8780933c:	e000fe01 	and	pc, r0, r1, lsl #28
87809340:	80077c00 	andhi	r7, r7, r0, lsl #24
	...
87809394:	8007f000 	andhi	pc, r7, r0
87809398:	c007f001 	andgt	pc, r7, r1
8780939c:	40000001 	andmi	r0, r0, r1
878093a0:	20000002 	andcs	r0, r0, r2
878093a4:	20000102 	andcs	r0, r0, r2, lsl #2
878093a8:	20000102 	andcs	r0, r0, r2, lsl #2
878093ac:	20000102 	andcs	r0, r0, r2, lsl #2
878093b0:	20800303 	addcs	r0, r0, r3, lsl #6
878093b4:	40808601 	addmi	r8, r0, r1, lsl #12
878093b8:	c0c0fc01 	sbcgt	pc, r0, r1, lsl #24
878093bc:	807f7800 	rsbshi	r7, pc, r0, lsl #16
878093c0:	001e0000 	andseq	r0, lr, r0
	...
87809410:	00080000 	andeq	r0, r8, r0
87809414:	00380000 	eorseq	r0, r8, r0
87809418:	00480000 	subeq	r0, r8, r0
8780941c:	00880100 	addeq	r0, r8, r0, lsl #2
87809420:	00080600 	andeq	r0, r8, r0, lsl #12
87809424:	10080c00 	andne	r0, r8, r0, lsl #24
87809428:	10083000 	andne	r3, r8, r0
8780942c:	10084000 	andne	r4, r8, r0
87809430:	f0ffff01 			; <UNDEFINED> instruction: 0xf0ffff01
87809434:	f0ffff03 			; <UNDEFINED> instruction: 0xf0ffff03
87809438:	f0ffff03 			; <UNDEFINED> instruction: 0xf0ffff03
8780943c:	10080000 	andne	r0, r8, r0
87809440:	10080000 	andne	r0, r8, r0
87809444:	10080000 	andne	r0, r8, r0
	...
87809494:	80070000 	andhi	r0, r7, r0
87809498:	40861f00 	addmi	r1, r6, r0, lsl #30
8780949c:	2000e103 	andcs	lr, r0, r3, lsl #2
878094a0:	20000203 	andcs	r0, r0, r3, lsl #4
878094a4:	20000403 	andcs	r0, r0, r3, lsl #8
878094a8:	20000403 	andcs	r0, r0, r3, lsl #8
878094ac:	20000403 	andcs	r0, r0, r3, lsl #8
878094b0:	20000403 	andcs	r0, r0, r3, lsl #8
878094b4:	40000603 	andmi	r0, r0, r3, lsl #12
878094b8:	c0010303 	andgt	r0, r1, r3, lsl #6
878094bc:	80ff0103 	rscshi	r0, pc, r3, lsl #2
878094c0:	007e0003 	rsbseq	r0, lr, r3
	...
87809514:	00fc0700 	rscseq	r0, ip, r0, lsl #14
87809518:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
8780951c:	80c37000 	sbchi	r7, r3, r0
87809520:	c0808100 	addgt	r8, r0, r0, lsl #2
87809524:	60000101 	andvs	r0, r0, r1, lsl #2
87809528:	20000203 	andcs	r0, r0, r3, lsl #4
8780952c:	20000202 	andcs	r0, r0, r2, lsl #4
87809530:	20000202 	andcs	r0, r0, r2, lsl #4
87809534:	20000202 	andcs	r0, r0, r2, lsl #4
87809538:	40000302 	andmi	r0, r0, r2, lsl #6
8780953c:	c080c101 	addgt	ip, r0, r1, lsl #2
87809540:	80ffc000 	rscshi	ip, pc, r0
87809544:	007e0000 	rsbseq	r0, lr, r0
	...
87809594:	0000f000 	andeq	pc, r0, r0
87809598:	0000c003 	andeq	ip, r0, r3
8780959c:	00008003 	andeq	r8, r0, r3
878095a0:	00000003 	andeq	r0, r0, r3
878095a4:	e0070003 	and	r0, r7, r3
878095a8:	e03f0003 	eors	r0, pc, r3
878095ac:	00c00103 	sbceq	r0, r0, r3, lsl #2
878095b0:	00000603 	andeq	r0, r0, r3, lsl #12
878095b4:	00001803 	andeq	r1, r0, r3, lsl #16
878095b8:	00006003 	andeq	r6, r0, r3
878095bc:	00008003 	andeq	r8, r0, r3
878095c0:	00000003 	andeq	r0, r0, r3
	...
87809610:	001f0000 	andseq	r0, pc, r0
87809614:	803f7800 	eorshi	r7, pc, r0, lsl #16
87809618:	c060fc00 	rsbgt	pc, r0, r0, lsl #24
8780961c:	40c08e01 	sbcmi	r8, r0, r1, lsl #28
87809620:	20800703 	addcs	r0, r0, r3, lsl #14
87809624:	20000302 	andcs	r0, r0, r2, lsl #6
87809628:	20800102 	addcs	r0, r0, r2, lsl #2
8780962c:	20800102 	addcs	r0, r0, r2, lsl #2
87809630:	20c00102 	sbccs	r0, r0, r2, lsl #2
87809634:	40e00103 	rscmi	r0, r0, r3, lsl #2
87809638:	c0708601 	rsbsgt	r8, r0, r1, lsl #12
8780963c:	803ffc00 	eorshi	pc, pc, r0, lsl #24
87809640:	001f7800 	andseq	r7, pc, r0, lsl #16
	...
87809690:	00003f00 	andeq	r3, r0, r0, lsl #30
87809694:	c081ff00 	addgt	pc, r1, r0, lsl #30
87809698:	c0c1c001 	sbcgt	ip, r1, r1
8780969c:	20600001 	rsbcs	r0, r0, r1
878096a0:	20200002 	eorcs	r0, r0, r2
878096a4:	20200002 	eorcs	r0, r0, r2
878096a8:	20200002 	eorcs	r0, r0, r2
878096ac:	60200002 	eorvs	r0, r0, r2
878096b0:	c0400002 	subgt	r0, r0, r2
878096b4:	80c10001 	sbchi	r0, r1, r1
878096b8:	008fc100 	addeq	ip, pc, r0, lsl #2
878096bc:	00fe7f00 	rscseq	r7, lr, r0, lsl #30
878096c0:	00f01f00 	rscseq	r1, r0, r0, lsl #30
	...
87809724:	c0000300 	andgt	r0, r0, r0, lsl #6
87809728:	e0810700 	add	r0, r1, r0, lsl #14
8780972c:	e0810700 	add	r0, r1, r0, lsl #14
87809730:	c0000300 	andgt	r0, r0, r0, lsl #6
	...
878097a4:	66000600 	strvs	r0, [r0], -r0, lsl #12
878097a8:	78000600 	stmdavc	r0, {r9, sl}
	...
87809814:	00800000 	addeq	r0, r0, r0
87809818:	00c00100 	sbceq	r0, r0, r0, lsl #2
8780981c:	00600300 	rsbeq	r0, r0, r0, lsl #6
87809820:	00300600 	eorseq	r0, r0, r0, lsl #12
87809824:	00180c00 	andseq	r0, r8, r0, lsl #24
87809828:	000c1800 	andeq	r1, ip, r0, lsl #16
8780982c:	00063000 	andeq	r3, r6, r0
87809830:	00036000 	andeq	r6, r3, r0
87809834:	8001c000 	andhi	ip, r1, r0
87809838:	40000001 	andmi	r0, r0, r1
8780983c:	20000002 	andcs	r0, r0, r2
87809840:	10000004 	andne	r0, r0, r4
	...
87809890:	00100400 	andseq	r0, r0, r0, lsl #8
87809894:	00100400 	andseq	r0, r0, r0, lsl #8
87809898:	00100400 	andseq	r0, r0, r0, lsl #8
8780989c:	00100400 	andseq	r0, r0, r0, lsl #8
878098a0:	00100400 	andseq	r0, r0, r0, lsl #8
878098a4:	00100400 	andseq	r0, r0, r0, lsl #8
878098a8:	00100400 	andseq	r0, r0, r0, lsl #8
878098ac:	00100400 	andseq	r0, r0, r0, lsl #8
878098b0:	00100400 	andseq	r0, r0, r0, lsl #8
878098b4:	00100400 	andseq	r0, r0, r0, lsl #8
878098b8:	00100400 	andseq	r0, r0, r0, lsl #8
878098bc:	00100400 	andseq	r0, r0, r0, lsl #8
878098c0:	00100400 	andseq	r0, r0, r0, lsl #8
878098c4:	00100400 	andseq	r0, r0, r0, lsl #8
	...
87809914:	10000004 	andne	r0, r0, r4
87809918:	20000002 	andcs	r0, r0, r2
8780991c:	40000001 	andmi	r0, r0, r1
87809920:	8001c000 	andhi	ip, r1, r0
87809924:	00036000 	andeq	r6, r3, r0
87809928:	00063000 	andeq	r3, r6, r0
8780992c:	000c1800 	andeq	r1, ip, r0, lsl #16
87809930:	00180c00 	andseq	r0, r8, r0, lsl #24
87809934:	00300600 	eorseq	r0, r0, r0, lsl #12
87809938:	00600300 	rsbeq	r0, r0, r0, lsl #6
8780993c:	00c00100 	sbceq	r0, r0, r0, lsl #2
87809940:	00800000 	addeq	r0, r0, r0
	...
87809994:	00007800 	andeq	r7, r0, r0, lsl #16
87809998:	0000f801 	andeq	pc, r0, r1, lsl #16
8780999c:	00003802 	andeq	r3, r0, r2, lsl #16
878099a0:	00000002 	andeq	r0, r0, r2
878099a4:	c0000004 	andgt	r0, r0, r4
878099a8:	e0790004 	rsbs	r0, r9, r4
878099ac:	e0810004 	add	r0, r1, r4
878099b0:	c0000104 	andgt	r0, r0, r4, lsl #2
878099b4:	00000304 	andeq	r0, r0, r4, lsl #6
878099b8:	00000202 	andeq	r0, r0, r2, lsl #4
878099bc:	00000603 	andeq	r0, r0, r3, lsl #12
878099c0:	0000fc01 	andeq	pc, r0, r1, lsl #24
878099c4:	0000f800 	andeq	pc, r0, r0, lsl #16
	...
87809a10:	00f80f00 	rscseq	r0, r8, r0, lsl #30
87809a14:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
87809a18:	80077000 	andhi	r7, r7, r0
87809a1c:	c000c000 	andgt	ip, r0, r0
87809a20:	40f80101 	rscsmi	r0, r8, r1, lsl #2
87809a24:	20fc0703 	rscscs	r0, ip, r3, lsl #14
87809a28:	20041e02 	andcs	r1, r4, r2, lsl #28
87809a2c:	20083002 	andcs	r3, r8, r2
87809a30:	20302002 	eorscs	r2, r0, r2
87809a34:	20fc3f02 	rscscs	r3, ip, r2, lsl #30
87809a38:	40043f01 	andmi	r3, r4, r1, lsl #30
87809a3c:	c00c8001 	andgt	r8, ip, r1
87809a40:	8031e000 	eorshi	lr, r1, r0
87809a44:	00c21f00 	sbceq	r1, r2, r0, lsl #30
	...
87809a8c:	20000000 	andcs	r0, r0, r0
87809a90:	60000000 	andvs	r0, r0, r0
87809a94:	e0030000 	and	r0, r3, r0
87809a98:	203e0000 	eorscs	r0, lr, r0
87809a9c:	20e00300 	rsccs	r0, r0, r0, lsl #6
87809aa0:	00203e00 	eoreq	r3, r0, r0, lsl #28
87809aa4:	0020e003 	eoreq	lr, r0, r3
87809aa8:	00208003 	eoreq	r8, r0, r3
87809aac:	0020fc07 	eoreq	pc, r0, r7, lsl #24
87809ab0:	00e03f00 	rsceq	r3, r0, r0, lsl #30
87809ab4:	20fe0300 	rscscs	r0, lr, r0, lsl #6
87809ab8:	e03f0000 	eors	r0, pc, r0
87809abc:	e0010000 	and	r0, r1, r0
87809ac0:	20000000 	andcs	r0, r0, r0
87809ac4:	20000000 	andcs	r0, r0, r0
	...
87809b10:	20000002 	andcs	r0, r0, r2
87809b14:	20000002 	andcs	r0, r0, r2
87809b18:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809b1c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809b20:	20000102 	andcs	r0, r0, r2, lsl #2
87809b24:	20000102 	andcs	r0, r0, r2, lsl #2
87809b28:	20000102 	andcs	r0, r0, r2, lsl #2
87809b2c:	20000102 	andcs	r0, r0, r2, lsl #2
87809b30:	20000102 	andcs	r0, r0, r2, lsl #2
87809b34:	20000303 	andcs	r0, r0, r3, lsl #6
87809b38:	60808601 	addvs	r8, r0, r1, lsl #12
87809b3c:	c0c0fc01 	sbcgt	pc, r0, r1, lsl #24
87809b40:	807ff800 	rsbshi	pc, pc, r0, lsl #16
87809b44:	001f0000 	andseq	r0, pc, r0
	...
87809b90:	00f80700 	rscseq	r0, r8, r0, lsl #14
87809b94:	00ff3f00 	rscseq	r3, pc, r0, lsl #30
87809b98:	80077000 	andhi	r7, r7, r0
87809b9c:	c000c000 	andgt	ip, r0, r0
87809ba0:	40000001 	andmi	r0, r0, r1
87809ba4:	20000003 	andcs	r0, r0, r3
87809ba8:	20000002 	andcs	r0, r0, r2
87809bac:	20000002 	andcs	r0, r0, r2
87809bb0:	20000002 	andcs	r0, r0, r2
87809bb4:	20000002 	andcs	r0, r0, r2
87809bb8:	40000001 	andmi	r0, r0, r1
87809bbc:	c0008001 	andgt	r8, r0, r1
87809bc0:	8001c003 	andhi	ip, r1, r3
87809bc4:	00063000 	andeq	r3, r6, r0
	...
87809c10:	20000002 	andcs	r0, r0, r2
87809c14:	20000002 	andcs	r0, r0, r2
87809c18:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809c1c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809c20:	20000002 	andcs	r0, r0, r2
87809c24:	20000002 	andcs	r0, r0, r2
87809c28:	20000002 	andcs	r0, r0, r2
87809c2c:	20000002 	andcs	r0, r0, r2
87809c30:	60000003 	andvs	r0, r0, r3
87809c34:	40000001 	andmi	r0, r0, r1
87809c38:	c0008001 	andgt	r8, r0, r1
87809c3c:	8007f000 	andhi	pc, r7, r0
87809c40:	00fe7f00 	rscseq	r7, lr, r0, lsl #30
87809c44:	00f80f00 	rscseq	r0, r8, r0, lsl #30
	...
87809c90:	20000002 	andcs	r0, r0, r2
87809c94:	20000002 	andcs	r0, r0, r2
87809c98:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809c9c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809ca0:	20000102 	andcs	r0, r0, r2, lsl #2
87809ca4:	20000102 	andcs	r0, r0, r2, lsl #2
87809ca8:	20000102 	andcs	r0, r0, r2, lsl #2
87809cac:	20000102 	andcs	r0, r0, r2, lsl #2
87809cb0:	20000102 	andcs	r0, r0, r2, lsl #2
87809cb4:	20800302 	addcs	r0, r0, r2, lsl #6
87809cb8:	20e00f02 	rsccs	r0, r0, r2, lsl #30
87809cbc:	60000003 	andvs	r0, r0, r3
87809cc0:	e000c003 	and	ip, r0, r3
87809cc4:	00036000 	andeq	r6, r3, r0
	...
87809d10:	20000002 	andcs	r0, r0, r2
87809d14:	20000002 	andcs	r0, r0, r2
87809d18:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809d1c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809d20:	20000102 	andcs	r0, r0, r2, lsl #2
87809d24:	20000102 	andcs	r0, r0, r2, lsl #2
87809d28:	00000102 	andeq	r0, r0, r2, lsl #2
87809d2c:	00000102 	andeq	r0, r0, r2, lsl #2
87809d30:	00000102 	andeq	r0, r0, r2, lsl #2
87809d34:	00000102 	andeq	r0, r0, r2, lsl #2
87809d38:	00800302 	addeq	r0, r0, r2, lsl #6
87809d3c:	00e00f03 	rsceq	r0, r0, r3, lsl #30
87809d40:	00000003 	andeq	r0, r0, r3
87809d44:	0000c003 	andeq	ip, r0, r3
87809d48:	00006000 	andeq	r6, r0, r0
	...
87809d90:	00f80700 	rscseq	r0, r8, r0, lsl #14
87809d94:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
87809d98:	80077000 	andhi	r7, r7, r0
87809d9c:	c001c001 	andgt	ip, r1, r1
87809da0:	40000001 	andmi	r0, r0, r1
87809da4:	20000003 	andcs	r0, r0, r3
87809da8:	20000002 	andcs	r0, r0, r2
87809dac:	20000002 	andcs	r0, r0, r2
87809db0:	20000002 	andcs	r0, r0, r2
87809db4:	20200001 	eorcs	r0, r0, r1
87809db8:	40200001 	eormi	r0, r0, r1
87809dbc:	803fc003 	eorshi	ip, pc, r3
87809dc0:	803f3000 	eorshi	r3, pc, r0
87809dc4:	00200000 	eoreq	r0, r0, r0
87809dc8:	00200000 	eoreq	r0, r0, r0
	...
87809e0c:	20000002 	andcs	r0, r0, r2
87809e10:	20000002 	andcs	r0, r0, r2
87809e14:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809e18:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809e1c:	20800002 	addcs	r0, r0, r2
87809e20:	20800002 	addcs	r0, r0, r2
87809e24:	00800000 	addeq	r0, r0, r0
87809e28:	00800000 	addeq	r0, r0, r0
87809e2c:	00800000 	addeq	r0, r0, r0
87809e30:	20800002 	addcs	r0, r0, r2
87809e34:	20800002 	addcs	r0, r0, r2
87809e38:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809e3c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809e40:	20000002 	andcs	r0, r0, r2
87809e44:	20000002 	andcs	r0, r0, r2
	...
87809e98:	20000002 	andcs	r0, r0, r2
87809e9c:	20000002 	andcs	r0, r0, r2
87809ea0:	20000002 	andcs	r0, r0, r2
87809ea4:	20000002 	andcs	r0, r0, r2
87809ea8:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809eac:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809eb0:	20000002 	andcs	r0, r0, r2
87809eb4:	20000002 	andcs	r0, r0, r2
87809eb8:	20000002 	andcs	r0, r0, r2
87809ebc:	20000002 	andcs	r0, r0, r2
	...
87809f10:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
87809f14:	0f000000 	svceq	0x00000000
87809f18:	0f000000 	svceq	0x00000000
87809f1c:	01000000 	mrseq	r0, (UNDEF: 0)
87809f20:	01000002 	tsteq	r0, r2
87809f24:	01000002 	tsteq	r0, r2
87809f28:	03000002 	movweq	r0, #2
87809f2c:	06000002 	streq	r0, [r0], -r2
87809f30:	fcffff03 	ldc2l	15, cr15, [pc], #12	; 87809f44 <asc2_3216+0x1538>
87809f34:	f8ffff03 			; <UNDEFINED> instruction: 0xf8ffff03
87809f38:	00000002 	andeq	r0, r0, r2
87809f3c:	00000002 	andeq	r0, r0, r2
87809f40:	00000002 	andeq	r0, r0, r2
87809f44:	00000002 	andeq	r0, r0, r2
	...
87809f90:	20000002 	andcs	r0, r0, r2
87809f94:	20000002 	andcs	r0, r0, r2
87809f98:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809f9c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
87809fa0:	20c00002 	sbccs	r0, r0, r2
87809fa4:	20000102 	andcs	r0, r0, r2, lsl #2
87809fa8:	00800700 	addeq	r0, r0, r0, lsl #14
87809fac:	00e00f00 	rsceq	r0, r0, r0, lsl #30
87809fb0:	00f83000 	rscseq	r3, r8, r0
87809fb4:	203e6002 	eorscs	r6, lr, r2
87809fb8:	200f8003 	andcs	r8, pc, r3
87809fbc:	e0030003 	and	r0, r3, r3
87809fc0:	e0000002 	and	r0, r0, r2
87809fc4:	20000002 	andcs	r0, r0, r2
87809fc8:	20000000 	andcs	r0, r0, r0
	...
8780a010:	20000002 	andcs	r0, r0, r2
8780a014:	20000002 	andcs	r0, r0, r2
8780a018:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a01c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a020:	20000002 	andcs	r0, r0, r2
8780a024:	20000002 	andcs	r0, r0, r2
8780a028:	20000000 	andcs	r0, r0, r0
8780a02c:	20000000 	andcs	r0, r0, r0
8780a030:	20000000 	andcs	r0, r0, r0
8780a034:	20000000 	andcs	r0, r0, r0
8780a038:	20000000 	andcs	r0, r0, r0
8780a03c:	60000000 	andvs	r0, r0, r0
8780a040:	e0000000 	and	r0, r0, r0
8780a044:	00030000 	andeq	r0, r3, r0
	...
8780a08c:	20000002 	andcs	r0, r0, r2
8780a090:	20000002 	andcs	r0, r0, r2
8780a094:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a098:	2000e003 	andcs	lr, r0, r3
8780a09c:	2000ff03 	andcs	pc, r0, r3, lsl #30
8780a0a0:	00f01f00 	rscseq	r1, r0, r0, lsl #30
8780a0a4:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780a0a8:	e00f0000 	and	r0, pc, r0
8780a0ac:	001e0000 	andseq	r0, lr, r0
8780a0b0:	00e00300 	rsceq	r0, r0, r0, lsl #6
8780a0b4:	20003e00 	andcs	r3, r0, r0, lsl #28
8780a0b8:	2000e003 	andcs	lr, r0, r3
8780a0bc:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a0c0:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a0c4:	20000002 	andcs	r0, r0, r2
8780a0c8:	20000002 	andcs	r0, r0, r2
	...
8780a10c:	20000002 	andcs	r0, r0, r2
8780a110:	20000002 	andcs	r0, r0, r2
8780a114:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a118:	20008003 	andcs	r8, r0, r3
8780a11c:	2000f003 	andcs	pc, r0, r3
8780a120:	0000fc00 	andeq	pc, r0, r0, lsl #24
8780a124:	00001f00 	andeq	r1, r0, r0, lsl #30
8780a128:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780a12c:	00f00100 	rscseq	r0, r0, r0, lsl #2
8780a130:	007c0000 	rsbseq	r0, ip, r0
8780a134:	801f0002 	andshi	r0, pc, r2
8780a138:	e0070002 	and	r0, r7, r2
8780a13c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a140:	00000002 	andeq	r0, r0, r2
8780a144:	00000002 	andeq	r0, r0, r2
	...
8780a190:	00f80f00 	rscseq	r0, r8, r0, lsl #30
8780a194:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
8780a198:	8007f000 	andhi	pc, r7, r0
8780a19c:	c0008001 	andgt	r8, r0, r1
8780a1a0:	40000001 	andmi	r0, r0, r1
8780a1a4:	20000002 	andcs	r0, r0, r2
8780a1a8:	20000002 	andcs	r0, r0, r2
8780a1ac:	20000002 	andcs	r0, r0, r2
8780a1b0:	20000002 	andcs	r0, r0, r2
8780a1b4:	40000001 	andmi	r0, r0, r1
8780a1b8:	c0008001 	andgt	r8, r0, r1
8780a1bc:	8003f000 	andhi	pc, r3, r0
8780a1c0:	00fe3f00 	rscseq	r3, lr, r0, lsl #30
8780a1c4:	00f80f00 	rscseq	r0, r8, r0, lsl #30
	...
8780a210:	20000002 	andcs	r0, r0, r2
8780a214:	20000002 	andcs	r0, r0, r2
8780a218:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a21c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a220:	20800002 	addcs	r0, r0, r2
8780a224:	20800002 	addcs	r0, r0, r2
8780a228:	00800002 	addeq	r0, r0, r2
8780a22c:	00800002 	addeq	r0, r0, r2
8780a230:	00800002 	addeq	r0, r0, r2
8780a234:	00800002 	addeq	r0, r0, r2
8780a238:	00800103 	addeq	r0, r0, r3, lsl #2
8780a23c:	00008301 	andeq	r8, r0, r1, lsl #6
8780a240:	0000fe00 	andeq	pc, r0, r0, lsl #28
8780a244:	00007c00 	andeq	r7, r0, r0, lsl #24
	...
8780a290:	00f80f00 	rscseq	r0, r8, r0, lsl #30
8780a294:	00ff7f00 	rscseq	r7, pc, r0, lsl #30
8780a298:	8003f000 	andhi	pc, r3, r0
8780a29c:	c0018001 	andgt	r8, r1, r1
8780a2a0:	40060001 	andmi	r0, r6, r1
8780a2a4:	20040002 	andcs	r0, r4, r2
8780a2a8:	20040002 	andcs	r0, r4, r2
8780a2ac:	20060002 	andcs	r0, r6, r2
8780a2b0:	e0030002 	and	r0, r3, r2
8780a2b4:	f8000001 			; <UNDEFINED> instruction: 0xf8000001
8780a2b8:	5c008001 	stcpl	0, cr8, [r0], {1}
8780a2bc:	8c03e000 	stchi	0, cr14, [r3], {-0}
8780a2c0:	0cff3f00 	ldcleq	15, cr3, [pc]	; 8780a2c8 <asc2_3216+0x18bc>
8780a2c4:	18fc0f00 	ldmne	ip!, {r8, r9, sl, fp}^
	...
8780a310:	20000002 	andcs	r0, r0, r2
8780a314:	20000002 	andcs	r0, r0, r2
8780a318:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a31c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a320:	20000102 	andcs	r0, r0, r2, lsl #2
8780a324:	20000102 	andcs	r0, r0, r2, lsl #2
8780a328:	00800102 	addeq	r0, r0, r2, lsl #2
8780a32c:	00e00102 	rsceq	r0, r0, r2, lsl #2
8780a330:	00fc0102 	rscseq	r0, ip, r2, lsl #2
8780a334:	803f0303 	eorshi	r0, pc, r3, lsl #6
8780a338:	e0078601 	and	r8, r7, r1, lsl #12
8780a33c:	e000fc01 	and	pc, r0, r1, lsl #24
8780a340:	2000f800 	andcs	pc, r0, r0, lsl #16
8780a344:	20000000 	andcs	r0, r0, r0
	...
8780a394:	00067800 	andeq	r7, r6, r0, lsl #16
8780a398:	e001fe00 	and	pc, r1, r0, lsl #28
8780a39c:	c0008601 	andgt	r8, r0, r1, lsl #12
8780a3a0:	40000303 	andmi	r0, r0, r3, lsl #6
8780a3a4:	20000302 	andcs	r0, r0, r2, lsl #6
8780a3a8:	20800102 	addcs	r0, r0, r2, lsl #2
8780a3ac:	20800102 	addcs	r0, r0, r2, lsl #2
8780a3b0:	20c00102 	sbccs	r0, r0, r2, lsl #2
8780a3b4:	20c00002 	sbccs	r0, r0, r2
8780a3b8:	60e00001 	rscvs	r0, r0, r1
8780a3bc:	c0708001 	rsbsgt	r8, r0, r1
8780a3c0:	803fe003 	eorshi	lr, pc, r3
8780a3c4:	001f0000 	andseq	r0, pc, r0
	...
8780a410:	00006000 	andeq	r6, r0, r0
8780a414:	00008003 	andeq	r8, r0, r3
8780a418:	00000003 	andeq	r0, r0, r3
8780a41c:	00000002 	andeq	r0, r0, r2
8780a420:	20000002 	andcs	r0, r0, r2
8780a424:	20000002 	andcs	r0, r0, r2
8780a428:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a42c:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780a430:	20000002 	andcs	r0, r0, r2
8780a434:	20000002 	andcs	r0, r0, r2
8780a438:	00000002 	andeq	r0, r0, r2
8780a43c:	00000002 	andeq	r0, r0, r2
8780a440:	00008003 	andeq	r8, r0, r3
8780a444:	0000e000 	andeq	lr, r0, r0
	...
8780a48c:	00000002 	andeq	r0, r0, r2
8780a490:	00000002 	andeq	r0, r0, r2
8780a494:	00ffff03 	rscseq	pc, pc, r3, lsl #30
8780a498:	c0ffff03 	rscsgt	pc, pc, r3, lsl #30
8780a49c:	40000002 	andmi	r0, r0, r2
8780a4a0:	60000002 	andvs	r0, r0, r2
8780a4a4:	20000000 	andcs	r0, r0, r0
8780a4a8:	20000000 	andcs	r0, r0, r0
8780a4ac:	20000000 	andcs	r0, r0, r0
8780a4b0:	20000000 	andcs	r0, r0, r0
8780a4b4:	40000002 	andmi	r0, r0, r2
8780a4b8:	80000002 	andhi	r0, r0, r2
8780a4bc:	00ffff03 	rscseq	pc, pc, r3, lsl #30
8780a4c0:	00000002 	andeq	r0, r0, r2
8780a4c4:	00000002 	andeq	r0, r0, r2
	...
8780a510:	00000002 	andeq	r0, r0, r2
8780a514:	00000002 	andeq	r0, r0, r2
8780a518:	0000c003 	andeq	ip, r0, r3
8780a51c:	0000fc03 	andeq	pc, r0, r3, lsl #24
8780a520:	00c03f02 	sbceq	r3, r0, r2, lsl #30
8780a524:	00f80300 	rscseq	r0, r8, r0, lsl #6
8780a528:	807f0000 	rsbshi	r0, pc, r0
8780a52c:	e0070000 	and	r0, r7, r0
8780a530:	80070000 	andhi	r0, r7, r0
8780a534:	00780000 	rsbseq	r0, r8, r0
8780a538:	00c00302 	sbceq	r0, r0, r2, lsl #6
8780a53c:	00003c02 	andeq	r3, r0, r2, lsl #24
8780a540:	0000c003 	andeq	ip, r0, r3
8780a544:	00000002 	andeq	r0, r0, r2
8780a548:	00000002 	andeq	r0, r0, r2
	...
8780a58c:	00000002 	andeq	r0, r0, r2
8780a590:	0000c003 	andeq	ip, r0, r3
8780a594:	0080ff03 	addeq	pc, r0, r3, lsl #30
8780a598:	00fe3f02 	rscseq	r3, lr, r2, lsl #30
8780a59c:	e07f0002 	rsbs	r0, pc, r2
8780a5a0:	000f0000 	andeq	r0, pc, r0
8780a5a4:	00f00002 	rscseq	r0, r0, r2
8780a5a8:	0000ef03 	andeq	lr, r0, r3, lsl #30
8780a5ac:	0080ff03 	addeq	pc, r0, r3, lsl #30
8780a5b0:	00fe0f02 	rscseq	r0, lr, r2, lsl #30
8780a5b4:	e03f0000 	eors	r0, pc, r0
8780a5b8:	001f0000 	andseq	r0, pc, r0
8780a5bc:	00e00702 	rsceq	r0, r0, r2, lsl #14
8780a5c0:	0000f803 	andeq	pc, r0, r3, lsl #16
8780a5c4:	00000003 	andeq	r0, r0, r3
8780a5c8:	00000002 	andeq	r0, r0, r2
	...
8780a610:	20000002 	andcs	r0, r0, r2
8780a614:	20000002 	andcs	r0, r0, r2
8780a618:	e0008003 	and	r8, r0, r3
8780a61c:	2003f003 	andcs	pc, r3, r3
8780a620:	200cfc02 	andcs	pc, ip, r2, lsl #24
8780a624:	00301f02 	eorseq	r1, r0, r2, lsl #30
8780a628:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780a62c:	00f00700 	rscseq	r0, r0, r0, lsl #14
8780a630:	007c1802 	rsbseq	r1, ip, r2, lsl #16
8780a634:	201f6002 	andscs	r6, pc, r2
8780a638:	e0038003 	and	r8, r3, r3
8780a63c:	e0000002 	and	r0, r0, r2
8780a640:	20000002 	andcs	r0, r0, r2
8780a644:	20000000 	andcs	r0, r0, r0
	...
8780a690:	00000002 	andeq	r0, r0, r2
8780a694:	00000003 	andeq	r0, r0, r3
8780a698:	0000c003 	andeq	ip, r0, r3
8780a69c:	0000f803 	andeq	pc, r0, r3, lsl #16
8780a6a0:	20003e02 	andcs	r3, r0, r2, lsl #28
8780a6a4:	20c00f02 	sbccs	r0, r0, r2, lsl #30
8780a6a8:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780a6ac:	e07f0000 	rsbs	r0, pc, r0
8780a6b0:	20800300 	addcs	r0, r0, r0, lsl #6
8780a6b4:	20001c02 	andcs	r1, r0, r2, lsl #24
8780a6b8:	00007002 	andeq	r7, r0, r2
8780a6bc:	00008003 	andeq	r8, r0, r3
8780a6c0:	00000002 	andeq	r0, r0, r2
8780a6c4:	00000002 	andeq	r0, r0, r2
	...
8780a710:	20000000 	andcs	r0, r0, r0
8780a714:	e0006000 	and	r6, r0, r0
8780a718:	e0038003 	and	r8, r3, r3
8780a71c:	a00f0003 	andge	r0, pc, r3
8780a720:	203e0002 	eorscs	r0, lr, r2
8780a724:	20f80002 	rscscs	r0, r8, r2
8780a728:	20e00302 	rsccs	r0, r0, r2, lsl #6
8780a72c:	20800f02 	addcs	r0, r0, r2, lsl #30
8780a730:	20003e02 	andcs	r3, r0, r2, lsl #28
8780a734:	20007802 	andcs	r7, r0, r2, lsl #16
8780a738:	6000e003 	andvs	lr, r0, r3
8780a73c:	e0008003 	and	r8, r0, r3
8780a740:	00030002 	andeq	r0, r3, r2
	...
8780a7a4:	fcffff1f 	ldc2l	15, cr15, [pc], #124	; 8780a828 <asc2_3216+0x1e1c>
8780a7a8:	04000010 	streq	r0, [r0], #-16
8780a7ac:	04000010 	streq	r0, [r0], #-16
8780a7b0:	04000010 	streq	r0, [r0], #-16
8780a7b4:	04000010 	streq	r0, [r0], #-16
8780a7b8:	04000010 	streq	r0, [r0], #-16
8780a7bc:	04000010 	streq	r0, [r0], #-16
8780a7c0:	04000010 	streq	r0, [r0], #-16
	...
8780a818:	00000007 	andeq	r0, r0, r7
8780a81c:	0000c003 	andeq	ip, r0, r3
8780a820:	00007800 	andeq	r7, r0, r0, lsl #16
8780a824:	00001e00 	andeq	r1, r0, r0, lsl #28
8780a828:	00c00300 	sbceq	r0, r0, r0, lsl #6
8780a82c:	00f00000 	rscseq	r0, r0, r0
8780a830:	001e0000 	andseq	r0, lr, r0
8780a834:	80070000 	andhi	r0, r7, r0
8780a838:	f0000000 			; <UNDEFINED> instruction: 0xf0000000
8780a83c:	3c000000 	stccc	0, cr0, [r0], {-0}
8780a840:	06000000 	streq	r0, [r0], -r0
	...
8780a894:	04000010 	streq	r0, [r0], #-16
8780a898:	04000010 	streq	r0, [r0], #-16
8780a89c:	04000010 	streq	r0, [r0], #-16
8780a8a0:	04000010 	streq	r0, [r0], #-16
8780a8a4:	04000010 	streq	r0, [r0], #-16
8780a8a8:	04000010 	streq	r0, [r0], #-16
8780a8ac:	04000010 	streq	r0, [r0], #-16
8780a8b0:	fcffff1f 	ldc2l	15, cr15, [pc], #124	; 8780a934 <asc2_3216+0x1f28>
	...
8780a91c:	00000002 	andeq	r0, r0, r2
8780a920:	00000004 	andeq	r0, r0, r4
8780a924:	00000008 	andeq	r0, r0, r8
8780a928:	00000018 	andeq	r0, r0, r8, lsl r0
8780a92c:	00000010 	andeq	r0, r0, r0, lsl r0
8780a930:	00000018 	andeq	r0, r0, r8, lsl r0
8780a934:	00000018 	andeq	r0, r0, r8, lsl r0
8780a938:	00000004 	andeq	r0, r0, r4
8780a93c:	00000002 	andeq	r0, r0, r2
	...
8780a98c:	01000000 	mrseq	r0, (UNDEF: 0)
8780a990:	01000000 	mrseq	r0, (UNDEF: 0)
8780a994:	01000000 	mrseq	r0, (UNDEF: 0)
8780a998:	01000000 	mrseq	r0, (UNDEF: 0)
8780a99c:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9a0:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9a4:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9a8:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9ac:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9b0:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9b4:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9b8:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9bc:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9c0:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9c4:	01000000 	mrseq	r0, (UNDEF: 0)
8780a9c8:	01000000 	mrseq	r0, (UNDEF: 0)
	...
8780aa18:	00000010 	andeq	r0, r0, r0, lsl r0
8780aa1c:	00000010 	andeq	r0, r0, r0, lsl r0
8780aa20:	00000010 	andeq	r0, r0, r0, lsl r0
8780aa24:	00000018 	andeq	r0, r0, r8, lsl r0
8780aa28:	00000008 	andeq	r0, r0, r8
8780aa2c:	00000004 	andeq	r0, r0, r4
	...
8780aa90:	80030000 	andhi	r0, r3, r0
8780aa94:	c08f0100 	addgt	r0, pc, r0, lsl #2
8780aa98:	608c0300 	addvs	r0, ip, r0, lsl #6
8780aa9c:	20180600 	andscs	r0, r8, r0, lsl #12
8780aaa0:	20100400 	andscs	r0, r0, r0, lsl #8
8780aaa4:	20100400 	andscs	r0, r0, r0, lsl #8
8780aaa8:	20200400 	eorcs	r0, r0, r0, lsl #8
8780aaac:	40200400 	eormi	r0, r0, r0, lsl #8
8780aab0:	40200600 	eormi	r0, r0, r0, lsl #12
8780aab4:	c0ff0300 	rscsgt	r0, pc, r0, lsl #6
8780aab8:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780aabc:	20000000 	andcs	r0, r0, r0
8780aac0:	20000000 	andcs	r0, r0, r0
8780aac4:	c0000000 	andgt	r0, r0, r0
	...
8780ab10:	00000002 	andeq	r0, r0, r2
8780ab14:	00000002 	andeq	r0, r0, r2
8780ab18:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ab1c:	c0ffff07 	rscsgt	pc, pc, r7, lsl #30
8780ab20:	c0800100 	addgt	r0, r0, r0, lsl #2
8780ab24:	60000200 	andvs	r0, r0, r0, lsl #4
8780ab28:	20000200 	andcs	r0, r0, r0, lsl #4
8780ab2c:	20000400 	andcs	r0, r0, r0, lsl #8
8780ab30:	20000400 	andcs	r0, r0, r0, lsl #8
8780ab34:	20000400 	andcs	r0, r0, r0, lsl #8
8780ab38:	40000600 	andmi	r0, r0, r0, lsl #12
8780ab3c:	c0000300 	andgt	r0, r0, r0, lsl #6
8780ab40:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780ab44:	00fe0000 	rscseq	r0, lr, r0
	...
8780ab94:	007e0000 	rsbseq	r0, lr, r0
8780ab98:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780ab9c:	c0810300 	addgt	r0, r1, r0, lsl #6
8780aba0:	40000200 	andmi	r0, r0, r0, lsl #4
8780aba4:	20000600 	andcs	r0, r0, r0, lsl #12
8780aba8:	20000400 	andcs	r0, r0, r0, lsl #8
8780abac:	20000400 	andcs	r0, r0, r0, lsl #8
8780abb0:	20000400 	andcs	r0, r0, r0, lsl #8
8780abb4:	20000600 	andcs	r0, r0, r0, lsl #12
8780abb8:	40c00300 	sbcmi	r0, r0, r0, lsl #6
8780abbc:	80c00100 	sbchi	r0, r0, r0, lsl #2
8780abc0:	00030000 	andeq	r0, r3, r0
	...
8780ac14:	007e0000 	rsbseq	r0, lr, r0
8780ac18:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780ac1c:	c0800300 	addgt	r0, r0, r0, lsl #6
8780ac20:	60000600 	andvs	r0, r0, r0, lsl #12
8780ac24:	20000400 	andcs	r0, r0, r0, lsl #8
8780ac28:	20000400 	andcs	r0, r0, r0, lsl #8
8780ac2c:	20000400 	andcs	r0, r0, r0, lsl #8
8780ac30:	40000402 	andmi	r0, r0, r2, lsl #8
8780ac34:	80000202 	andhi	r0, r0, r2, lsl #4
8780ac38:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ac3c:	c0ffff07 	rscsgt	pc, pc, r7, lsl #30
8780ac40:	40000000 	andmi	r0, r0, r0
8780ac44:	40000000 	andmi	r0, r0, r0
	...
8780ac94:	007e0000 	rsbseq	r0, lr, r0
8780ac98:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780ac9c:	c0110300 	andsgt	r0, r1, r0, lsl #6
8780aca0:	40100200 	andsmi	r0, r0, r0, lsl #4
8780aca4:	60100400 	andsvs	r0, r0, r0, lsl #8
8780aca8:	20100400 	andscs	r0, r0, r0, lsl #8
8780acac:	20100400 	andscs	r0, r0, r0, lsl #8
8780acb0:	20100400 	andscs	r0, r0, r0, lsl #8
8780acb4:	20100600 	andscs	r0, r0, r0, lsl #12
8780acb8:	40100300 	andsmi	r0, r0, r0, lsl #6
8780acbc:	c0f00100 	rscsgt	r0, r0, r0, lsl #2
8780acc0:	00710000 	rsbseq	r0, r1, r0
	...
8780ad14:	00000400 	andeq	r0, r0, r0, lsl #8
8780ad18:	20000400 	andcs	r0, r0, r0, lsl #8
8780ad1c:	20000400 	andcs	r0, r0, r0, lsl #8
8780ad20:	20000400 	andcs	r0, r0, r0, lsl #8
8780ad24:	e0ff7f00 	rscs	r7, pc, r0, lsl #30
8780ad28:	e0ffff01 	rscs	pc, pc, r1, lsl #30
8780ad2c:	20000401 	andcs	r0, r0, r1, lsl #8
8780ad30:	20000403 	andcs	r0, r0, r3, lsl #8
8780ad34:	20000402 	andcs	r0, r0, r2, lsl #8
8780ad38:	20000402 	andcs	r0, r0, r2, lsl #8
8780ad3c:	00000402 	andeq	r0, r0, r2, lsl #8
8780ad40:	00000002 	andeq	r0, r0, r2
8780ad44:	0000c001 	andeq	ip, r0, r1
8780ad48:	0000c001 	andeq	ip, r0, r1
	...
8780ad94:	1c000000 	stcne	0, cr0, [r0], {-0}
8780ad98:	3ee30000 	cdpcc	0, 14, cr0, cr3, cr0, {0}
8780ad9c:	c2ff0300 	rscsgt	r0, pc, #0, 6
8780ada0:	c30c0200 	movwgt	r0, #49664	; 0xc200
8780ada4:	c1040400 	tstgt	r4, r0, lsl #8
8780ada8:	c1040400 	tstgt	r4, r0, lsl #8
8780adac:	c1040400 	tstgt	r4, r0, lsl #8
8780adb0:	c1040400 	tstgt	r4, r0, lsl #8
8780adb4:	c10c0600 	tstgt	ip, r0, lsl #12
8780adb8:	c3f80300 	mvnsgt	r0, #0, 6
8780adbc:	62f00500 	rscsvs	r0, r0, #0, 10
8780adc0:	7e000600 	cfmadd32vc	mvax0, mvfx0, mvfx0, mvfx0
8780adc4:	3c000600 	stccc	6, cr0, [r0], {-0}
	...
8780ae10:	20000002 	andcs	r0, r0, r2
8780ae14:	20000002 	andcs	r0, r0, r2
8780ae18:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780ae1c:	e0ffff07 	rscs	pc, pc, r7, lsl #30
8780ae20:	20000100 	andcs	r0, r0, r0, lsl #2
8780ae24:	20000200 	andcs	r0, r0, r0, lsl #4
8780ae28:	00000600 	andeq	r0, r0, r0, lsl #12
8780ae2c:	00000400 	andeq	r0, r0, r0, lsl #8
8780ae30:	00000400 	andeq	r0, r0, r0, lsl #8
8780ae34:	20000400 	andcs	r0, r0, r0, lsl #8
8780ae38:	20000600 	andcs	r0, r0, r0, lsl #12
8780ae3c:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780ae40:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780ae44:	20000000 	andcs	r0, r0, r0
8780ae48:	20000000 	andcs	r0, r0, r0
	...
8780ae98:	20000400 	andcs	r0, r0, r0, lsl #8
8780ae9c:	20000400 	andcs	r0, r0, r0, lsl #8
8780aea0:	20000400 	andcs	r0, r0, r0, lsl #8
8780aea4:	20000400 	andcs	r0, r0, r0, lsl #8
8780aea8:	e0ff8703 	rscs	r8, pc, r3, lsl #14
8780aeac:	e0ff8f03 	rscs	r8, pc, r3, lsl #30
8780aeb0:	20008003 	andcs	r8, r0, r3
8780aeb4:	20000000 	andcs	r0, r0, r0
8780aeb8:	20000000 	andcs	r0, r0, r0
8780aebc:	20000000 	andcs	r0, r0, r0
	...
8780af18:	06000000 	streq	r0, [r0], -r0
8780af1c:	07000000 	streq	r0, [r0, -r0]
8780af20:	01000000 	mrseq	r0, (UNDEF: 0)
8780af24:	01000000 	mrseq	r0, (UNDEF: 0)
8780af28:	01000400 	tsteq	r0, r0, lsl #8
8780af2c:	01000400 	tsteq	r0, r0, lsl #8
8780af30:	03000400 	movweq	r0, #1024	; 0x400
8780af34:	06000400 	streq	r0, [r0], -r0, lsl #8
8780af38:	fcff8703 	ldc2l	7, cr8, [pc], #12	; 8780af4c <asc2_3216+0x2540>
8780af3c:	f8ff8f03 			; <UNDEFINED> instruction: 0xf8ff8f03
8780af40:	00008003 	andeq	r8, r0, r3
	...
8780af90:	20000002 	andcs	r0, r0, r2
8780af94:	20000002 	andcs	r0, r0, r2
8780af98:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780af9c:	e0ffff07 	rscs	pc, pc, r7, lsl #30
8780afa0:	20080000 	andcs	r0, r8, r0
8780afa4:	20100000 	andscs	r0, r0, r0
8780afa8:	00300000 	eorseq	r0, r0, r0
8780afac:	00fc0000 	rscseq	r0, ip, r0
8780afb0:	008e0500 	addeq	r0, lr, r0, lsl #10
8780afb4:	a0070700 	andge	r0, r7, r0, lsl #14
8780afb8:	e0010600 	and	r0, r1, r0, lsl #12
8780afbc:	e0000400 	and	r0, r0, r0, lsl #8
8780afc0:	20000400 	andcs	r0, r0, r0, lsl #8
8780afc4:	20000000 	andcs	r0, r0, r0
	...
8780b018:	20000002 	andcs	r0, r0, r2
8780b01c:	20000002 	andcs	r0, r0, r2
8780b020:	20000002 	andcs	r0, r0, r2
8780b024:	20000002 	andcs	r0, r0, r2
8780b028:	e0ffff03 	rscs	pc, pc, r3, lsl #30
8780b02c:	e0ffff07 	rscs	pc, pc, r7, lsl #30
8780b030:	20000000 	andcs	r0, r0, r0
8780b034:	20000000 	andcs	r0, r0, r0
8780b038:	20000000 	andcs	r0, r0, r0
8780b03c:	20000000 	andcs	r0, r0, r0
	...
8780b090:	20000400 	andcs	r0, r0, r0, lsl #8
8780b094:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780b098:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780b09c:	20000200 	andcs	r0, r0, r0, lsl #4
8780b0a0:	00000400 	andeq	r0, r0, r0, lsl #8
8780b0a4:	20000400 	andcs	r0, r0, r0, lsl #8
8780b0a8:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780b0ac:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780b0b0:	20000200 	andcs	r0, r0, r0, lsl #4
8780b0b4:	00000400 	andeq	r0, r0, r0, lsl #8
8780b0b8:	20000400 	andcs	r0, r0, r0, lsl #8
8780b0bc:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780b0c0:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780b0c4:	20000000 	andcs	r0, r0, r0
	...
8780b110:	20000400 	andcs	r0, r0, r0, lsl #8
8780b114:	20000400 	andcs	r0, r0, r0, lsl #8
8780b118:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780b11c:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780b120:	20000100 	andcs	r0, r0, r0, lsl #2
8780b124:	20000200 	andcs	r0, r0, r0, lsl #4
8780b128:	00000200 	andeq	r0, r0, r0, lsl #4
8780b12c:	00000400 	andeq	r0, r0, r0, lsl #8
8780b130:	00000400 	andeq	r0, r0, r0, lsl #8
8780b134:	20000400 	andcs	r0, r0, r0, lsl #8
8780b138:	20000600 	andcs	r0, r0, r0, lsl #12
8780b13c:	e0ff0300 	rscs	r0, pc, r0, lsl #6
8780b140:	e0ff0100 	rscs	r0, pc, r0, lsl #2
8780b144:	20000000 	andcs	r0, r0, r0
8780b148:	20000000 	andcs	r0, r0, r0
	...
8780b194:	007e0000 	rsbseq	r0, lr, r0
8780b198:	80ff0000 	rscshi	r0, pc, r0
8780b19c:	c0810300 	addgt	r0, r1, r0, lsl #6
8780b1a0:	40000200 	andmi	r0, r0, r0, lsl #4
8780b1a4:	20000600 	andcs	r0, r0, r0, lsl #12
8780b1a8:	20000400 	andcs	r0, r0, r0, lsl #8
8780b1ac:	20000400 	andcs	r0, r0, r0, lsl #8
8780b1b0:	20000400 	andcs	r0, r0, r0, lsl #8
8780b1b4:	20000600 	andcs	r0, r0, r0, lsl #12
8780b1b8:	40000200 	andmi	r0, r0, r0, lsl #4
8780b1bc:	c0810300 	addgt	r0, r1, r0, lsl #6
8780b1c0:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780b1c4:	007e0000 	rsbseq	r0, lr, r0
	...
8780b210:	01000400 	tsteq	r0, r0, lsl #8
8780b214:	01000400 	tsteq	r0, r0, lsl #8
8780b218:	ffff0700 			; <UNDEFINED> instruction: 0xffff0700
8780b21c:	ffff0f00 			; <UNDEFINED> instruction: 0xffff0f00
8780b220:	c1000100 	mrsgt	r0, (UNDEF: 16)
8780b224:	41000200 	mrsmi	r0, R8_usr
8780b228:	20000400 	andcs	r0, r0, r0, lsl #8
8780b22c:	20000400 	andcs	r0, r0, r0, lsl #8
8780b230:	20000400 	andcs	r0, r0, r0, lsl #8
8780b234:	20000400 	andcs	r0, r0, r0, lsl #8
8780b238:	40000600 	andmi	r0, r0, r0, lsl #12
8780b23c:	c0010300 	andgt	r0, r1, r0, lsl #6
8780b240:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780b244:	007e0000 	rsbseq	r0, lr, r0
	...
8780b294:	007e0000 	rsbseq	r0, lr, r0
8780b298:	80ff0100 	rscshi	r0, pc, r0, lsl #2
8780b29c:	c0800300 	addgt	r0, r0, r0, lsl #6
8780b2a0:	60000200 	andvs	r0, r0, r0, lsl #4
8780b2a4:	20000400 	andcs	r0, r0, r0, lsl #8
8780b2a8:	20000400 	andcs	r0, r0, r0, lsl #8
8780b2ac:	20000400 	andcs	r0, r0, r0, lsl #8
8780b2b0:	20000400 	andcs	r0, r0, r0, lsl #8
8780b2b4:	41000200 	mrsmi	r0, R8_usr
8780b2b8:	c1000300 	mrsgt	r0, LR_irq
8780b2bc:	ffff0300 			; <UNDEFINED> instruction: 0xffff0300
8780b2c0:	ffff0700 			; <UNDEFINED> instruction: 0xffff0700
8780b2c4:	01000000 	mrseq	r0, (UNDEF: 0)
8780b2c8:	01000000 	mrseq	r0, (UNDEF: 0)
	...
8780b310:	20000400 	andcs	r0, r0, r0, lsl #8
8780b314:	20000400 	andcs	r0, r0, r0, lsl #8
8780b318:	20000400 	andcs	r0, r0, r0, lsl #8
8780b31c:	20000400 	andcs	r0, r0, r0, lsl #8
8780b320:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780b324:	e0ff0f00 	rscs	r0, pc, r0, lsl #30
8780b328:	20c00000 	sbccs	r0, r0, r0
8780b32c:	20000100 	andcs	r0, r0, r0, lsl #2
8780b330:	20000200 	andcs	r0, r0, r0, lsl #4
8780b334:	20000600 	andcs	r0, r0, r0, lsl #12
8780b338:	00000400 	andeq	r0, r0, r0, lsl #8
8780b33c:	00000400 	andeq	r0, r0, r0, lsl #8
8780b340:	00000700 	andeq	r0, r0, r0, lsl #14
8780b344:	00000300 	andeq	r0, r0, r0, lsl #6
	...
8780b394:	e0030000 	and	r0, r3, r0
8780b398:	e0c00100 	sbc	r0, r0, r0, lsl #2
8780b39c:	40e00300 	rscmi	r0, r0, r0, lsl #6
8780b3a0:	20300600 	eorscs	r0, r0, r0, lsl #12
8780b3a4:	20300400 	eorscs	r0, r0, r0, lsl #8
8780b3a8:	20180400 	andscs	r0, r8, r0, lsl #8
8780b3ac:	20180400 	andscs	r0, r8, r0, lsl #8
8780b3b0:	20180400 	andscs	r0, r8, r0, lsl #8
8780b3b4:	200c0400 	andcs	r0, ip, r0, lsl #8
8780b3b8:	600c0200 	andvs	r0, ip, r0, lsl #4
8780b3bc:	c0070300 	andgt	r0, r7, r0, lsl #6
8780b3c0:	80830700 	addhi	r0, r3, r0, lsl #14
	...
8780b414:	00000400 	andeq	r0, r0, r0, lsl #8
8780b418:	00000400 	andeq	r0, r0, r0, lsl #8
8780b41c:	00000400 	andeq	r0, r0, r0, lsl #8
8780b420:	00000c00 	andeq	r0, r0, r0, lsl #24
8780b424:	80ff1f00 	rscshi	r1, pc, r0, lsl #30
8780b428:	c0ffff00 	rscsgt	pc, pc, r0, lsl #30
8780b42c:	60000400 	andvs	r0, r0, r0, lsl #8
8780b430:	20000400 	andcs	r0, r0, r0, lsl #8
8780b434:	20000400 	andcs	r0, r0, r0, lsl #8
8780b438:	20000400 	andcs	r0, r0, r0, lsl #8
8780b43c:	40000400 	andmi	r0, r0, r0, lsl #8
8780b440:	80010000 	andhi	r0, r1, r0
	...
8780b490:	00000400 	andeq	r0, r0, r0, lsl #8
8780b494:	00000400 	andeq	r0, r0, r0, lsl #8
8780b498:	80ff0700 	rscshi	r0, pc, r0, lsl #14
8780b49c:	c0ff0f00 	rscsgt	r0, pc, r0, lsl #30
8780b4a0:	60000000 	andvs	r0, r0, r0
8780b4a4:	20000000 	andcs	r0, r0, r0
8780b4a8:	20000000 	andcs	r0, r0, r0
8780b4ac:	20000000 	andcs	r0, r0, r0
8780b4b0:	20000000 	andcs	r0, r0, r0
8780b4b4:	40000400 	andmi	r0, r0, r0, lsl #8
8780b4b8:	80000400 	andhi	r0, r0, r0, lsl #8
8780b4bc:	e0ff0700 	rscs	r0, pc, r0, lsl #14
8780b4c0:	c0ff0f00 	rscsgt	r0, pc, r0, lsl #30
8780b4c4:	40000000 	andmi	r0, r0, r0
8780b4c8:	40000000 	andmi	r0, r0, r0
	...
8780b510:	00000400 	andeq	r0, r0, r0, lsl #8
8780b514:	00000400 	andeq	r0, r0, r0, lsl #8
8780b518:	00800700 	addeq	r0, r0, r0, lsl #14
8780b51c:	00f00700 	rscseq	r0, r0, r0, lsl #14
8780b520:	00fe0400 	rscseq	r0, lr, r0, lsl #8
8780b524:	c01f0400 	andsgt	r0, pc, r0, lsl #8
8780b528:	e0030000 	and	r0, r3, r0
8780b52c:	80030000 	andhi	r0, r3, r0
8780b530:	001c0000 	andseq	r0, ip, r0
8780b534:	00600400 	rsbeq	r0, r0, r0, lsl #8
8780b538:	00800700 	addeq	r0, r0, r0, lsl #14
8780b53c:	00000600 	andeq	r0, r0, r0, lsl #12
8780b540:	00000400 	andeq	r0, r0, r0, lsl #8
	...
8780b58c:	00000400 	andeq	r0, r0, r0, lsl #8
8780b590:	00000600 	andeq	r0, r0, r0, lsl #12
8780b594:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780b598:	00fc0700 	rscseq	r0, ip, r0, lsl #14
8780b59c:	803f0400 	eorshi	r0, pc, r0, lsl #8
8780b5a0:	e0030000 	and	r0, r3, r0
8780b5a4:	800f0400 	andhi	r0, pc, r0, lsl #8
8780b5a8:	00f00600 	rscseq	r0, r0, r0, lsl #12
8780b5ac:	00f00700 	rscseq	r0, r0, r0, lsl #14
8780b5b0:	80ff0700 	rscshi	r0, pc, r0, lsl #14
8780b5b4:	e00f0400 	and	r0, pc, r0, lsl #8
8780b5b8:	80030000 	andhi	r0, r3, r0
8780b5bc:	003c0400 	eorseq	r0, ip, r0, lsl #8
8780b5c0:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780b5c4:	00000600 	andeq	r0, r0, r0, lsl #12
8780b5c8:	00000400 	andeq	r0, r0, r0, lsl #8
	...
8780b610:	20000000 	andcs	r0, r0, r0
8780b614:	20000400 	andcs	r0, r0, r0, lsl #8
8780b618:	60000400 	andvs	r0, r0, r0, lsl #8
8780b61c:	e0000700 	and	r0, r0, r0, lsl #14
8780b620:	20830700 	addcs	r0, r3, r0, lsl #14
8780b624:	00e60700 	rsceq	r0, r6, r0, lsl #14
8780b628:	00f80400 	rscseq	r0, r8, r0, lsl #8
8780b62c:	003c0000 	eorseq	r0, ip, r0
8780b630:	205e0400 	subscs	r0, lr, r0, lsl #8
8780b634:	a0870500 	addge	r0, r7, r0, lsl #10
8780b638:	e0010600 	and	r0, r1, r0, lsl #12
8780b63c:	60000400 	andvs	r0, r0, r0, lsl #8
8780b640:	20000400 	andcs	r0, r0, r0, lsl #8
8780b644:	20000000 	andcs	r0, r0, r0
	...
8780b690:	00000400 	andeq	r0, r0, r0, lsl #8
8780b694:	03000400 	movweq	r0, #1024	; 0x400
8780b698:	03000700 	movweq	r0, #1792	; 0x700
8780b69c:	01e00700 	mvneq	r0, r0, lsl #14
8780b6a0:	01f80400 	mvnseq	r0, r0, lsl #8
8780b6a4:	021f0400 	andseq	r0, pc, #0, 8
8780b6a8:	fc070000 	stc2	0, cr0, [r7], {-0}
8780b6ac:	e0000000 	and	r0, r0, r0
8780b6b0:	00070000 	andeq	r0, r7, r0
8780b6b4:	00380400 	eorseq	r0, r8, r0, lsl #8
8780b6b8:	00c00700 	sbceq	r0, r0, r0, lsl #14
8780b6bc:	00000600 	andeq	r0, r0, r0, lsl #12
8780b6c0:	00000400 	andeq	r0, r0, r0, lsl #8
8780b6c4:	00000400 	andeq	r0, r0, r0, lsl #8
	...
8780b714:	60800700 	addvs	r0, r0, r0, lsl #14
8780b718:	e0000600 	and	r0, r0, r0, lsl #12
8780b71c:	e0030400 	and	r0, r3, r0, lsl #8
8780b720:	a0070400 	andge	r0, r7, r0, lsl #8
8780b724:	200e0400 	andcs	r0, lr, r0, lsl #8
8780b728:	203c0400 	eorscs	r0, ip, r0, lsl #8
8780b72c:	20700400 	rsbscs	r0, r0, r0, lsl #8
8780b730:	20e00500 	rsccs	r0, r0, r0, lsl #10
8780b734:	20800700 	addcs	r0, r0, r0, lsl #14
8780b738:	60000700 	andvs	r0, r0, r0, lsl #14
8780b73c:	e0000400 	and	r0, r0, r0, lsl #8
8780b740:	80030000 	andhi	r0, r3, r0
	...
8780b7a8:	00800000 	addeq	r0, r0, r0
8780b7ac:	00800000 	addeq	r0, r0, r0
8780b7b0:	00400100 	subeq	r0, r0, r0, lsl #2
8780b7b4:	f83ffe07 			; <UNDEFINED> instruction: 0xf83ffe07
8780b7b8:	04000008 	streq	r0, [r0], #-8
8780b7bc:	02000010 	andeq	r0, r0, #16
8780b7c0:	02000010 	andeq	r0, r0, #16
	...
8780b82c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
	...
8780b894:	02000010 	andeq	r0, r0, #16
8780b898:	02000010 	andeq	r0, r0, #16
8780b89c:	04000008 	streq	r0, [r0], #-8
8780b8a0:	f83ffe07 			; <UNDEFINED> instruction: 0xf83ffe07
8780b8a4:	00400100 	subeq	r0, r0, r0, lsl #2
8780b8a8:	00800000 	addeq	r0, r0, r0
8780b8ac:	00800000 	addeq	r0, r0, r0
	...
8780b910:	00000018 	andeq	r0, r0, r8, lsl r0
8780b914:	00000030 	andeq	r0, r0, r0, lsr r0
8780b918:	00000040 	andeq	r0, r0, r0, asr #32
8780b91c:	00000040 	andeq	r0, r0, r0, asr #32
8780b920:	00000040 	andeq	r0, r0, r0, asr #32
8780b924:	00000020 	andeq	r0, r0, r0, lsr #32
8780b928:	00000030 	andeq	r0, r0, r0, lsr r0
8780b92c:	00000008 	andeq	r0, r0, r8
8780b930:	00000004 	andeq	r0, r0, r4
8780b934:	00000002 	andeq	r0, r0, r2
8780b938:	00000002 	andeq	r0, r0, r2
8780b93c:	00000002 	andeq	r0, r0, r2
8780b940:	0000000c 	andeq	r0, r0, ip
8780b944:	00000018 	andeq	r0, r0, r8, lsl r0
	...

8780b98c <.LC0>:
8780b98c:	00000000 	andeq	r0, r0, r0
8780b990:	003b001f 	eorseq	r0, fp, pc, lsl r0
8780b994:	0078005a 	rsbseq	r0, r8, sl, asr r0
8780b998:	00b50097 	umlalseq	r0, r5, r7, r0
8780b99c:	00f300d4 	ldrsbteq	r0, [r3], #4
8780b9a0:	01300111 	teqeq	r0, r1, lsl r1
8780b9a4:	0000014e 	andeq	r0, r0, lr, asr #2

8780b9a8 <.LC1>:
8780b9a8:	1f1c1f00 	svcne	0x001c1f00
8780b9ac:	1f1e1f1e 	svcne	0x001e1f1e
8780b9b0:	1e1f1e1f 	mrcne	14, 0, r1, cr15, cr15, {0}
8780b9b4:	0000001f 	andeq	r0, r0, pc, lsl r0

8780b9b8 <.LC0>:
8780b9b8:	326d6369 	rsbcc	r6, sp, #-1543503871	; 0xa4000001
8780b9bc:	38303630 	ldmdacc	r0!, {r4, r5, r9, sl, ip, sp}
8780b9c0:	20646920 	rsbcs	r6, r4, r0, lsr #18
8780b9c4:	2325203d 	teqcs	r5, #61	; 0x3d
8780b9c8:	000a0d58 	andeq	r0, sl, r8, asr sp

Disassembly of section .ARM.exidx:

8780b9cc <.ARM.exidx>:
8780b9cc:	7fffb318 	svcvc	0x00ffb318
8780b9d0:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

8780b9d4 <release.7465>:
8780b9d4:	00000001 	andeq	r0, r0, r1

8780b9d8 <_ctype>:
8780b9d8:	08080808 	stmdaeq	r8, {r3, fp}
8780b9dc:	08080808 	stmdaeq	r8, {r3, fp}
8780b9e0:	28282808 	stmdacs	r8!, {r3, fp, sp}
8780b9e4:	08082828 	stmdaeq	r8, {r3, r5, fp, sp}
8780b9e8:	08080808 	stmdaeq	r8, {r3, fp}
8780b9ec:	08080808 	stmdaeq	r8, {r3, fp}
8780b9f0:	08080808 	stmdaeq	r8, {r3, fp}
8780b9f4:	08080808 	stmdaeq	r8, {r3, fp}
8780b9f8:	101010a0 	andsne	r1, r0, r0, lsr #1
8780b9fc:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba00:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba04:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba08:	04040404 	streq	r0, [r4], #-1028	; 0x404
8780ba0c:	04040404 	streq	r0, [r4], #-1028	; 0x404
8780ba10:	10100404 	andsne	r0, r0, r4, lsl #8
8780ba14:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba18:	41414110 	cmpmi	r1, r0, lsl r1
8780ba1c:	01414141 	cmpeq	r1, r1, asr #2
8780ba20:	01010101 	tsteq	r1, r1, lsl #2
8780ba24:	01010101 	tsteq	r1, r1, lsl #2
8780ba28:	01010101 	tsteq	r1, r1, lsl #2
8780ba2c:	01010101 	tsteq	r1, r1, lsl #2
8780ba30:	10010101 	andne	r0, r1, r1, lsl #2
8780ba34:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba38:	42424210 	submi	r4, r2, #16, 4
8780ba3c:	02424242 	subeq	r4, r2, #536870916	; 0x20000004
8780ba40:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780ba44:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780ba48:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780ba4c:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780ba50:	10020202 	andne	r0, r2, r2, lsl #4
8780ba54:	08101010 	ldmdaeq	r0, {r4, ip}
	...
8780ba78:	101010a0 	andsne	r1, r0, r0, lsr #1
8780ba7c:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba80:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba84:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba88:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba8c:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba90:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba94:	10101010 	andsne	r1, r0, r0, lsl r0
8780ba98:	01010101 	tsteq	r1, r1, lsl #2
8780ba9c:	01010101 	tsteq	r1, r1, lsl #2
8780baa0:	01010101 	tsteq	r1, r1, lsl #2
8780baa4:	01010101 	tsteq	r1, r1, lsl #2
8780baa8:	01010101 	tsteq	r1, r1, lsl #2
8780baac:	10010101 	andne	r0, r1, r1, lsl #2
8780bab0:	01010101 	tsteq	r1, r1, lsl #2
8780bab4:	02010101 	andeq	r0, r1, #1073741824	; 0x40000000
8780bab8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780babc:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780bac0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780bac4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780bac8:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780bacc:	10020202 	andne	r0, r2, r2, lsl #4
8780bad0:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
8780bad4:	02020202 	andeq	r0, r2, #536870912	; 0x20000000

Disassembly of section .bss:

8780bad8 <irqNesting>:
8780bad8:	00000000 	andeq	r0, r0, r0

8780badc <irqTable>:
	...

8780bfdc <state.7483>:
	...

8780bfdd <state.7434>:
	...

8780bfde <state.7499>:
	...

8780bfe0 <g_pcOutBuf>:
	...

8780c3e0 <g_pcInBuf>:
	...

8780c7e0 <icm20608_dev>:
	...

8780c818 <___strtok>:
8780c818:	00000000 	andeq	r0, r0, r0

8780c81c <tftlcd_dev>:
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
  18:	87806a31 			; <UNDEFINED> instruction: 0x87806a31
  1c:	0000025c 	andeq	r0, r0, ip, asr r2
  20:	0000000c 	andeq	r0, r0, ip
  24:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  28:	7c020001 	stcvc	0, cr0, [r2], {1}
  2c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  30:	00000018 	andeq	r0, r0, r8, lsl r0
  34:	00000020 	andeq	r0, r0, r0, lsr #32
  38:	87806ca8 	strhi	r6, [r0, r8, lsr #25]
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
  64:	87806ce4 	strhi	r6, [r0, r4, ror #25]
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
  d4:	87806a30 			; <UNDEFINED> instruction: 0x87806a30
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
 1d4:	87806ca8 	strhi	r6, [r0, r8, lsr #25]
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
 2b8:	806cd802 	rsbhi	sp, ip, r2, lsl #16
 2bc:	0ab00387 	beq	fec010e0 <__bss_end+0x773f48a0>
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
 3a0:	87806ce4 	strhi	r6, [r0, r4, ror #25]
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
  10:	87806a30 			; <UNDEFINED> instruction: 0x87806a30
  14:	87806ca6 	strhi	r6, [r0, r6, lsr #25]
  18:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; ffffff64 <__bss_end+0x787f3724>
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
  a8:	6c2f3130 	stfvss	f3, [pc], #-192	; fffffff0 <__bss_end+0x787f37b0>
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
  f8:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; ffffff34 <__bss_end+0x787f36f4>
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
 1cc:	a8000001 	stmdage	r0, {r0}
 1d0:	d887806c 	stmle	r7, {r2, r3, r5, r6, pc}
 1d4:	2f87806c 	svccs	0x0087806c
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
 388:	6cd80000 	ldclvs	0, cr0, [r8], {0}
 38c:	6ce48780 	stclvs	7, cr8, [r4], #512	; 0x200
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
 550:	6ce40000 	stclvs	0, cr0, [r4]
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
 5f0:	87806ce4 	strhi	r6, [r0, r4, ror #25]
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
  10:	87806a30 			; <UNDEFINED> instruction: 0x87806a30
  14:	00000276 	andeq	r0, r0, r6, ror r2
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01bf0002 			; <UNDEFINED> instruction: 0x01bf0002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	87806ca8 	strhi	r6, [r0, r8, lsr #25]
  34:	00000030 	andeq	r0, r0, r0, lsr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	037a0002 	cmneq	sl, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	87806cd8 			; <UNDEFINED> instruction: 0x87806cd8
  54:	0000000c 	andeq	r0, r0, ip
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	05390002 	ldreq	r0, [r9, #-2]!
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	87806ce4 	strhi	r6, [r0, r4, ror #25]
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
  3c:	6c2f6573 	cfstr32vs	mvfx6, [pc], #-460	; fffffe78 <__bss_end+0x787f3638>
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

