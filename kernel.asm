
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	; 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	; 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	; 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	; 10040 <jump_stack+0x18>
   10020:	eb0000f7 	bl	10404 <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	; 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010568 	.word	0x00010568
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	; 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			; (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			; (mov r0, r0)
   100c4:	e24bd004 	sub	sp, fp, #4
   100c8:	e8bd8800 	pop	{fp, pc}

000100cc <_putint>:
   100cc:	e92d4800 	push	{fp, lr}
   100d0:	e28db004 	add	fp, sp, #4
   100d4:	e24dd018 	sub	sp, sp, #24
   100d8:	e50b0010 	str	r0, [fp, #-16]
   100dc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   100e0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   100e4:	e59f307c 	ldr	r3, [pc, #124]	; 10168 <_putint+0x9c>
   100e8:	e50b300c 	str	r3, [fp, #-12]
   100ec:	e51b3010 	ldr	r3, [fp, #-16]
   100f0:	e3530000 	cmp	r3, #0
   100f4:	0a000001 	beq	10100 <_putint+0x34>
   100f8:	e51b0010 	ldr	r0, [fp, #-16]
   100fc:	ebffffdf 	bl	10080 <_puts>
   10100:	e3a0301c 	mov	r3, #28
   10104:	e50b3008 	str	r3, [fp, #-8]
   10108:	ea00000b 	b	1013c <_putint+0x70>
   1010c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   10110:	e51b3008 	ldr	r3, [fp, #-8]
   10114:	e1a03332 	lsr	r3, r2, r3
   10118:	e203300f 	and	r3, r3, #15
   1011c:	e51b200c 	ldr	r2, [fp, #-12]
   10120:	e0823003 	add	r3, r2, r3
   10124:	e5d33000 	ldrb	r3, [r3]
   10128:	e1a00003 	mov	r0, r3
   1012c:	ebffffc4 	bl	10044 <_uart_putc>
   10130:	e51b3008 	ldr	r3, [fp, #-8]
   10134:	e2433004 	sub	r3, r3, #4
   10138:	e50b3008 	str	r3, [fp, #-8]
   1013c:	e51b3008 	ldr	r3, [fp, #-8]
   10140:	e3530000 	cmp	r3, #0
   10144:	aafffff0 	bge	1010c <_putint+0x40>
   10148:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   1014c:	e3530000 	cmp	r3, #0
   10150:	0a000001 	beq	1015c <_putint+0x90>
   10154:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   10158:	ebffffc8 	bl	10080 <_puts>
   1015c:	e1a00000 	nop			; (mov r0, r0)
   10160:	e24bd004 	sub	sp, fp, #4
   10164:	e8bd8800 	pop	{fp, pc}
   10168:	000104f0 	.word	0x000104f0

0001016c <get_pde>:
   1016c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10170:	e28db000 	add	fp, sp, #0
   10174:	e24dd00c 	sub	sp, sp, #12
   10178:	e50b0008 	str	r0, [fp, #-8]
   1017c:	e51b3008 	ldr	r3, [fp, #-8]
   10180:	e1a03a23 	lsr	r3, r3, #20
   10184:	e50b3008 	str	r3, [fp, #-8]
   10188:	e59f3020 	ldr	r3, [pc, #32]	; 101b0 <get_pde+0x44>
   1018c:	e5932000 	ldr	r2, [r3]
   10190:	e51b3008 	ldr	r3, [fp, #-8]
   10194:	e1a03103 	lsl	r3, r3, #2
   10198:	e0823003 	add	r3, r2, r3
   1019c:	e5933000 	ldr	r3, [r3]
   101a0:	e1a00003 	mov	r0, r3
   101a4:	e28bd000 	add	sp, fp, #0
   101a8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   101ac:	e12fff1e 	bx	lr
   101b0:	00010560 	.word	0x00010560

000101b4 <set_bootpgtbl>:
   101b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   101b8:	e28db000 	add	fp, sp, #0
   101bc:	e24dd01c 	sub	sp, sp, #28
   101c0:	e50b0010 	str	r0, [fp, #-16]
   101c4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
   101c8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
   101cc:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   101d0:	e51b3010 	ldr	r3, [fp, #-16]
   101d4:	e1a03a23 	lsr	r3, r3, #20
   101d8:	e50b3010 	str	r3, [fp, #-16]
   101dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   101e0:	e1a03a23 	lsr	r3, r3, #20
   101e4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   101e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   101ec:	e1a03a23 	lsr	r3, r3, #20
   101f0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   101f4:	e3a03000 	mov	r3, #0
   101f8:	e50b300c 	str	r3, [fp, #-12]
   101fc:	ea000029 	b	102a8 <set_bootpgtbl+0xf4>
   10200:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10204:	e1a03a03 	lsl	r3, r3, #20
   10208:	e50b3008 	str	r3, [fp, #-8]
   1020c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10210:	e3530000 	cmp	r3, #0
   10214:	1a000004 	bne	1022c <set_bootpgtbl+0x78>
   10218:	e51b3008 	ldr	r3, [fp, #-8]
   1021c:	e3833b01 	orr	r3, r3, #1024	; 0x400
   10220:	e383300e 	orr	r3, r3, #14
   10224:	e50b3008 	str	r3, [fp, #-8]
   10228:	ea000003 	b	1023c <set_bootpgtbl+0x88>
   1022c:	e51b3008 	ldr	r3, [fp, #-8]
   10230:	e3833b01 	orr	r3, r3, #1024	; 0x400
   10234:	e3833002 	orr	r3, r3, #2
   10238:	e50b3008 	str	r3, [fp, #-8]
   1023c:	e51b3010 	ldr	r3, [fp, #-16]
   10240:	e35300ff 	cmp	r3, #255	; 0xff
   10244:	8a000007 	bhi	10268 <set_bootpgtbl+0xb4>
   10248:	e59f3078 	ldr	r3, [pc, #120]	; 102c8 <set_bootpgtbl+0x114>
   1024c:	e5932000 	ldr	r2, [r3]
   10250:	e51b3010 	ldr	r3, [fp, #-16]
   10254:	e1a03103 	lsl	r3, r3, #2
   10258:	e0823003 	add	r3, r2, r3
   1025c:	e51b2008 	ldr	r2, [fp, #-8]
   10260:	e5832000 	str	r2, [r3]
   10264:	ea000006 	b	10284 <set_bootpgtbl+0xd0>
   10268:	e59f305c 	ldr	r3, [pc, #92]	; 102cc <set_bootpgtbl+0x118>
   1026c:	e5932000 	ldr	r2, [r3]
   10270:	e51b3010 	ldr	r3, [fp, #-16]
   10274:	e1a03103 	lsl	r3, r3, #2
   10278:	e0823003 	add	r3, r2, r3
   1027c:	e51b2008 	ldr	r2, [fp, #-8]
   10280:	e5832000 	str	r2, [r3]
   10284:	e51b3010 	ldr	r3, [fp, #-16]
   10288:	e2833001 	add	r3, r3, #1
   1028c:	e50b3010 	str	r3, [fp, #-16]
   10290:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10294:	e2833001 	add	r3, r3, #1
   10298:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   1029c:	e51b300c 	ldr	r3, [fp, #-12]
   102a0:	e2833001 	add	r3, r3, #1
   102a4:	e50b300c 	str	r3, [fp, #-12]
   102a8:	e51b300c 	ldr	r3, [fp, #-12]
   102ac:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   102b0:	e1520003 	cmp	r2, r3
   102b4:	8affffd1 	bhi	10200 <set_bootpgtbl+0x4c>
   102b8:	e1a00000 	nop			; (mov r0, r0)
   102bc:	e28bd000 	add	sp, fp, #0
   102c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   102c4:	e12fff1e 	bx	lr
   102c8:	00010564 	.word	0x00010564
   102cc:	00010560 	.word	0x00010560

000102d0 <_flush_all>:
   102d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   102d4:	e28db000 	add	fp, sp, #0
   102d8:	e24dd00c 	sub	sp, sp, #12
   102dc:	e3a03000 	mov	r3, #0
   102e0:	e50b3008 	str	r3, [fp, #-8]
   102e4:	e51b3008 	ldr	r3, [fp, #-8]
   102e8:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102ec:	e1a00000 	nop			; (mov r0, r0)
   102f0:	e28bd000 	add	sp, fp, #0
   102f4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   102f8:	e12fff1e 	bx	lr

000102fc <load_pgtlb>:
   102fc:	e92d4800 	push	{fp, lr}
   10300:	e28db004 	add	fp, sp, #4
   10304:	e24dd018 	sub	sp, sp, #24
   10308:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   1030c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   10310:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   10314:	e50b3008 	str	r3, [fp, #-8]
   10318:	e51b3008 	ldr	r3, [fp, #-8]
   1031c:	e1a03823 	lsr	r3, r3, #16
   10320:	e6ef3073 	uxtb	r3, r3
   10324:	e203300f 	and	r3, r3, #15
   10328:	e54b3009 	strb	r3, [fp, #-9]
   1032c:	e55b3009 	ldrb	r3, [fp, #-9]
   10330:	e3530007 	cmp	r3, #7
   10334:	0a000004 	beq	1034c <load_pgtlb+0x50>
   10338:	e55b3009 	ldrb	r3, [fp, #-9]
   1033c:	e353000f 	cmp	r3, #15
   10340:	0a000001 	beq	1034c <load_pgtlb+0x50>
   10344:	e59f0074 	ldr	r0, [pc, #116]	; 103c0 <load_pgtlb+0xc4>
   10348:	ebffff4c 	bl	10080 <_puts>
   1034c:	e59f3070 	ldr	r3, [pc, #112]	; 103c4 <load_pgtlb+0xc8>
   10350:	e50b3010 	str	r3, [fp, #-16]
   10354:	e51b3010 	ldr	r3, [fp, #-16]
   10358:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   1035c:	e3a03004 	mov	r3, #4
   10360:	e50b3010 	str	r3, [fp, #-16]
   10364:	e51b3010 	ldr	r3, [fp, #-16]
   10368:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   1036c:	e59f3054 	ldr	r3, [pc, #84]	; 103c8 <load_pgtlb+0xcc>
   10370:	e5933000 	ldr	r3, [r3]
   10374:	e50b3010 	str	r3, [fp, #-16]
   10378:	e51b3010 	ldr	r3, [fp, #-16]
   1037c:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10380:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10384:	e50b3010 	str	r3, [fp, #-16]
   10388:	e51b3010 	ldr	r3, [fp, #-16]
   1038c:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10390:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   10394:	e50b3010 	str	r3, [fp, #-16]
   10398:	e51b2010 	ldr	r2, [fp, #-16]
   1039c:	e59f3028 	ldr	r3, [pc, #40]	; 103cc <load_pgtlb+0xd0>
   103a0:	e1823003 	orr	r3, r2, r3
   103a4:	e50b3010 	str	r3, [fp, #-16]
   103a8:	e51b3010 	ldr	r3, [fp, #-16]
   103ac:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b0:	ebffffc6 	bl	102d0 <_flush_all>
   103b4:	e1a00000 	nop			; (mov r0, r0)
   103b8:	e24bd004 	sub	sp, fp, #4
   103bc:	e8bd8800 	pop	{fp, pc}
   103c0:	00010504 	.word	0x00010504
   103c4:	55555555 	.word	0x55555555
   103c8:	00010560 	.word	0x00010560
   103cc:	0080300d 	.word	0x0080300d

000103d0 <clear_bss>:
   103d0:	e92d4800 	push	{fp, lr}
   103d4:	e28db004 	add	fp, sp, #4
   103d8:	e59f201c 	ldr	r2, [pc, #28]	; 103fc <clear_bss+0x2c>
   103dc:	e59f301c 	ldr	r3, [pc, #28]	; 10400 <clear_bss+0x30>
   103e0:	e0423003 	sub	r3, r2, r3
   103e4:	e1a02003 	mov	r2, r3
   103e8:	e3a01000 	mov	r1, #0
   103ec:	e59f000c 	ldr	r0, [pc, #12]	; 10400 <clear_bss+0x30>
   103f0:	eb000038 	bl	104d8 <__memset_veneer>
   103f4:	e1a00000 	nop			; (mov r0, r0)
   103f8:	e8bd8800 	pop	{fp, pc}
   103fc:	800b1000 	.word	0x800b1000
   10400:	800ab0d4 	.word	0x800ab0d4

00010404 <start>:
   10404:	e92d4800 	push	{fp, lr}
   10408:	e28db004 	add	fp, sp, #4
   1040c:	e24dd008 	sub	sp, sp, #8
   10410:	e59f00a4 	ldr	r0, [pc, #164]	; 104bc <start+0xb8>
   10414:	ebffff19 	bl	10080 <_puts>
   10418:	e3a03000 	mov	r3, #0
   1041c:	e3a02601 	mov	r2, #1048576	; 0x100000
   10420:	e3a01000 	mov	r1, #0
   10424:	e3a00000 	mov	r0, #0
   10428:	ebffff61 	bl	101b4 <set_bootpgtbl>
   1042c:	e3a03000 	mov	r3, #0
   10430:	e3a02601 	mov	r2, #1048576	; 0x100000
   10434:	e3a01000 	mov	r1, #0
   10438:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
   1043c:	ebffff5c 	bl	101b4 <set_bootpgtbl>
   10440:	e59f3078 	ldr	r3, [pc, #120]	; 104c0 <start+0xbc>
   10444:	e50b3008 	str	r3, [fp, #-8]
   10448:	e59f2074 	ldr	r2, [pc, #116]	; 104c4 <start+0xc0>
   1044c:	e51b3008 	ldr	r3, [fp, #-8]
   10450:	e1530002 	cmp	r3, r2
   10454:	8a000001 	bhi	10460 <start+0x5c>
   10458:	e59f0068 	ldr	r0, [pc, #104]	; 104c8 <start+0xc4>
   1045c:	eb00001f 	bl	104e0 <__cprintf_veneer>
   10460:	e3a03000 	mov	r3, #0
   10464:	e3a02601 	mov	r2, #1048576	; 0x100000
   10468:	e3a01000 	mov	r1, #0
   1046c:	e59f0058 	ldr	r0, [pc, #88]	; 104cc <start+0xc8>
   10470:	ebffff4f 	bl	101b4 <set_bootpgtbl>
   10474:	e3a03001 	mov	r3, #1
   10478:	e3a02302 	mov	r2, #134217728	; 0x8000000
   1047c:	e3a01201 	mov	r1, #268435456	; 0x10000000
   10480:	e3a00209 	mov	r0, #-1879048192	; 0x90000000
   10484:	ebffff4a 	bl	101b4 <set_bootpgtbl>
   10488:	e59f3040 	ldr	r3, [pc, #64]	; 104d0 <start+0xcc>
   1048c:	e5932000 	ldr	r2, [r3]
   10490:	e59f303c 	ldr	r3, [pc, #60]	; 104d4 <start+0xd0>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e1a01003 	mov	r1, r3
   1049c:	e1a00002 	mov	r0, r2
   104a0:	ebffff95 	bl	102fc <load_pgtlb>
   104a4:	ebfffedf 	bl	10028 <jump_stack>
   104a8:	ebffffc8 	bl	103d0 <clear_bss>
   104ac:	eb00000d 	bl	104e8 <__kmain_veneer>
   104b0:	e1a00000 	nop			; (mov r0, r0)
   104b4:	e24bd004 	sub	sp, fp, #4
   104b8:	e8bd8800 	pop	{fp, pc}
   104bc:	0001051c 	.word	0x0001051c
   104c0:	800f0000 	.word	0x800f0000
   104c4:	800b1000 	.word	0x800b1000
   104c8:	00010538 	.word	0x00010538
   104cc:	ffff0000 	.word	0xffff0000
   104d0:	00010560 	.word	0x00010560
   104d4:	00010564 	.word	0x00010564

000104d8 <__memset_veneer>:
   104d8:	e51ff004 	ldr	pc, [pc, #-4]	; 104dc <__memset_veneer+0x4>
   104dc:	80020000 	.word	0x80020000

000104e0 <__cprintf_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	; 104e4 <__cprintf_veneer+0x4>
   104e4:	8002193c 	.word	0x8002193c

000104e8 <__kmain_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	; 104ec <__kmain_veneer+0x4>
   104ec:	8002465c 	.word	0x8002465c
   104f0:	33323130 	.word	0x33323130
   104f4:	37363534 	.word	0x37363534
   104f8:	42413938 	.word	0x42413938
   104fc:	46454443 	.word	0x46454443
   10500:	00000000 	.word	0x00000000
   10504:	6465656e 	.word	0x6465656e
   10508:	52414120 	.word	0x52414120
   1050c:	3676204d 	.word	0x3676204d
   10510:	20726f20 	.word	0x20726f20
   10514:	68676968 	.word	0x68676968
   10518:	000a7265 	.word	0x000a7265
   1051c:	72617473 	.word	0x72617473
   10520:	676e6974 	.word	0x676e6974
   10524:	36767820 	.word	0x36767820
   10528:	726f6620 	.word	0x726f6620
   1052c:	4d524120 	.word	0x4d524120
   10530:	0a2e2e2e 	.word	0x0a2e2e2e
   10534:	00000000 	.word	0x00000000
   10538:	6f727265 	.word	0x6f727265
   1053c:	76203a72 	.word	0x76203a72
   10540:	6f746365 	.word	0x6f746365
   10544:	61742072 	.word	0x61742072
   10548:	20656c62 	.word	0x20656c62
   1054c:	7265766f 	.word	0x7265766f
   10550:	7370616c 	.word	0x7370616c
   10554:	72656b20 	.word	0x72656b20
   10558:	0a6c656e 	.word	0x0a6c656e
   1055c:	00000000 	.word	0x00000000

00010560 <kernel_pgtbl>:
   10560:	00014000                                .@..

00010564 <user_pgtbl>:
   10564:	00018000                                ....

00010568 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	; 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b300d 	ldrb	r3, [fp, #-13]
8002002c:	e1a02c03 	lsl	r2, r3, #24
80020030:	e55b300d 	ldrb	r3, [fp, #-13]
80020034:	e1a03803 	lsl	r3, r3, #16
80020038:	e1822003 	orr	r2, r2, r3
8002003c:	e55b300d 	ldrb	r3, [fp, #-13]
80020040:	e1a03403 	lsl	r3, r3, #8
80020044:	e1822003 	orr	r2, r2, r3
80020048:	e55b300d 	ldrb	r3, [fp, #-13]
8002004c:	e1823003 	orr	r3, r2, r3
80020050:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020054:	ea000008 	b	8002007c <memset+0x7c>
80020058:	e51b3008 	ldr	r3, [fp, #-8]
8002005c:	e55b200d 	ldrb	r2, [fp, #-13]
80020060:	e5c32000 	strb	r2, [r3]
80020064:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020068:	e2433001 	sub	r3, r3, #1
8002006c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80020070:	e51b3008 	ldr	r3, [fp, #-8]
80020074:	e2833001 	add	r3, r3, #1
80020078:	e50b3008 	str	r3, [fp, #-8]
8002007c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020080:	e3530000 	cmp	r3, #0
80020084:	da000003 	ble	80020098 <memset+0x98>
80020088:	e51b3008 	ldr	r3, [fp, #-8]
8002008c:	e2033003 	and	r3, r3, #3
80020090:	e3530000 	cmp	r3, #0
80020094:	1affffef 	bne	80020058 <memset+0x58>
80020098:	e51b3008 	ldr	r3, [fp, #-8]
8002009c:	e50b300c 	str	r3, [fp, #-12]
800200a0:	ea000008 	b	800200c8 <memset+0xc8>
800200a4:	e51b300c 	ldr	r3, [fp, #-12]
800200a8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800200ac:	e5832000 	str	r2, [r3]
800200b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800200b4:	e2433004 	sub	r3, r3, #4
800200b8:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
800200bc:	e51b300c 	ldr	r3, [fp, #-12]
800200c0:	e2833004 	add	r3, r3, #4
800200c4:	e50b300c 	str	r3, [fp, #-12]
800200c8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800200cc:	e3530003 	cmp	r3, #3
800200d0:	cafffff3 	bgt	800200a4 <memset+0xa4>
800200d4:	e51b300c 	ldr	r3, [fp, #-12]
800200d8:	e50b3008 	str	r3, [fp, #-8]
800200dc:	ea000008 	b	80020104 <memset+0x104>
800200e0:	e51b3008 	ldr	r3, [fp, #-8]
800200e4:	e55b200d 	ldrb	r2, [fp, #-13]
800200e8:	e5c32000 	strb	r2, [r3]
800200ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800200f0:	e2433001 	sub	r3, r3, #1
800200f4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
800200f8:	e51b3008 	ldr	r3, [fp, #-8]
800200fc:	e2833001 	add	r3, r3, #1
80020100:	e50b3008 	str	r3, [fp, #-8]
80020104:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020108:	e3530000 	cmp	r3, #0
8002010c:	cafffff3 	bgt	800200e0 <memset+0xe0>
80020110:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020114:	e1a00003 	mov	r0, r3
80020118:	e28bd000 	add	sp, fp, #0
8002011c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020120:	e12fff1e 	bx	lr

80020124 <memcmp>:
80020124:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020128:	e28db000 	add	fp, sp, #0
8002012c:	e24dd01c 	sub	sp, sp, #28
80020130:	e50b0010 	str	r0, [fp, #-16]
80020134:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80020138:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
8002013c:	e51b3010 	ldr	r3, [fp, #-16]
80020140:	e50b3008 	str	r3, [fp, #-8]
80020144:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020148:	e50b300c 	str	r3, [fp, #-12]
8002014c:	ea000012 	b	8002019c <memcmp+0x78>
80020150:	e51b3008 	ldr	r3, [fp, #-8]
80020154:	e5d32000 	ldrb	r2, [r3]
80020158:	e51b300c 	ldr	r3, [fp, #-12]
8002015c:	e5d33000 	ldrb	r3, [r3]
80020160:	e1520003 	cmp	r2, r3
80020164:	0a000006 	beq	80020184 <memcmp+0x60>
80020168:	e51b3008 	ldr	r3, [fp, #-8]
8002016c:	e5d33000 	ldrb	r3, [r3]
80020170:	e1a02003 	mov	r2, r3
80020174:	e51b300c 	ldr	r3, [fp, #-12]
80020178:	e5d33000 	ldrb	r3, [r3]
8002017c:	e0423003 	sub	r3, r2, r3
80020180:	ea00000b 	b	800201b4 <memcmp+0x90>
80020184:	e51b3008 	ldr	r3, [fp, #-8]
80020188:	e2833001 	add	r3, r3, #1
8002018c:	e50b3008 	str	r3, [fp, #-8]
80020190:	e51b300c 	ldr	r3, [fp, #-12]
80020194:	e2833001 	add	r3, r3, #1
80020198:	e50b300c 	str	r3, [fp, #-12]
8002019c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800201a0:	e2432001 	sub	r2, r3, #1
800201a4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800201a8:	e3530000 	cmp	r3, #0
800201ac:	1affffe7 	bne	80020150 <memcmp+0x2c>
800201b0:	e3a03000 	mov	r3, #0
800201b4:	e1a00003 	mov	r0, r3
800201b8:	e28bd000 	add	sp, fp, #0
800201bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800201c0:	e12fff1e 	bx	lr

800201c4 <memmove>:
800201c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800201c8:	e28db000 	add	fp, sp, #0
800201cc:	e24dd01c 	sub	sp, sp, #28
800201d0:	e50b0010 	str	r0, [fp, #-16]
800201d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800201d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800201dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800201e0:	e50b3008 	str	r3, [fp, #-8]
800201e4:	e51b3010 	ldr	r3, [fp, #-16]
800201e8:	e50b300c 	str	r3, [fp, #-12]
800201ec:	e51b2008 	ldr	r2, [fp, #-8]
800201f0:	e51b300c 	ldr	r3, [fp, #-12]
800201f4:	e1520003 	cmp	r2, r3
800201f8:	2a000026 	bcs	80020298 <memmove+0xd4>
800201fc:	e51b2008 	ldr	r2, [fp, #-8]
80020200:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020204:	e0823003 	add	r3, r2, r3
80020208:	e51b200c 	ldr	r2, [fp, #-12]
8002020c:	e1520003 	cmp	r2, r3
80020210:	2a000020 	bcs	80020298 <memmove+0xd4>
80020214:	e51b2008 	ldr	r2, [fp, #-8]
80020218:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002021c:	e0823003 	add	r3, r2, r3
80020220:	e50b3008 	str	r3, [fp, #-8]
80020224:	e51b200c 	ldr	r2, [fp, #-12]
80020228:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002022c:	e0823003 	add	r3, r2, r3
80020230:	e50b300c 	str	r3, [fp, #-12]
80020234:	ea000009 	b	80020260 <memmove+0x9c>
80020238:	e51b3008 	ldr	r3, [fp, #-8]
8002023c:	e2433001 	sub	r3, r3, #1
80020240:	e50b3008 	str	r3, [fp, #-8]
80020244:	e51b300c 	ldr	r3, [fp, #-12]
80020248:	e2433001 	sub	r3, r3, #1
8002024c:	e50b300c 	str	r3, [fp, #-12]
80020250:	e51b3008 	ldr	r3, [fp, #-8]
80020254:	e5d32000 	ldrb	r2, [r3]
80020258:	e51b300c 	ldr	r3, [fp, #-12]
8002025c:	e5c32000 	strb	r2, [r3]
80020260:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020264:	e2432001 	sub	r2, r3, #1
80020268:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
8002026c:	e3530000 	cmp	r3, #0
80020270:	1afffff0 	bne	80020238 <memmove+0x74>
80020274:	ea00000c 	b	800202ac <memmove+0xe8>
80020278:	e51b2008 	ldr	r2, [fp, #-8]
8002027c:	e2823001 	add	r3, r2, #1
80020280:	e50b3008 	str	r3, [fp, #-8]
80020284:	e51b300c 	ldr	r3, [fp, #-12]
80020288:	e2831001 	add	r1, r3, #1
8002028c:	e50b100c 	str	r1, [fp, #-12]
80020290:	e5d22000 	ldrb	r2, [r2]
80020294:	e5c32000 	strb	r2, [r3]
80020298:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002029c:	e2432001 	sub	r2, r3, #1
800202a0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800202a4:	e3530000 	cmp	r3, #0
800202a8:	1afffff2 	bne	80020278 <memmove+0xb4>
800202ac:	e51b3010 	ldr	r3, [fp, #-16]
800202b0:	e1a00003 	mov	r0, r3
800202b4:	e28bd000 	add	sp, fp, #0
800202b8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800202bc:	e12fff1e 	bx	lr

800202c0 <memcpy>:
800202c0:	e92d4800 	push	{fp, lr}
800202c4:	e28db004 	add	fp, sp, #4
800202c8:	e24dd010 	sub	sp, sp, #16
800202cc:	e50b0008 	str	r0, [fp, #-8]
800202d0:	e50b100c 	str	r1, [fp, #-12]
800202d4:	e50b2010 	str	r2, [fp, #-16]
800202d8:	e51b2010 	ldr	r2, [fp, #-16]
800202dc:	e51b100c 	ldr	r1, [fp, #-12]
800202e0:	e51b0008 	ldr	r0, [fp, #-8]
800202e4:	ebffffb6 	bl	800201c4 <memmove>
800202e8:	e1a03000 	mov	r3, r0
800202ec:	e1a00003 	mov	r0, r3
800202f0:	e24bd004 	sub	sp, fp, #4
800202f4:	e8bd8800 	pop	{fp, pc}

800202f8 <strncmp>:
800202f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800202fc:	e28db000 	add	fp, sp, #0
80020300:	e24dd014 	sub	sp, sp, #20
80020304:	e50b0008 	str	r0, [fp, #-8]
80020308:	e50b100c 	str	r1, [fp, #-12]
8002030c:	e50b2010 	str	r2, [fp, #-16]
80020310:	ea000008 	b	80020338 <strncmp+0x40>
80020314:	e51b3010 	ldr	r3, [fp, #-16]
80020318:	e2433001 	sub	r3, r3, #1
8002031c:	e50b3010 	str	r3, [fp, #-16]
80020320:	e51b3008 	ldr	r3, [fp, #-8]
80020324:	e2833001 	add	r3, r3, #1
80020328:	e50b3008 	str	r3, [fp, #-8]
8002032c:	e51b300c 	ldr	r3, [fp, #-12]
80020330:	e2833001 	add	r3, r3, #1
80020334:	e50b300c 	str	r3, [fp, #-12]
80020338:	e51b3010 	ldr	r3, [fp, #-16]
8002033c:	e3530000 	cmp	r3, #0
80020340:	0a000009 	beq	8002036c <strncmp+0x74>
80020344:	e51b3008 	ldr	r3, [fp, #-8]
80020348:	e5d33000 	ldrb	r3, [r3]
8002034c:	e3530000 	cmp	r3, #0
80020350:	0a000005 	beq	8002036c <strncmp+0x74>
80020354:	e51b3008 	ldr	r3, [fp, #-8]
80020358:	e5d32000 	ldrb	r2, [r3]
8002035c:	e51b300c 	ldr	r3, [fp, #-12]
80020360:	e5d33000 	ldrb	r3, [r3]
80020364:	e1520003 	cmp	r2, r3
80020368:	0affffe9 	beq	80020314 <strncmp+0x1c>
8002036c:	e51b3010 	ldr	r3, [fp, #-16]
80020370:	e3530000 	cmp	r3, #0
80020374:	1a000001 	bne	80020380 <strncmp+0x88>
80020378:	e3a03000 	mov	r3, #0
8002037c:	ea000005 	b	80020398 <strncmp+0xa0>
80020380:	e51b3008 	ldr	r3, [fp, #-8]
80020384:	e5d33000 	ldrb	r3, [r3]
80020388:	e1a02003 	mov	r2, r3
8002038c:	e51b300c 	ldr	r3, [fp, #-12]
80020390:	e5d33000 	ldrb	r3, [r3]
80020394:	e0423003 	sub	r3, r2, r3
80020398:	e1a00003 	mov	r0, r3
8002039c:	e28bd000 	add	sp, fp, #0
800203a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800203a4:	e12fff1e 	bx	lr

800203a8 <strncpy>:
800203a8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800203ac:	e28db000 	add	fp, sp, #0
800203b0:	e24dd01c 	sub	sp, sp, #28
800203b4:	e50b0010 	str	r0, [fp, #-16]
800203b8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800203bc:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800203c0:	e51b3010 	ldr	r3, [fp, #-16]
800203c4:	e50b3008 	str	r3, [fp, #-8]
800203c8:	e1a00000 	nop			; (mov r0, r0)
800203cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800203d0:	e2432001 	sub	r2, r3, #1
800203d4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800203d8:	e3530000 	cmp	r3, #0
800203dc:	da000010 	ble	80020424 <strncpy+0x7c>
800203e0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800203e4:	e2823001 	add	r3, r2, #1
800203e8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800203ec:	e51b3010 	ldr	r3, [fp, #-16]
800203f0:	e2831001 	add	r1, r3, #1
800203f4:	e50b1010 	str	r1, [fp, #-16]
800203f8:	e5d22000 	ldrb	r2, [r2]
800203fc:	e5c32000 	strb	r2, [r3]
80020400:	e5d33000 	ldrb	r3, [r3]
80020404:	e3530000 	cmp	r3, #0
80020408:	1affffef 	bne	800203cc <strncpy+0x24>
8002040c:	ea000004 	b	80020424 <strncpy+0x7c>
80020410:	e51b3010 	ldr	r3, [fp, #-16]
80020414:	e2832001 	add	r2, r3, #1
80020418:	e50b2010 	str	r2, [fp, #-16]
8002041c:	e3a02000 	mov	r2, #0
80020420:	e5c32000 	strb	r2, [r3]
80020424:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020428:	e2432001 	sub	r2, r3, #1
8002042c:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80020430:	e3530000 	cmp	r3, #0
80020434:	cafffff5 	bgt	80020410 <strncpy+0x68>
80020438:	e51b3008 	ldr	r3, [fp, #-8]
8002043c:	e1a00003 	mov	r0, r3
80020440:	e28bd000 	add	sp, fp, #0
80020444:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020448:	e12fff1e 	bx	lr

8002044c <safestrcpy>:
8002044c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020450:	e28db000 	add	fp, sp, #0
80020454:	e24dd01c 	sub	sp, sp, #28
80020458:	e50b0010 	str	r0, [fp, #-16]
8002045c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80020460:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80020464:	e51b3010 	ldr	r3, [fp, #-16]
80020468:	e50b3008 	str	r3, [fp, #-8]
8002046c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020470:	e3530000 	cmp	r3, #0
80020474:	ca000001 	bgt	80020480 <safestrcpy+0x34>
80020478:	e51b3008 	ldr	r3, [fp, #-8]
8002047c:	ea000014 	b	800204d4 <safestrcpy+0x88>
80020480:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020484:	e2433001 	sub	r3, r3, #1
80020488:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
8002048c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020490:	e3530000 	cmp	r3, #0
80020494:	da00000a 	ble	800204c4 <safestrcpy+0x78>
80020498:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8002049c:	e2823001 	add	r3, r2, #1
800204a0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800204a4:	e51b3010 	ldr	r3, [fp, #-16]
800204a8:	e2831001 	add	r1, r3, #1
800204ac:	e50b1010 	str	r1, [fp, #-16]
800204b0:	e5d22000 	ldrb	r2, [r2]
800204b4:	e5c32000 	strb	r2, [r3]
800204b8:	e5d33000 	ldrb	r3, [r3]
800204bc:	e3530000 	cmp	r3, #0
800204c0:	1affffee 	bne	80020480 <safestrcpy+0x34>
800204c4:	e51b3010 	ldr	r3, [fp, #-16]
800204c8:	e3a02000 	mov	r2, #0
800204cc:	e5c32000 	strb	r2, [r3]
800204d0:	e51b3008 	ldr	r3, [fp, #-8]
800204d4:	e1a00003 	mov	r0, r3
800204d8:	e28bd000 	add	sp, fp, #0
800204dc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800204e0:	e12fff1e 	bx	lr

800204e4 <strlen>:
800204e4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800204e8:	e28db000 	add	fp, sp, #0
800204ec:	e24dd014 	sub	sp, sp, #20
800204f0:	e50b0010 	str	r0, [fp, #-16]
800204f4:	e3a03000 	mov	r3, #0
800204f8:	e50b3008 	str	r3, [fp, #-8]
800204fc:	ea000002 	b	8002050c <strlen+0x28>
80020500:	e51b3008 	ldr	r3, [fp, #-8]
80020504:	e2833001 	add	r3, r3, #1
80020508:	e50b3008 	str	r3, [fp, #-8]
8002050c:	e51b3008 	ldr	r3, [fp, #-8]
80020510:	e51b2010 	ldr	r2, [fp, #-16]
80020514:	e0823003 	add	r3, r2, r3
80020518:	e5d33000 	ldrb	r3, [r3]
8002051c:	e3530000 	cmp	r3, #0
80020520:	1afffff6 	bne	80020500 <strlen+0x1c>
80020524:	e51b3008 	ldr	r3, [fp, #-8]
80020528:	e1a00003 	mov	r0, r3
8002052c:	e28bd000 	add	sp, fp, #0
80020530:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020534:	e12fff1e 	bx	lr

80020538 <cli>:
80020538:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002053c:	e28db000 	add	fp, sp, #0
80020540:	e24dd00c 	sub	sp, sp, #12
80020544:	e10f3000 	mrs	r3, CPSR
80020548:	e50b3008 	str	r3, [fp, #-8]
8002054c:	e51b3008 	ldr	r3, [fp, #-8]
80020550:	e3833080 	orr	r3, r3, #128	; 0x80
80020554:	e50b3008 	str	r3, [fp, #-8]
80020558:	e51b3008 	ldr	r3, [fp, #-8]
8002055c:	e12ff003 	msr	CPSR_fsxc, r3
80020560:	e1a00000 	nop			; (mov r0, r0)
80020564:	e28bd000 	add	sp, fp, #0
80020568:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8002056c:	e12fff1e 	bx	lr

80020570 <sti>:
80020570:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020574:	e28db000 	add	fp, sp, #0
80020578:	e24dd00c 	sub	sp, sp, #12
8002057c:	e10f3000 	mrs	r3, CPSR
80020580:	e50b3008 	str	r3, [fp, #-8]
80020584:	e51b3008 	ldr	r3, [fp, #-8]
80020588:	e3c33080 	bic	r3, r3, #128	; 0x80
8002058c:	e50b3008 	str	r3, [fp, #-8]
80020590:	e51b3008 	ldr	r3, [fp, #-8]
80020594:	e12ff003 	msr	CPSR_fsxc, r3
80020598:	e1a00000 	nop			; (mov r0, r0)
8002059c:	e28bd000 	add	sp, fp, #0
800205a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800205a4:	e12fff1e 	bx	lr

800205a8 <spsr_usr>:
800205a8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800205ac:	e28db000 	add	fp, sp, #0
800205b0:	e24dd00c 	sub	sp, sp, #12
800205b4:	e10f3000 	mrs	r3, CPSR
800205b8:	e50b3008 	str	r3, [fp, #-8]
800205bc:	e51b3008 	ldr	r3, [fp, #-8]
800205c0:	e3c3301f 	bic	r3, r3, #31
800205c4:	e50b3008 	str	r3, [fp, #-8]
800205c8:	e51b3008 	ldr	r3, [fp, #-8]
800205cc:	e3833010 	orr	r3, r3, #16
800205d0:	e50b3008 	str	r3, [fp, #-8]
800205d4:	e51b3008 	ldr	r3, [fp, #-8]
800205d8:	e1a00003 	mov	r0, r3
800205dc:	e28bd000 	add	sp, fp, #0
800205e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800205e4:	e12fff1e 	bx	lr

800205e8 <int_enabled>:
800205e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800205ec:	e28db000 	add	fp, sp, #0
800205f0:	e24dd00c 	sub	sp, sp, #12
800205f4:	e10f3000 	mrs	r3, CPSR
800205f8:	e50b3008 	str	r3, [fp, #-8]
800205fc:	e51b3008 	ldr	r3, [fp, #-8]
80020600:	e2033080 	and	r3, r3, #128	; 0x80
80020604:	e3530000 	cmp	r3, #0
80020608:	03a03001 	moveq	r3, #1
8002060c:	13a03000 	movne	r3, #0
80020610:	e6ef3073 	uxtb	r3, r3
80020614:	e1a00003 	mov	r0, r3
80020618:	e28bd000 	add	sp, fp, #0
8002061c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020620:	e12fff1e 	bx	lr

80020624 <pushcli>:
80020624:	e92d4800 	push	{fp, lr}
80020628:	e28db004 	add	fp, sp, #4
8002062c:	e24dd008 	sub	sp, sp, #8
80020630:	ebffffec 	bl	800205e8 <int_enabled>
80020634:	e50b0008 	str	r0, [fp, #-8]
80020638:	ebffffbe 	bl	80020538 <cli>
8002063c:	e59f3030 	ldr	r3, [pc, #48]	; 80020674 <pushcli+0x50>
80020640:	e5932000 	ldr	r2, [r3]
80020644:	e592300c 	ldr	r3, [r2, #12]
80020648:	e2831001 	add	r1, r3, #1
8002064c:	e582100c 	str	r1, [r2, #12]
80020650:	e3530000 	cmp	r3, #0
80020654:	1a000003 	bne	80020668 <pushcli+0x44>
80020658:	e59f3014 	ldr	r3, [pc, #20]	; 80020674 <pushcli+0x50>
8002065c:	e5933000 	ldr	r3, [r3]
80020660:	e51b2008 	ldr	r2, [fp, #-8]
80020664:	e5832010 	str	r2, [r3, #16]
80020668:	e1a00000 	nop			; (mov r0, r0)
8002066c:	e24bd004 	sub	sp, fp, #4
80020670:	e8bd8800 	pop	{fp, pc}
80020674:	800ae52c 	.word	0x800ae52c

80020678 <popcli>:
80020678:	e92d4800 	push	{fp, lr}
8002067c:	e28db004 	add	fp, sp, #4
80020680:	ebffffd8 	bl	800205e8 <int_enabled>
80020684:	e1a03000 	mov	r3, r0
80020688:	e3530000 	cmp	r3, #0
8002068c:	0a000001 	beq	80020698 <popcli+0x20>
80020690:	e59f007c 	ldr	r0, [pc, #124]	; 80020714 <popcli+0x9c>
80020694:	eb000529 	bl	80021b40 <panic>
80020698:	e59f3078 	ldr	r3, [pc, #120]	; 80020718 <popcli+0xa0>
8002069c:	e5933000 	ldr	r3, [r3]
800206a0:	e593200c 	ldr	r2, [r3, #12]
800206a4:	e2422001 	sub	r2, r2, #1
800206a8:	e583200c 	str	r2, [r3, #12]
800206ac:	e593300c 	ldr	r3, [r3, #12]
800206b0:	e3530000 	cmp	r3, #0
800206b4:	aa000009 	bge	800206e0 <popcli+0x68>
800206b8:	e59f3058 	ldr	r3, [pc, #88]	; 80020718 <popcli+0xa0>
800206bc:	e5931000 	ldr	r1, [r3]
800206c0:	e59f3050 	ldr	r3, [pc, #80]	; 80020718 <popcli+0xa0>
800206c4:	e5933000 	ldr	r3, [r3]
800206c8:	e593300c 	ldr	r3, [r3, #12]
800206cc:	e1a02003 	mov	r2, r3
800206d0:	e59f0044 	ldr	r0, [pc, #68]	; 8002071c <popcli+0xa4>
800206d4:	eb000498 	bl	8002193c <cprintf>
800206d8:	e59f0040 	ldr	r0, [pc, #64]	; 80020720 <popcli+0xa8>
800206dc:	eb000517 	bl	80021b40 <panic>
800206e0:	e59f3030 	ldr	r3, [pc, #48]	; 80020718 <popcli+0xa0>
800206e4:	e5933000 	ldr	r3, [r3]
800206e8:	e593300c 	ldr	r3, [r3, #12]
800206ec:	e3530000 	cmp	r3, #0
800206f0:	1a000005 	bne	8002070c <popcli+0x94>
800206f4:	e59f301c 	ldr	r3, [pc, #28]	; 80020718 <popcli+0xa0>
800206f8:	e5933000 	ldr	r3, [r3]
800206fc:	e5933010 	ldr	r3, [r3, #16]
80020700:	e3530000 	cmp	r3, #0
80020704:	0a000000 	beq	8002070c <popcli+0x94>
80020708:	ebffff98 	bl	80020570 <sti>
8002070c:	e1a00000 	nop			; (mov r0, r0)
80020710:	e8bd8800 	pop	{fp, pc}
80020714:	8002a01c 	.word	0x8002a01c
80020718:	800ae52c 	.word	0x800ae52c
8002071c:	8002a034 	.word	0x8002a034
80020720:	8002a048 	.word	0x8002a048

80020724 <getcallerpcs>:
80020724:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020728:	e28db000 	add	fp, sp, #0
8002072c:	e24dd014 	sub	sp, sp, #20
80020730:	e50b0010 	str	r0, [fp, #-16]
80020734:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80020738:	e51b3010 	ldr	r3, [fp, #-16]
8002073c:	e50b3008 	str	r3, [fp, #-8]
80020740:	e3a03000 	mov	r3, #0
80020744:	e50b300c 	str	r3, [fp, #-12]
80020748:	ea000018 	b	800207b0 <getcallerpcs+0x8c>
8002074c:	e51b3008 	ldr	r3, [fp, #-8]
80020750:	e3530000 	cmp	r3, #0
80020754:	0a000022 	beq	800207e4 <getcallerpcs+0xc0>
80020758:	e51b3008 	ldr	r3, [fp, #-8]
8002075c:	e3730106 	cmn	r3, #-2147483647	; 0x80000001
80020760:	9a00001f 	bls	800207e4 <getcallerpcs+0xc0>
80020764:	e51b3008 	ldr	r3, [fp, #-8]
80020768:	e3730001 	cmn	r3, #1
8002076c:	0a00001c 	beq	800207e4 <getcallerpcs+0xc0>
80020770:	e51b3008 	ldr	r3, [fp, #-8]
80020774:	e2433004 	sub	r3, r3, #4
80020778:	e50b3008 	str	r3, [fp, #-8]
8002077c:	e51b300c 	ldr	r3, [fp, #-12]
80020780:	e1a03103 	lsl	r3, r3, #2
80020784:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80020788:	e0823003 	add	r3, r2, r3
8002078c:	e51b2008 	ldr	r2, [fp, #-8]
80020790:	e5922004 	ldr	r2, [r2, #4]
80020794:	e5832000 	str	r2, [r3]
80020798:	e51b3008 	ldr	r3, [fp, #-8]
8002079c:	e5933000 	ldr	r3, [r3]
800207a0:	e50b3008 	str	r3, [fp, #-8]
800207a4:	e51b300c 	ldr	r3, [fp, #-12]
800207a8:	e2833001 	add	r3, r3, #1
800207ac:	e50b300c 	str	r3, [fp, #-12]
800207b0:	e51b300c 	ldr	r3, [fp, #-12]
800207b4:	e353000e 	cmp	r3, #14
800207b8:	daffffe3 	ble	8002074c <getcallerpcs+0x28>
800207bc:	ea000008 	b	800207e4 <getcallerpcs+0xc0>
800207c0:	e51b300c 	ldr	r3, [fp, #-12]
800207c4:	e1a03103 	lsl	r3, r3, #2
800207c8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800207cc:	e0823003 	add	r3, r2, r3
800207d0:	e3a02000 	mov	r2, #0
800207d4:	e5832000 	str	r2, [r3]
800207d8:	e51b300c 	ldr	r3, [fp, #-12]
800207dc:	e2833001 	add	r3, r3, #1
800207e0:	e50b300c 	str	r3, [fp, #-12]
800207e4:	e51b300c 	ldr	r3, [fp, #-12]
800207e8:	e353000e 	cmp	r3, #14
800207ec:	dafffff3 	ble	800207c0 <getcallerpcs+0x9c>
800207f0:	e1a00000 	nop			; (mov r0, r0)
800207f4:	e28bd000 	add	sp, fp, #0
800207f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800207fc:	e12fff1e 	bx	lr

80020800 <show_callstk>:
80020800:	e92d4800 	push	{fp, lr}
80020804:	e28db004 	add	fp, sp, #4
80020808:	e24dd048 	sub	sp, sp, #72	; 0x48
8002080c:	e50b0048 	str	r0, [fp, #-72]	; 0xffffffb8
80020810:	e51b1048 	ldr	r1, [fp, #-72]	; 0xffffffb8
80020814:	e59f0070 	ldr	r0, [pc, #112]	; 8002088c <show_callstk+0x8c>
80020818:	eb000447 	bl	8002193c <cprintf>
8002081c:	eb000025 	bl	800208b8 <get_fp>
80020820:	e1a02000 	mov	r2, r0
80020824:	e24b3044 	sub	r3, fp, #68	; 0x44
80020828:	e1a01003 	mov	r1, r3
8002082c:	e1a00002 	mov	r0, r2
80020830:	ebffffbb 	bl	80020724 <getcallerpcs>
80020834:	e3a0300e 	mov	r3, #14
80020838:	e50b3008 	str	r3, [fp, #-8]
8002083c:	ea00000c 	b	80020874 <show_callstk+0x74>
80020840:	e51b3008 	ldr	r3, [fp, #-8]
80020844:	e2831001 	add	r1, r3, #1
80020848:	e51b3008 	ldr	r3, [fp, #-8]
8002084c:	e1a03103 	lsl	r3, r3, #2
80020850:	e24b2004 	sub	r2, fp, #4
80020854:	e0823003 	add	r3, r2, r3
80020858:	e5133040 	ldr	r3, [r3, #-64]	; 0xffffffc0
8002085c:	e1a02003 	mov	r2, r3
80020860:	e59f0028 	ldr	r0, [pc, #40]	; 80020890 <show_callstk+0x90>
80020864:	eb000434 	bl	8002193c <cprintf>
80020868:	e51b3008 	ldr	r3, [fp, #-8]
8002086c:	e2433001 	sub	r3, r3, #1
80020870:	e50b3008 	str	r3, [fp, #-8]
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e3530000 	cmp	r3, #0
8002087c:	aaffffef 	bge	80020840 <show_callstk+0x40>
80020880:	e1a00000 	nop			; (mov r0, r0)
80020884:	e24bd004 	sub	sp, fp, #4
80020888:	e8bd8800 	pop	{fp, pc}
8002088c:	8002a05c 	.word	0x8002a05c
80020890:	8002a060 	.word	0x8002a060

80020894 <set_stk>:
80020894:	e10f2000 	mrs	r2, CPSR
80020898:	e3c2201f 	bic	r2, r2, #31
8002089c:	e1822000 	orr	r2, r2, r0
800208a0:	e12ff002 	msr	CPSR_fsxc, r2
800208a4:	e1a0d001 	mov	sp, r1
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e3822013 	orr	r2, r2, #19
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e12fff1e 	bx	lr

800208b8 <get_fp>:
800208b8:	e1a0000b 	mov	r0, fp
800208bc:	e12fff1e 	bx	lr

800208c0 <binit>:
800208c0:	e92d4800 	push	{fp, lr}
800208c4:	e28db004 	add	fp, sp, #4
800208c8:	e24dd008 	sub	sp, sp, #8
800208cc:	e59f10b4 	ldr	r1, [pc, #180]	; 80020988 <binit+0xc8>
800208d0:	e59f00b4 	ldr	r0, [pc, #180]	; 8002098c <binit+0xcc>
800208d4:	eb001535 	bl	80025db0 <initlock>
800208d8:	e59f30ac 	ldr	r3, [pc, #172]	; 8002098c <binit+0xcc>
800208dc:	e2833a01 	add	r3, r3, #4096	; 0x1000
800208e0:	e1a02003 	mov	r2, r3
800208e4:	e59f30a4 	ldr	r3, [pc, #164]	; 80020990 <binit+0xd0>
800208e8:	e5823530 	str	r3, [r2, #1328]	; 0x530
800208ec:	e59f3098 	ldr	r3, [pc, #152]	; 8002098c <binit+0xcc>
800208f0:	e2833a01 	add	r3, r3, #4096	; 0x1000
800208f4:	e1a02003 	mov	r2, r3
800208f8:	e59f3090 	ldr	r3, [pc, #144]	; 80020990 <binit+0xd0>
800208fc:	e5823534 	str	r3, [r2, #1332]	; 0x534
80020900:	e59f308c 	ldr	r3, [pc, #140]	; 80020994 <binit+0xd4>
80020904:	e50b3008 	str	r3, [fp, #-8]
80020908:	ea000017 	b	8002096c <binit+0xac>
8002090c:	e59f3078 	ldr	r3, [pc, #120]	; 8002098c <binit+0xcc>
80020910:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020914:	e5932534 	ldr	r2, [r3, #1332]	; 0x534
80020918:	e51b3008 	ldr	r3, [fp, #-8]
8002091c:	e5832010 	str	r2, [r3, #16]
80020920:	e51b3008 	ldr	r3, [fp, #-8]
80020924:	e59f2064 	ldr	r2, [pc, #100]	; 80020990 <binit+0xd0>
80020928:	e583200c 	str	r2, [r3, #12]
8002092c:	e51b3008 	ldr	r3, [fp, #-8]
80020930:	e3e02000 	mvn	r2, #0
80020934:	e5832004 	str	r2, [r3, #4]
80020938:	e59f304c 	ldr	r3, [pc, #76]	; 8002098c <binit+0xcc>
8002093c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020940:	e5933534 	ldr	r3, [r3, #1332]	; 0x534
80020944:	e51b2008 	ldr	r2, [fp, #-8]
80020948:	e583200c 	str	r2, [r3, #12]
8002094c:	e59f3038 	ldr	r3, [pc, #56]	; 8002098c <binit+0xcc>
80020950:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020954:	e1a02003 	mov	r2, r3
80020958:	e51b3008 	ldr	r3, [fp, #-8]
8002095c:	e5823534 	str	r3, [r2, #1332]	; 0x534
80020960:	e51b3008 	ldr	r3, [fp, #-8]
80020964:	e2833f86 	add	r3, r3, #536	; 0x218
80020968:	e50b3008 	str	r3, [fp, #-8]
8002096c:	e59f201c 	ldr	r2, [pc, #28]	; 80020990 <binit+0xd0>
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e1530002 	cmp	r3, r2
80020978:	3affffe3 	bcc	8002090c <binit+0x4c>
8002097c:	e1a00000 	nop			; (mov r0, r0)
80020980:	e24bd004 	sub	sp, fp, #4
80020984:	e8bd8800 	pop	{fp, pc}
80020988:	8002a06c 	.word	0x8002a06c
8002098c:	800ab0d4 	.word	0x800ab0d4
80020990:	800ac5f8 	.word	0x800ac5f8
80020994:	800ab108 	.word	0x800ab108

80020998 <bget>:
80020998:	e92d4800 	push	{fp, lr}
8002099c:	e28db004 	add	fp, sp, #4
800209a0:	e24dd010 	sub	sp, sp, #16
800209a4:	e50b0010 	str	r0, [fp, #-16]
800209a8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800209ac:	e59f0140 	ldr	r0, [pc, #320]	; 80020af4 <bget+0x15c>
800209b0:	eb001510 	bl	80025df8 <acquire>
800209b4:	e59f3138 	ldr	r3, [pc, #312]	; 80020af4 <bget+0x15c>
800209b8:	e2833a01 	add	r3, r3, #4096	; 0x1000
800209bc:	e5933534 	ldr	r3, [r3, #1332]	; 0x534
800209c0:	e50b3008 	str	r3, [fp, #-8]
800209c4:	ea00001e 	b	80020a44 <bget+0xac>
800209c8:	e51b3008 	ldr	r3, [fp, #-8]
800209cc:	e5933004 	ldr	r3, [r3, #4]
800209d0:	e51b2010 	ldr	r2, [fp, #-16]
800209d4:	e1520003 	cmp	r2, r3
800209d8:	1a000016 	bne	80020a38 <bget+0xa0>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933008 	ldr	r3, [r3, #8]
800209e4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000011 	bne	80020a38 <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933000 	ldr	r3, [r3]
800209f8:	e2033001 	and	r3, r3, #1
800209fc:	e3530000 	cmp	r3, #0
80020a00:	1a000008 	bne	80020a28 <bget+0x90>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e3832001 	orr	r2, r3, #1
80020a10:	e51b3008 	ldr	r3, [fp, #-8]
80020a14:	e5832000 	str	r2, [r3]
80020a18:	e59f00d4 	ldr	r0, [pc, #212]	; 80020af4 <bget+0x15c>
80020a1c:	eb001500 	bl	80025e24 <release>
80020a20:	e51b3008 	ldr	r3, [fp, #-8]
80020a24:	ea00002f 	b	80020ae8 <bget+0x150>
80020a28:	e59f10c4 	ldr	r1, [pc, #196]	; 80020af4 <bget+0x15c>
80020a2c:	e51b0008 	ldr	r0, [fp, #-8]
80020a30:	eb0013a1 	bl	800258bc <sleep>
80020a34:	eaffffde 	b	800209b4 <bget+0x1c>
80020a38:	e51b3008 	ldr	r3, [fp, #-8]
80020a3c:	e5933010 	ldr	r3, [r3, #16]
80020a40:	e50b3008 	str	r3, [fp, #-8]
80020a44:	e51b3008 	ldr	r3, [fp, #-8]
80020a48:	e59f20a8 	ldr	r2, [pc, #168]	; 80020af8 <bget+0x160>
80020a4c:	e1530002 	cmp	r3, r2
80020a50:	1affffdc 	bne	800209c8 <bget+0x30>
80020a54:	e59f3098 	ldr	r3, [pc, #152]	; 80020af4 <bget+0x15c>
80020a58:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020a5c:	e5933530 	ldr	r3, [r3, #1328]	; 0x530
80020a60:	e50b3008 	str	r3, [fp, #-8]
80020a64:	ea000019 	b	80020ad0 <bget+0x138>
80020a68:	e51b3008 	ldr	r3, [fp, #-8]
80020a6c:	e5933000 	ldr	r3, [r3]
80020a70:	e2033001 	and	r3, r3, #1
80020a74:	e3530000 	cmp	r3, #0
80020a78:	1a000011 	bne	80020ac4 <bget+0x12c>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033004 	and	r3, r3, #4
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a00000c 	bne	80020ac4 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e51b2010 	ldr	r2, [fp, #-16]
80020a98:	e5832004 	str	r2, [r3, #4]
80020a9c:	e51b3008 	ldr	r3, [fp, #-8]
80020aa0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80020aa4:	e5832008 	str	r2, [r3, #8]
80020aa8:	e51b3008 	ldr	r3, [fp, #-8]
80020aac:	e3a02001 	mov	r2, #1
80020ab0:	e5832000 	str	r2, [r3]
80020ab4:	e59f0038 	ldr	r0, [pc, #56]	; 80020af4 <bget+0x15c>
80020ab8:	eb0014d9 	bl	80025e24 <release>
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	ea000008 	b	80020ae8 <bget+0x150>
80020ac4:	e51b3008 	ldr	r3, [fp, #-8]
80020ac8:	e593300c 	ldr	r3, [r3, #12]
80020acc:	e50b3008 	str	r3, [fp, #-8]
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	e59f201c 	ldr	r2, [pc, #28]	; 80020af8 <bget+0x160>
80020ad8:	e1530002 	cmp	r3, r2
80020adc:	1affffe1 	bne	80020a68 <bget+0xd0>
80020ae0:	e59f0014 	ldr	r0, [pc, #20]	; 80020afc <bget+0x164>
80020ae4:	eb000415 	bl	80021b40 <panic>
80020ae8:	e1a00003 	mov	r0, r3
80020aec:	e24bd004 	sub	sp, fp, #4
80020af0:	e8bd8800 	pop	{fp, pc}
80020af4:	800ab0d4 	.word	0x800ab0d4
80020af8:	800ac5f8 	.word	0x800ac5f8
80020afc:	8002a074 	.word	0x8002a074

80020b00 <bread>:
80020b00:	e92d4800 	push	{fp, lr}
80020b04:	e28db004 	add	fp, sp, #4
80020b08:	e24dd010 	sub	sp, sp, #16
80020b0c:	e50b0010 	str	r0, [fp, #-16]
80020b10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80020b14:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80020b18:	e51b0010 	ldr	r0, [fp, #-16]
80020b1c:	ebffff9d 	bl	80020998 <bget>
80020b20:	e50b0008 	str	r0, [fp, #-8]
80020b24:	e51b3008 	ldr	r3, [fp, #-8]
80020b28:	e5933000 	ldr	r3, [r3]
80020b2c:	e2033002 	and	r3, r3, #2
80020b30:	e3530000 	cmp	r3, #0
80020b34:	1a000001 	bne	80020b40 <bread+0x40>
80020b38:	e51b0008 	ldr	r0, [fp, #-8]
80020b3c:	eb000f19 	bl	800247a8 <iderw>
80020b40:	e51b3008 	ldr	r3, [fp, #-8]
80020b44:	e1a00003 	mov	r0, r3
80020b48:	e24bd004 	sub	sp, fp, #4
80020b4c:	e8bd8800 	pop	{fp, pc}

80020b50 <bwrite>:
80020b50:	e92d4800 	push	{fp, lr}
80020b54:	e28db004 	add	fp, sp, #4
80020b58:	e24dd008 	sub	sp, sp, #8
80020b5c:	e50b0008 	str	r0, [fp, #-8]
80020b60:	e51b3008 	ldr	r3, [fp, #-8]
80020b64:	e5933000 	ldr	r3, [r3]
80020b68:	e2033001 	and	r3, r3, #1
80020b6c:	e3530000 	cmp	r3, #0
80020b70:	1a000001 	bne	80020b7c <bwrite+0x2c>
80020b74:	e59f0028 	ldr	r0, [pc, #40]	; 80020ba4 <bwrite+0x54>
80020b78:	eb0003f0 	bl	80021b40 <panic>
80020b7c:	e51b3008 	ldr	r3, [fp, #-8]
80020b80:	e5933000 	ldr	r3, [r3]
80020b84:	e3832004 	orr	r2, r3, #4
80020b88:	e51b3008 	ldr	r3, [fp, #-8]
80020b8c:	e5832000 	str	r2, [r3]
80020b90:	e51b0008 	ldr	r0, [fp, #-8]
80020b94:	eb000f03 	bl	800247a8 <iderw>
80020b98:	e1a00000 	nop			; (mov r0, r0)
80020b9c:	e24bd004 	sub	sp, fp, #4
80020ba0:	e8bd8800 	pop	{fp, pc}
80020ba4:	8002a088 	.word	0x8002a088

80020ba8 <brelse>:
80020ba8:	e92d4800 	push	{fp, lr}
80020bac:	e28db004 	add	fp, sp, #4
80020bb0:	e24dd008 	sub	sp, sp, #8
80020bb4:	e50b0008 	str	r0, [fp, #-8]
80020bb8:	e51b3008 	ldr	r3, [fp, #-8]
80020bbc:	e5933000 	ldr	r3, [r3]
80020bc0:	e2033001 	and	r3, r3, #1
80020bc4:	e3530000 	cmp	r3, #0
80020bc8:	1a000001 	bne	80020bd4 <brelse+0x2c>
80020bcc:	e59f00a8 	ldr	r0, [pc, #168]	; 80020c7c <brelse+0xd4>
80020bd0:	eb0003da 	bl	80021b40 <panic>
80020bd4:	e59f00a4 	ldr	r0, [pc, #164]	; 80020c80 <brelse+0xd8>
80020bd8:	eb001486 	bl	80025df8 <acquire>
80020bdc:	e51b3008 	ldr	r3, [fp, #-8]
80020be0:	e5933010 	ldr	r3, [r3, #16]
80020be4:	e51b2008 	ldr	r2, [fp, #-8]
80020be8:	e592200c 	ldr	r2, [r2, #12]
80020bec:	e583200c 	str	r2, [r3, #12]
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e593300c 	ldr	r3, [r3, #12]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e5922010 	ldr	r2, [r2, #16]
80020c00:	e5832010 	str	r2, [r3, #16]
80020c04:	e59f3074 	ldr	r3, [pc, #116]	; 80020c80 <brelse+0xd8>
80020c08:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020c0c:	e5932534 	ldr	r2, [r3, #1332]	; 0x534
80020c10:	e51b3008 	ldr	r3, [fp, #-8]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e51b3008 	ldr	r3, [fp, #-8]
80020c1c:	e59f2060 	ldr	r2, [pc, #96]	; 80020c84 <brelse+0xdc>
80020c20:	e583200c 	str	r2, [r3, #12]
80020c24:	e59f3054 	ldr	r3, [pc, #84]	; 80020c80 <brelse+0xd8>
80020c28:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020c2c:	e5933534 	ldr	r3, [r3, #1332]	; 0x534
80020c30:	e51b2008 	ldr	r2, [fp, #-8]
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3040 	ldr	r3, [pc, #64]	; 80020c80 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020c40:	e1a02003 	mov	r2, r3
80020c44:	e51b3008 	ldr	r3, [fp, #-8]
80020c48:	e5823534 	str	r3, [r2, #1332]	; 0x534
80020c4c:	e51b3008 	ldr	r3, [fp, #-8]
80020c50:	e5933000 	ldr	r3, [r3]
80020c54:	e3c32001 	bic	r2, r3, #1
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5832000 	str	r2, [r3]
80020c60:	e51b0008 	ldr	r0, [fp, #-8]
80020c64:	eb001368 	bl	80025a0c <wakeup>
80020c68:	e59f0010 	ldr	r0, [pc, #16]	; 80020c80 <brelse+0xd8>
80020c6c:	eb00146c 	bl	80025e24 <release>
80020c70:	e1a00000 	nop			; (mov r0, r0)
80020c74:	e24bd004 	sub	sp, fp, #4
80020c78:	e8bd8800 	pop	{fp, pc}
80020c7c:	8002a090 	.word	0x8002a090
80020c80:	800ab0d4 	.word	0x800ab0d4
80020c84:	800ac5f8 	.word	0x800ac5f8

80020c88 <get_mark>:
80020c88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020c8c:	e28db000 	add	fp, sp, #0
80020c90:	e24dd00c 	sub	sp, sp, #12
80020c94:	e50b0008 	str	r0, [fp, #-8]
80020c98:	e50b100c 	str	r1, [fp, #-12]
80020c9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ca0:	e2433006 	sub	r3, r3, #6
80020ca4:	e59f2034 	ldr	r2, [pc, #52]	; 80020ce0 <get_mark+0x58>
80020ca8:	e2833008 	add	r3, r3, #8
80020cac:	e1a03183 	lsl	r3, r3, #3
80020cb0:	e0823003 	add	r3, r2, r3
80020cb4:	e5932004 	ldr	r2, [r3, #4]
80020cb8:	e51b300c 	ldr	r3, [fp, #-12]
80020cbc:	e0823003 	add	r3, r2, r3
80020cc0:	e1a02183 	lsl	r2, r3, #3
80020cc4:	e59f3014 	ldr	r3, [pc, #20]	; 80020ce0 <get_mark+0x58>
80020cc8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80020ccc:	e0823003 	add	r3, r2, r3
80020cd0:	e1a00003 	mov	r0, r3
80020cd4:	e28bd000 	add	sp, fp, #0
80020cd8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020cdc:	e12fff1e 	bx	lr
80020ce0:	800ac810 	.word	0x800ac810

80020ce4 <blkid2mem>:
80020ce4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020ce8:	e28db000 	add	fp, sp, #0
80020cec:	e24dd00c 	sub	sp, sp, #12
80020cf0:	e50b0008 	str	r0, [fp, #-8]
80020cf4:	e50b100c 	str	r1, [fp, #-12]
80020cf8:	e59f3020 	ldr	r3, [pc, #32]	; 80020d20 <blkid2mem+0x3c>
80020cfc:	e5933038 	ldr	r3, [r3, #56]	; 0x38
80020d00:	e51b100c 	ldr	r1, [fp, #-12]
80020d04:	e51b2008 	ldr	r2, [fp, #-8]
80020d08:	e1a02211 	lsl	r2, r1, r2
80020d0c:	e0833002 	add	r3, r3, r2
80020d10:	e1a00003 	mov	r0, r3
80020d14:	e28bd000 	add	sp, fp, #0
80020d18:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020d1c:	e12fff1e 	bx	lr
80020d20:	800ac810 	.word	0x800ac810

80020d24 <mem2blkid>:
80020d24:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020d28:	e28db000 	add	fp, sp, #0
80020d2c:	e24dd00c 	sub	sp, sp, #12
80020d30:	e50b0008 	str	r0, [fp, #-8]
80020d34:	e50b100c 	str	r1, [fp, #-12]
80020d38:	e51b200c 	ldr	r2, [fp, #-12]
80020d3c:	e59f301c 	ldr	r3, [pc, #28]	; 80020d60 <mem2blkid+0x3c>
80020d40:	e5933038 	ldr	r3, [r3, #56]	; 0x38
80020d44:	e0422003 	sub	r2, r2, r3
80020d48:	e51b3008 	ldr	r3, [fp, #-8]
80020d4c:	e1a03332 	lsr	r3, r2, r3
80020d50:	e1a00003 	mov	r0, r3
80020d54:	e28bd000 	add	sp, fp, #0
80020d58:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020d5c:	e12fff1e 	bx	lr
80020d60:	800ac810 	.word	0x800ac810

80020d64 <available>:
80020d64:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80020d68:	e28db000 	add	fp, sp, #0
80020d6c:	e24dd00c 	sub	sp, sp, #12
80020d70:	e50b0008 	str	r0, [fp, #-8]
80020d74:	e50b100c 	str	r1, [fp, #-12]
80020d78:	e51b300c 	ldr	r3, [fp, #-12]
80020d7c:	e203301f 	and	r3, r3, #31
80020d80:	e3a02001 	mov	r2, #1
80020d84:	e1a03312 	lsl	r3, r2, r3
80020d88:	e1a02003 	mov	r2, r3
80020d8c:	e51b3008 	ldr	r3, [fp, #-8]
80020d90:	e0033002 	and	r3, r3, r2
80020d94:	e1a00003 	mov	r0, r3
80020d98:	e28bd000 	add	sp, fp, #0
80020d9c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80020da0:	e12fff1e 	bx	lr

80020da4 <kmem_init>:
80020da4:	e92d4800 	push	{fp, lr}
80020da8:	e28db004 	add	fp, sp, #4
80020dac:	e59f100c 	ldr	r1, [pc, #12]	; 80020dc0 <kmem_init+0x1c>
80020db0:	e59f000c 	ldr	r0, [pc, #12]	; 80020dc4 <kmem_init+0x20>
80020db4:	eb0013fd 	bl	80025db0 <initlock>
80020db8:	e1a00000 	nop			; (mov r0, r0)
80020dbc:	e8bd8800 	pop	{fp, pc}
80020dc0:	8002a098 	.word	0x8002a098
80020dc4:	800ac810 	.word	0x800ac810

80020dc8 <kmem_init2>:
80020dc8:	e92d4800 	push	{fp, lr}
80020dcc:	e28db004 	add	fp, sp, #4
80020dd0:	e24dd028 	sub	sp, sp, #40	; 0x28
80020dd4:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80020dd8:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
80020ddc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80020de0:	e59f2178 	ldr	r2, [pc, #376]	; 80020f60 <kmem_init2+0x198>
80020de4:	e5823034 	str	r3, [r2, #52]	; 0x34
80020de8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80020dec:	e59f216c 	ldr	r2, [pc, #364]	; 80020f60 <kmem_init2+0x198>
80020df0:	e582303c 	str	r3, [r2, #60]	; 0x3c
80020df4:	e59f3164 	ldr	r3, [pc, #356]	; 80020f60 <kmem_init2+0x198>
80020df8:	e593203c 	ldr	r2, [r3, #60]	; 0x3c
80020dfc:	e59f315c 	ldr	r3, [pc, #348]	; 80020f60 <kmem_init2+0x198>
80020e00:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80020e04:	e0423003 	sub	r3, r2, r3
80020e08:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80020e0c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80020e10:	e1a038a3 	lsr	r3, r3, #17
80020e14:	e2833001 	add	r3, r3, #1
80020e18:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020e1c:	e3a03000 	mov	r3, #0
80020e20:	e50b3010 	str	r3, [fp, #-16]
80020e24:	e3a03006 	mov	r3, #6
80020e28:	e50b3008 	str	r3, [fp, #-8]
80020e2c:	ea00002a 	b	80020edc <kmem_init2+0x114>
80020e30:	e51b3008 	ldr	r3, [fp, #-8]
80020e34:	e1a03183 	lsl	r3, r3, #3
80020e38:	e59f2124 	ldr	r2, [pc, #292]	; 80020f64 <kmem_init2+0x19c>
80020e3c:	e0833002 	add	r3, r3, r2
80020e40:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80020e44:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80020e48:	e51b2010 	ldr	r2, [fp, #-16]
80020e4c:	e5832004 	str	r2, [r3, #4]
80020e50:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80020e54:	e59f210c 	ldr	r2, [pc, #268]	; 80020f68 <kmem_init2+0x1a0>
80020e58:	e5832000 	str	r2, [r3]
80020e5c:	e3a03000 	mov	r3, #0
80020e60:	e50b300c 	str	r3, [fp, #-12]
80020e64:	ea00000e 	b	80020ea4 <kmem_init2+0xdc>
80020e68:	e51b3008 	ldr	r3, [fp, #-8]
80020e6c:	e2833006 	add	r3, r3, #6
80020e70:	e51b100c 	ldr	r1, [fp, #-12]
80020e74:	e1a00003 	mov	r0, r3
80020e78:	ebffff82 	bl	80020c88 <get_mark>
80020e7c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80020e80:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020e84:	e3e02000 	mvn	r2, #0
80020e88:	e5832000 	str	r2, [r3]
80020e8c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020e90:	e3a02000 	mov	r2, #0
80020e94:	e5832004 	str	r2, [r3, #4]
80020e98:	e51b300c 	ldr	r3, [fp, #-12]
80020e9c:	e2833001 	add	r3, r3, #1
80020ea0:	e50b300c 	str	r3, [fp, #-12]
80020ea4:	e51b300c 	ldr	r3, [fp, #-12]
80020ea8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80020eac:	e1520003 	cmp	r2, r3
80020eb0:	8affffec 	bhi	80020e68 <kmem_init2+0xa0>
80020eb4:	e51b2010 	ldr	r2, [fp, #-16]
80020eb8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020ebc:	e0823003 	add	r3, r2, r3
80020ec0:	e50b3010 	str	r3, [fp, #-16]
80020ec4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80020ec8:	e1a03083 	lsl	r3, r3, #1
80020ecc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80020ed0:	e51b3008 	ldr	r3, [fp, #-8]
80020ed4:	e2433001 	sub	r3, r3, #1
80020ed8:	e50b3008 	str	r3, [fp, #-8]
80020edc:	e51b3008 	ldr	r3, [fp, #-8]
80020ee0:	e3530000 	cmp	r3, #0
80020ee4:	aaffffd1 	bge	80020e30 <kmem_init2+0x68>
80020ee8:	e59f3070 	ldr	r3, [pc, #112]	; 80020f60 <kmem_init2+0x198>
80020eec:	e5932034 	ldr	r2, [r3, #52]	; 0x34
80020ef0:	e51b3010 	ldr	r3, [fp, #-16]
80020ef4:	e1a03183 	lsl	r3, r3, #3
80020ef8:	e0823003 	add	r3, r2, r3
80020efc:	e2833eff 	add	r3, r3, #4080	; 0xff0
80020f00:	e283300f 	add	r3, r3, #15
80020f04:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80020f08:	e3c3300f 	bic	r3, r3, #15
80020f0c:	e59f204c 	ldr	r2, [pc, #76]	; 80020f60 <kmem_init2+0x198>
80020f10:	e5823038 	str	r3, [r2, #56]	; 0x38
80020f14:	e59f3044 	ldr	r3, [pc, #68]	; 80020f60 <kmem_init2+0x198>
80020f18:	e5933038 	ldr	r3, [r3, #56]	; 0x38
80020f1c:	e50b3008 	str	r3, [fp, #-8]
80020f20:	ea000006 	b	80020f40 <kmem_init2+0x178>
80020f24:	e51b3008 	ldr	r3, [fp, #-8]
80020f28:	e3a0100c 	mov	r1, #12
80020f2c:	e1a00003 	mov	r0, r3
80020f30:	eb00018d 	bl	8002156c <kfree>
80020f34:	e51b3008 	ldr	r3, [fp, #-8]
80020f38:	e2833a01 	add	r3, r3, #4096	; 0x1000
80020f3c:	e50b3008 	str	r3, [fp, #-8]
80020f40:	e59f3018 	ldr	r3, [pc, #24]	; 80020f60 <kmem_init2+0x198>
80020f44:	e593203c 	ldr	r2, [r3, #60]	; 0x3c
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e1520003 	cmp	r2, r3
80020f50:	8afffff3 	bhi	80020f24 <kmem_init2+0x15c>
80020f54:	e1a00000 	nop			; (mov r0, r0)
80020f58:	e24bd004 	sub	sp, fp, #4
80020f5c:	e8bd8800 	pop	{fp, pc}
80020f60:	800ac810 	.word	0x800ac810
80020f64:	800ac850 	.word	0x800ac850
80020f68:	0000ffff 	.word	0x0000ffff

80020f6c <unmark_blk>:
80020f6c:	e92d4800 	push	{fp, lr}
80020f70:	e28db004 	add	fp, sp, #4
80020f74:	e24dd020 	sub	sp, sp, #32
80020f78:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80020f7c:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80020f80:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80020f84:	e2433006 	sub	r3, r3, #6
80020f88:	e2833008 	add	r3, r3, #8
80020f8c:	e1a03183 	lsl	r3, r3, #3
80020f90:	e59f216c 	ldr	r2, [pc, #364]	; 80021104 <unmark_blk+0x198>
80020f94:	e0833002 	add	r3, r3, r2
80020f98:	e50b3008 	str	r3, [fp, #-8]
80020f9c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80020fa0:	e1a032c3 	asr	r3, r3, #5
80020fa4:	e1a01003 	mov	r1, r3
80020fa8:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80020fac:	ebffff35 	bl	80020c88 <get_mark>
80020fb0:	e50b000c 	str	r0, [fp, #-12]
80020fb4:	e51b300c 	ldr	r3, [fp, #-12]
80020fb8:	e5933004 	ldr	r3, [r3, #4]
80020fbc:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80020fc0:	e1a00003 	mov	r0, r3
80020fc4:	ebffff66 	bl	80020d64 <available>
80020fc8:	e1a03000 	mov	r3, r0
80020fcc:	e3530000 	cmp	r3, #0
80020fd0:	1a000001 	bne	80020fdc <unmark_blk+0x70>
80020fd4:	e59f012c 	ldr	r0, [pc, #300]	; 80021108 <unmark_blk+0x19c>
80020fd8:	eb0002d8 	bl	80021b40 <panic>
80020fdc:	e51b300c 	ldr	r3, [fp, #-12]
80020fe0:	e5933004 	ldr	r3, [r3, #4]
80020fe4:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80020fe8:	e202201f 	and	r2, r2, #31
80020fec:	e3a01001 	mov	r1, #1
80020ff0:	e1a02211 	lsl	r2, r1, r2
80020ff4:	e1e02002 	mvn	r2, r2
80020ff8:	e0022003 	and	r2, r2, r3
80020ffc:	e51b300c 	ldr	r3, [fp, #-12]
80021000:	e5832004 	str	r2, [r3, #4]
80021004:	e51b300c 	ldr	r3, [fp, #-12]
80021008:	e5933004 	ldr	r3, [r3, #4]
8002100c:	e3530000 	cmp	r3, #0
80021010:	1a000038 	bne	800210f8 <unmark_blk+0x18c>
80021014:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80021018:	e1a032c3 	asr	r3, r3, #5
8002101c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80021020:	e51b300c 	ldr	r3, [fp, #-12]
80021024:	e5933000 	ldr	r3, [r3]
80021028:	e1a03823 	lsr	r3, r3, #16
8002102c:	e50b3010 	str	r3, [fp, #-16]
80021030:	e51b300c 	ldr	r3, [fp, #-12]
80021034:	e5933000 	ldr	r3, [r3]
80021038:	e6ff3073 	uxth	r3, r3
8002103c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80021040:	e51b3010 	ldr	r3, [fp, #-16]
80021044:	e59f20c0 	ldr	r2, [pc, #192]	; 8002110c <unmark_blk+0x1a0>
80021048:	e1530002 	cmp	r3, r2
8002104c:	0a00000d 	beq	80021088 <unmark_blk+0x11c>
80021050:	e51b1010 	ldr	r1, [fp, #-16]
80021054:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80021058:	ebffff0a 	bl	80020c88 <get_mark>
8002105c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80021060:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021064:	e5933000 	ldr	r3, [r3]
80021068:	e1a03823 	lsr	r3, r3, #16
8002106c:	e1a03803 	lsl	r3, r3, #16
80021070:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80021074:	e6ff2072 	uxth	r2, r2
80021078:	e1832002 	orr	r2, r3, r2
8002107c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021080:	e5832000 	str	r2, [r3]
80021084:	ea000007 	b	800210a8 <unmark_blk+0x13c>
80021088:	e51b3008 	ldr	r3, [fp, #-8]
8002108c:	e5932000 	ldr	r2, [r3]
80021090:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80021094:	e1520003 	cmp	r2, r3
80021098:	1a000002 	bne	800210a8 <unmark_blk+0x13c>
8002109c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5832000 	str	r2, [r3]
800210a8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800210ac:	e59f2058 	ldr	r2, [pc, #88]	; 8002110c <unmark_blk+0x1a0>
800210b0:	e1530002 	cmp	r3, r2
800210b4:	0a00000c 	beq	800210ec <unmark_blk+0x180>
800210b8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
800210bc:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
800210c0:	ebfffef0 	bl	80020c88 <get_mark>
800210c4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800210c8:	e51b3010 	ldr	r3, [fp, #-16]
800210cc:	e1a03803 	lsl	r3, r3, #16
800210d0:	e1a02003 	mov	r2, r3
800210d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800210d8:	e5933000 	ldr	r3, [r3]
800210dc:	e6ff3073 	uxth	r3, r3
800210e0:	e1822003 	orr	r2, r2, r3
800210e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800210e8:	e5832000 	str	r2, [r3]
800210ec:	e51b300c 	ldr	r3, [fp, #-12]
800210f0:	e3e02000 	mvn	r2, #0
800210f4:	e5832000 	str	r2, [r3]
800210f8:	e1a00000 	nop			; (mov r0, r0)
800210fc:	e24bd004 	sub	sp, fp, #4
80021100:	e8bd8800 	pop	{fp, pc}
80021104:	800ac810 	.word	0x800ac810
80021108:	8002a0a0 	.word	0x8002a0a0
8002110c:	0000ffff 	.word	0x0000ffff

80021110 <mark_blk>:
80021110:	e92d4800 	push	{fp, lr}
80021114:	e28db004 	add	fp, sp, #4
80021118:	e24dd018 	sub	sp, sp, #24
8002111c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80021120:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80021124:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021128:	e2433006 	sub	r3, r3, #6
8002112c:	e2833008 	add	r3, r3, #8
80021130:	e1a03183 	lsl	r3, r3, #3
80021134:	e59f211c 	ldr	r2, [pc, #284]	; 80021258 <mark_blk+0x148>
80021138:	e0833002 	add	r3, r3, r2
8002113c:	e50b3008 	str	r3, [fp, #-8]
80021140:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80021144:	e1a032c3 	asr	r3, r3, #5
80021148:	e1a01003 	mov	r1, r3
8002114c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80021150:	ebfffecc 	bl	80020c88 <get_mark>
80021154:	e50b000c 	str	r0, [fp, #-12]
80021158:	e51b300c 	ldr	r3, [fp, #-12]
8002115c:	e5933004 	ldr	r3, [r3, #4]
80021160:	e3530000 	cmp	r3, #0
80021164:	03a03001 	moveq	r3, #1
80021168:	13a03000 	movne	r3, #0
8002116c:	e6ef3073 	uxtb	r3, r3
80021170:	e50b3010 	str	r3, [fp, #-16]
80021174:	e51b300c 	ldr	r3, [fp, #-12]
80021178:	e5933004 	ldr	r3, [r3, #4]
8002117c:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
80021180:	e1a00003 	mov	r0, r3
80021184:	ebfffef6 	bl	80020d64 <available>
80021188:	e1a03000 	mov	r3, r0
8002118c:	e3530000 	cmp	r3, #0
80021190:	0a000001 	beq	8002119c <mark_blk+0x8c>
80021194:	e59f00c0 	ldr	r0, [pc, #192]	; 8002125c <mark_blk+0x14c>
80021198:	eb000268 	bl	80021b40 <panic>
8002119c:	e51b300c 	ldr	r3, [fp, #-12]
800211a0:	e5933004 	ldr	r3, [r3, #4]
800211a4:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
800211a8:	e202201f 	and	r2, r2, #31
800211ac:	e3a01001 	mov	r1, #1
800211b0:	e1a02211 	lsl	r2, r1, r2
800211b4:	e1832002 	orr	r2, r3, r2
800211b8:	e51b300c 	ldr	r3, [fp, #-12]
800211bc:	e5832004 	str	r2, [r3, #4]
800211c0:	e51b3010 	ldr	r3, [fp, #-16]
800211c4:	e3530000 	cmp	r3, #0
800211c8:	0a00001f 	beq	8002124c <mark_blk+0x13c>
800211cc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800211d0:	e1a032c3 	asr	r3, r3, #5
800211d4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
800211d8:	e51b3008 	ldr	r3, [fp, #-8]
800211dc:	e5933000 	ldr	r3, [r3]
800211e0:	e1e03803 	mvn	r3, r3, lsl #16
800211e4:	e1e03823 	mvn	r3, r3, lsr #16
800211e8:	e51b200c 	ldr	r2, [fp, #-12]
800211ec:	e5823000 	str	r3, [r2]
800211f0:	e51b3008 	ldr	r3, [fp, #-8]
800211f4:	e5933000 	ldr	r3, [r3]
800211f8:	e59f2060 	ldr	r2, [pc, #96]	; 80021260 <mark_blk+0x150>
800211fc:	e1530002 	cmp	r3, r2
80021200:	0a00000e 	beq	80021240 <mark_blk+0x130>
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e1a01003 	mov	r1, r3
80021210:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80021214:	ebfffe9b 	bl	80020c88 <get_mark>
80021218:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
8002121c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80021220:	e1a03803 	lsl	r3, r3, #16
80021224:	e1a02003 	mov	r2, r3
80021228:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002122c:	e5933000 	ldr	r3, [r3]
80021230:	e6ff3073 	uxth	r3, r3
80021234:	e1822003 	orr	r2, r2, r3
80021238:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002123c:	e5832000 	str	r2, [r3]
80021240:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80021244:	e51b3008 	ldr	r3, [fp, #-8]
80021248:	e5832000 	str	r2, [r3]
8002124c:	e1a00000 	nop			; (mov r0, r0)
80021250:	e24bd004 	sub	sp, fp, #4
80021254:	e8bd8800 	pop	{fp, pc}
80021258:	800ac810 	.word	0x800ac810
8002125c:	8002a0b0 	.word	0x8002a0b0
80021260:	0000ffff 	.word	0x0000ffff

80021264 <get_blk>:
80021264:	e92d4800 	push	{fp, lr}
80021268:	e28db004 	add	fp, sp, #4
8002126c:	e24dd018 	sub	sp, sp, #24
80021270:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80021274:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021278:	e2433006 	sub	r3, r3, #6
8002127c:	e2833008 	add	r3, r3, #8
80021280:	e1a03183 	lsl	r3, r3, #3
80021284:	e59f20c0 	ldr	r2, [pc, #192]	; 8002134c <get_blk+0xe8>
80021288:	e0833002 	add	r3, r3, r2
8002128c:	e50b300c 	str	r3, [fp, #-12]
80021290:	e51b300c 	ldr	r3, [fp, #-12]
80021294:	e5933000 	ldr	r3, [r3]
80021298:	e1a01003 	mov	r1, r3
8002129c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800212a0:	ebfffe78 	bl	80020c88 <get_mark>
800212a4:	e50b0010 	str	r0, [fp, #-16]
800212a8:	e51b3010 	ldr	r3, [fp, #-16]
800212ac:	e5933004 	ldr	r3, [r3, #4]
800212b0:	e3530000 	cmp	r3, #0
800212b4:	1a000001 	bne	800212c0 <get_blk+0x5c>
800212b8:	e59f0090 	ldr	r0, [pc, #144]	; 80021350 <get_blk+0xec>
800212bc:	eb00021f 	bl	80021b40 <panic>
800212c0:	e3a03000 	mov	r3, #0
800212c4:	e50b3008 	str	r3, [fp, #-8]
800212c8:	ea000018 	b	80021330 <get_blk+0xcc>
800212cc:	e51b3010 	ldr	r3, [fp, #-16]
800212d0:	e5933004 	ldr	r3, [r3, #4]
800212d4:	e3a01001 	mov	r1, #1
800212d8:	e51b2008 	ldr	r2, [fp, #-8]
800212dc:	e1a02211 	lsl	r2, r1, r2
800212e0:	e0033002 	and	r3, r3, r2
800212e4:	e3530000 	cmp	r3, #0
800212e8:	0a00000d 	beq	80021324 <get_blk+0xc0>
800212ec:	e51b300c 	ldr	r3, [fp, #-12]
800212f0:	e5933000 	ldr	r3, [r3]
800212f4:	e1a02283 	lsl	r2, r3, #5
800212f8:	e51b3008 	ldr	r3, [fp, #-8]
800212fc:	e0823003 	add	r3, r2, r3
80021300:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80021304:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80021308:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
8002130c:	ebffff16 	bl	80020f6c <unmark_blk>
80021310:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80021314:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80021318:	ebfffe71 	bl	80020ce4 <blkid2mem>
8002131c:	e1a03000 	mov	r3, r0
80021320:	ea000006 	b	80021340 <get_blk+0xdc>
80021324:	e51b3008 	ldr	r3, [fp, #-8]
80021328:	e2833001 	add	r3, r3, #1
8002132c:	e50b3008 	str	r3, [fp, #-8]
80021330:	e51b3008 	ldr	r3, [fp, #-8]
80021334:	e353001f 	cmp	r3, #31
80021338:	daffffe3 	ble	800212cc <get_blk+0x68>
8002133c:	e3a03000 	mov	r3, #0
80021340:	e1a00003 	mov	r0, r3
80021344:	e24bd004 	sub	sp, fp, #4
80021348:	e8bd8800 	pop	{fp, pc}
8002134c:	800ac810 	.word	0x800ac810
80021350:	8002a0c0 	.word	0x8002a0c0

80021354 <_kmalloc>:
80021354:	e92d4800 	push	{fp, lr}
80021358:	e28db004 	add	fp, sp, #4
8002135c:	e24dd010 	sub	sp, sp, #16
80021360:	e50b0010 	str	r0, [fp, #-16]
80021364:	e51b3010 	ldr	r3, [fp, #-16]
80021368:	e2433006 	sub	r3, r3, #6
8002136c:	e2833008 	add	r3, r3, #8
80021370:	e1a03183 	lsl	r3, r3, #3
80021374:	e59f2090 	ldr	r2, [pc, #144]	; 8002140c <_kmalloc+0xb8>
80021378:	e0833002 	add	r3, r3, r2
8002137c:	e50b300c 	str	r3, [fp, #-12]
80021380:	e3a03000 	mov	r3, #0
80021384:	e50b3008 	str	r3, [fp, #-8]
80021388:	e51b300c 	ldr	r3, [fp, #-12]
8002138c:	e5933000 	ldr	r3, [r3]
80021390:	e59f2078 	ldr	r2, [pc, #120]	; 80021410 <_kmalloc+0xbc>
80021394:	e1530002 	cmp	r3, r2
80021398:	0a000003 	beq	800213ac <_kmalloc+0x58>
8002139c:	e51b0010 	ldr	r0, [fp, #-16]
800213a0:	ebffffaf 	bl	80021264 <get_blk>
800213a4:	e50b0008 	str	r0, [fp, #-8]
800213a8:	ea000013 	b	800213fc <_kmalloc+0xa8>
800213ac:	e51b3010 	ldr	r3, [fp, #-16]
800213b0:	e353000b 	cmp	r3, #11
800213b4:	ca000010 	bgt	800213fc <_kmalloc+0xa8>
800213b8:	e51b3010 	ldr	r3, [fp, #-16]
800213bc:	e2833001 	add	r3, r3, #1
800213c0:	e1a00003 	mov	r0, r3
800213c4:	ebffffe2 	bl	80021354 <_kmalloc>
800213c8:	e50b0008 	str	r0, [fp, #-8]
800213cc:	e51b3008 	ldr	r3, [fp, #-8]
800213d0:	e3530000 	cmp	r3, #0
800213d4:	0a000008 	beq	800213fc <_kmalloc+0xa8>
800213d8:	e3a02001 	mov	r2, #1
800213dc:	e51b3010 	ldr	r3, [fp, #-16]
800213e0:	e1a03312 	lsl	r3, r2, r3
800213e4:	e1a02003 	mov	r2, r3
800213e8:	e51b3008 	ldr	r3, [fp, #-8]
800213ec:	e0833002 	add	r3, r3, r2
800213f0:	e51b1010 	ldr	r1, [fp, #-16]
800213f4:	e1a00003 	mov	r0, r3
800213f8:	eb00001e 	bl	80021478 <_kfree>
800213fc:	e51b3008 	ldr	r3, [fp, #-8]
80021400:	e1a00003 	mov	r0, r3
80021404:	e24bd004 	sub	sp, fp, #4
80021408:	e8bd8800 	pop	{fp, pc}
8002140c:	800ac810 	.word	0x800ac810
80021410:	0000ffff 	.word	0x0000ffff

80021414 <kmalloc>:
80021414:	e92d4800 	push	{fp, lr}
80021418:	e28db004 	add	fp, sp, #4
8002141c:	e24dd010 	sub	sp, sp, #16
80021420:	e50b0010 	str	r0, [fp, #-16]
80021424:	e51b3010 	ldr	r3, [fp, #-16]
80021428:	e353000c 	cmp	r3, #12
8002142c:	ca000002 	bgt	8002143c <kmalloc+0x28>
80021430:	e51b3010 	ldr	r3, [fp, #-16]
80021434:	e3530005 	cmp	r3, #5
80021438:	ca000001 	bgt	80021444 <kmalloc+0x30>
8002143c:	e59f002c 	ldr	r0, [pc, #44]	; 80021470 <kmalloc+0x5c>
80021440:	eb0001be 	bl	80021b40 <panic>
80021444:	e59f0028 	ldr	r0, [pc, #40]	; 80021474 <kmalloc+0x60>
80021448:	eb00126a 	bl	80025df8 <acquire>
8002144c:	e51b0010 	ldr	r0, [fp, #-16]
80021450:	ebffffbf 	bl	80021354 <_kmalloc>
80021454:	e50b0008 	str	r0, [fp, #-8]
80021458:	e59f0014 	ldr	r0, [pc, #20]	; 80021474 <kmalloc+0x60>
8002145c:	eb001270 	bl	80025e24 <release>
80021460:	e51b3008 	ldr	r3, [fp, #-8]
80021464:	e1a00003 	mov	r0, r3
80021468:	e24bd004 	sub	sp, fp, #4
8002146c:	e8bd8800 	pop	{fp, pc}
80021470:	8002a0d8 	.word	0x8002a0d8
80021474:	800ac810 	.word	0x800ac810

80021478 <_kfree>:
80021478:	e92d4800 	push	{fp, lr}
8002147c:	e28db004 	add	fp, sp, #4
80021480:	e24dd018 	sub	sp, sp, #24
80021484:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80021488:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
8002148c:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80021490:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
80021494:	ebfffe22 	bl	80020d24 <mem2blkid>
80021498:	e50b0008 	str	r0, [fp, #-8]
8002149c:	e51b3008 	ldr	r3, [fp, #-8]
800214a0:	e1a032c3 	asr	r3, r3, #5
800214a4:	e1a01003 	mov	r1, r3
800214a8:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
800214ac:	ebfffdf5 	bl	80020c88 <get_mark>
800214b0:	e50b000c 	str	r0, [fp, #-12]
800214b4:	e51b300c 	ldr	r3, [fp, #-12]
800214b8:	e5933004 	ldr	r3, [r3, #4]
800214bc:	e51b1008 	ldr	r1, [fp, #-8]
800214c0:	e1a00003 	mov	r0, r3
800214c4:	ebfffe26 	bl	80020d64 <available>
800214c8:	e1a03000 	mov	r3, r0
800214cc:	e3530000 	cmp	r3, #0
800214d0:	0a000001 	beq	800214dc <_kfree+0x64>
800214d4:	e59f008c 	ldr	r0, [pc, #140]	; 80021568 <_kfree+0xf0>
800214d8:	eb000198 	bl	80021b40 <panic>
800214dc:	e51b3008 	ldr	r3, [fp, #-8]
800214e0:	e2233001 	eor	r3, r3, #1
800214e4:	e50b3010 	str	r3, [fp, #-16]
800214e8:	e51b300c 	ldr	r3, [fp, #-12]
800214ec:	e5933004 	ldr	r3, [r3, #4]
800214f0:	e51b1010 	ldr	r1, [fp, #-16]
800214f4:	e1a00003 	mov	r0, r3
800214f8:	ebfffe19 	bl	80020d64 <available>
800214fc:	e1a03000 	mov	r3, r0
80021500:	e3530000 	cmp	r3, #0
80021504:	0a000002 	beq	80021514 <_kfree+0x9c>
80021508:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002150c:	e353000c 	cmp	r3, #12
80021510:	1a000003 	bne	80021524 <_kfree+0xac>
80021514:	e51b1008 	ldr	r1, [fp, #-8]
80021518:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
8002151c:	ebfffefb 	bl	80021110 <mark_blk>
80021520:	ea00000d 	b	8002155c <_kfree+0xe4>
80021524:	e51b1010 	ldr	r1, [fp, #-16]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
8002152c:	ebfffe8e 	bl	80020f6c <unmark_blk>
80021530:	e51b3008 	ldr	r3, [fp, #-8]
80021534:	e3c33001 	bic	r3, r3, #1
80021538:	e1a01003 	mov	r1, r3
8002153c:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
80021540:	ebfffde7 	bl	80020ce4 <blkid2mem>
80021544:	e1a02000 	mov	r2, r0
80021548:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002154c:	e2833001 	add	r3, r3, #1
80021550:	e1a01003 	mov	r1, r3
80021554:	e1a00002 	mov	r0, r2
80021558:	ebffffc6 	bl	80021478 <_kfree>
8002155c:	e1a00000 	nop			; (mov r0, r0)
80021560:	e24bd004 	sub	sp, fp, #4
80021564:	e8bd8800 	pop	{fp, pc}
80021568:	8002a0f8 	.word	0x8002a0f8

8002156c <kfree>:
8002156c:	e92d4800 	push	{fp, lr}
80021570:	e28db004 	add	fp, sp, #4
80021574:	e24dd008 	sub	sp, sp, #8
80021578:	e50b0008 	str	r0, [fp, #-8]
8002157c:	e50b100c 	str	r1, [fp, #-12]
80021580:	e51b300c 	ldr	r3, [fp, #-12]
80021584:	e353000c 	cmp	r3, #12
80021588:	ca00000b 	bgt	800215bc <kfree+0x50>
8002158c:	e51b300c 	ldr	r3, [fp, #-12]
80021590:	e3530005 	cmp	r3, #5
80021594:	da000008 	ble	800215bc <kfree+0x50>
80021598:	e3a02001 	mov	r2, #1
8002159c:	e51b300c 	ldr	r3, [fp, #-12]
800215a0:	e1a03312 	lsl	r3, r2, r3
800215a4:	e2433001 	sub	r3, r3, #1
800215a8:	e1a02003 	mov	r2, r3
800215ac:	e51b3008 	ldr	r3, [fp, #-8]
800215b0:	e0033002 	and	r3, r3, r2
800215b4:	e3530000 	cmp	r3, #0
800215b8:	0a000001 	beq	800215c4 <kfree+0x58>
800215bc:	e59f0028 	ldr	r0, [pc, #40]	; 800215ec <kfree+0x80>
800215c0:	eb00015e 	bl	80021b40 <panic>
800215c4:	e59f0024 	ldr	r0, [pc, #36]	; 800215f0 <kfree+0x84>
800215c8:	eb00120a 	bl	80025df8 <acquire>
800215cc:	e51b100c 	ldr	r1, [fp, #-12]
800215d0:	e51b0008 	ldr	r0, [fp, #-8]
800215d4:	ebffffa7 	bl	80021478 <_kfree>
800215d8:	e59f0010 	ldr	r0, [pc, #16]	; 800215f0 <kfree+0x84>
800215dc:	eb001210 	bl	80025e24 <release>
800215e0:	e1a00000 	nop			; (mov r0, r0)
800215e4:	e24bd004 	sub	sp, fp, #4
800215e8:	e8bd8800 	pop	{fp, pc}
800215ec:	8002a10c 	.word	0x8002a10c
800215f0:	800ac810 	.word	0x800ac810

800215f4 <free_page>:
800215f4:	e92d4800 	push	{fp, lr}
800215f8:	e28db004 	add	fp, sp, #4
800215fc:	e24dd008 	sub	sp, sp, #8
80021600:	e50b0008 	str	r0, [fp, #-8]
80021604:	e3a0100c 	mov	r1, #12
80021608:	e51b0008 	ldr	r0, [fp, #-8]
8002160c:	ebffffd6 	bl	8002156c <kfree>
80021610:	e1a00000 	nop			; (mov r0, r0)
80021614:	e24bd004 	sub	sp, fp, #4
80021618:	e8bd8800 	pop	{fp, pc}

8002161c <alloc_page>:
8002161c:	e92d4800 	push	{fp, lr}
80021620:	e28db004 	add	fp, sp, #4
80021624:	e3a0000c 	mov	r0, #12
80021628:	ebffff79 	bl	80021414 <kmalloc>
8002162c:	e1a03000 	mov	r3, r0
80021630:	e1a00003 	mov	r0, r3
80021634:	e8bd8800 	pop	{fp, pc}

80021638 <get_order>:
80021638:	e92d4800 	push	{fp, lr}
8002163c:	e28db004 	add	fp, sp, #4
80021640:	e24dd010 	sub	sp, sp, #16
80021644:	e50b0010 	str	r0, [fp, #-16]
80021648:	e51b3010 	ldr	r3, [fp, #-16]
8002164c:	e2433001 	sub	r3, r3, #1
80021650:	e50b3010 	str	r3, [fp, #-16]
80021654:	e51b3010 	ldr	r3, [fp, #-16]
80021658:	e1a030a3 	lsr	r3, r3, #1
8002165c:	e51b2010 	ldr	r2, [fp, #-16]
80021660:	e1823003 	orr	r3, r2, r3
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a03123 	lsr	r3, r3, #2
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03223 	lsr	r3, r3, #4
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03423 	lsr	r3, r3, #8
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03823 	lsr	r3, r3, #16
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e2833001 	add	r3, r3, #1
800216c0:	e50b3010 	str	r3, [fp, #-16]
800216c4:	e3a03000 	mov	r3, #0
800216c8:	e50b3008 	str	r3, [fp, #-8]
800216cc:	ea00000a 	b	800216fc <get_order+0xc4>
800216d0:	e3a02001 	mov	r2, #1
800216d4:	e51b3008 	ldr	r3, [fp, #-8]
800216d8:	e1a03312 	lsl	r3, r2, r3
800216dc:	e1a02003 	mov	r2, r3
800216e0:	e51b3010 	ldr	r3, [fp, #-16]
800216e4:	e0033002 	and	r3, r3, r2
800216e8:	e3530000 	cmp	r3, #0
800216ec:	1a000006 	bne	8002170c <get_order+0xd4>
800216f0:	e51b3008 	ldr	r3, [fp, #-8]
800216f4:	e2833001 	add	r3, r3, #1
800216f8:	e50b3008 	str	r3, [fp, #-8]
800216fc:	e51b3008 	ldr	r3, [fp, #-8]
80021700:	e353001f 	cmp	r3, #31
80021704:	9afffff1 	bls	800216d0 <get_order+0x98>
80021708:	ea000000 	b	80021710 <get_order+0xd8>
8002170c:	e1a00000 	nop			; (mov r0, r0)
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e3530005 	cmp	r3, #5
80021718:	8a000002 	bhi	80021728 <get_order+0xf0>
8002171c:	e3a03006 	mov	r3, #6
80021720:	e50b3008 	str	r3, [fp, #-8]
80021724:	ea000004 	b	8002173c <get_order+0x104>
80021728:	e51b3008 	ldr	r3, [fp, #-8]
8002172c:	e353000c 	cmp	r3, #12
80021730:	9a000001 	bls	8002173c <get_order+0x104>
80021734:	e59f0010 	ldr	r0, [pc, #16]	; 8002174c <get_order+0x114>
80021738:	eb000100 	bl	80021b40 <panic>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e1a00003 	mov	r0, r3
80021744:	e24bd004 	sub	sp, fp, #4
80021748:	e8bd8800 	pop	{fp, pc}
8002174c:	8002a13c 	.word	0x8002a13c

80021750 <kmemfree>:
80021750:	e92d4800 	push	{fp, lr}
80021754:	e28db004 	add	fp, sp, #4
80021758:	e24dd018 	sub	sp, sp, #24
8002175c:	e3a03000 	mov	r3, #0
80021760:	e50b3010 	str	r3, [fp, #-16]
80021764:	e59f309c 	ldr	r3, [pc, #156]	; 80021808 <kmemfree+0xb8>
80021768:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
8002176c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80021770:	e5933000 	ldr	r3, [r3]
80021774:	e50b3008 	str	r3, [fp, #-8]
80021778:	ea00001a 	b	800217e8 <kmemfree+0x98>
8002177c:	e51b1008 	ldr	r1, [fp, #-8]
80021780:	e3a0000c 	mov	r0, #12
80021784:	ebfffd3f 	bl	80020c88 <get_mark>
80021788:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8002178c:	e3a03000 	mov	r3, #0
80021790:	e50b300c 	str	r3, [fp, #-12]
80021794:	ea00000c 	b	800217cc <kmemfree+0x7c>
80021798:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002179c:	e5932004 	ldr	r2, [r3, #4]
800217a0:	e51b300c 	ldr	r3, [fp, #-12]
800217a4:	e1a03332 	lsr	r3, r2, r3
800217a8:	e2033001 	and	r3, r3, #1
800217ac:	e3530000 	cmp	r3, #0
800217b0:	0a000002 	beq	800217c0 <kmemfree+0x70>
800217b4:	e51b3010 	ldr	r3, [fp, #-16]
800217b8:	e2833001 	add	r3, r3, #1
800217bc:	e50b3010 	str	r3, [fp, #-16]
800217c0:	e51b300c 	ldr	r3, [fp, #-12]
800217c4:	e2833001 	add	r3, r3, #1
800217c8:	e50b300c 	str	r3, [fp, #-12]
800217cc:	e51b300c 	ldr	r3, [fp, #-12]
800217d0:	e353001f 	cmp	r3, #31
800217d4:	daffffef 	ble	80021798 <kmemfree+0x48>
800217d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800217dc:	e5933000 	ldr	r3, [r3]
800217e0:	e6ff3073 	uxth	r3, r3
800217e4:	e50b3008 	str	r3, [fp, #-8]
800217e8:	e51b3008 	ldr	r3, [fp, #-8]
800217ec:	e59f2018 	ldr	r2, [pc, #24]	; 8002180c <kmemfree+0xbc>
800217f0:	e1530002 	cmp	r3, r2
800217f4:	1affffe0 	bne	8002177c <kmemfree+0x2c>
800217f8:	e51b3010 	ldr	r3, [fp, #-16]
800217fc:	e1a00003 	mov	r0, r3
80021800:	e24bd004 	sub	sp, fp, #4
80021804:	e8bd8800 	pop	{fp, pc}
80021808:	800ac880 	.word	0x800ac880
8002180c:	0000ffff 	.word	0x0000ffff

80021810 <printint>:
80021810:	e92d4800 	push	{fp, lr}
80021814:	e28db004 	add	fp, sp, #4
80021818:	e24dd028 	sub	sp, sp, #40	; 0x28
8002181c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80021820:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80021824:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
80021828:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002182c:	e3530000 	cmp	r3, #0
80021830:	0a00000a 	beq	80021860 <printint+0x50>
80021834:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80021838:	e1a03fa3 	lsr	r3, r3, #31
8002183c:	e6ef3073 	uxtb	r3, r3
80021840:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80021844:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80021848:	e3530000 	cmp	r3, #0
8002184c:	0a000003 	beq	80021860 <printint+0x50>
80021850:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80021854:	e2633000 	rsb	r3, r3, #0
80021858:	e50b300c 	str	r3, [fp, #-12]
8002185c:	ea000001 	b	80021868 <printint+0x58>
80021860:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80021864:	e50b300c 	str	r3, [fp, #-12]
80021868:	e3a03000 	mov	r3, #0
8002186c:	e50b3008 	str	r3, [fp, #-8]
80021870:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80021874:	e51b300c 	ldr	r3, [fp, #-12]
80021878:	e1a01002 	mov	r1, r2
8002187c:	e1a00003 	mov	r0, r3
80021880:	eb00218a 	bl	80029eb0 <__aeabi_uidivmod>
80021884:	e1a03001 	mov	r3, r1
80021888:	e1a01003 	mov	r1, r3
8002188c:	e51b3008 	ldr	r3, [fp, #-8]
80021890:	e2832001 	add	r2, r3, #1
80021894:	e50b2008 	str	r2, [fp, #-8]
80021898:	e59f2098 	ldr	r2, [pc, #152]	; 80021938 <printint+0x128>
8002189c:	e7d22001 	ldrb	r2, [r2, r1]
800218a0:	e24b1004 	sub	r1, fp, #4
800218a4:	e0813003 	add	r3, r1, r3
800218a8:	e5432018 	strb	r2, [r3, #-24]	; 0xffffffe8
800218ac:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800218b0:	e1a01003 	mov	r1, r3
800218b4:	e51b000c 	ldr	r0, [fp, #-12]
800218b8:	eb00213f 	bl	80029dbc <__udivsi3>
800218bc:	e1a03000 	mov	r3, r0
800218c0:	e50b300c 	str	r3, [fp, #-12]
800218c4:	e51b300c 	ldr	r3, [fp, #-12]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1affffe7 	bne	80021870 <printint+0x60>
800218d0:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800218d4:	e3530000 	cmp	r3, #0
800218d8:	0a00000d 	beq	80021914 <printint+0x104>
800218dc:	e51b3008 	ldr	r3, [fp, #-8]
800218e0:	e2832001 	add	r2, r3, #1
800218e4:	e50b2008 	str	r2, [fp, #-8]
800218e8:	e24b2004 	sub	r2, fp, #4
800218ec:	e0823003 	add	r3, r2, r3
800218f0:	e3a0202d 	mov	r2, #45	; 0x2d
800218f4:	e5432018 	strb	r2, [r3, #-24]	; 0xffffffe8
800218f8:	ea000005 	b	80021914 <printint+0x104>
800218fc:	e24b201c 	sub	r2, fp, #28
80021900:	e51b3008 	ldr	r3, [fp, #-8]
80021904:	e0823003 	add	r3, r2, r3
80021908:	e5d33000 	ldrb	r3, [r3]
8002190c:	e1a00003 	mov	r0, r3
80021910:	eb0000a2 	bl	80021ba0 <consputc>
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e2433001 	sub	r3, r3, #1
8002191c:	e50b3008 	str	r3, [fp, #-8]
80021920:	e51b3008 	ldr	r3, [fp, #-8]
80021924:	e3530000 	cmp	r3, #0
80021928:	aafffff3 	bge	800218fc <printint+0xec>
8002192c:	e1a00000 	nop			; (mov r0, r0)
80021930:	e24bd004 	sub	sp, fp, #4
80021934:	e8bd8800 	pop	{fp, pc}
80021938:	8002b000 	.word	0x8002b000

8002193c <cprintf>:
8002193c:	e92d000f 	push	{r0, r1, r2, r3}
80021940:	e92d4800 	push	{fp, lr}
80021944:	e28db004 	add	fp, sp, #4
80021948:	e24dd018 	sub	sp, sp, #24
8002194c:	e59f31e0 	ldr	r3, [pc, #480]	; 80021b34 <cprintf+0x1f8>
80021950:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80021954:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80021958:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002195c:	e3530000 	cmp	r3, #0
80021960:	0a000001 	beq	8002196c <cprintf+0x30>
80021964:	e59f01c8 	ldr	r0, [pc, #456]	; 80021b34 <cprintf+0x1f8>
80021968:	eb001122 	bl	80025df8 <acquire>
8002196c:	e59b3004 	ldr	r3, [fp, #4]
80021970:	e3530000 	cmp	r3, #0
80021974:	1a000001 	bne	80021980 <cprintf+0x44>
80021978:	e59f01b8 	ldr	r0, [pc, #440]	; 80021b38 <cprintf+0x1fc>
8002197c:	eb00006f 	bl	80021b40 <panic>
80021980:	e28b3008 	add	r3, fp, #8
80021984:	e50b300c 	str	r3, [fp, #-12]
80021988:	e3a03000 	mov	r3, #0
8002198c:	e50b3008 	str	r3, [fp, #-8]
80021990:	ea000053 	b	80021ae4 <cprintf+0x1a8>
80021994:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021998:	e3530025 	cmp	r3, #37	; 0x25
8002199c:	0a000002 	beq	800219ac <cprintf+0x70>
800219a0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800219a4:	eb00007d 	bl	80021ba0 <consputc>
800219a8:	ea00004a 	b	80021ad8 <cprintf+0x19c>
800219ac:	e59b2004 	ldr	r2, [fp, #4]
800219b0:	e51b3008 	ldr	r3, [fp, #-8]
800219b4:	e2833001 	add	r3, r3, #1
800219b8:	e50b3008 	str	r3, [fp, #-8]
800219bc:	e51b3008 	ldr	r3, [fp, #-8]
800219c0:	e0823003 	add	r3, r2, r3
800219c4:	e5d33000 	ldrb	r3, [r3]
800219c8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
800219cc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800219d0:	e3530000 	cmp	r3, #0
800219d4:	0a00004b 	beq	80021b08 <cprintf+0x1cc>
800219d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800219dc:	e3530070 	cmp	r3, #112	; 0x70
800219e0:	0a000014 	beq	80021a38 <cprintf+0xfc>
800219e4:	e3530070 	cmp	r3, #112	; 0x70
800219e8:	ca000004 	bgt	80021a00 <cprintf+0xc4>
800219ec:	e3530025 	cmp	r3, #37	; 0x25
800219f0:	0a000030 	beq	80021ab8 <cprintf+0x17c>
800219f4:	e3530064 	cmp	r3, #100	; 0x64
800219f8:	0a000005 	beq	80021a14 <cprintf+0xd8>
800219fc:	ea000030 	b	80021ac4 <cprintf+0x188>
80021a00:	e3530073 	cmp	r3, #115	; 0x73
80021a04:	0a000014 	beq	80021a5c <cprintf+0x120>
80021a08:	e3530078 	cmp	r3, #120	; 0x78
80021a0c:	0a000009 	beq	80021a38 <cprintf+0xfc>
80021a10:	ea00002b 	b	80021ac4 <cprintf+0x188>
80021a14:	e51b300c 	ldr	r3, [fp, #-12]
80021a18:	e2832004 	add	r2, r3, #4
80021a1c:	e50b200c 	str	r2, [fp, #-12]
80021a20:	e5933000 	ldr	r3, [r3]
80021a24:	e3a02001 	mov	r2, #1
80021a28:	e3a0100a 	mov	r1, #10
80021a2c:	e1a00003 	mov	r0, r3
80021a30:	ebffff76 	bl	80021810 <printint>
80021a34:	ea000027 	b	80021ad8 <cprintf+0x19c>
80021a38:	e51b300c 	ldr	r3, [fp, #-12]
80021a3c:	e2832004 	add	r2, r3, #4
80021a40:	e50b200c 	str	r2, [fp, #-12]
80021a44:	e5933000 	ldr	r3, [r3]
80021a48:	e3a02000 	mov	r2, #0
80021a4c:	e3a01010 	mov	r1, #16
80021a50:	e1a00003 	mov	r0, r3
80021a54:	ebffff6d 	bl	80021810 <printint>
80021a58:	ea00001e 	b	80021ad8 <cprintf+0x19c>
80021a5c:	e51b300c 	ldr	r3, [fp, #-12]
80021a60:	e2832004 	add	r2, r3, #4
80021a64:	e50b200c 	str	r2, [fp, #-12]
80021a68:	e5933000 	ldr	r3, [r3]
80021a6c:	e50b3010 	str	r3, [fp, #-16]
80021a70:	e51b3010 	ldr	r3, [fp, #-16]
80021a74:	e3530000 	cmp	r3, #0
80021a78:	1a000009 	bne	80021aa4 <cprintf+0x168>
80021a7c:	e59f30b8 	ldr	r3, [pc, #184]	; 80021b3c <cprintf+0x200>
80021a80:	e50b3010 	str	r3, [fp, #-16]
80021a84:	ea000006 	b	80021aa4 <cprintf+0x168>
80021a88:	e51b3010 	ldr	r3, [fp, #-16]
80021a8c:	e5d33000 	ldrb	r3, [r3]
80021a90:	e1a00003 	mov	r0, r3
80021a94:	eb000041 	bl	80021ba0 <consputc>
80021a98:	e51b3010 	ldr	r3, [fp, #-16]
80021a9c:	e2833001 	add	r3, r3, #1
80021aa0:	e50b3010 	str	r3, [fp, #-16]
80021aa4:	e51b3010 	ldr	r3, [fp, #-16]
80021aa8:	e5d33000 	ldrb	r3, [r3]
80021aac:	e3530000 	cmp	r3, #0
80021ab0:	1afffff4 	bne	80021a88 <cprintf+0x14c>
80021ab4:	ea000007 	b	80021ad8 <cprintf+0x19c>
80021ab8:	e3a00025 	mov	r0, #37	; 0x25
80021abc:	eb000037 	bl	80021ba0 <consputc>
80021ac0:	ea000004 	b	80021ad8 <cprintf+0x19c>
80021ac4:	e3a00025 	mov	r0, #37	; 0x25
80021ac8:	eb000034 	bl	80021ba0 <consputc>
80021acc:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80021ad0:	eb000032 	bl	80021ba0 <consputc>
80021ad4:	e1a00000 	nop			; (mov r0, r0)
80021ad8:	e51b3008 	ldr	r3, [fp, #-8]
80021adc:	e2833001 	add	r3, r3, #1
80021ae0:	e50b3008 	str	r3, [fp, #-8]
80021ae4:	e59b2004 	ldr	r2, [fp, #4]
80021ae8:	e51b3008 	ldr	r3, [fp, #-8]
80021aec:	e0823003 	add	r3, r2, r3
80021af0:	e5d33000 	ldrb	r3, [r3]
80021af4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80021af8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021afc:	e3530000 	cmp	r3, #0
80021b00:	1affffa3 	bne	80021994 <cprintf+0x58>
80021b04:	ea000000 	b	80021b0c <cprintf+0x1d0>
80021b08:	e1a00000 	nop			; (mov r0, r0)
80021b0c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80021b10:	e3530000 	cmp	r3, #0
80021b14:	0a000001 	beq	80021b20 <cprintf+0x1e4>
80021b18:	e59f0014 	ldr	r0, [pc, #20]	; 80021b34 <cprintf+0x1f8>
80021b1c:	eb0010c0 	bl	80025e24 <release>
80021b20:	e1a00000 	nop			; (mov r0, r0)
80021b24:	e24bd004 	sub	sp, fp, #4
80021b28:	e8bd4800 	pop	{fp, lr}
80021b2c:	e28dd010 	add	sp, sp, #16
80021b30:	e12fff1e 	bx	lr
80021b34:	800ac88c 	.word	0x800ac88c
80021b38:	8002a14c 	.word	0x8002a14c
80021b3c:	8002a158 	.word	0x8002a158

80021b40 <panic>:
80021b40:	e92d4800 	push	{fp, lr}
80021b44:	e28db004 	add	fp, sp, #4
80021b48:	e24dd008 	sub	sp, sp, #8
80021b4c:	e50b0008 	str	r0, [fp, #-8]
80021b50:	ebfffa78 	bl	80020538 <cli>
80021b54:	e59f3034 	ldr	r3, [pc, #52]	; 80021b90 <panic+0x50>
80021b58:	e3a02000 	mov	r2, #0
80021b5c:	e5832034 	str	r2, [r3, #52]	; 0x34
80021b60:	e59f302c 	ldr	r3, [pc, #44]	; 80021b94 <panic+0x54>
80021b64:	e5933000 	ldr	r3, [r3]
80021b68:	e5d33000 	ldrb	r3, [r3]
80021b6c:	e1a01003 	mov	r1, r3
80021b70:	e59f0020 	ldr	r0, [pc, #32]	; 80021b98 <panic+0x58>
80021b74:	ebffff70 	bl	8002193c <cprintf>
80021b78:	e51b0008 	ldr	r0, [fp, #-8]
80021b7c:	ebfffb1f 	bl	80020800 <show_callstk>
80021b80:	e59f3014 	ldr	r3, [pc, #20]	; 80021b9c <panic+0x5c>
80021b84:	e3a02001 	mov	r2, #1
80021b88:	e5832000 	str	r2, [r3]
80021b8c:	eafffffe 	b	80021b8c <panic+0x4c>
80021b90:	800ac88c 	.word	0x800ac88c
80021b94:	800ae52c 	.word	0x800ae52c
80021b98:	8002a160 	.word	0x8002a160
80021b9c:	800ac888 	.word	0x800ac888

80021ba0 <consputc>:
80021ba0:	e92d4800 	push	{fp, lr}
80021ba4:	e28db004 	add	fp, sp, #4
80021ba8:	e24dd008 	sub	sp, sp, #8
80021bac:	e50b0008 	str	r0, [fp, #-8]
80021bb0:	e59f304c 	ldr	r3, [pc, #76]	; 80021c04 <consputc+0x64>
80021bb4:	e5933000 	ldr	r3, [r3]
80021bb8:	e3530000 	cmp	r3, #0
80021bbc:	0a000001 	beq	80021bc8 <consputc+0x28>
80021bc0:	ebfffa5c 	bl	80020538 <cli>
80021bc4:	eafffffe 	b	80021bc4 <consputc+0x24>
80021bc8:	e51b3008 	ldr	r3, [fp, #-8]
80021bcc:	e3530c01 	cmp	r3, #256	; 0x100
80021bd0:	1a000006 	bne	80021bf0 <consputc+0x50>
80021bd4:	e3a00008 	mov	r0, #8
80021bd8:	eb001e3b 	bl	800294cc <uartputc>
80021bdc:	e3a00020 	mov	r0, #32
80021be0:	eb001e39 	bl	800294cc <uartputc>
80021be4:	e3a00008 	mov	r0, #8
80021be8:	eb001e37 	bl	800294cc <uartputc>
80021bec:	ea000001 	b	80021bf8 <consputc+0x58>
80021bf0:	e51b0008 	ldr	r0, [fp, #-8]
80021bf4:	eb001e34 	bl	800294cc <uartputc>
80021bf8:	e1a00000 	nop			; (mov r0, r0)
80021bfc:	e24bd004 	sub	sp, fp, #4
80021c00:	e8bd8800 	pop	{fp, pc}
80021c04:	800ac888 	.word	0x800ac888

80021c08 <consoleintr>:
80021c08:	e92d4800 	push	{fp, lr}
80021c0c:	e28db004 	add	fp, sp, #4
80021c10:	e24dd010 	sub	sp, sp, #16
80021c14:	e50b0010 	str	r0, [fp, #-16]
80021c18:	e59f01d4 	ldr	r0, [pc, #468]	; 80021df4 <consoleintr+0x1ec>
80021c1c:	eb001075 	bl	80025df8 <acquire>
80021c20:	ea000068 	b	80021dc8 <consoleintr+0x1c0>
80021c24:	e51b3008 	ldr	r3, [fp, #-8]
80021c28:	e3530010 	cmp	r3, #16
80021c2c:	0a000009 	beq	80021c58 <consoleintr+0x50>
80021c30:	e3530010 	cmp	r3, #16
80021c34:	ca000002 	bgt	80021c44 <consoleintr+0x3c>
80021c38:	e3530008 	cmp	r3, #8
80021c3c:	0a00001f 	beq	80021cc0 <consoleintr+0xb8>
80021c40:	ea00002c 	b	80021cf8 <consoleintr+0xf0>
80021c44:	e3530015 	cmp	r3, #21
80021c48:	0a00000b 	beq	80021c7c <consoleintr+0x74>
80021c4c:	e353007f 	cmp	r3, #127	; 0x7f
80021c50:	0a00001a 	beq	80021cc0 <consoleintr+0xb8>
80021c54:	ea000027 	b	80021cf8 <consoleintr+0xf0>
80021c58:	eb000fa9 	bl	80025b04 <procdump>
80021c5c:	ea000059 	b	80021dc8 <consoleintr+0x1c0>
80021c60:	e59f318c 	ldr	r3, [pc, #396]	; 80021df4 <consoleintr+0x1ec>
80021c64:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80021c68:	e2433001 	sub	r3, r3, #1
80021c6c:	e59f2180 	ldr	r2, [pc, #384]	; 80021df4 <consoleintr+0x1ec>
80021c70:	e582323c 	str	r3, [r2, #572]	; 0x23c
80021c74:	e3a00c01 	mov	r0, #256	; 0x100
80021c78:	ebffffc8 	bl	80021ba0 <consputc>
80021c7c:	e59f3170 	ldr	r3, [pc, #368]	; 80021df4 <consoleintr+0x1ec>
80021c80:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
80021c84:	e59f3168 	ldr	r3, [pc, #360]	; 80021df4 <consoleintr+0x1ec>
80021c88:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80021c8c:	e1520003 	cmp	r2, r3
80021c90:	0a00004c 	beq	80021dc8 <consoleintr+0x1c0>
80021c94:	e59f3158 	ldr	r3, [pc, #344]	; 80021df4 <consoleintr+0x1ec>
80021c98:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80021c9c:	e2433001 	sub	r3, r3, #1
80021ca0:	e1a03b83 	lsl	r3, r3, #23
80021ca4:	e1a03ba3 	lsr	r3, r3, #23
80021ca8:	e59f2144 	ldr	r2, [pc, #324]	; 80021df4 <consoleintr+0x1ec>
80021cac:	e0823003 	add	r3, r2, r3
80021cb0:	e5d33034 	ldrb	r3, [r3, #52]	; 0x34
80021cb4:	e353000a 	cmp	r3, #10
80021cb8:	1affffe8 	bne	80021c60 <consoleintr+0x58>
80021cbc:	ea000041 	b	80021dc8 <consoleintr+0x1c0>
80021cc0:	e59f312c 	ldr	r3, [pc, #300]	; 80021df4 <consoleintr+0x1ec>
80021cc4:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
80021cc8:	e59f3124 	ldr	r3, [pc, #292]	; 80021df4 <consoleintr+0x1ec>
80021ccc:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80021cd0:	e1520003 	cmp	r2, r3
80021cd4:	0a00003b 	beq	80021dc8 <consoleintr+0x1c0>
80021cd8:	e59f3114 	ldr	r3, [pc, #276]	; 80021df4 <consoleintr+0x1ec>
80021cdc:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80021ce0:	e2433001 	sub	r3, r3, #1
80021ce4:	e59f2108 	ldr	r2, [pc, #264]	; 80021df4 <consoleintr+0x1ec>
80021ce8:	e582323c 	str	r3, [r2, #572]	; 0x23c
80021cec:	e3a00c01 	mov	r0, #256	; 0x100
80021cf0:	ebffffaa 	bl	80021ba0 <consputc>
80021cf4:	ea000033 	b	80021dc8 <consoleintr+0x1c0>
80021cf8:	e51b3008 	ldr	r3, [fp, #-8]
80021cfc:	e3530000 	cmp	r3, #0
80021d00:	0a00002f 	beq	80021dc4 <consoleintr+0x1bc>
80021d04:	e59f30e8 	ldr	r3, [pc, #232]	; 80021df4 <consoleintr+0x1ec>
80021d08:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
80021d0c:	e59f30e0 	ldr	r3, [pc, #224]	; 80021df4 <consoleintr+0x1ec>
80021d10:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80021d14:	e0423003 	sub	r3, r2, r3
80021d18:	e3530c02 	cmp	r3, #512	; 0x200
80021d1c:	2a000028 	bcs	80021dc4 <consoleintr+0x1bc>
80021d20:	e51b3008 	ldr	r3, [fp, #-8]
80021d24:	e353000d 	cmp	r3, #13
80021d28:	0a000001 	beq	80021d34 <consoleintr+0x12c>
80021d2c:	e51b3008 	ldr	r3, [fp, #-8]
80021d30:	ea000000 	b	80021d38 <consoleintr+0x130>
80021d34:	e3a0300a 	mov	r3, #10
80021d38:	e50b3008 	str	r3, [fp, #-8]
80021d3c:	e59f30b0 	ldr	r3, [pc, #176]	; 80021df4 <consoleintr+0x1ec>
80021d40:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80021d44:	e2832001 	add	r2, r3, #1
80021d48:	e59f10a4 	ldr	r1, [pc, #164]	; 80021df4 <consoleintr+0x1ec>
80021d4c:	e581223c 	str	r2, [r1, #572]	; 0x23c
80021d50:	e1a03b83 	lsl	r3, r3, #23
80021d54:	e1a03ba3 	lsr	r3, r3, #23
80021d58:	e51b2008 	ldr	r2, [fp, #-8]
80021d5c:	e6ef1072 	uxtb	r1, r2
80021d60:	e59f208c 	ldr	r2, [pc, #140]	; 80021df4 <consoleintr+0x1ec>
80021d64:	e0823003 	add	r3, r2, r3
80021d68:	e1a02001 	mov	r2, r1
80021d6c:	e5c32034 	strb	r2, [r3, #52]	; 0x34
80021d70:	e51b0008 	ldr	r0, [fp, #-8]
80021d74:	ebffff89 	bl	80021ba0 <consputc>
80021d78:	e51b3008 	ldr	r3, [fp, #-8]
80021d7c:	e353000a 	cmp	r3, #10
80021d80:	0a000009 	beq	80021dac <consoleintr+0x1a4>
80021d84:	e51b3008 	ldr	r3, [fp, #-8]
80021d88:	e3530004 	cmp	r3, #4
80021d8c:	0a000006 	beq	80021dac <consoleintr+0x1a4>
80021d90:	e59f305c 	ldr	r3, [pc, #92]	; 80021df4 <consoleintr+0x1ec>
80021d94:	e593223c 	ldr	r2, [r3, #572]	; 0x23c
80021d98:	e59f3054 	ldr	r3, [pc, #84]	; 80021df4 <consoleintr+0x1ec>
80021d9c:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80021da0:	e2833c02 	add	r3, r3, #512	; 0x200
80021da4:	e1520003 	cmp	r2, r3
80021da8:	1a000005 	bne	80021dc4 <consoleintr+0x1bc>
80021dac:	e59f3040 	ldr	r3, [pc, #64]	; 80021df4 <consoleintr+0x1ec>
80021db0:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80021db4:	e59f2038 	ldr	r2, [pc, #56]	; 80021df4 <consoleintr+0x1ec>
80021db8:	e5823238 	str	r3, [r2, #568]	; 0x238
80021dbc:	e59f0034 	ldr	r0, [pc, #52]	; 80021df8 <consoleintr+0x1f0>
80021dc0:	eb000f11 	bl	80025a0c <wakeup>
80021dc4:	e1a00000 	nop			; (mov r0, r0)
80021dc8:	e51b3010 	ldr	r3, [fp, #-16]
80021dcc:	e12fff33 	blx	r3
80021dd0:	e50b0008 	str	r0, [fp, #-8]
80021dd4:	e51b3008 	ldr	r3, [fp, #-8]
80021dd8:	e3530000 	cmp	r3, #0
80021ddc:	aaffff90 	bge	80021c24 <consoleintr+0x1c>
80021de0:	e59f000c 	ldr	r0, [pc, #12]	; 80021df4 <consoleintr+0x1ec>
80021de4:	eb00100e 	bl	80025e24 <release>
80021de8:	e1a00000 	nop			; (mov r0, r0)
80021dec:	e24bd004 	sub	sp, fp, #4
80021df0:	e8bd8800 	pop	{fp, pc}
80021df4:	800ac8c4 	.word	0x800ac8c4
80021df8:	800acaf8 	.word	0x800acaf8

80021dfc <consoleread>:
80021dfc:	e92d4800 	push	{fp, lr}
80021e00:	e28db004 	add	fp, sp, #4
80021e04:	e24dd018 	sub	sp, sp, #24
80021e08:	e50b0010 	str	r0, [fp, #-16]
80021e0c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80021e10:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80021e14:	e51b0010 	ldr	r0, [fp, #-16]
80021e18:	eb00053a 	bl	80023308 <iunlock>
80021e1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021e20:	e50b3008 	str	r3, [fp, #-8]
80021e24:	e59f0128 	ldr	r0, [pc, #296]	; 80021f54 <consoleread+0x158>
80021e28:	eb000ff2 	bl	80025df8 <acquire>
80021e2c:	ea000037 	b	80021f10 <consoleread+0x114>
80021e30:	e59f3120 	ldr	r3, [pc, #288]	; 80021f58 <consoleread+0x15c>
80021e34:	e5933000 	ldr	r3, [r3]
80021e38:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80021e3c:	e3530000 	cmp	r3, #0
80021e40:	0a000005 	beq	80021e5c <consoleread+0x60>
80021e44:	e59f0108 	ldr	r0, [pc, #264]	; 80021f54 <consoleread+0x158>
80021e48:	eb000ff5 	bl	80025e24 <release>
80021e4c:	e51b0010 	ldr	r0, [fp, #-16]
80021e50:	eb0004c8 	bl	80023178 <ilock>
80021e54:	e3e03000 	mvn	r3, #0
80021e58:	ea00003a 	b	80021f48 <consoleread+0x14c>
80021e5c:	e59f10f0 	ldr	r1, [pc, #240]	; 80021f54 <consoleread+0x158>
80021e60:	e59f00f4 	ldr	r0, [pc, #244]	; 80021f5c <consoleread+0x160>
80021e64:	eb000e94 	bl	800258bc <sleep>
80021e68:	e59f30e4 	ldr	r3, [pc, #228]	; 80021f54 <consoleread+0x158>
80021e6c:	e5932234 	ldr	r2, [r3, #564]	; 0x234
80021e70:	e59f30dc 	ldr	r3, [pc, #220]	; 80021f54 <consoleread+0x158>
80021e74:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80021e78:	e1520003 	cmp	r2, r3
80021e7c:	0affffeb 	beq	80021e30 <consoleread+0x34>
80021e80:	e59f30cc 	ldr	r3, [pc, #204]	; 80021f54 <consoleread+0x158>
80021e84:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80021e88:	e2832001 	add	r2, r3, #1
80021e8c:	e59f10c0 	ldr	r1, [pc, #192]	; 80021f54 <consoleread+0x158>
80021e90:	e5812234 	str	r2, [r1, #564]	; 0x234
80021e94:	e1a03b83 	lsl	r3, r3, #23
80021e98:	e1a03ba3 	lsr	r3, r3, #23
80021e9c:	e59f20b0 	ldr	r2, [pc, #176]	; 80021f54 <consoleread+0x158>
80021ea0:	e0823003 	add	r3, r2, r3
80021ea4:	e5d33034 	ldrb	r3, [r3, #52]	; 0x34
80021ea8:	e50b300c 	str	r3, [fp, #-12]
80021eac:	e51b300c 	ldr	r3, [fp, #-12]
80021eb0:	e3530004 	cmp	r3, #4
80021eb4:	1a000009 	bne	80021ee0 <consoleread+0xe4>
80021eb8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021ebc:	e51b2008 	ldr	r2, [fp, #-8]
80021ec0:	e1520003 	cmp	r2, r3
80021ec4:	9a000015 	bls	80021f20 <consoleread+0x124>
80021ec8:	e59f3084 	ldr	r3, [pc, #132]	; 80021f54 <consoleread+0x158>
80021ecc:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80021ed0:	e2433001 	sub	r3, r3, #1
80021ed4:	e59f2078 	ldr	r2, [pc, #120]	; 80021f54 <consoleread+0x158>
80021ed8:	e5823234 	str	r3, [r2, #564]	; 0x234
80021edc:	ea00000f 	b	80021f20 <consoleread+0x124>
80021ee0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80021ee4:	e2832001 	add	r2, r3, #1
80021ee8:	e50b2014 	str	r2, [fp, #-20]	; 0xffffffec
80021eec:	e51b200c 	ldr	r2, [fp, #-12]
80021ef0:	e6ef2072 	uxtb	r2, r2
80021ef4:	e5c32000 	strb	r2, [r3]
80021ef8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021efc:	e2433001 	sub	r3, r3, #1
80021f00:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80021f04:	e51b300c 	ldr	r3, [fp, #-12]
80021f08:	e353000a 	cmp	r3, #10
80021f0c:	0a000005 	beq	80021f28 <consoleread+0x12c>
80021f10:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021f14:	e3530000 	cmp	r3, #0
80021f18:	caffffd2 	bgt	80021e68 <consoleread+0x6c>
80021f1c:	ea000002 	b	80021f2c <consoleread+0x130>
80021f20:	e1a00000 	nop			; (mov r0, r0)
80021f24:	ea000000 	b	80021f2c <consoleread+0x130>
80021f28:	e1a00000 	nop			; (mov r0, r0)
80021f2c:	e59f0020 	ldr	r0, [pc, #32]	; 80021f54 <consoleread+0x158>
80021f30:	eb000fbb 	bl	80025e24 <release>
80021f34:	e51b0010 	ldr	r0, [fp, #-16]
80021f38:	eb00048e 	bl	80023178 <ilock>
80021f3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021f40:	e51b2008 	ldr	r2, [fp, #-8]
80021f44:	e0423003 	sub	r3, r2, r3
80021f48:	e1a00003 	mov	r0, r3
80021f4c:	e24bd004 	sub	sp, fp, #4
80021f50:	e8bd8800 	pop	{fp, pc}
80021f54:	800ac8c4 	.word	0x800ac8c4
80021f58:	800ae61c 	.word	0x800ae61c
80021f5c:	800acaf8 	.word	0x800acaf8

80021f60 <consolewrite>:
80021f60:	e92d4800 	push	{fp, lr}
80021f64:	e28db004 	add	fp, sp, #4
80021f68:	e24dd018 	sub	sp, sp, #24
80021f6c:	e50b0010 	str	r0, [fp, #-16]
80021f70:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80021f74:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80021f78:	e51b0010 	ldr	r0, [fp, #-16]
80021f7c:	eb0004e1 	bl	80023308 <iunlock>
80021f80:	e59f0060 	ldr	r0, [pc, #96]	; 80021fe8 <consolewrite+0x88>
80021f84:	eb000f9b 	bl	80025df8 <acquire>
80021f88:	e3a03000 	mov	r3, #0
80021f8c:	e50b3008 	str	r3, [fp, #-8]
80021f90:	ea000008 	b	80021fb8 <consolewrite+0x58>
80021f94:	e51b3008 	ldr	r3, [fp, #-8]
80021f98:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80021f9c:	e0823003 	add	r3, r2, r3
80021fa0:	e5d33000 	ldrb	r3, [r3]
80021fa4:	e1a00003 	mov	r0, r3
80021fa8:	ebfffefc 	bl	80021ba0 <consputc>
80021fac:	e51b3008 	ldr	r3, [fp, #-8]
80021fb0:	e2833001 	add	r3, r3, #1
80021fb4:	e50b3008 	str	r3, [fp, #-8]
80021fb8:	e51b2008 	ldr	r2, [fp, #-8]
80021fbc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021fc0:	e1520003 	cmp	r2, r3
80021fc4:	bafffff2 	blt	80021f94 <consolewrite+0x34>
80021fc8:	e59f0018 	ldr	r0, [pc, #24]	; 80021fe8 <consolewrite+0x88>
80021fcc:	eb000f94 	bl	80025e24 <release>
80021fd0:	e51b0010 	ldr	r0, [fp, #-16]
80021fd4:	eb000467 	bl	80023178 <ilock>
80021fd8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80021fdc:	e1a00003 	mov	r0, r3
80021fe0:	e24bd004 	sub	sp, fp, #4
80021fe4:	e8bd8800 	pop	{fp, pc}
80021fe8:	800ac88c 	.word	0x800ac88c

80021fec <consoleinit>:
80021fec:	e92d4800 	push	{fp, lr}
80021ff0:	e28db004 	add	fp, sp, #4
80021ff4:	e59f103c 	ldr	r1, [pc, #60]	; 80022038 <consoleinit+0x4c>
80021ff8:	e59f003c 	ldr	r0, [pc, #60]	; 8002203c <consoleinit+0x50>
80021ffc:	eb000f6b 	bl	80025db0 <initlock>
80022000:	e59f1038 	ldr	r1, [pc, #56]	; 80022040 <consoleinit+0x54>
80022004:	e59f0038 	ldr	r0, [pc, #56]	; 80022044 <consoleinit+0x58>
80022008:	eb000f68 	bl	80025db0 <initlock>
8002200c:	e59f3034 	ldr	r3, [pc, #52]	; 80022048 <consoleinit+0x5c>
80022010:	e59f2034 	ldr	r2, [pc, #52]	; 8002204c <consoleinit+0x60>
80022014:	e583200c 	str	r2, [r3, #12]
80022018:	e59f3028 	ldr	r3, [pc, #40]	; 80022048 <consoleinit+0x5c>
8002201c:	e59f202c 	ldr	r2, [pc, #44]	; 80022050 <consoleinit+0x64>
80022020:	e5832008 	str	r2, [r3, #8]
80022024:	e59f3010 	ldr	r3, [pc, #16]	; 8002203c <consoleinit+0x50>
80022028:	e3a02001 	mov	r2, #1
8002202c:	e5832034 	str	r2, [r3, #52]	; 0x34
80022030:	e1a00000 	nop			; (mov r0, r0)
80022034:	e8bd8800 	pop	{fp, pc}
80022038:	8002a170 	.word	0x8002a170
8002203c:	800ac88c 	.word	0x800ac88c
80022040:	8002a178 	.word	0x8002a178
80022044:	800ac8c4 	.word	0x800ac8c4
80022048:	800ad498 	.word	0x800ad498
8002204c:	80021f60 	.word	0x80021f60
80022050:	80021dfc 	.word	0x80021dfc

80022054 <exec>:
80022054:	e92d4810 	push	{r4, fp, lr}
80022058:	e28db008 	add	fp, sp, #8
8002205c:	e24ddf49 	sub	sp, sp, #292	; 0x124
80022060:	e50b0120 	str	r0, [fp, #-288]	; 0xfffffee0
80022064:	e50b1124 	str	r1, [fp, #-292]	; 0xfffffedc
80022068:	e51b0120 	ldr	r0, [fp, #-288]	; 0xfffffee0
8002206c:	eb000814 	bl	800240c4 <namei>
80022070:	e50b0010 	str	r0, [fp, #-16]
80022074:	e51b3010 	ldr	r3, [fp, #-16]
80022078:	e3530000 	cmp	r3, #0
8002207c:	1a000001 	bne	80022088 <exec+0x34>
80022080:	e3e03000 	mvn	r3, #0
80022084:	ea000120 	b	8002250c <exec+0x4b8>
80022088:	e51b0010 	ldr	r0, [fp, #-16]
8002208c:	eb000439 	bl	80023178 <ilock>
80022090:	e24b1068 	sub	r1, fp, #104	; 0x68
80022094:	e3a03034 	mov	r3, #52	; 0x34
80022098:	e3a02000 	mov	r2, #0
8002209c:	e51b0010 	ldr	r0, [fp, #-16]
800220a0:	eb0005e0 	bl	80023828 <readi>
800220a4:	e1a03000 	mov	r3, r0
800220a8:	e3530033 	cmp	r3, #51	; 0x33
800220ac:	9a0000f6 	bls	8002248c <exec+0x438>
800220b0:	e51b3068 	ldr	r3, [fp, #-104]	; 0xffffff98
800220b4:	e59f245c 	ldr	r2, [pc, #1116]	; 80022518 <exec+0x4c4>
800220b8:	e1530002 	cmp	r3, r2
800220bc:	1a0000f4 	bne	80022494 <exec+0x440>
800220c0:	e3a03000 	mov	r3, #0
800220c4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800220c8:	eb001906 	bl	800284e8 <kpt_alloc>
800220cc:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
800220d0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800220d4:	e3530000 	cmp	r3, #0
800220d8:	0a0000ef 	beq	8002249c <exec+0x448>
800220dc:	e3a03000 	mov	r3, #0
800220e0:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
800220e4:	e3a03000 	mov	r3, #0
800220e8:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
800220ec:	e51b304c 	ldr	r3, [fp, #-76]	; 0xffffffb4
800220f0:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
800220f4:	ea00002e 	b	800221b4 <exec+0x160>
800220f8:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
800220fc:	e24b1088 	sub	r1, fp, #136	; 0x88
80022100:	e3a03020 	mov	r3, #32
80022104:	e51b0010 	ldr	r0, [fp, #-16]
80022108:	eb0005c6 	bl	80023828 <readi>
8002210c:	e1a03000 	mov	r3, r0
80022110:	e3530020 	cmp	r3, #32
80022114:	1a0000e2 	bne	800224a4 <exec+0x450>
80022118:	e51b3088 	ldr	r3, [fp, #-136]	; 0xffffff78
8002211c:	e3530001 	cmp	r3, #1
80022120:	1a00001c 	bne	80022198 <exec+0x144>
80022124:	e51b2074 	ldr	r2, [fp, #-116]	; 0xffffff8c
80022128:	e51b3078 	ldr	r3, [fp, #-120]	; 0xffffff88
8002212c:	e1520003 	cmp	r2, r3
80022130:	3a0000dd 	bcc	800224ac <exec+0x458>
80022134:	e51b2080 	ldr	r2, [fp, #-128]	; 0xffffff80
80022138:	e51b3074 	ldr	r3, [fp, #-116]	; 0xffffff8c
8002213c:	e0823003 	add	r3, r2, r3
80022140:	e1a02003 	mov	r2, r3
80022144:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
80022148:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002214c:	eb001a12 	bl	8002899c <allocuvm>
80022150:	e1a03000 	mov	r3, r0
80022154:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80022158:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
8002215c:	e3530000 	cmp	r3, #0
80022160:	0a0000d3 	beq	800224b4 <exec+0x460>
80022164:	e51b3080 	ldr	r3, [fp, #-128]	; 0xffffff80
80022168:	e1a01003 	mov	r1, r3
8002216c:	e51b2084 	ldr	r2, [fp, #-132]	; 0xffffff7c
80022170:	e51b3078 	ldr	r3, [fp, #-120]	; 0xffffff88
80022174:	e58d3000 	str	r3, [sp]
80022178:	e1a03002 	mov	r3, r2
8002217c:	e51b2010 	ldr	r2, [fp, #-16]
80022180:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022184:	eb0019b8 	bl	8002886c <loaduvm>
80022188:	e1a03000 	mov	r3, r0
8002218c:	e3530000 	cmp	r3, #0
80022190:	ba0000c9 	blt	800224bc <exec+0x468>
80022194:	ea000000 	b	8002219c <exec+0x148>
80022198:	e1a00000 	nop			; (mov r0, r0)
8002219c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800221a0:	e2833001 	add	r3, r3, #1
800221a4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
800221a8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800221ac:	e2833020 	add	r3, r3, #32
800221b0:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
800221b4:	e15b33bc 	ldrh	r3, [fp, #-60]	; 0xffffffc4
800221b8:	e1a02003 	mov	r2, r3
800221bc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800221c0:	e1530002 	cmp	r3, r2
800221c4:	baffffcb 	blt	800220f8 <exec+0xa4>
800221c8:	e51b0010 	ldr	r0, [fp, #-16]
800221cc:	eb0004aa 	bl	8002347c <iunlockput>
800221d0:	e3a03000 	mov	r3, #0
800221d4:	e50b3010 	str	r3, [fp, #-16]
800221d8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
800221dc:	e2833eff 	add	r3, r3, #4080	; 0xff0
800221e0:	e283300f 	add	r3, r3, #15
800221e4:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800221e8:	e3c3300f 	bic	r3, r3, #15
800221ec:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
800221f0:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
800221f4:	e2833a02 	add	r3, r3, #8192	; 0x2000
800221f8:	e1a02003 	mov	r2, r3
800221fc:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
80022200:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022204:	eb0019e4 	bl	8002899c <allocuvm>
80022208:	e1a03000 	mov	r3, r0
8002220c:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80022210:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022214:	e3530000 	cmp	r3, #0
80022218:	0a0000a9 	beq	800224c4 <exec+0x470>
8002221c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022220:	e2433a02 	sub	r3, r3, #8192	; 0x2000
80022224:	e1a01003 	mov	r1, r3
80022228:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002222c:	eb001a90 	bl	80028c74 <clearpteu>
80022230:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022234:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
80022238:	e3a03000 	mov	r3, #0
8002223c:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80022240:	ea00002e 	b	80022300 <exec+0x2ac>
80022244:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022248:	e353001f 	cmp	r3, #31
8002224c:	8a00009e 	bhi	800224cc <exec+0x478>
80022250:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022254:	e1a03103 	lsl	r3, r3, #2
80022258:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
8002225c:	e0823003 	add	r3, r2, r3
80022260:	e5933000 	ldr	r3, [r3]
80022264:	e1a00003 	mov	r0, r3
80022268:	ebfff89d 	bl	800204e4 <strlen>
8002226c:	e1a03000 	mov	r3, r0
80022270:	e1a02003 	mov	r2, r3
80022274:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
80022278:	e0433002 	sub	r3, r3, r2
8002227c:	e2433001 	sub	r3, r3, #1
80022280:	e3c33003 	bic	r3, r3, #3
80022284:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
80022288:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002228c:	e1a03103 	lsl	r3, r3, #2
80022290:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
80022294:	e0823003 	add	r3, r2, r3
80022298:	e5934000 	ldr	r4, [r3]
8002229c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800222a0:	e1a03103 	lsl	r3, r3, #2
800222a4:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
800222a8:	e0823003 	add	r3, r2, r3
800222ac:	e5933000 	ldr	r3, [r3]
800222b0:	e1a00003 	mov	r0, r3
800222b4:	ebfff88a 	bl	800204e4 <strlen>
800222b8:	e1a03000 	mov	r3, r0
800222bc:	e2833001 	add	r3, r3, #1
800222c0:	e1a02004 	mov	r2, r4
800222c4:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
800222c8:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
800222cc:	eb001afd 	bl	80028ec8 <copyout>
800222d0:	e1a03000 	mov	r3, r0
800222d4:	e3530000 	cmp	r3, #0
800222d8:	ba00007d 	blt	800224d4 <exec+0x480>
800222dc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800222e0:	e1a03103 	lsl	r3, r3, #2
800222e4:	e24b200c 	sub	r2, fp, #12
800222e8:	e0823003 	add	r3, r2, r3
800222ec:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
800222f0:	e503210c 	str	r2, [r3, #-268]	; 0xfffffef4
800222f4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
800222f8:	e2833001 	add	r3, r3, #1
800222fc:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80022300:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022304:	e1a03103 	lsl	r3, r3, #2
80022308:	e51b2124 	ldr	r2, [fp, #-292]	; 0xfffffedc
8002230c:	e0823003 	add	r3, r2, r3
80022310:	e5933000 	ldr	r3, [r3]
80022314:	e3530000 	cmp	r3, #0
80022318:	1affffc9 	bne	80022244 <exec+0x1f0>
8002231c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022320:	e1a03103 	lsl	r3, r3, #2
80022324:	e24b200c 	sub	r2, fp, #12
80022328:	e0823003 	add	r3, r2, r3
8002232c:	e3a02000 	mov	r2, #0
80022330:	e503210c 	str	r2, [r3, #-268]	; 0xfffffef4
80022334:	e59f31e0 	ldr	r3, [pc, #480]	; 8002251c <exec+0x4c8>
80022338:	e5933000 	ldr	r3, [r3]
8002233c:	e5933018 	ldr	r3, [r3, #24]
80022340:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80022344:	e5832010 	str	r2, [r3, #16]
80022348:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002234c:	e2833001 	add	r3, r3, #1
80022350:	e1a02103 	lsl	r2, r3, #2
80022354:	e59f31c0 	ldr	r3, [pc, #448]	; 8002251c <exec+0x4c8>
80022358:	e5933000 	ldr	r3, [r3]
8002235c:	e5933018 	ldr	r3, [r3, #24]
80022360:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
80022364:	e0412002 	sub	r2, r1, r2
80022368:	e5832014 	str	r2, [r3, #20]
8002236c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022370:	e2833001 	add	r3, r3, #1
80022374:	e1a03103 	lsl	r3, r3, #2
80022378:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
8002237c:	e0423003 	sub	r3, r2, r3
80022380:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
80022384:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022388:	e2833001 	add	r3, r3, #1
8002238c:	e1a03103 	lsl	r3, r3, #2
80022390:	e24b2f46 	sub	r2, fp, #280	; 0x118
80022394:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
80022398:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002239c:	eb001ac9 	bl	80028ec8 <copyout>
800223a0:	e1a03000 	mov	r3, r0
800223a4:	e3530000 	cmp	r3, #0
800223a8:	ba00004b 	blt	800224dc <exec+0x488>
800223ac:	e51b3120 	ldr	r3, [fp, #-288]	; 0xfffffee0
800223b0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
800223b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800223b8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
800223bc:	ea000009 	b	800223e8 <exec+0x394>
800223c0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800223c4:	e5d33000 	ldrb	r3, [r3]
800223c8:	e353002f 	cmp	r3, #47	; 0x2f
800223cc:	1a000002 	bne	800223dc <exec+0x388>
800223d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800223d4:	e2833001 	add	r3, r3, #1
800223d8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
800223dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800223e0:	e2833001 	add	r3, r3, #1
800223e4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
800223e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800223ec:	e5d33000 	ldrb	r3, [r3]
800223f0:	e3530000 	cmp	r3, #0
800223f4:	1afffff1 	bne	800223c0 <exec+0x36c>
800223f8:	e59f311c 	ldr	r3, [pc, #284]	; 8002251c <exec+0x4c8>
800223fc:	e5933000 	ldr	r3, [r3]
80022400:	e283306c 	add	r3, r3, #108	; 0x6c
80022404:	e3a02010 	mov	r2, #16
80022408:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
8002240c:	e1a00003 	mov	r0, r3
80022410:	ebfff80d 	bl	8002044c <safestrcpy>
80022414:	e59f3100 	ldr	r3, [pc, #256]	; 8002251c <exec+0x4c8>
80022418:	e5933000 	ldr	r3, [r3]
8002241c:	e5933004 	ldr	r3, [r3, #4]
80022420:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
80022424:	e59f30f0 	ldr	r3, [pc, #240]	; 8002251c <exec+0x4c8>
80022428:	e5933000 	ldr	r3, [r3]
8002242c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80022430:	e5832004 	str	r2, [r3, #4]
80022434:	e59f30e0 	ldr	r3, [pc, #224]	; 8002251c <exec+0x4c8>
80022438:	e5933000 	ldr	r3, [r3]
8002243c:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
80022440:	e5832000 	str	r2, [r3]
80022444:	e59f30d0 	ldr	r3, [pc, #208]	; 8002251c <exec+0x4c8>
80022448:	e5933000 	ldr	r3, [r3]
8002244c:	e5933018 	ldr	r3, [r3, #24]
80022450:	e51b2050 	ldr	r2, [fp, #-80]	; 0xffffffb0
80022454:	e5832044 	str	r2, [r3, #68]	; 0x44
80022458:	e59f30bc 	ldr	r3, [pc, #188]	; 8002251c <exec+0x4c8>
8002245c:	e5933000 	ldr	r3, [r3]
80022460:	e5933018 	ldr	r3, [r3, #24]
80022464:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
80022468:	e5832000 	str	r2, [r3]
8002246c:	e59f30a8 	ldr	r3, [pc, #168]	; 8002251c <exec+0x4c8>
80022470:	e5933000 	ldr	r3, [r3]
80022474:	e1a00003 	mov	r0, r3
80022478:	eb0018c1 	bl	80028784 <switchuvm>
8002247c:	e51b0034 	ldr	r0, [fp, #-52]	; 0xffffffcc
80022480:	eb0019cb 	bl	80028bb4 <freevm>
80022484:	e3a03000 	mov	r3, #0
80022488:	ea00001f 	b	8002250c <exec+0x4b8>
8002248c:	e1a00000 	nop			; (mov r0, r0)
80022490:	ea000012 	b	800224e0 <exec+0x48c>
80022494:	e1a00000 	nop			; (mov r0, r0)
80022498:	ea000010 	b	800224e0 <exec+0x48c>
8002249c:	e1a00000 	nop			; (mov r0, r0)
800224a0:	ea00000e 	b	800224e0 <exec+0x48c>
800224a4:	e1a00000 	nop			; (mov r0, r0)
800224a8:	ea00000c 	b	800224e0 <exec+0x48c>
800224ac:	e1a00000 	nop			; (mov r0, r0)
800224b0:	ea00000a 	b	800224e0 <exec+0x48c>
800224b4:	e1a00000 	nop			; (mov r0, r0)
800224b8:	ea000008 	b	800224e0 <exec+0x48c>
800224bc:	e1a00000 	nop			; (mov r0, r0)
800224c0:	ea000006 	b	800224e0 <exec+0x48c>
800224c4:	e1a00000 	nop			; (mov r0, r0)
800224c8:	ea000004 	b	800224e0 <exec+0x48c>
800224cc:	e1a00000 	nop			; (mov r0, r0)
800224d0:	ea000002 	b	800224e0 <exec+0x48c>
800224d4:	e1a00000 	nop			; (mov r0, r0)
800224d8:	ea000000 	b	800224e0 <exec+0x48c>
800224dc:	e1a00000 	nop			; (mov r0, r0)
800224e0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800224e4:	e3530000 	cmp	r3, #0
800224e8:	0a000001 	beq	800224f4 <exec+0x4a0>
800224ec:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
800224f0:	eb0019af 	bl	80028bb4 <freevm>
800224f4:	e51b3010 	ldr	r3, [fp, #-16]
800224f8:	e3530000 	cmp	r3, #0
800224fc:	0a000001 	beq	80022508 <exec+0x4b4>
80022500:	e51b0010 	ldr	r0, [fp, #-16]
80022504:	eb0003dc 	bl	8002347c <iunlockput>
80022508:	e3e03000 	mvn	r3, #0
8002250c:	e1a00003 	mov	r0, r3
80022510:	e24bd008 	sub	sp, fp, #8
80022514:	e8bd8810 	pop	{r4, fp, pc}
80022518:	464c457f 	.word	0x464c457f
8002251c:	800ae61c 	.word	0x800ae61c

80022520 <fileinit>:
80022520:	e92d4800 	push	{fp, lr}
80022524:	e28db004 	add	fp, sp, #4
80022528:	e59f100c 	ldr	r1, [pc, #12]	; 8002253c <fileinit+0x1c>
8002252c:	e59f000c 	ldr	r0, [pc, #12]	; 80022540 <fileinit+0x20>
80022530:	eb000e1e 	bl	80025db0 <initlock>
80022534:	e1a00000 	nop			; (mov r0, r0)
80022538:	e8bd8800 	pop	{fp, pc}
8002253c:	8002a180 	.word	0x8002a180
80022540:	800acb04 	.word	0x800acb04

80022544 <filealloc>:
80022544:	e92d4800 	push	{fp, lr}
80022548:	e28db004 	add	fp, sp, #4
8002254c:	e24dd008 	sub	sp, sp, #8
80022550:	e59f006c 	ldr	r0, [pc, #108]	; 800225c4 <filealloc+0x80>
80022554:	eb000e27 	bl	80025df8 <acquire>
80022558:	e59f3068 	ldr	r3, [pc, #104]	; 800225c8 <filealloc+0x84>
8002255c:	e50b3008 	str	r3, [fp, #-8]
80022560:	ea00000d 	b	8002259c <filealloc+0x58>
80022564:	e51b3008 	ldr	r3, [fp, #-8]
80022568:	e5933004 	ldr	r3, [r3, #4]
8002256c:	e3530000 	cmp	r3, #0
80022570:	1a000006 	bne	80022590 <filealloc+0x4c>
80022574:	e51b3008 	ldr	r3, [fp, #-8]
80022578:	e3a02001 	mov	r2, #1
8002257c:	e5832004 	str	r2, [r3, #4]
80022580:	e59f003c 	ldr	r0, [pc, #60]	; 800225c4 <filealloc+0x80>
80022584:	eb000e26 	bl	80025e24 <release>
80022588:	e51b3008 	ldr	r3, [fp, #-8]
8002258c:	ea000009 	b	800225b8 <filealloc+0x74>
80022590:	e51b3008 	ldr	r3, [fp, #-8]
80022594:	e2833018 	add	r3, r3, #24
80022598:	e50b3008 	str	r3, [fp, #-8]
8002259c:	e59f2028 	ldr	r2, [pc, #40]	; 800225cc <filealloc+0x88>
800225a0:	e51b3008 	ldr	r3, [fp, #-8]
800225a4:	e1530002 	cmp	r3, r2
800225a8:	3affffed 	bcc	80022564 <filealloc+0x20>
800225ac:	e59f0010 	ldr	r0, [pc, #16]	; 800225c4 <filealloc+0x80>
800225b0:	eb000e1b 	bl	80025e24 <release>
800225b4:	e3a03000 	mov	r3, #0
800225b8:	e1a00003 	mov	r0, r3
800225bc:	e24bd004 	sub	sp, fp, #4
800225c0:	e8bd8800 	pop	{fp, pc}
800225c4:	800acb04 	.word	0x800acb04
800225c8:	800acb38 	.word	0x800acb38
800225cc:	800ad498 	.word	0x800ad498

800225d0 <filedup>:
800225d0:	e92d4800 	push	{fp, lr}
800225d4:	e28db004 	add	fp, sp, #4
800225d8:	e24dd008 	sub	sp, sp, #8
800225dc:	e50b0008 	str	r0, [fp, #-8]
800225e0:	e59f0044 	ldr	r0, [pc, #68]	; 8002262c <filedup+0x5c>
800225e4:	eb000e03 	bl	80025df8 <acquire>
800225e8:	e51b3008 	ldr	r3, [fp, #-8]
800225ec:	e5933004 	ldr	r3, [r3, #4]
800225f0:	e3530000 	cmp	r3, #0
800225f4:	ca000001 	bgt	80022600 <filedup+0x30>
800225f8:	e59f0030 	ldr	r0, [pc, #48]	; 80022630 <filedup+0x60>
800225fc:	ebfffd4f 	bl	80021b40 <panic>
80022600:	e51b3008 	ldr	r3, [fp, #-8]
80022604:	e5933004 	ldr	r3, [r3, #4]
80022608:	e2832001 	add	r2, r3, #1
8002260c:	e51b3008 	ldr	r3, [fp, #-8]
80022610:	e5832004 	str	r2, [r3, #4]
80022614:	e59f0010 	ldr	r0, [pc, #16]	; 8002262c <filedup+0x5c>
80022618:	eb000e01 	bl	80025e24 <release>
8002261c:	e51b3008 	ldr	r3, [fp, #-8]
80022620:	e1a00003 	mov	r0, r3
80022624:	e24bd004 	sub	sp, fp, #4
80022628:	e8bd8800 	pop	{fp, pc}
8002262c:	800acb04 	.word	0x800acb04
80022630:	8002a188 	.word	0x8002a188

80022634 <fileclose>:
80022634:	e92d4800 	push	{fp, lr}
80022638:	e28db004 	add	fp, sp, #4
8002263c:	e24dd020 	sub	sp, sp, #32
80022640:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80022644:	e59f00d0 	ldr	r0, [pc, #208]	; 8002271c <fileclose+0xe8>
80022648:	eb000dea 	bl	80025df8 <acquire>
8002264c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022650:	e5933004 	ldr	r3, [r3, #4]
80022654:	e3530000 	cmp	r3, #0
80022658:	ca000001 	bgt	80022664 <fileclose+0x30>
8002265c:	e59f00bc 	ldr	r0, [pc, #188]	; 80022720 <fileclose+0xec>
80022660:	ebfffd36 	bl	80021b40 <panic>
80022664:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022668:	e5933004 	ldr	r3, [r3, #4]
8002266c:	e2432001 	sub	r2, r3, #1
80022670:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022674:	e5832004 	str	r2, [r3, #4]
80022678:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
8002267c:	e5933004 	ldr	r3, [r3, #4]
80022680:	e3530000 	cmp	r3, #0
80022684:	da000002 	ble	80022694 <fileclose+0x60>
80022688:	e59f008c 	ldr	r0, [pc, #140]	; 8002271c <fileclose+0xe8>
8002268c:	eb000de4 	bl	80025e24 <release>
80022690:	ea00001f 	b	80022714 <fileclose+0xe0>
80022694:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022698:	e24bc01c 	sub	ip, fp, #28
8002269c:	e1a0e003 	mov	lr, r3
800226a0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
800226a4:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
800226a8:	e89e0003 	ldm	lr, {r0, r1}
800226ac:	e88c0003 	stm	ip, {r0, r1}
800226b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800226b4:	e3a02000 	mov	r2, #0
800226b8:	e5832004 	str	r2, [r3, #4]
800226bc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800226c0:	e3a02000 	mov	r2, #0
800226c4:	e5c32000 	strb	r2, [r3]
800226c8:	e59f004c 	ldr	r0, [pc, #76]	; 8002271c <fileclose+0xe8>
800226cc:	eb000dd4 	bl	80025e24 <release>
800226d0:	e55b301c 	ldrb	r3, [fp, #-28]	; 0xffffffe4
800226d4:	e3530001 	cmp	r3, #1
800226d8:	1a000005 	bne	800226f4 <fileclose+0xc0>
800226dc:	e51b3010 	ldr	r3, [fp, #-16]
800226e0:	e55b2013 	ldrb	r2, [fp, #-19]	; 0xffffffed
800226e4:	e1a01002 	mov	r1, r2
800226e8:	e1a00003 	mov	r0, r3
800226ec:	eb0008f3 	bl	80024ac0 <pipeclose>
800226f0:	ea000007 	b	80022714 <fileclose+0xe0>
800226f4:	e55b301c 	ldrb	r3, [fp, #-28]	; 0xffffffe4
800226f8:	e3530002 	cmp	r3, #2
800226fc:	1a000004 	bne	80022714 <fileclose+0xe0>
80022700:	eb000747 	bl	80024424 <begin_trans>
80022704:	e51b300c 	ldr	r3, [fp, #-12]
80022708:	e1a00003 	mov	r0, r3
8002270c:	eb00031f 	bl	80023390 <iput>
80022710:	eb000757 	bl	80024474 <commit_trans>
80022714:	e24bd004 	sub	sp, fp, #4
80022718:	e8bd8800 	pop	{fp, pc}
8002271c:	800acb04 	.word	0x800acb04
80022720:	8002a190 	.word	0x8002a190

80022724 <filestat>:
80022724:	e92d4800 	push	{fp, lr}
80022728:	e28db004 	add	fp, sp, #4
8002272c:	e24dd008 	sub	sp, sp, #8
80022730:	e50b0008 	str	r0, [fp, #-8]
80022734:	e50b100c 	str	r1, [fp, #-12]
80022738:	e51b3008 	ldr	r3, [fp, #-8]
8002273c:	e5d33000 	ldrb	r3, [r3]
80022740:	e3530002 	cmp	r3, #2
80022744:	1a00000e 	bne	80022784 <filestat+0x60>
80022748:	e51b3008 	ldr	r3, [fp, #-8]
8002274c:	e5933010 	ldr	r3, [r3, #16]
80022750:	e1a00003 	mov	r0, r3
80022754:	eb000287 	bl	80023178 <ilock>
80022758:	e51b3008 	ldr	r3, [fp, #-8]
8002275c:	e5933010 	ldr	r3, [r3, #16]
80022760:	e51b100c 	ldr	r1, [fp, #-12]
80022764:	e1a00003 	mov	r0, r3
80022768:	eb000410 	bl	800237b0 <stati>
8002276c:	e51b3008 	ldr	r3, [fp, #-8]
80022770:	e5933010 	ldr	r3, [r3, #16]
80022774:	e1a00003 	mov	r0, r3
80022778:	eb0002e2 	bl	80023308 <iunlock>
8002277c:	e3a03000 	mov	r3, #0
80022780:	ea000000 	b	80022788 <filestat+0x64>
80022784:	e3e03000 	mvn	r3, #0
80022788:	e1a00003 	mov	r0, r3
8002278c:	e24bd004 	sub	sp, fp, #4
80022790:	e8bd8800 	pop	{fp, pc}

80022794 <fileread>:
80022794:	e92d4800 	push	{fp, lr}
80022798:	e28db004 	add	fp, sp, #4
8002279c:	e24dd018 	sub	sp, sp, #24
800227a0:	e50b0010 	str	r0, [fp, #-16]
800227a4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800227a8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800227ac:	e51b3010 	ldr	r3, [fp, #-16]
800227b0:	e5d33008 	ldrb	r3, [r3, #8]
800227b4:	e3530000 	cmp	r3, #0
800227b8:	1a000001 	bne	800227c4 <fileread+0x30>
800227bc:	e3e03000 	mvn	r3, #0
800227c0:	ea00002c 	b	80022878 <fileread+0xe4>
800227c4:	e51b3010 	ldr	r3, [fp, #-16]
800227c8:	e5d33000 	ldrb	r3, [r3]
800227cc:	e3530001 	cmp	r3, #1
800227d0:	1a000007 	bne	800227f4 <fileread+0x60>
800227d4:	e51b3010 	ldr	r3, [fp, #-16]
800227d8:	e593300c 	ldr	r3, [r3, #12]
800227dc:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800227e0:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
800227e4:	e1a00003 	mov	r0, r3
800227e8:	eb00092d 	bl	80024ca4 <piperead>
800227ec:	e1a03000 	mov	r3, r0
800227f0:	ea000020 	b	80022878 <fileread+0xe4>
800227f4:	e51b3010 	ldr	r3, [fp, #-16]
800227f8:	e5d33000 	ldrb	r3, [r3]
800227fc:	e3530002 	cmp	r3, #2
80022800:	1a00001a 	bne	80022870 <fileread+0xdc>
80022804:	e51b3010 	ldr	r3, [fp, #-16]
80022808:	e5933010 	ldr	r3, [r3, #16]
8002280c:	e1a00003 	mov	r0, r3
80022810:	eb000258 	bl	80023178 <ilock>
80022814:	e51b3010 	ldr	r3, [fp, #-16]
80022818:	e5930010 	ldr	r0, [r3, #16]
8002281c:	e51b3010 	ldr	r3, [fp, #-16]
80022820:	e5932014 	ldr	r2, [r3, #20]
80022824:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022828:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
8002282c:	eb0003fd 	bl	80023828 <readi>
80022830:	e50b0008 	str	r0, [fp, #-8]
80022834:	e51b3008 	ldr	r3, [fp, #-8]
80022838:	e3530000 	cmp	r3, #0
8002283c:	da000005 	ble	80022858 <fileread+0xc4>
80022840:	e51b3010 	ldr	r3, [fp, #-16]
80022844:	e5932014 	ldr	r2, [r3, #20]
80022848:	e51b3008 	ldr	r3, [fp, #-8]
8002284c:	e0822003 	add	r2, r2, r3
80022850:	e51b3010 	ldr	r3, [fp, #-16]
80022854:	e5832014 	str	r2, [r3, #20]
80022858:	e51b3010 	ldr	r3, [fp, #-16]
8002285c:	e5933010 	ldr	r3, [r3, #16]
80022860:	e1a00003 	mov	r0, r3
80022864:	eb0002a7 	bl	80023308 <iunlock>
80022868:	e51b3008 	ldr	r3, [fp, #-8]
8002286c:	ea000001 	b	80022878 <fileread+0xe4>
80022870:	e59f000c 	ldr	r0, [pc, #12]	; 80022884 <fileread+0xf0>
80022874:	ebfffcb1 	bl	80021b40 <panic>
80022878:	e1a00003 	mov	r0, r3
8002287c:	e24bd004 	sub	sp, fp, #4
80022880:	e8bd8800 	pop	{fp, pc}
80022884:	8002a19c 	.word	0x8002a19c

80022888 <filewrite>:
80022888:	e92d4800 	push	{fp, lr}
8002288c:	e28db004 	add	fp, sp, #4
80022890:	e24dd020 	sub	sp, sp, #32
80022894:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80022898:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
8002289c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
800228a0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800228a4:	e5d33009 	ldrb	r3, [r3, #9]
800228a8:	e3530000 	cmp	r3, #0
800228ac:	1a000001 	bne	800228b8 <filewrite+0x30>
800228b0:	e3e03000 	mvn	r3, #0
800228b4:	ea000058 	b	80022a1c <filewrite+0x194>
800228b8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800228bc:	e5d33000 	ldrb	r3, [r3]
800228c0:	e3530001 	cmp	r3, #1
800228c4:	1a000007 	bne	800228e8 <filewrite+0x60>
800228c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800228cc:	e593300c 	ldr	r3, [r3, #12]
800228d0:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
800228d4:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
800228d8:	e1a00003 	mov	r0, r3
800228dc:	eb0008a9 	bl	80024b88 <pipewrite>
800228e0:	e1a03000 	mov	r3, r0
800228e4:	ea00004c 	b	80022a1c <filewrite+0x194>
800228e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800228ec:	e5d33000 	ldrb	r3, [r3]
800228f0:	e3530002 	cmp	r3, #2
800228f4:	1a000046 	bne	80022a14 <filewrite+0x18c>
800228f8:	e3a03c06 	mov	r3, #1536	; 0x600
800228fc:	e50b3010 	str	r3, [fp, #-16]
80022900:	e3a03000 	mov	r3, #0
80022904:	e50b3008 	str	r3, [fp, #-8]
80022908:	ea000033 	b	800229dc <filewrite+0x154>
8002290c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80022910:	e51b3008 	ldr	r3, [fp, #-8]
80022914:	e0423003 	sub	r3, r2, r3
80022918:	e50b300c 	str	r3, [fp, #-12]
8002291c:	e51b200c 	ldr	r2, [fp, #-12]
80022920:	e51b3010 	ldr	r3, [fp, #-16]
80022924:	e1520003 	cmp	r2, r3
80022928:	da000001 	ble	80022934 <filewrite+0xac>
8002292c:	e51b3010 	ldr	r3, [fp, #-16]
80022930:	e50b300c 	str	r3, [fp, #-12]
80022934:	eb0006ba 	bl	80024424 <begin_trans>
80022938:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002293c:	e5933010 	ldr	r3, [r3, #16]
80022940:	e1a00003 	mov	r0, r3
80022944:	eb00020b 	bl	80023178 <ilock>
80022948:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002294c:	e5930010 	ldr	r0, [r3, #16]
80022950:	e51b3008 	ldr	r3, [fp, #-8]
80022954:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80022958:	e0821003 	add	r1, r2, r3
8002295c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022960:	e5932014 	ldr	r2, [r3, #20]
80022964:	e51b300c 	ldr	r3, [fp, #-12]
80022968:	eb000429 	bl	80023a14 <writei>
8002296c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80022970:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80022974:	e3530000 	cmp	r3, #0
80022978:	da000005 	ble	80022994 <filewrite+0x10c>
8002297c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022980:	e5932014 	ldr	r2, [r3, #20]
80022984:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80022988:	e0822003 	add	r2, r2, r3
8002298c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022990:	e5832014 	str	r2, [r3, #20]
80022994:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022998:	e5933010 	ldr	r3, [r3, #16]
8002299c:	e1a00003 	mov	r0, r3
800229a0:	eb000258 	bl	80023308 <iunlock>
800229a4:	eb0006b2 	bl	80024474 <commit_trans>
800229a8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800229ac:	e3530000 	cmp	r3, #0
800229b0:	ba00000e 	blt	800229f0 <filewrite+0x168>
800229b4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800229b8:	e51b300c 	ldr	r3, [fp, #-12]
800229bc:	e1520003 	cmp	r2, r3
800229c0:	0a000001 	beq	800229cc <filewrite+0x144>
800229c4:	e59f005c 	ldr	r0, [pc, #92]	; 80022a28 <filewrite+0x1a0>
800229c8:	ebfffc5c 	bl	80021b40 <panic>
800229cc:	e51b2008 	ldr	r2, [fp, #-8]
800229d0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800229d4:	e0823003 	add	r3, r2, r3
800229d8:	e50b3008 	str	r3, [fp, #-8]
800229dc:	e51b2008 	ldr	r2, [fp, #-8]
800229e0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800229e4:	e1520003 	cmp	r2, r3
800229e8:	baffffc7 	blt	8002290c <filewrite+0x84>
800229ec:	ea000000 	b	800229f4 <filewrite+0x16c>
800229f0:	e1a00000 	nop			; (mov r0, r0)
800229f4:	e51b2008 	ldr	r2, [fp, #-8]
800229f8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800229fc:	e1520003 	cmp	r2, r3
80022a00:	1a000001 	bne	80022a0c <filewrite+0x184>
80022a04:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80022a08:	ea000003 	b	80022a1c <filewrite+0x194>
80022a0c:	e3e03000 	mvn	r3, #0
80022a10:	ea000001 	b	80022a1c <filewrite+0x194>
80022a14:	e59f0010 	ldr	r0, [pc, #16]	; 80022a2c <filewrite+0x1a4>
80022a18:	ebfffc48 	bl	80021b40 <panic>
80022a1c:	e1a00003 	mov	r0, r3
80022a20:	e24bd004 	sub	sp, fp, #4
80022a24:	e8bd8800 	pop	{fp, pc}
80022a28:	8002a1a8 	.word	0x8002a1a8
80022a2c:	8002a1b8 	.word	0x8002a1b8

80022a30 <readsb>:
80022a30:	e92d4800 	push	{fp, lr}
80022a34:	e28db004 	add	fp, sp, #4
80022a38:	e24dd010 	sub	sp, sp, #16
80022a3c:	e50b0010 	str	r0, [fp, #-16]
80022a40:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80022a44:	e51b3010 	ldr	r3, [fp, #-16]
80022a48:	e3a01001 	mov	r1, #1
80022a4c:	e1a00003 	mov	r0, r3
80022a50:	ebfff82a 	bl	80020b00 <bread>
80022a54:	e50b0008 	str	r0, [fp, #-8]
80022a58:	e51b3008 	ldr	r3, [fp, #-8]
80022a5c:	e2833018 	add	r3, r3, #24
80022a60:	e3a02010 	mov	r2, #16
80022a64:	e1a01003 	mov	r1, r3
80022a68:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80022a6c:	ebfff5d4 	bl	800201c4 <memmove>
80022a70:	e51b0008 	ldr	r0, [fp, #-8]
80022a74:	ebfff84b 	bl	80020ba8 <brelse>
80022a78:	e1a00000 	nop			; (mov r0, r0)
80022a7c:	e24bd004 	sub	sp, fp, #4
80022a80:	e8bd8800 	pop	{fp, pc}

80022a84 <bzero>:
80022a84:	e92d4800 	push	{fp, lr}
80022a88:	e28db004 	add	fp, sp, #4
80022a8c:	e24dd010 	sub	sp, sp, #16
80022a90:	e50b0010 	str	r0, [fp, #-16]
80022a94:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80022a98:	e51b3010 	ldr	r3, [fp, #-16]
80022a9c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80022aa0:	e1a01002 	mov	r1, r2
80022aa4:	e1a00003 	mov	r0, r3
80022aa8:	ebfff814 	bl	80020b00 <bread>
80022aac:	e50b0008 	str	r0, [fp, #-8]
80022ab0:	e51b3008 	ldr	r3, [fp, #-8]
80022ab4:	e2833018 	add	r3, r3, #24
80022ab8:	e3a02c02 	mov	r2, #512	; 0x200
80022abc:	e3a01000 	mov	r1, #0
80022ac0:	e1a00003 	mov	r0, r3
80022ac4:	ebfff54d 	bl	80020000 <memset>
80022ac8:	e51b0008 	ldr	r0, [fp, #-8]
80022acc:	eb000680 	bl	800244d4 <log_write>
80022ad0:	e51b0008 	ldr	r0, [fp, #-8]
80022ad4:	ebfff833 	bl	80020ba8 <brelse>
80022ad8:	e1a00000 	nop			; (mov r0, r0)
80022adc:	e24bd004 	sub	sp, fp, #4
80022ae0:	e8bd8800 	pop	{fp, pc}

80022ae4 <balloc>:
80022ae4:	e92d4800 	push	{fp, lr}
80022ae8:	e28db004 	add	fp, sp, #4
80022aec:	e24dd028 	sub	sp, sp, #40	; 0x28
80022af0:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80022af4:	e3a03000 	mov	r3, #0
80022af8:	e50b3010 	str	r3, [fp, #-16]
80022afc:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022b00:	e24b2024 	sub	r2, fp, #36	; 0x24
80022b04:	e1a01002 	mov	r1, r2
80022b08:	e1a00003 	mov	r0, r3
80022b0c:	ebffffc7 	bl	80022a30 <readsb>
80022b10:	e3a03000 	mov	r3, #0
80022b14:	e50b3008 	str	r3, [fp, #-8]
80022b18:	ea00005c 	b	80022c90 <balloc+0x1ac>
80022b1c:	e51b3008 	ldr	r3, [fp, #-8]
80022b20:	e2832eff 	add	r2, r3, #4080	; 0xff0
80022b24:	e282200f 	add	r2, r2, #15
80022b28:	e3530000 	cmp	r3, #0
80022b2c:	b1a03002 	movlt	r3, r2
80022b30:	a1a03003 	movge	r3, r3
80022b34:	e1a03643 	asr	r3, r3, #12
80022b38:	e1a02003 	mov	r2, r3
80022b3c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80022b40:	e1a031a3 	lsr	r3, r3, #3
80022b44:	e0823003 	add	r3, r2, r3
80022b48:	e2833003 	add	r3, r3, #3
80022b4c:	e1a01003 	mov	r1, r3
80022b50:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80022b54:	ebfff7e9 	bl	80020b00 <bread>
80022b58:	e50b0010 	str	r0, [fp, #-16]
80022b5c:	e3a03000 	mov	r3, #0
80022b60:	e50b300c 	str	r3, [fp, #-12]
80022b64:	ea00003a 	b	80022c54 <balloc+0x170>
80022b68:	e51b300c 	ldr	r3, [fp, #-12]
80022b6c:	e2732000 	rsbs	r2, r3, #0
80022b70:	e2033007 	and	r3, r3, #7
80022b74:	e2022007 	and	r2, r2, #7
80022b78:	52623000 	rsbpl	r3, r2, #0
80022b7c:	e3a02001 	mov	r2, #1
80022b80:	e1a03312 	lsl	r3, r2, r3
80022b84:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80022b88:	e51b300c 	ldr	r3, [fp, #-12]
80022b8c:	e2832007 	add	r2, r3, #7
80022b90:	e3530000 	cmp	r3, #0
80022b94:	b1a03002 	movlt	r3, r2
80022b98:	a1a03003 	movge	r3, r3
80022b9c:	e1a031c3 	asr	r3, r3, #3
80022ba0:	e1a02003 	mov	r2, r3
80022ba4:	e51b3010 	ldr	r3, [fp, #-16]
80022ba8:	e0833002 	add	r3, r3, r2
80022bac:	e5d33018 	ldrb	r3, [r3, #24]
80022bb0:	e1a02003 	mov	r2, r3
80022bb4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80022bb8:	e0033002 	and	r3, r3, r2
80022bbc:	e3530000 	cmp	r3, #0
80022bc0:	1a000020 	bne	80022c48 <balloc+0x164>
80022bc4:	e51b300c 	ldr	r3, [fp, #-12]
80022bc8:	e2832007 	add	r2, r3, #7
80022bcc:	e3530000 	cmp	r3, #0
80022bd0:	b1a03002 	movlt	r3, r2
80022bd4:	a1a03003 	movge	r3, r3
80022bd8:	e1a031c3 	asr	r3, r3, #3
80022bdc:	e51b2010 	ldr	r2, [fp, #-16]
80022be0:	e0822003 	add	r2, r2, r3
80022be4:	e5d22018 	ldrb	r2, [r2, #24]
80022be8:	e6af1072 	sxtb	r1, r2
80022bec:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80022bf0:	e6af2072 	sxtb	r2, r2
80022bf4:	e1812002 	orr	r2, r1, r2
80022bf8:	e6af2072 	sxtb	r2, r2
80022bfc:	e6ef1072 	uxtb	r1, r2
80022c00:	e51b2010 	ldr	r2, [fp, #-16]
80022c04:	e0823003 	add	r3, r2, r3
80022c08:	e1a02001 	mov	r2, r1
80022c0c:	e5c32018 	strb	r2, [r3, #24]
80022c10:	e51b0010 	ldr	r0, [fp, #-16]
80022c14:	eb00062e 	bl	800244d4 <log_write>
80022c18:	e51b0010 	ldr	r0, [fp, #-16]
80022c1c:	ebfff7e1 	bl	80020ba8 <brelse>
80022c20:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80022c24:	e51b2008 	ldr	r2, [fp, #-8]
80022c28:	e51b300c 	ldr	r3, [fp, #-12]
80022c2c:	e0823003 	add	r3, r2, r3
80022c30:	e1a01003 	mov	r1, r3
80022c34:	ebffff92 	bl	80022a84 <bzero>
80022c38:	e51b2008 	ldr	r2, [fp, #-8]
80022c3c:	e51b300c 	ldr	r3, [fp, #-12]
80022c40:	e0823003 	add	r3, r2, r3
80022c44:	ea000017 	b	80022ca8 <balloc+0x1c4>
80022c48:	e51b300c 	ldr	r3, [fp, #-12]
80022c4c:	e2833001 	add	r3, r3, #1
80022c50:	e50b300c 	str	r3, [fp, #-12]
80022c54:	e51b300c 	ldr	r3, [fp, #-12]
80022c58:	e3530a01 	cmp	r3, #4096	; 0x1000
80022c5c:	aa000006 	bge	80022c7c <balloc+0x198>
80022c60:	e51b2008 	ldr	r2, [fp, #-8]
80022c64:	e51b300c 	ldr	r3, [fp, #-12]
80022c68:	e0823003 	add	r3, r2, r3
80022c6c:	e1a02003 	mov	r2, r3
80022c70:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80022c74:	e1520003 	cmp	r2, r3
80022c78:	3affffba 	bcc	80022b68 <balloc+0x84>
80022c7c:	e51b0010 	ldr	r0, [fp, #-16]
80022c80:	ebfff7c8 	bl	80020ba8 <brelse>
80022c84:	e51b3008 	ldr	r3, [fp, #-8]
80022c88:	e2833a01 	add	r3, r3, #4096	; 0x1000
80022c8c:	e50b3008 	str	r3, [fp, #-8]
80022c90:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80022c94:	e51b3008 	ldr	r3, [fp, #-8]
80022c98:	e1520003 	cmp	r2, r3
80022c9c:	8affff9e 	bhi	80022b1c <balloc+0x38>
80022ca0:	e59f000c 	ldr	r0, [pc, #12]	; 80022cb4 <balloc+0x1d0>
80022ca4:	ebfffba5 	bl	80021b40 <panic>
80022ca8:	e1a00003 	mov	r0, r3
80022cac:	e24bd004 	sub	sp, fp, #4
80022cb0:	e8bd8800 	pop	{fp, pc}
80022cb4:	8002a1c4 	.word	0x8002a1c4

80022cb8 <bfree>:
80022cb8:	e92d4800 	push	{fp, lr}
80022cbc:	e28db004 	add	fp, sp, #4
80022cc0:	e24dd028 	sub	sp, sp, #40	; 0x28
80022cc4:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80022cc8:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
80022ccc:	e24b3020 	sub	r3, fp, #32
80022cd0:	e1a01003 	mov	r1, r3
80022cd4:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80022cd8:	ebffff54 	bl	80022a30 <readsb>
80022cdc:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80022ce0:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022ce4:	e1a02623 	lsr	r2, r3, #12
80022ce8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80022cec:	e1a031a3 	lsr	r3, r3, #3
80022cf0:	e0823003 	add	r3, r2, r3
80022cf4:	e2833003 	add	r3, r3, #3
80022cf8:	e1a01003 	mov	r1, r3
80022cfc:	ebfff77f 	bl	80020b00 <bread>
80022d00:	e50b0008 	str	r0, [fp, #-8]
80022d04:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80022d08:	e1a03a03 	lsl	r3, r3, #20
80022d0c:	e1a03a23 	lsr	r3, r3, #20
80022d10:	e50b300c 	str	r3, [fp, #-12]
80022d14:	e51b300c 	ldr	r3, [fp, #-12]
80022d18:	e2732000 	rsbs	r2, r3, #0
80022d1c:	e2033007 	and	r3, r3, #7
80022d20:	e2022007 	and	r2, r2, #7
80022d24:	52623000 	rsbpl	r3, r2, #0
80022d28:	e3a02001 	mov	r2, #1
80022d2c:	e1a03312 	lsl	r3, r2, r3
80022d30:	e50b3010 	str	r3, [fp, #-16]
80022d34:	e51b300c 	ldr	r3, [fp, #-12]
80022d38:	e2832007 	add	r2, r3, #7
80022d3c:	e3530000 	cmp	r3, #0
80022d40:	b1a03002 	movlt	r3, r2
80022d44:	a1a03003 	movge	r3, r3
80022d48:	e1a031c3 	asr	r3, r3, #3
80022d4c:	e1a02003 	mov	r2, r3
80022d50:	e51b3008 	ldr	r3, [fp, #-8]
80022d54:	e0833002 	add	r3, r3, r2
80022d58:	e5d33018 	ldrb	r3, [r3, #24]
80022d5c:	e1a02003 	mov	r2, r3
80022d60:	e51b3010 	ldr	r3, [fp, #-16]
80022d64:	e0033002 	and	r3, r3, r2
80022d68:	e3530000 	cmp	r3, #0
80022d6c:	1a000001 	bne	80022d78 <bfree+0xc0>
80022d70:	e59f0070 	ldr	r0, [pc, #112]	; 80022de8 <bfree+0x130>
80022d74:	ebfffb71 	bl	80021b40 <panic>
80022d78:	e51b300c 	ldr	r3, [fp, #-12]
80022d7c:	e2832007 	add	r2, r3, #7
80022d80:	e3530000 	cmp	r3, #0
80022d84:	b1a03002 	movlt	r3, r2
80022d88:	a1a03003 	movge	r3, r3
80022d8c:	e1a031c3 	asr	r3, r3, #3
80022d90:	e51b2008 	ldr	r2, [fp, #-8]
80022d94:	e0822003 	add	r2, r2, r3
80022d98:	e5d22018 	ldrb	r2, [r2, #24]
80022d9c:	e6af1072 	sxtb	r1, r2
80022da0:	e51b2010 	ldr	r2, [fp, #-16]
80022da4:	e6af2072 	sxtb	r2, r2
80022da8:	e1e02002 	mvn	r2, r2
80022dac:	e6af2072 	sxtb	r2, r2
80022db0:	e0022001 	and	r2, r2, r1
80022db4:	e6af2072 	sxtb	r2, r2
80022db8:	e6ef1072 	uxtb	r1, r2
80022dbc:	e51b2008 	ldr	r2, [fp, #-8]
80022dc0:	e0823003 	add	r3, r2, r3
80022dc4:	e1a02001 	mov	r2, r1
80022dc8:	e5c32018 	strb	r2, [r3, #24]
80022dcc:	e51b0008 	ldr	r0, [fp, #-8]
80022dd0:	eb0005bf 	bl	800244d4 <log_write>
80022dd4:	e51b0008 	ldr	r0, [fp, #-8]
80022dd8:	ebfff772 	bl	80020ba8 <brelse>
80022ddc:	e1a00000 	nop			; (mov r0, r0)
80022de0:	e24bd004 	sub	sp, fp, #4
80022de4:	e8bd8800 	pop	{fp, pc}
80022de8:	8002a1dc 	.word	0x8002a1dc

80022dec <iinit>:
80022dec:	e92d4800 	push	{fp, lr}
80022df0:	e28db004 	add	fp, sp, #4
80022df4:	e59f100c 	ldr	r1, [pc, #12]	; 80022e08 <iinit+0x1c>
80022df8:	e59f000c 	ldr	r0, [pc, #12]	; 80022e0c <iinit+0x20>
80022dfc:	eb000beb 	bl	80025db0 <initlock>
80022e00:	e1a00000 	nop			; (mov r0, r0)
80022e04:	e8bd8800 	pop	{fp, pc}
80022e08:	8002a1f0 	.word	0x8002a1f0
80022e0c:	800ad4e8 	.word	0x800ad4e8

80022e10 <ialloc>:
80022e10:	e92d4800 	push	{fp, lr}
80022e14:	e28db004 	add	fp, sp, #4
80022e18:	e24dd028 	sub	sp, sp, #40	; 0x28
80022e1c:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80022e20:	e1a03001 	mov	r3, r1
80022e24:	e14b32ba 	strh	r3, [fp, #-42]	; 0xffffffd6
80022e28:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80022e2c:	e24b2020 	sub	r2, fp, #32
80022e30:	e1a01002 	mov	r1, r2
80022e34:	e1a00003 	mov	r0, r3
80022e38:	ebfffefc 	bl	80022a30 <readsb>
80022e3c:	e3a03001 	mov	r3, #1
80022e40:	e50b3008 	str	r3, [fp, #-8]
80022e44:	ea000027 	b	80022ee8 <ialloc+0xd8>
80022e48:	e51b3008 	ldr	r3, [fp, #-8]
80022e4c:	e1a031a3 	lsr	r3, r3, #3
80022e50:	e2833002 	add	r3, r3, #2
80022e54:	e1a01003 	mov	r1, r3
80022e58:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80022e5c:	ebfff727 	bl	80020b00 <bread>
80022e60:	e50b000c 	str	r0, [fp, #-12]
80022e64:	e51b300c 	ldr	r3, [fp, #-12]
80022e68:	e2832018 	add	r2, r3, #24
80022e6c:	e51b3008 	ldr	r3, [fp, #-8]
80022e70:	e2033007 	and	r3, r3, #7
80022e74:	e1a03303 	lsl	r3, r3, #6
80022e78:	e0823003 	add	r3, r2, r3
80022e7c:	e50b3010 	str	r3, [fp, #-16]
80022e80:	e51b3010 	ldr	r3, [fp, #-16]
80022e84:	e1d330f0 	ldrsh	r3, [r3]
80022e88:	e3530000 	cmp	r3, #0
80022e8c:	1a000010 	bne	80022ed4 <ialloc+0xc4>
80022e90:	e3a02040 	mov	r2, #64	; 0x40
80022e94:	e3a01000 	mov	r1, #0
80022e98:	e51b0010 	ldr	r0, [fp, #-16]
80022e9c:	ebfff457 	bl	80020000 <memset>
80022ea0:	e51b3010 	ldr	r3, [fp, #-16]
80022ea4:	e15b22ba 	ldrh	r2, [fp, #-42]	; 0xffffffd6
80022ea8:	e1c320b0 	strh	r2, [r3]
80022eac:	e51b000c 	ldr	r0, [fp, #-12]
80022eb0:	eb000587 	bl	800244d4 <log_write>
80022eb4:	e51b000c 	ldr	r0, [fp, #-12]
80022eb8:	ebfff73a 	bl	80020ba8 <brelse>
80022ebc:	e51b3008 	ldr	r3, [fp, #-8]
80022ec0:	e1a01003 	mov	r1, r3
80022ec4:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80022ec8:	eb000048 	bl	80022ff0 <iget>
80022ecc:	e1a03000 	mov	r3, r0
80022ed0:	ea00000a 	b	80022f00 <ialloc+0xf0>
80022ed4:	e51b000c 	ldr	r0, [fp, #-12]
80022ed8:	ebfff732 	bl	80020ba8 <brelse>
80022edc:	e51b3008 	ldr	r3, [fp, #-8]
80022ee0:	e2833001 	add	r3, r3, #1
80022ee4:	e50b3008 	str	r3, [fp, #-8]
80022ee8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80022eec:	e51b3008 	ldr	r3, [fp, #-8]
80022ef0:	e1520003 	cmp	r2, r3
80022ef4:	8affffd3 	bhi	80022e48 <ialloc+0x38>
80022ef8:	e59f000c 	ldr	r0, [pc, #12]	; 80022f0c <ialloc+0xfc>
80022efc:	ebfffb0f 	bl	80021b40 <panic>
80022f00:	e1a00003 	mov	r0, r3
80022f04:	e24bd004 	sub	sp, fp, #4
80022f08:	e8bd8800 	pop	{fp, pc}
80022f0c:	8002a1f8 	.word	0x8002a1f8

80022f10 <iupdate>:
80022f10:	e92d4800 	push	{fp, lr}
80022f14:	e28db004 	add	fp, sp, #4
80022f18:	e24dd010 	sub	sp, sp, #16
80022f1c:	e50b0010 	str	r0, [fp, #-16]
80022f20:	e51b3010 	ldr	r3, [fp, #-16]
80022f24:	e5932000 	ldr	r2, [r3]
80022f28:	e51b3010 	ldr	r3, [fp, #-16]
80022f2c:	e5933004 	ldr	r3, [r3, #4]
80022f30:	e1a031a3 	lsr	r3, r3, #3
80022f34:	e2833002 	add	r3, r3, #2
80022f38:	e1a01003 	mov	r1, r3
80022f3c:	e1a00002 	mov	r0, r2
80022f40:	ebfff6ee 	bl	80020b00 <bread>
80022f44:	e50b0008 	str	r0, [fp, #-8]
80022f48:	e51b3008 	ldr	r3, [fp, #-8]
80022f4c:	e2832018 	add	r2, r3, #24
80022f50:	e51b3010 	ldr	r3, [fp, #-16]
80022f54:	e5933004 	ldr	r3, [r3, #4]
80022f58:	e2033007 	and	r3, r3, #7
80022f5c:	e1a03303 	lsl	r3, r3, #6
80022f60:	e0823003 	add	r3, r2, r3
80022f64:	e50b300c 	str	r3, [fp, #-12]
80022f68:	e51b3010 	ldr	r3, [fp, #-16]
80022f6c:	e1d321f0 	ldrsh	r2, [r3, #16]
80022f70:	e51b300c 	ldr	r3, [fp, #-12]
80022f74:	e1c320b0 	strh	r2, [r3]
80022f78:	e51b3010 	ldr	r3, [fp, #-16]
80022f7c:	e1d321f2 	ldrsh	r2, [r3, #18]
80022f80:	e51b300c 	ldr	r3, [fp, #-12]
80022f84:	e1c320b2 	strh	r2, [r3, #2]
80022f88:	e51b3010 	ldr	r3, [fp, #-16]
80022f8c:	e1d321f4 	ldrsh	r2, [r3, #20]
80022f90:	e51b300c 	ldr	r3, [fp, #-12]
80022f94:	e1c320b4 	strh	r2, [r3, #4]
80022f98:	e51b3010 	ldr	r3, [fp, #-16]
80022f9c:	e1d321f6 	ldrsh	r2, [r3, #22]
80022fa0:	e51b300c 	ldr	r3, [fp, #-12]
80022fa4:	e1c320b6 	strh	r2, [r3, #6]
80022fa8:	e51b3010 	ldr	r3, [fp, #-16]
80022fac:	e5932018 	ldr	r2, [r3, #24]
80022fb0:	e51b300c 	ldr	r3, [fp, #-12]
80022fb4:	e5832008 	str	r2, [r3, #8]
80022fb8:	e51b300c 	ldr	r3, [fp, #-12]
80022fbc:	e283000c 	add	r0, r3, #12
80022fc0:	e51b3010 	ldr	r3, [fp, #-16]
80022fc4:	e283301c 	add	r3, r3, #28
80022fc8:	e3a02034 	mov	r2, #52	; 0x34
80022fcc:	e1a01003 	mov	r1, r3
80022fd0:	ebfff47b 	bl	800201c4 <memmove>
80022fd4:	e51b0008 	ldr	r0, [fp, #-8]
80022fd8:	eb00053d 	bl	800244d4 <log_write>
80022fdc:	e51b0008 	ldr	r0, [fp, #-8]
80022fe0:	ebfff6f0 	bl	80020ba8 <brelse>
80022fe4:	e1a00000 	nop			; (mov r0, r0)
80022fe8:	e24bd004 	sub	sp, fp, #4
80022fec:	e8bd8800 	pop	{fp, pc}

80022ff0 <iget>:
80022ff0:	e92d4800 	push	{fp, lr}
80022ff4:	e28db004 	add	fp, sp, #4
80022ff8:	e24dd010 	sub	sp, sp, #16
80022ffc:	e50b0010 	str	r0, [fp, #-16]
80023000:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80023004:	e59f0114 	ldr	r0, [pc, #276]	; 80023120 <iget+0x130>
80023008:	eb000b7a 	bl	80025df8 <acquire>
8002300c:	e3a03000 	mov	r3, #0
80023010:	e50b300c 	str	r3, [fp, #-12]
80023014:	e59f3108 	ldr	r3, [pc, #264]	; 80023124 <iget+0x134>
80023018:	e50b3008 	str	r3, [fp, #-8]
8002301c:	ea000022 	b	800230ac <iget+0xbc>
80023020:	e51b3008 	ldr	r3, [fp, #-8]
80023024:	e5933008 	ldr	r3, [r3, #8]
80023028:	e3530000 	cmp	r3, #0
8002302c:	da000012 	ble	8002307c <iget+0x8c>
80023030:	e51b3008 	ldr	r3, [fp, #-8]
80023034:	e5933000 	ldr	r3, [r3]
80023038:	e51b2010 	ldr	r2, [fp, #-16]
8002303c:	e1520003 	cmp	r2, r3
80023040:	1a00000d 	bne	8002307c <iget+0x8c>
80023044:	e51b3008 	ldr	r3, [fp, #-8]
80023048:	e5933004 	ldr	r3, [r3, #4]
8002304c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80023050:	e1520003 	cmp	r2, r3
80023054:	1a000008 	bne	8002307c <iget+0x8c>
80023058:	e51b3008 	ldr	r3, [fp, #-8]
8002305c:	e5933008 	ldr	r3, [r3, #8]
80023060:	e2832001 	add	r2, r3, #1
80023064:	e51b3008 	ldr	r3, [fp, #-8]
80023068:	e5832008 	str	r2, [r3, #8]
8002306c:	e59f00ac 	ldr	r0, [pc, #172]	; 80023120 <iget+0x130>
80023070:	eb000b6b 	bl	80025e24 <release>
80023074:	e51b3008 	ldr	r3, [fp, #-8]
80023078:	ea000025 	b	80023114 <iget+0x124>
8002307c:	e51b300c 	ldr	r3, [fp, #-12]
80023080:	e3530000 	cmp	r3, #0
80023084:	1a000005 	bne	800230a0 <iget+0xb0>
80023088:	e51b3008 	ldr	r3, [fp, #-8]
8002308c:	e5933008 	ldr	r3, [r3, #8]
80023090:	e3530000 	cmp	r3, #0
80023094:	1a000001 	bne	800230a0 <iget+0xb0>
80023098:	e51b3008 	ldr	r3, [fp, #-8]
8002309c:	e50b300c 	str	r3, [fp, #-12]
800230a0:	e51b3008 	ldr	r3, [fp, #-8]
800230a4:	e2833050 	add	r3, r3, #80	; 0x50
800230a8:	e50b3008 	str	r3, [fp, #-8]
800230ac:	e51b3008 	ldr	r3, [fp, #-8]
800230b0:	e59f2070 	ldr	r2, [pc, #112]	; 80023128 <iget+0x138>
800230b4:	e1530002 	cmp	r3, r2
800230b8:	3affffd8 	bcc	80023020 <iget+0x30>
800230bc:	e51b300c 	ldr	r3, [fp, #-12]
800230c0:	e3530000 	cmp	r3, #0
800230c4:	1a000001 	bne	800230d0 <iget+0xe0>
800230c8:	e59f005c 	ldr	r0, [pc, #92]	; 8002312c <iget+0x13c>
800230cc:	ebfffa9b 	bl	80021b40 <panic>
800230d0:	e51b300c 	ldr	r3, [fp, #-12]
800230d4:	e50b3008 	str	r3, [fp, #-8]
800230d8:	e51b3008 	ldr	r3, [fp, #-8]
800230dc:	e51b2010 	ldr	r2, [fp, #-16]
800230e0:	e5832000 	str	r2, [r3]
800230e4:	e51b3008 	ldr	r3, [fp, #-8]
800230e8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800230ec:	e5832004 	str	r2, [r3, #4]
800230f0:	e51b3008 	ldr	r3, [fp, #-8]
800230f4:	e3a02001 	mov	r2, #1
800230f8:	e5832008 	str	r2, [r3, #8]
800230fc:	e51b3008 	ldr	r3, [fp, #-8]
80023100:	e3a02000 	mov	r2, #0
80023104:	e583200c 	str	r2, [r3, #12]
80023108:	e59f0010 	ldr	r0, [pc, #16]	; 80023120 <iget+0x130>
8002310c:	eb000b44 	bl	80025e24 <release>
80023110:	e51b3008 	ldr	r3, [fp, #-8]
80023114:	e1a00003 	mov	r0, r3
80023118:	e24bd004 	sub	sp, fp, #4
8002311c:	e8bd8800 	pop	{fp, pc}
80023120:	800ad4e8 	.word	0x800ad4e8
80023124:	800ad51c 	.word	0x800ad51c
80023128:	800ae4bc 	.word	0x800ae4bc
8002312c:	8002a20c 	.word	0x8002a20c

80023130 <idup>:
80023130:	e92d4800 	push	{fp, lr}
80023134:	e28db004 	add	fp, sp, #4
80023138:	e24dd008 	sub	sp, sp, #8
8002313c:	e50b0008 	str	r0, [fp, #-8]
80023140:	e59f002c 	ldr	r0, [pc, #44]	; 80023174 <idup+0x44>
80023144:	eb000b2b 	bl	80025df8 <acquire>
80023148:	e51b3008 	ldr	r3, [fp, #-8]
8002314c:	e5933008 	ldr	r3, [r3, #8]
80023150:	e2832001 	add	r2, r3, #1
80023154:	e51b3008 	ldr	r3, [fp, #-8]
80023158:	e5832008 	str	r2, [r3, #8]
8002315c:	e59f0010 	ldr	r0, [pc, #16]	; 80023174 <idup+0x44>
80023160:	eb000b2f 	bl	80025e24 <release>
80023164:	e51b3008 	ldr	r3, [fp, #-8]
80023168:	e1a00003 	mov	r0, r3
8002316c:	e24bd004 	sub	sp, fp, #4
80023170:	e8bd8800 	pop	{fp, pc}
80023174:	800ad4e8 	.word	0x800ad4e8

80023178 <ilock>:
80023178:	e92d4800 	push	{fp, lr}
8002317c:	e28db004 	add	fp, sp, #4
80023180:	e24dd010 	sub	sp, sp, #16
80023184:	e50b0010 	str	r0, [fp, #-16]
80023188:	e51b3010 	ldr	r3, [fp, #-16]
8002318c:	e3530000 	cmp	r3, #0
80023190:	0a000003 	beq	800231a4 <ilock+0x2c>
80023194:	e51b3010 	ldr	r3, [fp, #-16]
80023198:	e5933008 	ldr	r3, [r3, #8]
8002319c:	e3530000 	cmp	r3, #0
800231a0:	ca000001 	bgt	800231ac <ilock+0x34>
800231a4:	e59f0150 	ldr	r0, [pc, #336]	; 800232fc <ilock+0x184>
800231a8:	ebfffa64 	bl	80021b40 <panic>
800231ac:	e59f014c 	ldr	r0, [pc, #332]	; 80023300 <ilock+0x188>
800231b0:	eb000b10 	bl	80025df8 <acquire>
800231b4:	ea000002 	b	800231c4 <ilock+0x4c>
800231b8:	e59f1140 	ldr	r1, [pc, #320]	; 80023300 <ilock+0x188>
800231bc:	e51b0010 	ldr	r0, [fp, #-16]
800231c0:	eb0009bd 	bl	800258bc <sleep>
800231c4:	e51b3010 	ldr	r3, [fp, #-16]
800231c8:	e593300c 	ldr	r3, [r3, #12]
800231cc:	e2033001 	and	r3, r3, #1
800231d0:	e3530000 	cmp	r3, #0
800231d4:	1afffff7 	bne	800231b8 <ilock+0x40>
800231d8:	e51b3010 	ldr	r3, [fp, #-16]
800231dc:	e593300c 	ldr	r3, [r3, #12]
800231e0:	e3832001 	orr	r2, r3, #1
800231e4:	e51b3010 	ldr	r3, [fp, #-16]
800231e8:	e583200c 	str	r2, [r3, #12]
800231ec:	e59f010c 	ldr	r0, [pc, #268]	; 80023300 <ilock+0x188>
800231f0:	eb000b0b 	bl	80025e24 <release>
800231f4:	e51b3010 	ldr	r3, [fp, #-16]
800231f8:	e593300c 	ldr	r3, [r3, #12]
800231fc:	e2033002 	and	r3, r3, #2
80023200:	e3530000 	cmp	r3, #0
80023204:	1a000039 	bne	800232f0 <ilock+0x178>
80023208:	e51b3010 	ldr	r3, [fp, #-16]
8002320c:	e5932000 	ldr	r2, [r3]
80023210:	e51b3010 	ldr	r3, [fp, #-16]
80023214:	e5933004 	ldr	r3, [r3, #4]
80023218:	e1a031a3 	lsr	r3, r3, #3
8002321c:	e2833002 	add	r3, r3, #2
80023220:	e1a01003 	mov	r1, r3
80023224:	e1a00002 	mov	r0, r2
80023228:	ebfff634 	bl	80020b00 <bread>
8002322c:	e50b0008 	str	r0, [fp, #-8]
80023230:	e51b3008 	ldr	r3, [fp, #-8]
80023234:	e2832018 	add	r2, r3, #24
80023238:	e51b3010 	ldr	r3, [fp, #-16]
8002323c:	e5933004 	ldr	r3, [r3, #4]
80023240:	e2033007 	and	r3, r3, #7
80023244:	e1a03303 	lsl	r3, r3, #6
80023248:	e0823003 	add	r3, r2, r3
8002324c:	e50b300c 	str	r3, [fp, #-12]
80023250:	e51b300c 	ldr	r3, [fp, #-12]
80023254:	e1d320f0 	ldrsh	r2, [r3]
80023258:	e51b3010 	ldr	r3, [fp, #-16]
8002325c:	e1c321b0 	strh	r2, [r3, #16]
80023260:	e51b300c 	ldr	r3, [fp, #-12]
80023264:	e1d320f2 	ldrsh	r2, [r3, #2]
80023268:	e51b3010 	ldr	r3, [fp, #-16]
8002326c:	e1c321b2 	strh	r2, [r3, #18]
80023270:	e51b300c 	ldr	r3, [fp, #-12]
80023274:	e1d320f4 	ldrsh	r2, [r3, #4]
80023278:	e51b3010 	ldr	r3, [fp, #-16]
8002327c:	e1c321b4 	strh	r2, [r3, #20]
80023280:	e51b300c 	ldr	r3, [fp, #-12]
80023284:	e1d320f6 	ldrsh	r2, [r3, #6]
80023288:	e51b3010 	ldr	r3, [fp, #-16]
8002328c:	e1c321b6 	strh	r2, [r3, #22]
80023290:	e51b300c 	ldr	r3, [fp, #-12]
80023294:	e5932008 	ldr	r2, [r3, #8]
80023298:	e51b3010 	ldr	r3, [fp, #-16]
8002329c:	e5832018 	str	r2, [r3, #24]
800232a0:	e51b3010 	ldr	r3, [fp, #-16]
800232a4:	e283001c 	add	r0, r3, #28
800232a8:	e51b300c 	ldr	r3, [fp, #-12]
800232ac:	e283300c 	add	r3, r3, #12
800232b0:	e3a02034 	mov	r2, #52	; 0x34
800232b4:	e1a01003 	mov	r1, r3
800232b8:	ebfff3c1 	bl	800201c4 <memmove>
800232bc:	e51b0008 	ldr	r0, [fp, #-8]
800232c0:	ebfff638 	bl	80020ba8 <brelse>
800232c4:	e51b3010 	ldr	r3, [fp, #-16]
800232c8:	e593300c 	ldr	r3, [r3, #12]
800232cc:	e3832002 	orr	r2, r3, #2
800232d0:	e51b3010 	ldr	r3, [fp, #-16]
800232d4:	e583200c 	str	r2, [r3, #12]
800232d8:	e51b3010 	ldr	r3, [fp, #-16]
800232dc:	e1d331f0 	ldrsh	r3, [r3, #16]
800232e0:	e3530000 	cmp	r3, #0
800232e4:	1a000001 	bne	800232f0 <ilock+0x178>
800232e8:	e59f0014 	ldr	r0, [pc, #20]	; 80023304 <ilock+0x18c>
800232ec:	ebfffa13 	bl	80021b40 <panic>
800232f0:	e1a00000 	nop			; (mov r0, r0)
800232f4:	e24bd004 	sub	sp, fp, #4
800232f8:	e8bd8800 	pop	{fp, pc}
800232fc:	8002a21c 	.word	0x8002a21c
80023300:	800ad4e8 	.word	0x800ad4e8
80023304:	8002a224 	.word	0x8002a224

80023308 <iunlock>:
80023308:	e92d4800 	push	{fp, lr}
8002330c:	e28db004 	add	fp, sp, #4
80023310:	e24dd008 	sub	sp, sp, #8
80023314:	e50b0008 	str	r0, [fp, #-8]
80023318:	e51b3008 	ldr	r3, [fp, #-8]
8002331c:	e3530000 	cmp	r3, #0
80023320:	0a000008 	beq	80023348 <iunlock+0x40>
80023324:	e51b3008 	ldr	r3, [fp, #-8]
80023328:	e593300c 	ldr	r3, [r3, #12]
8002332c:	e2033001 	and	r3, r3, #1
80023330:	e3530000 	cmp	r3, #0
80023334:	0a000003 	beq	80023348 <iunlock+0x40>
80023338:	e51b3008 	ldr	r3, [fp, #-8]
8002333c:	e5933008 	ldr	r3, [r3, #8]
80023340:	e3530000 	cmp	r3, #0
80023344:	ca000001 	bgt	80023350 <iunlock+0x48>
80023348:	e59f0038 	ldr	r0, [pc, #56]	; 80023388 <iunlock+0x80>
8002334c:	ebfff9fb 	bl	80021b40 <panic>
80023350:	e59f0034 	ldr	r0, [pc, #52]	; 8002338c <iunlock+0x84>
80023354:	eb000aa7 	bl	80025df8 <acquire>
80023358:	e51b3008 	ldr	r3, [fp, #-8]
8002335c:	e593300c 	ldr	r3, [r3, #12]
80023360:	e3c32001 	bic	r2, r3, #1
80023364:	e51b3008 	ldr	r3, [fp, #-8]
80023368:	e583200c 	str	r2, [r3, #12]
8002336c:	e51b0008 	ldr	r0, [fp, #-8]
80023370:	eb0009a5 	bl	80025a0c <wakeup>
80023374:	e59f0010 	ldr	r0, [pc, #16]	; 8002338c <iunlock+0x84>
80023378:	eb000aa9 	bl	80025e24 <release>
8002337c:	e1a00000 	nop			; (mov r0, r0)
80023380:	e24bd004 	sub	sp, fp, #4
80023384:	e8bd8800 	pop	{fp, pc}
80023388:	8002a234 	.word	0x8002a234
8002338c:	800ad4e8 	.word	0x800ad4e8

80023390 <iput>:
80023390:	e92d4800 	push	{fp, lr}
80023394:	e28db004 	add	fp, sp, #4
80023398:	e24dd008 	sub	sp, sp, #8
8002339c:	e50b0008 	str	r0, [fp, #-8]
800233a0:	e59f00cc 	ldr	r0, [pc, #204]	; 80023474 <iput+0xe4>
800233a4:	eb000a93 	bl	80025df8 <acquire>
800233a8:	e51b3008 	ldr	r3, [fp, #-8]
800233ac:	e5933008 	ldr	r3, [r3, #8]
800233b0:	e3530001 	cmp	r3, #1
800233b4:	1a000024 	bne	8002344c <iput+0xbc>
800233b8:	e51b3008 	ldr	r3, [fp, #-8]
800233bc:	e593300c 	ldr	r3, [r3, #12]
800233c0:	e2033002 	and	r3, r3, #2
800233c4:	e3530000 	cmp	r3, #0
800233c8:	0a00001f 	beq	8002344c <iput+0xbc>
800233cc:	e51b3008 	ldr	r3, [fp, #-8]
800233d0:	e1d331f6 	ldrsh	r3, [r3, #22]
800233d4:	e3530000 	cmp	r3, #0
800233d8:	1a00001b 	bne	8002344c <iput+0xbc>
800233dc:	e51b3008 	ldr	r3, [fp, #-8]
800233e0:	e593300c 	ldr	r3, [r3, #12]
800233e4:	e2033001 	and	r3, r3, #1
800233e8:	e3530000 	cmp	r3, #0
800233ec:	0a000001 	beq	800233f8 <iput+0x68>
800233f0:	e59f0080 	ldr	r0, [pc, #128]	; 80023478 <iput+0xe8>
800233f4:	ebfff9d1 	bl	80021b40 <panic>
800233f8:	e51b3008 	ldr	r3, [fp, #-8]
800233fc:	e593300c 	ldr	r3, [r3, #12]
80023400:	e3832001 	orr	r2, r3, #1
80023404:	e51b3008 	ldr	r3, [fp, #-8]
80023408:	e583200c 	str	r2, [r3, #12]
8002340c:	e59f0060 	ldr	r0, [pc, #96]	; 80023474 <iput+0xe4>
80023410:	eb000a83 	bl	80025e24 <release>
80023414:	e51b0008 	ldr	r0, [fp, #-8]
80023418:	eb00007f 	bl	8002361c <itrunc>
8002341c:	e51b3008 	ldr	r3, [fp, #-8]
80023420:	e3a02000 	mov	r2, #0
80023424:	e1c321b0 	strh	r2, [r3, #16]
80023428:	e51b0008 	ldr	r0, [fp, #-8]
8002342c:	ebfffeb7 	bl	80022f10 <iupdate>
80023430:	e59f003c 	ldr	r0, [pc, #60]	; 80023474 <iput+0xe4>
80023434:	eb000a6f 	bl	80025df8 <acquire>
80023438:	e51b3008 	ldr	r3, [fp, #-8]
8002343c:	e3a02000 	mov	r2, #0
80023440:	e583200c 	str	r2, [r3, #12]
80023444:	e51b0008 	ldr	r0, [fp, #-8]
80023448:	eb00096f 	bl	80025a0c <wakeup>
8002344c:	e51b3008 	ldr	r3, [fp, #-8]
80023450:	e5933008 	ldr	r3, [r3, #8]
80023454:	e2432001 	sub	r2, r3, #1
80023458:	e51b3008 	ldr	r3, [fp, #-8]
8002345c:	e5832008 	str	r2, [r3, #8]
80023460:	e59f000c 	ldr	r0, [pc, #12]	; 80023474 <iput+0xe4>
80023464:	eb000a6e 	bl	80025e24 <release>
80023468:	e1a00000 	nop			; (mov r0, r0)
8002346c:	e24bd004 	sub	sp, fp, #4
80023470:	e8bd8800 	pop	{fp, pc}
80023474:	800ad4e8 	.word	0x800ad4e8
80023478:	8002a23c 	.word	0x8002a23c

8002347c <iunlockput>:
8002347c:	e92d4800 	push	{fp, lr}
80023480:	e28db004 	add	fp, sp, #4
80023484:	e24dd008 	sub	sp, sp, #8
80023488:	e50b0008 	str	r0, [fp, #-8]
8002348c:	e51b0008 	ldr	r0, [fp, #-8]
80023490:	ebffff9c 	bl	80023308 <iunlock>
80023494:	e51b0008 	ldr	r0, [fp, #-8]
80023498:	ebffffbc 	bl	80023390 <iput>
8002349c:	e1a00000 	nop			; (mov r0, r0)
800234a0:	e24bd004 	sub	sp, fp, #4
800234a4:	e8bd8800 	pop	{fp, pc}

800234a8 <bmap>:
800234a8:	e92d4800 	push	{fp, lr}
800234ac:	e28db004 	add	fp, sp, #4
800234b0:	e24dd018 	sub	sp, sp, #24
800234b4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800234b8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
800234bc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800234c0:	e353000b 	cmp	r3, #11
800234c4:	8a000017 	bhi	80023528 <bmap+0x80>
800234c8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800234cc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800234d0:	e2833006 	add	r3, r3, #6
800234d4:	e1a03103 	lsl	r3, r3, #2
800234d8:	e0823003 	add	r3, r2, r3
800234dc:	e5933004 	ldr	r3, [r3, #4]
800234e0:	e50b3008 	str	r3, [fp, #-8]
800234e4:	e51b3008 	ldr	r3, [fp, #-8]
800234e8:	e3530000 	cmp	r3, #0
800234ec:	1a00000b 	bne	80023520 <bmap+0x78>
800234f0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800234f4:	e5933000 	ldr	r3, [r3]
800234f8:	e1a00003 	mov	r0, r3
800234fc:	ebfffd78 	bl	80022ae4 <balloc>
80023500:	e50b0008 	str	r0, [fp, #-8]
80023504:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80023508:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002350c:	e2833006 	add	r3, r3, #6
80023510:	e1a03103 	lsl	r3, r3, #2
80023514:	e0823003 	add	r3, r2, r3
80023518:	e51b2008 	ldr	r2, [fp, #-8]
8002351c:	e5832004 	str	r2, [r3, #4]
80023520:	e51b3008 	ldr	r3, [fp, #-8]
80023524:	ea000038 	b	8002360c <bmap+0x164>
80023528:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002352c:	e243300c 	sub	r3, r3, #12
80023530:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80023534:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80023538:	e353007f 	cmp	r3, #127	; 0x7f
8002353c:	8a000030 	bhi	80023604 <bmap+0x15c>
80023540:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023544:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
80023548:	e50b3008 	str	r3, [fp, #-8]
8002354c:	e51b3008 	ldr	r3, [fp, #-8]
80023550:	e3530000 	cmp	r3, #0
80023554:	1a000007 	bne	80023578 <bmap+0xd0>
80023558:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002355c:	e5933000 	ldr	r3, [r3]
80023560:	e1a00003 	mov	r0, r3
80023564:	ebfffd5e 	bl	80022ae4 <balloc>
80023568:	e50b0008 	str	r0, [fp, #-8]
8002356c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023570:	e51b2008 	ldr	r2, [fp, #-8]
80023574:	e583204c 	str	r2, [r3, #76]	; 0x4c
80023578:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002357c:	e5933000 	ldr	r3, [r3]
80023580:	e51b1008 	ldr	r1, [fp, #-8]
80023584:	e1a00003 	mov	r0, r3
80023588:	ebfff55c 	bl	80020b00 <bread>
8002358c:	e50b000c 	str	r0, [fp, #-12]
80023590:	e51b300c 	ldr	r3, [fp, #-12]
80023594:	e2833018 	add	r3, r3, #24
80023598:	e50b3010 	str	r3, [fp, #-16]
8002359c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800235a0:	e1a03103 	lsl	r3, r3, #2
800235a4:	e51b2010 	ldr	r2, [fp, #-16]
800235a8:	e0823003 	add	r3, r2, r3
800235ac:	e5933000 	ldr	r3, [r3]
800235b0:	e50b3008 	str	r3, [fp, #-8]
800235b4:	e51b3008 	ldr	r3, [fp, #-8]
800235b8:	e3530000 	cmp	r3, #0
800235bc:	1a00000c 	bne	800235f4 <bmap+0x14c>
800235c0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800235c4:	e5933000 	ldr	r3, [r3]
800235c8:	e1a00003 	mov	r0, r3
800235cc:	ebfffd44 	bl	80022ae4 <balloc>
800235d0:	e50b0008 	str	r0, [fp, #-8]
800235d4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800235d8:	e1a03103 	lsl	r3, r3, #2
800235dc:	e51b2010 	ldr	r2, [fp, #-16]
800235e0:	e0823003 	add	r3, r2, r3
800235e4:	e51b2008 	ldr	r2, [fp, #-8]
800235e8:	e5832000 	str	r2, [r3]
800235ec:	e51b000c 	ldr	r0, [fp, #-12]
800235f0:	eb0003b7 	bl	800244d4 <log_write>
800235f4:	e51b000c 	ldr	r0, [fp, #-12]
800235f8:	ebfff56a 	bl	80020ba8 <brelse>
800235fc:	e51b3008 	ldr	r3, [fp, #-8]
80023600:	ea000001 	b	8002360c <bmap+0x164>
80023604:	e59f000c 	ldr	r0, [pc, #12]	; 80023618 <bmap+0x170>
80023608:	ebfff94c 	bl	80021b40 <panic>
8002360c:	e1a00003 	mov	r0, r3
80023610:	e24bd004 	sub	sp, fp, #4
80023614:	e8bd8800 	pop	{fp, pc}
80023618:	8002a248 	.word	0x8002a248

8002361c <itrunc>:
8002361c:	e92d4800 	push	{fp, lr}
80023620:	e28db004 	add	fp, sp, #4
80023624:	e24dd018 	sub	sp, sp, #24
80023628:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8002362c:	e3a03000 	mov	r3, #0
80023630:	e50b3008 	str	r3, [fp, #-8]
80023634:	ea00001c 	b	800236ac <itrunc+0x90>
80023638:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
8002363c:	e51b3008 	ldr	r3, [fp, #-8]
80023640:	e2833006 	add	r3, r3, #6
80023644:	e1a03103 	lsl	r3, r3, #2
80023648:	e0823003 	add	r3, r2, r3
8002364c:	e5933004 	ldr	r3, [r3, #4]
80023650:	e3530000 	cmp	r3, #0
80023654:	0a000011 	beq	800236a0 <itrunc+0x84>
80023658:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002365c:	e5933000 	ldr	r3, [r3]
80023660:	e1a00003 	mov	r0, r3
80023664:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80023668:	e51b3008 	ldr	r3, [fp, #-8]
8002366c:	e2833006 	add	r3, r3, #6
80023670:	e1a03103 	lsl	r3, r3, #2
80023674:	e0823003 	add	r3, r2, r3
80023678:	e5933004 	ldr	r3, [r3, #4]
8002367c:	e1a01003 	mov	r1, r3
80023680:	ebfffd8c 	bl	80022cb8 <bfree>
80023684:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80023688:	e51b3008 	ldr	r3, [fp, #-8]
8002368c:	e2833006 	add	r3, r3, #6
80023690:	e1a03103 	lsl	r3, r3, #2
80023694:	e0823003 	add	r3, r2, r3
80023698:	e3a02000 	mov	r2, #0
8002369c:	e5832004 	str	r2, [r3, #4]
800236a0:	e51b3008 	ldr	r3, [fp, #-8]
800236a4:	e2833001 	add	r3, r3, #1
800236a8:	e50b3008 	str	r3, [fp, #-8]
800236ac:	e51b3008 	ldr	r3, [fp, #-8]
800236b0:	e353000b 	cmp	r3, #11
800236b4:	daffffdf 	ble	80023638 <itrunc+0x1c>
800236b8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800236bc:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
800236c0:	e3530000 	cmp	r3, #0
800236c4:	0a000031 	beq	80023790 <itrunc+0x174>
800236c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800236cc:	e5932000 	ldr	r2, [r3]
800236d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800236d4:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
800236d8:	e1a01003 	mov	r1, r3
800236dc:	e1a00002 	mov	r0, r2
800236e0:	ebfff506 	bl	80020b00 <bread>
800236e4:	e50b0010 	str	r0, [fp, #-16]
800236e8:	e51b3010 	ldr	r3, [fp, #-16]
800236ec:	e2833018 	add	r3, r3, #24
800236f0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800236f4:	e3a03000 	mov	r3, #0
800236f8:	e50b300c 	str	r3, [fp, #-12]
800236fc:	ea000013 	b	80023750 <itrunc+0x134>
80023700:	e51b300c 	ldr	r3, [fp, #-12]
80023704:	e1a03103 	lsl	r3, r3, #2
80023708:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8002370c:	e0823003 	add	r3, r2, r3
80023710:	e5933000 	ldr	r3, [r3]
80023714:	e3530000 	cmp	r3, #0
80023718:	0a000009 	beq	80023744 <itrunc+0x128>
8002371c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023720:	e5933000 	ldr	r3, [r3]
80023724:	e1a00003 	mov	r0, r3
80023728:	e51b300c 	ldr	r3, [fp, #-12]
8002372c:	e1a03103 	lsl	r3, r3, #2
80023730:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80023734:	e0823003 	add	r3, r2, r3
80023738:	e5933000 	ldr	r3, [r3]
8002373c:	e1a01003 	mov	r1, r3
80023740:	ebfffd5c 	bl	80022cb8 <bfree>
80023744:	e51b300c 	ldr	r3, [fp, #-12]
80023748:	e2833001 	add	r3, r3, #1
8002374c:	e50b300c 	str	r3, [fp, #-12]
80023750:	e51b300c 	ldr	r3, [fp, #-12]
80023754:	e353007f 	cmp	r3, #127	; 0x7f
80023758:	9affffe8 	bls	80023700 <itrunc+0xe4>
8002375c:	e51b0010 	ldr	r0, [fp, #-16]
80023760:	ebfff510 	bl	80020ba8 <brelse>
80023764:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023768:	e5933000 	ldr	r3, [r3]
8002376c:	e1a02003 	mov	r2, r3
80023770:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023774:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
80023778:	e1a01003 	mov	r1, r3
8002377c:	e1a00002 	mov	r0, r2
80023780:	ebfffd4c 	bl	80022cb8 <bfree>
80023784:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023788:	e3a02000 	mov	r2, #0
8002378c:	e583204c 	str	r2, [r3, #76]	; 0x4c
80023790:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023794:	e3a02000 	mov	r2, #0
80023798:	e5832018 	str	r2, [r3, #24]
8002379c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800237a0:	ebfffdda 	bl	80022f10 <iupdate>
800237a4:	e1a00000 	nop			; (mov r0, r0)
800237a8:	e24bd004 	sub	sp, fp, #4
800237ac:	e8bd8800 	pop	{fp, pc}

800237b0 <stati>:
800237b0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800237b4:	e28db000 	add	fp, sp, #0
800237b8:	e24dd00c 	sub	sp, sp, #12
800237bc:	e50b0008 	str	r0, [fp, #-8]
800237c0:	e50b100c 	str	r1, [fp, #-12]
800237c4:	e51b3008 	ldr	r3, [fp, #-8]
800237c8:	e5933000 	ldr	r3, [r3]
800237cc:	e1a02003 	mov	r2, r3
800237d0:	e51b300c 	ldr	r3, [fp, #-12]
800237d4:	e5832004 	str	r2, [r3, #4]
800237d8:	e51b3008 	ldr	r3, [fp, #-8]
800237dc:	e5932004 	ldr	r2, [r3, #4]
800237e0:	e51b300c 	ldr	r3, [fp, #-12]
800237e4:	e5832008 	str	r2, [r3, #8]
800237e8:	e51b3008 	ldr	r3, [fp, #-8]
800237ec:	e1d321f0 	ldrsh	r2, [r3, #16]
800237f0:	e51b300c 	ldr	r3, [fp, #-12]
800237f4:	e1c320b0 	strh	r2, [r3]
800237f8:	e51b3008 	ldr	r3, [fp, #-8]
800237fc:	e1d321f6 	ldrsh	r2, [r3, #22]
80023800:	e51b300c 	ldr	r3, [fp, #-12]
80023804:	e1c320bc 	strh	r2, [r3, #12]
80023808:	e51b3008 	ldr	r3, [fp, #-8]
8002380c:	e5932018 	ldr	r2, [r3, #24]
80023810:	e51b300c 	ldr	r3, [fp, #-12]
80023814:	e5832010 	str	r2, [r3, #16]
80023818:	e1a00000 	nop			; (mov r0, r0)
8002381c:	e28bd000 	add	sp, fp, #0
80023820:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80023824:	e12fff1e 	bx	lr

80023828 <readi>:
80023828:	e92d4810 	push	{r4, fp, lr}
8002382c:	e28db008 	add	fp, sp, #8
80023830:	e24dd024 	sub	sp, sp, #36	; 0x24
80023834:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80023838:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
8002383c:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
80023840:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80023844:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023848:	e1d331f0 	ldrsh	r3, [r3, #16]
8002384c:	e3530003 	cmp	r3, #3
80023850:	1a00001b 	bne	800238c4 <readi+0x9c>
80023854:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023858:	e1d331f2 	ldrsh	r3, [r3, #18]
8002385c:	e3530000 	cmp	r3, #0
80023860:	ba00000a 	blt	80023890 <readi+0x68>
80023864:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023868:	e1d331f2 	ldrsh	r3, [r3, #18]
8002386c:	e3530009 	cmp	r3, #9
80023870:	ca000006 	bgt	80023890 <readi+0x68>
80023874:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023878:	e1d331f2 	ldrsh	r3, [r3, #18]
8002387c:	e1a02003 	mov	r2, r3
80023880:	e59f3188 	ldr	r3, [pc, #392]	; 80023a10 <readi+0x1e8>
80023884:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023888:	e3530000 	cmp	r3, #0
8002388c:	1a000001 	bne	80023898 <readi+0x70>
80023890:	e3e03000 	mvn	r3, #0
80023894:	ea00005a 	b	80023a04 <readi+0x1dc>
80023898:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
8002389c:	e1d331f2 	ldrsh	r3, [r3, #18]
800238a0:	e1a02003 	mov	r2, r3
800238a4:	e59f3164 	ldr	r3, [pc, #356]	; 80023a10 <readi+0x1e8>
800238a8:	e7933182 	ldr	r3, [r3, r2, lsl #3]
800238ac:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
800238b0:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
800238b4:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
800238b8:	e12fff33 	blx	r3
800238bc:	e1a03000 	mov	r3, r0
800238c0:	ea00004f 	b	80023a04 <readi+0x1dc>
800238c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800238c8:	e5933018 	ldr	r3, [r3, #24]
800238cc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
800238d0:	e1520003 	cmp	r2, r3
800238d4:	8a000005 	bhi	800238f0 <readi+0xc8>
800238d8:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
800238dc:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
800238e0:	e0823003 	add	r3, r2, r3
800238e4:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
800238e8:	e1520003 	cmp	r2, r3
800238ec:	9a000001 	bls	800238f8 <readi+0xd0>
800238f0:	e3e03000 	mvn	r3, #0
800238f4:	ea000042 	b	80023a04 <readi+0x1dc>
800238f8:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
800238fc:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80023900:	e0822003 	add	r2, r2, r3
80023904:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023908:	e5933018 	ldr	r3, [r3, #24]
8002390c:	e1520003 	cmp	r2, r3
80023910:	9a000004 	bls	80023928 <readi+0x100>
80023914:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023918:	e5932018 	ldr	r2, [r3, #24]
8002391c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023920:	e0423003 	sub	r3, r2, r3
80023924:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80023928:	e3a03000 	mov	r3, #0
8002392c:	e50b3010 	str	r3, [fp, #-16]
80023930:	ea00002e 	b	800239f0 <readi+0x1c8>
80023934:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023938:	e5934000 	ldr	r4, [r3]
8002393c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023940:	e1a034a3 	lsr	r3, r3, #9
80023944:	e1a01003 	mov	r1, r3
80023948:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
8002394c:	ebfffed5 	bl	800234a8 <bmap>
80023950:	e1a03000 	mov	r3, r0
80023954:	e1a01003 	mov	r1, r3
80023958:	e1a00004 	mov	r0, r4
8002395c:	ebfff467 	bl	80020b00 <bread>
80023960:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80023964:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023968:	e1a03b83 	lsl	r3, r3, #23
8002396c:	e1a03ba3 	lsr	r3, r3, #23
80023970:	e2632c02 	rsb	r2, r3, #512	; 0x200
80023974:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
80023978:	e51b3010 	ldr	r3, [fp, #-16]
8002397c:	e0413003 	sub	r3, r1, r3
80023980:	e1520003 	cmp	r2, r3
80023984:	31a03002 	movcc	r3, r2
80023988:	21a03003 	movcs	r3, r3
8002398c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80023990:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023994:	e2832018 	add	r2, r3, #24
80023998:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002399c:	e1a03b83 	lsl	r3, r3, #23
800239a0:	e1a03ba3 	lsr	r3, r3, #23
800239a4:	e0823003 	add	r3, r2, r3
800239a8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800239ac:	e1a01003 	mov	r1, r3
800239b0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
800239b4:	ebfff202 	bl	800201c4 <memmove>
800239b8:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
800239bc:	ebfff479 	bl	80020ba8 <brelse>
800239c0:	e51b2010 	ldr	r2, [fp, #-16]
800239c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800239c8:	e0823003 	add	r3, r2, r3
800239cc:	e50b3010 	str	r3, [fp, #-16]
800239d0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
800239d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800239d8:	e0823003 	add	r3, r2, r3
800239dc:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
800239e0:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
800239e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800239e8:	e0823003 	add	r3, r2, r3
800239ec:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
800239f0:	e51b2010 	ldr	r2, [fp, #-16]
800239f4:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
800239f8:	e1520003 	cmp	r2, r3
800239fc:	3affffcc 	bcc	80023934 <readi+0x10c>
80023a00:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80023a04:	e1a00003 	mov	r0, r3
80023a08:	e24bd008 	sub	sp, fp, #8
80023a0c:	e8bd8810 	pop	{r4, fp, pc}
80023a10:	800ad498 	.word	0x800ad498

80023a14 <writei>:
80023a14:	e92d4810 	push	{r4, fp, lr}
80023a18:	e28db008 	add	fp, sp, #8
80023a1c:	e24dd024 	sub	sp, sp, #36	; 0x24
80023a20:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80023a24:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80023a28:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
80023a2c:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
80023a30:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023a34:	e1d331f0 	ldrsh	r3, [r3, #16]
80023a38:	e3530003 	cmp	r3, #3
80023a3c:	1a00001d 	bne	80023ab8 <writei+0xa4>
80023a40:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023a44:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a48:	e3530000 	cmp	r3, #0
80023a4c:	ba00000b 	blt	80023a80 <writei+0x6c>
80023a50:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023a54:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a58:	e3530009 	cmp	r3, #9
80023a5c:	ca000007 	bgt	80023a80 <writei+0x6c>
80023a60:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023a64:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a68:	e59f21bc 	ldr	r2, [pc, #444]	; 80023c2c <writei+0x218>
80023a6c:	e1a03183 	lsl	r3, r3, #3
80023a70:	e0823003 	add	r3, r2, r3
80023a74:	e5933004 	ldr	r3, [r3, #4]
80023a78:	e3530000 	cmp	r3, #0
80023a7c:	1a000001 	bne	80023a88 <writei+0x74>
80023a80:	e3e03000 	mvn	r3, #0
80023a84:	ea000065 	b	80023c20 <writei+0x20c>
80023a88:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023a8c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a90:	e59f2194 	ldr	r2, [pc, #404]	; 80023c2c <writei+0x218>
80023a94:	e1a03183 	lsl	r3, r3, #3
80023a98:	e0823003 	add	r3, r2, r3
80023a9c:	e5933004 	ldr	r3, [r3, #4]
80023aa0:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
80023aa4:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80023aa8:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80023aac:	e12fff33 	blx	r3
80023ab0:	e1a03000 	mov	r3, r0
80023ab4:	ea000059 	b	80023c20 <writei+0x20c>
80023ab8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023abc:	e5933018 	ldr	r3, [r3, #24]
80023ac0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80023ac4:	e1520003 	cmp	r2, r3
80023ac8:	8a000005 	bhi	80023ae4 <writei+0xd0>
80023acc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80023ad0:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80023ad4:	e0823003 	add	r3, r2, r3
80023ad8:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80023adc:	e1520003 	cmp	r2, r3
80023ae0:	9a000001 	bls	80023aec <writei+0xd8>
80023ae4:	e3e03000 	mvn	r3, #0
80023ae8:	ea00004c 	b	80023c20 <writei+0x20c>
80023aec:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80023af0:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80023af4:	e0823003 	add	r3, r2, r3
80023af8:	e3530b46 	cmp	r3, #71680	; 0x11800
80023afc:	9a000001 	bls	80023b08 <writei+0xf4>
80023b00:	e3e03000 	mvn	r3, #0
80023b04:	ea000045 	b	80023c20 <writei+0x20c>
80023b08:	e3a03000 	mov	r3, #0
80023b0c:	e50b3010 	str	r3, [fp, #-16]
80023b10:	ea000030 	b	80023bd8 <writei+0x1c4>
80023b14:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023b18:	e5934000 	ldr	r4, [r3]
80023b1c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023b20:	e1a034a3 	lsr	r3, r3, #9
80023b24:	e1a01003 	mov	r1, r3
80023b28:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80023b2c:	ebfffe5d 	bl	800234a8 <bmap>
80023b30:	e1a03000 	mov	r3, r0
80023b34:	e1a01003 	mov	r1, r3
80023b38:	e1a00004 	mov	r0, r4
80023b3c:	ebfff3ef 	bl	80020b00 <bread>
80023b40:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80023b44:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023b48:	e1a03b83 	lsl	r3, r3, #23
80023b4c:	e1a03ba3 	lsr	r3, r3, #23
80023b50:	e2632c02 	rsb	r2, r3, #512	; 0x200
80023b54:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
80023b58:	e51b3010 	ldr	r3, [fp, #-16]
80023b5c:	e0413003 	sub	r3, r1, r3
80023b60:	e1520003 	cmp	r2, r3
80023b64:	31a03002 	movcc	r3, r2
80023b68:	21a03003 	movcs	r3, r3
80023b6c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80023b70:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80023b74:	e2832018 	add	r2, r3, #24
80023b78:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023b7c:	e1a03b83 	lsl	r3, r3, #23
80023b80:	e1a03ba3 	lsr	r3, r3, #23
80023b84:	e0823003 	add	r3, r2, r3
80023b88:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80023b8c:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80023b90:	e1a00003 	mov	r0, r3
80023b94:	ebfff18a 	bl	800201c4 <memmove>
80023b98:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80023b9c:	eb00024c 	bl	800244d4 <log_write>
80023ba0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80023ba4:	ebfff3ff 	bl	80020ba8 <brelse>
80023ba8:	e51b2010 	ldr	r2, [fp, #-16]
80023bac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023bb0:	e0823003 	add	r3, r2, r3
80023bb4:	e50b3010 	str	r3, [fp, #-16]
80023bb8:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80023bbc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023bc0:	e0823003 	add	r3, r2, r3
80023bc4:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
80023bc8:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80023bcc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80023bd0:	e0823003 	add	r3, r2, r3
80023bd4:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80023bd8:	e51b2010 	ldr	r2, [fp, #-16]
80023bdc:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80023be0:	e1520003 	cmp	r2, r3
80023be4:	3affffca 	bcc	80023b14 <writei+0x100>
80023be8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80023bec:	e3530000 	cmp	r3, #0
80023bf0:	0a000009 	beq	80023c1c <writei+0x208>
80023bf4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023bf8:	e5933018 	ldr	r3, [r3, #24]
80023bfc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80023c00:	e1520003 	cmp	r2, r3
80023c04:	9a000004 	bls	80023c1c <writei+0x208>
80023c08:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023c0c:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
80023c10:	e5832018 	str	r2, [r3, #24]
80023c14:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80023c18:	ebfffcbc 	bl	80022f10 <iupdate>
80023c1c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80023c20:	e1a00003 	mov	r0, r3
80023c24:	e24bd008 	sub	sp, fp, #8
80023c28:	e8bd8810 	pop	{r4, fp, pc}
80023c2c:	800ad498 	.word	0x800ad498

80023c30 <namecmp>:
80023c30:	e92d4800 	push	{fp, lr}
80023c34:	e28db004 	add	fp, sp, #4
80023c38:	e24dd008 	sub	sp, sp, #8
80023c3c:	e50b0008 	str	r0, [fp, #-8]
80023c40:	e50b100c 	str	r1, [fp, #-12]
80023c44:	e3a0200e 	mov	r2, #14
80023c48:	e51b100c 	ldr	r1, [fp, #-12]
80023c4c:	e51b0008 	ldr	r0, [fp, #-8]
80023c50:	ebfff1a8 	bl	800202f8 <strncmp>
80023c54:	e1a03000 	mov	r3, r0
80023c58:	e1a00003 	mov	r0, r3
80023c5c:	e24bd004 	sub	sp, fp, #4
80023c60:	e8bd8800 	pop	{fp, pc}

80023c64 <dirlookup>:
80023c64:	e92d4800 	push	{fp, lr}
80023c68:	e28db004 	add	fp, sp, #4
80023c6c:	e24dd028 	sub	sp, sp, #40	; 0x28
80023c70:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80023c74:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80023c78:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
80023c7c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023c80:	e1d331f0 	ldrsh	r3, [r3, #16]
80023c84:	e3530001 	cmp	r3, #1
80023c88:	0a000001 	beq	80023c94 <dirlookup+0x30>
80023c8c:	e59f00d0 	ldr	r0, [pc, #208]	; 80023d64 <dirlookup+0x100>
80023c90:	ebfff7aa 	bl	80021b40 <panic>
80023c94:	e3a03000 	mov	r3, #0
80023c98:	e50b3008 	str	r3, [fp, #-8]
80023c9c:	ea000027 	b	80023d40 <dirlookup+0xdc>
80023ca0:	e24b101c 	sub	r1, fp, #28
80023ca4:	e3a03010 	mov	r3, #16
80023ca8:	e51b2008 	ldr	r2, [fp, #-8]
80023cac:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80023cb0:	ebfffedc 	bl	80023828 <readi>
80023cb4:	e1a03000 	mov	r3, r0
80023cb8:	e3530010 	cmp	r3, #16
80023cbc:	0a000001 	beq	80023cc8 <dirlookup+0x64>
80023cc0:	e59f00a0 	ldr	r0, [pc, #160]	; 80023d68 <dirlookup+0x104>
80023cc4:	ebfff79d 	bl	80021b40 <panic>
80023cc8:	e15b31bc 	ldrh	r3, [fp, #-28]	; 0xffffffe4
80023ccc:	e3530000 	cmp	r3, #0
80023cd0:	0a000016 	beq	80023d30 <dirlookup+0xcc>
80023cd4:	e24b301c 	sub	r3, fp, #28
80023cd8:	e2833002 	add	r3, r3, #2
80023cdc:	e1a01003 	mov	r1, r3
80023ce0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
80023ce4:	ebffffd1 	bl	80023c30 <namecmp>
80023ce8:	e1a03000 	mov	r3, r0
80023cec:	e3530000 	cmp	r3, #0
80023cf0:	1a00000f 	bne	80023d34 <dirlookup+0xd0>
80023cf4:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023cf8:	e3530000 	cmp	r3, #0
80023cfc:	0a000002 	beq	80023d0c <dirlookup+0xa8>
80023d00:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023d04:	e51b2008 	ldr	r2, [fp, #-8]
80023d08:	e5832000 	str	r2, [r3]
80023d0c:	e15b31bc 	ldrh	r3, [fp, #-28]	; 0xffffffe4
80023d10:	e50b300c 	str	r3, [fp, #-12]
80023d14:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023d18:	e5933000 	ldr	r3, [r3]
80023d1c:	e51b100c 	ldr	r1, [fp, #-12]
80023d20:	e1a00003 	mov	r0, r3
80023d24:	ebfffcb1 	bl	80022ff0 <iget>
80023d28:	e1a03000 	mov	r3, r0
80023d2c:	ea000009 	b	80023d58 <dirlookup+0xf4>
80023d30:	e1a00000 	nop			; (mov r0, r0)
80023d34:	e51b3008 	ldr	r3, [fp, #-8]
80023d38:	e2833010 	add	r3, r3, #16
80023d3c:	e50b3008 	str	r3, [fp, #-8]
80023d40:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023d44:	e5933018 	ldr	r3, [r3, #24]
80023d48:	e51b2008 	ldr	r2, [fp, #-8]
80023d4c:	e1520003 	cmp	r2, r3
80023d50:	3affffd2 	bcc	80023ca0 <dirlookup+0x3c>
80023d54:	e3a03000 	mov	r3, #0
80023d58:	e1a00003 	mov	r0, r3
80023d5c:	e24bd004 	sub	sp, fp, #4
80023d60:	e8bd8800 	pop	{fp, pc}
80023d64:	8002a25c 	.word	0x8002a25c
80023d68:	8002a270 	.word	0x8002a270

80023d6c <dirlink>:
80023d6c:	e92d4800 	push	{fp, lr}
80023d70:	e28db004 	add	fp, sp, #4
80023d74:	e24dd028 	sub	sp, sp, #40	; 0x28
80023d78:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80023d7c:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
80023d80:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
80023d84:	e3a02000 	mov	r2, #0
80023d88:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80023d8c:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80023d90:	ebffffb3 	bl	80023c64 <dirlookup>
80023d94:	e50b000c 	str	r0, [fp, #-12]
80023d98:	e51b300c 	ldr	r3, [fp, #-12]
80023d9c:	e3530000 	cmp	r3, #0
80023da0:	0a000003 	beq	80023db4 <dirlink+0x48>
80023da4:	e51b000c 	ldr	r0, [fp, #-12]
80023da8:	ebfffd78 	bl	80023390 <iput>
80023dac:	e3e03000 	mvn	r3, #0
80023db0:	ea00002d 	b	80023e6c <dirlink+0x100>
80023db4:	e3a03000 	mov	r3, #0
80023db8:	e50b3008 	str	r3, [fp, #-8]
80023dbc:	ea00000f 	b	80023e00 <dirlink+0x94>
80023dc0:	e51b2008 	ldr	r2, [fp, #-8]
80023dc4:	e24b101c 	sub	r1, fp, #28
80023dc8:	e3a03010 	mov	r3, #16
80023dcc:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80023dd0:	ebfffe94 	bl	80023828 <readi>
80023dd4:	e1a03000 	mov	r3, r0
80023dd8:	e3530010 	cmp	r3, #16
80023ddc:	0a000001 	beq	80023de8 <dirlink+0x7c>
80023de0:	e59f0090 	ldr	r0, [pc, #144]	; 80023e78 <dirlink+0x10c>
80023de4:	ebfff755 	bl	80021b40 <panic>
80023de8:	e15b31bc 	ldrh	r3, [fp, #-28]	; 0xffffffe4
80023dec:	e3530000 	cmp	r3, #0
80023df0:	0a000008 	beq	80023e18 <dirlink+0xac>
80023df4:	e51b3008 	ldr	r3, [fp, #-8]
80023df8:	e2833010 	add	r3, r3, #16
80023dfc:	e50b3008 	str	r3, [fp, #-8]
80023e00:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80023e04:	e5932018 	ldr	r2, [r3, #24]
80023e08:	e51b3008 	ldr	r3, [fp, #-8]
80023e0c:	e1520003 	cmp	r2, r3
80023e10:	8affffea 	bhi	80023dc0 <dirlink+0x54>
80023e14:	ea000000 	b	80023e1c <dirlink+0xb0>
80023e18:	e1a00000 	nop			; (mov r0, r0)
80023e1c:	e24b301c 	sub	r3, fp, #28
80023e20:	e2833002 	add	r3, r3, #2
80023e24:	e3a0200e 	mov	r2, #14
80023e28:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
80023e2c:	e1a00003 	mov	r0, r3
80023e30:	ebfff15c 	bl	800203a8 <strncpy>
80023e34:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
80023e38:	e6ff3073 	uxth	r3, r3
80023e3c:	e14b31bc 	strh	r3, [fp, #-28]	; 0xffffffe4
80023e40:	e51b2008 	ldr	r2, [fp, #-8]
80023e44:	e24b101c 	sub	r1, fp, #28
80023e48:	e3a03010 	mov	r3, #16
80023e4c:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80023e50:	ebfffeef 	bl	80023a14 <writei>
80023e54:	e1a03000 	mov	r3, r0
80023e58:	e3530010 	cmp	r3, #16
80023e5c:	0a000001 	beq	80023e68 <dirlink+0xfc>
80023e60:	e59f0014 	ldr	r0, [pc, #20]	; 80023e7c <dirlink+0x110>
80023e64:	ebfff735 	bl	80021b40 <panic>
80023e68:	e3a03000 	mov	r3, #0
80023e6c:	e1a00003 	mov	r0, r3
80023e70:	e24bd004 	sub	sp, fp, #4
80023e74:	e8bd8800 	pop	{fp, pc}
80023e78:	8002a270 	.word	0x8002a270
80023e7c:	8002a280 	.word	0x8002a280

80023e80 <skipelem>:
80023e80:	e92d4800 	push	{fp, lr}
80023e84:	e28db004 	add	fp, sp, #4
80023e88:	e24dd010 	sub	sp, sp, #16
80023e8c:	e50b0010 	str	r0, [fp, #-16]
80023e90:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80023e94:	ea000002 	b	80023ea4 <skipelem+0x24>
80023e98:	e51b3010 	ldr	r3, [fp, #-16]
80023e9c:	e2833001 	add	r3, r3, #1
80023ea0:	e50b3010 	str	r3, [fp, #-16]
80023ea4:	e51b3010 	ldr	r3, [fp, #-16]
80023ea8:	e5d33000 	ldrb	r3, [r3]
80023eac:	e353002f 	cmp	r3, #47	; 0x2f
80023eb0:	0afffff8 	beq	80023e98 <skipelem+0x18>
80023eb4:	e51b3010 	ldr	r3, [fp, #-16]
80023eb8:	e5d33000 	ldrb	r3, [r3]
80023ebc:	e3530000 	cmp	r3, #0
80023ec0:	1a000001 	bne	80023ecc <skipelem+0x4c>
80023ec4:	e3a03000 	mov	r3, #0
80023ec8:	ea00002c 	b	80023f80 <skipelem+0x100>
80023ecc:	e51b3010 	ldr	r3, [fp, #-16]
80023ed0:	e50b3008 	str	r3, [fp, #-8]
80023ed4:	ea000002 	b	80023ee4 <skipelem+0x64>
80023ed8:	e51b3010 	ldr	r3, [fp, #-16]
80023edc:	e2833001 	add	r3, r3, #1
80023ee0:	e50b3010 	str	r3, [fp, #-16]
80023ee4:	e51b3010 	ldr	r3, [fp, #-16]
80023ee8:	e5d33000 	ldrb	r3, [r3]
80023eec:	e353002f 	cmp	r3, #47	; 0x2f
80023ef0:	0a000003 	beq	80023f04 <skipelem+0x84>
80023ef4:	e51b3010 	ldr	r3, [fp, #-16]
80023ef8:	e5d33000 	ldrb	r3, [r3]
80023efc:	e3530000 	cmp	r3, #0
80023f00:	1afffff4 	bne	80023ed8 <skipelem+0x58>
80023f04:	e51b2010 	ldr	r2, [fp, #-16]
80023f08:	e51b3008 	ldr	r3, [fp, #-8]
80023f0c:	e0423003 	sub	r3, r2, r3
80023f10:	e50b300c 	str	r3, [fp, #-12]
80023f14:	e51b300c 	ldr	r3, [fp, #-12]
80023f18:	e353000d 	cmp	r3, #13
80023f1c:	da000004 	ble	80023f34 <skipelem+0xb4>
80023f20:	e3a0200e 	mov	r2, #14
80023f24:	e51b1008 	ldr	r1, [fp, #-8]
80023f28:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80023f2c:	ebfff0a4 	bl	800201c4 <memmove>
80023f30:	ea00000d 	b	80023f6c <skipelem+0xec>
80023f34:	e51b300c 	ldr	r3, [fp, #-12]
80023f38:	e1a02003 	mov	r2, r3
80023f3c:	e51b1008 	ldr	r1, [fp, #-8]
80023f40:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80023f44:	ebfff09e 	bl	800201c4 <memmove>
80023f48:	e51b300c 	ldr	r3, [fp, #-12]
80023f4c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80023f50:	e0823003 	add	r3, r2, r3
80023f54:	e3a02000 	mov	r2, #0
80023f58:	e5c32000 	strb	r2, [r3]
80023f5c:	ea000002 	b	80023f6c <skipelem+0xec>
80023f60:	e51b3010 	ldr	r3, [fp, #-16]
80023f64:	e2833001 	add	r3, r3, #1
80023f68:	e50b3010 	str	r3, [fp, #-16]
80023f6c:	e51b3010 	ldr	r3, [fp, #-16]
80023f70:	e5d33000 	ldrb	r3, [r3]
80023f74:	e353002f 	cmp	r3, #47	; 0x2f
80023f78:	0afffff8 	beq	80023f60 <skipelem+0xe0>
80023f7c:	e51b3010 	ldr	r3, [fp, #-16]
80023f80:	e1a00003 	mov	r0, r3
80023f84:	e24bd004 	sub	sp, fp, #4
80023f88:	e8bd8800 	pop	{fp, pc}

80023f8c <namex>:
80023f8c:	e92d4800 	push	{fp, lr}
80023f90:	e28db004 	add	fp, sp, #4
80023f94:	e24dd018 	sub	sp, sp, #24
80023f98:	e50b0010 	str	r0, [fp, #-16]
80023f9c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80023fa0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80023fa4:	e51b3010 	ldr	r3, [fp, #-16]
80023fa8:	e5d33000 	ldrb	r3, [r3]
80023fac:	e353002f 	cmp	r3, #47	; 0x2f
80023fb0:	1a000004 	bne	80023fc8 <namex+0x3c>
80023fb4:	e3a01001 	mov	r1, #1
80023fb8:	e3a00001 	mov	r0, #1
80023fbc:	ebfffc0b 	bl	80022ff0 <iget>
80023fc0:	e50b0008 	str	r0, [fp, #-8]
80023fc4:	ea00002b 	b	80024078 <namex+0xec>
80023fc8:	e59f30f0 	ldr	r3, [pc, #240]	; 800240c0 <namex+0x134>
80023fcc:	e5933000 	ldr	r3, [r3]
80023fd0:	e5933068 	ldr	r3, [r3, #104]	; 0x68
80023fd4:	e1a00003 	mov	r0, r3
80023fd8:	ebfffc54 	bl	80023130 <idup>
80023fdc:	e50b0008 	str	r0, [fp, #-8]
80023fe0:	ea000024 	b	80024078 <namex+0xec>
80023fe4:	e51b0008 	ldr	r0, [fp, #-8]
80023fe8:	ebfffc62 	bl	80023178 <ilock>
80023fec:	e51b3008 	ldr	r3, [fp, #-8]
80023ff0:	e1d331f0 	ldrsh	r3, [r3, #16]
80023ff4:	e3530001 	cmp	r3, #1
80023ff8:	0a000003 	beq	8002400c <namex+0x80>
80023ffc:	e51b0008 	ldr	r0, [fp, #-8]
80024000:	ebfffd1d 	bl	8002347c <iunlockput>
80024004:	e3a03000 	mov	r3, #0
80024008:	ea000029 	b	800240b4 <namex+0x128>
8002400c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024010:	e3530000 	cmp	r3, #0
80024014:	0a000007 	beq	80024038 <namex+0xac>
80024018:	e51b3010 	ldr	r3, [fp, #-16]
8002401c:	e5d33000 	ldrb	r3, [r3]
80024020:	e3530000 	cmp	r3, #0
80024024:	1a000003 	bne	80024038 <namex+0xac>
80024028:	e51b0008 	ldr	r0, [fp, #-8]
8002402c:	ebfffcb5 	bl	80023308 <iunlock>
80024030:	e51b3008 	ldr	r3, [fp, #-8]
80024034:	ea00001e 	b	800240b4 <namex+0x128>
80024038:	e3a02000 	mov	r2, #0
8002403c:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80024040:	e51b0008 	ldr	r0, [fp, #-8]
80024044:	ebffff06 	bl	80023c64 <dirlookup>
80024048:	e50b000c 	str	r0, [fp, #-12]
8002404c:	e51b300c 	ldr	r3, [fp, #-12]
80024050:	e3530000 	cmp	r3, #0
80024054:	1a000003 	bne	80024068 <namex+0xdc>
80024058:	e51b0008 	ldr	r0, [fp, #-8]
8002405c:	ebfffd06 	bl	8002347c <iunlockput>
80024060:	e3a03000 	mov	r3, #0
80024064:	ea000012 	b	800240b4 <namex+0x128>
80024068:	e51b0008 	ldr	r0, [fp, #-8]
8002406c:	ebfffd02 	bl	8002347c <iunlockput>
80024070:	e51b300c 	ldr	r3, [fp, #-12]
80024074:	e50b3008 	str	r3, [fp, #-8]
80024078:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
8002407c:	e51b0010 	ldr	r0, [fp, #-16]
80024080:	ebffff7e 	bl	80023e80 <skipelem>
80024084:	e50b0010 	str	r0, [fp, #-16]
80024088:	e51b3010 	ldr	r3, [fp, #-16]
8002408c:	e3530000 	cmp	r3, #0
80024090:	1affffd3 	bne	80023fe4 <namex+0x58>
80024094:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024098:	e3530000 	cmp	r3, #0
8002409c:	0a000003 	beq	800240b0 <namex+0x124>
800240a0:	e51b0008 	ldr	r0, [fp, #-8]
800240a4:	ebfffcb9 	bl	80023390 <iput>
800240a8:	e3a03000 	mov	r3, #0
800240ac:	ea000000 	b	800240b4 <namex+0x128>
800240b0:	e51b3008 	ldr	r3, [fp, #-8]
800240b4:	e1a00003 	mov	r0, r3
800240b8:	e24bd004 	sub	sp, fp, #4
800240bc:	e8bd8800 	pop	{fp, pc}
800240c0:	800ae61c 	.word	0x800ae61c

800240c4 <namei>:
800240c4:	e92d4800 	push	{fp, lr}
800240c8:	e28db004 	add	fp, sp, #4
800240cc:	e24dd018 	sub	sp, sp, #24
800240d0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800240d4:	e24b3014 	sub	r3, fp, #20
800240d8:	e1a02003 	mov	r2, r3
800240dc:	e3a01000 	mov	r1, #0
800240e0:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800240e4:	ebffffa8 	bl	80023f8c <namex>
800240e8:	e1a03000 	mov	r3, r0
800240ec:	e1a00003 	mov	r0, r3
800240f0:	e24bd004 	sub	sp, fp, #4
800240f4:	e8bd8800 	pop	{fp, pc}

800240f8 <nameiparent>:
800240f8:	e92d4800 	push	{fp, lr}
800240fc:	e28db004 	add	fp, sp, #4
80024100:	e24dd008 	sub	sp, sp, #8
80024104:	e50b0008 	str	r0, [fp, #-8]
80024108:	e50b100c 	str	r1, [fp, #-12]
8002410c:	e51b200c 	ldr	r2, [fp, #-12]
80024110:	e3a01001 	mov	r1, #1
80024114:	e51b0008 	ldr	r0, [fp, #-8]
80024118:	ebffff9b 	bl	80023f8c <namex>
8002411c:	e1a03000 	mov	r3, r0
80024120:	e1a00003 	mov	r0, r3
80024124:	e24bd004 	sub	sp, fp, #4
80024128:	e8bd8800 	pop	{fp, pc}

8002412c <initlog>:
8002412c:	e92d4800 	push	{fp, lr}
80024130:	e28db004 	add	fp, sp, #4
80024134:	e24dd010 	sub	sp, sp, #16
80024138:	e59f1058 	ldr	r1, [pc, #88]	; 80024198 <initlog+0x6c>
8002413c:	e59f0058 	ldr	r0, [pc, #88]	; 8002419c <initlog+0x70>
80024140:	eb00071a 	bl	80025db0 <initlock>
80024144:	e24b3014 	sub	r3, fp, #20
80024148:	e1a01003 	mov	r1, r3
8002414c:	e3a00001 	mov	r0, #1
80024150:	ebfffa36 	bl	80022a30 <readsb>
80024154:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80024158:	e51b3008 	ldr	r3, [fp, #-8]
8002415c:	e0423003 	sub	r3, r2, r3
80024160:	e1a02003 	mov	r2, r3
80024164:	e59f3030 	ldr	r3, [pc, #48]	; 8002419c <initlog+0x70>
80024168:	e5832034 	str	r2, [r3, #52]	; 0x34
8002416c:	e51b3008 	ldr	r3, [fp, #-8]
80024170:	e1a02003 	mov	r2, r3
80024174:	e59f3020 	ldr	r3, [pc, #32]	; 8002419c <initlog+0x70>
80024178:	e5832038 	str	r2, [r3, #56]	; 0x38
8002417c:	e59f3018 	ldr	r3, [pc, #24]	; 8002419c <initlog+0x70>
80024180:	e3a02001 	mov	r2, #1
80024184:	e5832040 	str	r2, [r3, #64]	; 0x40
80024188:	eb00009a 	bl	800243f8 <recover_from_log>
8002418c:	e1a00000 	nop			; (mov r0, r0)
80024190:	e24bd004 	sub	sp, fp, #4
80024194:	e8bd8800 	pop	{fp, pc}
80024198:	8002a288 	.word	0x8002a288
8002419c:	800ae4bc 	.word	0x800ae4bc

800241a0 <install_trans>:
800241a0:	e92d4800 	push	{fp, lr}
800241a4:	e28db004 	add	fp, sp, #4
800241a8:	e24dd010 	sub	sp, sp, #16
800241ac:	e3a03000 	mov	r3, #0
800241b0:	e50b3008 	str	r3, [fp, #-8]
800241b4:	ea000026 	b	80024254 <install_trans+0xb4>
800241b8:	e59f30b4 	ldr	r3, [pc, #180]	; 80024274 <install_trans+0xd4>
800241bc:	e5933040 	ldr	r3, [r3, #64]	; 0x40
800241c0:	e1a00003 	mov	r0, r3
800241c4:	e59f30a8 	ldr	r3, [pc, #168]	; 80024274 <install_trans+0xd4>
800241c8:	e5932034 	ldr	r2, [r3, #52]	; 0x34
800241cc:	e51b3008 	ldr	r3, [fp, #-8]
800241d0:	e0823003 	add	r3, r2, r3
800241d4:	e2833001 	add	r3, r3, #1
800241d8:	e1a01003 	mov	r1, r3
800241dc:	ebfff247 	bl	80020b00 <bread>
800241e0:	e50b000c 	str	r0, [fp, #-12]
800241e4:	e59f3088 	ldr	r3, [pc, #136]	; 80024274 <install_trans+0xd4>
800241e8:	e5933040 	ldr	r3, [r3, #64]	; 0x40
800241ec:	e1a00003 	mov	r0, r3
800241f0:	e59f207c 	ldr	r2, [pc, #124]	; 80024274 <install_trans+0xd4>
800241f4:	e51b3008 	ldr	r3, [fp, #-8]
800241f8:	e2833010 	add	r3, r3, #16
800241fc:	e1a03103 	lsl	r3, r3, #2
80024200:	e0823003 	add	r3, r2, r3
80024204:	e5933008 	ldr	r3, [r3, #8]
80024208:	e1a01003 	mov	r1, r3
8002420c:	ebfff23b 	bl	80020b00 <bread>
80024210:	e50b0010 	str	r0, [fp, #-16]
80024214:	e51b3010 	ldr	r3, [fp, #-16]
80024218:	e2830018 	add	r0, r3, #24
8002421c:	e51b300c 	ldr	r3, [fp, #-12]
80024220:	e2833018 	add	r3, r3, #24
80024224:	e3a02c02 	mov	r2, #512	; 0x200
80024228:	e1a01003 	mov	r1, r3
8002422c:	ebffefe4 	bl	800201c4 <memmove>
80024230:	e51b0010 	ldr	r0, [fp, #-16]
80024234:	ebfff245 	bl	80020b50 <bwrite>
80024238:	e51b000c 	ldr	r0, [fp, #-12]
8002423c:	ebfff259 	bl	80020ba8 <brelse>
80024240:	e51b0010 	ldr	r0, [fp, #-16]
80024244:	ebfff257 	bl	80020ba8 <brelse>
80024248:	e51b3008 	ldr	r3, [fp, #-8]
8002424c:	e2833001 	add	r3, r3, #1
80024250:	e50b3008 	str	r3, [fp, #-8]
80024254:	e59f3018 	ldr	r3, [pc, #24]	; 80024274 <install_trans+0xd4>
80024258:	e5933044 	ldr	r3, [r3, #68]	; 0x44
8002425c:	e51b2008 	ldr	r2, [fp, #-8]
80024260:	e1520003 	cmp	r2, r3
80024264:	baffffd3 	blt	800241b8 <install_trans+0x18>
80024268:	e1a00000 	nop			; (mov r0, r0)
8002426c:	e24bd004 	sub	sp, fp, #4
80024270:	e8bd8800 	pop	{fp, pc}
80024274:	800ae4bc 	.word	0x800ae4bc

80024278 <read_head>:
80024278:	e92d4800 	push	{fp, lr}
8002427c:	e28db004 	add	fp, sp, #4
80024280:	e24dd010 	sub	sp, sp, #16
80024284:	e59f30a4 	ldr	r3, [pc, #164]	; 80024330 <read_head+0xb8>
80024288:	e5933040 	ldr	r3, [r3, #64]	; 0x40
8002428c:	e1a02003 	mov	r2, r3
80024290:	e59f3098 	ldr	r3, [pc, #152]	; 80024330 <read_head+0xb8>
80024294:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80024298:	e1a01003 	mov	r1, r3
8002429c:	e1a00002 	mov	r0, r2
800242a0:	ebfff216 	bl	80020b00 <bread>
800242a4:	e50b000c 	str	r0, [fp, #-12]
800242a8:	e51b300c 	ldr	r3, [fp, #-12]
800242ac:	e2833018 	add	r3, r3, #24
800242b0:	e50b3010 	str	r3, [fp, #-16]
800242b4:	e51b3010 	ldr	r3, [fp, #-16]
800242b8:	e5933000 	ldr	r3, [r3]
800242bc:	e59f206c 	ldr	r2, [pc, #108]	; 80024330 <read_head+0xb8>
800242c0:	e5823044 	str	r3, [r2, #68]	; 0x44
800242c4:	e3a03000 	mov	r3, #0
800242c8:	e50b3008 	str	r3, [fp, #-8]
800242cc:	ea00000d 	b	80024308 <read_head+0x90>
800242d0:	e51b2010 	ldr	r2, [fp, #-16]
800242d4:	e51b3008 	ldr	r3, [fp, #-8]
800242d8:	e1a03103 	lsl	r3, r3, #2
800242dc:	e0823003 	add	r3, r2, r3
800242e0:	e5932004 	ldr	r2, [r3, #4]
800242e4:	e59f1044 	ldr	r1, [pc, #68]	; 80024330 <read_head+0xb8>
800242e8:	e51b3008 	ldr	r3, [fp, #-8]
800242ec:	e2833010 	add	r3, r3, #16
800242f0:	e1a03103 	lsl	r3, r3, #2
800242f4:	e0813003 	add	r3, r1, r3
800242f8:	e5832008 	str	r2, [r3, #8]
800242fc:	e51b3008 	ldr	r3, [fp, #-8]
80024300:	e2833001 	add	r3, r3, #1
80024304:	e50b3008 	str	r3, [fp, #-8]
80024308:	e59f3020 	ldr	r3, [pc, #32]	; 80024330 <read_head+0xb8>
8002430c:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80024310:	e51b2008 	ldr	r2, [fp, #-8]
80024314:	e1520003 	cmp	r2, r3
80024318:	baffffec 	blt	800242d0 <read_head+0x58>
8002431c:	e51b000c 	ldr	r0, [fp, #-12]
80024320:	ebfff220 	bl	80020ba8 <brelse>
80024324:	e1a00000 	nop			; (mov r0, r0)
80024328:	e24bd004 	sub	sp, fp, #4
8002432c:	e8bd8800 	pop	{fp, pc}
80024330:	800ae4bc 	.word	0x800ae4bc

80024334 <write_head>:
80024334:	e92d4800 	push	{fp, lr}
80024338:	e28db004 	add	fp, sp, #4
8002433c:	e24dd010 	sub	sp, sp, #16
80024340:	e59f30ac 	ldr	r3, [pc, #172]	; 800243f4 <write_head+0xc0>
80024344:	e5933040 	ldr	r3, [r3, #64]	; 0x40
80024348:	e1a02003 	mov	r2, r3
8002434c:	e59f30a0 	ldr	r3, [pc, #160]	; 800243f4 <write_head+0xc0>
80024350:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80024354:	e1a01003 	mov	r1, r3
80024358:	e1a00002 	mov	r0, r2
8002435c:	ebfff1e7 	bl	80020b00 <bread>
80024360:	e50b000c 	str	r0, [fp, #-12]
80024364:	e51b300c 	ldr	r3, [fp, #-12]
80024368:	e2833018 	add	r3, r3, #24
8002436c:	e50b3010 	str	r3, [fp, #-16]
80024370:	e59f307c 	ldr	r3, [pc, #124]	; 800243f4 <write_head+0xc0>
80024374:	e5932044 	ldr	r2, [r3, #68]	; 0x44
80024378:	e51b3010 	ldr	r3, [fp, #-16]
8002437c:	e5832000 	str	r2, [r3]
80024380:	e3a03000 	mov	r3, #0
80024384:	e50b3008 	str	r3, [fp, #-8]
80024388:	ea00000d 	b	800243c4 <write_head+0x90>
8002438c:	e59f2060 	ldr	r2, [pc, #96]	; 800243f4 <write_head+0xc0>
80024390:	e51b3008 	ldr	r3, [fp, #-8]
80024394:	e2833010 	add	r3, r3, #16
80024398:	e1a03103 	lsl	r3, r3, #2
8002439c:	e0823003 	add	r3, r2, r3
800243a0:	e5932008 	ldr	r2, [r3, #8]
800243a4:	e51b1010 	ldr	r1, [fp, #-16]
800243a8:	e51b3008 	ldr	r3, [fp, #-8]
800243ac:	e1a03103 	lsl	r3, r3, #2
800243b0:	e0813003 	add	r3, r1, r3
800243b4:	e5832004 	str	r2, [r3, #4]
800243b8:	e51b3008 	ldr	r3, [fp, #-8]
800243bc:	e2833001 	add	r3, r3, #1
800243c0:	e50b3008 	str	r3, [fp, #-8]
800243c4:	e59f3028 	ldr	r3, [pc, #40]	; 800243f4 <write_head+0xc0>
800243c8:	e5933044 	ldr	r3, [r3, #68]	; 0x44
800243cc:	e51b2008 	ldr	r2, [fp, #-8]
800243d0:	e1520003 	cmp	r2, r3
800243d4:	baffffec 	blt	8002438c <write_head+0x58>
800243d8:	e51b000c 	ldr	r0, [fp, #-12]
800243dc:	ebfff1db 	bl	80020b50 <bwrite>
800243e0:	e51b000c 	ldr	r0, [fp, #-12]
800243e4:	ebfff1ef 	bl	80020ba8 <brelse>
800243e8:	e1a00000 	nop			; (mov r0, r0)
800243ec:	e24bd004 	sub	sp, fp, #4
800243f0:	e8bd8800 	pop	{fp, pc}
800243f4:	800ae4bc 	.word	0x800ae4bc

800243f8 <recover_from_log>:
800243f8:	e92d4800 	push	{fp, lr}
800243fc:	e28db004 	add	fp, sp, #4
80024400:	ebffff9c 	bl	80024278 <read_head>
80024404:	ebffff65 	bl	800241a0 <install_trans>
80024408:	e59f3010 	ldr	r3, [pc, #16]	; 80024420 <recover_from_log+0x28>
8002440c:	e3a02000 	mov	r2, #0
80024410:	e5832044 	str	r2, [r3, #68]	; 0x44
80024414:	ebffffc6 	bl	80024334 <write_head>
80024418:	e1a00000 	nop			; (mov r0, r0)
8002441c:	e8bd8800 	pop	{fp, pc}
80024420:	800ae4bc 	.word	0x800ae4bc

80024424 <begin_trans>:
80024424:	e92d4800 	push	{fp, lr}
80024428:	e28db004 	add	fp, sp, #4
8002442c:	e59f003c 	ldr	r0, [pc, #60]	; 80024470 <begin_trans+0x4c>
80024430:	eb000670 	bl	80025df8 <acquire>
80024434:	ea000002 	b	80024444 <begin_trans+0x20>
80024438:	e59f1030 	ldr	r1, [pc, #48]	; 80024470 <begin_trans+0x4c>
8002443c:	e59f002c 	ldr	r0, [pc, #44]	; 80024470 <begin_trans+0x4c>
80024440:	eb00051d 	bl	800258bc <sleep>
80024444:	e59f3024 	ldr	r3, [pc, #36]	; 80024470 <begin_trans+0x4c>
80024448:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
8002444c:	e3530000 	cmp	r3, #0
80024450:	1afffff8 	bne	80024438 <begin_trans+0x14>
80024454:	e59f3014 	ldr	r3, [pc, #20]	; 80024470 <begin_trans+0x4c>
80024458:	e3a02001 	mov	r2, #1
8002445c:	e583203c 	str	r2, [r3, #60]	; 0x3c
80024460:	e59f0008 	ldr	r0, [pc, #8]	; 80024470 <begin_trans+0x4c>
80024464:	eb00066e 	bl	80025e24 <release>
80024468:	e1a00000 	nop			; (mov r0, r0)
8002446c:	e8bd8800 	pop	{fp, pc}
80024470:	800ae4bc 	.word	0x800ae4bc

80024474 <commit_trans>:
80024474:	e92d4800 	push	{fp, lr}
80024478:	e28db004 	add	fp, sp, #4
8002447c:	e59f304c 	ldr	r3, [pc, #76]	; 800244d0 <commit_trans+0x5c>
80024480:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80024484:	e3530000 	cmp	r3, #0
80024488:	da000005 	ble	800244a4 <commit_trans+0x30>
8002448c:	ebffffa8 	bl	80024334 <write_head>
80024490:	ebffff42 	bl	800241a0 <install_trans>
80024494:	e59f3034 	ldr	r3, [pc, #52]	; 800244d0 <commit_trans+0x5c>
80024498:	e3a02000 	mov	r2, #0
8002449c:	e5832044 	str	r2, [r3, #68]	; 0x44
800244a0:	ebffffa3 	bl	80024334 <write_head>
800244a4:	e59f0024 	ldr	r0, [pc, #36]	; 800244d0 <commit_trans+0x5c>
800244a8:	eb000652 	bl	80025df8 <acquire>
800244ac:	e59f301c 	ldr	r3, [pc, #28]	; 800244d0 <commit_trans+0x5c>
800244b0:	e3a02000 	mov	r2, #0
800244b4:	e583203c 	str	r2, [r3, #60]	; 0x3c
800244b8:	e59f0010 	ldr	r0, [pc, #16]	; 800244d0 <commit_trans+0x5c>
800244bc:	eb000552 	bl	80025a0c <wakeup>
800244c0:	e59f0008 	ldr	r0, [pc, #8]	; 800244d0 <commit_trans+0x5c>
800244c4:	eb000656 	bl	80025e24 <release>
800244c8:	e1a00000 	nop			; (mov r0, r0)
800244cc:	e8bd8800 	pop	{fp, pc}
800244d0:	800ae4bc 	.word	0x800ae4bc

800244d4 <log_write>:
800244d4:	e92d4800 	push	{fp, lr}
800244d8:	e28db004 	add	fp, sp, #4
800244dc:	e24dd010 	sub	sp, sp, #16
800244e0:	e50b0010 	str	r0, [fp, #-16]
800244e4:	e59f3164 	ldr	r3, [pc, #356]	; 80024650 <log_write+0x17c>
800244e8:	e5933044 	ldr	r3, [r3, #68]	; 0x44
800244ec:	e3530009 	cmp	r3, #9
800244f0:	ca000006 	bgt	80024510 <log_write+0x3c>
800244f4:	e59f3154 	ldr	r3, [pc, #340]	; 80024650 <log_write+0x17c>
800244f8:	e5932044 	ldr	r2, [r3, #68]	; 0x44
800244fc:	e59f314c 	ldr	r3, [pc, #332]	; 80024650 <log_write+0x17c>
80024500:	e5933038 	ldr	r3, [r3, #56]	; 0x38
80024504:	e2433001 	sub	r3, r3, #1
80024508:	e1520003 	cmp	r2, r3
8002450c:	ba000001 	blt	80024518 <log_write+0x44>
80024510:	e59f013c 	ldr	r0, [pc, #316]	; 80024654 <log_write+0x180>
80024514:	ebfff589 	bl	80021b40 <panic>
80024518:	e59f3130 	ldr	r3, [pc, #304]	; 80024650 <log_write+0x17c>
8002451c:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
80024520:	e3530000 	cmp	r3, #0
80024524:	1a000001 	bne	80024530 <log_write+0x5c>
80024528:	e59f0128 	ldr	r0, [pc, #296]	; 80024658 <log_write+0x184>
8002452c:	ebfff583 	bl	80021b40 <panic>
80024530:	e3a03000 	mov	r3, #0
80024534:	e50b3008 	str	r3, [fp, #-8]
80024538:	ea00000d 	b	80024574 <log_write+0xa0>
8002453c:	e59f210c 	ldr	r2, [pc, #268]	; 80024650 <log_write+0x17c>
80024540:	e51b3008 	ldr	r3, [fp, #-8]
80024544:	e2833010 	add	r3, r3, #16
80024548:	e1a03103 	lsl	r3, r3, #2
8002454c:	e0823003 	add	r3, r2, r3
80024550:	e5933008 	ldr	r3, [r3, #8]
80024554:	e1a02003 	mov	r2, r3
80024558:	e51b3010 	ldr	r3, [fp, #-16]
8002455c:	e5933008 	ldr	r3, [r3, #8]
80024560:	e1520003 	cmp	r2, r3
80024564:	0a000008 	beq	8002458c <log_write+0xb8>
80024568:	e51b3008 	ldr	r3, [fp, #-8]
8002456c:	e2833001 	add	r3, r3, #1
80024570:	e50b3008 	str	r3, [fp, #-8]
80024574:	e59f30d4 	ldr	r3, [pc, #212]	; 80024650 <log_write+0x17c>
80024578:	e5933044 	ldr	r3, [r3, #68]	; 0x44
8002457c:	e51b2008 	ldr	r2, [fp, #-8]
80024580:	e1520003 	cmp	r2, r3
80024584:	baffffec 	blt	8002453c <log_write+0x68>
80024588:	ea000000 	b	80024590 <log_write+0xbc>
8002458c:	e1a00000 	nop			; (mov r0, r0)
80024590:	e51b3010 	ldr	r3, [fp, #-16]
80024594:	e5933008 	ldr	r3, [r3, #8]
80024598:	e1a01003 	mov	r1, r3
8002459c:	e59f20ac 	ldr	r2, [pc, #172]	; 80024650 <log_write+0x17c>
800245a0:	e51b3008 	ldr	r3, [fp, #-8]
800245a4:	e2833010 	add	r3, r3, #16
800245a8:	e1a03103 	lsl	r3, r3, #2
800245ac:	e0823003 	add	r3, r2, r3
800245b0:	e5831008 	str	r1, [r3, #8]
800245b4:	e51b3010 	ldr	r3, [fp, #-16]
800245b8:	e5930004 	ldr	r0, [r3, #4]
800245bc:	e59f308c 	ldr	r3, [pc, #140]	; 80024650 <log_write+0x17c>
800245c0:	e5932034 	ldr	r2, [r3, #52]	; 0x34
800245c4:	e51b3008 	ldr	r3, [fp, #-8]
800245c8:	e0823003 	add	r3, r2, r3
800245cc:	e2833001 	add	r3, r3, #1
800245d0:	e1a01003 	mov	r1, r3
800245d4:	ebfff149 	bl	80020b00 <bread>
800245d8:	e50b000c 	str	r0, [fp, #-12]
800245dc:	e51b300c 	ldr	r3, [fp, #-12]
800245e0:	e2830018 	add	r0, r3, #24
800245e4:	e51b3010 	ldr	r3, [fp, #-16]
800245e8:	e2833018 	add	r3, r3, #24
800245ec:	e3a02c02 	mov	r2, #512	; 0x200
800245f0:	e1a01003 	mov	r1, r3
800245f4:	ebffeef2 	bl	800201c4 <memmove>
800245f8:	e51b000c 	ldr	r0, [fp, #-12]
800245fc:	ebfff153 	bl	80020b50 <bwrite>
80024600:	e51b000c 	ldr	r0, [fp, #-12]
80024604:	ebfff167 	bl	80020ba8 <brelse>
80024608:	e59f3040 	ldr	r3, [pc, #64]	; 80024650 <log_write+0x17c>
8002460c:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80024610:	e51b2008 	ldr	r2, [fp, #-8]
80024614:	e1520003 	cmp	r2, r3
80024618:	1a000004 	bne	80024630 <log_write+0x15c>
8002461c:	e59f302c 	ldr	r3, [pc, #44]	; 80024650 <log_write+0x17c>
80024620:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80024624:	e2833001 	add	r3, r3, #1
80024628:	e59f2020 	ldr	r2, [pc, #32]	; 80024650 <log_write+0x17c>
8002462c:	e5823044 	str	r3, [r2, #68]	; 0x44
80024630:	e51b3010 	ldr	r3, [fp, #-16]
80024634:	e5933000 	ldr	r3, [r3]
80024638:	e3832004 	orr	r2, r3, #4
8002463c:	e51b3010 	ldr	r3, [fp, #-16]
80024640:	e5832000 	str	r2, [r3]
80024644:	e1a00000 	nop			; (mov r0, r0)
80024648:	e24bd004 	sub	sp, fp, #4
8002464c:	e8bd8800 	pop	{fp, pc}
80024650:	800ae4bc 	.word	0x800ae4bc
80024654:	8002a28c 	.word	0x8002a28c
80024658:	8002a2a4 	.word	0x8002a2a4

8002465c <kmain>:
8002465c:	e92d4800 	push	{fp, lr}
80024660:	e28db004 	add	fp, sp, #4
80024664:	e24dd008 	sub	sp, sp, #8
80024668:	e59f30b8 	ldr	r3, [pc, #184]	; 80024728 <kmain+0xcc>
8002466c:	e59f20b8 	ldr	r2, [pc, #184]	; 8002472c <kmain+0xd0>
80024670:	e5832000 	str	r2, [r3]
80024674:	e59f00b4 	ldr	r0, [pc, #180]	; 80024730 <kmain+0xd4>
80024678:	eb001354 	bl	800293d0 <uart_init>
8002467c:	e59f30b0 	ldr	r3, [pc, #176]	; 80024734 <kmain+0xd8>
80024680:	e50b3008 	str	r3, [fp, #-8]
80024684:	eb000f50 	bl	800283cc <init_vmm>
80024688:	e59f30a8 	ldr	r3, [pc, #168]	; 80024738 <kmain+0xdc>
8002468c:	e2833fff 	add	r3, r3, #1020	; 0x3fc
80024690:	e2833003 	add	r3, r3, #3
80024694:	e3c33fff 	bic	r3, r3, #1020	; 0x3fc
80024698:	e3c33003 	bic	r3, r3, #3
8002469c:	e51b1008 	ldr	r1, [fp, #-8]
800246a0:	e1a00003 	mov	r0, r3
800246a4:	eb000f7c 	bl	8002849c <kpt_freerange>
800246a8:	e51b3008 	ldr	r3, [fp, #-8]
800246ac:	e2833b01 	add	r3, r3, #1024	; 0x400
800246b0:	e59f1084 	ldr	r1, [pc, #132]	; 8002473c <kmain+0xe0>
800246b4:	e1a00003 	mov	r0, r3
800246b8:	eb000f77 	bl	8002849c <kpt_freerange>
800246bc:	e3a01302 	mov	r1, #134217728	; 0x8000000
800246c0:	e3a00601 	mov	r0, #1048576	; 0x100000
800246c4:	eb00123d 	bl	80028fc0 <paging_init>
800246c8:	ebfff1b5 	bl	80020da4 <kmem_init>
800246cc:	e3a01322 	mov	r1, #-2013265920	; 0x88000000
800246d0:	e59f0064 	ldr	r0, [pc, #100]	; 8002473c <kmain+0xe0>
800246d4:	ebfff1bb 	bl	80020dc8 <kmem_init2>
800246d8:	ebfff41c 	bl	80021750 <kmemfree>
800246dc:	e1a03000 	mov	r3, r0
800246e0:	e1a01003 	mov	r1, r3
800246e4:	e59f0054 	ldr	r0, [pc, #84]	; 80024740 <kmain+0xe4>
800246e8:	ebfff493 	bl	8002193c <cprintf>
800246ec:	eb000e3b 	bl	80027fe0 <trap_init>
800246f0:	e59f004c 	ldr	r0, [pc, #76]	; 80024744 <kmain+0xe8>
800246f4:	eb001252 	bl	80029044 <pic_init>
800246f8:	eb001365 	bl	80029494 <uart_enable_rx>
800246fc:	ebfff63a 	bl	80021fec <consoleinit>
80024700:	eb0001b7 	bl	80024de4 <pinit>
80024704:	ebfff06d 	bl	800208c0 <binit>
80024708:	ebfff784 	bl	80022520 <fileinit>
8002470c:	ebfff9b6 	bl	80022dec <iinit>
80024710:	eb00000c 	bl	80024748 <ideinit>
80024714:	e3a0000a 	mov	r0, #10
80024718:	eb0012db 	bl	8002928c <timer_init>
8002471c:	ebffef93 	bl	80020570 <sti>
80024720:	eb000224 	bl	80024fb8 <userinit>
80024724:	eb0003da 	bl	80025694 <scheduler>
80024728:	800ae52c 	.word	0x800ae52c
8002472c:	800ae530 	.word	0x800ae530
80024730:	901f1000 	.word	0x901f1000
80024734:	800f0000 	.word	0x800f0000
80024738:	800b1000 	.word	0x800b1000
8002473c:	80100000 	.word	0x80100000
80024740:	8002a2bc 	.word	0x8002a2bc
80024744:	90140000 	.word	0x90140000

80024748 <ideinit>:
80024748:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002474c:	e28db000 	add	fp, sp, #0
80024750:	e59f3028 	ldr	r3, [pc, #40]	; 80024780 <ideinit+0x38>
80024754:	e59f2028 	ldr	r2, [pc, #40]	; 80024784 <ideinit+0x3c>
80024758:	e5832000 	str	r2, [r3]
8002475c:	e59f3024 	ldr	r3, [pc, #36]	; 80024788 <ideinit+0x40>
80024760:	e1a034a3 	lsr	r3, r3, #9
80024764:	e1a02003 	mov	r2, r3
80024768:	e59f301c 	ldr	r3, [pc, #28]	; 8002478c <ideinit+0x44>
8002476c:	e5832000 	str	r2, [r3]
80024770:	e1a00000 	nop			; (mov r0, r0)
80024774:	e28bd000 	add	sp, fp, #0
80024778:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8002477c:	e12fff1e 	bx	lr
80024780:	800ae614 	.word	0x800ae614
80024784:	8002b0d4 	.word	0x8002b0d4
80024788:	00080000 	.word	0x00080000
8002478c:	800ae610 	.word	0x800ae610

80024790 <ideintr>:
80024790:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80024794:	e28db000 	add	fp, sp, #0
80024798:	e1a00000 	nop			; (mov r0, r0)
8002479c:	e28bd000 	add	sp, fp, #0
800247a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800247a4:	e12fff1e 	bx	lr

800247a8 <iderw>:
800247a8:	e92d4800 	push	{fp, lr}
800247ac:	e28db004 	add	fp, sp, #4
800247b0:	e24dd010 	sub	sp, sp, #16
800247b4:	e50b0010 	str	r0, [fp, #-16]
800247b8:	e51b3010 	ldr	r3, [fp, #-16]
800247bc:	e5933000 	ldr	r3, [r3]
800247c0:	e2033001 	and	r3, r3, #1
800247c4:	e3530000 	cmp	r3, #0
800247c8:	1a000001 	bne	800247d4 <iderw+0x2c>
800247cc:	e59f00ec 	ldr	r0, [pc, #236]	; 800248c0 <iderw+0x118>
800247d0:	ebfff4da 	bl	80021b40 <panic>
800247d4:	e51b3010 	ldr	r3, [fp, #-16]
800247d8:	e5933000 	ldr	r3, [r3]
800247dc:	e2033006 	and	r3, r3, #6
800247e0:	e3530002 	cmp	r3, #2
800247e4:	1a000001 	bne	800247f0 <iderw+0x48>
800247e8:	e59f00d4 	ldr	r0, [pc, #212]	; 800248c4 <iderw+0x11c>
800247ec:	ebfff4d3 	bl	80021b40 <panic>
800247f0:	e51b3010 	ldr	r3, [fp, #-16]
800247f4:	e5933004 	ldr	r3, [r3, #4]
800247f8:	e3530001 	cmp	r3, #1
800247fc:	0a000001 	beq	80024808 <iderw+0x60>
80024800:	e59f00c0 	ldr	r0, [pc, #192]	; 800248c8 <iderw+0x120>
80024804:	ebfff4cd 	bl	80021b40 <panic>
80024808:	e51b3010 	ldr	r3, [fp, #-16]
8002480c:	e5933008 	ldr	r3, [r3, #8]
80024810:	e59f20b4 	ldr	r2, [pc, #180]	; 800248cc <iderw+0x124>
80024814:	e5922000 	ldr	r2, [r2]
80024818:	e1530002 	cmp	r3, r2
8002481c:	3a000001 	bcc	80024828 <iderw+0x80>
80024820:	e59f00a8 	ldr	r0, [pc, #168]	; 800248d0 <iderw+0x128>
80024824:	ebfff4c5 	bl	80021b40 <panic>
80024828:	e59f30a4 	ldr	r3, [pc, #164]	; 800248d4 <iderw+0x12c>
8002482c:	e5932000 	ldr	r2, [r3]
80024830:	e51b3010 	ldr	r3, [fp, #-16]
80024834:	e5933008 	ldr	r3, [r3, #8]
80024838:	e1a03483 	lsl	r3, r3, #9
8002483c:	e0823003 	add	r3, r2, r3
80024840:	e50b3008 	str	r3, [fp, #-8]
80024844:	e51b3010 	ldr	r3, [fp, #-16]
80024848:	e5933000 	ldr	r3, [r3]
8002484c:	e2033004 	and	r3, r3, #4
80024850:	e3530000 	cmp	r3, #0
80024854:	0a00000b 	beq	80024888 <iderw+0xe0>
80024858:	e51b3010 	ldr	r3, [fp, #-16]
8002485c:	e5933000 	ldr	r3, [r3]
80024860:	e3c32004 	bic	r2, r3, #4
80024864:	e51b3010 	ldr	r3, [fp, #-16]
80024868:	e5832000 	str	r2, [r3]
8002486c:	e51b3010 	ldr	r3, [fp, #-16]
80024870:	e2833018 	add	r3, r3, #24
80024874:	e3a02c02 	mov	r2, #512	; 0x200
80024878:	e1a01003 	mov	r1, r3
8002487c:	e51b0008 	ldr	r0, [fp, #-8]
80024880:	ebffee4f 	bl	800201c4 <memmove>
80024884:	ea000005 	b	800248a0 <iderw+0xf8>
80024888:	e51b3010 	ldr	r3, [fp, #-16]
8002488c:	e2833018 	add	r3, r3, #24
80024890:	e3a02c02 	mov	r2, #512	; 0x200
80024894:	e51b1008 	ldr	r1, [fp, #-8]
80024898:	e1a00003 	mov	r0, r3
8002489c:	ebffee48 	bl	800201c4 <memmove>
800248a0:	e51b3010 	ldr	r3, [fp, #-16]
800248a4:	e5933000 	ldr	r3, [r3]
800248a8:	e3832002 	orr	r2, r3, #2
800248ac:	e51b3010 	ldr	r3, [fp, #-16]
800248b0:	e5832000 	str	r2, [r3]
800248b4:	e1a00000 	nop			; (mov r0, r0)
800248b8:	e24bd004 	sub	sp, fp, #4
800248bc:	e8bd8800 	pop	{fp, pc}
800248c0:	8002a2e8 	.word	0x8002a2e8
800248c4:	8002a2fc 	.word	0x8002a2fc
800248c8:	8002a314 	.word	0x8002a314
800248cc:	800ae610 	.word	0x800ae610
800248d0:	8002a334 	.word	0x8002a334
800248d4:	800ae614 	.word	0x800ae614

800248d8 <pipealloc>:
800248d8:	e92d4800 	push	{fp, lr}
800248dc:	e28db004 	add	fp, sp, #4
800248e0:	e24dd010 	sub	sp, sp, #16
800248e4:	e50b0010 	str	r0, [fp, #-16]
800248e8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800248ec:	e3a03000 	mov	r3, #0
800248f0:	e50b3008 	str	r3, [fp, #-8]
800248f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800248f8:	e3a02000 	mov	r2, #0
800248fc:	e5832000 	str	r2, [r3]
80024900:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024904:	e5932000 	ldr	r2, [r3]
80024908:	e51b3010 	ldr	r3, [fp, #-16]
8002490c:	e5832000 	str	r2, [r3]
80024910:	ebfff70b 	bl	80022544 <filealloc>
80024914:	e1a02000 	mov	r2, r0
80024918:	e51b3010 	ldr	r3, [fp, #-16]
8002491c:	e5832000 	str	r2, [r3]
80024920:	e51b3010 	ldr	r3, [fp, #-16]
80024924:	e5933000 	ldr	r3, [r3]
80024928:	e3530000 	cmp	r3, #0
8002492c:	0a000042 	beq	80024a3c <pipealloc+0x164>
80024930:	ebfff703 	bl	80022544 <filealloc>
80024934:	e1a02000 	mov	r2, r0
80024938:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002493c:	e5832000 	str	r2, [r3]
80024940:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024944:	e5933000 	ldr	r3, [r3]
80024948:	e3530000 	cmp	r3, #0
8002494c:	0a00003a 	beq	80024a3c <pipealloc+0x164>
80024950:	e3a00f91 	mov	r0, #580	; 0x244
80024954:	ebfff337 	bl	80021638 <get_order>
80024958:	e1a03000 	mov	r3, r0
8002495c:	e1a00003 	mov	r0, r3
80024960:	ebfff2ab 	bl	80021414 <kmalloc>
80024964:	e50b0008 	str	r0, [fp, #-8]
80024968:	e51b3008 	ldr	r3, [fp, #-8]
8002496c:	e3530000 	cmp	r3, #0
80024970:	0a000033 	beq	80024a44 <pipealloc+0x16c>
80024974:	e51b3008 	ldr	r3, [fp, #-8]
80024978:	e3a02001 	mov	r2, #1
8002497c:	e583223c 	str	r2, [r3, #572]	; 0x23c
80024980:	e51b3008 	ldr	r3, [fp, #-8]
80024984:	e3a02001 	mov	r2, #1
80024988:	e5832240 	str	r2, [r3, #576]	; 0x240
8002498c:	e51b3008 	ldr	r3, [fp, #-8]
80024990:	e3a02000 	mov	r2, #0
80024994:	e5832238 	str	r2, [r3, #568]	; 0x238
80024998:	e51b3008 	ldr	r3, [fp, #-8]
8002499c:	e3a02000 	mov	r2, #0
800249a0:	e5832234 	str	r2, [r3, #564]	; 0x234
800249a4:	e51b3008 	ldr	r3, [fp, #-8]
800249a8:	e59f110c 	ldr	r1, [pc, #268]	; 80024abc <pipealloc+0x1e4>
800249ac:	e1a00003 	mov	r0, r3
800249b0:	eb0004fe 	bl	80025db0 <initlock>
800249b4:	e51b3010 	ldr	r3, [fp, #-16]
800249b8:	e5933000 	ldr	r3, [r3]
800249bc:	e3a02001 	mov	r2, #1
800249c0:	e5c32000 	strb	r2, [r3]
800249c4:	e51b3010 	ldr	r3, [fp, #-16]
800249c8:	e5933000 	ldr	r3, [r3]
800249cc:	e3a02001 	mov	r2, #1
800249d0:	e5c32008 	strb	r2, [r3, #8]
800249d4:	e51b3010 	ldr	r3, [fp, #-16]
800249d8:	e5933000 	ldr	r3, [r3]
800249dc:	e3a02000 	mov	r2, #0
800249e0:	e5c32009 	strb	r2, [r3, #9]
800249e4:	e51b3010 	ldr	r3, [fp, #-16]
800249e8:	e5933000 	ldr	r3, [r3]
800249ec:	e51b2008 	ldr	r2, [fp, #-8]
800249f0:	e583200c 	str	r2, [r3, #12]
800249f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800249f8:	e5933000 	ldr	r3, [r3]
800249fc:	e3a02001 	mov	r2, #1
80024a00:	e5c32000 	strb	r2, [r3]
80024a04:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024a08:	e5933000 	ldr	r3, [r3]
80024a0c:	e3a02000 	mov	r2, #0
80024a10:	e5c32008 	strb	r2, [r3, #8]
80024a14:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024a18:	e5933000 	ldr	r3, [r3]
80024a1c:	e3a02001 	mov	r2, #1
80024a20:	e5c32009 	strb	r2, [r3, #9]
80024a24:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024a28:	e5933000 	ldr	r3, [r3]
80024a2c:	e51b2008 	ldr	r2, [fp, #-8]
80024a30:	e583200c 	str	r2, [r3, #12]
80024a34:	e3a03000 	mov	r3, #0
80024a38:	ea00001c 	b	80024ab0 <pipealloc+0x1d8>
80024a3c:	e1a00000 	nop			; (mov r0, r0)
80024a40:	ea000000 	b	80024a48 <pipealloc+0x170>
80024a44:	e1a00000 	nop			; (mov r0, r0)
80024a48:	e51b3008 	ldr	r3, [fp, #-8]
80024a4c:	e3530000 	cmp	r3, #0
80024a50:	0a000005 	beq	80024a6c <pipealloc+0x194>
80024a54:	e3a00f91 	mov	r0, #580	; 0x244
80024a58:	ebfff2f6 	bl	80021638 <get_order>
80024a5c:	e1a03000 	mov	r3, r0
80024a60:	e1a01003 	mov	r1, r3
80024a64:	e51b0008 	ldr	r0, [fp, #-8]
80024a68:	ebfff2bf 	bl	8002156c <kfree>
80024a6c:	e51b3010 	ldr	r3, [fp, #-16]
80024a70:	e5933000 	ldr	r3, [r3]
80024a74:	e3530000 	cmp	r3, #0
80024a78:	0a000003 	beq	80024a8c <pipealloc+0x1b4>
80024a7c:	e51b3010 	ldr	r3, [fp, #-16]
80024a80:	e5933000 	ldr	r3, [r3]
80024a84:	e1a00003 	mov	r0, r3
80024a88:	ebfff6e9 	bl	80022634 <fileclose>
80024a8c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024a90:	e5933000 	ldr	r3, [r3]
80024a94:	e3530000 	cmp	r3, #0
80024a98:	0a000003 	beq	80024aac <pipealloc+0x1d4>
80024a9c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80024aa0:	e5933000 	ldr	r3, [r3]
80024aa4:	e1a00003 	mov	r0, r3
80024aa8:	ebfff6e1 	bl	80022634 <fileclose>
80024aac:	e3e03000 	mvn	r3, #0
80024ab0:	e1a00003 	mov	r0, r3
80024ab4:	e24bd004 	sub	sp, fp, #4
80024ab8:	e8bd8800 	pop	{fp, pc}
80024abc:	8002a350 	.word	0x8002a350

80024ac0 <pipeclose>:
80024ac0:	e92d4800 	push	{fp, lr}
80024ac4:	e28db004 	add	fp, sp, #4
80024ac8:	e24dd008 	sub	sp, sp, #8
80024acc:	e50b0008 	str	r0, [fp, #-8]
80024ad0:	e50b100c 	str	r1, [fp, #-12]
80024ad4:	e51b3008 	ldr	r3, [fp, #-8]
80024ad8:	e1a00003 	mov	r0, r3
80024adc:	eb0004c5 	bl	80025df8 <acquire>
80024ae0:	e51b300c 	ldr	r3, [fp, #-12]
80024ae4:	e3530000 	cmp	r3, #0
80024ae8:	0a000007 	beq	80024b0c <pipeclose+0x4c>
80024aec:	e51b3008 	ldr	r3, [fp, #-8]
80024af0:	e3a02000 	mov	r2, #0
80024af4:	e5832240 	str	r2, [r3, #576]	; 0x240
80024af8:	e51b3008 	ldr	r3, [fp, #-8]
80024afc:	e2833f8d 	add	r3, r3, #564	; 0x234
80024b00:	e1a00003 	mov	r0, r3
80024b04:	eb0003c0 	bl	80025a0c <wakeup>
80024b08:	ea000006 	b	80024b28 <pipeclose+0x68>
80024b0c:	e51b3008 	ldr	r3, [fp, #-8]
80024b10:	e3a02000 	mov	r2, #0
80024b14:	e583223c 	str	r2, [r3, #572]	; 0x23c
80024b18:	e51b3008 	ldr	r3, [fp, #-8]
80024b1c:	e2833f8e 	add	r3, r3, #568	; 0x238
80024b20:	e1a00003 	mov	r0, r3
80024b24:	eb0003b8 	bl	80025a0c <wakeup>
80024b28:	e51b3008 	ldr	r3, [fp, #-8]
80024b2c:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80024b30:	e3530000 	cmp	r3, #0
80024b34:	1a00000d 	bne	80024b70 <pipeclose+0xb0>
80024b38:	e51b3008 	ldr	r3, [fp, #-8]
80024b3c:	e5933240 	ldr	r3, [r3, #576]	; 0x240
80024b40:	e3530000 	cmp	r3, #0
80024b44:	1a000009 	bne	80024b70 <pipeclose+0xb0>
80024b48:	e51b3008 	ldr	r3, [fp, #-8]
80024b4c:	e1a00003 	mov	r0, r3
80024b50:	eb0004b3 	bl	80025e24 <release>
80024b54:	e3a00f91 	mov	r0, #580	; 0x244
80024b58:	ebfff2b6 	bl	80021638 <get_order>
80024b5c:	e1a03000 	mov	r3, r0
80024b60:	e1a01003 	mov	r1, r3
80024b64:	e51b0008 	ldr	r0, [fp, #-8]
80024b68:	ebfff27f 	bl	8002156c <kfree>
80024b6c:	ea000002 	b	80024b7c <pipeclose+0xbc>
80024b70:	e51b3008 	ldr	r3, [fp, #-8]
80024b74:	e1a00003 	mov	r0, r3
80024b78:	eb0004a9 	bl	80025e24 <release>
80024b7c:	e1a00000 	nop			; (mov r0, r0)
80024b80:	e24bd004 	sub	sp, fp, #4
80024b84:	e8bd8800 	pop	{fp, pc}

80024b88 <pipewrite>:
80024b88:	e92d4800 	push	{fp, lr}
80024b8c:	e28db004 	add	fp, sp, #4
80024b90:	e24dd018 	sub	sp, sp, #24
80024b94:	e50b0010 	str	r0, [fp, #-16]
80024b98:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024b9c:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024ba0:	e51b3010 	ldr	r3, [fp, #-16]
80024ba4:	e1a00003 	mov	r0, r3
80024ba8:	eb000492 	bl	80025df8 <acquire>
80024bac:	e3a03000 	mov	r3, #0
80024bb0:	e50b3008 	str	r3, [fp, #-8]
80024bb4:	ea00002b 	b	80024c68 <pipewrite+0xe0>
80024bb8:	e51b3010 	ldr	r3, [fp, #-16]
80024bbc:	e593323c 	ldr	r3, [r3, #572]	; 0x23c
80024bc0:	e3530000 	cmp	r3, #0
80024bc4:	1a000004 	bne	80024bdc <pipewrite+0x54>
80024bc8:	e51b3010 	ldr	r3, [fp, #-16]
80024bcc:	e1a00003 	mov	r0, r3
80024bd0:	eb000493 	bl	80025e24 <release>
80024bd4:	e3e03000 	mvn	r3, #0
80024bd8:	ea00002e 	b	80024c98 <pipewrite+0x110>
80024bdc:	e51b3010 	ldr	r3, [fp, #-16]
80024be0:	e2833f8d 	add	r3, r3, #564	; 0x234
80024be4:	e1a00003 	mov	r0, r3
80024be8:	eb000387 	bl	80025a0c <wakeup>
80024bec:	e51b3010 	ldr	r3, [fp, #-16]
80024bf0:	e2833f8e 	add	r3, r3, #568	; 0x238
80024bf4:	e51b2010 	ldr	r2, [fp, #-16]
80024bf8:	e1a01002 	mov	r1, r2
80024bfc:	e1a00003 	mov	r0, r3
80024c00:	eb00032d 	bl	800258bc <sleep>
80024c04:	e51b3010 	ldr	r3, [fp, #-16]
80024c08:	e5932238 	ldr	r2, [r3, #568]	; 0x238
80024c0c:	e51b3010 	ldr	r3, [fp, #-16]
80024c10:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80024c14:	e2833c02 	add	r3, r3, #512	; 0x200
80024c18:	e1520003 	cmp	r2, r3
80024c1c:	0affffe5 	beq	80024bb8 <pipewrite+0x30>
80024c20:	e51b3008 	ldr	r3, [fp, #-8]
80024c24:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80024c28:	e0822003 	add	r2, r2, r3
80024c2c:	e51b3010 	ldr	r3, [fp, #-16]
80024c30:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80024c34:	e2830001 	add	r0, r3, #1
80024c38:	e51b1010 	ldr	r1, [fp, #-16]
80024c3c:	e5810238 	str	r0, [r1, #568]	; 0x238
80024c40:	e1a03b83 	lsl	r3, r3, #23
80024c44:	e1a03ba3 	lsr	r3, r3, #23
80024c48:	e5d21000 	ldrb	r1, [r2]
80024c4c:	e51b2010 	ldr	r2, [fp, #-16]
80024c50:	e0823003 	add	r3, r2, r3
80024c54:	e1a02001 	mov	r2, r1
80024c58:	e5c32034 	strb	r2, [r3, #52]	; 0x34
80024c5c:	e51b3008 	ldr	r3, [fp, #-8]
80024c60:	e2833001 	add	r3, r3, #1
80024c64:	e50b3008 	str	r3, [fp, #-8]
80024c68:	e51b2008 	ldr	r2, [fp, #-8]
80024c6c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024c70:	e1520003 	cmp	r2, r3
80024c74:	baffffe2 	blt	80024c04 <pipewrite+0x7c>
80024c78:	e51b3010 	ldr	r3, [fp, #-16]
80024c7c:	e2833f8d 	add	r3, r3, #564	; 0x234
80024c80:	e1a00003 	mov	r0, r3
80024c84:	eb000360 	bl	80025a0c <wakeup>
80024c88:	e51b3010 	ldr	r3, [fp, #-16]
80024c8c:	e1a00003 	mov	r0, r3
80024c90:	eb000463 	bl	80025e24 <release>
80024c94:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024c98:	e1a00003 	mov	r0, r3
80024c9c:	e24bd004 	sub	sp, fp, #4
80024ca0:	e8bd8800 	pop	{fp, pc}

80024ca4 <piperead>:
80024ca4:	e92d4800 	push	{fp, lr}
80024ca8:	e28db004 	add	fp, sp, #4
80024cac:	e24dd018 	sub	sp, sp, #24
80024cb0:	e50b0010 	str	r0, [fp, #-16]
80024cb4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80024cb8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80024cbc:	e51b3010 	ldr	r3, [fp, #-16]
80024cc0:	e1a00003 	mov	r0, r3
80024cc4:	eb00044b 	bl	80025df8 <acquire>
80024cc8:	ea00000f 	b	80024d0c <piperead+0x68>
80024ccc:	e59f310c 	ldr	r3, [pc, #268]	; 80024de0 <piperead+0x13c>
80024cd0:	e5933000 	ldr	r3, [r3]
80024cd4:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80024cd8:	e3530000 	cmp	r3, #0
80024cdc:	0a000004 	beq	80024cf4 <piperead+0x50>
80024ce0:	e51b3010 	ldr	r3, [fp, #-16]
80024ce4:	e1a00003 	mov	r0, r3
80024ce8:	eb00044d 	bl	80025e24 <release>
80024cec:	e3e03000 	mvn	r3, #0
80024cf0:	ea000037 	b	80024dd4 <piperead+0x130>
80024cf4:	e51b3010 	ldr	r3, [fp, #-16]
80024cf8:	e2833f8d 	add	r3, r3, #564	; 0x234
80024cfc:	e51b2010 	ldr	r2, [fp, #-16]
80024d00:	e1a01002 	mov	r1, r2
80024d04:	e1a00003 	mov	r0, r3
80024d08:	eb0002eb 	bl	800258bc <sleep>
80024d0c:	e51b3010 	ldr	r3, [fp, #-16]
80024d10:	e5932234 	ldr	r2, [r3, #564]	; 0x234
80024d14:	e51b3010 	ldr	r3, [fp, #-16]
80024d18:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80024d1c:	e1520003 	cmp	r2, r3
80024d20:	1a000003 	bne	80024d34 <piperead+0x90>
80024d24:	e51b3010 	ldr	r3, [fp, #-16]
80024d28:	e5933240 	ldr	r3, [r3, #576]	; 0x240
80024d2c:	e3530000 	cmp	r3, #0
80024d30:	1affffe5 	bne	80024ccc <piperead+0x28>
80024d34:	e3a03000 	mov	r3, #0
80024d38:	e50b3008 	str	r3, [fp, #-8]
80024d3c:	ea000016 	b	80024d9c <piperead+0xf8>
80024d40:	e51b3010 	ldr	r3, [fp, #-16]
80024d44:	e5932234 	ldr	r2, [r3, #564]	; 0x234
80024d48:	e51b3010 	ldr	r3, [fp, #-16]
80024d4c:	e5933238 	ldr	r3, [r3, #568]	; 0x238
80024d50:	e1520003 	cmp	r2, r3
80024d54:	0a000015 	beq	80024db0 <piperead+0x10c>
80024d58:	e51b3010 	ldr	r3, [fp, #-16]
80024d5c:	e5933234 	ldr	r3, [r3, #564]	; 0x234
80024d60:	e2831001 	add	r1, r3, #1
80024d64:	e51b2010 	ldr	r2, [fp, #-16]
80024d68:	e5821234 	str	r1, [r2, #564]	; 0x234
80024d6c:	e1a03b83 	lsl	r3, r3, #23
80024d70:	e1a03ba3 	lsr	r3, r3, #23
80024d74:	e51b2008 	ldr	r2, [fp, #-8]
80024d78:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80024d7c:	e0812002 	add	r2, r1, r2
80024d80:	e51b1010 	ldr	r1, [fp, #-16]
80024d84:	e0813003 	add	r3, r1, r3
80024d88:	e5d33034 	ldrb	r3, [r3, #52]	; 0x34
80024d8c:	e5c23000 	strb	r3, [r2]
80024d90:	e51b3008 	ldr	r3, [fp, #-8]
80024d94:	e2833001 	add	r3, r3, #1
80024d98:	e50b3008 	str	r3, [fp, #-8]
80024d9c:	e51b2008 	ldr	r2, [fp, #-8]
80024da0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80024da4:	e1520003 	cmp	r2, r3
80024da8:	baffffe4 	blt	80024d40 <piperead+0x9c>
80024dac:	ea000000 	b	80024db4 <piperead+0x110>
80024db0:	e1a00000 	nop			; (mov r0, r0)
80024db4:	e51b3010 	ldr	r3, [fp, #-16]
80024db8:	e2833f8e 	add	r3, r3, #568	; 0x238
80024dbc:	e1a00003 	mov	r0, r3
80024dc0:	eb000311 	bl	80025a0c <wakeup>
80024dc4:	e51b3010 	ldr	r3, [fp, #-16]
80024dc8:	e1a00003 	mov	r0, r3
80024dcc:	eb000414 	bl	80025e24 <release>
80024dd0:	e51b3008 	ldr	r3, [fp, #-8]
80024dd4:	e1a00003 	mov	r0, r3
80024dd8:	e24bd004 	sub	sp, fp, #4
80024ddc:	e8bd8800 	pop	{fp, pc}
80024de0:	800ae61c 	.word	0x800ae61c

80024de4 <pinit>:
80024de4:	e92d4800 	push	{fp, lr}
80024de8:	e28db004 	add	fp, sp, #4
80024dec:	e59f100c 	ldr	r1, [pc, #12]	; 80024e00 <pinit+0x1c>
80024df0:	e59f000c 	ldr	r0, [pc, #12]	; 80024e04 <pinit+0x20>
80024df4:	eb0003ed 	bl	80025db0 <initlock>
80024df8:	e1a00000 	nop			; (mov r0, r0)
80024dfc:	e8bd8800 	pop	{fp, pc}
80024e00:	8002a358 	.word	0x8002a358
80024e04:	800ae620 	.word	0x800ae620

80024e08 <allocproc>:
80024e08:	e92d4800 	push	{fp, lr}
80024e0c:	e28db004 	add	fp, sp, #4
80024e10:	e24dd008 	sub	sp, sp, #8
80024e14:	e59f0170 	ldr	r0, [pc, #368]	; 80024f8c <allocproc+0x184>
80024e18:	eb0003f6 	bl	80025df8 <acquire>
80024e1c:	e59f316c 	ldr	r3, [pc, #364]	; 80024f90 <allocproc+0x188>
80024e20:	e50b3008 	str	r3, [fp, #-8]
80024e24:	ea000006 	b	80024e44 <allocproc+0x3c>
80024e28:	e51b3008 	ldr	r3, [fp, #-8]
80024e2c:	e5d3300c 	ldrb	r3, [r3, #12]
80024e30:	e3530000 	cmp	r3, #0
80024e34:	0a00000a 	beq	80024e64 <allocproc+0x5c>
80024e38:	e51b3008 	ldr	r3, [fp, #-8]
80024e3c:	e2833080 	add	r3, r3, #128	; 0x80
80024e40:	e50b3008 	str	r3, [fp, #-8]
80024e44:	e51b3008 	ldr	r3, [fp, #-8]
80024e48:	e59f2144 	ldr	r2, [pc, #324]	; 80024f94 <allocproc+0x18c>
80024e4c:	e1530002 	cmp	r3, r2
80024e50:	3afffff4 	bcc	80024e28 <allocproc+0x20>
80024e54:	e59f0130 	ldr	r0, [pc, #304]	; 80024f8c <allocproc+0x184>
80024e58:	eb0003f1 	bl	80025e24 <release>
80024e5c:	e3a03000 	mov	r3, #0
80024e60:	ea000046 	b	80024f80 <allocproc+0x178>
80024e64:	e1a00000 	nop			; (mov r0, r0)
80024e68:	e51b3008 	ldr	r3, [fp, #-8]
80024e6c:	e3a02001 	mov	r2, #1
80024e70:	e5c3200c 	strb	r2, [r3, #12]
80024e74:	e59f311c 	ldr	r3, [pc, #284]	; 80024f98 <allocproc+0x190>
80024e78:	e5933000 	ldr	r3, [r3]
80024e7c:	e2832001 	add	r2, r3, #1
80024e80:	e59f1110 	ldr	r1, [pc, #272]	; 80024f98 <allocproc+0x190>
80024e84:	e5812000 	str	r2, [r1]
80024e88:	e51b2008 	ldr	r2, [fp, #-8]
80024e8c:	e5823010 	str	r3, [r2, #16]
80024e90:	e59f00f4 	ldr	r0, [pc, #244]	; 80024f8c <allocproc+0x184>
80024e94:	eb0003e2 	bl	80025e24 <release>
80024e98:	ebfff1df 	bl	8002161c <alloc_page>
80024e9c:	e1a02000 	mov	r2, r0
80024ea0:	e51b3008 	ldr	r3, [fp, #-8]
80024ea4:	e5832008 	str	r2, [r3, #8]
80024ea8:	e51b3008 	ldr	r3, [fp, #-8]
80024eac:	e5933008 	ldr	r3, [r3, #8]
80024eb0:	e3530000 	cmp	r3, #0
80024eb4:	1a000004 	bne	80024ecc <allocproc+0xc4>
80024eb8:	e51b3008 	ldr	r3, [fp, #-8]
80024ebc:	e3a02000 	mov	r2, #0
80024ec0:	e5c3200c 	strb	r2, [r3, #12]
80024ec4:	e3a03000 	mov	r3, #0
80024ec8:	ea00002c 	b	80024f80 <allocproc+0x178>
80024ecc:	e51b3008 	ldr	r3, [fp, #-8]
80024ed0:	e5933008 	ldr	r3, [r3, #8]
80024ed4:	e2833a01 	add	r3, r3, #4096	; 0x1000
80024ed8:	e50b300c 	str	r3, [fp, #-12]
80024edc:	e51b300c 	ldr	r3, [fp, #-12]
80024ee0:	e2433048 	sub	r3, r3, #72	; 0x48
80024ee4:	e50b300c 	str	r3, [fp, #-12]
80024ee8:	e51b3008 	ldr	r3, [fp, #-8]
80024eec:	e51b200c 	ldr	r2, [fp, #-12]
80024ef0:	e5832018 	str	r2, [r3, #24]
80024ef4:	e51b300c 	ldr	r3, [fp, #-12]
80024ef8:	e2433004 	sub	r3, r3, #4
80024efc:	e50b300c 	str	r3, [fp, #-12]
80024f00:	e59f2094 	ldr	r2, [pc, #148]	; 80024f9c <allocproc+0x194>
80024f04:	e51b300c 	ldr	r3, [fp, #-12]
80024f08:	e5832000 	str	r2, [r3]
80024f0c:	e51b300c 	ldr	r3, [fp, #-12]
80024f10:	e2433004 	sub	r3, r3, #4
80024f14:	e50b300c 	str	r3, [fp, #-12]
80024f18:	e51b3008 	ldr	r3, [fp, #-8]
80024f1c:	e5933008 	ldr	r3, [r3, #8]
80024f20:	e2832a01 	add	r2, r3, #4096	; 0x1000
80024f24:	e51b300c 	ldr	r3, [fp, #-12]
80024f28:	e5832000 	str	r2, [r3]
80024f2c:	e51b300c 	ldr	r3, [fp, #-12]
80024f30:	e2433028 	sub	r3, r3, #40	; 0x28
80024f34:	e50b300c 	str	r3, [fp, #-12]
80024f38:	e51b3008 	ldr	r3, [fp, #-8]
80024f3c:	e51b200c 	ldr	r2, [fp, #-12]
80024f40:	e583201c 	str	r2, [r3, #28]
80024f44:	e51b3008 	ldr	r3, [fp, #-8]
80024f48:	e593301c 	ldr	r3, [r3, #28]
80024f4c:	e3a02028 	mov	r2, #40	; 0x28
80024f50:	e3a01000 	mov	r1, #0
80024f54:	e1a00003 	mov	r0, r3
80024f58:	ebffec28 	bl	80020000 <memset>
80024f5c:	e59f203c 	ldr	r2, [pc, #60]	; 80024fa0 <allocproc+0x198>
80024f60:	e51b3008 	ldr	r3, [fp, #-8]
80024f64:	e593301c 	ldr	r3, [r3, #28]
80024f68:	e2822004 	add	r2, r2, #4
80024f6c:	e5832024 	str	r2, [r3, #36]	; 0x24
80024f70:	e51b3008 	ldr	r3, [fp, #-8]
80024f74:	e3a02000 	mov	r2, #0
80024f78:	e583207c 	str	r2, [r3, #124]	; 0x7c
80024f7c:	e51b3008 	ldr	r3, [fp, #-8]
80024f80:	e1a00003 	mov	r0, r3
80024f84:	e24bd004 	sub	sp, fp, #4
80024f88:	e8bd8800 	pop	{fp, pc}
80024f8c:	800ae620 	.word	0x800ae620
80024f90:	800ae654 	.word	0x800ae654
80024f94:	800b0654 	.word	0x800b0654
80024f98:	8002b014 	.word	0x8002b014
80024f9c:	80027c58 	.word	0x80027c58
80024fa0:	8002587c 	.word	0x8002587c

80024fa4 <error_init>:
80024fa4:	e92d4800 	push	{fp, lr}
80024fa8:	e28db004 	add	fp, sp, #4
80024fac:	e59f0000 	ldr	r0, [pc]	; 80024fb4 <error_init+0x10>
80024fb0:	ebfff2e2 	bl	80021b40 <panic>
80024fb4:	8002a360 	.word	0x8002a360

80024fb8 <userinit>:
80024fb8:	e92d4810 	push	{r4, fp, lr}
80024fbc:	e28db008 	add	fp, sp, #8
80024fc0:	e24dd00c 	sub	sp, sp, #12
80024fc4:	ebffff8f 	bl	80024e08 <allocproc>
80024fc8:	e50b0010 	str	r0, [fp, #-16]
80024fcc:	e59f2100 	ldr	r2, [pc, #256]	; 800250d4 <userinit+0x11c>
80024fd0:	e51b3010 	ldr	r3, [fp, #-16]
80024fd4:	e5823000 	str	r3, [r2]
80024fd8:	eb000d42 	bl	800284e8 <kpt_alloc>
80024fdc:	e1a02000 	mov	r2, r0
80024fe0:	e51b3010 	ldr	r3, [fp, #-16]
80024fe4:	e5832004 	str	r2, [r3, #4]
80024fe8:	e51b3010 	ldr	r3, [fp, #-16]
80024fec:	e5933004 	ldr	r3, [r3, #4]
80024ff0:	e3530000 	cmp	r3, #0
80024ff4:	1a000001 	bne	80025000 <userinit+0x48>
80024ff8:	e59f00d8 	ldr	r0, [pc, #216]	; 800250d8 <userinit+0x120>
80024ffc:	ebfff2cf 	bl	80021b40 <panic>
80025000:	e51b3010 	ldr	r3, [fp, #-16]
80025004:	e5933004 	ldr	r3, [r3, #4]
80025008:	e59f20cc 	ldr	r2, [pc, #204]	; 800250dc <userinit+0x124>
8002500c:	e59f10cc 	ldr	r1, [pc, #204]	; 800250e0 <userinit+0x128>
80025010:	e1a00003 	mov	r0, r3
80025014:	eb000df1 	bl	800287e0 <inituvm>
80025018:	e51b3010 	ldr	r3, [fp, #-16]
8002501c:	e3a02a01 	mov	r2, #4096	; 0x1000
80025020:	e5832000 	str	r2, [r3]
80025024:	e51b3010 	ldr	r3, [fp, #-16]
80025028:	e5933018 	ldr	r3, [r3, #24]
8002502c:	e3a02048 	mov	r2, #72	; 0x48
80025030:	e3a01000 	mov	r1, #0
80025034:	e1a00003 	mov	r0, r3
80025038:	ebffebf0 	bl	80020000 <memset>
8002503c:	e51b3010 	ldr	r3, [fp, #-16]
80025040:	e5933018 	ldr	r3, [r3, #24]
80025044:	e59f2098 	ldr	r2, [pc, #152]	; 800250e4 <userinit+0x12c>
80025048:	e5832008 	str	r2, [r3, #8]
8002504c:	e51b3010 	ldr	r3, [fp, #-16]
80025050:	e5934018 	ldr	r4, [r3, #24]
80025054:	ebffed53 	bl	800205a8 <spsr_usr>
80025058:	e1a03000 	mov	r3, r0
8002505c:	e584300c 	str	r3, [r4, #12]
80025060:	e51b3010 	ldr	r3, [fp, #-16]
80025064:	e5933018 	ldr	r3, [r3, #24]
80025068:	e3a02a01 	mov	r2, #4096	; 0x1000
8002506c:	e5832000 	str	r2, [r3]
80025070:	e51b3010 	ldr	r3, [fp, #-16]
80025074:	e5933018 	ldr	r3, [r3, #24]
80025078:	e3a02000 	mov	r2, #0
8002507c:	e5832004 	str	r2, [r3, #4]
80025080:	e51b3010 	ldr	r3, [fp, #-16]
80025084:	e5933018 	ldr	r3, [r3, #24]
80025088:	e3a02000 	mov	r2, #0
8002508c:	e5832044 	str	r2, [r3, #68]	; 0x44
80025090:	e51b3010 	ldr	r3, [fp, #-16]
80025094:	e283306c 	add	r3, r3, #108	; 0x6c
80025098:	e3a02010 	mov	r2, #16
8002509c:	e59f1044 	ldr	r1, [pc, #68]	; 800250e8 <userinit+0x130>
800250a0:	e1a00003 	mov	r0, r3
800250a4:	ebffece8 	bl	8002044c <safestrcpy>
800250a8:	e59f003c 	ldr	r0, [pc, #60]	; 800250ec <userinit+0x134>
800250ac:	ebfffc04 	bl	800240c4 <namei>
800250b0:	e1a02000 	mov	r2, r0
800250b4:	e51b3010 	ldr	r3, [fp, #-16]
800250b8:	e5832068 	str	r2, [r3, #104]	; 0x68
800250bc:	e51b3010 	ldr	r3, [fp, #-16]
800250c0:	e3a02003 	mov	r2, #3
800250c4:	e5c3200c 	strb	r2, [r3, #12]
800250c8:	e1a00000 	nop			; (mov r0, r0)
800250cc:	e24bd008 	sub	sp, fp, #8
800250d0:	e8bd8810 	pop	{r4, fp, pc}
800250d4:	800ae618 	.word	0x800ae618
800250d8:	8002a380 	.word	0x8002a380
800250dc:	00000034 	.word	0x00000034
800250e0:	8002b0a0 	.word	0x8002b0a0
800250e4:	80024fa4 	.word	0x80024fa4
800250e8:	8002a39c 	.word	0x8002a39c
800250ec:	8002a3a8 	.word	0x8002a3a8

800250f0 <growproc>:
800250f0:	e92d4800 	push	{fp, lr}
800250f4:	e28db004 	add	fp, sp, #4
800250f8:	e24dd010 	sub	sp, sp, #16
800250fc:	e50b0010 	str	r0, [fp, #-16]
80025100:	e59f30d0 	ldr	r3, [pc, #208]	; 800251d8 <growproc+0xe8>
80025104:	e5933000 	ldr	r3, [r3]
80025108:	e5933000 	ldr	r3, [r3]
8002510c:	e50b3008 	str	r3, [fp, #-8]
80025110:	e51b3010 	ldr	r3, [fp, #-16]
80025114:	e3530000 	cmp	r3, #0
80025118:	da00000f 	ble	8002515c <growproc+0x6c>
8002511c:	e59f30b4 	ldr	r3, [pc, #180]	; 800251d8 <growproc+0xe8>
80025120:	e5933000 	ldr	r3, [r3]
80025124:	e5930004 	ldr	r0, [r3, #4]
80025128:	e51b2010 	ldr	r2, [fp, #-16]
8002512c:	e51b3008 	ldr	r3, [fp, #-8]
80025130:	e0823003 	add	r3, r2, r3
80025134:	e1a02003 	mov	r2, r3
80025138:	e51b1008 	ldr	r1, [fp, #-8]
8002513c:	eb000e16 	bl	8002899c <allocuvm>
80025140:	e1a03000 	mov	r3, r0
80025144:	e50b3008 	str	r3, [fp, #-8]
80025148:	e51b3008 	ldr	r3, [fp, #-8]
8002514c:	e3530000 	cmp	r3, #0
80025150:	1a000014 	bne	800251a8 <growproc+0xb8>
80025154:	e3e03000 	mvn	r3, #0
80025158:	ea00001b 	b	800251cc <growproc+0xdc>
8002515c:	e51b3010 	ldr	r3, [fp, #-16]
80025160:	e3530000 	cmp	r3, #0
80025164:	aa00000f 	bge	800251a8 <growproc+0xb8>
80025168:	e59f3068 	ldr	r3, [pc, #104]	; 800251d8 <growproc+0xe8>
8002516c:	e5933000 	ldr	r3, [r3]
80025170:	e5930004 	ldr	r0, [r3, #4]
80025174:	e51b2010 	ldr	r2, [fp, #-16]
80025178:	e51b3008 	ldr	r3, [fp, #-8]
8002517c:	e0823003 	add	r3, r2, r3
80025180:	e1a02003 	mov	r2, r3
80025184:	e51b1008 	ldr	r1, [fp, #-8]
80025188:	eb000e43 	bl	80028a9c <deallocuvm>
8002518c:	e1a03000 	mov	r3, r0
80025190:	e50b3008 	str	r3, [fp, #-8]
80025194:	e51b3008 	ldr	r3, [fp, #-8]
80025198:	e3530000 	cmp	r3, #0
8002519c:	1a000001 	bne	800251a8 <growproc+0xb8>
800251a0:	e3e03000 	mvn	r3, #0
800251a4:	ea000008 	b	800251cc <growproc+0xdc>
800251a8:	e59f3028 	ldr	r3, [pc, #40]	; 800251d8 <growproc+0xe8>
800251ac:	e5933000 	ldr	r3, [r3]
800251b0:	e51b2008 	ldr	r2, [fp, #-8]
800251b4:	e5832000 	str	r2, [r3]
800251b8:	e59f3018 	ldr	r3, [pc, #24]	; 800251d8 <growproc+0xe8>
800251bc:	e5933000 	ldr	r3, [r3]
800251c0:	e1a00003 	mov	r0, r3
800251c4:	eb000d6e 	bl	80028784 <switchuvm>
800251c8:	e3a03000 	mov	r3, #0
800251cc:	e1a00003 	mov	r0, r3
800251d0:	e24bd004 	sub	sp, fp, #4
800251d4:	e8bd8800 	pop	{fp, pc}
800251d8:	800ae61c 	.word	0x800ae61c

800251dc <fork>:
800251dc:	e92d4800 	push	{fp, lr}
800251e0:	e28db004 	add	fp, sp, #4
800251e4:	e24dd010 	sub	sp, sp, #16
800251e8:	ebffff06 	bl	80024e08 <allocproc>
800251ec:	e50b000c 	str	r0, [fp, #-12]
800251f0:	e51b300c 	ldr	r3, [fp, #-12]
800251f4:	e3530000 	cmp	r3, #0
800251f8:	1a000001 	bne	80025204 <fork+0x28>
800251fc:	e3e03000 	mvn	r3, #0
80025200:	ea000065 	b	8002539c <fork+0x1c0>
80025204:	e59f319c 	ldr	r3, [pc, #412]	; 800253a8 <fork+0x1cc>
80025208:	e5933000 	ldr	r3, [r3]
8002520c:	e5932004 	ldr	r2, [r3, #4]
80025210:	e59f3190 	ldr	r3, [pc, #400]	; 800253a8 <fork+0x1cc>
80025214:	e5933000 	ldr	r3, [r3]
80025218:	e5933000 	ldr	r3, [r3]
8002521c:	e1a01003 	mov	r1, r3
80025220:	e1a00002 	mov	r0, r2
80025224:	eb000eab 	bl	80028cd8 <copyuvm>
80025228:	e1a02000 	mov	r2, r0
8002522c:	e51b300c 	ldr	r3, [fp, #-12]
80025230:	e5832004 	str	r2, [r3, #4]
80025234:	e51b300c 	ldr	r3, [fp, #-12]
80025238:	e5933004 	ldr	r3, [r3, #4]
8002523c:	e3530000 	cmp	r3, #0
80025240:	1a00000b 	bne	80025274 <fork+0x98>
80025244:	e51b300c 	ldr	r3, [fp, #-12]
80025248:	e5933008 	ldr	r3, [r3, #8]
8002524c:	e1a00003 	mov	r0, r3
80025250:	ebfff0e7 	bl	800215f4 <free_page>
80025254:	e51b300c 	ldr	r3, [fp, #-12]
80025258:	e3a02000 	mov	r2, #0
8002525c:	e5832008 	str	r2, [r3, #8]
80025260:	e51b300c 	ldr	r3, [fp, #-12]
80025264:	e3a02000 	mov	r2, #0
80025268:	e5c3200c 	strb	r2, [r3, #12]
8002526c:	e3e03000 	mvn	r3, #0
80025270:	ea000049 	b	8002539c <fork+0x1c0>
80025274:	e59f312c 	ldr	r3, [pc, #300]	; 800253a8 <fork+0x1cc>
80025278:	e5933000 	ldr	r3, [r3]
8002527c:	e5932000 	ldr	r2, [r3]
80025280:	e51b300c 	ldr	r3, [fp, #-12]
80025284:	e5832000 	str	r2, [r3]
80025288:	e59f3118 	ldr	r3, [pc, #280]	; 800253a8 <fork+0x1cc>
8002528c:	e5932000 	ldr	r2, [r3]
80025290:	e51b300c 	ldr	r3, [fp, #-12]
80025294:	e5832014 	str	r2, [r3, #20]
80025298:	e59f3108 	ldr	r3, [pc, #264]	; 800253a8 <fork+0x1cc>
8002529c:	e5933000 	ldr	r3, [r3]
800252a0:	e5932018 	ldr	r2, [r3, #24]
800252a4:	e51b300c 	ldr	r3, [fp, #-12]
800252a8:	e5933018 	ldr	r3, [r3, #24]
800252ac:	e1a00003 	mov	r0, r3
800252b0:	e1a01002 	mov	r1, r2
800252b4:	e3a03048 	mov	r3, #72	; 0x48
800252b8:	e1a02003 	mov	r2, r3
800252bc:	ebffebff 	bl	800202c0 <memcpy>
800252c0:	e51b300c 	ldr	r3, [fp, #-12]
800252c4:	e5933018 	ldr	r3, [r3, #24]
800252c8:	e3a02000 	mov	r2, #0
800252cc:	e5832010 	str	r2, [r3, #16]
800252d0:	e3a03000 	mov	r3, #0
800252d4:	e50b3008 	str	r3, [fp, #-8]
800252d8:	ea000015 	b	80025334 <fork+0x158>
800252dc:	e59f30c4 	ldr	r3, [pc, #196]	; 800253a8 <fork+0x1cc>
800252e0:	e5933000 	ldr	r3, [r3]
800252e4:	e51b2008 	ldr	r2, [fp, #-8]
800252e8:	e282200a 	add	r2, r2, #10
800252ec:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800252f0:	e3530000 	cmp	r3, #0
800252f4:	0a00000b 	beq	80025328 <fork+0x14c>
800252f8:	e59f30a8 	ldr	r3, [pc, #168]	; 800253a8 <fork+0x1cc>
800252fc:	e5933000 	ldr	r3, [r3]
80025300:	e51b2008 	ldr	r2, [fp, #-8]
80025304:	e282200a 	add	r2, r2, #10
80025308:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002530c:	e1a00003 	mov	r0, r3
80025310:	ebfff4ae 	bl	800225d0 <filedup>
80025314:	e1a01000 	mov	r1, r0
80025318:	e51b300c 	ldr	r3, [fp, #-12]
8002531c:	e51b2008 	ldr	r2, [fp, #-8]
80025320:	e282200a 	add	r2, r2, #10
80025324:	e7831102 	str	r1, [r3, r2, lsl #2]
80025328:	e51b3008 	ldr	r3, [fp, #-8]
8002532c:	e2833001 	add	r3, r3, #1
80025330:	e50b3008 	str	r3, [fp, #-8]
80025334:	e51b3008 	ldr	r3, [fp, #-8]
80025338:	e353000f 	cmp	r3, #15
8002533c:	daffffe6 	ble	800252dc <fork+0x100>
80025340:	e59f3060 	ldr	r3, [pc, #96]	; 800253a8 <fork+0x1cc>
80025344:	e5933000 	ldr	r3, [r3]
80025348:	e5933068 	ldr	r3, [r3, #104]	; 0x68
8002534c:	e1a00003 	mov	r0, r3
80025350:	ebfff776 	bl	80023130 <idup>
80025354:	e1a02000 	mov	r2, r0
80025358:	e51b300c 	ldr	r3, [fp, #-12]
8002535c:	e5832068 	str	r2, [r3, #104]	; 0x68
80025360:	e51b300c 	ldr	r3, [fp, #-12]
80025364:	e5933010 	ldr	r3, [r3, #16]
80025368:	e50b3010 	str	r3, [fp, #-16]
8002536c:	e51b300c 	ldr	r3, [fp, #-12]
80025370:	e3a02003 	mov	r2, #3
80025374:	e5c3200c 	strb	r2, [r3, #12]
80025378:	e51b300c 	ldr	r3, [fp, #-12]
8002537c:	e283006c 	add	r0, r3, #108	; 0x6c
80025380:	e59f3020 	ldr	r3, [pc, #32]	; 800253a8 <fork+0x1cc>
80025384:	e5933000 	ldr	r3, [r3]
80025388:	e283306c 	add	r3, r3, #108	; 0x6c
8002538c:	e3a02010 	mov	r2, #16
80025390:	e1a01003 	mov	r1, r3
80025394:	ebffec2c 	bl	8002044c <safestrcpy>
80025398:	e51b3010 	ldr	r3, [fp, #-16]
8002539c:	e1a00003 	mov	r0, r3
800253a0:	e24bd004 	sub	sp, fp, #4
800253a4:	e8bd8800 	pop	{fp, pc}
800253a8:	800ae61c 	.word	0x800ae61c

800253ac <exit>:
800253ac:	e92d4800 	push	{fp, lr}
800253b0:	e28db004 	add	fp, sp, #4
800253b4:	e24dd008 	sub	sp, sp, #8
800253b8:	e59f3158 	ldr	r3, [pc, #344]	; 80025518 <exit+0x16c>
800253bc:	e5932000 	ldr	r2, [r3]
800253c0:	e59f3154 	ldr	r3, [pc, #340]	; 8002551c <exit+0x170>
800253c4:	e5933000 	ldr	r3, [r3]
800253c8:	e1520003 	cmp	r2, r3
800253cc:	1a000001 	bne	800253d8 <exit+0x2c>
800253d0:	e59f0148 	ldr	r0, [pc, #328]	; 80025520 <exit+0x174>
800253d4:	ebfff1d9 	bl	80021b40 <panic>
800253d8:	e3a03000 	mov	r3, #0
800253dc:	e50b300c 	str	r3, [fp, #-12]
800253e0:	ea000016 	b	80025440 <exit+0x94>
800253e4:	e59f312c 	ldr	r3, [pc, #300]	; 80025518 <exit+0x16c>
800253e8:	e5933000 	ldr	r3, [r3]
800253ec:	e51b200c 	ldr	r2, [fp, #-12]
800253f0:	e282200a 	add	r2, r2, #10
800253f4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800253f8:	e3530000 	cmp	r3, #0
800253fc:	0a00000c 	beq	80025434 <exit+0x88>
80025400:	e59f3110 	ldr	r3, [pc, #272]	; 80025518 <exit+0x16c>
80025404:	e5933000 	ldr	r3, [r3]
80025408:	e51b200c 	ldr	r2, [fp, #-12]
8002540c:	e282200a 	add	r2, r2, #10
80025410:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025414:	e1a00003 	mov	r0, r3
80025418:	ebfff485 	bl	80022634 <fileclose>
8002541c:	e59f30f4 	ldr	r3, [pc, #244]	; 80025518 <exit+0x16c>
80025420:	e5933000 	ldr	r3, [r3]
80025424:	e51b200c 	ldr	r2, [fp, #-12]
80025428:	e282200a 	add	r2, r2, #10
8002542c:	e3a01000 	mov	r1, #0
80025430:	e7831102 	str	r1, [r3, r2, lsl #2]
80025434:	e51b300c 	ldr	r3, [fp, #-12]
80025438:	e2833001 	add	r3, r3, #1
8002543c:	e50b300c 	str	r3, [fp, #-12]
80025440:	e51b300c 	ldr	r3, [fp, #-12]
80025444:	e353000f 	cmp	r3, #15
80025448:	daffffe5 	ble	800253e4 <exit+0x38>
8002544c:	e59f30c4 	ldr	r3, [pc, #196]	; 80025518 <exit+0x16c>
80025450:	e5933000 	ldr	r3, [r3]
80025454:	e5933068 	ldr	r3, [r3, #104]	; 0x68
80025458:	e1a00003 	mov	r0, r3
8002545c:	ebfff7cb 	bl	80023390 <iput>
80025460:	e59f30b0 	ldr	r3, [pc, #176]	; 80025518 <exit+0x16c>
80025464:	e5933000 	ldr	r3, [r3]
80025468:	e3a02000 	mov	r2, #0
8002546c:	e5832068 	str	r2, [r3, #104]	; 0x68
80025470:	e59f00ac 	ldr	r0, [pc, #172]	; 80025524 <exit+0x178>
80025474:	eb00025f 	bl	80025df8 <acquire>
80025478:	e59f3098 	ldr	r3, [pc, #152]	; 80025518 <exit+0x16c>
8002547c:	e5933000 	ldr	r3, [r3]
80025480:	e5933014 	ldr	r3, [r3, #20]
80025484:	e1a00003 	mov	r0, r3
80025488:	eb00013f 	bl	8002598c <wakeup1>
8002548c:	e59f3094 	ldr	r3, [pc, #148]	; 80025528 <exit+0x17c>
80025490:	e50b3008 	str	r3, [fp, #-8]
80025494:	ea000014 	b	800254ec <exit+0x140>
80025498:	e51b3008 	ldr	r3, [fp, #-8]
8002549c:	e5932014 	ldr	r2, [r3, #20]
800254a0:	e59f3070 	ldr	r3, [pc, #112]	; 80025518 <exit+0x16c>
800254a4:	e5933000 	ldr	r3, [r3]
800254a8:	e1520003 	cmp	r2, r3
800254ac:	1a00000b 	bne	800254e0 <exit+0x134>
800254b0:	e59f3064 	ldr	r3, [pc, #100]	; 8002551c <exit+0x170>
800254b4:	e5932000 	ldr	r2, [r3]
800254b8:	e51b3008 	ldr	r3, [fp, #-8]
800254bc:	e5832014 	str	r2, [r3, #20]
800254c0:	e51b3008 	ldr	r3, [fp, #-8]
800254c4:	e5d3300c 	ldrb	r3, [r3, #12]
800254c8:	e3530005 	cmp	r3, #5
800254cc:	1a000003 	bne	800254e0 <exit+0x134>
800254d0:	e59f3044 	ldr	r3, [pc, #68]	; 8002551c <exit+0x170>
800254d4:	e5933000 	ldr	r3, [r3]
800254d8:	e1a00003 	mov	r0, r3
800254dc:	eb00012a 	bl	8002598c <wakeup1>
800254e0:	e51b3008 	ldr	r3, [fp, #-8]
800254e4:	e2833080 	add	r3, r3, #128	; 0x80
800254e8:	e50b3008 	str	r3, [fp, #-8]
800254ec:	e51b3008 	ldr	r3, [fp, #-8]
800254f0:	e59f2034 	ldr	r2, [pc, #52]	; 8002552c <exit+0x180>
800254f4:	e1530002 	cmp	r3, r2
800254f8:	3affffe6 	bcc	80025498 <exit+0xec>
800254fc:	e59f3014 	ldr	r3, [pc, #20]	; 80025518 <exit+0x16c>
80025500:	e5933000 	ldr	r3, [r3]
80025504:	e3a02005 	mov	r2, #5
80025508:	e5c3200c 	strb	r2, [r3, #12]
8002550c:	eb000092 	bl	8002575c <sched>
80025510:	e59f0018 	ldr	r0, [pc, #24]	; 80025530 <exit+0x184>
80025514:	ebfff189 	bl	80021b40 <panic>
80025518:	800ae61c 	.word	0x800ae61c
8002551c:	800ae618 	.word	0x800ae618
80025520:	8002a3ac 	.word	0x8002a3ac
80025524:	800ae620 	.word	0x800ae620
80025528:	800ae654 	.word	0x800ae654
8002552c:	800b0654 	.word	0x800b0654
80025530:	8002a3bc 	.word	0x8002a3bc

80025534 <wait>:
80025534:	e92d4800 	push	{fp, lr}
80025538:	e28db004 	add	fp, sp, #4
8002553c:	e24dd010 	sub	sp, sp, #16
80025540:	e59f013c 	ldr	r0, [pc, #316]	; 80025684 <wait+0x150>
80025544:	eb00022b 	bl	80025df8 <acquire>
80025548:	e3a03000 	mov	r3, #0
8002554c:	e50b300c 	str	r3, [fp, #-12]
80025550:	e59f3130 	ldr	r3, [pc, #304]	; 80025688 <wait+0x154>
80025554:	e50b3008 	str	r3, [fp, #-8]
80025558:	ea000030 	b	80025620 <wait+0xec>
8002555c:	e51b3008 	ldr	r3, [fp, #-8]
80025560:	e5932014 	ldr	r2, [r3, #20]
80025564:	e59f3120 	ldr	r3, [pc, #288]	; 8002568c <wait+0x158>
80025568:	e5933000 	ldr	r3, [r3]
8002556c:	e1520003 	cmp	r2, r3
80025570:	1a000026 	bne	80025610 <wait+0xdc>
80025574:	e3a03001 	mov	r3, #1
80025578:	e50b300c 	str	r3, [fp, #-12]
8002557c:	e51b3008 	ldr	r3, [fp, #-8]
80025580:	e5d3300c 	ldrb	r3, [r3, #12]
80025584:	e3530005 	cmp	r3, #5
80025588:	1a000021 	bne	80025614 <wait+0xe0>
8002558c:	e51b3008 	ldr	r3, [fp, #-8]
80025590:	e5933010 	ldr	r3, [r3, #16]
80025594:	e50b3010 	str	r3, [fp, #-16]
80025598:	e51b3008 	ldr	r3, [fp, #-8]
8002559c:	e5933008 	ldr	r3, [r3, #8]
800255a0:	e1a00003 	mov	r0, r3
800255a4:	ebfff012 	bl	800215f4 <free_page>
800255a8:	e51b3008 	ldr	r3, [fp, #-8]
800255ac:	e3a02000 	mov	r2, #0
800255b0:	e5832008 	str	r2, [r3, #8]
800255b4:	e51b3008 	ldr	r3, [fp, #-8]
800255b8:	e5933004 	ldr	r3, [r3, #4]
800255bc:	e1a00003 	mov	r0, r3
800255c0:	eb000d7b 	bl	80028bb4 <freevm>
800255c4:	e51b3008 	ldr	r3, [fp, #-8]
800255c8:	e3a02000 	mov	r2, #0
800255cc:	e5c3200c 	strb	r2, [r3, #12]
800255d0:	e51b3008 	ldr	r3, [fp, #-8]
800255d4:	e3a02000 	mov	r2, #0
800255d8:	e5832010 	str	r2, [r3, #16]
800255dc:	e51b3008 	ldr	r3, [fp, #-8]
800255e0:	e3a02000 	mov	r2, #0
800255e4:	e5832014 	str	r2, [r3, #20]
800255e8:	e51b3008 	ldr	r3, [fp, #-8]
800255ec:	e3a02000 	mov	r2, #0
800255f0:	e5c3206c 	strb	r2, [r3, #108]	; 0x6c
800255f4:	e51b3008 	ldr	r3, [fp, #-8]
800255f8:	e3a02000 	mov	r2, #0
800255fc:	e5832024 	str	r2, [r3, #36]	; 0x24
80025600:	e59f007c 	ldr	r0, [pc, #124]	; 80025684 <wait+0x150>
80025604:	eb000206 	bl	80025e24 <release>
80025608:	e51b3010 	ldr	r3, [fp, #-16]
8002560c:	ea000019 	b	80025678 <wait+0x144>
80025610:	e1a00000 	nop			; (mov r0, r0)
80025614:	e51b3008 	ldr	r3, [fp, #-8]
80025618:	e2833080 	add	r3, r3, #128	; 0x80
8002561c:	e50b3008 	str	r3, [fp, #-8]
80025620:	e51b3008 	ldr	r3, [fp, #-8]
80025624:	e59f2064 	ldr	r2, [pc, #100]	; 80025690 <wait+0x15c>
80025628:	e1530002 	cmp	r3, r2
8002562c:	3affffca 	bcc	8002555c <wait+0x28>
80025630:	e51b300c 	ldr	r3, [fp, #-12]
80025634:	e3530000 	cmp	r3, #0
80025638:	0a000004 	beq	80025650 <wait+0x11c>
8002563c:	e59f3048 	ldr	r3, [pc, #72]	; 8002568c <wait+0x158>
80025640:	e5933000 	ldr	r3, [r3]
80025644:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80025648:	e3530000 	cmp	r3, #0
8002564c:	0a000003 	beq	80025660 <wait+0x12c>
80025650:	e59f002c 	ldr	r0, [pc, #44]	; 80025684 <wait+0x150>
80025654:	eb0001f2 	bl	80025e24 <release>
80025658:	e3e03000 	mvn	r3, #0
8002565c:	ea000005 	b	80025678 <wait+0x144>
80025660:	e59f3024 	ldr	r3, [pc, #36]	; 8002568c <wait+0x158>
80025664:	e5933000 	ldr	r3, [r3]
80025668:	e59f1014 	ldr	r1, [pc, #20]	; 80025684 <wait+0x150>
8002566c:	e1a00003 	mov	r0, r3
80025670:	eb000091 	bl	800258bc <sleep>
80025674:	eaffffb3 	b	80025548 <wait+0x14>
80025678:	e1a00003 	mov	r0, r3
8002567c:	e24bd004 	sub	sp, fp, #4
80025680:	e8bd8800 	pop	{fp, pc}
80025684:	800ae620 	.word	0x800ae620
80025688:	800ae654 	.word	0x800ae654
8002568c:	800ae61c 	.word	0x800ae61c
80025690:	800b0654 	.word	0x800b0654

80025694 <scheduler>:
80025694:	e92d4800 	push	{fp, lr}
80025698:	e28db004 	add	fp, sp, #4
8002569c:	e24dd008 	sub	sp, sp, #8
800256a0:	ebffebb2 	bl	80020570 <sti>
800256a4:	e59f009c 	ldr	r0, [pc, #156]	; 80025748 <scheduler+0xb4>
800256a8:	eb0001d2 	bl	80025df8 <acquire>
800256ac:	e59f3098 	ldr	r3, [pc, #152]	; 8002574c <scheduler+0xb8>
800256b0:	e50b3008 	str	r3, [fp, #-8]
800256b4:	ea00001c 	b	8002572c <scheduler+0x98>
800256b8:	e51b3008 	ldr	r3, [fp, #-8]
800256bc:	e5d3300c 	ldrb	r3, [r3, #12]
800256c0:	e3530003 	cmp	r3, #3
800256c4:	1a000014 	bne	8002571c <scheduler+0x88>
800256c8:	e59f2080 	ldr	r2, [pc, #128]	; 80025750 <scheduler+0xbc>
800256cc:	e51b3008 	ldr	r3, [fp, #-8]
800256d0:	e5823000 	str	r3, [r2]
800256d4:	e51b0008 	ldr	r0, [fp, #-8]
800256d8:	eb000c29 	bl	80028784 <switchuvm>
800256dc:	e51b3008 	ldr	r3, [fp, #-8]
800256e0:	e3a02004 	mov	r2, #4
800256e4:	e5c3200c 	strb	r2, [r3, #12]
800256e8:	e59f3064 	ldr	r3, [pc, #100]	; 80025754 <scheduler+0xc0>
800256ec:	e5933000 	ldr	r3, [r3]
800256f0:	e2832004 	add	r2, r3, #4
800256f4:	e59f3054 	ldr	r3, [pc, #84]	; 80025750 <scheduler+0xbc>
800256f8:	e5933000 	ldr	r3, [r3]
800256fc:	e593301c 	ldr	r3, [r3, #28]
80025700:	e1a01003 	mov	r1, r3
80025704:	e1a00002 	mov	r0, r2
80025708:	eb0001da 	bl	80025e78 <swtch>
8002570c:	e59f303c 	ldr	r3, [pc, #60]	; 80025750 <scheduler+0xbc>
80025710:	e3a02000 	mov	r2, #0
80025714:	e5832000 	str	r2, [r3]
80025718:	ea000000 	b	80025720 <scheduler+0x8c>
8002571c:	e1a00000 	nop			; (mov r0, r0)
80025720:	e51b3008 	ldr	r3, [fp, #-8]
80025724:	e2833080 	add	r3, r3, #128	; 0x80
80025728:	e50b3008 	str	r3, [fp, #-8]
8002572c:	e51b3008 	ldr	r3, [fp, #-8]
80025730:	e59f2020 	ldr	r2, [pc, #32]	; 80025758 <scheduler+0xc4>
80025734:	e1530002 	cmp	r3, r2
80025738:	3affffde 	bcc	800256b8 <scheduler+0x24>
8002573c:	e59f0004 	ldr	r0, [pc, #4]	; 80025748 <scheduler+0xb4>
80025740:	eb0001b7 	bl	80025e24 <release>
80025744:	eaffffd5 	b	800256a0 <scheduler+0xc>
80025748:	800ae620 	.word	0x800ae620
8002574c:	800ae654 	.word	0x800ae654
80025750:	800ae61c 	.word	0x800ae61c
80025754:	800ae52c 	.word	0x800ae52c
80025758:	800b0654 	.word	0x800b0654

8002575c <sched>:
8002575c:	e92d4800 	push	{fp, lr}
80025760:	e28db004 	add	fp, sp, #4
80025764:	e24dd008 	sub	sp, sp, #8
80025768:	e59f00b4 	ldr	r0, [pc, #180]	; 80025824 <sched+0xc8>
8002576c:	eb0001b7 	bl	80025e50 <holding>
80025770:	e1a03000 	mov	r3, r0
80025774:	e3530000 	cmp	r3, #0
80025778:	1a000001 	bne	80025784 <sched+0x28>
8002577c:	e59f00a4 	ldr	r0, [pc, #164]	; 80025828 <sched+0xcc>
80025780:	ebfff0ee 	bl	80021b40 <panic>
80025784:	e59f30a0 	ldr	r3, [pc, #160]	; 8002582c <sched+0xd0>
80025788:	e5933000 	ldr	r3, [r3]
8002578c:	e593300c 	ldr	r3, [r3, #12]
80025790:	e3530001 	cmp	r3, #1
80025794:	0a000001 	beq	800257a0 <sched+0x44>
80025798:	e59f0090 	ldr	r0, [pc, #144]	; 80025830 <sched+0xd4>
8002579c:	ebfff0e7 	bl	80021b40 <panic>
800257a0:	e59f308c 	ldr	r3, [pc, #140]	; 80025834 <sched+0xd8>
800257a4:	e5933000 	ldr	r3, [r3]
800257a8:	e5d3300c 	ldrb	r3, [r3, #12]
800257ac:	e3530004 	cmp	r3, #4
800257b0:	1a000001 	bne	800257bc <sched+0x60>
800257b4:	e59f007c 	ldr	r0, [pc, #124]	; 80025838 <sched+0xdc>
800257b8:	ebfff0e0 	bl	80021b40 <panic>
800257bc:	ebffeb89 	bl	800205e8 <int_enabled>
800257c0:	e1a03000 	mov	r3, r0
800257c4:	e3530000 	cmp	r3, #0
800257c8:	0a000001 	beq	800257d4 <sched+0x78>
800257cc:	e59f0068 	ldr	r0, [pc, #104]	; 8002583c <sched+0xe0>
800257d0:	ebfff0da 	bl	80021b40 <panic>
800257d4:	e59f3050 	ldr	r3, [pc, #80]	; 8002582c <sched+0xd0>
800257d8:	e5933000 	ldr	r3, [r3]
800257dc:	e5933010 	ldr	r3, [r3, #16]
800257e0:	e50b3008 	str	r3, [fp, #-8]
800257e4:	e59f3048 	ldr	r3, [pc, #72]	; 80025834 <sched+0xd8>
800257e8:	e5933000 	ldr	r3, [r3]
800257ec:	e283201c 	add	r2, r3, #28
800257f0:	e59f3034 	ldr	r3, [pc, #52]	; 8002582c <sched+0xd0>
800257f4:	e5933000 	ldr	r3, [r3]
800257f8:	e5933004 	ldr	r3, [r3, #4]
800257fc:	e1a01003 	mov	r1, r3
80025800:	e1a00002 	mov	r0, r2
80025804:	eb00019b 	bl	80025e78 <swtch>
80025808:	e59f301c 	ldr	r3, [pc, #28]	; 8002582c <sched+0xd0>
8002580c:	e5933000 	ldr	r3, [r3]
80025810:	e51b2008 	ldr	r2, [fp, #-8]
80025814:	e5832010 	str	r2, [r3, #16]
80025818:	e1a00000 	nop			; (mov r0, r0)
8002581c:	e24bd004 	sub	sp, fp, #4
80025820:	e8bd8800 	pop	{fp, pc}
80025824:	800ae620 	.word	0x800ae620
80025828:	8002a3c8 	.word	0x8002a3c8
8002582c:	800ae52c 	.word	0x800ae52c
80025830:	8002a3dc 	.word	0x8002a3dc
80025834:	800ae61c 	.word	0x800ae61c
80025838:	8002a3e8 	.word	0x8002a3e8
8002583c:	8002a3f8 	.word	0x8002a3f8

80025840 <yield>:
80025840:	e92d4800 	push	{fp, lr}
80025844:	e28db004 	add	fp, sp, #4
80025848:	e59f0024 	ldr	r0, [pc, #36]	; 80025874 <yield+0x34>
8002584c:	eb000169 	bl	80025df8 <acquire>
80025850:	e59f3020 	ldr	r3, [pc, #32]	; 80025878 <yield+0x38>
80025854:	e5933000 	ldr	r3, [r3]
80025858:	e3a02003 	mov	r2, #3
8002585c:	e5c3200c 	strb	r2, [r3, #12]
80025860:	ebffffbd 	bl	8002575c <sched>
80025864:	e59f0008 	ldr	r0, [pc, #8]	; 80025874 <yield+0x34>
80025868:	eb00016d 	bl	80025e24 <release>
8002586c:	e1a00000 	nop			; (mov r0, r0)
80025870:	e8bd8800 	pop	{fp, pc}
80025874:	800ae620 	.word	0x800ae620
80025878:	800ae61c 	.word	0x800ae61c

8002587c <forkret>:
8002587c:	e92d4800 	push	{fp, lr}
80025880:	e28db004 	add	fp, sp, #4
80025884:	e59f0028 	ldr	r0, [pc, #40]	; 800258b4 <forkret+0x38>
80025888:	eb000165 	bl	80025e24 <release>
8002588c:	e59f3024 	ldr	r3, [pc, #36]	; 800258b8 <forkret+0x3c>
80025890:	e5933000 	ldr	r3, [r3]
80025894:	e3530000 	cmp	r3, #0
80025898:	0a000003 	beq	800258ac <forkret+0x30>
8002589c:	e59f3014 	ldr	r3, [pc, #20]	; 800258b8 <forkret+0x3c>
800258a0:	e3a02000 	mov	r2, #0
800258a4:	e5832000 	str	r2, [r3]
800258a8:	ebfffa1f 	bl	8002412c <initlog>
800258ac:	e1a00000 	nop			; (mov r0, r0)
800258b0:	e8bd8800 	pop	{fp, pc}
800258b4:	800ae620 	.word	0x800ae620
800258b8:	8002b018 	.word	0x8002b018

800258bc <sleep>:
800258bc:	e92d4800 	push	{fp, lr}
800258c0:	e28db004 	add	fp, sp, #4
800258c4:	e24dd008 	sub	sp, sp, #8
800258c8:	e50b0008 	str	r0, [fp, #-8]
800258cc:	e50b100c 	str	r1, [fp, #-12]
800258d0:	e59f30a4 	ldr	r3, [pc, #164]	; 8002597c <sleep+0xc0>
800258d4:	e5933000 	ldr	r3, [r3]
800258d8:	e3530000 	cmp	r3, #0
800258dc:	1a000001 	bne	800258e8 <sleep+0x2c>
800258e0:	e59f0098 	ldr	r0, [pc, #152]	; 80025980 <sleep+0xc4>
800258e4:	ebfff095 	bl	80021b40 <panic>
800258e8:	e51b300c 	ldr	r3, [fp, #-12]
800258ec:	e3530000 	cmp	r3, #0
800258f0:	1a000001 	bne	800258fc <sleep+0x40>
800258f4:	e59f0088 	ldr	r0, [pc, #136]	; 80025984 <sleep+0xc8>
800258f8:	ebfff090 	bl	80021b40 <panic>
800258fc:	e51b300c 	ldr	r3, [fp, #-12]
80025900:	e59f2080 	ldr	r2, [pc, #128]	; 80025988 <sleep+0xcc>
80025904:	e1530002 	cmp	r3, r2
80025908:	0a000003 	beq	8002591c <sleep+0x60>
8002590c:	e59f0074 	ldr	r0, [pc, #116]	; 80025988 <sleep+0xcc>
80025910:	eb000138 	bl	80025df8 <acquire>
80025914:	e51b000c 	ldr	r0, [fp, #-12]
80025918:	eb000141 	bl	80025e24 <release>
8002591c:	e59f3058 	ldr	r3, [pc, #88]	; 8002597c <sleep+0xc0>
80025920:	e5933000 	ldr	r3, [r3]
80025924:	e51b2008 	ldr	r2, [fp, #-8]
80025928:	e5832020 	str	r2, [r3, #32]
8002592c:	e59f3048 	ldr	r3, [pc, #72]	; 8002597c <sleep+0xc0>
80025930:	e5933000 	ldr	r3, [r3]
80025934:	e3a02002 	mov	r2, #2
80025938:	e5c3200c 	strb	r2, [r3, #12]
8002593c:	ebffff86 	bl	8002575c <sched>
80025940:	e59f3034 	ldr	r3, [pc, #52]	; 8002597c <sleep+0xc0>
80025944:	e5933000 	ldr	r3, [r3]
80025948:	e3a02000 	mov	r2, #0
8002594c:	e5832020 	str	r2, [r3, #32]
80025950:	e51b300c 	ldr	r3, [fp, #-12]
80025954:	e59f202c 	ldr	r2, [pc, #44]	; 80025988 <sleep+0xcc>
80025958:	e1530002 	cmp	r3, r2
8002595c:	0a000003 	beq	80025970 <sleep+0xb4>
80025960:	e59f0020 	ldr	r0, [pc, #32]	; 80025988 <sleep+0xcc>
80025964:	eb00012e 	bl	80025e24 <release>
80025968:	e51b000c 	ldr	r0, [fp, #-12]
8002596c:	eb000121 	bl	80025df8 <acquire>
80025970:	e1a00000 	nop			; (mov r0, r0)
80025974:	e24bd004 	sub	sp, fp, #4
80025978:	e8bd8800 	pop	{fp, pc}
8002597c:	800ae61c 	.word	0x800ae61c
80025980:	8002a40c 	.word	0x8002a40c
80025984:	8002a414 	.word	0x8002a414
80025988:	800ae620 	.word	0x800ae620

8002598c <wakeup1>:
8002598c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80025990:	e28db000 	add	fp, sp, #0
80025994:	e24dd014 	sub	sp, sp, #20
80025998:	e50b0010 	str	r0, [fp, #-16]
8002599c:	e59f3060 	ldr	r3, [pc, #96]	; 80025a04 <wakeup1+0x78>
800259a0:	e50b3008 	str	r3, [fp, #-8]
800259a4:	ea00000e 	b	800259e4 <wakeup1+0x58>
800259a8:	e51b3008 	ldr	r3, [fp, #-8]
800259ac:	e5d3300c 	ldrb	r3, [r3, #12]
800259b0:	e3530002 	cmp	r3, #2
800259b4:	1a000007 	bne	800259d8 <wakeup1+0x4c>
800259b8:	e51b3008 	ldr	r3, [fp, #-8]
800259bc:	e5933020 	ldr	r3, [r3, #32]
800259c0:	e51b2010 	ldr	r2, [fp, #-16]
800259c4:	e1520003 	cmp	r2, r3
800259c8:	1a000002 	bne	800259d8 <wakeup1+0x4c>
800259cc:	e51b3008 	ldr	r3, [fp, #-8]
800259d0:	e3a02003 	mov	r2, #3
800259d4:	e5c3200c 	strb	r2, [r3, #12]
800259d8:	e51b3008 	ldr	r3, [fp, #-8]
800259dc:	e2833080 	add	r3, r3, #128	; 0x80
800259e0:	e50b3008 	str	r3, [fp, #-8]
800259e4:	e51b3008 	ldr	r3, [fp, #-8]
800259e8:	e59f2018 	ldr	r2, [pc, #24]	; 80025a08 <wakeup1+0x7c>
800259ec:	e1530002 	cmp	r3, r2
800259f0:	3affffec 	bcc	800259a8 <wakeup1+0x1c>
800259f4:	e1a00000 	nop			; (mov r0, r0)
800259f8:	e28bd000 	add	sp, fp, #0
800259fc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80025a00:	e12fff1e 	bx	lr
80025a04:	800ae654 	.word	0x800ae654
80025a08:	800b0654 	.word	0x800b0654

80025a0c <wakeup>:
80025a0c:	e92d4800 	push	{fp, lr}
80025a10:	e28db004 	add	fp, sp, #4
80025a14:	e24dd008 	sub	sp, sp, #8
80025a18:	e50b0008 	str	r0, [fp, #-8]
80025a1c:	e59f001c 	ldr	r0, [pc, #28]	; 80025a40 <wakeup+0x34>
80025a20:	eb0000f4 	bl	80025df8 <acquire>
80025a24:	e51b0008 	ldr	r0, [fp, #-8]
80025a28:	ebffffd7 	bl	8002598c <wakeup1>
80025a2c:	e59f000c 	ldr	r0, [pc, #12]	; 80025a40 <wakeup+0x34>
80025a30:	eb0000fb 	bl	80025e24 <release>
80025a34:	e1a00000 	nop			; (mov r0, r0)
80025a38:	e24bd004 	sub	sp, fp, #4
80025a3c:	e8bd8800 	pop	{fp, pc}
80025a40:	800ae620 	.word	0x800ae620

80025a44 <kill>:
80025a44:	e92d4800 	push	{fp, lr}
80025a48:	e28db004 	add	fp, sp, #4
80025a4c:	e24dd010 	sub	sp, sp, #16
80025a50:	e50b0010 	str	r0, [fp, #-16]
80025a54:	e59f009c 	ldr	r0, [pc, #156]	; 80025af8 <kill+0xb4>
80025a58:	eb0000e6 	bl	80025df8 <acquire>
80025a5c:	e59f3098 	ldr	r3, [pc, #152]	; 80025afc <kill+0xb8>
80025a60:	e50b3008 	str	r3, [fp, #-8]
80025a64:	ea000019 	b	80025ad0 <kill+0x8c>
80025a68:	e51b3008 	ldr	r3, [fp, #-8]
80025a6c:	e5933010 	ldr	r3, [r3, #16]
80025a70:	e51b2010 	ldr	r2, [fp, #-16]
80025a74:	e1520003 	cmp	r2, r3
80025a78:	1a000011 	bne	80025ac4 <kill+0x80>
80025a7c:	e51b3008 	ldr	r3, [fp, #-8]
80025a80:	e3a02001 	mov	r2, #1
80025a84:	e5832024 	str	r2, [r3, #36]	; 0x24
80025a88:	e51b3008 	ldr	r3, [fp, #-8]
80025a8c:	e5d3300c 	ldrb	r3, [r3, #12]
80025a90:	e3530002 	cmp	r3, #2
80025a94:	0a000003 	beq	80025aa8 <kill+0x64>
80025a98:	e51b3008 	ldr	r3, [fp, #-8]
80025a9c:	e5d3300c 	ldrb	r3, [r3, #12]
80025aa0:	e3530006 	cmp	r3, #6
80025aa4:	1a000002 	bne	80025ab4 <kill+0x70>
80025aa8:	e51b3008 	ldr	r3, [fp, #-8]
80025aac:	e3a02003 	mov	r2, #3
80025ab0:	e5c3200c 	strb	r2, [r3, #12]
80025ab4:	e59f003c 	ldr	r0, [pc, #60]	; 80025af8 <kill+0xb4>
80025ab8:	eb0000d9 	bl	80025e24 <release>
80025abc:	e3a03000 	mov	r3, #0
80025ac0:	ea000009 	b	80025aec <kill+0xa8>
80025ac4:	e51b3008 	ldr	r3, [fp, #-8]
80025ac8:	e2833080 	add	r3, r3, #128	; 0x80
80025acc:	e50b3008 	str	r3, [fp, #-8]
80025ad0:	e51b3008 	ldr	r3, [fp, #-8]
80025ad4:	e59f2024 	ldr	r2, [pc, #36]	; 80025b00 <kill+0xbc>
80025ad8:	e1530002 	cmp	r3, r2
80025adc:	3affffe1 	bcc	80025a68 <kill+0x24>
80025ae0:	e59f0010 	ldr	r0, [pc, #16]	; 80025af8 <kill+0xb4>
80025ae4:	eb0000ce 	bl	80025e24 <release>
80025ae8:	e3e03000 	mvn	r3, #0
80025aec:	e1a00003 	mov	r0, r3
80025af0:	e24bd004 	sub	sp, fp, #4
80025af4:	e8bd8800 	pop	{fp, pc}
80025af8:	800ae620 	.word	0x800ae620
80025afc:	800ae654 	.word	0x800ae654
80025b00:	800b0654 	.word	0x800b0654

80025b04 <procdump>:
80025b04:	e92d4800 	push	{fp, lr}
80025b08:	e28db004 	add	fp, sp, #4
80025b0c:	e24dd010 	sub	sp, sp, #16
80025b10:	e59f30d8 	ldr	r3, [pc, #216]	; 80025bf0 <procdump+0xec>
80025b14:	e50b3008 	str	r3, [fp, #-8]
80025b18:	ea00002b 	b	80025bcc <procdump+0xc8>
80025b1c:	e51b3008 	ldr	r3, [fp, #-8]
80025b20:	e5d3300c 	ldrb	r3, [r3, #12]
80025b24:	e3530000 	cmp	r3, #0
80025b28:	0a000023 	beq	80025bbc <procdump+0xb8>
80025b2c:	e51b3008 	ldr	r3, [fp, #-8]
80025b30:	e5d3300c 	ldrb	r3, [r3, #12]
80025b34:	e3530005 	cmp	r3, #5
80025b38:	8a00000d 	bhi	80025b74 <procdump+0x70>
80025b3c:	e51b3008 	ldr	r3, [fp, #-8]
80025b40:	e5d3300c 	ldrb	r3, [r3, #12]
80025b44:	e1a02003 	mov	r2, r3
80025b48:	e59f30a4 	ldr	r3, [pc, #164]	; 80025bf4 <procdump+0xf0>
80025b4c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b50:	e3530000 	cmp	r3, #0
80025b54:	0a000006 	beq	80025b74 <procdump+0x70>
80025b58:	e51b3008 	ldr	r3, [fp, #-8]
80025b5c:	e5d3300c 	ldrb	r3, [r3, #12]
80025b60:	e1a02003 	mov	r2, r3
80025b64:	e59f3088 	ldr	r3, [pc, #136]	; 80025bf4 <procdump+0xf0>
80025b68:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b6c:	e50b300c 	str	r3, [fp, #-12]
80025b70:	ea000001 	b	80025b7c <procdump+0x78>
80025b74:	e59f307c 	ldr	r3, [pc, #124]	; 80025bf8 <procdump+0xf4>
80025b78:	e50b300c 	str	r3, [fp, #-12]
80025b7c:	e51b3008 	ldr	r3, [fp, #-8]
80025b80:	e5931010 	ldr	r1, [r3, #16]
80025b84:	e51b3008 	ldr	r3, [fp, #-8]
80025b88:	e5930010 	ldr	r0, [r3, #16]
80025b8c:	e51b3008 	ldr	r3, [fp, #-8]
80025b90:	e283306c 	add	r3, r3, #108	; 0x6c
80025b94:	e51b2008 	ldr	r2, [fp, #-8]
80025b98:	e5922014 	ldr	r2, [r2, #20]
80025b9c:	e5922010 	ldr	r2, [r2, #16]
80025ba0:	e58d2004 	str	r2, [sp, #4]
80025ba4:	e58d3000 	str	r3, [sp]
80025ba8:	e1a03000 	mov	r3, r0
80025bac:	e51b200c 	ldr	r2, [fp, #-12]
80025bb0:	e59f0044 	ldr	r0, [pc, #68]	; 80025bfc <procdump+0xf8>
80025bb4:	ebffef60 	bl	8002193c <cprintf>
80025bb8:	ea000000 	b	80025bc0 <procdump+0xbc>
80025bbc:	e1a00000 	nop			; (mov r0, r0)
80025bc0:	e51b3008 	ldr	r3, [fp, #-8]
80025bc4:	e2833080 	add	r3, r3, #128	; 0x80
80025bc8:	e50b3008 	str	r3, [fp, #-8]
80025bcc:	e51b3008 	ldr	r3, [fp, #-8]
80025bd0:	e59f2028 	ldr	r2, [pc, #40]	; 80025c00 <procdump+0xfc>
80025bd4:	e1530002 	cmp	r3, r2
80025bd8:	3affffcf 	bcc	80025b1c <procdump+0x18>
80025bdc:	e59f0020 	ldr	r0, [pc, #32]	; 80025c04 <procdump+0x100>
80025be0:	ebffeb06 	bl	80020800 <show_callstk>
80025be4:	e1a00000 	nop			; (mov r0, r0)
80025be8:	e24bd004 	sub	sp, fp, #4
80025bec:	e8bd8800 	pop	{fp, pc}
80025bf0:	800ae654 	.word	0x800ae654
80025bf4:	8002b01c 	.word	0x8002b01c
80025bf8:	8002a428 	.word	0x8002a428
80025bfc:	8002a42c 	.word	0x8002a42c
80025c00:	800b0654 	.word	0x800b0654
80025c04:	8002a43c 	.word	0x8002a43c

80025c08 <generate_table>:
80025c08:	e92d4800 	push	{fp, lr}
80025c0c:	e28db004 	add	fp, sp, #4
80025c10:	e24dd010 	sub	sp, sp, #16
80025c14:	e50b0010 	str	r0, [fp, #-16]
80025c18:	e51b3010 	ldr	r3, [fp, #-16]
80025c1c:	e3a02000 	mov	r2, #0
80025c20:	e5832600 	str	r2, [r3, #1536]	; 0x600
80025c24:	e59f00fc 	ldr	r0, [pc, #252]	; 80025d28 <generate_table+0x120>
80025c28:	eb000072 	bl	80025df8 <acquire>
80025c2c:	e59f30f8 	ldr	r3, [pc, #248]	; 80025d2c <generate_table+0x124>
80025c30:	e50b3008 	str	r3, [fp, #-8]
80025c34:	ea000031 	b	80025d00 <generate_table+0xf8>
80025c38:	e51b3008 	ldr	r3, [fp, #-8]
80025c3c:	e5d3300c 	ldrb	r3, [r3, #12]
80025c40:	e3530000 	cmp	r3, #0
80025c44:	0a00002a 	beq	80025cf4 <generate_table+0xec>
80025c48:	e51b3010 	ldr	r3, [fp, #-16]
80025c4c:	e5932600 	ldr	r2, [r3, #1536]	; 0x600
80025c50:	e51b3008 	ldr	r3, [fp, #-8]
80025c54:	e5931010 	ldr	r1, [r3, #16]
80025c58:	e51b0010 	ldr	r0, [fp, #-16]
80025c5c:	e1a03002 	mov	r3, r2
80025c60:	e1a03083 	lsl	r3, r3, #1
80025c64:	e0833002 	add	r3, r3, r2
80025c68:	e1a03183 	lsl	r3, r3, #3
80025c6c:	e0803003 	add	r3, r0, r3
80025c70:	e5831000 	str	r1, [r3]
80025c74:	e51b3008 	ldr	r3, [fp, #-8]
80025c78:	e5931000 	ldr	r1, [r3]
80025c7c:	e51b3010 	ldr	r3, [fp, #-16]
80025c80:	e5932600 	ldr	r2, [r3, #1536]	; 0x600
80025c84:	e1a00001 	mov	r0, r1
80025c88:	e51b1010 	ldr	r1, [fp, #-16]
80025c8c:	e1a03002 	mov	r3, r2
80025c90:	e1a03083 	lsl	r3, r3, #1
80025c94:	e0833002 	add	r3, r3, r2
80025c98:	e1a03183 	lsl	r3, r3, #3
80025c9c:	e0813003 	add	r3, r1, r3
80025ca0:	e2833004 	add	r3, r3, #4
80025ca4:	e5830000 	str	r0, [r3]
80025ca8:	e51b3010 	ldr	r3, [fp, #-16]
80025cac:	e5932600 	ldr	r2, [r3, #1536]	; 0x600
80025cb0:	e1a03002 	mov	r3, r2
80025cb4:	e1a03083 	lsl	r3, r3, #1
80025cb8:	e0833002 	add	r3, r3, r2
80025cbc:	e1a03183 	lsl	r3, r3, #3
80025cc0:	e2833008 	add	r3, r3, #8
80025cc4:	e51b2010 	ldr	r2, [fp, #-16]
80025cc8:	e0820003 	add	r0, r2, r3
80025ccc:	e51b3008 	ldr	r3, [fp, #-8]
80025cd0:	e283306c 	add	r3, r3, #108	; 0x6c
80025cd4:	e3a02010 	mov	r2, #16
80025cd8:	e1a01003 	mov	r1, r3
80025cdc:	ebffe9b1 	bl	800203a8 <strncpy>
80025ce0:	e51b3010 	ldr	r3, [fp, #-16]
80025ce4:	e5933600 	ldr	r3, [r3, #1536]	; 0x600
80025ce8:	e2832001 	add	r2, r3, #1
80025cec:	e51b3010 	ldr	r3, [fp, #-16]
80025cf0:	e5832600 	str	r2, [r3, #1536]	; 0x600
80025cf4:	e51b3008 	ldr	r3, [fp, #-8]
80025cf8:	e2833080 	add	r3, r3, #128	; 0x80
80025cfc:	e50b3008 	str	r3, [fp, #-8]
80025d00:	e51b3008 	ldr	r3, [fp, #-8]
80025d04:	e59f2024 	ldr	r2, [pc, #36]	; 80025d30 <generate_table+0x128>
80025d08:	e1530002 	cmp	r3, r2
80025d0c:	3affffc9 	bcc	80025c38 <generate_table+0x30>
80025d10:	e59f0010 	ldr	r0, [pc, #16]	; 80025d28 <generate_table+0x120>
80025d14:	eb000042 	bl	80025e24 <release>
80025d18:	e3a03001 	mov	r3, #1
80025d1c:	e1a00003 	mov	r0, r3
80025d20:	e24bd004 	sub	sp, fp, #4
80025d24:	e8bd8800 	pop	{fp, pc}
80025d28:	800ae620 	.word	0x800ae620
80025d2c:	800ae654 	.word	0x800ae654
80025d30:	800b0654 	.word	0x800b0654

80025d34 <get_proc>:
80025d34:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80025d38:	e28db000 	add	fp, sp, #0
80025d3c:	e24dd014 	sub	sp, sp, #20
80025d40:	e50b0010 	str	r0, [fp, #-16]
80025d44:	e59f305c 	ldr	r3, [pc, #92]	; 80025da8 <get_proc+0x74>
80025d48:	e50b3008 	str	r3, [fp, #-8]
80025d4c:	ea00000c 	b	80025d84 <get_proc+0x50>
80025d50:	e51b3008 	ldr	r3, [fp, #-8]
80025d54:	e5933010 	ldr	r3, [r3, #16]
80025d58:	e51b2010 	ldr	r2, [fp, #-16]
80025d5c:	e1520003 	cmp	r2, r3
80025d60:	1a000004 	bne	80025d78 <get_proc+0x44>
80025d64:	e51b3008 	ldr	r3, [fp, #-8]
80025d68:	e3a02006 	mov	r2, #6
80025d6c:	e5c3200c 	strb	r2, [r3, #12]
80025d70:	e51b3008 	ldr	r3, [fp, #-8]
80025d74:	ea000007 	b	80025d98 <get_proc+0x64>
80025d78:	e51b3008 	ldr	r3, [fp, #-8]
80025d7c:	e2833080 	add	r3, r3, #128	; 0x80
80025d80:	e50b3008 	str	r3, [fp, #-8]
80025d84:	e51b3008 	ldr	r3, [fp, #-8]
80025d88:	e59f201c 	ldr	r2, [pc, #28]	; 80025dac <get_proc+0x78>
80025d8c:	e1530002 	cmp	r3, r2
80025d90:	3affffee 	bcc	80025d50 <get_proc+0x1c>
80025d94:	e3a03000 	mov	r3, #0
80025d98:	e1a00003 	mov	r0, r3
80025d9c:	e28bd000 	add	sp, fp, #0
80025da0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80025da4:	e12fff1e 	bx	lr
80025da8:	800ae654 	.word	0x800ae654
80025dac:	800b0654 	.word	0x800b0654

80025db0 <initlock>:
80025db0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80025db4:	e28db000 	add	fp, sp, #0
80025db8:	e24dd00c 	sub	sp, sp, #12
80025dbc:	e50b0008 	str	r0, [fp, #-8]
80025dc0:	e50b100c 	str	r1, [fp, #-12]
80025dc4:	e51b3008 	ldr	r3, [fp, #-8]
80025dc8:	e51b200c 	ldr	r2, [fp, #-12]
80025dcc:	e5832004 	str	r2, [r3, #4]
80025dd0:	e51b3008 	ldr	r3, [fp, #-8]
80025dd4:	e3a02000 	mov	r2, #0
80025dd8:	e5832000 	str	r2, [r3]
80025ddc:	e51b3008 	ldr	r3, [fp, #-8]
80025de0:	e3a02000 	mov	r2, #0
80025de4:	e5832008 	str	r2, [r3, #8]
80025de8:	e1a00000 	nop			; (mov r0, r0)
80025dec:	e28bd000 	add	sp, fp, #0
80025df0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80025df4:	e12fff1e 	bx	lr

80025df8 <acquire>:
80025df8:	e92d4800 	push	{fp, lr}
80025dfc:	e28db004 	add	fp, sp, #4
80025e00:	e24dd008 	sub	sp, sp, #8
80025e04:	e50b0008 	str	r0, [fp, #-8]
80025e08:	ebffea05 	bl	80020624 <pushcli>
80025e0c:	e51b3008 	ldr	r3, [fp, #-8]
80025e10:	e3a02001 	mov	r2, #1
80025e14:	e5832000 	str	r2, [r3]
80025e18:	e1a00000 	nop			; (mov r0, r0)
80025e1c:	e24bd004 	sub	sp, fp, #4
80025e20:	e8bd8800 	pop	{fp, pc}

80025e24 <release>:
80025e24:	e92d4800 	push	{fp, lr}
80025e28:	e28db004 	add	fp, sp, #4
80025e2c:	e24dd008 	sub	sp, sp, #8
80025e30:	e50b0008 	str	r0, [fp, #-8]
80025e34:	e51b3008 	ldr	r3, [fp, #-8]
80025e38:	e3a02000 	mov	r2, #0
80025e3c:	e5832000 	str	r2, [r3]
80025e40:	ebffea0c 	bl	80020678 <popcli>
80025e44:	e1a00000 	nop			; (mov r0, r0)
80025e48:	e24bd004 	sub	sp, fp, #4
80025e4c:	e8bd8800 	pop	{fp, pc}

80025e50 <holding>:
80025e50:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80025e54:	e28db000 	add	fp, sp, #0
80025e58:	e24dd00c 	sub	sp, sp, #12
80025e5c:	e50b0008 	str	r0, [fp, #-8]
80025e60:	e51b3008 	ldr	r3, [fp, #-8]
80025e64:	e5933000 	ldr	r3, [r3]
80025e68:	e1a00003 	mov	r0, r3
80025e6c:	e28bd000 	add	sp, fp, #0
80025e70:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80025e74:	e12fff1e 	bx	lr

80025e78 <swtch>:
80025e78:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025e7c:	e580d000 	str	sp, [r0]
80025e80:	e1a0d001 	mov	sp, r1
80025e84:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025e88:	e12fff1e 	bx	lr

80025e8c <fetchint>:
80025e8c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80025e90:	e28db000 	add	fp, sp, #0
80025e94:	e24dd00c 	sub	sp, sp, #12
80025e98:	e50b0008 	str	r0, [fp, #-8]
80025e9c:	e50b100c 	str	r1, [fp, #-12]
80025ea0:	e59f3058 	ldr	r3, [pc, #88]	; 80025f00 <fetchint+0x74>
80025ea4:	e5933000 	ldr	r3, [r3]
80025ea8:	e5933000 	ldr	r3, [r3]
80025eac:	e51b2008 	ldr	r2, [fp, #-8]
80025eb0:	e1520003 	cmp	r2, r3
80025eb4:	2a000006 	bcs	80025ed4 <fetchint+0x48>
80025eb8:	e51b3008 	ldr	r3, [fp, #-8]
80025ebc:	e2832004 	add	r2, r3, #4
80025ec0:	e59f3038 	ldr	r3, [pc, #56]	; 80025f00 <fetchint+0x74>
80025ec4:	e5933000 	ldr	r3, [r3]
80025ec8:	e5933000 	ldr	r3, [r3]
80025ecc:	e1520003 	cmp	r2, r3
80025ed0:	9a000001 	bls	80025edc <fetchint+0x50>
80025ed4:	e3e03000 	mvn	r3, #0
80025ed8:	ea000004 	b	80025ef0 <fetchint+0x64>
80025edc:	e51b3008 	ldr	r3, [fp, #-8]
80025ee0:	e5932000 	ldr	r2, [r3]
80025ee4:	e51b300c 	ldr	r3, [fp, #-12]
80025ee8:	e5832000 	str	r2, [r3]
80025eec:	e3a03000 	mov	r3, #0
80025ef0:	e1a00003 	mov	r0, r3
80025ef4:	e28bd000 	add	sp, fp, #0
80025ef8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80025efc:	e12fff1e 	bx	lr
80025f00:	800ae61c 	.word	0x800ae61c

80025f04 <fetchstr>:
80025f04:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80025f08:	e28db000 	add	fp, sp, #0
80025f0c:	e24dd014 	sub	sp, sp, #20
80025f10:	e50b0010 	str	r0, [fp, #-16]
80025f14:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80025f18:	e59f3098 	ldr	r3, [pc, #152]	; 80025fb8 <fetchstr+0xb4>
80025f1c:	e5933000 	ldr	r3, [r3]
80025f20:	e5933000 	ldr	r3, [r3]
80025f24:	e51b2010 	ldr	r2, [fp, #-16]
80025f28:	e1520003 	cmp	r2, r3
80025f2c:	3a000001 	bcc	80025f38 <fetchstr+0x34>
80025f30:	e3e03000 	mvn	r3, #0
80025f34:	ea00001b 	b	80025fa8 <fetchstr+0xa4>
80025f38:	e51b2010 	ldr	r2, [fp, #-16]
80025f3c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80025f40:	e5832000 	str	r2, [r3]
80025f44:	e59f306c 	ldr	r3, [pc, #108]	; 80025fb8 <fetchstr+0xb4>
80025f48:	e5933000 	ldr	r3, [r3]
80025f4c:	e5933000 	ldr	r3, [r3]
80025f50:	e50b300c 	str	r3, [fp, #-12]
80025f54:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80025f58:	e5933000 	ldr	r3, [r3]
80025f5c:	e50b3008 	str	r3, [fp, #-8]
80025f60:	ea00000b 	b	80025f94 <fetchstr+0x90>
80025f64:	e51b3008 	ldr	r3, [fp, #-8]
80025f68:	e5d33000 	ldrb	r3, [r3]
80025f6c:	e3530000 	cmp	r3, #0
80025f70:	1a000004 	bne	80025f88 <fetchstr+0x84>
80025f74:	e51b3008 	ldr	r3, [fp, #-8]
80025f78:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80025f7c:	e5922000 	ldr	r2, [r2]
80025f80:	e0433002 	sub	r3, r3, r2
80025f84:	ea000007 	b	80025fa8 <fetchstr+0xa4>
80025f88:	e51b3008 	ldr	r3, [fp, #-8]
80025f8c:	e2833001 	add	r3, r3, #1
80025f90:	e50b3008 	str	r3, [fp, #-8]
80025f94:	e51b2008 	ldr	r2, [fp, #-8]
80025f98:	e51b300c 	ldr	r3, [fp, #-12]
80025f9c:	e1520003 	cmp	r2, r3
80025fa0:	3affffef 	bcc	80025f64 <fetchstr+0x60>
80025fa4:	e3e03000 	mvn	r3, #0
80025fa8:	e1a00003 	mov	r0, r3
80025fac:	e28bd000 	add	sp, fp, #0
80025fb0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80025fb4:	e12fff1e 	bx	lr
80025fb8:	800ae61c 	.word	0x800ae61c

80025fbc <argint>:
80025fbc:	e92d4800 	push	{fp, lr}
80025fc0:	e28db004 	add	fp, sp, #4
80025fc4:	e24dd008 	sub	sp, sp, #8
80025fc8:	e50b0008 	str	r0, [fp, #-8]
80025fcc:	e50b100c 	str	r1, [fp, #-12]
80025fd0:	e51b3008 	ldr	r3, [fp, #-8]
80025fd4:	e3530003 	cmp	r3, #3
80025fd8:	da000001 	ble	80025fe4 <argint+0x28>
80025fdc:	e59f003c 	ldr	r0, [pc, #60]	; 80026020 <argint+0x64>
80025fe0:	ebffeed6 	bl	80021b40 <panic>
80025fe4:	e59f3038 	ldr	r3, [pc, #56]	; 80026024 <argint+0x68>
80025fe8:	e5933000 	ldr	r3, [r3]
80025fec:	e5933018 	ldr	r3, [r3, #24]
80025ff0:	e2832014 	add	r2, r3, #20
80025ff4:	e51b3008 	ldr	r3, [fp, #-8]
80025ff8:	e1a03103 	lsl	r3, r3, #2
80025ffc:	e0823003 	add	r3, r2, r3
80026000:	e5933000 	ldr	r3, [r3]
80026004:	e1a02003 	mov	r2, r3
80026008:	e51b300c 	ldr	r3, [fp, #-12]
8002600c:	e5832000 	str	r2, [r3]
80026010:	e3a03000 	mov	r3, #0
80026014:	e1a00003 	mov	r0, r3
80026018:	e24bd004 	sub	sp, fp, #4
8002601c:	e8bd8800 	pop	{fp, pc}
80026020:	8002a478 	.word	0x8002a478
80026024:	800ae61c 	.word	0x800ae61c

80026028 <argptr>:
80026028:	e92d4800 	push	{fp, lr}
8002602c:	e28db004 	add	fp, sp, #4
80026030:	e24dd018 	sub	sp, sp, #24
80026034:	e50b0010 	str	r0, [fp, #-16]
80026038:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
8002603c:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80026040:	e24b3008 	sub	r3, fp, #8
80026044:	e1a01003 	mov	r1, r3
80026048:	e51b0010 	ldr	r0, [fp, #-16]
8002604c:	ebffffda 	bl	80025fbc <argint>
80026050:	e1a03000 	mov	r3, r0
80026054:	e3530000 	cmp	r3, #0
80026058:	aa000001 	bge	80026064 <argptr+0x3c>
8002605c:	e3e03000 	mvn	r3, #0
80026060:	ea000015 	b	800260bc <argptr+0x94>
80026064:	e59f305c 	ldr	r3, [pc, #92]	; 800260c8 <argptr+0xa0>
80026068:	e5933000 	ldr	r3, [r3]
8002606c:	e5933000 	ldr	r3, [r3]
80026070:	e51b2008 	ldr	r2, [fp, #-8]
80026074:	e1530002 	cmp	r3, r2
80026078:	9a000008 	bls	800260a0 <argptr+0x78>
8002607c:	e51b3008 	ldr	r3, [fp, #-8]
80026080:	e1a02003 	mov	r2, r3
80026084:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80026088:	e0822003 	add	r2, r2, r3
8002608c:	e59f3034 	ldr	r3, [pc, #52]	; 800260c8 <argptr+0xa0>
80026090:	e5933000 	ldr	r3, [r3]
80026094:	e5933000 	ldr	r3, [r3]
80026098:	e1520003 	cmp	r2, r3
8002609c:	9a000001 	bls	800260a8 <argptr+0x80>
800260a0:	e3e03000 	mvn	r3, #0
800260a4:	ea000004 	b	800260bc <argptr+0x94>
800260a8:	e51b3008 	ldr	r3, [fp, #-8]
800260ac:	e1a02003 	mov	r2, r3
800260b0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800260b4:	e5832000 	str	r2, [r3]
800260b8:	e3a03000 	mov	r3, #0
800260bc:	e1a00003 	mov	r0, r3
800260c0:	e24bd004 	sub	sp, fp, #4
800260c4:	e8bd8800 	pop	{fp, pc}
800260c8:	800ae61c 	.word	0x800ae61c

800260cc <argstr>:
800260cc:	e92d4800 	push	{fp, lr}
800260d0:	e28db004 	add	fp, sp, #4
800260d4:	e24dd010 	sub	sp, sp, #16
800260d8:	e50b0010 	str	r0, [fp, #-16]
800260dc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800260e0:	e24b3008 	sub	r3, fp, #8
800260e4:	e1a01003 	mov	r1, r3
800260e8:	e51b0010 	ldr	r0, [fp, #-16]
800260ec:	ebffffb2 	bl	80025fbc <argint>
800260f0:	e1a03000 	mov	r3, r0
800260f4:	e3530000 	cmp	r3, #0
800260f8:	aa000001 	bge	80026104 <argstr+0x38>
800260fc:	e3e03000 	mvn	r3, #0
80026100:	ea000004 	b	80026118 <argstr+0x4c>
80026104:	e51b3008 	ldr	r3, [fp, #-8]
80026108:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
8002610c:	e1a00003 	mov	r0, r3
80026110:	ebffff7b 	bl	80025f04 <fetchstr>
80026114:	e1a03000 	mov	r3, r0
80026118:	e1a00003 	mov	r0, r3
8002611c:	e24bd004 	sub	sp, fp, #4
80026120:	e8bd8800 	pop	{fp, pc}

80026124 <syscall>:
80026124:	e92d4800 	push	{fp, lr}
80026128:	e28db004 	add	fp, sp, #4
8002612c:	e24dd008 	sub	sp, sp, #8
80026130:	e59f30b4 	ldr	r3, [pc, #180]	; 800261ec <syscall+0xc8>
80026134:	e5933000 	ldr	r3, [r3]
80026138:	e5933018 	ldr	r3, [r3, #24]
8002613c:	e5933010 	ldr	r3, [r3, #16]
80026140:	e50b3008 	str	r3, [fp, #-8]
80026144:	e51b3008 	ldr	r3, [fp, #-8]
80026148:	e3530000 	cmp	r3, #0
8002614c:	da000015 	ble	800261a8 <syscall+0x84>
80026150:	e51b3008 	ldr	r3, [fp, #-8]
80026154:	e353001b 	cmp	r3, #27
80026158:	8a000012 	bhi	800261a8 <syscall+0x84>
8002615c:	e59f208c 	ldr	r2, [pc, #140]	; 800261f0 <syscall+0xcc>
80026160:	e51b3008 	ldr	r3, [fp, #-8]
80026164:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026168:	e3530000 	cmp	r3, #0
8002616c:	0a00000d 	beq	800261a8 <syscall+0x84>
80026170:	e59f2078 	ldr	r2, [pc, #120]	; 800261f0 <syscall+0xcc>
80026174:	e51b3008 	ldr	r3, [fp, #-8]
80026178:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002617c:	e12fff33 	blx	r3
80026180:	e50b000c 	str	r0, [fp, #-12]
80026184:	e51b3008 	ldr	r3, [fp, #-8]
80026188:	e3530007 	cmp	r3, #7
8002618c:	0a000013 	beq	800261e0 <syscall+0xbc>
80026190:	e59f3054 	ldr	r3, [pc, #84]	; 800261ec <syscall+0xc8>
80026194:	e5933000 	ldr	r3, [r3]
80026198:	e5933018 	ldr	r3, [r3, #24]
8002619c:	e51b200c 	ldr	r2, [fp, #-12]
800261a0:	e5832010 	str	r2, [r3, #16]
800261a4:	ea00000d 	b	800261e0 <syscall+0xbc>
800261a8:	e59f303c 	ldr	r3, [pc, #60]	; 800261ec <syscall+0xc8>
800261ac:	e5933000 	ldr	r3, [r3]
800261b0:	e5931010 	ldr	r1, [r3, #16]
800261b4:	e59f3030 	ldr	r3, [pc, #48]	; 800261ec <syscall+0xc8>
800261b8:	e5933000 	ldr	r3, [r3]
800261bc:	e283206c 	add	r2, r3, #108	; 0x6c
800261c0:	e51b3008 	ldr	r3, [fp, #-8]
800261c4:	e59f0028 	ldr	r0, [pc, #40]	; 800261f4 <syscall+0xd0>
800261c8:	ebffeddb 	bl	8002193c <cprintf>
800261cc:	e59f3018 	ldr	r3, [pc, #24]	; 800261ec <syscall+0xc8>
800261d0:	e5933000 	ldr	r3, [r3]
800261d4:	e5933018 	ldr	r3, [r3, #24]
800261d8:	e3e02000 	mvn	r2, #0
800261dc:	e5832010 	str	r2, [r3, #16]
800261e0:	e1a00000 	nop			; (mov r0, r0)
800261e4:	e24bd004 	sub	sp, fp, #4
800261e8:	e8bd8800 	pop	{fp, pc}
800261ec:	800ae61c 	.word	0x800ae61c
800261f0:	8002b034 	.word	0x8002b034
800261f4:	8002a49c 	.word	0x8002a49c

800261f8 <argfd>:
800261f8:	e92d4800 	push	{fp, lr}
800261fc:	e28db004 	add	fp, sp, #4
80026200:	e24dd018 	sub	sp, sp, #24
80026204:	e50b0010 	str	r0, [fp, #-16]
80026208:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
8002620c:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80026210:	e24b300c 	sub	r3, fp, #12
80026214:	e1a01003 	mov	r1, r3
80026218:	e51b0010 	ldr	r0, [fp, #-16]
8002621c:	ebffff66 	bl	80025fbc <argint>
80026220:	e1a03000 	mov	r3, r0
80026224:	e3530000 	cmp	r3, #0
80026228:	aa000001 	bge	80026234 <argfd+0x3c>
8002622c:	e3e03000 	mvn	r3, #0
80026230:	ea00001d 	b	800262ac <argfd+0xb4>
80026234:	e51b300c 	ldr	r3, [fp, #-12]
80026238:	e3530000 	cmp	r3, #0
8002623c:	ba00000b 	blt	80026270 <argfd+0x78>
80026240:	e51b300c 	ldr	r3, [fp, #-12]
80026244:	e353000f 	cmp	r3, #15
80026248:	ca000008 	bgt	80026270 <argfd+0x78>
8002624c:	e59f3064 	ldr	r3, [pc, #100]	; 800262b8 <argfd+0xc0>
80026250:	e5933000 	ldr	r3, [r3]
80026254:	e51b200c 	ldr	r2, [fp, #-12]
80026258:	e282200a 	add	r2, r2, #10
8002625c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026260:	e50b3008 	str	r3, [fp, #-8]
80026264:	e51b3008 	ldr	r3, [fp, #-8]
80026268:	e3530000 	cmp	r3, #0
8002626c:	1a000001 	bne	80026278 <argfd+0x80>
80026270:	e3e03000 	mvn	r3, #0
80026274:	ea00000c 	b	800262ac <argfd+0xb4>
80026278:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002627c:	e3530000 	cmp	r3, #0
80026280:	0a000002 	beq	80026290 <argfd+0x98>
80026284:	e51b200c 	ldr	r2, [fp, #-12]
80026288:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002628c:	e5832000 	str	r2, [r3]
80026290:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80026294:	e3530000 	cmp	r3, #0
80026298:	0a000002 	beq	800262a8 <argfd+0xb0>
8002629c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800262a0:	e51b2008 	ldr	r2, [fp, #-8]
800262a4:	e5832000 	str	r2, [r3]
800262a8:	e3a03000 	mov	r3, #0
800262ac:	e1a00003 	mov	r0, r3
800262b0:	e24bd004 	sub	sp, fp, #4
800262b4:	e8bd8800 	pop	{fp, pc}
800262b8:	800ae61c 	.word	0x800ae61c

800262bc <cputc_encoded>:
800262bc:	e92d4800 	push	{fp, lr}
800262c0:	e28db004 	add	fp, sp, #4
800262c4:	e24dd010 	sub	sp, sp, #16
800262c8:	e1a03000 	mov	r3, r0
800262cc:	e54b300d 	strb	r3, [fp, #-13]
800262d0:	e55b300d 	ldrb	r3, [fp, #-13]
800262d4:	e353000a 	cmp	r3, #10
800262d8:	1a000002 	bne	800262e8 <cputc_encoded+0x2c>
800262dc:	e59f0030 	ldr	r0, [pc, #48]	; 80026314 <cputc_encoded+0x58>
800262e0:	ebffed95 	bl	8002193c <cprintf>
800262e4:	ea000007 	b	80026308 <cputc_encoded+0x4c>
800262e8:	e55b300d 	ldrb	r3, [fp, #-13]
800262ec:	e54b3008 	strb	r3, [fp, #-8]
800262f0:	e3a03000 	mov	r3, #0
800262f4:	e54b3007 	strb	r3, [fp, #-7]
800262f8:	e24b3008 	sub	r3, fp, #8
800262fc:	e1a01003 	mov	r1, r3
80026300:	e59f0010 	ldr	r0, [pc, #16]	; 80026318 <cputc_encoded+0x5c>
80026304:	ebffed8c 	bl	8002193c <cprintf>
80026308:	e1a00000 	nop			; (mov r0, r0)
8002630c:	e24bd004 	sub	sp, fp, #4
80026310:	e8bd8800 	pop	{fp, pc}
80026314:	8002a4b8 	.word	0x8002a4b8
80026318:	8002a4bc 	.word	0x8002a4bc

8002631c <cprintfn>:
8002631c:	e92d4800 	push	{fp, lr}
80026320:	e28db004 	add	fp, sp, #4
80026324:	e24dd010 	sub	sp, sp, #16
80026328:	e50b0010 	str	r0, [fp, #-16]
8002632c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80026330:	e3a03000 	mov	r3, #0
80026334:	e50b3008 	str	r3, [fp, #-8]
80026338:	ea000008 	b	80026360 <cprintfn+0x44>
8002633c:	e51b3008 	ldr	r3, [fp, #-8]
80026340:	e51b2010 	ldr	r2, [fp, #-16]
80026344:	e0823003 	add	r3, r2, r3
80026348:	e5d33000 	ldrb	r3, [r3]
8002634c:	e1a00003 	mov	r0, r3
80026350:	ebffffd9 	bl	800262bc <cputc_encoded>
80026354:	e51b3008 	ldr	r3, [fp, #-8]
80026358:	e2833001 	add	r3, r3, #1
8002635c:	e50b3008 	str	r3, [fp, #-8]
80026360:	e51b2008 	ldr	r2, [fp, #-8]
80026364:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026368:	e1520003 	cmp	r2, r3
8002636c:	bafffff2 	blt	8002633c <cprintfn+0x20>
80026370:	e1a00000 	nop			; (mov r0, r0)
80026374:	e24bd004 	sub	sp, fp, #4
80026378:	e8bd8800 	pop	{fp, pc}

8002637c <fdalloc>:
8002637c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80026380:	e28db000 	add	fp, sp, #0
80026384:	e24dd014 	sub	sp, sp, #20
80026388:	e50b0010 	str	r0, [fp, #-16]
8002638c:	e3a03000 	mov	r3, #0
80026390:	e50b3008 	str	r3, [fp, #-8]
80026394:	ea000011 	b	800263e0 <fdalloc+0x64>
80026398:	e59f3060 	ldr	r3, [pc, #96]	; 80026400 <fdalloc+0x84>
8002639c:	e5933000 	ldr	r3, [r3]
800263a0:	e51b2008 	ldr	r2, [fp, #-8]
800263a4:	e282200a 	add	r2, r2, #10
800263a8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800263ac:	e3530000 	cmp	r3, #0
800263b0:	1a000007 	bne	800263d4 <fdalloc+0x58>
800263b4:	e59f3044 	ldr	r3, [pc, #68]	; 80026400 <fdalloc+0x84>
800263b8:	e5933000 	ldr	r3, [r3]
800263bc:	e51b2008 	ldr	r2, [fp, #-8]
800263c0:	e282200a 	add	r2, r2, #10
800263c4:	e51b1010 	ldr	r1, [fp, #-16]
800263c8:	e7831102 	str	r1, [r3, r2, lsl #2]
800263cc:	e51b3008 	ldr	r3, [fp, #-8]
800263d0:	ea000006 	b	800263f0 <fdalloc+0x74>
800263d4:	e51b3008 	ldr	r3, [fp, #-8]
800263d8:	e2833001 	add	r3, r3, #1
800263dc:	e50b3008 	str	r3, [fp, #-8]
800263e0:	e51b3008 	ldr	r3, [fp, #-8]
800263e4:	e353000f 	cmp	r3, #15
800263e8:	daffffea 	ble	80026398 <fdalloc+0x1c>
800263ec:	e3e03000 	mvn	r3, #0
800263f0:	e1a00003 	mov	r0, r3
800263f4:	e28bd000 	add	sp, fp, #0
800263f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800263fc:	e12fff1e 	bx	lr
80026400:	800ae61c 	.word	0x800ae61c

80026404 <sys_dup>:
80026404:	e92d4800 	push	{fp, lr}
80026408:	e28db004 	add	fp, sp, #4
8002640c:	e24dd010 	sub	sp, sp, #16
80026410:	e24b200c 	sub	r2, fp, #12
80026414:	e24b3010 	sub	r3, fp, #16
80026418:	e1a01003 	mov	r1, r3
8002641c:	e3a00000 	mov	r0, #0
80026420:	ebffff74 	bl	800261f8 <argfd>
80026424:	e50b0008 	str	r0, [fp, #-8]
80026428:	e59f3080 	ldr	r3, [pc, #128]	; 800264b0 <sys_dup+0xac>
8002642c:	e5933000 	ldr	r3, [r3]
80026430:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80026434:	e3530001 	cmp	r3, #1
80026438:	1a000006 	bne	80026458 <sys_dup+0x54>
8002643c:	e59f306c 	ldr	r3, [pc, #108]	; 800264b0 <sys_dup+0xac>
80026440:	e5933000 	ldr	r3, [r3]
80026444:	e5933010 	ldr	r3, [r3, #16]
80026448:	e51b2010 	ldr	r2, [fp, #-16]
8002644c:	e1a01003 	mov	r1, r3
80026450:	e59f005c 	ldr	r0, [pc, #92]	; 800264b4 <sys_dup+0xb0>
80026454:	ebffed38 	bl	8002193c <cprintf>
80026458:	e51b300c 	ldr	r3, [fp, #-12]
8002645c:	e1a00003 	mov	r0, r3
80026460:	ebffffc5 	bl	8002637c <fdalloc>
80026464:	e1a03000 	mov	r3, r0
80026468:	e50b3010 	str	r3, [fp, #-16]
8002646c:	e51b3008 	ldr	r3, [fp, #-8]
80026470:	e3530000 	cmp	r3, #0
80026474:	aa000001 	bge	80026480 <sys_dup+0x7c>
80026478:	e3e03000 	mvn	r3, #0
8002647c:	ea000008 	b	800264a4 <sys_dup+0xa0>
80026480:	e51b3010 	ldr	r3, [fp, #-16]
80026484:	e3530000 	cmp	r3, #0
80026488:	aa000001 	bge	80026494 <sys_dup+0x90>
8002648c:	e3e03000 	mvn	r3, #0
80026490:	ea000003 	b	800264a4 <sys_dup+0xa0>
80026494:	e51b300c 	ldr	r3, [fp, #-12]
80026498:	e1a00003 	mov	r0, r3
8002649c:	ebfff04b 	bl	800225d0 <filedup>
800264a0:	e51b3010 	ldr	r3, [fp, #-16]
800264a4:	e1a00003 	mov	r0, r3
800264a8:	e24bd004 	sub	sp, fp, #4
800264ac:	e8bd8800 	pop	{fp, pc}
800264b0:	800ae61c 	.word	0x800ae61c
800264b4:	8002a4c0 	.word	0x8002a4c0

800264b8 <sys_read>:
800264b8:	e92d4800 	push	{fp, lr}
800264bc:	e28db004 	add	fp, sp, #4
800264c0:	e24dd028 	sub	sp, sp, #40	; 0x28
800264c4:	e24b2014 	sub	r2, fp, #20
800264c8:	e24b3020 	sub	r3, fp, #32
800264cc:	e1a01003 	mov	r1, r3
800264d0:	e3a00000 	mov	r0, #0
800264d4:	ebffff47 	bl	800261f8 <argfd>
800264d8:	e50b0008 	str	r0, [fp, #-8]
800264dc:	e24b3018 	sub	r3, fp, #24
800264e0:	e1a01003 	mov	r1, r3
800264e4:	e3a00002 	mov	r0, #2
800264e8:	ebfffeb3 	bl	80025fbc <argint>
800264ec:	e50b000c 	str	r0, [fp, #-12]
800264f0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800264f4:	e24b301c 	sub	r3, fp, #28
800264f8:	e1a01003 	mov	r1, r3
800264fc:	e3a00001 	mov	r0, #1
80026500:	ebfffec8 	bl	80026028 <argptr>
80026504:	e50b0010 	str	r0, [fp, #-16]
80026508:	e59f3084 	ldr	r3, [pc, #132]	; 80026594 <sys_read+0xdc>
8002650c:	e5933000 	ldr	r3, [r3]
80026510:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80026514:	e3530001 	cmp	r3, #1
80026518:	1a000009 	bne	80026544 <sys_read+0x8c>
8002651c:	e59f3070 	ldr	r3, [pc, #112]	; 80026594 <sys_read+0xdc>
80026520:	e5933000 	ldr	r3, [r3]
80026524:	e5931010 	ldr	r1, [r3, #16]
80026528:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
8002652c:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
80026530:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80026534:	e58d3000 	str	r3, [sp]
80026538:	e1a03000 	mov	r3, r0
8002653c:	e59f0054 	ldr	r0, [pc, #84]	; 80026598 <sys_read+0xe0>
80026540:	ebffecfd 	bl	8002193c <cprintf>
80026544:	e51b3008 	ldr	r3, [fp, #-8]
80026548:	e3530000 	cmp	r3, #0
8002654c:	ba000005 	blt	80026568 <sys_read+0xb0>
80026550:	e51b300c 	ldr	r3, [fp, #-12]
80026554:	e3530000 	cmp	r3, #0
80026558:	ba000002 	blt	80026568 <sys_read+0xb0>
8002655c:	e51b3010 	ldr	r3, [fp, #-16]
80026560:	e3530000 	cmp	r3, #0
80026564:	aa000001 	bge	80026570 <sys_read+0xb8>
80026568:	e3e03000 	mvn	r3, #0
8002656c:	ea000005 	b	80026588 <sys_read+0xd0>
80026570:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026574:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
80026578:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
8002657c:	e1a00003 	mov	r0, r3
80026580:	ebfff083 	bl	80022794 <fileread>
80026584:	e1a03000 	mov	r3, r0
80026588:	e1a00003 	mov	r0, r3
8002658c:	e24bd004 	sub	sp, fp, #4
80026590:	e8bd8800 	pop	{fp, pc}
80026594:	800ae61c 	.word	0x800ae61c
80026598:	8002a4d4 	.word	0x8002a4d4

8002659c <sys_write>:
8002659c:	e92d4800 	push	{fp, lr}
800265a0:	e28db004 	add	fp, sp, #4
800265a4:	e24dd020 	sub	sp, sp, #32
800265a8:	e24b2014 	sub	r2, fp, #20
800265ac:	e24b3020 	sub	r3, fp, #32
800265b0:	e1a01003 	mov	r1, r3
800265b4:	e3a00000 	mov	r0, #0
800265b8:	ebffff0e 	bl	800261f8 <argfd>
800265bc:	e50b0008 	str	r0, [fp, #-8]
800265c0:	e24b3018 	sub	r3, fp, #24
800265c4:	e1a01003 	mov	r1, r3
800265c8:	e3a00002 	mov	r0, #2
800265cc:	ebfffe7a 	bl	80025fbc <argint>
800265d0:	e50b000c 	str	r0, [fp, #-12]
800265d4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800265d8:	e24b301c 	sub	r3, fp, #28
800265dc:	e1a01003 	mov	r1, r3
800265e0:	e3a00001 	mov	r0, #1
800265e4:	ebfffe8f 	bl	80026028 <argptr>
800265e8:	e50b0010 	str	r0, [fp, #-16]
800265ec:	e59f309c 	ldr	r3, [pc, #156]	; 80026690 <sys_write+0xf4>
800265f0:	e5933000 	ldr	r3, [r3]
800265f4:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
800265f8:	e3530001 	cmp	r3, #1
800265fc:	1a00000f 	bne	80026640 <sys_write+0xa4>
80026600:	e59f3088 	ldr	r3, [pc, #136]	; 80026690 <sys_write+0xf4>
80026604:	e5933000 	ldr	r3, [r3]
80026608:	e5933010 	ldr	r3, [r3, #16]
8002660c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80026610:	e1a01003 	mov	r1, r3
80026614:	e59f0078 	ldr	r0, [pc, #120]	; 80026694 <sys_write+0xf8>
80026618:	ebffecc7 	bl	8002193c <cprintf>
8002661c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80026620:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80026624:	e1a01002 	mov	r1, r2
80026628:	e1a00003 	mov	r0, r3
8002662c:	ebffff3a 	bl	8002631c <cprintfn>
80026630:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80026634:	e1a01003 	mov	r1, r3
80026638:	e59f0058 	ldr	r0, [pc, #88]	; 80026698 <sys_write+0xfc>
8002663c:	ebffecbe 	bl	8002193c <cprintf>
80026640:	e51b3008 	ldr	r3, [fp, #-8]
80026644:	e3530000 	cmp	r3, #0
80026648:	ba000005 	blt	80026664 <sys_write+0xc8>
8002664c:	e51b300c 	ldr	r3, [fp, #-12]
80026650:	e3530000 	cmp	r3, #0
80026654:	ba000002 	blt	80026664 <sys_write+0xc8>
80026658:	e51b3010 	ldr	r3, [fp, #-16]
8002665c:	e3530000 	cmp	r3, #0
80026660:	aa000001 	bge	8002666c <sys_write+0xd0>
80026664:	e3e03000 	mvn	r3, #0
80026668:	ea000005 	b	80026684 <sys_write+0xe8>
8002666c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026670:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
80026674:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80026678:	e1a00003 	mov	r0, r3
8002667c:	ebfff081 	bl	80022888 <filewrite>
80026680:	e1a03000 	mov	r3, r0
80026684:	e1a00003 	mov	r0, r3
80026688:	e24bd004 	sub	sp, fp, #4
8002668c:	e8bd8800 	pop	{fp, pc}
80026690:	800ae61c 	.word	0x800ae61c
80026694:	8002a4f4 	.word	0x8002a4f4
80026698:	8002a50c 	.word	0x8002a50c

8002669c <sys_close>:
8002669c:	e92d4800 	push	{fp, lr}
800266a0:	e28db004 	add	fp, sp, #4
800266a4:	e24dd010 	sub	sp, sp, #16
800266a8:	e24b2010 	sub	r2, fp, #16
800266ac:	e24b300c 	sub	r3, fp, #12
800266b0:	e1a01003 	mov	r1, r3
800266b4:	e3a00000 	mov	r0, #0
800266b8:	ebfffece 	bl	800261f8 <argfd>
800266bc:	e1a03000 	mov	r3, r0
800266c0:	e3530000 	cmp	r3, #0
800266c4:	aa000001 	bge	800266d0 <sys_close+0x34>
800266c8:	e3e03000 	mvn	r3, #0
800266cc:	ea000020 	b	80026754 <sys_close+0xb8>
800266d0:	e24b2010 	sub	r2, fp, #16
800266d4:	e24b300c 	sub	r3, fp, #12
800266d8:	e1a01003 	mov	r1, r3
800266dc:	e3a00000 	mov	r0, #0
800266e0:	ebfffec4 	bl	800261f8 <argfd>
800266e4:	e50b0008 	str	r0, [fp, #-8]
800266e8:	e59f3070 	ldr	r3, [pc, #112]	; 80026760 <sys_close+0xc4>
800266ec:	e5933000 	ldr	r3, [r3]
800266f0:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
800266f4:	e3530001 	cmp	r3, #1
800266f8:	1a000006 	bne	80026718 <sys_close+0x7c>
800266fc:	e59f305c 	ldr	r3, [pc, #92]	; 80026760 <sys_close+0xc4>
80026700:	e5933000 	ldr	r3, [r3]
80026704:	e5933010 	ldr	r3, [r3, #16]
80026708:	e51b200c 	ldr	r2, [fp, #-12]
8002670c:	e1a01003 	mov	r1, r3
80026710:	e59f004c 	ldr	r0, [pc, #76]	; 80026764 <sys_close+0xc8>
80026714:	ebffec88 	bl	8002193c <cprintf>
80026718:	e51b3008 	ldr	r3, [fp, #-8]
8002671c:	e3530000 	cmp	r3, #0
80026720:	aa000001 	bge	8002672c <sys_close+0x90>
80026724:	e3e03000 	mvn	r3, #0
80026728:	ea000009 	b	80026754 <sys_close+0xb8>
8002672c:	e59f302c 	ldr	r3, [pc, #44]	; 80026760 <sys_close+0xc4>
80026730:	e5933000 	ldr	r3, [r3]
80026734:	e51b200c 	ldr	r2, [fp, #-12]
80026738:	e282200a 	add	r2, r2, #10
8002673c:	e3a01000 	mov	r1, #0
80026740:	e7831102 	str	r1, [r3, r2, lsl #2]
80026744:	e51b3010 	ldr	r3, [fp, #-16]
80026748:	e1a00003 	mov	r0, r3
8002674c:	ebffefb8 	bl	80022634 <fileclose>
80026750:	e3a03000 	mov	r3, #0
80026754:	e1a00003 	mov	r0, r3
80026758:	e24bd004 	sub	sp, fp, #4
8002675c:	e8bd8800 	pop	{fp, pc}
80026760:	800ae61c 	.word	0x800ae61c
80026764:	8002a514 	.word	0x8002a514

80026768 <sys_fstat>:
80026768:	e92d4800 	push	{fp, lr}
8002676c:	e28db004 	add	fp, sp, #4
80026770:	e24dd018 	sub	sp, sp, #24
80026774:	e24b2010 	sub	r2, fp, #16
80026778:	e24b3018 	sub	r3, fp, #24
8002677c:	e1a01003 	mov	r1, r3
80026780:	e3a00000 	mov	r0, #0
80026784:	ebfffe9b 	bl	800261f8 <argfd>
80026788:	e50b0008 	str	r0, [fp, #-8]
8002678c:	e24b3014 	sub	r3, fp, #20
80026790:	e3a02014 	mov	r2, #20
80026794:	e1a01003 	mov	r1, r3
80026798:	e3a00001 	mov	r0, #1
8002679c:	ebfffe21 	bl	80026028 <argptr>
800267a0:	e50b000c 	str	r0, [fp, #-12]
800267a4:	e59f306c 	ldr	r3, [pc, #108]	; 80026818 <sys_fstat+0xb0>
800267a8:	e5933000 	ldr	r3, [r3]
800267ac:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
800267b0:	e3530001 	cmp	r3, #1
800267b4:	1a000006 	bne	800267d4 <sys_fstat+0x6c>
800267b8:	e59f3058 	ldr	r3, [pc, #88]	; 80026818 <sys_fstat+0xb0>
800267bc:	e5933000 	ldr	r3, [r3]
800267c0:	e5931010 	ldr	r1, [r3, #16]
800267c4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800267c8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800267cc:	e59f0048 	ldr	r0, [pc, #72]	; 8002681c <sys_fstat+0xb4>
800267d0:	ebffec59 	bl	8002193c <cprintf>
800267d4:	e51b3008 	ldr	r3, [fp, #-8]
800267d8:	e3530000 	cmp	r3, #0
800267dc:	ba000002 	blt	800267ec <sys_fstat+0x84>
800267e0:	e51b300c 	ldr	r3, [fp, #-12]
800267e4:	e3530000 	cmp	r3, #0
800267e8:	aa000001 	bge	800267f4 <sys_fstat+0x8c>
800267ec:	e3e03000 	mvn	r3, #0
800267f0:	ea000005 	b	8002680c <sys_fstat+0xa4>
800267f4:	e51b3010 	ldr	r3, [fp, #-16]
800267f8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800267fc:	e1a01002 	mov	r1, r2
80026800:	e1a00003 	mov	r0, r3
80026804:	ebffefc6 	bl	80022724 <filestat>
80026808:	e1a03000 	mov	r3, r0
8002680c:	e1a00003 	mov	r0, r3
80026810:	e24bd004 	sub	sp, fp, #4
80026814:	e8bd8800 	pop	{fp, pc}
80026818:	800ae61c 	.word	0x800ae61c
8002681c:	8002a528 	.word	0x8002a528

80026820 <sys_link>:
80026820:	e92d4800 	push	{fp, lr}
80026824:	e28db004 	add	fp, sp, #4
80026828:	e24dd028 	sub	sp, sp, #40	; 0x28
8002682c:	e24b302c 	sub	r3, fp, #44	; 0x2c
80026830:	e1a01003 	mov	r1, r3
80026834:	e3a00000 	mov	r0, #0
80026838:	ebfffe23 	bl	800260cc <argstr>
8002683c:	e50b0008 	str	r0, [fp, #-8]
80026840:	e24b3028 	sub	r3, fp, #40	; 0x28
80026844:	e1a01003 	mov	r1, r3
80026848:	e3a00001 	mov	r0, #1
8002684c:	ebfffe1e 	bl	800260cc <argstr>
80026850:	e50b000c 	str	r0, [fp, #-12]
80026854:	e59f31ac 	ldr	r3, [pc, #428]	; 80026a08 <sys_link+0x1e8>
80026858:	e5933000 	ldr	r3, [r3]
8002685c:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80026860:	e3530001 	cmp	r3, #1
80026864:	1a000006 	bne	80026884 <sys_link+0x64>
80026868:	e59f3198 	ldr	r3, [pc, #408]	; 80026a08 <sys_link+0x1e8>
8002686c:	e5933000 	ldr	r3, [r3]
80026870:	e5931010 	ldr	r1, [r3, #16]
80026874:	e51b202c 	ldr	r2, [fp, #-44]	; 0xffffffd4
80026878:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002687c:	e59f0188 	ldr	r0, [pc, #392]	; 80026a0c <sys_link+0x1ec>
80026880:	ebffec2d 	bl	8002193c <cprintf>
80026884:	e51b3008 	ldr	r3, [fp, #-8]
80026888:	e3530000 	cmp	r3, #0
8002688c:	ba000002 	blt	8002689c <sys_link+0x7c>
80026890:	e51b300c 	ldr	r3, [fp, #-12]
80026894:	e3530000 	cmp	r3, #0
80026898:	aa000001 	bge	800268a4 <sys_link+0x84>
8002689c:	e3e03000 	mvn	r3, #0
800268a0:	ea000055 	b	800269fc <sys_link+0x1dc>
800268a4:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
800268a8:	e1a00003 	mov	r0, r3
800268ac:	ebfff604 	bl	800240c4 <namei>
800268b0:	e50b0010 	str	r0, [fp, #-16]
800268b4:	e51b3010 	ldr	r3, [fp, #-16]
800268b8:	e3530000 	cmp	r3, #0
800268bc:	1a000001 	bne	800268c8 <sys_link+0xa8>
800268c0:	e3e03000 	mvn	r3, #0
800268c4:	ea00004c 	b	800269fc <sys_link+0x1dc>
800268c8:	ebfff6d5 	bl	80024424 <begin_trans>
800268cc:	e51b0010 	ldr	r0, [fp, #-16]
800268d0:	ebfff228 	bl	80023178 <ilock>
800268d4:	e51b3010 	ldr	r3, [fp, #-16]
800268d8:	e1d331f0 	ldrsh	r3, [r3, #16]
800268dc:	e3530001 	cmp	r3, #1
800268e0:	1a000004 	bne	800268f8 <sys_link+0xd8>
800268e4:	e51b0010 	ldr	r0, [fp, #-16]
800268e8:	ebfff2e3 	bl	8002347c <iunlockput>
800268ec:	ebfff6e0 	bl	80024474 <commit_trans>
800268f0:	e3e03000 	mvn	r3, #0
800268f4:	ea000040 	b	800269fc <sys_link+0x1dc>
800268f8:	e51b3010 	ldr	r3, [fp, #-16]
800268fc:	e1d331f6 	ldrsh	r3, [r3, #22]
80026900:	e6ff3073 	uxth	r3, r3
80026904:	e2833001 	add	r3, r3, #1
80026908:	e6ff3073 	uxth	r3, r3
8002690c:	e6bf2073 	sxth	r2, r3
80026910:	e51b3010 	ldr	r3, [fp, #-16]
80026914:	e1c321b6 	strh	r2, [r3, #22]
80026918:	e51b0010 	ldr	r0, [fp, #-16]
8002691c:	ebfff17b 	bl	80022f10 <iupdate>
80026920:	e51b0010 	ldr	r0, [fp, #-16]
80026924:	ebfff277 	bl	80023308 <iunlock>
80026928:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
8002692c:	e24b2024 	sub	r2, fp, #36	; 0x24
80026930:	e1a01002 	mov	r1, r2
80026934:	e1a00003 	mov	r0, r3
80026938:	ebfff5ee 	bl	800240f8 <nameiparent>
8002693c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80026940:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026944:	e3530000 	cmp	r3, #0
80026948:	0a00001a 	beq	800269b8 <sys_link+0x198>
8002694c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80026950:	ebfff208 	bl	80023178 <ilock>
80026954:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80026958:	e5932000 	ldr	r2, [r3]
8002695c:	e51b3010 	ldr	r3, [fp, #-16]
80026960:	e5933000 	ldr	r3, [r3]
80026964:	e1520003 	cmp	r2, r3
80026968:	1a000008 	bne	80026990 <sys_link+0x170>
8002696c:	e51b3010 	ldr	r3, [fp, #-16]
80026970:	e5932004 	ldr	r2, [r3, #4]
80026974:	e24b3024 	sub	r3, fp, #36	; 0x24
80026978:	e1a01003 	mov	r1, r3
8002697c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80026980:	ebfff4f9 	bl	80023d6c <dirlink>
80026984:	e1a03000 	mov	r3, r0
80026988:	e3530000 	cmp	r3, #0
8002698c:	aa000002 	bge	8002699c <sys_link+0x17c>
80026990:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80026994:	ebfff2b8 	bl	8002347c <iunlockput>
80026998:	ea000007 	b	800269bc <sys_link+0x19c>
8002699c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
800269a0:	ebfff2b5 	bl	8002347c <iunlockput>
800269a4:	e51b0010 	ldr	r0, [fp, #-16]
800269a8:	ebfff278 	bl	80023390 <iput>
800269ac:	ebfff6b0 	bl	80024474 <commit_trans>
800269b0:	e3a03000 	mov	r3, #0
800269b4:	ea000010 	b	800269fc <sys_link+0x1dc>
800269b8:	e1a00000 	nop			; (mov r0, r0)
800269bc:	e51b0010 	ldr	r0, [fp, #-16]
800269c0:	ebfff1ec 	bl	80023178 <ilock>
800269c4:	e51b3010 	ldr	r3, [fp, #-16]
800269c8:	e1d331f6 	ldrsh	r3, [r3, #22]
800269cc:	e6ff3073 	uxth	r3, r3
800269d0:	e2433001 	sub	r3, r3, #1
800269d4:	e6ff3073 	uxth	r3, r3
800269d8:	e6bf2073 	sxth	r2, r3
800269dc:	e51b3010 	ldr	r3, [fp, #-16]
800269e0:	e1c321b6 	strh	r2, [r3, #22]
800269e4:	e51b0010 	ldr	r0, [fp, #-16]
800269e8:	ebfff148 	bl	80022f10 <iupdate>
800269ec:	e51b0010 	ldr	r0, [fp, #-16]
800269f0:	ebfff2a1 	bl	8002347c <iunlockput>
800269f4:	ebfff69e 	bl	80024474 <commit_trans>
800269f8:	e3e03000 	mvn	r3, #0
800269fc:	e1a00003 	mov	r0, r3
80026a00:	e24bd004 	sub	sp, fp, #4
80026a04:	e8bd8800 	pop	{fp, pc}
80026a08:	800ae61c 	.word	0x800ae61c
80026a0c:	8002a544 	.word	0x8002a544

80026a10 <isdirempty>:
80026a10:	e92d4800 	push	{fp, lr}
80026a14:	e28db004 	add	fp, sp, #4
80026a18:	e24dd020 	sub	sp, sp, #32
80026a1c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
80026a20:	e3a03020 	mov	r3, #32
80026a24:	e50b3008 	str	r3, [fp, #-8]
80026a28:	ea000011 	b	80026a74 <isdirempty+0x64>
80026a2c:	e51b2008 	ldr	r2, [fp, #-8]
80026a30:	e24b1018 	sub	r1, fp, #24
80026a34:	e3a03010 	mov	r3, #16
80026a38:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80026a3c:	ebfff379 	bl	80023828 <readi>
80026a40:	e1a03000 	mov	r3, r0
80026a44:	e3530010 	cmp	r3, #16
80026a48:	0a000001 	beq	80026a54 <isdirempty+0x44>
80026a4c:	e59f0044 	ldr	r0, [pc, #68]	; 80026a98 <isdirempty+0x88>
80026a50:	ebffec3a 	bl	80021b40 <panic>
80026a54:	e15b31b8 	ldrh	r3, [fp, #-24]	; 0xffffffe8
80026a58:	e3530000 	cmp	r3, #0
80026a5c:	0a000001 	beq	80026a68 <isdirempty+0x58>
80026a60:	e3a03000 	mov	r3, #0
80026a64:	ea000008 	b	80026a8c <isdirempty+0x7c>
80026a68:	e51b3008 	ldr	r3, [fp, #-8]
80026a6c:	e2833010 	add	r3, r3, #16
80026a70:	e50b3008 	str	r3, [fp, #-8]
80026a74:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80026a78:	e5932018 	ldr	r2, [r3, #24]
80026a7c:	e51b3008 	ldr	r3, [fp, #-8]
80026a80:	e1520003 	cmp	r2, r3
80026a84:	8affffe8 	bhi	80026a2c <isdirempty+0x1c>
80026a88:	e3a03001 	mov	r3, #1
80026a8c:	e1a00003 	mov	r0, r3
80026a90:	e24bd004 	sub	sp, fp, #4
80026a94:	e8bd8800 	pop	{fp, pc}
80026a98:	8002a560 	.word	0x8002a560

80026a9c <sys_unlink>:
80026a9c:	e92d4800 	push	{fp, lr}
80026aa0:	e28db004 	add	fp, sp, #4
80026aa4:	e24dd038 	sub	sp, sp, #56	; 0x38
80026aa8:	e24b3034 	sub	r3, fp, #52	; 0x34
80026aac:	e1a01003 	mov	r1, r3
80026ab0:	e3a00000 	mov	r0, #0
80026ab4:	ebfffd84 	bl	800260cc <argstr>
80026ab8:	e50b0008 	str	r0, [fp, #-8]
80026abc:	e59f3200 	ldr	r3, [pc, #512]	; 80026cc4 <sys_unlink+0x228>
80026ac0:	e5933000 	ldr	r3, [r3]
80026ac4:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80026ac8:	e3530001 	cmp	r3, #1
80026acc:	1a000006 	bne	80026aec <sys_unlink+0x50>
80026ad0:	e59f31ec 	ldr	r3, [pc, #492]	; 80026cc4 <sys_unlink+0x228>
80026ad4:	e5933000 	ldr	r3, [r3]
80026ad8:	e5933010 	ldr	r3, [r3, #16]
80026adc:	e51b2034 	ldr	r2, [fp, #-52]	; 0xffffffcc
80026ae0:	e1a01003 	mov	r1, r3
80026ae4:	e59f01dc 	ldr	r0, [pc, #476]	; 80026cc8 <sys_unlink+0x22c>
80026ae8:	ebffeb93 	bl	8002193c <cprintf>
80026aec:	e51b3008 	ldr	r3, [fp, #-8]
80026af0:	e3530000 	cmp	r3, #0
80026af4:	aa000001 	bge	80026b00 <sys_unlink+0x64>
80026af8:	e3e03000 	mvn	r3, #0
80026afc:	ea00006d 	b	80026cb8 <sys_unlink+0x21c>
80026b00:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
80026b04:	e24b2030 	sub	r2, fp, #48	; 0x30
80026b08:	e1a01002 	mov	r1, r2
80026b0c:	e1a00003 	mov	r0, r3
80026b10:	ebfff578 	bl	800240f8 <nameiparent>
80026b14:	e50b000c 	str	r0, [fp, #-12]
80026b18:	e51b300c 	ldr	r3, [fp, #-12]
80026b1c:	e3530000 	cmp	r3, #0
80026b20:	1a000001 	bne	80026b2c <sys_unlink+0x90>
80026b24:	e3e03000 	mvn	r3, #0
80026b28:	ea000062 	b	80026cb8 <sys_unlink+0x21c>
80026b2c:	ebfff63c 	bl	80024424 <begin_trans>
80026b30:	e51b000c 	ldr	r0, [fp, #-12]
80026b34:	ebfff18f 	bl	80023178 <ilock>
80026b38:	e24b3030 	sub	r3, fp, #48	; 0x30
80026b3c:	e59f1188 	ldr	r1, [pc, #392]	; 80026ccc <sys_unlink+0x230>
80026b40:	e1a00003 	mov	r0, r3
80026b44:	ebfff439 	bl	80023c30 <namecmp>
80026b48:	e1a03000 	mov	r3, r0
80026b4c:	e3530000 	cmp	r3, #0
80026b50:	0a000051 	beq	80026c9c <sys_unlink+0x200>
80026b54:	e24b3030 	sub	r3, fp, #48	; 0x30
80026b58:	e59f1170 	ldr	r1, [pc, #368]	; 80026cd0 <sys_unlink+0x234>
80026b5c:	e1a00003 	mov	r0, r3
80026b60:	ebfff432 	bl	80023c30 <namecmp>
80026b64:	e1a03000 	mov	r3, r0
80026b68:	e3530000 	cmp	r3, #0
80026b6c:	0a00004a 	beq	80026c9c <sys_unlink+0x200>
80026b70:	e24b2038 	sub	r2, fp, #56	; 0x38
80026b74:	e24b3030 	sub	r3, fp, #48	; 0x30
80026b78:	e1a01003 	mov	r1, r3
80026b7c:	e51b000c 	ldr	r0, [fp, #-12]
80026b80:	ebfff437 	bl	80023c64 <dirlookup>
80026b84:	e50b0010 	str	r0, [fp, #-16]
80026b88:	e51b3010 	ldr	r3, [fp, #-16]
80026b8c:	e3530000 	cmp	r3, #0
80026b90:	0a000043 	beq	80026ca4 <sys_unlink+0x208>
80026b94:	e51b0010 	ldr	r0, [fp, #-16]
80026b98:	ebfff176 	bl	80023178 <ilock>
80026b9c:	e51b3010 	ldr	r3, [fp, #-16]
80026ba0:	e1d331f6 	ldrsh	r3, [r3, #22]
80026ba4:	e3530000 	cmp	r3, #0
80026ba8:	ca000001 	bgt	80026bb4 <sys_unlink+0x118>
80026bac:	e59f0120 	ldr	r0, [pc, #288]	; 80026cd4 <sys_unlink+0x238>
80026bb0:	ebffebe2 	bl	80021b40 <panic>
80026bb4:	e51b3010 	ldr	r3, [fp, #-16]
80026bb8:	e1d331f0 	ldrsh	r3, [r3, #16]
80026bbc:	e3530001 	cmp	r3, #1
80026bc0:	1a000007 	bne	80026be4 <sys_unlink+0x148>
80026bc4:	e51b0010 	ldr	r0, [fp, #-16]
80026bc8:	ebffff90 	bl	80026a10 <isdirempty>
80026bcc:	e1a03000 	mov	r3, r0
80026bd0:	e3530000 	cmp	r3, #0
80026bd4:	1a000002 	bne	80026be4 <sys_unlink+0x148>
80026bd8:	e51b0010 	ldr	r0, [fp, #-16]
80026bdc:	ebfff226 	bl	8002347c <iunlockput>
80026be0:	ea000030 	b	80026ca8 <sys_unlink+0x20c>
80026be4:	e24b3020 	sub	r3, fp, #32
80026be8:	e3a02010 	mov	r2, #16
80026bec:	e3a01000 	mov	r1, #0
80026bf0:	e1a00003 	mov	r0, r3
80026bf4:	ebffe501 	bl	80020000 <memset>
80026bf8:	e51b2038 	ldr	r2, [fp, #-56]	; 0xffffffc8
80026bfc:	e24b1020 	sub	r1, fp, #32
80026c00:	e3a03010 	mov	r3, #16
80026c04:	e51b000c 	ldr	r0, [fp, #-12]
80026c08:	ebfff381 	bl	80023a14 <writei>
80026c0c:	e1a03000 	mov	r3, r0
80026c10:	e3530010 	cmp	r3, #16
80026c14:	0a000001 	beq	80026c20 <sys_unlink+0x184>
80026c18:	e59f00b8 	ldr	r0, [pc, #184]	; 80026cd8 <sys_unlink+0x23c>
80026c1c:	ebffebc7 	bl	80021b40 <panic>
80026c20:	e51b3010 	ldr	r3, [fp, #-16]
80026c24:	e1d331f0 	ldrsh	r3, [r3, #16]
80026c28:	e3530001 	cmp	r3, #1
80026c2c:	1a000009 	bne	80026c58 <sys_unlink+0x1bc>
80026c30:	e51b300c 	ldr	r3, [fp, #-12]
80026c34:	e1d331f6 	ldrsh	r3, [r3, #22]
80026c38:	e6ff3073 	uxth	r3, r3
80026c3c:	e2433001 	sub	r3, r3, #1
80026c40:	e6ff3073 	uxth	r3, r3
80026c44:	e6bf2073 	sxth	r2, r3
80026c48:	e51b300c 	ldr	r3, [fp, #-12]
80026c4c:	e1c321b6 	strh	r2, [r3, #22]
80026c50:	e51b000c 	ldr	r0, [fp, #-12]
80026c54:	ebfff0ad 	bl	80022f10 <iupdate>
80026c58:	e51b000c 	ldr	r0, [fp, #-12]
80026c5c:	ebfff206 	bl	8002347c <iunlockput>
80026c60:	e51b3010 	ldr	r3, [fp, #-16]
80026c64:	e1d331f6 	ldrsh	r3, [r3, #22]
80026c68:	e6ff3073 	uxth	r3, r3
80026c6c:	e2433001 	sub	r3, r3, #1
80026c70:	e6ff3073 	uxth	r3, r3
80026c74:	e6bf2073 	sxth	r2, r3
80026c78:	e51b3010 	ldr	r3, [fp, #-16]
80026c7c:	e1c321b6 	strh	r2, [r3, #22]
80026c80:	e51b0010 	ldr	r0, [fp, #-16]
80026c84:	ebfff0a1 	bl	80022f10 <iupdate>
80026c88:	e51b0010 	ldr	r0, [fp, #-16]
80026c8c:	ebfff1fa 	bl	8002347c <iunlockput>
80026c90:	ebfff5f7 	bl	80024474 <commit_trans>
80026c94:	e3a03000 	mov	r3, #0
80026c98:	ea000006 	b	80026cb8 <sys_unlink+0x21c>
80026c9c:	e1a00000 	nop			; (mov r0, r0)
80026ca0:	ea000000 	b	80026ca8 <sys_unlink+0x20c>
80026ca4:	e1a00000 	nop			; (mov r0, r0)
80026ca8:	e51b000c 	ldr	r0, [fp, #-12]
80026cac:	ebfff1f2 	bl	8002347c <iunlockput>
80026cb0:	ebfff5ef 	bl	80024474 <commit_trans>
80026cb4:	e3e03000 	mvn	r3, #0
80026cb8:	e1a00003 	mov	r0, r3
80026cbc:	e24bd004 	sub	sp, fp, #4
80026cc0:	e8bd8800 	pop	{fp, pc}
80026cc4:	800ae61c 	.word	0x800ae61c
80026cc8:	8002a574 	.word	0x8002a574
80026ccc:	8002a58c 	.word	0x8002a58c
80026cd0:	8002a590 	.word	0x8002a590
80026cd4:	8002a594 	.word	0x8002a594
80026cd8:	8002a5a8 	.word	0x8002a5a8

80026cdc <create>:
80026cdc:	e92d4800 	push	{fp, lr}
80026ce0:	e28db004 	add	fp, sp, #4
80026ce4:	e24dd030 	sub	sp, sp, #48	; 0x30
80026ce8:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80026cec:	e1a00001 	mov	r0, r1
80026cf0:	e1a01002 	mov	r1, r2
80026cf4:	e1a02003 	mov	r2, r3
80026cf8:	e1a03000 	mov	r3, r0
80026cfc:	e14b32ba 	strh	r3, [fp, #-42]	; 0xffffffd6
80026d00:	e1a03001 	mov	r3, r1
80026d04:	e14b32bc 	strh	r3, [fp, #-44]	; 0xffffffd4
80026d08:	e1a03002 	mov	r3, r2
80026d0c:	e14b32be 	strh	r3, [fp, #-46]	; 0xffffffd2
80026d10:	e24b3020 	sub	r3, fp, #32
80026d14:	e1a01003 	mov	r1, r3
80026d18:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80026d1c:	ebfff4f5 	bl	800240f8 <nameiparent>
80026d20:	e50b0008 	str	r0, [fp, #-8]
80026d24:	e51b3008 	ldr	r3, [fp, #-8]
80026d28:	e3530000 	cmp	r3, #0
80026d2c:	1a000001 	bne	80026d38 <create+0x5c>
80026d30:	e3a03000 	mov	r3, #0
80026d34:	ea000063 	b	80026ec8 <create+0x1ec>
80026d38:	e51b0008 	ldr	r0, [fp, #-8]
80026d3c:	ebfff10d 	bl	80023178 <ilock>
80026d40:	e24b2010 	sub	r2, fp, #16
80026d44:	e24b3020 	sub	r3, fp, #32
80026d48:	e1a01003 	mov	r1, r3
80026d4c:	e51b0008 	ldr	r0, [fp, #-8]
80026d50:	ebfff3c3 	bl	80023c64 <dirlookup>
80026d54:	e50b000c 	str	r0, [fp, #-12]
80026d58:	e51b300c 	ldr	r3, [fp, #-12]
80026d5c:	e3530000 	cmp	r3, #0
80026d60:	0a000010 	beq	80026da8 <create+0xcc>
80026d64:	e51b0008 	ldr	r0, [fp, #-8]
80026d68:	ebfff1c3 	bl	8002347c <iunlockput>
80026d6c:	e51b000c 	ldr	r0, [fp, #-12]
80026d70:	ebfff100 	bl	80023178 <ilock>
80026d74:	e15b32fa 	ldrsh	r3, [fp, #-42]	; 0xffffffd6
80026d78:	e3530002 	cmp	r3, #2
80026d7c:	1a000005 	bne	80026d98 <create+0xbc>
80026d80:	e51b300c 	ldr	r3, [fp, #-12]
80026d84:	e1d331f0 	ldrsh	r3, [r3, #16]
80026d88:	e3530002 	cmp	r3, #2
80026d8c:	1a000001 	bne	80026d98 <create+0xbc>
80026d90:	e51b300c 	ldr	r3, [fp, #-12]
80026d94:	ea00004b 	b	80026ec8 <create+0x1ec>
80026d98:	e51b000c 	ldr	r0, [fp, #-12]
80026d9c:	ebfff1b6 	bl	8002347c <iunlockput>
80026da0:	e3a03000 	mov	r3, #0
80026da4:	ea000047 	b	80026ec8 <create+0x1ec>
80026da8:	e51b3008 	ldr	r3, [fp, #-8]
80026dac:	e5933000 	ldr	r3, [r3]
80026db0:	e15b22fa 	ldrsh	r2, [fp, #-42]	; 0xffffffd6
80026db4:	e1a01002 	mov	r1, r2
80026db8:	e1a00003 	mov	r0, r3
80026dbc:	ebfff013 	bl	80022e10 <ialloc>
80026dc0:	e50b000c 	str	r0, [fp, #-12]
80026dc4:	e51b300c 	ldr	r3, [fp, #-12]
80026dc8:	e3530000 	cmp	r3, #0
80026dcc:	1a000001 	bne	80026dd8 <create+0xfc>
80026dd0:	e59f00fc 	ldr	r0, [pc, #252]	; 80026ed4 <create+0x1f8>
80026dd4:	ebffeb59 	bl	80021b40 <panic>
80026dd8:	e51b000c 	ldr	r0, [fp, #-12]
80026ddc:	ebfff0e5 	bl	80023178 <ilock>
80026de0:	e51b300c 	ldr	r3, [fp, #-12]
80026de4:	e15b22bc 	ldrh	r2, [fp, #-44]	; 0xffffffd4
80026de8:	e1c321b2 	strh	r2, [r3, #18]
80026dec:	e51b300c 	ldr	r3, [fp, #-12]
80026df0:	e15b22be 	ldrh	r2, [fp, #-46]	; 0xffffffd2
80026df4:	e1c321b4 	strh	r2, [r3, #20]
80026df8:	e51b300c 	ldr	r3, [fp, #-12]
80026dfc:	e3a02001 	mov	r2, #1
80026e00:	e1c321b6 	strh	r2, [r3, #22]
80026e04:	e51b000c 	ldr	r0, [fp, #-12]
80026e08:	ebfff040 	bl	80022f10 <iupdate>
80026e0c:	e15b32fa 	ldrsh	r3, [fp, #-42]	; 0xffffffd6
80026e10:	e3530001 	cmp	r3, #1
80026e14:	1a00001d 	bne	80026e90 <create+0x1b4>
80026e18:	e51b3008 	ldr	r3, [fp, #-8]
80026e1c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026e20:	e6ff3073 	uxth	r3, r3
80026e24:	e2833001 	add	r3, r3, #1
80026e28:	e6ff3073 	uxth	r3, r3
80026e2c:	e6bf2073 	sxth	r2, r3
80026e30:	e51b3008 	ldr	r3, [fp, #-8]
80026e34:	e1c321b6 	strh	r2, [r3, #22]
80026e38:	e51b0008 	ldr	r0, [fp, #-8]
80026e3c:	ebfff033 	bl	80022f10 <iupdate>
80026e40:	e51b300c 	ldr	r3, [fp, #-12]
80026e44:	e5933004 	ldr	r3, [r3, #4]
80026e48:	e1a02003 	mov	r2, r3
80026e4c:	e59f1084 	ldr	r1, [pc, #132]	; 80026ed8 <create+0x1fc>
80026e50:	e51b000c 	ldr	r0, [fp, #-12]
80026e54:	ebfff3c4 	bl	80023d6c <dirlink>
80026e58:	e1a03000 	mov	r3, r0
80026e5c:	e3530000 	cmp	r3, #0
80026e60:	ba000008 	blt	80026e88 <create+0x1ac>
80026e64:	e51b3008 	ldr	r3, [fp, #-8]
80026e68:	e5933004 	ldr	r3, [r3, #4]
80026e6c:	e1a02003 	mov	r2, r3
80026e70:	e59f1064 	ldr	r1, [pc, #100]	; 80026edc <create+0x200>
80026e74:	e51b000c 	ldr	r0, [fp, #-12]
80026e78:	ebfff3bb 	bl	80023d6c <dirlink>
80026e7c:	e1a03000 	mov	r3, r0
80026e80:	e3530000 	cmp	r3, #0
80026e84:	aa000001 	bge	80026e90 <create+0x1b4>
80026e88:	e59f0050 	ldr	r0, [pc, #80]	; 80026ee0 <create+0x204>
80026e8c:	ebffeb2b 	bl	80021b40 <panic>
80026e90:	e51b300c 	ldr	r3, [fp, #-12]
80026e94:	e5932004 	ldr	r2, [r3, #4]
80026e98:	e24b3020 	sub	r3, fp, #32
80026e9c:	e1a01003 	mov	r1, r3
80026ea0:	e51b0008 	ldr	r0, [fp, #-8]
80026ea4:	ebfff3b0 	bl	80023d6c <dirlink>
80026ea8:	e1a03000 	mov	r3, r0
80026eac:	e3530000 	cmp	r3, #0
80026eb0:	aa000001 	bge	80026ebc <create+0x1e0>
80026eb4:	e59f0028 	ldr	r0, [pc, #40]	; 80026ee4 <create+0x208>
80026eb8:	ebffeb20 	bl	80021b40 <panic>
80026ebc:	e51b0008 	ldr	r0, [fp, #-8]
80026ec0:	ebfff16d 	bl	8002347c <iunlockput>
80026ec4:	e51b300c 	ldr	r3, [fp, #-12]
80026ec8:	e1a00003 	mov	r0, r3
80026ecc:	e24bd004 	sub	sp, fp, #4
80026ed0:	e8bd8800 	pop	{fp, pc}
80026ed4:	8002a5b8 	.word	0x8002a5b8
80026ed8:	8002a58c 	.word	0x8002a58c
80026edc:	8002a590 	.word	0x8002a590
80026ee0:	8002a5c8 	.word	0x8002a5c8
80026ee4:	8002a5d4 	.word	0x8002a5d4

80026ee8 <sys_open>:
80026ee8:	e92d4800 	push	{fp, lr}
80026eec:	e28db004 	add	fp, sp, #4
80026ef0:	e24dd020 	sub	sp, sp, #32
80026ef4:	e24b301c 	sub	r3, fp, #28
80026ef8:	e1a01003 	mov	r1, r3
80026efc:	e3a00000 	mov	r0, #0
80026f00:	ebfffc71 	bl	800260cc <argstr>
80026f04:	e50b000c 	str	r0, [fp, #-12]
80026f08:	e24b3020 	sub	r3, fp, #32
80026f0c:	e1a01003 	mov	r1, r3
80026f10:	e3a00001 	mov	r0, #1
80026f14:	ebfffc28 	bl	80025fbc <argint>
80026f18:	e50b0010 	str	r0, [fp, #-16]
80026f1c:	e59f31cc 	ldr	r3, [pc, #460]	; 800270f0 <sys_open+0x208>
80026f20:	e5933000 	ldr	r3, [r3]
80026f24:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80026f28:	e3530001 	cmp	r3, #1
80026f2c:	1a000006 	bne	80026f4c <sys_open+0x64>
80026f30:	e59f31b8 	ldr	r3, [pc, #440]	; 800270f0 <sys_open+0x208>
80026f34:	e5933000 	ldr	r3, [r3]
80026f38:	e5931010 	ldr	r1, [r3, #16]
80026f3c:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80026f40:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80026f44:	e59f01a8 	ldr	r0, [pc, #424]	; 800270f4 <sys_open+0x20c>
80026f48:	ebffea7b 	bl	8002193c <cprintf>
80026f4c:	e51b300c 	ldr	r3, [fp, #-12]
80026f50:	e3530000 	cmp	r3, #0
80026f54:	ba000002 	blt	80026f64 <sys_open+0x7c>
80026f58:	e51b3010 	ldr	r3, [fp, #-16]
80026f5c:	e3530000 	cmp	r3, #0
80026f60:	aa000001 	bge	80026f6c <sys_open+0x84>
80026f64:	e3e03000 	mvn	r3, #0
80026f68:	ea00005d 	b	800270e4 <sys_open+0x1fc>
80026f6c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80026f70:	e2033c02 	and	r3, r3, #512	; 0x200
80026f74:	e3530000 	cmp	r3, #0
80026f78:	0a00000c 	beq	80026fb0 <sys_open+0xc8>
80026f7c:	ebfff528 	bl	80024424 <begin_trans>
80026f80:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
80026f84:	e3a03000 	mov	r3, #0
80026f88:	e3a02000 	mov	r2, #0
80026f8c:	e3a01002 	mov	r1, #2
80026f90:	ebffff51 	bl	80026cdc <create>
80026f94:	e50b0008 	str	r0, [fp, #-8]
80026f98:	ebfff535 	bl	80024474 <commit_trans>
80026f9c:	e51b3008 	ldr	r3, [fp, #-8]
80026fa0:	e3530000 	cmp	r3, #0
80026fa4:	1a000017 	bne	80027008 <sys_open+0x120>
80026fa8:	e3e03000 	mvn	r3, #0
80026fac:	ea00004c 	b	800270e4 <sys_open+0x1fc>
80026fb0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80026fb4:	e1a00003 	mov	r0, r3
80026fb8:	ebfff441 	bl	800240c4 <namei>
80026fbc:	e50b0008 	str	r0, [fp, #-8]
80026fc0:	e51b3008 	ldr	r3, [fp, #-8]
80026fc4:	e3530000 	cmp	r3, #0
80026fc8:	1a000001 	bne	80026fd4 <sys_open+0xec>
80026fcc:	e3e03000 	mvn	r3, #0
80026fd0:	ea000043 	b	800270e4 <sys_open+0x1fc>
80026fd4:	e51b0008 	ldr	r0, [fp, #-8]
80026fd8:	ebfff066 	bl	80023178 <ilock>
80026fdc:	e51b3008 	ldr	r3, [fp, #-8]
80026fe0:	e1d331f0 	ldrsh	r3, [r3, #16]
80026fe4:	e3530001 	cmp	r3, #1
80026fe8:	1a000006 	bne	80027008 <sys_open+0x120>
80026fec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80026ff0:	e3530000 	cmp	r3, #0
80026ff4:	0a000003 	beq	80027008 <sys_open+0x120>
80026ff8:	e51b0008 	ldr	r0, [fp, #-8]
80026ffc:	ebfff11e 	bl	8002347c <iunlockput>
80027000:	e3e03000 	mvn	r3, #0
80027004:	ea000036 	b	800270e4 <sys_open+0x1fc>
80027008:	ebffed4d 	bl	80022544 <filealloc>
8002700c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80027010:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80027014:	e3530000 	cmp	r3, #0
80027018:	0a000005 	beq	80027034 <sys_open+0x14c>
8002701c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80027020:	ebfffcd5 	bl	8002637c <fdalloc>
80027024:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80027028:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002702c:	e3530000 	cmp	r3, #0
80027030:	aa000008 	bge	80027058 <sys_open+0x170>
80027034:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80027038:	e3530000 	cmp	r3, #0
8002703c:	0a000001 	beq	80027048 <sys_open+0x160>
80027040:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80027044:	ebffed7a 	bl	80022634 <fileclose>
80027048:	e51b0008 	ldr	r0, [fp, #-8]
8002704c:	ebfff10a 	bl	8002347c <iunlockput>
80027050:	e3e03000 	mvn	r3, #0
80027054:	ea000022 	b	800270e4 <sys_open+0x1fc>
80027058:	e51b0008 	ldr	r0, [fp, #-8]
8002705c:	ebfff0a9 	bl	80023308 <iunlock>
80027060:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80027064:	e3a02002 	mov	r2, #2
80027068:	e5c32000 	strb	r2, [r3]
8002706c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80027070:	e51b2008 	ldr	r2, [fp, #-8]
80027074:	e5832010 	str	r2, [r3, #16]
80027078:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002707c:	e3a02000 	mov	r2, #0
80027080:	e5832014 	str	r2, [r3, #20]
80027084:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80027088:	e2033001 	and	r3, r3, #1
8002708c:	e3530000 	cmp	r3, #0
80027090:	03a03001 	moveq	r3, #1
80027094:	13a03000 	movne	r3, #0
80027098:	e6ef3073 	uxtb	r3, r3
8002709c:	e1a02003 	mov	r2, r3
800270a0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800270a4:	e5c32008 	strb	r2, [r3, #8]
800270a8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800270ac:	e2033001 	and	r3, r3, #1
800270b0:	e3530000 	cmp	r3, #0
800270b4:	1a000003 	bne	800270c8 <sys_open+0x1e0>
800270b8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800270bc:	e2033002 	and	r3, r3, #2
800270c0:	e3530000 	cmp	r3, #0
800270c4:	0a000001 	beq	800270d0 <sys_open+0x1e8>
800270c8:	e3a03001 	mov	r3, #1
800270cc:	ea000000 	b	800270d4 <sys_open+0x1ec>
800270d0:	e3a03000 	mov	r3, #0
800270d4:	e6ef2073 	uxtb	r2, r3
800270d8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800270dc:	e5c32009 	strb	r2, [r3, #9]
800270e0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800270e4:	e1a00003 	mov	r0, r3
800270e8:	e24bd004 	sub	sp, fp, #4
800270ec:	e8bd8800 	pop	{fp, pc}
800270f0:	800ae61c 	.word	0x800ae61c
800270f4:	8002a5e4 	.word	0x8002a5e4

800270f8 <sys_mkdir>:
800270f8:	e92d4800 	push	{fp, lr}
800270fc:	e28db004 	add	fp, sp, #4
80027100:	e24dd010 	sub	sp, sp, #16
80027104:	e24b3010 	sub	r3, fp, #16
80027108:	e1a01003 	mov	r1, r3
8002710c:	e3a00000 	mov	r0, #0
80027110:	ebfffbed 	bl	800260cc <argstr>
80027114:	e50b0008 	str	r0, [fp, #-8]
80027118:	e59f3084 	ldr	r3, [pc, #132]	; 800271a4 <sys_mkdir+0xac>
8002711c:	e5933000 	ldr	r3, [r3]
80027120:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027124:	e3530000 	cmp	r3, #0
80027128:	0a000006 	beq	80027148 <sys_mkdir+0x50>
8002712c:	e59f3070 	ldr	r3, [pc, #112]	; 800271a4 <sys_mkdir+0xac>
80027130:	e5933000 	ldr	r3, [r3]
80027134:	e5933010 	ldr	r3, [r3, #16]
80027138:	e51b2010 	ldr	r2, [fp, #-16]
8002713c:	e1a01003 	mov	r1, r3
80027140:	e59f0060 	ldr	r0, [pc, #96]	; 800271a8 <sys_mkdir+0xb0>
80027144:	ebffe9fc 	bl	8002193c <cprintf>
80027148:	ebfff4b5 	bl	80024424 <begin_trans>
8002714c:	e51b3008 	ldr	r3, [fp, #-8]
80027150:	e3530000 	cmp	r3, #0
80027154:	ba000008 	blt	8002717c <sys_mkdir+0x84>
80027158:	e51b0010 	ldr	r0, [fp, #-16]
8002715c:	e3a03000 	mov	r3, #0
80027160:	e3a02000 	mov	r2, #0
80027164:	e3a01001 	mov	r1, #1
80027168:	ebfffedb 	bl	80026cdc <create>
8002716c:	e50b000c 	str	r0, [fp, #-12]
80027170:	e51b300c 	ldr	r3, [fp, #-12]
80027174:	e3530000 	cmp	r3, #0
80027178:	1a000002 	bne	80027188 <sys_mkdir+0x90>
8002717c:	ebfff4bc 	bl	80024474 <commit_trans>
80027180:	e3e03000 	mvn	r3, #0
80027184:	ea000003 	b	80027198 <sys_mkdir+0xa0>
80027188:	e51b000c 	ldr	r0, [fp, #-12]
8002718c:	ebfff0ba 	bl	8002347c <iunlockput>
80027190:	ebfff4b7 	bl	80024474 <commit_trans>
80027194:	e3a03000 	mov	r3, #0
80027198:	e1a00003 	mov	r0, r3
8002719c:	e24bd004 	sub	sp, fp, #4
800271a0:	e8bd8800 	pop	{fp, pc}
800271a4:	800ae61c 	.word	0x800ae61c
800271a8:	8002a600 	.word	0x8002a600

800271ac <sys_mknod>:
800271ac:	e92d4800 	push	{fp, lr}
800271b0:	e28db004 	add	fp, sp, #4
800271b4:	e24dd028 	sub	sp, sp, #40	; 0x28
800271b8:	e24b301c 	sub	r3, fp, #28
800271bc:	e1a01003 	mov	r1, r3
800271c0:	e3a00000 	mov	r0, #0
800271c4:	ebfffbc0 	bl	800260cc <argstr>
800271c8:	e50b0008 	str	r0, [fp, #-8]
800271cc:	e24b3020 	sub	r3, fp, #32
800271d0:	e1a01003 	mov	r1, r3
800271d4:	e3a00001 	mov	r0, #1
800271d8:	ebfffb77 	bl	80025fbc <argint>
800271dc:	e50b000c 	str	r0, [fp, #-12]
800271e0:	e24b3024 	sub	r3, fp, #36	; 0x24
800271e4:	e1a01003 	mov	r1, r3
800271e8:	e3a00002 	mov	r0, #2
800271ec:	ebfffb72 	bl	80025fbc <argint>
800271f0:	e50b0010 	str	r0, [fp, #-16]
800271f4:	e59f30b8 	ldr	r3, [pc, #184]	; 800272b4 <sys_mknod+0x108>
800271f8:	e5933000 	ldr	r3, [r3]
800271fc:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027200:	e3530001 	cmp	r3, #1
80027204:	1a000009 	bne	80027230 <sys_mknod+0x84>
80027208:	e59f30a4 	ldr	r3, [pc, #164]	; 800272b4 <sys_mknod+0x108>
8002720c:	e5933000 	ldr	r3, [r3]
80027210:	e5931010 	ldr	r1, [r3, #16]
80027214:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80027218:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
8002721c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80027220:	e58d3000 	str	r3, [sp]
80027224:	e1a03000 	mov	r3, r0
80027228:	e59f0088 	ldr	r0, [pc, #136]	; 800272b8 <sys_mknod+0x10c>
8002722c:	ebffe9c2 	bl	8002193c <cprintf>
80027230:	ebfff47b 	bl	80024424 <begin_trans>
80027234:	e51b3008 	ldr	r3, [fp, #-8]
80027238:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
8002723c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80027240:	e3530000 	cmp	r3, #0
80027244:	ba000010 	blt	8002728c <sys_mknod+0xe0>
80027248:	e51b300c 	ldr	r3, [fp, #-12]
8002724c:	e3530000 	cmp	r3, #0
80027250:	ba00000d 	blt	8002728c <sys_mknod+0xe0>
80027254:	e51b3010 	ldr	r3, [fp, #-16]
80027258:	e3530000 	cmp	r3, #0
8002725c:	ba00000a 	blt	8002728c <sys_mknod+0xe0>
80027260:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
80027264:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80027268:	e6bf2073 	sxth	r2, r3
8002726c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80027270:	e6bf3073 	sxth	r3, r3
80027274:	e3a01003 	mov	r1, #3
80027278:	ebfffe97 	bl	80026cdc <create>
8002727c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80027280:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80027284:	e3530000 	cmp	r3, #0
80027288:	1a000002 	bne	80027298 <sys_mknod+0xec>
8002728c:	ebfff478 	bl	80024474 <commit_trans>
80027290:	e3e03000 	mvn	r3, #0
80027294:	ea000003 	b	800272a8 <sys_mknod+0xfc>
80027298:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
8002729c:	ebfff076 	bl	8002347c <iunlockput>
800272a0:	ebfff473 	bl	80024474 <commit_trans>
800272a4:	e3a03000 	mov	r3, #0
800272a8:	e1a00003 	mov	r0, r3
800272ac:	e24bd004 	sub	sp, fp, #4
800272b0:	e8bd8800 	pop	{fp, pc}
800272b4:	800ae61c 	.word	0x800ae61c
800272b8:	8002a618 	.word	0x8002a618

800272bc <sys_chdir>:
800272bc:	e92d4800 	push	{fp, lr}
800272c0:	e28db004 	add	fp, sp, #4
800272c4:	e24dd010 	sub	sp, sp, #16
800272c8:	e24b3010 	sub	r3, fp, #16
800272cc:	e1a01003 	mov	r1, r3
800272d0:	e3a00000 	mov	r0, #0
800272d4:	ebfffb7c 	bl	800260cc <argstr>
800272d8:	e50b0008 	str	r0, [fp, #-8]
800272dc:	e59f30bc 	ldr	r3, [pc, #188]	; 800273a0 <sys_chdir+0xe4>
800272e0:	e5933000 	ldr	r3, [r3]
800272e4:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
800272e8:	e3530000 	cmp	r3, #0
800272ec:	0a000006 	beq	8002730c <sys_chdir+0x50>
800272f0:	e59f30a8 	ldr	r3, [pc, #168]	; 800273a0 <sys_chdir+0xe4>
800272f4:	e5933000 	ldr	r3, [r3]
800272f8:	e5933010 	ldr	r3, [r3, #16]
800272fc:	e51b2010 	ldr	r2, [fp, #-16]
80027300:	e1a01003 	mov	r1, r3
80027304:	e59f0098 	ldr	r0, [pc, #152]	; 800273a4 <sys_chdir+0xe8>
80027308:	ebffe98b 	bl	8002193c <cprintf>
8002730c:	e51b3008 	ldr	r3, [fp, #-8]
80027310:	e3530000 	cmp	r3, #0
80027314:	ba000006 	blt	80027334 <sys_chdir+0x78>
80027318:	e51b3010 	ldr	r3, [fp, #-16]
8002731c:	e1a00003 	mov	r0, r3
80027320:	ebfff367 	bl	800240c4 <namei>
80027324:	e50b000c 	str	r0, [fp, #-12]
80027328:	e51b300c 	ldr	r3, [fp, #-12]
8002732c:	e3530000 	cmp	r3, #0
80027330:	1a000001 	bne	8002733c <sys_chdir+0x80>
80027334:	e3e03000 	mvn	r3, #0
80027338:	ea000015 	b	80027394 <sys_chdir+0xd8>
8002733c:	e51b000c 	ldr	r0, [fp, #-12]
80027340:	ebffef8c 	bl	80023178 <ilock>
80027344:	e51b300c 	ldr	r3, [fp, #-12]
80027348:	e1d331f0 	ldrsh	r3, [r3, #16]
8002734c:	e3530001 	cmp	r3, #1
80027350:	0a000003 	beq	80027364 <sys_chdir+0xa8>
80027354:	e51b000c 	ldr	r0, [fp, #-12]
80027358:	ebfff047 	bl	8002347c <iunlockput>
8002735c:	e3e03000 	mvn	r3, #0
80027360:	ea00000b 	b	80027394 <sys_chdir+0xd8>
80027364:	e51b000c 	ldr	r0, [fp, #-12]
80027368:	ebffefe6 	bl	80023308 <iunlock>
8002736c:	e59f302c 	ldr	r3, [pc, #44]	; 800273a0 <sys_chdir+0xe4>
80027370:	e5933000 	ldr	r3, [r3]
80027374:	e5933068 	ldr	r3, [r3, #104]	; 0x68
80027378:	e1a00003 	mov	r0, r3
8002737c:	ebfff003 	bl	80023390 <iput>
80027380:	e59f3018 	ldr	r3, [pc, #24]	; 800273a0 <sys_chdir+0xe4>
80027384:	e5933000 	ldr	r3, [r3]
80027388:	e51b200c 	ldr	r2, [fp, #-12]
8002738c:	e5832068 	str	r2, [r3, #104]	; 0x68
80027390:	e3a03000 	mov	r3, #0
80027394:	e1a00003 	mov	r0, r3
80027398:	e24bd004 	sub	sp, fp, #4
8002739c:	e8bd8800 	pop	{fp, pc}
800273a0:	800ae61c 	.word	0x800ae61c
800273a4:	8002a638 	.word	0x8002a638

800273a8 <sys_exec>:
800273a8:	e92d4800 	push	{fp, lr}
800273ac:	e28db004 	add	fp, sp, #4
800273b0:	e24dd0a0 	sub	sp, sp, #160	; 0xa0
800273b4:	e24b3018 	sub	r3, fp, #24
800273b8:	e1a01003 	mov	r1, r3
800273bc:	e3a00000 	mov	r0, #0
800273c0:	ebfffb41 	bl	800260cc <argstr>
800273c4:	e50b0010 	str	r0, [fp, #-16]
800273c8:	e24b309c 	sub	r3, fp, #156	; 0x9c
800273cc:	e1a01003 	mov	r1, r3
800273d0:	e3a00001 	mov	r0, #1
800273d4:	ebfffaf8 	bl	80025fbc <argint>
800273d8:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
800273dc:	e51b3010 	ldr	r3, [fp, #-16]
800273e0:	e3530000 	cmp	r3, #0
800273e4:	ba000002 	blt	800273f4 <sys_exec+0x4c>
800273e8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800273ec:	e3530000 	cmp	r3, #0
800273f0:	aa000001 	bge	800273fc <sys_exec+0x54>
800273f4:	e3e03000 	mvn	r3, #0
800273f8:	ea00005e 	b	80027578 <sys_exec+0x1d0>
800273fc:	e24b3098 	sub	r3, fp, #152	; 0x98
80027400:	e3a02080 	mov	r2, #128	; 0x80
80027404:	e3a01000 	mov	r1, #0
80027408:	e1a00003 	mov	r0, r3
8002740c:	ebffe2fb 	bl	80020000 <memset>
80027410:	e3a03000 	mov	r3, #0
80027414:	e50b3008 	str	r3, [fp, #-8]
80027418:	e51b3008 	ldr	r3, [fp, #-8]
8002741c:	e353001f 	cmp	r3, #31
80027420:	9a000001 	bls	8002742c <sys_exec+0x84>
80027424:	e3e03000 	mvn	r3, #0
80027428:	ea000052 	b	80027578 <sys_exec+0x1d0>
8002742c:	e51b3008 	ldr	r3, [fp, #-8]
80027430:	e1a03103 	lsl	r3, r3, #2
80027434:	e1a02003 	mov	r2, r3
80027438:	e51b309c 	ldr	r3, [fp, #-156]	; 0xffffff64
8002743c:	e0823003 	add	r3, r2, r3
80027440:	e24b20a0 	sub	r2, fp, #160	; 0xa0
80027444:	e1a01002 	mov	r1, r2
80027448:	e1a00003 	mov	r0, r3
8002744c:	ebfffa8e 	bl	80025e8c <fetchint>
80027450:	e1a03000 	mov	r3, r0
80027454:	e3530000 	cmp	r3, #0
80027458:	aa000001 	bge	80027464 <sys_exec+0xbc>
8002745c:	e3e03000 	mvn	r3, #0
80027460:	ea000044 	b	80027578 <sys_exec+0x1d0>
80027464:	e51b30a0 	ldr	r3, [fp, #-160]	; 0xffffff60
80027468:	e3530000 	cmp	r3, #0
8002746c:	1a00000c 	bne	800274a4 <sys_exec+0xfc>
80027470:	e51b3008 	ldr	r3, [fp, #-8]
80027474:	e1a03103 	lsl	r3, r3, #2
80027478:	e24b2004 	sub	r2, fp, #4
8002747c:	e0823003 	add	r3, r2, r3
80027480:	e3a02000 	mov	r2, #0
80027484:	e5032094 	str	r2, [r3, #-148]	; 0xffffff6c
80027488:	e1a00000 	nop			; (mov r0, r0)
8002748c:	e59f30f0 	ldr	r3, [pc, #240]	; 80027584 <sys_exec+0x1dc>
80027490:	e5933000 	ldr	r3, [r3]
80027494:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027498:	e3530001 	cmp	r3, #1
8002749c:	1a00002f 	bne	80027560 <sys_exec+0x1b8>
800274a0:	ea00000f 	b	800274e4 <sys_exec+0x13c>
800274a4:	e51b00a0 	ldr	r0, [fp, #-160]	; 0xffffff60
800274a8:	e24b2098 	sub	r2, fp, #152	; 0x98
800274ac:	e51b3008 	ldr	r3, [fp, #-8]
800274b0:	e1a03103 	lsl	r3, r3, #2
800274b4:	e0823003 	add	r3, r2, r3
800274b8:	e1a01003 	mov	r1, r3
800274bc:	ebfffa90 	bl	80025f04 <fetchstr>
800274c0:	e1a03000 	mov	r3, r0
800274c4:	e3530000 	cmp	r3, #0
800274c8:	aa000001 	bge	800274d4 <sys_exec+0x12c>
800274cc:	e3e03000 	mvn	r3, #0
800274d0:	ea000028 	b	80027578 <sys_exec+0x1d0>
800274d4:	e51b3008 	ldr	r3, [fp, #-8]
800274d8:	e2833001 	add	r3, r3, #1
800274dc:	e50b3008 	str	r3, [fp, #-8]
800274e0:	eaffffcc 	b	80027418 <sys_exec+0x70>
800274e4:	e3a03000 	mov	r3, #0
800274e8:	e50b300c 	str	r3, [fp, #-12]
800274ec:	e59f3090 	ldr	r3, [pc, #144]	; 80027584 <sys_exec+0x1dc>
800274f0:	e5933000 	ldr	r3, [r3]
800274f4:	e5933010 	ldr	r3, [r3, #16]
800274f8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
800274fc:	e1a01003 	mov	r1, r3
80027500:	e59f0080 	ldr	r0, [pc, #128]	; 80027588 <sys_exec+0x1e0>
80027504:	ebffe90c 	bl	8002193c <cprintf>
80027508:	ea00000b 	b	8002753c <sys_exec+0x194>
8002750c:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80027510:	e51b300c 	ldr	r3, [fp, #-12]
80027514:	e1a03103 	lsl	r3, r3, #2
80027518:	e24b2004 	sub	r2, fp, #4
8002751c:	e0823003 	add	r3, r2, r3
80027520:	e5133094 	ldr	r3, [r3, #-148]	; 0xffffff6c
80027524:	e1a02003 	mov	r2, r3
80027528:	e59f005c 	ldr	r0, [pc, #92]	; 8002758c <sys_exec+0x1e4>
8002752c:	ebffe902 	bl	8002193c <cprintf>
80027530:	e51b300c 	ldr	r3, [fp, #-12]
80027534:	e2833001 	add	r3, r3, #1
80027538:	e50b300c 	str	r3, [fp, #-12]
8002753c:	e51b300c 	ldr	r3, [fp, #-12]
80027540:	e1a03103 	lsl	r3, r3, #2
80027544:	e24b2004 	sub	r2, fp, #4
80027548:	e0823003 	add	r3, r2, r3
8002754c:	e5133094 	ldr	r3, [r3, #-148]	; 0xffffff6c
80027550:	e3530000 	cmp	r3, #0
80027554:	1affffec 	bne	8002750c <sys_exec+0x164>
80027558:	e59f0030 	ldr	r0, [pc, #48]	; 80027590 <sys_exec+0x1e8>
8002755c:	ebffe8f6 	bl	8002193c <cprintf>
80027560:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80027564:	e24b2098 	sub	r2, fp, #152	; 0x98
80027568:	e1a01002 	mov	r1, r2
8002756c:	e1a00003 	mov	r0, r3
80027570:	ebffeab7 	bl	80022054 <exec>
80027574:	e1a03000 	mov	r3, r0
80027578:	e1a00003 	mov	r0, r3
8002757c:	e24bd004 	sub	sp, fp, #4
80027580:	e8bd8800 	pop	{fp, pc}
80027584:	800ae61c 	.word	0x800ae61c
80027588:	8002a650 	.word	0x8002a650
8002758c:	8002a668 	.word	0x8002a668
80027590:	8002a674 	.word	0x8002a674

80027594 <sys_pipe>:
80027594:	e92d4800 	push	{fp, lr}
80027598:	e28db004 	add	fp, sp, #4
8002759c:	e24dd018 	sub	sp, sp, #24
800275a0:	e24b3014 	sub	r3, fp, #20
800275a4:	e3a02008 	mov	r2, #8
800275a8:	e1a01003 	mov	r1, r3
800275ac:	e3a00000 	mov	r0, #0
800275b0:	ebfffa9c 	bl	80026028 <argptr>
800275b4:	e50b0008 	str	r0, [fp, #-8]
800275b8:	e59f3114 	ldr	r3, [pc, #276]	; 800276d4 <sys_pipe+0x140>
800275bc:	e5933000 	ldr	r3, [r3]
800275c0:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
800275c4:	e3530001 	cmp	r3, #1
800275c8:	1a000006 	bne	800275e8 <sys_pipe+0x54>
800275cc:	e59f3100 	ldr	r3, [pc, #256]	; 800276d4 <sys_pipe+0x140>
800275d0:	e5933000 	ldr	r3, [r3]
800275d4:	e5933010 	ldr	r3, [r3, #16]
800275d8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
800275dc:	e1a01003 	mov	r1, r3
800275e0:	e59f00f0 	ldr	r0, [pc, #240]	; 800276d8 <sys_pipe+0x144>
800275e4:	ebffe8d4 	bl	8002193c <cprintf>
800275e8:	e51b3008 	ldr	r3, [fp, #-8]
800275ec:	e3530000 	cmp	r3, #0
800275f0:	aa000001 	bge	800275fc <sys_pipe+0x68>
800275f4:	e3e03000 	mvn	r3, #0
800275f8:	ea000032 	b	800276c8 <sys_pipe+0x134>
800275fc:	e24b201c 	sub	r2, fp, #28
80027600:	e24b3018 	sub	r3, fp, #24
80027604:	e1a01002 	mov	r1, r2
80027608:	e1a00003 	mov	r0, r3
8002760c:	ebfff4b1 	bl	800248d8 <pipealloc>
80027610:	e1a03000 	mov	r3, r0
80027614:	e3530000 	cmp	r3, #0
80027618:	aa000001 	bge	80027624 <sys_pipe+0x90>
8002761c:	e3e03000 	mvn	r3, #0
80027620:	ea000028 	b	800276c8 <sys_pipe+0x134>
80027624:	e3e03000 	mvn	r3, #0
80027628:	e50b300c 	str	r3, [fp, #-12]
8002762c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80027630:	e1a00003 	mov	r0, r3
80027634:	ebfffb50 	bl	8002637c <fdalloc>
80027638:	e50b000c 	str	r0, [fp, #-12]
8002763c:	e51b300c 	ldr	r3, [fp, #-12]
80027640:	e3530000 	cmp	r3, #0
80027644:	ba000006 	blt	80027664 <sys_pipe+0xd0>
80027648:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002764c:	e1a00003 	mov	r0, r3
80027650:	ebfffb49 	bl	8002637c <fdalloc>
80027654:	e50b0010 	str	r0, [fp, #-16]
80027658:	e51b3010 	ldr	r3, [fp, #-16]
8002765c:	e3530000 	cmp	r3, #0
80027660:	aa000010 	bge	800276a8 <sys_pipe+0x114>
80027664:	e51b300c 	ldr	r3, [fp, #-12]
80027668:	e3530000 	cmp	r3, #0
8002766c:	ba000005 	blt	80027688 <sys_pipe+0xf4>
80027670:	e59f305c 	ldr	r3, [pc, #92]	; 800276d4 <sys_pipe+0x140>
80027674:	e5933000 	ldr	r3, [r3]
80027678:	e51b200c 	ldr	r2, [fp, #-12]
8002767c:	e282200a 	add	r2, r2, #10
80027680:	e3a01000 	mov	r1, #0
80027684:	e7831102 	str	r1, [r3, r2, lsl #2]
80027688:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8002768c:	e1a00003 	mov	r0, r3
80027690:	ebffebe7 	bl	80022634 <fileclose>
80027694:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80027698:	e1a00003 	mov	r0, r3
8002769c:	ebffebe4 	bl	80022634 <fileclose>
800276a0:	e3e03000 	mvn	r3, #0
800276a4:	ea000007 	b	800276c8 <sys_pipe+0x134>
800276a8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800276ac:	e51b200c 	ldr	r2, [fp, #-12]
800276b0:	e5832000 	str	r2, [r3]
800276b4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800276b8:	e2833004 	add	r3, r3, #4
800276bc:	e51b2010 	ldr	r2, [fp, #-16]
800276c0:	e5832000 	str	r2, [r3]
800276c4:	e3a03000 	mov	r3, #0
800276c8:	e1a00003 	mov	r0, r3
800276cc:	e24bd004 	sub	sp, fp, #4
800276d0:	e8bd8800 	pop	{fp, pc}
800276d4:	800ae61c 	.word	0x800ae61c
800276d8:	8002a678 	.word	0x8002a678

800276dc <sys_getps>:
800276dc:	e92d4800 	push	{fp, lr}
800276e0:	e28db004 	add	fp, sp, #4
800276e4:	e24dd008 	sub	sp, sp, #8
800276e8:	e24b300c 	sub	r3, fp, #12
800276ec:	e59f206c 	ldr	r2, [pc, #108]	; 80027760 <sys_getps+0x84>
800276f0:	e1a01003 	mov	r1, r3
800276f4:	e3a00000 	mov	r0, #0
800276f8:	ebfffa4a 	bl	80026028 <argptr>
800276fc:	e50b0008 	str	r0, [fp, #-8]
80027700:	e59f305c 	ldr	r3, [pc, #92]	; 80027764 <sys_getps+0x88>
80027704:	e5933000 	ldr	r3, [r3]
80027708:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
8002770c:	e3530001 	cmp	r3, #1
80027710:	1a000006 	bne	80027730 <sys_getps+0x54>
80027714:	e59f3048 	ldr	r3, [pc, #72]	; 80027764 <sys_getps+0x88>
80027718:	e5933000 	ldr	r3, [r3]
8002771c:	e5933010 	ldr	r3, [r3, #16]
80027720:	e51b200c 	ldr	r2, [fp, #-12]
80027724:	e1a01003 	mov	r1, r3
80027728:	e59f0038 	ldr	r0, [pc, #56]	; 80027768 <sys_getps+0x8c>
8002772c:	ebffe882 	bl	8002193c <cprintf>
80027730:	e51b3008 	ldr	r3, [fp, #-8]
80027734:	e3530000 	cmp	r3, #0
80027738:	aa000001 	bge	80027744 <sys_getps+0x68>
8002773c:	e3e03000 	mvn	r3, #0
80027740:	ea000003 	b	80027754 <sys_getps+0x78>
80027744:	e51b300c 	ldr	r3, [fp, #-12]
80027748:	e1a00003 	mov	r0, r3
8002774c:	ebfff92d 	bl	80025c08 <generate_table>
80027750:	e1a03000 	mov	r3, r0
80027754:	e1a00003 	mov	r0, r3
80027758:	e24bd004 	sub	sp, fp, #4
8002775c:	e8bd8800 	pop	{fp, pc}
80027760:	00000604 	.word	0x00000604
80027764:	800ae61c 	.word	0x800ae61c
80027768:	8002a690 	.word	0x8002a690

8002776c <sys_fork>:
8002776c:	e92d4800 	push	{fp, lr}
80027770:	e28db004 	add	fp, sp, #4
80027774:	e59f3034 	ldr	r3, [pc, #52]	; 800277b0 <sys_fork+0x44>
80027778:	e5933000 	ldr	r3, [r3]
8002777c:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027780:	e3530000 	cmp	r3, #0
80027784:	0a000005 	beq	800277a0 <sys_fork+0x34>
80027788:	e59f3020 	ldr	r3, [pc, #32]	; 800277b0 <sys_fork+0x44>
8002778c:	e5933000 	ldr	r3, [r3]
80027790:	e5933010 	ldr	r3, [r3, #16]
80027794:	e1a01003 	mov	r1, r3
80027798:	e59f0014 	ldr	r0, [pc, #20]	; 800277b4 <sys_fork+0x48>
8002779c:	ebffe866 	bl	8002193c <cprintf>
800277a0:	ebfff68d 	bl	800251dc <fork>
800277a4:	e1a03000 	mov	r3, r0
800277a8:	e1a00003 	mov	r0, r3
800277ac:	e8bd8800 	pop	{fp, pc}
800277b0:	800ae61c 	.word	0x800ae61c
800277b4:	8002a6a4 	.word	0x8002a6a4

800277b8 <sys_exit>:
800277b8:	e92d4800 	push	{fp, lr}
800277bc:	e28db004 	add	fp, sp, #4
800277c0:	e59f3034 	ldr	r3, [pc, #52]	; 800277fc <sys_exit+0x44>
800277c4:	e5933000 	ldr	r3, [r3]
800277c8:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
800277cc:	e3530001 	cmp	r3, #1
800277d0:	1a000005 	bne	800277ec <sys_exit+0x34>
800277d4:	e59f3020 	ldr	r3, [pc, #32]	; 800277fc <sys_exit+0x44>
800277d8:	e5933000 	ldr	r3, [r3]
800277dc:	e5933010 	ldr	r3, [r3, #16]
800277e0:	e1a01003 	mov	r1, r3
800277e4:	e59f0014 	ldr	r0, [pc, #20]	; 80027800 <sys_exit+0x48>
800277e8:	ebffe853 	bl	8002193c <cprintf>
800277ec:	ebfff6ee 	bl	800253ac <exit>
800277f0:	e3a03000 	mov	r3, #0
800277f4:	e1a00003 	mov	r0, r3
800277f8:	e8bd8800 	pop	{fp, pc}
800277fc:	800ae61c 	.word	0x800ae61c
80027800:	8002a6b8 	.word	0x8002a6b8

80027804 <sys_wait>:
80027804:	e92d4800 	push	{fp, lr}
80027808:	e28db004 	add	fp, sp, #4
8002780c:	e59f3034 	ldr	r3, [pc, #52]	; 80027848 <sys_wait+0x44>
80027810:	e5933000 	ldr	r3, [r3]
80027814:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027818:	e3530001 	cmp	r3, #1
8002781c:	1a000005 	bne	80027838 <sys_wait+0x34>
80027820:	e59f3020 	ldr	r3, [pc, #32]	; 80027848 <sys_wait+0x44>
80027824:	e5933000 	ldr	r3, [r3]
80027828:	e5933010 	ldr	r3, [r3, #16]
8002782c:	e1a01003 	mov	r1, r3
80027830:	e59f0014 	ldr	r0, [pc, #20]	; 8002784c <sys_wait+0x48>
80027834:	ebffe840 	bl	8002193c <cprintf>
80027838:	ebfff73d 	bl	80025534 <wait>
8002783c:	e1a03000 	mov	r3, r0
80027840:	e1a00003 	mov	r0, r3
80027844:	e8bd8800 	pop	{fp, pc}
80027848:	800ae61c 	.word	0x800ae61c
8002784c:	8002a6cc 	.word	0x8002a6cc

80027850 <sys_kill>:
80027850:	e92d4800 	push	{fp, lr}
80027854:	e28db004 	add	fp, sp, #4
80027858:	e24dd008 	sub	sp, sp, #8
8002785c:	e24b300c 	sub	r3, fp, #12
80027860:	e1a01003 	mov	r1, r3
80027864:	e3a00000 	mov	r0, #0
80027868:	ebfff9d3 	bl	80025fbc <argint>
8002786c:	e50b0008 	str	r0, [fp, #-8]
80027870:	e59f3058 	ldr	r3, [pc, #88]	; 800278d0 <sys_kill+0x80>
80027874:	e5933000 	ldr	r3, [r3]
80027878:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
8002787c:	e3530001 	cmp	r3, #1
80027880:	1a000006 	bne	800278a0 <sys_kill+0x50>
80027884:	e59f3044 	ldr	r3, [pc, #68]	; 800278d0 <sys_kill+0x80>
80027888:	e5933000 	ldr	r3, [r3]
8002788c:	e5933010 	ldr	r3, [r3, #16]
80027890:	e51b200c 	ldr	r2, [fp, #-12]
80027894:	e1a01003 	mov	r1, r3
80027898:	e59f0034 	ldr	r0, [pc, #52]	; 800278d4 <sys_kill+0x84>
8002789c:	ebffe826 	bl	8002193c <cprintf>
800278a0:	e51b3008 	ldr	r3, [fp, #-8]
800278a4:	e3530000 	cmp	r3, #0
800278a8:	aa000001 	bge	800278b4 <sys_kill+0x64>
800278ac:	e3e03000 	mvn	r3, #0
800278b0:	ea000003 	b	800278c4 <sys_kill+0x74>
800278b4:	e51b300c 	ldr	r3, [fp, #-12]
800278b8:	e1a00003 	mov	r0, r3
800278bc:	ebfff860 	bl	80025a44 <kill>
800278c0:	e1a03000 	mov	r3, r0
800278c4:	e1a00003 	mov	r0, r3
800278c8:	e24bd004 	sub	sp, fp, #4
800278cc:	e8bd8800 	pop	{fp, pc}
800278d0:	800ae61c 	.word	0x800ae61c
800278d4:	8002a6e0 	.word	0x8002a6e0

800278d8 <sys_getpid>:
800278d8:	e92d4800 	push	{fp, lr}
800278dc:	e28db004 	add	fp, sp, #4
800278e0:	e59f3038 	ldr	r3, [pc, #56]	; 80027920 <sys_getpid+0x48>
800278e4:	e5933000 	ldr	r3, [r3]
800278e8:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
800278ec:	e3530001 	cmp	r3, #1
800278f0:	1a000005 	bne	8002790c <sys_getpid+0x34>
800278f4:	e59f3024 	ldr	r3, [pc, #36]	; 80027920 <sys_getpid+0x48>
800278f8:	e5933000 	ldr	r3, [r3]
800278fc:	e5933010 	ldr	r3, [r3, #16]
80027900:	e1a01003 	mov	r1, r3
80027904:	e59f0018 	ldr	r0, [pc, #24]	; 80027924 <sys_getpid+0x4c>
80027908:	ebffe80b 	bl	8002193c <cprintf>
8002790c:	e59f300c 	ldr	r3, [pc, #12]	; 80027920 <sys_getpid+0x48>
80027910:	e5933000 	ldr	r3, [r3]
80027914:	e5933010 	ldr	r3, [r3, #16]
80027918:	e1a00003 	mov	r0, r3
8002791c:	e8bd8800 	pop	{fp, pc}
80027920:	800ae61c 	.word	0x800ae61c
80027924:	8002a6f4 	.word	0x8002a6f4

80027928 <sys_sbrk>:
80027928:	e92d4800 	push	{fp, lr}
8002792c:	e28db004 	add	fp, sp, #4
80027930:	e24dd010 	sub	sp, sp, #16
80027934:	e24b3010 	sub	r3, fp, #16
80027938:	e1a01003 	mov	r1, r3
8002793c:	e3a00000 	mov	r0, #0
80027940:	ebfff99d 	bl	80025fbc <argint>
80027944:	e50b0008 	str	r0, [fp, #-8]
80027948:	e59f307c 	ldr	r3, [pc, #124]	; 800279cc <sys_sbrk+0xa4>
8002794c:	e5933000 	ldr	r3, [r3]
80027950:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027954:	e3530001 	cmp	r3, #1
80027958:	1a000006 	bne	80027978 <sys_sbrk+0x50>
8002795c:	e59f3068 	ldr	r3, [pc, #104]	; 800279cc <sys_sbrk+0xa4>
80027960:	e5933000 	ldr	r3, [r3]
80027964:	e5933010 	ldr	r3, [r3, #16]
80027968:	e51b2010 	ldr	r2, [fp, #-16]
8002796c:	e1a01003 	mov	r1, r3
80027970:	e59f0058 	ldr	r0, [pc, #88]	; 800279d0 <sys_sbrk+0xa8>
80027974:	ebffe7f0 	bl	8002193c <cprintf>
80027978:	e51b3008 	ldr	r3, [fp, #-8]
8002797c:	e3530000 	cmp	r3, #0
80027980:	aa000001 	bge	8002798c <sys_sbrk+0x64>
80027984:	e3e03000 	mvn	r3, #0
80027988:	ea00000c 	b	800279c0 <sys_sbrk+0x98>
8002798c:	e59f3038 	ldr	r3, [pc, #56]	; 800279cc <sys_sbrk+0xa4>
80027990:	e5933000 	ldr	r3, [r3]
80027994:	e5933000 	ldr	r3, [r3]
80027998:	e50b300c 	str	r3, [fp, #-12]
8002799c:	e51b3010 	ldr	r3, [fp, #-16]
800279a0:	e1a00003 	mov	r0, r3
800279a4:	ebfff5d1 	bl	800250f0 <growproc>
800279a8:	e1a03000 	mov	r3, r0
800279ac:	e3530000 	cmp	r3, #0
800279b0:	aa000001 	bge	800279bc <sys_sbrk+0x94>
800279b4:	e3e03000 	mvn	r3, #0
800279b8:	ea000000 	b	800279c0 <sys_sbrk+0x98>
800279bc:	e51b300c 	ldr	r3, [fp, #-12]
800279c0:	e1a00003 	mov	r0, r3
800279c4:	e24bd004 	sub	sp, fp, #4
800279c8:	e8bd8800 	pop	{fp, pc}
800279cc:	800ae61c 	.word	0x800ae61c
800279d0:	8002a708 	.word	0x8002a708

800279d4 <sys_sleep>:
800279d4:	e92d4800 	push	{fp, lr}
800279d8:	e28db004 	add	fp, sp, #4
800279dc:	e24dd010 	sub	sp, sp, #16
800279e0:	e24b3010 	sub	r3, fp, #16
800279e4:	e1a01003 	mov	r1, r3
800279e8:	e3a00000 	mov	r0, #0
800279ec:	ebfff972 	bl	80025fbc <argint>
800279f0:	e50b0008 	str	r0, [fp, #-8]
800279f4:	e59f30b8 	ldr	r3, [pc, #184]	; 80027ab4 <sys_sleep+0xe0>
800279f8:	e5933000 	ldr	r3, [r3]
800279fc:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027a00:	e3530001 	cmp	r3, #1
80027a04:	1a000006 	bne	80027a24 <sys_sleep+0x50>
80027a08:	e59f30a4 	ldr	r3, [pc, #164]	; 80027ab4 <sys_sleep+0xe0>
80027a0c:	e5933000 	ldr	r3, [r3]
80027a10:	e5933010 	ldr	r3, [r3, #16]
80027a14:	e51b2010 	ldr	r2, [fp, #-16]
80027a18:	e1a01003 	mov	r1, r3
80027a1c:	e59f0094 	ldr	r0, [pc, #148]	; 80027ab8 <sys_sleep+0xe4>
80027a20:	ebffe7c5 	bl	8002193c <cprintf>
80027a24:	e51b3008 	ldr	r3, [fp, #-8]
80027a28:	e3530000 	cmp	r3, #0
80027a2c:	aa000001 	bge	80027a38 <sys_sleep+0x64>
80027a30:	e3e03000 	mvn	r3, #0
80027a34:	ea00001b 	b	80027aa8 <sys_sleep+0xd4>
80027a38:	e59f007c 	ldr	r0, [pc, #124]	; 80027abc <sys_sleep+0xe8>
80027a3c:	ebfff8ed 	bl	80025df8 <acquire>
80027a40:	e59f3078 	ldr	r3, [pc, #120]	; 80027ac0 <sys_sleep+0xec>
80027a44:	e5933000 	ldr	r3, [r3]
80027a48:	e50b300c 	str	r3, [fp, #-12]
80027a4c:	ea00000b 	b	80027a80 <sys_sleep+0xac>
80027a50:	e59f305c 	ldr	r3, [pc, #92]	; 80027ab4 <sys_sleep+0xe0>
80027a54:	e5933000 	ldr	r3, [r3]
80027a58:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80027a5c:	e3530000 	cmp	r3, #0
80027a60:	0a000003 	beq	80027a74 <sys_sleep+0xa0>
80027a64:	e59f0050 	ldr	r0, [pc, #80]	; 80027abc <sys_sleep+0xe8>
80027a68:	ebfff8ed 	bl	80025e24 <release>
80027a6c:	e3e03000 	mvn	r3, #0
80027a70:	ea00000c 	b	80027aa8 <sys_sleep+0xd4>
80027a74:	e59f1040 	ldr	r1, [pc, #64]	; 80027abc <sys_sleep+0xe8>
80027a78:	e59f0040 	ldr	r0, [pc, #64]	; 80027ac0 <sys_sleep+0xec>
80027a7c:	ebfff78e 	bl	800258bc <sleep>
80027a80:	e59f3038 	ldr	r3, [pc, #56]	; 80027ac0 <sys_sleep+0xec>
80027a84:	e5932000 	ldr	r2, [r3]
80027a88:	e51b300c 	ldr	r3, [fp, #-12]
80027a8c:	e0423003 	sub	r3, r2, r3
80027a90:	e51b2010 	ldr	r2, [fp, #-16]
80027a94:	e1530002 	cmp	r3, r2
80027a98:	3affffec 	bcc	80027a50 <sys_sleep+0x7c>
80027a9c:	e59f0018 	ldr	r0, [pc, #24]	; 80027abc <sys_sleep+0xe8>
80027aa0:	ebfff8df 	bl	80025e24 <release>
80027aa4:	e3a03000 	mov	r3, #0
80027aa8:	e1a00003 	mov	r0, r3
80027aac:	e24bd004 	sub	sp, fp, #4
80027ab0:	e8bd8800 	pop	{fp, pc}
80027ab4:	800ae61c 	.word	0x800ae61c
80027ab8:	8002a71c 	.word	0x8002a71c
80027abc:	800b0714 	.word	0x800b0714
80027ac0:	800b0748 	.word	0x800b0748

80027ac4 <sys_uptime>:
80027ac4:	e92d4800 	push	{fp, lr}
80027ac8:	e28db004 	add	fp, sp, #4
80027acc:	e24dd008 	sub	sp, sp, #8
80027ad0:	e59f3050 	ldr	r3, [pc, #80]	; 80027b28 <sys_uptime+0x64>
80027ad4:	e5933000 	ldr	r3, [r3]
80027ad8:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027adc:	e3530001 	cmp	r3, #1
80027ae0:	1a000005 	bne	80027afc <sys_uptime+0x38>
80027ae4:	e59f303c 	ldr	r3, [pc, #60]	; 80027b28 <sys_uptime+0x64>
80027ae8:	e5933000 	ldr	r3, [r3]
80027aec:	e5933010 	ldr	r3, [r3, #16]
80027af0:	e1a01003 	mov	r1, r3
80027af4:	e59f0030 	ldr	r0, [pc, #48]	; 80027b2c <sys_uptime+0x68>
80027af8:	ebffe78f 	bl	8002193c <cprintf>
80027afc:	e59f002c 	ldr	r0, [pc, #44]	; 80027b30 <sys_uptime+0x6c>
80027b00:	ebfff8bc 	bl	80025df8 <acquire>
80027b04:	e59f3028 	ldr	r3, [pc, #40]	; 80027b34 <sys_uptime+0x70>
80027b08:	e5933000 	ldr	r3, [r3]
80027b0c:	e50b3008 	str	r3, [fp, #-8]
80027b10:	e59f0018 	ldr	r0, [pc, #24]	; 80027b30 <sys_uptime+0x6c>
80027b14:	ebfff8c2 	bl	80025e24 <release>
80027b18:	e51b3008 	ldr	r3, [fp, #-8]
80027b1c:	e1a00003 	mov	r0, r3
80027b20:	e24bd004 	sub	sp, fp, #4
80027b24:	e8bd8800 	pop	{fp, pc}
80027b28:	800ae61c 	.word	0x800ae61c
80027b2c:	8002a730 	.word	0x8002a730
80027b30:	800b0714 	.word	0x800b0714
80027b34:	800b0748 	.word	0x800b0748

80027b38 <sys_memfree>:
80027b38:	e92d4800 	push	{fp, lr}
80027b3c:	e28db004 	add	fp, sp, #4
80027b40:	e59f3034 	ldr	r3, [pc, #52]	; 80027b7c <sys_memfree+0x44>
80027b44:	e5933000 	ldr	r3, [r3]
80027b48:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80027b4c:	e3530001 	cmp	r3, #1
80027b50:	1a000005 	bne	80027b6c <sys_memfree+0x34>
80027b54:	e59f3020 	ldr	r3, [pc, #32]	; 80027b7c <sys_memfree+0x44>
80027b58:	e5933000 	ldr	r3, [r3]
80027b5c:	e5933010 	ldr	r3, [r3, #16]
80027b60:	e1a01003 	mov	r1, r3
80027b64:	e59f0014 	ldr	r0, [pc, #20]	; 80027b80 <sys_memfree+0x48>
80027b68:	ebffe773 	bl	8002193c <cprintf>
80027b6c:	ebffe6f7 	bl	80021750 <kmemfree>
80027b70:	e1a03000 	mov	r3, r0
80027b74:	e1a00003 	mov	r0, r3
80027b78:	e8bd8800 	pop	{fp, pc}
80027b7c:	800ae61c 	.word	0x800ae61c
80027b80:	8002a744 	.word	0x8002a744

80027b84 <sys_traceon>:
80027b84:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80027b88:	e28db000 	add	fp, sp, #0
80027b8c:	e59f3018 	ldr	r3, [pc, #24]	; 80027bac <sys_traceon+0x28>
80027b90:	e5933000 	ldr	r3, [r3]
80027b94:	e3a02001 	mov	r2, #1
80027b98:	e583207c 	str	r2, [r3, #124]	; 0x7c
80027b9c:	e1a00000 	nop			; (mov r0, r0)
80027ba0:	e28bd000 	add	sp, fp, #0
80027ba4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80027ba8:	e12fff1e 	bx	lr
80027bac:	800ae61c 	.word	0x800ae61c

80027bb0 <sys_suspend>:
80027bb0:	e92d4800 	push	{fp, lr}
80027bb4:	e28db004 	add	fp, sp, #4
80027bb8:	e24dd008 	sub	sp, sp, #8
80027bbc:	e24b3008 	sub	r3, fp, #8
80027bc0:	e1a01003 	mov	r1, r3
80027bc4:	e3a00000 	mov	r0, #0
80027bc8:	ebfff8fb 	bl	80025fbc <argint>
80027bcc:	e24b300c 	sub	r3, fp, #12
80027bd0:	e1a01003 	mov	r1, r3
80027bd4:	e3a00001 	mov	r0, #1
80027bd8:	ebfff93b 	bl	800260cc <argstr>
80027bdc:	e51b3008 	ldr	r3, [fp, #-8]
80027be0:	e51b200c 	ldr	r2, [fp, #-12]
80027be4:	e1a01002 	mov	r1, r2
80027be8:	e1a00003 	mov	r0, r3
80027bec:	eb0006fa 	bl	800297dc <suspend>
80027bf0:	e3a03000 	mov	r3, #0
80027bf4:	e1a00003 	mov	r0, r3
80027bf8:	e24bd004 	sub	sp, fp, #4
80027bfc:	e8bd8800 	pop	{fp, pc}

80027c00 <sys_resume>:
80027c00:	e92d4800 	push	{fp, lr}
80027c04:	e28db004 	add	fp, sp, #4
80027c08:	e24dd008 	sub	sp, sp, #8
80027c0c:	e24b3008 	sub	r3, fp, #8
80027c10:	e1a01003 	mov	r1, r3
80027c14:	e3a00000 	mov	r0, #0
80027c18:	ebfff92b 	bl	800260cc <argstr>
80027c1c:	e51b3008 	ldr	r3, [fp, #-8]
80027c20:	e1a00003 	mov	r0, r3
80027c24:	eb0007a2 	bl	80029ab4 <resume>
80027c28:	e1a03000 	mov	r3, r0
80027c2c:	e1a00003 	mov	r0, r3
80027c30:	e24bd004 	sub	sp, fp, #4
80027c34:	e8bd8800 	pop	{fp, pc}

80027c38 <trap_swi>:
80027c38:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027c3c:	e14f2000 	mrs	r2, SPSR
80027c40:	e92d0004 	stmfd	sp!, {r2}
80027c44:	e92d4000 	stmfd	sp!, {lr}
80027c48:	e94d6000 	stmdb	sp, {sp, lr}^
80027c4c:	e24dd008 	sub	sp, sp, #8
80027c50:	e1a0000d 	mov	r0, sp
80027c54:	eb000056 	bl	80027db4 <swi_handler>

80027c58 <trapret>:
80027c58:	e8dd6000 	ldm	sp, {sp, lr}^
80027c5c:	e28dd008 	add	sp, sp, #8
80027c60:	e8bd4000 	ldmfd	sp!, {lr}
80027c64:	e8bd0004 	ldmfd	sp!, {r2}
80027c68:	e16ff002 	msr	SPSR_fsxc, r2
80027c6c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027c70 <trap_irq>:
80027c70:	e24ee004 	sub	lr, lr, #4
80027c74:	e92d4007 	push	{r0, r1, r2, lr}
80027c78:	e14f1000 	mrs	r1, SPSR
80027c7c:	e1a0000d 	mov	r0, sp
80027c80:	e28dd010 	add	sp, sp, #16
80027c84:	e10f2000 	mrs	r2, CPSR
80027c88:	e3c2201f 	bic	r2, r2, #31
80027c8c:	e3822013 	orr	r2, r2, #19
80027c90:	e12ff002 	msr	CPSR_fsxc, r2
80027c94:	e590200c 	ldr	r2, [r0, #12]
80027c98:	e92d0004 	stmfd	sp!, {r2}
80027c9c:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027ca0:	e8900038 	ldm	r0, {r3, r4, r5}
80027ca4:	e92d0038 	push	{r3, r4, r5}
80027ca8:	e92d0002 	stmfd	sp!, {r1}
80027cac:	e92d4000 	stmfd	sp!, {lr}
80027cb0:	e94d6000 	stmdb	sp, {sp, lr}^
80027cb4:	e24dd008 	sub	sp, sp, #8
80027cb8:	e1a0000d 	mov	r0, sp
80027cbc:	eb000055 	bl	80027e18 <irq_handler>
80027cc0:	eaffffe4 	b	80027c58 <trapret>

80027cc4 <trap_reset>:
80027cc4:	e3a0e000 	mov	lr, #0
80027cc8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027ccc:	e14f2000 	mrs	r2, SPSR
80027cd0:	e92d0004 	stmfd	sp!, {r2}
80027cd4:	e92d4000 	stmfd	sp!, {lr}
80027cd8:	e94d6000 	stmdb	sp, {sp, lr}^
80027cdc:	e24dd008 	sub	sp, sp, #8
80027ce0:	e1a0000d 	mov	r0, sp
80027ce4:	eb00005d 	bl	80027e60 <reset_handler>
80027ce8:	eafffffe 	b	80027ce8 <trap_reset+0x24>

80027cec <trap_und>:
80027cec:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027cf0:	e14f2000 	mrs	r2, SPSR
80027cf4:	e92d0004 	stmfd	sp!, {r2}
80027cf8:	e92d4000 	stmfd	sp!, {lr}
80027cfc:	e94d6000 	stmdb	sp, {sp, lr}^
80027d00:	e24dd008 	sub	sp, sp, #8
80027d04:	e1a0000d 	mov	r0, sp
80027d08:	eb000062 	bl	80027e98 <und_handler>
80027d0c:	eafffffe 	b	80027d0c <trap_und+0x20>

80027d10 <trap_iabort>:
80027d10:	e24ee004 	sub	lr, lr, #4
80027d14:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d18:	e14f2000 	mrs	r2, SPSR
80027d1c:	e92d0004 	stmfd	sp!, {r2}
80027d20:	e92d4000 	stmfd	sp!, {lr}
80027d24:	e94d6000 	stmdb	sp, {sp, lr}^
80027d28:	e24dd008 	sub	sp, sp, #8
80027d2c:	e1a0000d 	mov	r0, sp
80027d30:	eb00007b 	bl	80027f24 <iabort_handler>
80027d34:	eafffffe 	b	80027d34 <trap_iabort+0x24>

80027d38 <trap_dabort>:
80027d38:	e24ee008 	sub	lr, lr, #8
80027d3c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d40:	e14f2000 	mrs	r2, SPSR
80027d44:	e92d0004 	stmfd	sp!, {r2}
80027d48:	e92d4000 	stmfd	sp!, {lr}
80027d4c:	e94d6000 	stmdb	sp, {sp, lr}^
80027d50:	e24dd008 	sub	sp, sp, #8
80027d54:	e1a0000d 	mov	r0, sp
80027d58:	eb00005c 	bl	80027ed0 <dabort_handler>
80027d5c:	e3a00002 	mov	r0, #2
80027d60:	ef000000 	svc	0x00000000
80027d64:	eafff590 	b	800253ac <exit>

80027d68 <trap_na>:
80027d68:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d6c:	e14f2000 	mrs	r2, SPSR
80027d70:	e92d0004 	stmfd	sp!, {r2}
80027d74:	e92d4000 	stmfd	sp!, {lr}
80027d78:	e94d6000 	stmdb	sp, {sp, lr}^
80027d7c:	e24dd008 	sub	sp, sp, #8
80027d80:	e1a0000d 	mov	r0, sp
80027d84:	eb000079 	bl	80027f70 <na_handler>
80027d88:	eafffffe 	b	80027d88 <trap_na+0x20>

80027d8c <trap_fiq>:
80027d8c:	e24ee004 	sub	lr, lr, #4
80027d90:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d94:	e14f2000 	mrs	r2, SPSR
80027d98:	e92d0004 	stmfd	sp!, {r2}
80027d9c:	e92d4000 	stmfd	sp!, {lr}
80027da0:	e94d6000 	stmdb	sp, {sp, lr}^
80027da4:	e24dd008 	sub	sp, sp, #8
80027da8:	e1a0000d 	mov	r0, sp
80027dac:	eb00007d 	bl	80027fa8 <fiq_handler>
80027db0:	eafffffe 	b	80027db0 <trap_fiq+0x24>

80027db4 <swi_handler>:
80027db4:	e92d4800 	push	{fp, lr}
80027db8:	e28db004 	add	fp, sp, #4
80027dbc:	e24dd008 	sub	sp, sp, #8
80027dc0:	e50b0008 	str	r0, [fp, #-8]
80027dc4:	e59f3048 	ldr	r3, [pc, #72]	; 80027e14 <swi_handler+0x60>
80027dc8:	e5933000 	ldr	r3, [r3]
80027dcc:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80027dd0:	e3530000 	cmp	r3, #0
80027dd4:	0a000000 	beq	80027ddc <swi_handler+0x28>
80027dd8:	ebfff573 	bl	800253ac <exit>
80027ddc:	e59f3030 	ldr	r3, [pc, #48]	; 80027e14 <swi_handler+0x60>
80027de0:	e5933000 	ldr	r3, [r3]
80027de4:	e51b2008 	ldr	r2, [fp, #-8]
80027de8:	e5832018 	str	r2, [r3, #24]
80027dec:	ebfff8cc 	bl	80026124 <syscall>
80027df0:	e59f301c 	ldr	r3, [pc, #28]	; 80027e14 <swi_handler+0x60>
80027df4:	e5933000 	ldr	r3, [r3]
80027df8:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80027dfc:	e3530000 	cmp	r3, #0
80027e00:	0a000000 	beq	80027e08 <swi_handler+0x54>
80027e04:	ebfff568 	bl	800253ac <exit>
80027e08:	e1a00000 	nop			; (mov r0, r0)
80027e0c:	e24bd004 	sub	sp, fp, #4
80027e10:	e8bd8800 	pop	{fp, pc}
80027e14:	800ae61c 	.word	0x800ae61c

80027e18 <irq_handler>:
80027e18:	e92d4800 	push	{fp, lr}
80027e1c:	e28db004 	add	fp, sp, #4
80027e20:	e24dd008 	sub	sp, sp, #8
80027e24:	e50b0008 	str	r0, [fp, #-8]
80027e28:	e59f302c 	ldr	r3, [pc, #44]	; 80027e5c <irq_handler+0x44>
80027e2c:	e5933000 	ldr	r3, [r3]
80027e30:	e3530000 	cmp	r3, #0
80027e34:	0a000003 	beq	80027e48 <irq_handler+0x30>
80027e38:	e59f301c 	ldr	r3, [pc, #28]	; 80027e5c <irq_handler+0x44>
80027e3c:	e5933000 	ldr	r3, [r3]
80027e40:	e51b2008 	ldr	r2, [fp, #-8]
80027e44:	e5832018 	str	r2, [r3, #24]
80027e48:	e51b0008 	ldr	r0, [fp, #-8]
80027e4c:	eb0004d8 	bl	800291b4 <pic_dispatch>
80027e50:	e1a00000 	nop			; (mov r0, r0)
80027e54:	e24bd004 	sub	sp, fp, #4
80027e58:	e8bd8800 	pop	{fp, pc}
80027e5c:	800ae61c 	.word	0x800ae61c

80027e60 <reset_handler>:
80027e60:	e92d4800 	push	{fp, lr}
80027e64:	e28db004 	add	fp, sp, #4
80027e68:	e24dd008 	sub	sp, sp, #8
80027e6c:	e50b0008 	str	r0, [fp, #-8]
80027e70:	ebffe1b0 	bl	80020538 <cli>
80027e74:	e51b3008 	ldr	r3, [fp, #-8]
80027e78:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80027e7c:	e1a01003 	mov	r1, r3
80027e80:	e59f000c 	ldr	r0, [pc, #12]	; 80027e94 <reset_handler+0x34>
80027e84:	ebffe6ac 	bl	8002193c <cprintf>
80027e88:	e1a00000 	nop			; (mov r0, r0)
80027e8c:	e24bd004 	sub	sp, fp, #4
80027e90:	e8bd8800 	pop	{fp, pc}
80027e94:	8002a758 	.word	0x8002a758

80027e98 <und_handler>:
80027e98:	e92d4800 	push	{fp, lr}
80027e9c:	e28db004 	add	fp, sp, #4
80027ea0:	e24dd008 	sub	sp, sp, #8
80027ea4:	e50b0008 	str	r0, [fp, #-8]
80027ea8:	ebffe1a2 	bl	80020538 <cli>
80027eac:	e51b3008 	ldr	r3, [fp, #-8]
80027eb0:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80027eb4:	e1a01003 	mov	r1, r3
80027eb8:	e59f000c 	ldr	r0, [pc, #12]	; 80027ecc <und_handler+0x34>
80027ebc:	ebffe69e 	bl	8002193c <cprintf>
80027ec0:	e1a00000 	nop			; (mov r0, r0)
80027ec4:	e24bd004 	sub	sp, fp, #4
80027ec8:	e8bd8800 	pop	{fp, pc}
80027ecc:	8002a76c 	.word	0x8002a76c

80027ed0 <dabort_handler>:
80027ed0:	e92d4800 	push	{fp, lr}
80027ed4:	e28db004 	add	fp, sp, #4
80027ed8:	e24dd010 	sub	sp, sp, #16
80027edc:	e50b0010 	str	r0, [fp, #-16]
80027ee0:	ebffe194 	bl	80020538 <cli>
80027ee4:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027ee8:	e50b3008 	str	r3, [fp, #-8]
80027eec:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80027ef0:	e50b300c 	str	r3, [fp, #-12]
80027ef4:	e51b3010 	ldr	r3, [fp, #-16]
80027ef8:	e5931044 	ldr	r1, [r3, #68]	; 0x44
80027efc:	e51b3008 	ldr	r3, [fp, #-8]
80027f00:	e51b200c 	ldr	r2, [fp, #-12]
80027f04:	e59f0014 	ldr	r0, [pc, #20]	; 80027f20 <dabort_handler+0x50>
80027f08:	ebffe68b 	bl	8002193c <cprintf>
80027f0c:	e51b0010 	ldr	r0, [fp, #-16]
80027f10:	eb0000b2 	bl	800281e0 <dump_trapframe>
80027f14:	e1a00000 	nop			; (mov r0, r0)
80027f18:	e24bd004 	sub	sp, fp, #4
80027f1c:	e8bd8800 	pop	{fp, pc}
80027f20:	8002a77c 	.word	0x8002a77c

80027f24 <iabort_handler>:
80027f24:	e92d4800 	push	{fp, lr}
80027f28:	e28db004 	add	fp, sp, #4
80027f2c:	e24dd010 	sub	sp, sp, #16
80027f30:	e50b0010 	str	r0, [fp, #-16]
80027f34:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027f38:	e50b3008 	str	r3, [fp, #-8]
80027f3c:	ebffe17d 	bl	80020538 <cli>
80027f40:	e51b3010 	ldr	r3, [fp, #-16]
80027f44:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80027f48:	e51b2008 	ldr	r2, [fp, #-8]
80027f4c:	e1a01003 	mov	r1, r3
80027f50:	e59f0014 	ldr	r0, [pc, #20]	; 80027f6c <iabort_handler+0x48>
80027f54:	ebffe678 	bl	8002193c <cprintf>
80027f58:	e51b0010 	ldr	r0, [fp, #-16]
80027f5c:	eb00009f 	bl	800281e0 <dump_trapframe>
80027f60:	e1a00000 	nop			; (mov r0, r0)
80027f64:	e24bd004 	sub	sp, fp, #4
80027f68:	e8bd8800 	pop	{fp, pc}
80027f6c:	8002a7bc 	.word	0x8002a7bc

80027f70 <na_handler>:
80027f70:	e92d4800 	push	{fp, lr}
80027f74:	e28db004 	add	fp, sp, #4
80027f78:	e24dd008 	sub	sp, sp, #8
80027f7c:	e50b0008 	str	r0, [fp, #-8]
80027f80:	ebffe16c 	bl	80020538 <cli>
80027f84:	e51b3008 	ldr	r3, [fp, #-8]
80027f88:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80027f8c:	e1a01003 	mov	r1, r3
80027f90:	e59f000c 	ldr	r0, [pc, #12]	; 80027fa4 <na_handler+0x34>
80027f94:	ebffe668 	bl	8002193c <cprintf>
80027f98:	e1a00000 	nop			; (mov r0, r0)
80027f9c:	e24bd004 	sub	sp, fp, #4
80027fa0:	e8bd8800 	pop	{fp, pc}
80027fa4:	8002a7e4 	.word	0x8002a7e4

80027fa8 <fiq_handler>:
80027fa8:	e92d4800 	push	{fp, lr}
80027fac:	e28db004 	add	fp, sp, #4
80027fb0:	e24dd008 	sub	sp, sp, #8
80027fb4:	e50b0008 	str	r0, [fp, #-8]
80027fb8:	ebffe15e 	bl	80020538 <cli>
80027fbc:	e51b3008 	ldr	r3, [fp, #-8]
80027fc0:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80027fc4:	e1a01003 	mov	r1, r3
80027fc8:	e59f000c 	ldr	r0, [pc, #12]	; 80027fdc <fiq_handler+0x34>
80027fcc:	ebffe65a 	bl	8002193c <cprintf>
80027fd0:	e1a00000 	nop			; (mov r0, r0)
80027fd4:	e24bd004 	sub	sp, fp, #4
80027fd8:	e8bd8800 	pop	{fp, pc}
80027fdc:	8002a7f4 	.word	0x8002a7f4

80027fe0 <trap_init>:
80027fe0:	e92d4800 	push	{fp, lr}
80027fe4:	e28db004 	add	fp, sp, #4
80027fe8:	e24dd020 	sub	sp, sp, #32
80027fec:	e59f31bc 	ldr	r3, [pc, #444]	; 800281b0 <trap_init+0x1d0>
80027ff0:	e24bc020 	sub	ip, fp, #32
80027ff4:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80027ff8:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80027ffc:	e59f31b0 	ldr	r3, [pc, #432]	; 800281b4 <trap_init+0x1d4>
80028000:	e50b300c 	str	r3, [fp, #-12]
80028004:	e59f31ac 	ldr	r3, [pc, #428]	; 800281b8 <trap_init+0x1d8>
80028008:	e5933000 	ldr	r3, [r3]
8002800c:	e3832018 	orr	r2, r3, #24
80028010:	e51b300c 	ldr	r3, [fp, #-12]
80028014:	e5832000 	str	r2, [r3]
80028018:	e59f3198 	ldr	r3, [pc, #408]	; 800281b8 <trap_init+0x1d8>
8002801c:	e5932000 	ldr	r2, [r3]
80028020:	e51b300c 	ldr	r3, [fp, #-12]
80028024:	e2833004 	add	r3, r3, #4
80028028:	e3822018 	orr	r2, r2, #24
8002802c:	e5832000 	str	r2, [r3]
80028030:	e59f3180 	ldr	r3, [pc, #384]	; 800281b8 <trap_init+0x1d8>
80028034:	e5932000 	ldr	r2, [r3]
80028038:	e51b300c 	ldr	r3, [fp, #-12]
8002803c:	e2833008 	add	r3, r3, #8
80028040:	e3822018 	orr	r2, r2, #24
80028044:	e5832000 	str	r2, [r3]
80028048:	e59f3168 	ldr	r3, [pc, #360]	; 800281b8 <trap_init+0x1d8>
8002804c:	e5932000 	ldr	r2, [r3]
80028050:	e51b300c 	ldr	r3, [fp, #-12]
80028054:	e283300c 	add	r3, r3, #12
80028058:	e3822018 	orr	r2, r2, #24
8002805c:	e5832000 	str	r2, [r3]
80028060:	e59f3150 	ldr	r3, [pc, #336]	; 800281b8 <trap_init+0x1d8>
80028064:	e5932000 	ldr	r2, [r3]
80028068:	e51b300c 	ldr	r3, [fp, #-12]
8002806c:	e2833010 	add	r3, r3, #16
80028070:	e3822018 	orr	r2, r2, #24
80028074:	e5832000 	str	r2, [r3]
80028078:	e59f3138 	ldr	r3, [pc, #312]	; 800281b8 <trap_init+0x1d8>
8002807c:	e5932000 	ldr	r2, [r3]
80028080:	e51b300c 	ldr	r3, [fp, #-12]
80028084:	e2833014 	add	r3, r3, #20
80028088:	e3822018 	orr	r2, r2, #24
8002808c:	e5832000 	str	r2, [r3]
80028090:	e59f3120 	ldr	r3, [pc, #288]	; 800281b8 <trap_init+0x1d8>
80028094:	e5932000 	ldr	r2, [r3]
80028098:	e51b300c 	ldr	r3, [fp, #-12]
8002809c:	e2833018 	add	r3, r3, #24
800280a0:	e3822018 	orr	r2, r2, #24
800280a4:	e5832000 	str	r2, [r3]
800280a8:	e59f3108 	ldr	r3, [pc, #264]	; 800281b8 <trap_init+0x1d8>
800280ac:	e5932000 	ldr	r2, [r3]
800280b0:	e51b300c 	ldr	r3, [fp, #-12]
800280b4:	e283301c 	add	r3, r3, #28
800280b8:	e3822018 	orr	r2, r2, #24
800280bc:	e5832000 	str	r2, [r3]
800280c0:	e51b300c 	ldr	r3, [fp, #-12]
800280c4:	e2833020 	add	r3, r3, #32
800280c8:	e59f20ec 	ldr	r2, [pc, #236]	; 800281bc <trap_init+0x1dc>
800280cc:	e5832000 	str	r2, [r3]
800280d0:	e51b300c 	ldr	r3, [fp, #-12]
800280d4:	e2833024 	add	r3, r3, #36	; 0x24
800280d8:	e59f20e0 	ldr	r2, [pc, #224]	; 800281c0 <trap_init+0x1e0>
800280dc:	e5832000 	str	r2, [r3]
800280e0:	e51b300c 	ldr	r3, [fp, #-12]
800280e4:	e2833028 	add	r3, r3, #40	; 0x28
800280e8:	e59f20d4 	ldr	r2, [pc, #212]	; 800281c4 <trap_init+0x1e4>
800280ec:	e5832000 	str	r2, [r3]
800280f0:	e51b300c 	ldr	r3, [fp, #-12]
800280f4:	e283302c 	add	r3, r3, #44	; 0x2c
800280f8:	e59f20c8 	ldr	r2, [pc, #200]	; 800281c8 <trap_init+0x1e8>
800280fc:	e5832000 	str	r2, [r3]
80028100:	e51b300c 	ldr	r3, [fp, #-12]
80028104:	e2833030 	add	r3, r3, #48	; 0x30
80028108:	e59f20bc 	ldr	r2, [pc, #188]	; 800281cc <trap_init+0x1ec>
8002810c:	e5832000 	str	r2, [r3]
80028110:	e51b300c 	ldr	r3, [fp, #-12]
80028114:	e2833034 	add	r3, r3, #52	; 0x34
80028118:	e59f20b0 	ldr	r2, [pc, #176]	; 800281d0 <trap_init+0x1f0>
8002811c:	e5832000 	str	r2, [r3]
80028120:	e51b300c 	ldr	r3, [fp, #-12]
80028124:	e2833038 	add	r3, r3, #56	; 0x38
80028128:	e59f20a4 	ldr	r2, [pc, #164]	; 800281d4 <trap_init+0x1f4>
8002812c:	e5832000 	str	r2, [r3]
80028130:	e51b300c 	ldr	r3, [fp, #-12]
80028134:	e283303c 	add	r3, r3, #60	; 0x3c
80028138:	e59f2098 	ldr	r2, [pc, #152]	; 800281d8 <trap_init+0x1f8>
8002813c:	e5832000 	str	r2, [r3]
80028140:	e3a03000 	mov	r3, #0
80028144:	e50b3008 	str	r3, [fp, #-8]
80028148:	ea000012 	b	80028198 <trap_init+0x1b8>
8002814c:	ebffe532 	bl	8002161c <alloc_page>
80028150:	e50b0010 	str	r0, [fp, #-16]
80028154:	e51b3010 	ldr	r3, [fp, #-16]
80028158:	e3530000 	cmp	r3, #0
8002815c:	1a000001 	bne	80028168 <trap_init+0x188>
80028160:	e59f0074 	ldr	r0, [pc, #116]	; 800281dc <trap_init+0x1fc>
80028164:	ebffe675 	bl	80021b40 <panic>
80028168:	e51b3008 	ldr	r3, [fp, #-8]
8002816c:	e1a03103 	lsl	r3, r3, #2
80028170:	e24b2004 	sub	r2, fp, #4
80028174:	e0823003 	add	r3, r2, r3
80028178:	e513301c 	ldr	r3, [r3, #-28]	; 0xffffffe4
8002817c:	e51b2010 	ldr	r2, [fp, #-16]
80028180:	e1a01002 	mov	r1, r2
80028184:	e1a00003 	mov	r0, r3
80028188:	ebffe1c1 	bl	80020894 <set_stk>
8002818c:	e51b3008 	ldr	r3, [fp, #-8]
80028190:	e2833001 	add	r3, r3, #1
80028194:	e50b3008 	str	r3, [fp, #-8]
80028198:	e51b3008 	ldr	r3, [fp, #-8]
8002819c:	e3530003 	cmp	r3, #3
800281a0:	9affffe9 	bls	8002814c <trap_init+0x16c>
800281a4:	e1a00000 	nop			; (mov r0, r0)
800281a8:	e24bd004 	sub	sp, fp, #4
800281ac:	e8bd8800 	pop	{fp, pc}
800281b0:	8002a82c 	.word	0x8002a82c
800281b4:	ffff0000 	.word	0xffff0000
800281b8:	8002a93c 	.word	0x8002a93c
800281bc:	80027cc4 	.word	0x80027cc4
800281c0:	80027cec 	.word	0x80027cec
800281c4:	80027c38 	.word	0x80027c38
800281c8:	80027d10 	.word	0x80027d10
800281cc:	80027d38 	.word	0x80027d38
800281d0:	80027d68 	.word	0x80027d68
800281d4:	80027c70 	.word	0x80027c70
800281d8:	80027d8c 	.word	0x80027d8c
800281dc:	8002a804 	.word	0x8002a804

800281e0 <dump_trapframe>:
800281e0:	e92d4800 	push	{fp, lr}
800281e4:	e28db004 	add	fp, sp, #4
800281e8:	e24dd008 	sub	sp, sp, #8
800281ec:	e50b0008 	str	r0, [fp, #-8]
800281f0:	e51b3008 	ldr	r3, [fp, #-8]
800281f4:	e5933008 	ldr	r3, [r3, #8]
800281f8:	e1a01003 	mov	r1, r3
800281fc:	e59f0138 	ldr	r0, [pc, #312]	; 8002833c <dump_trapframe+0x15c>
80028200:	ebffe5cd 	bl	8002193c <cprintf>
80028204:	e51b3008 	ldr	r3, [fp, #-8]
80028208:	e593300c 	ldr	r3, [r3, #12]
8002820c:	e1a01003 	mov	r1, r3
80028210:	e59f0128 	ldr	r0, [pc, #296]	; 80028340 <dump_trapframe+0x160>
80028214:	ebffe5c8 	bl	8002193c <cprintf>
80028218:	e51b3008 	ldr	r3, [fp, #-8]
8002821c:	e5933010 	ldr	r3, [r3, #16]
80028220:	e1a01003 	mov	r1, r3
80028224:	e59f0118 	ldr	r0, [pc, #280]	; 80028344 <dump_trapframe+0x164>
80028228:	ebffe5c3 	bl	8002193c <cprintf>
8002822c:	e51b3008 	ldr	r3, [fp, #-8]
80028230:	e5933014 	ldr	r3, [r3, #20]
80028234:	e1a01003 	mov	r1, r3
80028238:	e59f0108 	ldr	r0, [pc, #264]	; 80028348 <dump_trapframe+0x168>
8002823c:	ebffe5be 	bl	8002193c <cprintf>
80028240:	e51b3008 	ldr	r3, [fp, #-8]
80028244:	e5933018 	ldr	r3, [r3, #24]
80028248:	e1a01003 	mov	r1, r3
8002824c:	e59f00f8 	ldr	r0, [pc, #248]	; 8002834c <dump_trapframe+0x16c>
80028250:	ebffe5b9 	bl	8002193c <cprintf>
80028254:	e51b3008 	ldr	r3, [fp, #-8]
80028258:	e593301c 	ldr	r3, [r3, #28]
8002825c:	e1a01003 	mov	r1, r3
80028260:	e59f00e8 	ldr	r0, [pc, #232]	; 80028350 <dump_trapframe+0x170>
80028264:	ebffe5b4 	bl	8002193c <cprintf>
80028268:	e51b3008 	ldr	r3, [fp, #-8]
8002826c:	e5933020 	ldr	r3, [r3, #32]
80028270:	e1a01003 	mov	r1, r3
80028274:	e59f00d8 	ldr	r0, [pc, #216]	; 80028354 <dump_trapframe+0x174>
80028278:	ebffe5af 	bl	8002193c <cprintf>
8002827c:	e51b3008 	ldr	r3, [fp, #-8]
80028280:	e5933024 	ldr	r3, [r3, #36]	; 0x24
80028284:	e1a01003 	mov	r1, r3
80028288:	e59f00c8 	ldr	r0, [pc, #200]	; 80028358 <dump_trapframe+0x178>
8002828c:	ebffe5aa 	bl	8002193c <cprintf>
80028290:	e51b3008 	ldr	r3, [fp, #-8]
80028294:	e5933028 	ldr	r3, [r3, #40]	; 0x28
80028298:	e1a01003 	mov	r1, r3
8002829c:	e59f00b8 	ldr	r0, [pc, #184]	; 8002835c <dump_trapframe+0x17c>
800282a0:	ebffe5a5 	bl	8002193c <cprintf>
800282a4:	e51b3008 	ldr	r3, [fp, #-8]
800282a8:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
800282ac:	e1a01003 	mov	r1, r3
800282b0:	e59f00a8 	ldr	r0, [pc, #168]	; 80028360 <dump_trapframe+0x180>
800282b4:	ebffe5a0 	bl	8002193c <cprintf>
800282b8:	e51b3008 	ldr	r3, [fp, #-8]
800282bc:	e5933030 	ldr	r3, [r3, #48]	; 0x30
800282c0:	e1a01003 	mov	r1, r3
800282c4:	e59f0098 	ldr	r0, [pc, #152]	; 80028364 <dump_trapframe+0x184>
800282c8:	ebffe59b 	bl	8002193c <cprintf>
800282cc:	e51b3008 	ldr	r3, [fp, #-8]
800282d0:	e5933034 	ldr	r3, [r3, #52]	; 0x34
800282d4:	e1a01003 	mov	r1, r3
800282d8:	e59f0088 	ldr	r0, [pc, #136]	; 80028368 <dump_trapframe+0x188>
800282dc:	ebffe596 	bl	8002193c <cprintf>
800282e0:	e51b3008 	ldr	r3, [fp, #-8]
800282e4:	e5933038 	ldr	r3, [r3, #56]	; 0x38
800282e8:	e1a01003 	mov	r1, r3
800282ec:	e59f0078 	ldr	r0, [pc, #120]	; 8002836c <dump_trapframe+0x18c>
800282f0:	ebffe591 	bl	8002193c <cprintf>
800282f4:	e51b3008 	ldr	r3, [fp, #-8]
800282f8:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
800282fc:	e1a01003 	mov	r1, r3
80028300:	e59f0068 	ldr	r0, [pc, #104]	; 80028370 <dump_trapframe+0x190>
80028304:	ebffe58c 	bl	8002193c <cprintf>
80028308:	e51b3008 	ldr	r3, [fp, #-8]
8002830c:	e5933040 	ldr	r3, [r3, #64]	; 0x40
80028310:	e1a01003 	mov	r1, r3
80028314:	e59f0058 	ldr	r0, [pc, #88]	; 80028374 <dump_trapframe+0x194>
80028318:	ebffe587 	bl	8002193c <cprintf>
8002831c:	e51b3008 	ldr	r3, [fp, #-8]
80028320:	e5933044 	ldr	r3, [r3, #68]	; 0x44
80028324:	e1a01003 	mov	r1, r3
80028328:	e59f0048 	ldr	r0, [pc, #72]	; 80028378 <dump_trapframe+0x198>
8002832c:	ebffe582 	bl	8002193c <cprintf>
80028330:	e1a00000 	nop			; (mov r0, r0)
80028334:	e24bd004 	sub	sp, fp, #4
80028338:	e8bd8800 	pop	{fp, pc}
8002833c:	8002a83c 	.word	0x8002a83c
80028340:	8002a84c 	.word	0x8002a84c
80028344:	8002a85c 	.word	0x8002a85c
80028348:	8002a86c 	.word	0x8002a86c
8002834c:	8002a87c 	.word	0x8002a87c
80028350:	8002a88c 	.word	0x8002a88c
80028354:	8002a89c 	.word	0x8002a89c
80028358:	8002a8ac 	.word	0x8002a8ac
8002835c:	8002a8bc 	.word	0x8002a8bc
80028360:	8002a8cc 	.word	0x8002a8cc
80028364:	8002a8dc 	.word	0x8002a8dc
80028368:	8002a8ec 	.word	0x8002a8ec
8002836c:	8002a8fc 	.word	0x8002a8fc
80028370:	8002a90c 	.word	0x8002a90c
80028374:	8002a91c 	.word	0x8002a91c
80028378:	8002a92c 	.word	0x8002a92c

8002837c <v2p>:
8002837c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80028380:	e28db000 	add	fp, sp, #0
80028384:	e24dd00c 	sub	sp, sp, #12
80028388:	e50b0008 	str	r0, [fp, #-8]
8002838c:	e51b3008 	ldr	r3, [fp, #-8]
80028390:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
80028394:	e1a00003 	mov	r0, r3
80028398:	e28bd000 	add	sp, fp, #0
8002839c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800283a0:	e12fff1e 	bx	lr

800283a4 <p2v>:
800283a4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800283a8:	e28db000 	add	fp, sp, #0
800283ac:	e24dd00c 	sub	sp, sp, #12
800283b0:	e50b0008 	str	r0, [fp, #-8]
800283b4:	e51b3008 	ldr	r3, [fp, #-8]
800283b8:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
800283bc:	e1a00003 	mov	r0, r3
800283c0:	e28bd000 	add	sp, fp, #0
800283c4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800283c8:	e12fff1e 	bx	lr

800283cc <init_vmm>:
800283cc:	e92d4800 	push	{fp, lr}
800283d0:	e28db004 	add	fp, sp, #4
800283d4:	e59f1018 	ldr	r1, [pc, #24]	; 800283f4 <init_vmm+0x28>
800283d8:	e59f0018 	ldr	r0, [pc, #24]	; 800283f8 <init_vmm+0x2c>
800283dc:	ebfff673 	bl	80025db0 <initlock>
800283e0:	e59f3010 	ldr	r3, [pc, #16]	; 800283f8 <init_vmm+0x2c>
800283e4:	e3a02000 	mov	r2, #0
800283e8:	e5832034 	str	r2, [r3, #52]	; 0x34
800283ec:	e1a00000 	nop			; (mov r0, r0)
800283f0:	e8bd8800 	pop	{fp, pc}
800283f4:	8002a940 	.word	0x8002a940
800283f8:	800b0658 	.word	0x800b0658

800283fc <_kpt_free>:
800283fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80028400:	e28db000 	add	fp, sp, #0
80028404:	e24dd014 	sub	sp, sp, #20
80028408:	e50b0010 	str	r0, [fp, #-16]
8002840c:	e51b3010 	ldr	r3, [fp, #-16]
80028410:	e50b3008 	str	r3, [fp, #-8]
80028414:	e59f3024 	ldr	r3, [pc, #36]	; 80028440 <_kpt_free+0x44>
80028418:	e5932034 	ldr	r2, [r3, #52]	; 0x34
8002841c:	e51b3008 	ldr	r3, [fp, #-8]
80028420:	e5832000 	str	r2, [r3]
80028424:	e59f2014 	ldr	r2, [pc, #20]	; 80028440 <_kpt_free+0x44>
80028428:	e51b3008 	ldr	r3, [fp, #-8]
8002842c:	e5823034 	str	r3, [r2, #52]	; 0x34
80028430:	e1a00000 	nop			; (mov r0, r0)
80028434:	e28bd000 	add	sp, fp, #0
80028438:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8002843c:	e12fff1e 	bx	lr
80028440:	800b0658 	.word	0x800b0658

80028444 <kpt_free>:
80028444:	e92d4800 	push	{fp, lr}
80028448:	e28db004 	add	fp, sp, #4
8002844c:	e24dd008 	sub	sp, sp, #8
80028450:	e50b0008 	str	r0, [fp, #-8]
80028454:	e51b3008 	ldr	r3, [fp, #-8]
80028458:	e59f2034 	ldr	r2, [pc, #52]	; 80028494 <kpt_free+0x50>
8002845c:	e1530002 	cmp	r3, r2
80028460:	9a000003 	bls	80028474 <kpt_free+0x30>
80028464:	e3a0100a 	mov	r1, #10
80028468:	e51b0008 	ldr	r0, [fp, #-8]
8002846c:	ebffe43e 	bl	8002156c <kfree>
80028470:	ea000005 	b	8002848c <kpt_free+0x48>
80028474:	e59f001c 	ldr	r0, [pc, #28]	; 80028498 <kpt_free+0x54>
80028478:	ebfff65e 	bl	80025df8 <acquire>
8002847c:	e51b0008 	ldr	r0, [fp, #-8]
80028480:	ebffffdd 	bl	800283fc <_kpt_free>
80028484:	e59f000c 	ldr	r0, [pc, #12]	; 80028498 <kpt_free+0x54>
80028488:	ebfff665 	bl	80025e24 <release>
8002848c:	e24bd004 	sub	sp, fp, #4
80028490:	e8bd8800 	pop	{fp, pc}
80028494:	800fffff 	.word	0x800fffff
80028498:	800b0658 	.word	0x800b0658

8002849c <kpt_freerange>:
8002849c:	e92d4800 	push	{fp, lr}
800284a0:	e28db004 	add	fp, sp, #4
800284a4:	e24dd008 	sub	sp, sp, #8
800284a8:	e50b0008 	str	r0, [fp, #-8]
800284ac:	e50b100c 	str	r1, [fp, #-12]
800284b0:	ea000005 	b	800284cc <kpt_freerange+0x30>
800284b4:	e51b3008 	ldr	r3, [fp, #-8]
800284b8:	e1a00003 	mov	r0, r3
800284bc:	ebffffce 	bl	800283fc <_kpt_free>
800284c0:	e51b3008 	ldr	r3, [fp, #-8]
800284c4:	e2833b01 	add	r3, r3, #1024	; 0x400
800284c8:	e50b3008 	str	r3, [fp, #-8]
800284cc:	e51b2008 	ldr	r2, [fp, #-8]
800284d0:	e51b300c 	ldr	r3, [fp, #-12]
800284d4:	e1520003 	cmp	r2, r3
800284d8:	3afffff5 	bcc	800284b4 <kpt_freerange+0x18>
800284dc:	e1a00000 	nop			; (mov r0, r0)
800284e0:	e24bd004 	sub	sp, fp, #4
800284e4:	e8bd8800 	pop	{fp, pc}

800284e8 <kpt_alloc>:
800284e8:	e92d4800 	push	{fp, lr}
800284ec:	e28db004 	add	fp, sp, #4
800284f0:	e24dd008 	sub	sp, sp, #8
800284f4:	e59f007c 	ldr	r0, [pc, #124]	; 80028578 <kpt_alloc+0x90>
800284f8:	ebfff63e 	bl	80025df8 <acquire>
800284fc:	e59f3074 	ldr	r3, [pc, #116]	; 80028578 <kpt_alloc+0x90>
80028500:	e5933034 	ldr	r3, [r3, #52]	; 0x34
80028504:	e50b3008 	str	r3, [fp, #-8]
80028508:	e51b3008 	ldr	r3, [fp, #-8]
8002850c:	e3530000 	cmp	r3, #0
80028510:	0a000003 	beq	80028524 <kpt_alloc+0x3c>
80028514:	e51b3008 	ldr	r3, [fp, #-8]
80028518:	e5933000 	ldr	r3, [r3]
8002851c:	e59f2054 	ldr	r2, [pc, #84]	; 80028578 <kpt_alloc+0x90>
80028520:	e5823034 	str	r3, [r2, #52]	; 0x34
80028524:	e59f004c 	ldr	r0, [pc, #76]	; 80028578 <kpt_alloc+0x90>
80028528:	ebfff63d 	bl	80025e24 <release>
8002852c:	e51b3008 	ldr	r3, [fp, #-8]
80028530:	e3530000 	cmp	r3, #0
80028534:	1a000007 	bne	80028558 <kpt_alloc+0x70>
80028538:	e3a0000a 	mov	r0, #10
8002853c:	ebffe3b4 	bl	80021414 <kmalloc>
80028540:	e50b0008 	str	r0, [fp, #-8]
80028544:	e51b3008 	ldr	r3, [fp, #-8]
80028548:	e3530000 	cmp	r3, #0
8002854c:	1a000001 	bne	80028558 <kpt_alloc+0x70>
80028550:	e59f0024 	ldr	r0, [pc, #36]	; 8002857c <kpt_alloc+0x94>
80028554:	ebffe579 	bl	80021b40 <panic>
80028558:	e3a02b01 	mov	r2, #1024	; 0x400
8002855c:	e3a01000 	mov	r1, #0
80028560:	e51b0008 	ldr	r0, [fp, #-8]
80028564:	ebffdea5 	bl	80020000 <memset>
80028568:	e51b3008 	ldr	r3, [fp, #-8]
8002856c:	e1a00003 	mov	r0, r3
80028570:	e24bd004 	sub	sp, fp, #4
80028574:	e8bd8800 	pop	{fp, pc}
80028578:	800b0658 	.word	0x800b0658
8002857c:	8002a944 	.word	0x8002a944

80028580 <walkpgdir>:
80028580:	e92d4800 	push	{fp, lr}
80028584:	e28db004 	add	fp, sp, #4
80028588:	e24dd018 	sub	sp, sp, #24
8002858c:	e50b0010 	str	r0, [fp, #-16]
80028590:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80028594:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
80028598:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002859c:	e1a03a23 	lsr	r3, r3, #20
800285a0:	e1a03103 	lsl	r3, r3, #2
800285a4:	e51b2010 	ldr	r2, [fp, #-16]
800285a8:	e0823003 	add	r3, r2, r3
800285ac:	e50b300c 	str	r3, [fp, #-12]
800285b0:	e51b300c 	ldr	r3, [fp, #-12]
800285b4:	e5933000 	ldr	r3, [r3]
800285b8:	e2033003 	and	r3, r3, #3
800285bc:	e3530000 	cmp	r3, #0
800285c0:	0a000007 	beq	800285e4 <walkpgdir+0x64>
800285c4:	e51b300c 	ldr	r3, [fp, #-12]
800285c8:	e5933000 	ldr	r3, [r3]
800285cc:	e3c33fff 	bic	r3, r3, #1020	; 0x3fc
800285d0:	e3c33003 	bic	r3, r3, #3
800285d4:	e1a00003 	mov	r0, r3
800285d8:	ebffff71 	bl	800283a4 <p2v>
800285dc:	e50b0008 	str	r0, [fp, #-8]
800285e0:	ea000013 	b	80028634 <walkpgdir+0xb4>
800285e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800285e8:	e3530000 	cmp	r3, #0
800285ec:	0a000004 	beq	80028604 <walkpgdir+0x84>
800285f0:	ebffffbc 	bl	800284e8 <kpt_alloc>
800285f4:	e50b0008 	str	r0, [fp, #-8]
800285f8:	e51b3008 	ldr	r3, [fp, #-8]
800285fc:	e3530000 	cmp	r3, #0
80028600:	1a000001 	bne	8002860c <walkpgdir+0x8c>
80028604:	e3a03000 	mov	r3, #0
80028608:	ea00000f 	b	8002864c <walkpgdir+0xcc>
8002860c:	e3a02b01 	mov	r2, #1024	; 0x400
80028610:	e3a01000 	mov	r1, #0
80028614:	e51b0008 	ldr	r0, [fp, #-8]
80028618:	ebffde78 	bl	80020000 <memset>
8002861c:	e51b0008 	ldr	r0, [fp, #-8]
80028620:	ebffff55 	bl	8002837c <v2p>
80028624:	e1a03000 	mov	r3, r0
80028628:	e3832001 	orr	r2, r3, #1
8002862c:	e51b300c 	ldr	r3, [fp, #-12]
80028630:	e5832000 	str	r2, [r3]
80028634:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028638:	e1a03623 	lsr	r3, r3, #12
8002863c:	e6ef3073 	uxtb	r3, r3
80028640:	e1a03103 	lsl	r3, r3, #2
80028644:	e51b2008 	ldr	r2, [fp, #-8]
80028648:	e0823003 	add	r3, r2, r3
8002864c:	e1a00003 	mov	r0, r3
80028650:	e24bd004 	sub	sp, fp, #4
80028654:	e8bd8800 	pop	{fp, pc}

80028658 <mappages>:
80028658:	e92d4800 	push	{fp, lr}
8002865c:	e28db004 	add	fp, sp, #4
80028660:	e24dd020 	sub	sp, sp, #32
80028664:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80028668:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
8002866c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80028670:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80028674:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028678:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
8002867c:	e3c3300f 	bic	r3, r3, #15
80028680:	e50b3008 	str	r3, [fp, #-8]
80028684:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80028688:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
8002868c:	e0823003 	add	r3, r2, r3
80028690:	e2433001 	sub	r3, r3, #1
80028694:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80028698:	e3c3300f 	bic	r3, r3, #15
8002869c:	e50b300c 	str	r3, [fp, #-12]
800286a0:	e3a02001 	mov	r2, #1
800286a4:	e51b1008 	ldr	r1, [fp, #-8]
800286a8:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800286ac:	ebffffb3 	bl	80028580 <walkpgdir>
800286b0:	e50b0010 	str	r0, [fp, #-16]
800286b4:	e51b3010 	ldr	r3, [fp, #-16]
800286b8:	e3530000 	cmp	r3, #0
800286bc:	1a000001 	bne	800286c8 <mappages+0x70>
800286c0:	e3e03000 	mvn	r3, #0
800286c4:	ea00001b 	b	80028738 <mappages+0xe0>
800286c8:	e51b3010 	ldr	r3, [fp, #-16]
800286cc:	e5933000 	ldr	r3, [r3]
800286d0:	e2033003 	and	r3, r3, #3
800286d4:	e3530000 	cmp	r3, #0
800286d8:	0a000001 	beq	800286e4 <mappages+0x8c>
800286dc:	e59f0060 	ldr	r0, [pc, #96]	; 80028744 <mappages+0xec>
800286e0:	ebffe516 	bl	80021b40 <panic>
800286e4:	e59b3004 	ldr	r3, [fp, #4]
800286e8:	e1a03203 	lsl	r3, r3, #4
800286ec:	e2032030 	and	r2, r3, #48	; 0x30
800286f0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
800286f4:	e1823003 	orr	r3, r2, r3
800286f8:	e383200e 	orr	r2, r3, #14
800286fc:	e51b3010 	ldr	r3, [fp, #-16]
80028700:	e5832000 	str	r2, [r3]
80028704:	e51b2008 	ldr	r2, [fp, #-8]
80028708:	e51b300c 	ldr	r3, [fp, #-12]
8002870c:	e1520003 	cmp	r2, r3
80028710:	0a000006 	beq	80028730 <mappages+0xd8>
80028714:	e51b3008 	ldr	r3, [fp, #-8]
80028718:	e2833a01 	add	r3, r3, #4096	; 0x1000
8002871c:	e50b3008 	str	r3, [fp, #-8]
80028720:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80028724:	e2833a01 	add	r3, r3, #4096	; 0x1000
80028728:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
8002872c:	eaffffdb 	b	800286a0 <mappages+0x48>
80028730:	e1a00000 	nop			; (mov r0, r0)
80028734:	e3a03000 	mov	r3, #0
80028738:	e1a00003 	mov	r0, r3
8002873c:	e24bd004 	sub	sp, fp, #4
80028740:	e8bd8800 	pop	{fp, pc}
80028744:	8002a954 	.word	0x8002a954

80028748 <flush_tlb>:
80028748:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8002874c:	e28db000 	add	fp, sp, #0
80028750:	e24dd00c 	sub	sp, sp, #12
80028754:	e3a03000 	mov	r3, #0
80028758:	e50b3008 	str	r3, [fp, #-8]
8002875c:	e51b3008 	ldr	r3, [fp, #-8]
80028760:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80028764:	e51b3008 	ldr	r3, [fp, #-8]
80028768:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
8002876c:	e51b3008 	ldr	r3, [fp, #-8]
80028770:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80028774:	e1a00000 	nop			; (mov r0, r0)
80028778:	e28bd000 	add	sp, fp, #0
8002877c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80028780:	e12fff1e 	bx	lr

80028784 <switchuvm>:
80028784:	e92d4800 	push	{fp, lr}
80028788:	e28db004 	add	fp, sp, #4
8002878c:	e24dd010 	sub	sp, sp, #16
80028790:	e50b0010 	str	r0, [fp, #-16]
80028794:	ebffdfa2 	bl	80020624 <pushcli>
80028798:	e51b3010 	ldr	r3, [fp, #-16]
8002879c:	e5933004 	ldr	r3, [r3, #4]
800287a0:	e3530000 	cmp	r3, #0
800287a4:	1a000001 	bne	800287b0 <switchuvm+0x2c>
800287a8:	e59f002c 	ldr	r0, [pc, #44]	; 800287dc <switchuvm+0x58>
800287ac:	ebffe4e3 	bl	80021b40 <panic>
800287b0:	e51b3010 	ldr	r3, [fp, #-16]
800287b4:	e5933004 	ldr	r3, [r3, #4]
800287b8:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
800287bc:	e50b3008 	str	r3, [fp, #-8]
800287c0:	e51b3008 	ldr	r3, [fp, #-8]
800287c4:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
800287c8:	ebffffde 	bl	80028748 <flush_tlb>
800287cc:	ebffdfa9 	bl	80020678 <popcli>
800287d0:	e1a00000 	nop			; (mov r0, r0)
800287d4:	e24bd004 	sub	sp, fp, #4
800287d8:	e8bd8800 	pop	{fp, pc}
800287dc:	8002a95c 	.word	0x8002a95c

800287e0 <inituvm>:
800287e0:	e92d4800 	push	{fp, lr}
800287e4:	e28db004 	add	fp, sp, #4
800287e8:	e24dd020 	sub	sp, sp, #32
800287ec:	e50b0010 	str	r0, [fp, #-16]
800287f0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
800287f4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
800287f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
800287fc:	e3530a01 	cmp	r3, #4096	; 0x1000
80028800:	3a000001 	bcc	8002880c <inituvm+0x2c>
80028804:	e59f005c 	ldr	r0, [pc, #92]	; 80028868 <inituvm+0x88>
80028808:	ebffe4cc 	bl	80021b40 <panic>
8002880c:	ebffe382 	bl	8002161c <alloc_page>
80028810:	e50b0008 	str	r0, [fp, #-8]
80028814:	e3a02a01 	mov	r2, #4096	; 0x1000
80028818:	e3a01000 	mov	r1, #0
8002881c:	e51b0008 	ldr	r0, [fp, #-8]
80028820:	ebffddf6 	bl	80020000 <memset>
80028824:	e51b0008 	ldr	r0, [fp, #-8]
80028828:	ebfffed3 	bl	8002837c <v2p>
8002882c:	e1a02000 	mov	r2, r0
80028830:	e3a03003 	mov	r3, #3
80028834:	e58d3000 	str	r3, [sp]
80028838:	e1a03002 	mov	r3, r2
8002883c:	e3a02a01 	mov	r2, #4096	; 0x1000
80028840:	e3a01000 	mov	r1, #0
80028844:	e51b0010 	ldr	r0, [fp, #-16]
80028848:	ebffff82 	bl	80028658 <mappages>
8002884c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80028850:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80028854:	e51b0008 	ldr	r0, [fp, #-8]
80028858:	ebffde59 	bl	800201c4 <memmove>
8002885c:	e1a00000 	nop			; (mov r0, r0)
80028860:	e24bd004 	sub	sp, fp, #4
80028864:	e8bd8800 	pop	{fp, pc}
80028868:	8002a970 	.word	0x8002a970

8002886c <loaduvm>:
8002886c:	e92d4800 	push	{fp, lr}
80028870:	e28db004 	add	fp, sp, #4
80028874:	e24dd020 	sub	sp, sp, #32
80028878:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8002887c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80028880:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80028884:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80028888:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
8002888c:	e1a03a03 	lsl	r3, r3, #20
80028890:	e1a03a23 	lsr	r3, r3, #20
80028894:	e3530000 	cmp	r3, #0
80028898:	0a000001 	beq	800288a4 <loaduvm+0x38>
8002889c:	e59f00f0 	ldr	r0, [pc, #240]	; 80028994 <loaduvm+0x128>
800288a0:	ebffe4a6 	bl	80021b40 <panic>
800288a4:	e3a03000 	mov	r3, #0
800288a8:	e50b3008 	str	r3, [fp, #-8]
800288ac:	ea000030 	b	80028974 <loaduvm+0x108>
800288b0:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
800288b4:	e51b3008 	ldr	r3, [fp, #-8]
800288b8:	e0823003 	add	r3, r2, r3
800288bc:	e3a02000 	mov	r2, #0
800288c0:	e1a01003 	mov	r1, r3
800288c4:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
800288c8:	ebffff2c 	bl	80028580 <walkpgdir>
800288cc:	e50b0010 	str	r0, [fp, #-16]
800288d0:	e51b3010 	ldr	r3, [fp, #-16]
800288d4:	e3530000 	cmp	r3, #0
800288d8:	1a000001 	bne	800288e4 <loaduvm+0x78>
800288dc:	e59f00b4 	ldr	r0, [pc, #180]	; 80028998 <loaduvm+0x12c>
800288e0:	ebffe496 	bl	80021b40 <panic>
800288e4:	e51b3010 	ldr	r3, [fp, #-16]
800288e8:	e5933000 	ldr	r3, [r3]
800288ec:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800288f0:	e3c3300f 	bic	r3, r3, #15
800288f4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
800288f8:	e59b2004 	ldr	r2, [fp, #4]
800288fc:	e51b3008 	ldr	r3, [fp, #-8]
80028900:	e0423003 	sub	r3, r2, r3
80028904:	e3530a01 	cmp	r3, #4096	; 0x1000
80028908:	2a000004 	bcs	80028920 <loaduvm+0xb4>
8002890c:	e59b2004 	ldr	r2, [fp, #4]
80028910:	e51b3008 	ldr	r3, [fp, #-8]
80028914:	e0423003 	sub	r3, r2, r3
80028918:	e50b300c 	str	r3, [fp, #-12]
8002891c:	ea000001 	b	80028928 <loaduvm+0xbc>
80028920:	e3a03a01 	mov	r3, #4096	; 0x1000
80028924:	e50b300c 	str	r3, [fp, #-12]
80028928:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002892c:	ebfffe9c 	bl	800283a4 <p2v>
80028930:	e1a01000 	mov	r1, r0
80028934:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80028938:	e51b3008 	ldr	r3, [fp, #-8]
8002893c:	e0822003 	add	r2, r2, r3
80028940:	e51b300c 	ldr	r3, [fp, #-12]
80028944:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
80028948:	ebffebb6 	bl	80023828 <readi>
8002894c:	e1a03000 	mov	r3, r0
80028950:	e1a02003 	mov	r2, r3
80028954:	e51b300c 	ldr	r3, [fp, #-12]
80028958:	e1530002 	cmp	r3, r2
8002895c:	0a000001 	beq	80028968 <loaduvm+0xfc>
80028960:	e3e03000 	mvn	r3, #0
80028964:	ea000007 	b	80028988 <loaduvm+0x11c>
80028968:	e51b3008 	ldr	r3, [fp, #-8]
8002896c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80028970:	e50b3008 	str	r3, [fp, #-8]
80028974:	e51b2008 	ldr	r2, [fp, #-8]
80028978:	e59b3004 	ldr	r3, [fp, #4]
8002897c:	e1520003 	cmp	r2, r3
80028980:	3affffca 	bcc	800288b0 <loaduvm+0x44>
80028984:	e3a03000 	mov	r3, #0
80028988:	e1a00003 	mov	r0, r3
8002898c:	e24bd004 	sub	sp, fp, #4
80028990:	e8bd8800 	pop	{fp, pc}
80028994:	8002a98c 	.word	0x8002a98c
80028998:	8002a9b0 	.word	0x8002a9b0

8002899c <allocuvm>:
8002899c:	e92d4810 	push	{r4, fp, lr}
800289a0:	e28db008 	add	fp, sp, #8
800289a4:	e24dd024 	sub	sp, sp, #36	; 0x24
800289a8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
800289ac:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
800289b0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
800289b4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
800289b8:	e373021f 	cmn	r3, #-268435455	; 0xf0000001
800289bc:	9a000001 	bls	800289c8 <allocuvm+0x2c>
800289c0:	e3a03000 	mov	r3, #0
800289c4:	ea000030 	b	80028a8c <allocuvm+0xf0>
800289c8:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
800289cc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800289d0:	e1520003 	cmp	r2, r3
800289d4:	2a000001 	bcs	800289e0 <allocuvm+0x44>
800289d8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800289dc:	ea00002a 	b	80028a8c <allocuvm+0xf0>
800289e0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
800289e4:	e2833eff 	add	r3, r3, #4080	; 0xff0
800289e8:	e283300f 	add	r3, r3, #15
800289ec:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
800289f0:	e3c3300f 	bic	r3, r3, #15
800289f4:	e50b3010 	str	r3, [fp, #-16]
800289f8:	ea00001e 	b	80028a78 <allocuvm+0xdc>
800289fc:	ebffe306 	bl	8002161c <alloc_page>
80028a00:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80028a04:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028a08:	e3530000 	cmp	r3, #0
80028a0c:	1a000007 	bne	80028a30 <allocuvm+0x94>
80028a10:	e59f0080 	ldr	r0, [pc, #128]	; 80028a98 <allocuvm+0xfc>
80028a14:	ebffe3c8 	bl	8002193c <cprintf>
80028a18:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80028a1c:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
80028a20:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80028a24:	eb00001c 	bl	80028a9c <deallocuvm>
80028a28:	e3a03000 	mov	r3, #0
80028a2c:	ea000016 	b	80028a8c <allocuvm+0xf0>
80028a30:	e3a02a01 	mov	r2, #4096	; 0x1000
80028a34:	e3a01000 	mov	r1, #0
80028a38:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80028a3c:	ebffdd6f 	bl	80020000 <memset>
80028a40:	e51b4010 	ldr	r4, [fp, #-16]
80028a44:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80028a48:	ebfffe4b 	bl	8002837c <v2p>
80028a4c:	e1a02000 	mov	r2, r0
80028a50:	e3a03003 	mov	r3, #3
80028a54:	e58d3000 	str	r3, [sp]
80028a58:	e1a03002 	mov	r3, r2
80028a5c:	e3a02a01 	mov	r2, #4096	; 0x1000
80028a60:	e1a01004 	mov	r1, r4
80028a64:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80028a68:	ebfffefa 	bl	80028658 <mappages>
80028a6c:	e51b3010 	ldr	r3, [fp, #-16]
80028a70:	e2833a01 	add	r3, r3, #4096	; 0x1000
80028a74:	e50b3010 	str	r3, [fp, #-16]
80028a78:	e51b2010 	ldr	r2, [fp, #-16]
80028a7c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80028a80:	e1520003 	cmp	r2, r3
80028a84:	3affffdc 	bcc	800289fc <allocuvm+0x60>
80028a88:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80028a8c:	e1a00003 	mov	r0, r3
80028a90:	e24bd008 	sub	sp, fp, #8
80028a94:	e8bd8810 	pop	{r4, fp, pc}
80028a98:	8002a9d0 	.word	0x8002a9d0

80028a9c <deallocuvm>:
80028a9c:	e92d4800 	push	{fp, lr}
80028aa0:	e28db004 	add	fp, sp, #4
80028aa4:	e24dd020 	sub	sp, sp, #32
80028aa8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80028aac:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80028ab0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80028ab4:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80028ab8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028abc:	e1520003 	cmp	r2, r3
80028ac0:	3a000001 	bcc	80028acc <deallocuvm+0x30>
80028ac4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028ac8:	ea000035 	b	80028ba4 <deallocuvm+0x108>
80028acc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80028ad0:	e2833eff 	add	r3, r3, #4080	; 0xff0
80028ad4:	e283300f 	add	r3, r3, #15
80028ad8:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80028adc:	e3c3300f 	bic	r3, r3, #15
80028ae0:	e50b3008 	str	r3, [fp, #-8]
80028ae4:	ea000029 	b	80028b90 <deallocuvm+0xf4>
80028ae8:	e51b3008 	ldr	r3, [fp, #-8]
80028aec:	e3a02000 	mov	r2, #0
80028af0:	e1a01003 	mov	r1, r3
80028af4:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80028af8:	ebfffea0 	bl	80028580 <walkpgdir>
80028afc:	e50b000c 	str	r0, [fp, #-12]
80028b00:	e51b300c 	ldr	r3, [fp, #-12]
80028b04:	e3530000 	cmp	r3, #0
80028b08:	1a000006 	bne	80028b28 <deallocuvm+0x8c>
80028b0c:	e51b3008 	ldr	r3, [fp, #-8]
80028b10:	e243337f 	sub	r3, r3, #-67108863	; 0xfc000001
80028b14:	e243363f 	sub	r3, r3, #66060288	; 0x3f00000
80028b18:	e1a03a23 	lsr	r3, r3, #20
80028b1c:	e1a03a03 	lsl	r3, r3, #20
80028b20:	e50b3008 	str	r3, [fp, #-8]
80028b24:	ea000016 	b	80028b84 <deallocuvm+0xe8>
80028b28:	e51b300c 	ldr	r3, [fp, #-12]
80028b2c:	e5933000 	ldr	r3, [r3]
80028b30:	e2033003 	and	r3, r3, #3
80028b34:	e3530000 	cmp	r3, #0
80028b38:	0a000011 	beq	80028b84 <deallocuvm+0xe8>
80028b3c:	e51b300c 	ldr	r3, [fp, #-12]
80028b40:	e5933000 	ldr	r3, [r3]
80028b44:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80028b48:	e3c3300f 	bic	r3, r3, #15
80028b4c:	e50b3010 	str	r3, [fp, #-16]
80028b50:	e51b3010 	ldr	r3, [fp, #-16]
80028b54:	e3530000 	cmp	r3, #0
80028b58:	1a000001 	bne	80028b64 <deallocuvm+0xc8>
80028b5c:	e59f004c 	ldr	r0, [pc, #76]	; 80028bb0 <deallocuvm+0x114>
80028b60:	ebffe3f6 	bl	80021b40 <panic>
80028b64:	e51b0010 	ldr	r0, [fp, #-16]
80028b68:	ebfffe0d 	bl	800283a4 <p2v>
80028b6c:	e1a03000 	mov	r3, r0
80028b70:	e1a00003 	mov	r0, r3
80028b74:	ebffe29e 	bl	800215f4 <free_page>
80028b78:	e51b300c 	ldr	r3, [fp, #-12]
80028b7c:	e3a02000 	mov	r2, #0
80028b80:	e5832000 	str	r2, [r3]
80028b84:	e51b3008 	ldr	r3, [fp, #-8]
80028b88:	e2833a01 	add	r3, r3, #4096	; 0x1000
80028b8c:	e50b3008 	str	r3, [fp, #-8]
80028b90:	e51b2008 	ldr	r2, [fp, #-8]
80028b94:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028b98:	e1520003 	cmp	r2, r3
80028b9c:	3affffd1 	bcc	80028ae8 <deallocuvm+0x4c>
80028ba0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80028ba4:	e1a00003 	mov	r0, r3
80028ba8:	e24bd004 	sub	sp, fp, #4
80028bac:	e8bd8800 	pop	{fp, pc}
80028bb0:	8002a9e8 	.word	0x8002a9e8

80028bb4 <freevm>:
80028bb4:	e92d4800 	push	{fp, lr}
80028bb8:	e28db004 	add	fp, sp, #4
80028bbc:	e24dd010 	sub	sp, sp, #16
80028bc0:	e50b0010 	str	r0, [fp, #-16]
80028bc4:	e51b3010 	ldr	r3, [fp, #-16]
80028bc8:	e3530000 	cmp	r3, #0
80028bcc:	1a000001 	bne	80028bd8 <freevm+0x24>
80028bd0:	e59f0098 	ldr	r0, [pc, #152]	; 80028c70 <freevm+0xbc>
80028bd4:	ebffe3d9 	bl	80021b40 <panic>
80028bd8:	e3a02000 	mov	r2, #0
80028bdc:	e3a01201 	mov	r1, #268435456	; 0x10000000
80028be0:	e51b0010 	ldr	r0, [fp, #-16]
80028be4:	ebffffac 	bl	80028a9c <deallocuvm>
80028be8:	e3a03000 	mov	r3, #0
80028bec:	e50b3008 	str	r3, [fp, #-8]
80028bf0:	ea000016 	b	80028c50 <freevm+0x9c>
80028bf4:	e51b3008 	ldr	r3, [fp, #-8]
80028bf8:	e1a03103 	lsl	r3, r3, #2
80028bfc:	e51b2010 	ldr	r2, [fp, #-16]
80028c00:	e0823003 	add	r3, r2, r3
80028c04:	e5933000 	ldr	r3, [r3]
80028c08:	e2033003 	and	r3, r3, #3
80028c0c:	e3530000 	cmp	r3, #0
80028c10:	0a00000b 	beq	80028c44 <freevm+0x90>
80028c14:	e51b3008 	ldr	r3, [fp, #-8]
80028c18:	e1a03103 	lsl	r3, r3, #2
80028c1c:	e51b2010 	ldr	r2, [fp, #-16]
80028c20:	e0823003 	add	r3, r2, r3
80028c24:	e5933000 	ldr	r3, [r3]
80028c28:	e3c33fff 	bic	r3, r3, #1020	; 0x3fc
80028c2c:	e3c33003 	bic	r3, r3, #3
80028c30:	e1a00003 	mov	r0, r3
80028c34:	ebfffdda 	bl	800283a4 <p2v>
80028c38:	e50b000c 	str	r0, [fp, #-12]
80028c3c:	e51b000c 	ldr	r0, [fp, #-12]
80028c40:	ebfffdff 	bl	80028444 <kpt_free>
80028c44:	e51b3008 	ldr	r3, [fp, #-8]
80028c48:	e2833001 	add	r3, r3, #1
80028c4c:	e50b3008 	str	r3, [fp, #-8]
80028c50:	e51b3008 	ldr	r3, [fp, #-8]
80028c54:	e35300ff 	cmp	r3, #255	; 0xff
80028c58:	9affffe5 	bls	80028bf4 <freevm+0x40>
80028c5c:	e51b0010 	ldr	r0, [fp, #-16]
80028c60:	ebfffdf7 	bl	80028444 <kpt_free>
80028c64:	e1a00000 	nop			; (mov r0, r0)
80028c68:	e24bd004 	sub	sp, fp, #4
80028c6c:	e8bd8800 	pop	{fp, pc}
80028c70:	8002a9f4 	.word	0x8002a9f4

80028c74 <clearpteu>:
80028c74:	e92d4800 	push	{fp, lr}
80028c78:	e28db004 	add	fp, sp, #4
80028c7c:	e24dd010 	sub	sp, sp, #16
80028c80:	e50b0010 	str	r0, [fp, #-16]
80028c84:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80028c88:	e3a02000 	mov	r2, #0
80028c8c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80028c90:	e51b0010 	ldr	r0, [fp, #-16]
80028c94:	ebfffe39 	bl	80028580 <walkpgdir>
80028c98:	e50b0008 	str	r0, [fp, #-8]
80028c9c:	e51b3008 	ldr	r3, [fp, #-8]
80028ca0:	e3530000 	cmp	r3, #0
80028ca4:	1a000001 	bne	80028cb0 <clearpteu+0x3c>
80028ca8:	e59f0024 	ldr	r0, [pc, #36]	; 80028cd4 <clearpteu+0x60>
80028cac:	ebffe3a3 	bl	80021b40 <panic>
80028cb0:	e51b3008 	ldr	r3, [fp, #-8]
80028cb4:	e5933000 	ldr	r3, [r3]
80028cb8:	e3c33030 	bic	r3, r3, #48	; 0x30
80028cbc:	e3832010 	orr	r2, r3, #16
80028cc0:	e51b3008 	ldr	r3, [fp, #-8]
80028cc4:	e5832000 	str	r2, [r3]
80028cc8:	e1a00000 	nop			; (mov r0, r0)
80028ccc:	e24bd004 	sub	sp, fp, #4
80028cd0:	e8bd8800 	pop	{fp, pc}
80028cd4:	8002aa08 	.word	0x8002aa08

80028cd8 <copyuvm>:
80028cd8:	e92d4810 	push	{r4, fp, lr}
80028cdc:	e28db008 	add	fp, sp, #8
80028ce0:	e24dd02c 	sub	sp, sp, #44	; 0x2c
80028ce4:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
80028ce8:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
80028cec:	ebfffdfd 	bl	800284e8 <kpt_alloc>
80028cf0:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80028cf4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028cf8:	e3530000 	cmp	r3, #0
80028cfc:	1a000001 	bne	80028d08 <copyuvm+0x30>
80028d00:	e3a03000 	mov	r3, #0
80028d04:	ea000047 	b	80028e28 <copyuvm+0x150>
80028d08:	e3a03000 	mov	r3, #0
80028d0c:	e50b3010 	str	r3, [fp, #-16]
80028d10:	ea000038 	b	80028df8 <copyuvm+0x120>
80028d14:	e51b3010 	ldr	r3, [fp, #-16]
80028d18:	e3a02000 	mov	r2, #0
80028d1c:	e1a01003 	mov	r1, r3
80028d20:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80028d24:	ebfffe15 	bl	80028580 <walkpgdir>
80028d28:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80028d2c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028d30:	e3530000 	cmp	r3, #0
80028d34:	1a000001 	bne	80028d40 <copyuvm+0x68>
80028d38:	e59f00f4 	ldr	r0, [pc, #244]	; 80028e34 <copyuvm+0x15c>
80028d3c:	ebffe37f 	bl	80021b40 <panic>
80028d40:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028d44:	e5933000 	ldr	r3, [r3]
80028d48:	e2033003 	and	r3, r3, #3
80028d4c:	e3530000 	cmp	r3, #0
80028d50:	1a000001 	bne	80028d5c <copyuvm+0x84>
80028d54:	e59f00dc 	ldr	r0, [pc, #220]	; 80028e38 <copyuvm+0x160>
80028d58:	ebffe378 	bl	80021b40 <panic>
80028d5c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028d60:	e5933000 	ldr	r3, [r3]
80028d64:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80028d68:	e3c3300f 	bic	r3, r3, #15
80028d6c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80028d70:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80028d74:	e5933000 	ldr	r3, [r3]
80028d78:	e1a03223 	lsr	r3, r3, #4
80028d7c:	e2033003 	and	r3, r3, #3
80028d80:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80028d84:	ebffe224 	bl	8002161c <alloc_page>
80028d88:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
80028d8c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80028d90:	e3530000 	cmp	r3, #0
80028d94:	0a00001d 	beq	80028e10 <copyuvm+0x138>
80028d98:	e51b001c 	ldr	r0, [fp, #-28]	; 0xffffffe4
80028d9c:	ebfffd80 	bl	800283a4 <p2v>
80028da0:	e1a03000 	mov	r3, r0
80028da4:	e3a02a01 	mov	r2, #4096	; 0x1000
80028da8:	e1a01003 	mov	r1, r3
80028dac:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
80028db0:	ebffdd03 	bl	800201c4 <memmove>
80028db4:	e51b4010 	ldr	r4, [fp, #-16]
80028db8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
80028dbc:	ebfffd6e 	bl	8002837c <v2p>
80028dc0:	e1a02000 	mov	r2, r0
80028dc4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80028dc8:	e58d3000 	str	r3, [sp]
80028dcc:	e1a03002 	mov	r3, r2
80028dd0:	e3a02a01 	mov	r2, #4096	; 0x1000
80028dd4:	e1a01004 	mov	r1, r4
80028dd8:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80028ddc:	ebfffe1d 	bl	80028658 <mappages>
80028de0:	e1a03000 	mov	r3, r0
80028de4:	e3530000 	cmp	r3, #0
80028de8:	ba00000a 	blt	80028e18 <copyuvm+0x140>
80028dec:	e51b3010 	ldr	r3, [fp, #-16]
80028df0:	e2833a01 	add	r3, r3, #4096	; 0x1000
80028df4:	e50b3010 	str	r3, [fp, #-16]
80028df8:	e51b2010 	ldr	r2, [fp, #-16]
80028dfc:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
80028e00:	e1520003 	cmp	r2, r3
80028e04:	3affffc2 	bcc	80028d14 <copyuvm+0x3c>
80028e08:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028e0c:	ea000005 	b	80028e28 <copyuvm+0x150>
80028e10:	e1a00000 	nop			; (mov r0, r0)
80028e14:	ea000000 	b	80028e1c <copyuvm+0x144>
80028e18:	e1a00000 	nop			; (mov r0, r0)
80028e1c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80028e20:	ebffff63 	bl	80028bb4 <freevm>
80028e24:	e3a03000 	mov	r3, #0
80028e28:	e1a00003 	mov	r0, r3
80028e2c:	e24bd008 	sub	sp, fp, #8
80028e30:	e8bd8810 	pop	{r4, fp, pc}
80028e34:	8002aa14 	.word	0x8002aa14
80028e38:	8002aa30 	.word	0x8002aa30

80028e3c <uva2ka>:
80028e3c:	e92d4800 	push	{fp, lr}
80028e40:	e28db004 	add	fp, sp, #4
80028e44:	e24dd010 	sub	sp, sp, #16
80028e48:	e50b0010 	str	r0, [fp, #-16]
80028e4c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80028e50:	e3a02000 	mov	r2, #0
80028e54:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
80028e58:	e51b0010 	ldr	r0, [fp, #-16]
80028e5c:	ebfffdc7 	bl	80028580 <walkpgdir>
80028e60:	e50b0008 	str	r0, [fp, #-8]
80028e64:	e51b3008 	ldr	r3, [fp, #-8]
80028e68:	e5933000 	ldr	r3, [r3]
80028e6c:	e2033003 	and	r3, r3, #3
80028e70:	e3530000 	cmp	r3, #0
80028e74:	1a000001 	bne	80028e80 <uva2ka+0x44>
80028e78:	e3a03000 	mov	r3, #0
80028e7c:	ea00000e 	b	80028ebc <uva2ka+0x80>
80028e80:	e51b3008 	ldr	r3, [fp, #-8]
80028e84:	e5933000 	ldr	r3, [r3]
80028e88:	e1a03223 	lsr	r3, r3, #4
80028e8c:	e2033003 	and	r3, r3, #3
80028e90:	e3530003 	cmp	r3, #3
80028e94:	0a000001 	beq	80028ea0 <uva2ka+0x64>
80028e98:	e3a03000 	mov	r3, #0
80028e9c:	ea000006 	b	80028ebc <uva2ka+0x80>
80028ea0:	e51b3008 	ldr	r3, [fp, #-8]
80028ea4:	e5933000 	ldr	r3, [r3]
80028ea8:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80028eac:	e3c3300f 	bic	r3, r3, #15
80028eb0:	e1a00003 	mov	r0, r3
80028eb4:	ebfffd3a 	bl	800283a4 <p2v>
80028eb8:	e1a03000 	mov	r3, r0
80028ebc:	e1a00003 	mov	r0, r3
80028ec0:	e24bd004 	sub	sp, fp, #4
80028ec4:	e8bd8800 	pop	{fp, pc}

80028ec8 <copyout>:
80028ec8:	e92d4800 	push	{fp, lr}
80028ecc:	e28db004 	add	fp, sp, #4
80028ed0:	e24dd020 	sub	sp, sp, #32
80028ed4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80028ed8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80028edc:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80028ee0:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80028ee4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80028ee8:	e50b3008 	str	r3, [fp, #-8]
80028eec:	ea00002c 	b	80028fa4 <copyout+0xdc>
80028ef0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028ef4:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80028ef8:	e3c3300f 	bic	r3, r3, #15
80028efc:	e50b3010 	str	r3, [fp, #-16]
80028f00:	e51b3010 	ldr	r3, [fp, #-16]
80028f04:	e1a01003 	mov	r1, r3
80028f08:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
80028f0c:	ebffffca 	bl	80028e3c <uva2ka>
80028f10:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80028f14:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80028f18:	e3530000 	cmp	r3, #0
80028f1c:	1a000001 	bne	80028f28 <copyout+0x60>
80028f20:	e3e03000 	mvn	r3, #0
80028f24:	ea000022 	b	80028fb4 <copyout+0xec>
80028f28:	e51b2010 	ldr	r2, [fp, #-16]
80028f2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80028f30:	e0423003 	sub	r3, r2, r3
80028f34:	e2833a01 	add	r3, r3, #4096	; 0x1000
80028f38:	e50b300c 	str	r3, [fp, #-12]
80028f3c:	e51b200c 	ldr	r2, [fp, #-12]
80028f40:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80028f44:	e1520003 	cmp	r2, r3
80028f48:	9a000001 	bls	80028f54 <copyout+0x8c>
80028f4c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80028f50:	e50b300c 	str	r3, [fp, #-12]
80028f54:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80028f58:	e51b3010 	ldr	r3, [fp, #-16]
80028f5c:	e0423003 	sub	r3, r2, r3
80028f60:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80028f64:	e0823003 	add	r3, r2, r3
80028f68:	e51b200c 	ldr	r2, [fp, #-12]
80028f6c:	e51b1008 	ldr	r1, [fp, #-8]
80028f70:	e1a00003 	mov	r0, r3
80028f74:	ebffdc92 	bl	800201c4 <memmove>
80028f78:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
80028f7c:	e51b300c 	ldr	r3, [fp, #-12]
80028f80:	e0423003 	sub	r3, r2, r3
80028f84:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
80028f88:	e51b2008 	ldr	r2, [fp, #-8]
80028f8c:	e51b300c 	ldr	r3, [fp, #-12]
80028f90:	e0823003 	add	r3, r2, r3
80028f94:	e50b3008 	str	r3, [fp, #-8]
80028f98:	e51b3010 	ldr	r3, [fp, #-16]
80028f9c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80028fa0:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80028fa4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
80028fa8:	e3530000 	cmp	r3, #0
80028fac:	1affffcf 	bne	80028ef0 <copyout+0x28>
80028fb0:	e3a03000 	mov	r3, #0
80028fb4:	e1a00003 	mov	r0, r3
80028fb8:	e24bd004 	sub	sp, fp, #4
80028fbc:	e8bd8800 	pop	{fp, pc}

80028fc0 <paging_init>:
80028fc0:	e92d4800 	push	{fp, lr}
80028fc4:	e28db004 	add	fp, sp, #4
80028fc8:	e24dd010 	sub	sp, sp, #16
80028fcc:	e50b0008 	str	r0, [fp, #-8]
80028fd0:	e50b100c 	str	r1, [fp, #-12]
80028fd4:	e59f0034 	ldr	r0, [pc, #52]	; 80029010 <paging_init+0x50>
80028fd8:	e51b3008 	ldr	r3, [fp, #-8]
80028fdc:	e2833102 	add	r3, r3, #-2147483648	; 0x80000000
80028fe0:	e1a01003 	mov	r1, r3
80028fe4:	e51b200c 	ldr	r2, [fp, #-12]
80028fe8:	e51b3008 	ldr	r3, [fp, #-8]
80028fec:	e0422003 	sub	r2, r2, r3
80028ff0:	e3a03003 	mov	r3, #3
80028ff4:	e58d3000 	str	r3, [sp]
80028ff8:	e51b3008 	ldr	r3, [fp, #-8]
80028ffc:	ebfffd95 	bl	80028658 <mappages>
80029000:	ebfffdd0 	bl	80028748 <flush_tlb>
80029004:	e1a00000 	nop			; (mov r0, r0)
80029008:	e24bd004 	sub	sp, fp, #4
8002900c:	e8bd8800 	pop	{fp, pc}
80029010:	80014000 	.word	0x80014000

80029014 <default_isr>:
80029014:	e92d4800 	push	{fp, lr}
80029018:	e28db004 	add	fp, sp, #4
8002901c:	e24dd008 	sub	sp, sp, #8
80029020:	e50b0008 	str	r0, [fp, #-8]
80029024:	e50b100c 	str	r1, [fp, #-12]
80029028:	e51b100c 	ldr	r1, [fp, #-12]
8002902c:	e59f000c 	ldr	r0, [pc, #12]	; 80029040 <default_isr+0x2c>
80029030:	ebffe241 	bl	8002193c <cprintf>
80029034:	e1a00000 	nop			; (mov r0, r0)
80029038:	e24bd004 	sub	sp, fp, #4
8002903c:	e8bd8800 	pop	{fp, pc}
80029040:	8002aa4c 	.word	0x8002aa4c

80029044 <pic_init>:
80029044:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80029048:	e28db000 	add	fp, sp, #0
8002904c:	e24dd014 	sub	sp, sp, #20
80029050:	e50b0010 	str	r0, [fp, #-16]
80029054:	e59f205c 	ldr	r2, [pc, #92]	; 800290b8 <pic_init+0x74>
80029058:	e51b3010 	ldr	r3, [fp, #-16]
8002905c:	e5823000 	str	r3, [r2]
80029060:	e59f3050 	ldr	r3, [pc, #80]	; 800290b8 <pic_init+0x74>
80029064:	e5933000 	ldr	r3, [r3]
80029068:	e2833014 	add	r3, r3, #20
8002906c:	e3e02000 	mvn	r2, #0
80029070:	e5832000 	str	r2, [r3]
80029074:	e3a03000 	mov	r3, #0
80029078:	e50b3008 	str	r3, [fp, #-8]
8002907c:	ea000006 	b	8002909c <pic_init+0x58>
80029080:	e59f2034 	ldr	r2, [pc, #52]	; 800290bc <pic_init+0x78>
80029084:	e51b3008 	ldr	r3, [fp, #-8]
80029088:	e59f1030 	ldr	r1, [pc, #48]	; 800290c0 <pic_init+0x7c>
8002908c:	e7821103 	str	r1, [r2, r3, lsl #2]
80029090:	e51b3008 	ldr	r3, [fp, #-8]
80029094:	e2833001 	add	r3, r3, #1
80029098:	e50b3008 	str	r3, [fp, #-8]
8002909c:	e51b3008 	ldr	r3, [fp, #-8]
800290a0:	e353001f 	cmp	r3, #31
800290a4:	dafffff5 	ble	80029080 <pic_init+0x3c>
800290a8:	e1a00000 	nop			; (mov r0, r0)
800290ac:	e28bd000 	add	sp, fp, #0
800290b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800290b4:	e12fff1e 	bx	lr
800290b8:	800b0690 	.word	0x800b0690
800290bc:	800b0694 	.word	0x800b0694
800290c0:	80029014 	.word	0x80029014

800290c4 <pic_enable>:
800290c4:	e92d4800 	push	{fp, lr}
800290c8:	e28db004 	add	fp, sp, #4
800290cc:	e24dd008 	sub	sp, sp, #8
800290d0:	e50b0008 	str	r0, [fp, #-8]
800290d4:	e50b100c 	str	r1, [fp, #-12]
800290d8:	e51b3008 	ldr	r3, [fp, #-8]
800290dc:	e3530000 	cmp	r3, #0
800290e0:	ba000002 	blt	800290f0 <pic_enable+0x2c>
800290e4:	e51b3008 	ldr	r3, [fp, #-8]
800290e8:	e353001f 	cmp	r3, #31
800290ec:	da000001 	ble	800290f8 <pic_enable+0x34>
800290f0:	e59f0038 	ldr	r0, [pc, #56]	; 80029130 <pic_enable+0x6c>
800290f4:	ebffe291 	bl	80021b40 <panic>
800290f8:	e59f1034 	ldr	r1, [pc, #52]	; 80029134 <pic_enable+0x70>
800290fc:	e51b3008 	ldr	r3, [fp, #-8]
80029100:	e51b200c 	ldr	r2, [fp, #-12]
80029104:	e7812103 	str	r2, [r1, r3, lsl #2]
80029108:	e3a02001 	mov	r2, #1
8002910c:	e51b3008 	ldr	r3, [fp, #-8]
80029110:	e1a02312 	lsl	r2, r2, r3
80029114:	e59f301c 	ldr	r3, [pc, #28]	; 80029138 <pic_enable+0x74>
80029118:	e5933000 	ldr	r3, [r3]
8002911c:	e2833010 	add	r3, r3, #16
80029120:	e5832000 	str	r2, [r3]
80029124:	e1a00000 	nop			; (mov r0, r0)
80029128:	e24bd004 	sub	sp, fp, #4
8002912c:	e8bd8800 	pop	{fp, pc}
80029130:	8002aa68 	.word	0x8002aa68
80029134:	800b0694 	.word	0x800b0694
80029138:	800b0690 	.word	0x800b0690

8002913c <pic_disable>:
8002913c:	e92d4800 	push	{fp, lr}
80029140:	e28db004 	add	fp, sp, #4
80029144:	e24dd008 	sub	sp, sp, #8
80029148:	e50b0008 	str	r0, [fp, #-8]
8002914c:	e51b3008 	ldr	r3, [fp, #-8]
80029150:	e3530000 	cmp	r3, #0
80029154:	ba000002 	blt	80029164 <pic_disable+0x28>
80029158:	e51b3008 	ldr	r3, [fp, #-8]
8002915c:	e353001f 	cmp	r3, #31
80029160:	da000001 	ble	8002916c <pic_disable+0x30>
80029164:	e59f0038 	ldr	r0, [pc, #56]	; 800291a4 <pic_disable+0x68>
80029168:	ebffe274 	bl	80021b40 <panic>
8002916c:	e3a02001 	mov	r2, #1
80029170:	e51b3008 	ldr	r3, [fp, #-8]
80029174:	e1a02312 	lsl	r2, r2, r3
80029178:	e59f3028 	ldr	r3, [pc, #40]	; 800291a8 <pic_disable+0x6c>
8002917c:	e5933000 	ldr	r3, [r3]
80029180:	e2833014 	add	r3, r3, #20
80029184:	e5832000 	str	r2, [r3]
80029188:	e59f201c 	ldr	r2, [pc, #28]	; 800291ac <pic_disable+0x70>
8002918c:	e51b3008 	ldr	r3, [fp, #-8]
80029190:	e59f1018 	ldr	r1, [pc, #24]	; 800291b0 <pic_disable+0x74>
80029194:	e7821103 	str	r1, [r2, r3, lsl #2]
80029198:	e1a00000 	nop			; (mov r0, r0)
8002919c:	e24bd004 	sub	sp, fp, #4
800291a0:	e8bd8800 	pop	{fp, pc}
800291a4:	8002aa68 	.word	0x8002aa68
800291a8:	800b0690 	.word	0x800b0690
800291ac:	800b0694 	.word	0x800b0694
800291b0:	80029014 	.word	0x80029014

800291b4 <pic_dispatch>:
800291b4:	e92d4800 	push	{fp, lr}
800291b8:	e28db004 	add	fp, sp, #4
800291bc:	e24dd010 	sub	sp, sp, #16
800291c0:	e50b0010 	str	r0, [fp, #-16]
800291c4:	e59f3080 	ldr	r3, [pc, #128]	; 8002924c <pic_dispatch+0x98>
800291c8:	e5933000 	ldr	r3, [r3]
800291cc:	e5933000 	ldr	r3, [r3]
800291d0:	e50b300c 	str	r3, [fp, #-12]
800291d4:	e3a03000 	mov	r3, #0
800291d8:	e50b3008 	str	r3, [fp, #-8]
800291dc:	ea000010 	b	80029224 <pic_dispatch+0x70>
800291e0:	e3a02001 	mov	r2, #1
800291e4:	e51b3008 	ldr	r3, [fp, #-8]
800291e8:	e1a03312 	lsl	r3, r2, r3
800291ec:	e1a02003 	mov	r2, r3
800291f0:	e51b300c 	ldr	r3, [fp, #-12]
800291f4:	e0033002 	and	r3, r3, r2
800291f8:	e3530000 	cmp	r3, #0
800291fc:	0a000005 	beq	80029218 <pic_dispatch+0x64>
80029200:	e59f2048 	ldr	r2, [pc, #72]	; 80029250 <pic_dispatch+0x9c>
80029204:	e51b3008 	ldr	r3, [fp, #-8]
80029208:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002920c:	e51b1008 	ldr	r1, [fp, #-8]
80029210:	e51b0010 	ldr	r0, [fp, #-16]
80029214:	e12fff33 	blx	r3
80029218:	e51b3008 	ldr	r3, [fp, #-8]
8002921c:	e2833001 	add	r3, r3, #1
80029220:	e50b3008 	str	r3, [fp, #-8]
80029224:	e51b3008 	ldr	r3, [fp, #-8]
80029228:	e353001f 	cmp	r3, #31
8002922c:	daffffeb 	ble	800291e0 <pic_dispatch+0x2c>
80029230:	e59f3014 	ldr	r3, [pc, #20]	; 8002924c <pic_dispatch+0x98>
80029234:	e5933000 	ldr	r3, [r3]
80029238:	e5933000 	ldr	r3, [r3]
8002923c:	e50b300c 	str	r3, [fp, #-12]
80029240:	e1a00000 	nop			; (mov r0, r0)
80029244:	e24bd004 	sub	sp, fp, #4
80029248:	e8bd8800 	pop	{fp, pc}
8002924c:	800b0690 	.word	0x800b0690
80029250:	800b0694 	.word	0x800b0694

80029254 <ack_timer>:
80029254:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80029258:	e28db000 	add	fp, sp, #0
8002925c:	e24dd00c 	sub	sp, sp, #12
80029260:	e59f3020 	ldr	r3, [pc, #32]	; 80029288 <ack_timer+0x34>
80029264:	e50b3008 	str	r3, [fp, #-8]
80029268:	e51b3008 	ldr	r3, [fp, #-8]
8002926c:	e283300c 	add	r3, r3, #12
80029270:	e3a02001 	mov	r2, #1
80029274:	e5832000 	str	r2, [r3]
80029278:	e1a00000 	nop			; (mov r0, r0)
8002927c:	e28bd000 	add	sp, fp, #0
80029280:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80029284:	e12fff1e 	bx	lr
80029288:	901e2000 	.word	0x901e2000

8002928c <timer_init>:
8002928c:	e92d4800 	push	{fp, lr}
80029290:	e28db004 	add	fp, sp, #4
80029294:	e24dd010 	sub	sp, sp, #16
80029298:	e50b0010 	str	r0, [fp, #-16]
8002929c:	e59f3050 	ldr	r3, [pc, #80]	; 800292f4 <timer_init+0x68>
800292a0:	e50b3008 	str	r3, [fp, #-8]
800292a4:	e59f104c 	ldr	r1, [pc, #76]	; 800292f8 <timer_init+0x6c>
800292a8:	e59f004c 	ldr	r0, [pc, #76]	; 800292fc <timer_init+0x70>
800292ac:	ebfff2bf 	bl	80025db0 <initlock>
800292b0:	e51b1010 	ldr	r1, [fp, #-16]
800292b4:	e59f0044 	ldr	r0, [pc, #68]	; 80029300 <timer_init+0x74>
800292b8:	eb000304 	bl	80029ed0 <__divsi3>
800292bc:	e1a03000 	mov	r3, r0
800292c0:	e1a02003 	mov	r2, r3
800292c4:	e51b3008 	ldr	r3, [fp, #-8]
800292c8:	e5832000 	str	r2, [r3]
800292cc:	e51b3008 	ldr	r3, [fp, #-8]
800292d0:	e2833008 	add	r3, r3, #8
800292d4:	e3a020e2 	mov	r2, #226	; 0xe2
800292d8:	e5832000 	str	r2, [r3]
800292dc:	e59f1020 	ldr	r1, [pc, #32]	; 80029304 <timer_init+0x78>
800292e0:	e3a00004 	mov	r0, #4
800292e4:	ebffff76 	bl	800290c4 <pic_enable>
800292e8:	e1a00000 	nop			; (mov r0, r0)
800292ec:	e24bd004 	sub	sp, fp, #4
800292f0:	e8bd8800 	pop	{fp, pc}
800292f4:	901e2000 	.word	0x901e2000
800292f8:	8002aa84 	.word	0x8002aa84
800292fc:	800b0714 	.word	0x800b0714
80029300:	000f4240 	.word	0x000f4240
80029304:	80029308 	.word	0x80029308

80029308 <isr_timer>:
80029308:	e92d4800 	push	{fp, lr}
8002930c:	e28db004 	add	fp, sp, #4
80029310:	e24dd008 	sub	sp, sp, #8
80029314:	e50b0008 	str	r0, [fp, #-8]
80029318:	e50b100c 	str	r1, [fp, #-12]
8002931c:	e59f0034 	ldr	r0, [pc, #52]	; 80029358 <isr_timer+0x50>
80029320:	ebfff2b4 	bl	80025df8 <acquire>
80029324:	e59f3030 	ldr	r3, [pc, #48]	; 8002935c <isr_timer+0x54>
80029328:	e5933000 	ldr	r3, [r3]
8002932c:	e2833001 	add	r3, r3, #1
80029330:	e59f2024 	ldr	r2, [pc, #36]	; 8002935c <isr_timer+0x54>
80029334:	e5823000 	str	r3, [r2]
80029338:	e59f001c 	ldr	r0, [pc, #28]	; 8002935c <isr_timer+0x54>
8002933c:	ebfff1b2 	bl	80025a0c <wakeup>
80029340:	e59f0010 	ldr	r0, [pc, #16]	; 80029358 <isr_timer+0x50>
80029344:	ebfff2b6 	bl	80025e24 <release>
80029348:	ebffffc1 	bl	80029254 <ack_timer>
8002934c:	e1a00000 	nop			; (mov r0, r0)
80029350:	e24bd004 	sub	sp, fp, #4
80029354:	e8bd8800 	pop	{fp, pc}
80029358:	800b0714 	.word	0x800b0714
8002935c:	800b0748 	.word	0x800b0748

80029360 <micro_delay>:
80029360:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80029364:	e28db000 	add	fp, sp, #0
80029368:	e24dd014 	sub	sp, sp, #20
8002936c:	e50b0010 	str	r0, [fp, #-16]
80029370:	e59f3054 	ldr	r3, [pc, #84]	; 800293cc <micro_delay+0x6c>
80029374:	e50b3008 	str	r3, [fp, #-8]
80029378:	e51b3008 	ldr	r3, [fp, #-8]
8002937c:	e2833008 	add	r3, r3, #8
80029380:	e3a02082 	mov	r2, #130	; 0x82
80029384:	e5832000 	str	r2, [r3]
80029388:	e51b2010 	ldr	r2, [fp, #-16]
8002938c:	e51b3008 	ldr	r3, [fp, #-8]
80029390:	e5832000 	str	r2, [r3]
80029394:	e1a00000 	nop			; (mov r0, r0)
80029398:	e51b3008 	ldr	r3, [fp, #-8]
8002939c:	e2833004 	add	r3, r3, #4
800293a0:	e5933000 	ldr	r3, [r3]
800293a4:	e3530000 	cmp	r3, #0
800293a8:	cafffffa 	bgt	80029398 <micro_delay+0x38>
800293ac:	e51b3008 	ldr	r3, [fp, #-8]
800293b0:	e2833008 	add	r3, r3, #8
800293b4:	e3a02000 	mov	r2, #0
800293b8:	e5832000 	str	r2, [r3]
800293bc:	e1a00000 	nop			; (mov r0, r0)
800293c0:	e28bd000 	add	sp, fp, #0
800293c4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
800293c8:	e12fff1e 	bx	lr
800293cc:	901e2020 	.word	0x901e2020

800293d0 <uart_init>:
800293d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
800293d4:	e28db000 	add	fp, sp, #0
800293d8:	e24dd014 	sub	sp, sp, #20
800293dc:	e50b0010 	str	r0, [fp, #-16]
800293e0:	e59f20a4 	ldr	r2, [pc, #164]	; 8002948c <uart_init+0xbc>
800293e4:	e51b3010 	ldr	r3, [fp, #-16]
800293e8:	e5823000 	str	r3, [r2]
800293ec:	e59f3098 	ldr	r3, [pc, #152]	; 8002948c <uart_init+0xbc>
800293f0:	e5933000 	ldr	r3, [r3]
800293f4:	e2833024 	add	r3, r3, #36	; 0x24
800293f8:	e3a0204e 	mov	r2, #78	; 0x4e
800293fc:	e5832000 	str	r2, [r3]
80029400:	e3a03c96 	mov	r3, #38400	; 0x9600
80029404:	e50b3008 	str	r3, [fp, #-8]
80029408:	e51b3008 	ldr	r3, [fp, #-8]
8002940c:	e2833e96 	add	r3, r3, #2400	; 0x960
80029410:	e1a03103 	lsl	r3, r3, #2
80029414:	e59f2070 	ldr	r2, [pc, #112]	; 8002948c <uart_init+0xbc>
80029418:	e5922000 	ldr	r2, [r2]
8002941c:	e2821028 	add	r1, r2, #40	; 0x28
80029420:	e59f2068 	ldr	r2, [pc, #104]	; 80029490 <uart_init+0xc0>
80029424:	e0832293 	umull	r2, r3, r3, r2
80029428:	e1a035a3 	lsr	r3, r3, #11
8002942c:	e5813000 	str	r3, [r1]
80029430:	e59f3054 	ldr	r3, [pc, #84]	; 8002948c <uart_init+0xbc>
80029434:	e5933000 	ldr	r3, [r3]
80029438:	e2833030 	add	r3, r3, #48	; 0x30
8002943c:	e5933000 	ldr	r3, [r3]
80029440:	e59f2044 	ldr	r2, [pc, #68]	; 8002948c <uart_init+0xbc>
80029444:	e5922000 	ldr	r2, [r2]
80029448:	e2822030 	add	r2, r2, #48	; 0x30
8002944c:	e3833c03 	orr	r3, r3, #768	; 0x300
80029450:	e3833001 	orr	r3, r3, #1
80029454:	e5823000 	str	r3, [r2]
80029458:	e59f302c 	ldr	r3, [pc, #44]	; 8002948c <uart_init+0xbc>
8002945c:	e5933000 	ldr	r3, [r3]
80029460:	e283302c 	add	r3, r3, #44	; 0x2c
80029464:	e5932000 	ldr	r2, [r3]
80029468:	e59f301c 	ldr	r3, [pc, #28]	; 8002948c <uart_init+0xbc>
8002946c:	e5933000 	ldr	r3, [r3]
80029470:	e283302c 	add	r3, r3, #44	; 0x2c
80029474:	e3822010 	orr	r2, r2, #16
80029478:	e5832000 	str	r2, [r3]
8002947c:	e1a00000 	nop			; (mov r0, r0)
80029480:	e28bd000 	add	sp, fp, #0
80029484:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80029488:	e12fff1e 	bx	lr
8002948c:	800b074c 	.word	0x800b074c
80029490:	1b4e81b5 	.word	0x1b4e81b5

80029494 <uart_enable_rx>:
80029494:	e92d4800 	push	{fp, lr}
80029498:	e28db004 	add	fp, sp, #4
8002949c:	e59f3020 	ldr	r3, [pc, #32]	; 800294c4 <uart_enable_rx+0x30>
800294a0:	e5933000 	ldr	r3, [r3]
800294a4:	e2833038 	add	r3, r3, #56	; 0x38
800294a8:	e3a02010 	mov	r2, #16
800294ac:	e5832000 	str	r2, [r3]
800294b0:	e59f1010 	ldr	r1, [pc, #16]	; 800294c8 <uart_enable_rx+0x34>
800294b4:	e3a0000c 	mov	r0, #12
800294b8:	ebffff01 	bl	800290c4 <pic_enable>
800294bc:	e1a00000 	nop			; (mov r0, r0)
800294c0:	e8bd8800 	pop	{fp, pc}
800294c4:	800b074c 	.word	0x800b074c
800294c8:	80029570 	.word	0x80029570

800294cc <uartputc>:
800294cc:	e92d4800 	push	{fp, lr}
800294d0:	e28db004 	add	fp, sp, #4
800294d4:	e24dd008 	sub	sp, sp, #8
800294d8:	e50b0008 	str	r0, [fp, #-8]
800294dc:	ea000001 	b	800294e8 <uartputc+0x1c>
800294e0:	e3a0000a 	mov	r0, #10
800294e4:	ebffff9d 	bl	80029360 <micro_delay>
800294e8:	e59f3030 	ldr	r3, [pc, #48]	; 80029520 <uartputc+0x54>
800294ec:	e5933000 	ldr	r3, [r3]
800294f0:	e2833018 	add	r3, r3, #24
800294f4:	e5933000 	ldr	r3, [r3]
800294f8:	e2033020 	and	r3, r3, #32
800294fc:	e3530000 	cmp	r3, #0
80029500:	1afffff6 	bne	800294e0 <uartputc+0x14>
80029504:	e59f3014 	ldr	r3, [pc, #20]	; 80029520 <uartputc+0x54>
80029508:	e5933000 	ldr	r3, [r3]
8002950c:	e51b2008 	ldr	r2, [fp, #-8]
80029510:	e5832000 	str	r2, [r3]
80029514:	e1a00000 	nop			; (mov r0, r0)
80029518:	e24bd004 	sub	sp, fp, #4
8002951c:	e8bd8800 	pop	{fp, pc}
80029520:	800b074c 	.word	0x800b074c

80029524 <uartgetc>:
80029524:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80029528:	e28db000 	add	fp, sp, #0
8002952c:	e59f3038 	ldr	r3, [pc, #56]	; 8002956c <uartgetc+0x48>
80029530:	e5933000 	ldr	r3, [r3]
80029534:	e2833018 	add	r3, r3, #24
80029538:	e5933000 	ldr	r3, [r3]
8002953c:	e2033010 	and	r3, r3, #16
80029540:	e3530000 	cmp	r3, #0
80029544:	0a000001 	beq	80029550 <uartgetc+0x2c>
80029548:	e3e03000 	mvn	r3, #0
8002954c:	ea000002 	b	8002955c <uartgetc+0x38>
80029550:	e59f3014 	ldr	r3, [pc, #20]	; 8002956c <uartgetc+0x48>
80029554:	e5933000 	ldr	r3, [r3]
80029558:	e5933000 	ldr	r3, [r3]
8002955c:	e1a00003 	mov	r0, r3
80029560:	e28bd000 	add	sp, fp, #0
80029564:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80029568:	e12fff1e 	bx	lr
8002956c:	800b074c 	.word	0x800b074c

80029570 <isr_uart>:
80029570:	e92d4800 	push	{fp, lr}
80029574:	e28db004 	add	fp, sp, #4
80029578:	e24dd008 	sub	sp, sp, #8
8002957c:	e50b0008 	str	r0, [fp, #-8]
80029580:	e50b100c 	str	r1, [fp, #-12]
80029584:	e59f303c 	ldr	r3, [pc, #60]	; 800295c8 <isr_uart+0x58>
80029588:	e5933000 	ldr	r3, [r3]
8002958c:	e2833040 	add	r3, r3, #64	; 0x40
80029590:	e5933000 	ldr	r3, [r3]
80029594:	e2033010 	and	r3, r3, #16
80029598:	e3530000 	cmp	r3, #0
8002959c:	0a000001 	beq	800295a8 <isr_uart+0x38>
800295a0:	e59f0024 	ldr	r0, [pc, #36]	; 800295cc <isr_uart+0x5c>
800295a4:	ebffe197 	bl	80021c08 <consoleintr>
800295a8:	e59f3018 	ldr	r3, [pc, #24]	; 800295c8 <isr_uart+0x58>
800295ac:	e5933000 	ldr	r3, [r3]
800295b0:	e2833044 	add	r3, r3, #68	; 0x44
800295b4:	e3a02030 	mov	r2, #48	; 0x30
800295b8:	e5832000 	str	r2, [r3]
800295bc:	e1a00000 	nop			; (mov r0, r0)
800295c0:	e24bd004 	sub	sp, fp, #4
800295c4:	e8bd8800 	pop	{fp, pc}
800295c8:	800b074c 	.word	0x800b074c
800295cc:	80029524 	.word	0x80029524

800295d0 <create>:
800295d0:	e92d4800 	push	{fp, lr}
800295d4:	e28db004 	add	fp, sp, #4
800295d8:	e24dd030 	sub	sp, sp, #48	; 0x30
800295dc:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
800295e0:	e1a00001 	mov	r0, r1
800295e4:	e1a01002 	mov	r1, r2
800295e8:	e1a02003 	mov	r2, r3
800295ec:	e1a03000 	mov	r3, r0
800295f0:	e14b32ba 	strh	r3, [fp, #-42]	; 0xffffffd6
800295f4:	e1a03001 	mov	r3, r1
800295f8:	e14b32bc 	strh	r3, [fp, #-44]	; 0xffffffd4
800295fc:	e1a03002 	mov	r3, r2
80029600:	e14b32be 	strh	r3, [fp, #-46]	; 0xffffffd2
80029604:	e24b3020 	sub	r3, fp, #32
80029608:	e1a01003 	mov	r1, r3
8002960c:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
80029610:	ebffeab8 	bl	800240f8 <nameiparent>
80029614:	e50b0008 	str	r0, [fp, #-8]
80029618:	e51b3008 	ldr	r3, [fp, #-8]
8002961c:	e3530000 	cmp	r3, #0
80029620:	1a000001 	bne	8002962c <create+0x5c>
80029624:	e3a03000 	mov	r3, #0
80029628:	ea000063 	b	800297bc <create+0x1ec>
8002962c:	e51b0008 	ldr	r0, [fp, #-8]
80029630:	ebffe6d0 	bl	80023178 <ilock>
80029634:	e24b2010 	sub	r2, fp, #16
80029638:	e24b3020 	sub	r3, fp, #32
8002963c:	e1a01003 	mov	r1, r3
80029640:	e51b0008 	ldr	r0, [fp, #-8]
80029644:	ebffe986 	bl	80023c64 <dirlookup>
80029648:	e50b000c 	str	r0, [fp, #-12]
8002964c:	e51b300c 	ldr	r3, [fp, #-12]
80029650:	e3530000 	cmp	r3, #0
80029654:	0a000010 	beq	8002969c <create+0xcc>
80029658:	e51b0008 	ldr	r0, [fp, #-8]
8002965c:	ebffe786 	bl	8002347c <iunlockput>
80029660:	e51b000c 	ldr	r0, [fp, #-12]
80029664:	ebffe6c3 	bl	80023178 <ilock>
80029668:	e15b32fa 	ldrsh	r3, [fp, #-42]	; 0xffffffd6
8002966c:	e3530002 	cmp	r3, #2
80029670:	1a000005 	bne	8002968c <create+0xbc>
80029674:	e51b300c 	ldr	r3, [fp, #-12]
80029678:	e1d331f0 	ldrsh	r3, [r3, #16]
8002967c:	e3530002 	cmp	r3, #2
80029680:	1a000001 	bne	8002968c <create+0xbc>
80029684:	e51b300c 	ldr	r3, [fp, #-12]
80029688:	ea00004b 	b	800297bc <create+0x1ec>
8002968c:	e51b000c 	ldr	r0, [fp, #-12]
80029690:	ebffe779 	bl	8002347c <iunlockput>
80029694:	e3a03000 	mov	r3, #0
80029698:	ea000047 	b	800297bc <create+0x1ec>
8002969c:	e51b3008 	ldr	r3, [fp, #-8]
800296a0:	e5933000 	ldr	r3, [r3]
800296a4:	e15b22fa 	ldrsh	r2, [fp, #-42]	; 0xffffffd6
800296a8:	e1a01002 	mov	r1, r2
800296ac:	e1a00003 	mov	r0, r3
800296b0:	ebffe5d6 	bl	80022e10 <ialloc>
800296b4:	e50b000c 	str	r0, [fp, #-12]
800296b8:	e51b300c 	ldr	r3, [fp, #-12]
800296bc:	e3530000 	cmp	r3, #0
800296c0:	1a000001 	bne	800296cc <create+0xfc>
800296c4:	e59f00fc 	ldr	r0, [pc, #252]	; 800297c8 <create+0x1f8>
800296c8:	ebffe11c 	bl	80021b40 <panic>
800296cc:	e51b000c 	ldr	r0, [fp, #-12]
800296d0:	ebffe6a8 	bl	80023178 <ilock>
800296d4:	e51b300c 	ldr	r3, [fp, #-12]
800296d8:	e15b22bc 	ldrh	r2, [fp, #-44]	; 0xffffffd4
800296dc:	e1c321b2 	strh	r2, [r3, #18]
800296e0:	e51b300c 	ldr	r3, [fp, #-12]
800296e4:	e15b22be 	ldrh	r2, [fp, #-46]	; 0xffffffd2
800296e8:	e1c321b4 	strh	r2, [r3, #20]
800296ec:	e51b300c 	ldr	r3, [fp, #-12]
800296f0:	e3a02001 	mov	r2, #1
800296f4:	e1c321b6 	strh	r2, [r3, #22]
800296f8:	e51b000c 	ldr	r0, [fp, #-12]
800296fc:	ebffe603 	bl	80022f10 <iupdate>
80029700:	e15b32fa 	ldrsh	r3, [fp, #-42]	; 0xffffffd6
80029704:	e3530001 	cmp	r3, #1
80029708:	1a00001d 	bne	80029784 <create+0x1b4>
8002970c:	e51b3008 	ldr	r3, [fp, #-8]
80029710:	e1d331f6 	ldrsh	r3, [r3, #22]
80029714:	e6ff3073 	uxth	r3, r3
80029718:	e2833001 	add	r3, r3, #1
8002971c:	e6ff3073 	uxth	r3, r3
80029720:	e6bf2073 	sxth	r2, r3
80029724:	e51b3008 	ldr	r3, [fp, #-8]
80029728:	e1c321b6 	strh	r2, [r3, #22]
8002972c:	e51b0008 	ldr	r0, [fp, #-8]
80029730:	ebffe5f6 	bl	80022f10 <iupdate>
80029734:	e51b300c 	ldr	r3, [fp, #-12]
80029738:	e5933004 	ldr	r3, [r3, #4]
8002973c:	e1a02003 	mov	r2, r3
80029740:	e59f1084 	ldr	r1, [pc, #132]	; 800297cc <create+0x1fc>
80029744:	e51b000c 	ldr	r0, [fp, #-12]
80029748:	ebffe987 	bl	80023d6c <dirlink>
8002974c:	e1a03000 	mov	r3, r0
80029750:	e3530000 	cmp	r3, #0
80029754:	ba000008 	blt	8002977c <create+0x1ac>
80029758:	e51b3008 	ldr	r3, [fp, #-8]
8002975c:	e5933004 	ldr	r3, [r3, #4]
80029760:	e1a02003 	mov	r2, r3
80029764:	e59f1064 	ldr	r1, [pc, #100]	; 800297d0 <create+0x200>
80029768:	e51b000c 	ldr	r0, [fp, #-12]
8002976c:	ebffe97e 	bl	80023d6c <dirlink>
80029770:	e1a03000 	mov	r3, r0
80029774:	e3530000 	cmp	r3, #0
80029778:	aa000001 	bge	80029784 <create+0x1b4>
8002977c:	e59f0050 	ldr	r0, [pc, #80]	; 800297d4 <create+0x204>
80029780:	ebffe0ee 	bl	80021b40 <panic>
80029784:	e51b300c 	ldr	r3, [fp, #-12]
80029788:	e5932004 	ldr	r2, [r3, #4]
8002978c:	e24b3020 	sub	r3, fp, #32
80029790:	e1a01003 	mov	r1, r3
80029794:	e51b0008 	ldr	r0, [fp, #-8]
80029798:	ebffe973 	bl	80023d6c <dirlink>
8002979c:	e1a03000 	mov	r3, r0
800297a0:	e3530000 	cmp	r3, #0
800297a4:	aa000001 	bge	800297b0 <create+0x1e0>
800297a8:	e59f0028 	ldr	r0, [pc, #40]	; 800297d8 <create+0x208>
800297ac:	ebffe0e3 	bl	80021b40 <panic>
800297b0:	e51b0008 	ldr	r0, [fp, #-8]
800297b4:	ebffe730 	bl	8002347c <iunlockput>
800297b8:	e51b300c 	ldr	r3, [fp, #-12]
800297bc:	e1a00003 	mov	r0, r3
800297c0:	e24bd004 	sub	sp, fp, #4
800297c4:	e8bd8800 	pop	{fp, pc}
800297c8:	8002aa8c 	.word	0x8002aa8c
800297cc:	8002aa9c 	.word	0x8002aa9c
800297d0:	8002aaa0 	.word	0x8002aaa0
800297d4:	8002aaa4 	.word	0x8002aaa4
800297d8:	8002aab0 	.word	0x8002aab0

800297dc <suspend>:
800297dc:	e92d4800 	push	{fp, lr}
800297e0:	e28db004 	add	fp, sp, #4
800297e4:	e24dd080 	sub	sp, sp, #128	; 0x80
800297e8:	e50b0080 	str	r0, [fp, #-128]	; 0xffffff80
800297ec:	e50b1084 	str	r1, [fp, #-132]	; 0xffffff7c
800297f0:	e51b0080 	ldr	r0, [fp, #-128]	; 0xffffff80
800297f4:	ebfff14e 	bl	80025d34 <get_proc>
800297f8:	e50b000c 	str	r0, [fp, #-12]
800297fc:	e24b3084 	sub	r3, fp, #132	; 0x84
80029800:	e1a01003 	mov	r1, r3
80029804:	e3a00001 	mov	r0, #1
80029808:	ebfff22f 	bl	800260cc <argstr>
8002980c:	e3a03c02 	mov	r3, #512	; 0x200
80029810:	e50b3010 	str	r3, [fp, #-16]
80029814:	e51b3010 	ldr	r3, [fp, #-16]
80029818:	e2033c02 	and	r3, r3, #512	; 0x200
8002981c:	e3530000 	cmp	r3, #0
80029820:	0a00000c 	beq	80029858 <suspend+0x7c>
80029824:	ebffeafe 	bl	80024424 <begin_trans>
80029828:	e51b0084 	ldr	r0, [fp, #-132]	; 0xffffff7c
8002982c:	e3a03000 	mov	r3, #0
80029830:	e3a02000 	mov	r2, #0
80029834:	e3a01002 	mov	r1, #2
80029838:	ebffff64 	bl	800295d0 <create>
8002983c:	e50b0008 	str	r0, [fp, #-8]
80029840:	ebffeb0b 	bl	80024474 <commit_trans>
80029844:	e51b3008 	ldr	r3, [fp, #-8]
80029848:	e3530000 	cmp	r3, #0
8002984c:	1a000001 	bne	80029858 <suspend+0x7c>
80029850:	e3e03000 	mvn	r3, #0
80029854:	ea000092 	b	80029aa4 <suspend+0x2c8>
80029858:	ebffe339 	bl	80022544 <filealloc>
8002985c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80029860:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80029864:	e3530000 	cmp	r3, #0
80029868:	1a000008 	bne	80029890 <suspend+0xb4>
8002986c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80029870:	e3530000 	cmp	r3, #0
80029874:	0a000001 	beq	80029880 <suspend+0xa4>
80029878:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
8002987c:	ebffe36c 	bl	80022634 <fileclose>
80029880:	e51b0008 	ldr	r0, [fp, #-8]
80029884:	ebffe6fc 	bl	8002347c <iunlockput>
80029888:	e3e03000 	mvn	r3, #0
8002988c:	ea000084 	b	80029aa4 <suspend+0x2c8>
80029890:	e51b0008 	ldr	r0, [fp, #-8]
80029894:	ebffe69b 	bl	80023308 <iunlock>
80029898:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8002989c:	e3a02002 	mov	r2, #2
800298a0:	e5c32000 	strb	r2, [r3]
800298a4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800298a8:	e51b2008 	ldr	r2, [fp, #-8]
800298ac:	e5832010 	str	r2, [r3, #16]
800298b0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800298b4:	e3a02000 	mov	r2, #0
800298b8:	e5832014 	str	r2, [r3, #20]
800298bc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800298c0:	e3a02000 	mov	r2, #0
800298c4:	e5c32008 	strb	r2, [r3, #8]
800298c8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
800298cc:	e3a02001 	mov	r2, #1
800298d0:	e5c32009 	strb	r2, [r3, #9]
800298d4:	e51b300c 	ldr	r3, [fp, #-12]
800298d8:	e5933000 	ldr	r3, [r3]
800298dc:	e50b3078 	str	r3, [fp, #-120]	; 0xffffff88
800298e0:	e51b300c 	ldr	r3, [fp, #-12]
800298e4:	e5933018 	ldr	r3, [r3, #24]
800298e8:	e5933000 	ldr	r3, [r3]
800298ec:	e50b3074 	str	r3, [fp, #-116]	; 0xffffff8c
800298f0:	e51b300c 	ldr	r3, [fp, #-12]
800298f4:	e5933018 	ldr	r3, [r3, #24]
800298f8:	e5933004 	ldr	r3, [r3, #4]
800298fc:	e50b3070 	str	r3, [fp, #-112]	; 0xffffff90
80029900:	e51b300c 	ldr	r3, [fp, #-12]
80029904:	e5933018 	ldr	r3, [r3, #24]
80029908:	e5933044 	ldr	r3, [r3, #68]	; 0x44
8002990c:	e50b306c 	str	r3, [fp, #-108]	; 0xffffff94
80029910:	e51b300c 	ldr	r3, [fp, #-12]
80029914:	e5933018 	ldr	r3, [r3, #24]
80029918:	e5933008 	ldr	r3, [r3, #8]
8002991c:	e50b3068 	str	r3, [fp, #-104]	; 0xffffff98
80029920:	e51b300c 	ldr	r3, [fp, #-12]
80029924:	e5933018 	ldr	r3, [r3, #24]
80029928:	e593300c 	ldr	r3, [r3, #12]
8002992c:	e50b3064 	str	r3, [fp, #-100]	; 0xffffff9c
80029930:	e51b300c 	ldr	r3, [fp, #-12]
80029934:	e5933018 	ldr	r3, [r3, #24]
80029938:	e5933010 	ldr	r3, [r3, #16]
8002993c:	e50b3060 	str	r3, [fp, #-96]	; 0xffffffa0
80029940:	e51b300c 	ldr	r3, [fp, #-12]
80029944:	e5933018 	ldr	r3, [r3, #24]
80029948:	e5933014 	ldr	r3, [r3, #20]
8002994c:	e50b305c 	str	r3, [fp, #-92]	; 0xffffffa4
80029950:	e51b300c 	ldr	r3, [fp, #-12]
80029954:	e5933018 	ldr	r3, [r3, #24]
80029958:	e5933018 	ldr	r3, [r3, #24]
8002995c:	e50b3058 	str	r3, [fp, #-88]	; 0xffffffa8
80029960:	e51b300c 	ldr	r3, [fp, #-12]
80029964:	e5933018 	ldr	r3, [r3, #24]
80029968:	e593301c 	ldr	r3, [r3, #28]
8002996c:	e50b3054 	str	r3, [fp, #-84]	; 0xffffffac
80029970:	e51b300c 	ldr	r3, [fp, #-12]
80029974:	e5933018 	ldr	r3, [r3, #24]
80029978:	e5933020 	ldr	r3, [r3, #32]
8002997c:	e50b3050 	str	r3, [fp, #-80]	; 0xffffffb0
80029980:	e51b300c 	ldr	r3, [fp, #-12]
80029984:	e5933018 	ldr	r3, [r3, #24]
80029988:	e5933024 	ldr	r3, [r3, #36]	; 0x24
8002998c:	e50b304c 	str	r3, [fp, #-76]	; 0xffffffb4
80029990:	e51b300c 	ldr	r3, [fp, #-12]
80029994:	e5933018 	ldr	r3, [r3, #24]
80029998:	e5933028 	ldr	r3, [r3, #40]	; 0x28
8002999c:	e50b3048 	str	r3, [fp, #-72]	; 0xffffffb8
800299a0:	e51b300c 	ldr	r3, [fp, #-12]
800299a4:	e5933018 	ldr	r3, [r3, #24]
800299a8:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
800299ac:	e50b3044 	str	r3, [fp, #-68]	; 0xffffffbc
800299b0:	e51b300c 	ldr	r3, [fp, #-12]
800299b4:	e5933018 	ldr	r3, [r3, #24]
800299b8:	e5933030 	ldr	r3, [r3, #48]	; 0x30
800299bc:	e50b3040 	str	r3, [fp, #-64]	; 0xffffffc0
800299c0:	e51b300c 	ldr	r3, [fp, #-12]
800299c4:	e5933018 	ldr	r3, [r3, #24]
800299c8:	e5933034 	ldr	r3, [r3, #52]	; 0x34
800299cc:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
800299d0:	e51b300c 	ldr	r3, [fp, #-12]
800299d4:	e5933018 	ldr	r3, [r3, #24]
800299d8:	e5933038 	ldr	r3, [r3, #56]	; 0x38
800299dc:	e50b3038 	str	r3, [fp, #-56]	; 0xffffffc8
800299e0:	e51b300c 	ldr	r3, [fp, #-12]
800299e4:	e5933018 	ldr	r3, [r3, #24]
800299e8:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
800299ec:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
800299f0:	e51b300c 	ldr	r3, [fp, #-12]
800299f4:	e5933018 	ldr	r3, [r3, #24]
800299f8:	e5933040 	ldr	r3, [r3, #64]	; 0x40
800299fc:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
80029a00:	e51b300c 	ldr	r3, [fp, #-12]
80029a04:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
80029a08:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
80029a0c:	e51b300c 	ldr	r3, [fp, #-12]
80029a10:	e5933000 	ldr	r3, [r3]
80029a14:	e2433a02 	sub	r3, r3, #8192	; 0x2000
80029a18:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
80029a1c:	e51b300c 	ldr	r3, [fp, #-12]
80029a20:	e283106c 	add	r1, r3, #108	; 0x6c
80029a24:	e24b3078 	sub	r3, fp, #120	; 0x78
80029a28:	e283304c 	add	r3, r3, #76	; 0x4c
80029a2c:	e3a02010 	mov	r2, #16
80029a30:	e1a00003 	mov	r0, r3
80029a34:	ebffda5b 	bl	800203a8 <strncpy>
80029a38:	e51b000c 	ldr	r0, [fp, #-12]
80029a3c:	ebfffb50 	bl	80028784 <switchuvm>
80029a40:	e24b3078 	sub	r3, fp, #120	; 0x78
80029a44:	e3a02064 	mov	r2, #100	; 0x64
80029a48:	e1a01003 	mov	r1, r3
80029a4c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80029a50:	ebffe38c 	bl	80022888 <filewrite>
80029a54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80029a58:	e1a02003 	mov	r2, r3
80029a5c:	e3a01000 	mov	r1, #0
80029a60:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80029a64:	ebffe387 	bl	80022888 <filewrite>
80029a68:	e51b3078 	ldr	r3, [fp, #-120]	; 0xffffff88
80029a6c:	e2433a01 	sub	r3, r3, #4096	; 0x1000
80029a70:	e3a02a01 	mov	r2, #4096	; 0x1000
80029a74:	e1a01003 	mov	r1, r3
80029a78:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80029a7c:	ebffe381 	bl	80022888 <filewrite>
80029a80:	e59f3028 	ldr	r3, [pc, #40]	; 80029ab0 <suspend+0x2d4>
80029a84:	e5933000 	ldr	r3, [r3]
80029a88:	e1a00003 	mov	r0, r3
80029a8c:	ebfffb3c 	bl	80028784 <switchuvm>
80029a90:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80029a94:	ebffe2e6 	bl	80022634 <fileclose>
80029a98:	e51b0080 	ldr	r0, [fp, #-128]	; 0xffffff80
80029a9c:	ebffefe8 	bl	80025a44 <kill>
80029aa0:	e3a03000 	mov	r3, #0
80029aa4:	e1a00003 	mov	r0, r3
80029aa8:	e24bd004 	sub	sp, fp, #4
80029aac:	e8bd8800 	pop	{fp, pc}
80029ab0:	800ae61c 	.word	0x800ae61c

80029ab4 <resume>:
80029ab4:	e92d4800 	push	{fp, lr}
80029ab8:	e28db004 	add	fp, sp, #4
80029abc:	e24dd088 	sub	sp, sp, #136	; 0x88
80029ac0:	e50b0080 	str	r0, [fp, #-128]	; 0xffffff80
80029ac4:	e51b0080 	ldr	r0, [fp, #-128]	; 0xffffff80
80029ac8:	ebffe97d 	bl	800240c4 <namei>
80029acc:	e50b0008 	str	r0, [fp, #-8]
80029ad0:	e51b0008 	ldr	r0, [fp, #-8]
80029ad4:	ebffe5a7 	bl	80023178 <ilock>
80029ad8:	e24b1078 	sub	r1, fp, #120	; 0x78
80029adc:	e3a03064 	mov	r3, #100	; 0x64
80029ae0:	e3a02000 	mov	r2, #0
80029ae4:	e51b0008 	ldr	r0, [fp, #-8]
80029ae8:	ebffe74e 	bl	80023828 <readi>
80029aec:	e3a03000 	mov	r3, #0
80029af0:	e50b300c 	str	r3, [fp, #-12]
80029af4:	ebfffa7b 	bl	800284e8 <kpt_alloc>
80029af8:	e50b000c 	str	r0, [fp, #-12]
80029afc:	e3a03000 	mov	r3, #0
80029b00:	e50b3010 	str	r3, [fp, #-16]
80029b04:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80029b08:	e1a02003 	mov	r2, r3
80029b0c:	e51b1010 	ldr	r1, [fp, #-16]
80029b10:	e51b000c 	ldr	r0, [fp, #-12]
80029b14:	ebfffba0 	bl	8002899c <allocuvm>
80029b18:	e1a03000 	mov	r3, r0
80029b1c:	e50b3010 	str	r3, [fp, #-16]
80029b20:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80029b24:	e58d3000 	str	r3, [sp]
80029b28:	e3a03064 	mov	r3, #100	; 0x64
80029b2c:	e51b2008 	ldr	r2, [fp, #-8]
80029b30:	e3a01000 	mov	r1, #0
80029b34:	e51b000c 	ldr	r0, [fp, #-12]
80029b38:	ebfffb4b 	bl	8002886c <loaduvm>
80029b3c:	e51b3010 	ldr	r3, [fp, #-16]
80029b40:	e2833eff 	add	r3, r3, #4080	; 0xff0
80029b44:	e283300f 	add	r3, r3, #15
80029b48:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80029b4c:	e3c3300f 	bic	r3, r3, #15
80029b50:	e50b3010 	str	r3, [fp, #-16]
80029b54:	e51b3010 	ldr	r3, [fp, #-16]
80029b58:	e2833a02 	add	r3, r3, #8192	; 0x2000
80029b5c:	e1a02003 	mov	r2, r3
80029b60:	e51b1010 	ldr	r1, [fp, #-16]
80029b64:	e51b000c 	ldr	r0, [fp, #-12]
80029b68:	ebfffb8b 	bl	8002899c <allocuvm>
80029b6c:	e1a03000 	mov	r3, r0
80029b70:	e50b3010 	str	r3, [fp, #-16]
80029b74:	e51b3010 	ldr	r3, [fp, #-16]
80029b78:	e2433a02 	sub	r3, r3, #8192	; 0x2000
80029b7c:	e1a01003 	mov	r1, r3
80029b80:	e51b000c 	ldr	r0, [fp, #-12]
80029b84:	ebfffc3a 	bl	80028c74 <clearpteu>
80029b88:	e51b3010 	ldr	r3, [fp, #-16]
80029b8c:	e2433a01 	sub	r3, r3, #4096	; 0x1000
80029b90:	e1a01003 	mov	r1, r3
80029b94:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80029b98:	e2832064 	add	r2, r3, #100	; 0x64
80029b9c:	e3a03a01 	mov	r3, #4096	; 0x1000
80029ba0:	e58d3000 	str	r3, [sp]
80029ba4:	e1a03002 	mov	r3, r2
80029ba8:	e51b2008 	ldr	r2, [fp, #-8]
80029bac:	e51b000c 	ldr	r0, [fp, #-12]
80029bb0:	ebfffb2d 	bl	8002886c <loaduvm>
80029bb4:	e59f31fc 	ldr	r3, [pc, #508]	; 80029db8 <resume+0x304>
80029bb8:	e5933000 	ldr	r3, [r3]
80029bbc:	e5933004 	ldr	r3, [r3, #4]
80029bc0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80029bc4:	e59f31ec 	ldr	r3, [pc, #492]	; 80029db8 <resume+0x304>
80029bc8:	e5933000 	ldr	r3, [r3]
80029bcc:	e51b200c 	ldr	r2, [fp, #-12]
80029bd0:	e5832004 	str	r2, [r3, #4]
80029bd4:	e51b2078 	ldr	r2, [fp, #-120]	; 0xffffff88
80029bd8:	e59f31d8 	ldr	r3, [pc, #472]	; 80029db8 <resume+0x304>
80029bdc:	e5933000 	ldr	r3, [r3]
80029be0:	e5832000 	str	r2, [r3]
80029be4:	e51b2074 	ldr	r2, [fp, #-116]	; 0xffffff8c
80029be8:	e59f31c8 	ldr	r3, [pc, #456]	; 80029db8 <resume+0x304>
80029bec:	e5933000 	ldr	r3, [r3]
80029bf0:	e5933018 	ldr	r3, [r3, #24]
80029bf4:	e5832000 	str	r2, [r3]
80029bf8:	e51b2070 	ldr	r2, [fp, #-112]	; 0xffffff90
80029bfc:	e59f31b4 	ldr	r3, [pc, #436]	; 80029db8 <resume+0x304>
80029c00:	e5933000 	ldr	r3, [r3]
80029c04:	e5933018 	ldr	r3, [r3, #24]
80029c08:	e5832004 	str	r2, [r3, #4]
80029c0c:	e51b206c 	ldr	r2, [fp, #-108]	; 0xffffff94
80029c10:	e59f31a0 	ldr	r3, [pc, #416]	; 80029db8 <resume+0x304>
80029c14:	e5933000 	ldr	r3, [r3]
80029c18:	e5933018 	ldr	r3, [r3, #24]
80029c1c:	e5832044 	str	r2, [r3, #68]	; 0x44
80029c20:	e59f3190 	ldr	r3, [pc, #400]	; 80029db8 <resume+0x304>
80029c24:	e5933000 	ldr	r3, [r3]
80029c28:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
80029c2c:	e583207c 	str	r2, [r3, #124]	; 0x7c
80029c30:	e59f3180 	ldr	r3, [pc, #384]	; 80029db8 <resume+0x304>
80029c34:	e5933000 	ldr	r3, [r3]
80029c38:	e5933018 	ldr	r3, [r3, #24]
80029c3c:	e51b2068 	ldr	r2, [fp, #-104]	; 0xffffff98
80029c40:	e5832008 	str	r2, [r3, #8]
80029c44:	e59f316c 	ldr	r3, [pc, #364]	; 80029db8 <resume+0x304>
80029c48:	e5933000 	ldr	r3, [r3]
80029c4c:	e5933018 	ldr	r3, [r3, #24]
80029c50:	e51b2064 	ldr	r2, [fp, #-100]	; 0xffffff9c
80029c54:	e583200c 	str	r2, [r3, #12]
80029c58:	e59f3158 	ldr	r3, [pc, #344]	; 80029db8 <resume+0x304>
80029c5c:	e5933000 	ldr	r3, [r3]
80029c60:	e5933018 	ldr	r3, [r3, #24]
80029c64:	e51b2060 	ldr	r2, [fp, #-96]	; 0xffffffa0
80029c68:	e5832010 	str	r2, [r3, #16]
80029c6c:	e59f3144 	ldr	r3, [pc, #324]	; 80029db8 <resume+0x304>
80029c70:	e5933000 	ldr	r3, [r3]
80029c74:	e5933018 	ldr	r3, [r3, #24]
80029c78:	e51b205c 	ldr	r2, [fp, #-92]	; 0xffffffa4
80029c7c:	e5832014 	str	r2, [r3, #20]
80029c80:	e59f3130 	ldr	r3, [pc, #304]	; 80029db8 <resume+0x304>
80029c84:	e5933000 	ldr	r3, [r3]
80029c88:	e5933018 	ldr	r3, [r3, #24]
80029c8c:	e51b2058 	ldr	r2, [fp, #-88]	; 0xffffffa8
80029c90:	e5832018 	str	r2, [r3, #24]
80029c94:	e59f311c 	ldr	r3, [pc, #284]	; 80029db8 <resume+0x304>
80029c98:	e5933000 	ldr	r3, [r3]
80029c9c:	e5933018 	ldr	r3, [r3, #24]
80029ca0:	e51b2054 	ldr	r2, [fp, #-84]	; 0xffffffac
80029ca4:	e583201c 	str	r2, [r3, #28]
80029ca8:	e59f3108 	ldr	r3, [pc, #264]	; 80029db8 <resume+0x304>
80029cac:	e5933000 	ldr	r3, [r3]
80029cb0:	e5933018 	ldr	r3, [r3, #24]
80029cb4:	e51b2050 	ldr	r2, [fp, #-80]	; 0xffffffb0
80029cb8:	e5832020 	str	r2, [r3, #32]
80029cbc:	e59f30f4 	ldr	r3, [pc, #244]	; 80029db8 <resume+0x304>
80029cc0:	e5933000 	ldr	r3, [r3]
80029cc4:	e5933018 	ldr	r3, [r3, #24]
80029cc8:	e51b204c 	ldr	r2, [fp, #-76]	; 0xffffffb4
80029ccc:	e5832024 	str	r2, [r3, #36]	; 0x24
80029cd0:	e59f30e0 	ldr	r3, [pc, #224]	; 80029db8 <resume+0x304>
80029cd4:	e5933000 	ldr	r3, [r3]
80029cd8:	e5933018 	ldr	r3, [r3, #24]
80029cdc:	e51b2048 	ldr	r2, [fp, #-72]	; 0xffffffb8
80029ce0:	e5832028 	str	r2, [r3, #40]	; 0x28
80029ce4:	e59f30cc 	ldr	r3, [pc, #204]	; 80029db8 <resume+0x304>
80029ce8:	e5933000 	ldr	r3, [r3]
80029cec:	e5933018 	ldr	r3, [r3, #24]
80029cf0:	e51b2044 	ldr	r2, [fp, #-68]	; 0xffffffbc
80029cf4:	e583202c 	str	r2, [r3, #44]	; 0x2c
80029cf8:	e59f30b8 	ldr	r3, [pc, #184]	; 80029db8 <resume+0x304>
80029cfc:	e5933000 	ldr	r3, [r3]
80029d00:	e5933018 	ldr	r3, [r3, #24]
80029d04:	e51b2040 	ldr	r2, [fp, #-64]	; 0xffffffc0
80029d08:	e5832030 	str	r2, [r3, #48]	; 0x30
80029d0c:	e59f30a4 	ldr	r3, [pc, #164]	; 80029db8 <resume+0x304>
80029d10:	e5933000 	ldr	r3, [r3]
80029d14:	e5933018 	ldr	r3, [r3, #24]
80029d18:	e51b203c 	ldr	r2, [fp, #-60]	; 0xffffffc4
80029d1c:	e5832034 	str	r2, [r3, #52]	; 0x34
80029d20:	e59f3090 	ldr	r3, [pc, #144]	; 80029db8 <resume+0x304>
80029d24:	e5933000 	ldr	r3, [r3]
80029d28:	e5933018 	ldr	r3, [r3, #24]
80029d2c:	e51b2038 	ldr	r2, [fp, #-56]	; 0xffffffc8
80029d30:	e5832038 	str	r2, [r3, #56]	; 0x38
80029d34:	e59f307c 	ldr	r3, [pc, #124]	; 80029db8 <resume+0x304>
80029d38:	e5933000 	ldr	r3, [r3]
80029d3c:	e5933018 	ldr	r3, [r3, #24]
80029d40:	e51b2034 	ldr	r2, [fp, #-52]	; 0xffffffcc
80029d44:	e583203c 	str	r2, [r3, #60]	; 0x3c
80029d48:	e59f3068 	ldr	r3, [pc, #104]	; 80029db8 <resume+0x304>
80029d4c:	e5933000 	ldr	r3, [r3]
80029d50:	e5933018 	ldr	r3, [r3, #24]
80029d54:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
80029d58:	e5832040 	str	r2, [r3, #64]	; 0x40
80029d5c:	e59f3054 	ldr	r3, [pc, #84]	; 80029db8 <resume+0x304>
80029d60:	e5933000 	ldr	r3, [r3]
80029d64:	e283006c 	add	r0, r3, #108	; 0x6c
80029d68:	e24b3078 	sub	r3, fp, #120	; 0x78
80029d6c:	e283304c 	add	r3, r3, #76	; 0x4c
80029d70:	e3a02010 	mov	r2, #16
80029d74:	e1a01003 	mov	r1, r3
80029d78:	ebffd98a 	bl	800203a8 <strncpy>
80029d7c:	e59f3034 	ldr	r3, [pc, #52]	; 80029db8 <resume+0x304>
80029d80:	e5933000 	ldr	r3, [r3]
80029d84:	e1a00003 	mov	r0, r3
80029d88:	ebfffa7d 	bl	80028784 <switchuvm>
80029d8c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80029d90:	ebfffb87 	bl	80028bb4 <freevm>
80029d94:	e51b3008 	ldr	r3, [fp, #-8]
80029d98:	e3530000 	cmp	r3, #0
80029d9c:	0a000001 	beq	80029da8 <resume+0x2f4>
80029da0:	e51b0008 	ldr	r0, [fp, #-8]
80029da4:	ebffe5b4 	bl	8002347c <iunlockput>
80029da8:	e3a03000 	mov	r3, #0
80029dac:	e1a00003 	mov	r0, r3
80029db0:	e24bd004 	sub	sp, fp, #4
80029db4:	e8bd8800 	pop	{fp, pc}
80029db8:	800ae61c 	.word	0x800ae61c

80029dbc <__udivsi3>:
80029dbc:	e2512001 	subs	r2, r1, #1
80029dc0:	012fff1e 	bxeq	lr
80029dc4:	3a000036 	bcc	80029ea4 <__udivsi3+0xe8>
80029dc8:	e1500001 	cmp	r0, r1
80029dcc:	9a000022 	bls	80029e5c <__udivsi3+0xa0>
80029dd0:	e1110002 	tst	r1, r2
80029dd4:	0a000023 	beq	80029e68 <__udivsi3+0xac>
80029dd8:	e311020e 	tst	r1, #-536870912	; 0xe0000000
80029ddc:	01a01181 	lsleq	r1, r1, #3
80029de0:	03a03008 	moveq	r3, #8
80029de4:	13a03001 	movne	r3, #1
80029de8:	e3510201 	cmp	r1, #268435456	; 0x10000000
80029dec:	31510000 	cmpcc	r1, r0
80029df0:	31a01201 	lslcc	r1, r1, #4
80029df4:	31a03203 	lslcc	r3, r3, #4
80029df8:	3afffffa 	bcc	80029de8 <__udivsi3+0x2c>
80029dfc:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
80029e00:	31510000 	cmpcc	r1, r0
80029e04:	31a01081 	lslcc	r1, r1, #1
80029e08:	31a03083 	lslcc	r3, r3, #1
80029e0c:	3afffffa 	bcc	80029dfc <__udivsi3+0x40>
80029e10:	e3a02000 	mov	r2, #0
80029e14:	e1500001 	cmp	r0, r1
80029e18:	20400001 	subcs	r0, r0, r1
80029e1c:	21822003 	orrcs	r2, r2, r3
80029e20:	e15000a1 	cmp	r0, r1, lsr #1
80029e24:	204000a1 	subcs	r0, r0, r1, lsr #1
80029e28:	218220a3 	orrcs	r2, r2, r3, lsr #1
80029e2c:	e1500121 	cmp	r0, r1, lsr #2
80029e30:	20400121 	subcs	r0, r0, r1, lsr #2
80029e34:	21822123 	orrcs	r2, r2, r3, lsr #2
80029e38:	e15001a1 	cmp	r0, r1, lsr #3
80029e3c:	204001a1 	subcs	r0, r0, r1, lsr #3
80029e40:	218221a3 	orrcs	r2, r2, r3, lsr #3
80029e44:	e3500000 	cmp	r0, #0
80029e48:	11b03223 	lsrsne	r3, r3, #4
80029e4c:	11a01221 	lsrne	r1, r1, #4
80029e50:	1affffef 	bne	80029e14 <__udivsi3+0x58>
80029e54:	e1a00002 	mov	r0, r2
80029e58:	e12fff1e 	bx	lr
80029e5c:	03a00001 	moveq	r0, #1
80029e60:	13a00000 	movne	r0, #0
80029e64:	e12fff1e 	bx	lr
80029e68:	e3510801 	cmp	r1, #65536	; 0x10000
80029e6c:	21a01821 	lsrcs	r1, r1, #16
80029e70:	23a02010 	movcs	r2, #16
80029e74:	33a02000 	movcc	r2, #0
80029e78:	e3510c01 	cmp	r1, #256	; 0x100
80029e7c:	21a01421 	lsrcs	r1, r1, #8
80029e80:	22822008 	addcs	r2, r2, #8
80029e84:	e3510010 	cmp	r1, #16
80029e88:	21a01221 	lsrcs	r1, r1, #4
80029e8c:	22822004 	addcs	r2, r2, #4
80029e90:	e3510004 	cmp	r1, #4
80029e94:	82822003 	addhi	r2, r2, #3
80029e98:	908220a1 	addls	r2, r2, r1, lsr #1
80029e9c:	e1a00230 	lsr	r0, r0, r2
80029ea0:	e12fff1e 	bx	lr
80029ea4:	e3500000 	cmp	r0, #0
80029ea8:	13e00000 	mvnne	r0, #0
80029eac:	ea000059 	b	8002a018 <__aeabi_idiv0>

80029eb0 <__aeabi_uidivmod>:
80029eb0:	e3510000 	cmp	r1, #0
80029eb4:	0afffffa 	beq	80029ea4 <__udivsi3+0xe8>
80029eb8:	e92d4003 	push	{r0, r1, lr}
80029ebc:	ebffffbe 	bl	80029dbc <__udivsi3>
80029ec0:	e8bd4006 	pop	{r1, r2, lr}
80029ec4:	e0030092 	mul	r3, r2, r0
80029ec8:	e0411003 	sub	r1, r1, r3
80029ecc:	e12fff1e 	bx	lr

80029ed0 <__divsi3>:
80029ed0:	e3510000 	cmp	r1, #0
80029ed4:	0a000043 	beq	80029fe8 <.divsi3_skip_div0_test+0x110>

80029ed8 <.divsi3_skip_div0_test>:
80029ed8:	e020c001 	eor	ip, r0, r1
80029edc:	42611000 	rsbmi	r1, r1, #0
80029ee0:	e2512001 	subs	r2, r1, #1
80029ee4:	0a000027 	beq	80029f88 <.divsi3_skip_div0_test+0xb0>
80029ee8:	e1b03000 	movs	r3, r0
80029eec:	42603000 	rsbmi	r3, r0, #0
80029ef0:	e1530001 	cmp	r3, r1
80029ef4:	9a000026 	bls	80029f94 <.divsi3_skip_div0_test+0xbc>
80029ef8:	e1110002 	tst	r1, r2
80029efc:	0a000028 	beq	80029fa4 <.divsi3_skip_div0_test+0xcc>
80029f00:	e311020e 	tst	r1, #-536870912	; 0xe0000000
80029f04:	01a01181 	lsleq	r1, r1, #3
80029f08:	03a02008 	moveq	r2, #8
80029f0c:	13a02001 	movne	r2, #1
80029f10:	e3510201 	cmp	r1, #268435456	; 0x10000000
80029f14:	31510003 	cmpcc	r1, r3
80029f18:	31a01201 	lslcc	r1, r1, #4
80029f1c:	31a02202 	lslcc	r2, r2, #4
80029f20:	3afffffa 	bcc	80029f10 <.divsi3_skip_div0_test+0x38>
80029f24:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
80029f28:	31510003 	cmpcc	r1, r3
80029f2c:	31a01081 	lslcc	r1, r1, #1
80029f30:	31a02082 	lslcc	r2, r2, #1
80029f34:	3afffffa 	bcc	80029f24 <.divsi3_skip_div0_test+0x4c>
80029f38:	e3a00000 	mov	r0, #0
80029f3c:	e1530001 	cmp	r3, r1
80029f40:	20433001 	subcs	r3, r3, r1
80029f44:	21800002 	orrcs	r0, r0, r2
80029f48:	e15300a1 	cmp	r3, r1, lsr #1
80029f4c:	204330a1 	subcs	r3, r3, r1, lsr #1
80029f50:	218000a2 	orrcs	r0, r0, r2, lsr #1
80029f54:	e1530121 	cmp	r3, r1, lsr #2
80029f58:	20433121 	subcs	r3, r3, r1, lsr #2
80029f5c:	21800122 	orrcs	r0, r0, r2, lsr #2
80029f60:	e15301a1 	cmp	r3, r1, lsr #3
80029f64:	204331a1 	subcs	r3, r3, r1, lsr #3
80029f68:	218001a2 	orrcs	r0, r0, r2, lsr #3
80029f6c:	e3530000 	cmp	r3, #0
80029f70:	11b02222 	lsrsne	r2, r2, #4
80029f74:	11a01221 	lsrne	r1, r1, #4
80029f78:	1affffef 	bne	80029f3c <.divsi3_skip_div0_test+0x64>
80029f7c:	e35c0000 	cmp	ip, #0
80029f80:	42600000 	rsbmi	r0, r0, #0
80029f84:	e12fff1e 	bx	lr
80029f88:	e13c0000 	teq	ip, r0
80029f8c:	42600000 	rsbmi	r0, r0, #0
80029f90:	e12fff1e 	bx	lr
80029f94:	33a00000 	movcc	r0, #0
80029f98:	01a00fcc 	asreq	r0, ip, #31
80029f9c:	03800001 	orreq	r0, r0, #1
80029fa0:	e12fff1e 	bx	lr
80029fa4:	e3510801 	cmp	r1, #65536	; 0x10000
80029fa8:	21a01821 	lsrcs	r1, r1, #16
80029fac:	23a02010 	movcs	r2, #16
80029fb0:	33a02000 	movcc	r2, #0
80029fb4:	e3510c01 	cmp	r1, #256	; 0x100
80029fb8:	21a01421 	lsrcs	r1, r1, #8
80029fbc:	22822008 	addcs	r2, r2, #8
80029fc0:	e3510010 	cmp	r1, #16
80029fc4:	21a01221 	lsrcs	r1, r1, #4
80029fc8:	22822004 	addcs	r2, r2, #4
80029fcc:	e3510004 	cmp	r1, #4
80029fd0:	82822003 	addhi	r2, r2, #3
80029fd4:	908220a1 	addls	r2, r2, r1, lsr #1
80029fd8:	e35c0000 	cmp	ip, #0
80029fdc:	e1a00233 	lsr	r0, r3, r2
80029fe0:	42600000 	rsbmi	r0, r0, #0
80029fe4:	e12fff1e 	bx	lr
80029fe8:	e3500000 	cmp	r0, #0
80029fec:	c3e00102 	mvngt	r0, #-2147483648	; 0x80000000
80029ff0:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
80029ff4:	ea000007 	b	8002a018 <__aeabi_idiv0>

80029ff8 <__aeabi_idivmod>:
80029ff8:	e3510000 	cmp	r1, #0
80029ffc:	0afffff9 	beq	80029fe8 <.divsi3_skip_div0_test+0x110>
8002a000:	e92d4003 	push	{r0, r1, lr}
8002a004:	ebffffb3 	bl	80029ed8 <.divsi3_skip_div0_test>
8002a008:	e8bd4006 	pop	{r1, r2, lr}
8002a00c:	e0030092 	mul	r3, r2, r0
8002a010:	e0411003 	sub	r1, r1, r3
8002a014:	e12fff1e 	bx	lr

8002a018 <__aeabi_idiv0>:
8002a018:	e12fff1e 	bx	lr
