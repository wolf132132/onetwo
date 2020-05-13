
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
      14:	eb000119 	bl	480 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	; 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000104 	bl	480 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb0000fd 	bl	480 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	; e0 <fmtname+0xe0>
      98:	eb0001d8 	bl	800 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb0000f6 	bl	480 <strlen>
      a4:	e1a02000 	mov	r2, r0
      a8:	e59f3030 	ldr	r3, [pc, #48]	; e0 <fmtname+0xe0>
      ac:	e0824003 	add	r4, r2, r3
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb0000f1 	bl	480 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000100 	bl	4d4 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	; e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	000014ac 	.word	0x000014ac

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	; 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	; 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	; 0xfffffdc8
      fc:	eb00022d 	bl	9b8 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	; 0xfffffdc8
     114:	e59f11fc 	ldr	r1, [pc, #508]	; 318 <ls+0x234>
     118:	e3a00002 	mov	r0, #2
     11c:	eb000319 	bl	d88 <printf>
     120:	ea00007a 	b	310 <ls+0x22c>
     124:	e24b3e23 	sub	r3, fp, #560	; 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb00023b 	bl	a24 <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	; 0xfffffdc8
     144:	e59f11d0 	ldr	r1, [pc, #464]	; 31c <ls+0x238>
     148:	e3a00002 	mov	r0, #2
     14c:	eb00030d 	bl	d88 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb0001fc 	bl	94c <close>
     158:	ea00006c 	b	310 <ls+0x22c>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	; 0x22c
     164:	e1d330f0 	ldrsh	r3, [r3]
     168:	e3530001 	cmp	r3, #1
     16c:	0a000012 	beq	1bc <ls+0xd8>
     170:	e3530002 	cmp	r3, #2
     174:	1a000063 	bne	308 <ls+0x224>
     178:	e51b0238 	ldr	r0, [fp, #-568]	; 0xfffffdc8
     17c:	ebffff9f 	bl	0 <fmtname>
     180:	e1a01000 	mov	r1, r0
     184:	e24b3004 	sub	r3, fp, #4
     188:	e2433f8b 	sub	r3, r3, #556	; 0x22c
     18c:	e1d330f0 	ldrsh	r3, [r3]
     190:	e1a00003 	mov	r0, r3
     194:	e51b3228 	ldr	r3, [fp, #-552]	; 0xfffffdd8
     198:	e51b2220 	ldr	r2, [fp, #-544]	; 0xfffffde0
     19c:	e58d2004 	str	r2, [sp, #4]
     1a0:	e58d3000 	str	r3, [sp]
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a02001 	mov	r2, r1
     1ac:	e59f116c 	ldr	r1, [pc, #364]	; 320 <ls+0x23c>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb0002f3 	bl	d88 <printf>
     1b8:	ea000052 	b	308 <ls+0x224>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	; 0xfffffdc8
     1c0:	eb0000ae 	bl	480 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	; 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f1148 	ldr	r1, [pc, #328]	; 324 <ls+0x240>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0002e9 	bl	d88 <printf>
     1e0:	ea000048 	b	308 <ls+0x224>
     1e4:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	; 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00006a 	bl	3a0 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb00009f 	bl	480 <strlen>
     200:	e1a02000 	mov	r2, r0
     204:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     208:	e0833002 	add	r3, r3, r2
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2832001 	add	r2, r3, #1
     218:	e50b200c 	str	r2, [fp, #-12]
     21c:	e3a0202f 	mov	r2, #47	; 0x2f
     220:	e5c32000 	strb	r2, [r3]
     224:	ea00002e 	b	2e4 <ls+0x200>
     228:	e24b3004 	sub	r3, fp, #4
     22c:	e2433f86 	sub	r3, r3, #536	; 0x218
     230:	e1d330b0 	ldrh	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	1a000000 	bne	240 <ls+0x15c>
     23c:	ea000028 	b	2e4 <ls+0x200>
     240:	e24b3f87 	sub	r3, fp, #540	; 0x21c
     244:	e2833002 	add	r3, r3, #2
     248:	e3a0200e 	mov	r2, #14
     24c:	e1a01003 	mov	r1, r3
     250:	e51b000c 	ldr	r0, [fp, #-12]
     254:	eb000169 	bl	800 <memmove>
     258:	e51b300c 	ldr	r3, [fp, #-12]
     25c:	e283300e 	add	r3, r3, #14
     260:	e3a02000 	mov	r2, #0
     264:	e5c32000 	strb	r2, [r3]
     268:	e24b2e23 	sub	r2, fp, #560	; 0x230
     26c:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     270:	e1a01002 	mov	r1, r2
     274:	e1a00003 	mov	r0, r3
     278:	eb000127 	bl	71c <stat>
     27c:	e1a03000 	mov	r3, r0
     280:	e3530000 	cmp	r3, #0
     284:	aa000005 	bge	2a0 <ls+0x1bc>
     288:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     28c:	e1a02003 	mov	r2, r3
     290:	e59f1084 	ldr	r1, [pc, #132]	; 31c <ls+0x238>
     294:	e3a00001 	mov	r0, #1
     298:	eb0002ba 	bl	d88 <printf>
     29c:	ea000010 	b	2e4 <ls+0x200>
     2a0:	e24b3f83 	sub	r3, fp, #524	; 0x20c
     2a4:	e1a00003 	mov	r0, r3
     2a8:	ebffff54 	bl	0 <fmtname>
     2ac:	e1a01000 	mov	r1, r0
     2b0:	e24b3004 	sub	r3, fp, #4
     2b4:	e2433f8b 	sub	r3, r3, #556	; 0x22c
     2b8:	e1d330f0 	ldrsh	r3, [r3]
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e51b3228 	ldr	r3, [fp, #-552]	; 0xfffffdd8
     2c4:	e51b2220 	ldr	r2, [fp, #-544]	; 0xfffffde0
     2c8:	e58d2004 	str	r2, [sp, #4]
     2cc:	e58d3000 	str	r3, [sp]
     2d0:	e1a03000 	mov	r3, r0
     2d4:	e1a02001 	mov	r2, r1
     2d8:	e59f1040 	ldr	r1, [pc, #64]	; 320 <ls+0x23c>
     2dc:	e3a00001 	mov	r0, #1
     2e0:	eb0002a8 	bl	d88 <printf>
     2e4:	e24b3f87 	sub	r3, fp, #540	; 0x21c
     2e8:	e3a02010 	mov	r2, #16
     2ec:	e1a01003 	mov	r1, r3
     2f0:	e51b0008 	ldr	r0, [fp, #-8]
     2f4:	eb000182 	bl	904 <read>
     2f8:	e1a03000 	mov	r3, r0
     2fc:	e3530010 	cmp	r3, #16
     300:	0affffc8 	beq	228 <ls+0x144>
     304:	e1a00000 	nop			; (mov r0, r0)
     308:	e51b0008 	ldr	r0, [fp, #-8]
     30c:	eb00018e 	bl	94c <close>
     310:	e24bd004 	sub	sp, fp, #4
     314:	e8bd8800 	pop	{fp, pc}
     318:	00001440 	.word	0x00001440
     31c:	00001454 	.word	0x00001454
     320:	00001468 	.word	0x00001468
     324:	00001478 	.word	0x00001478

00000328 <main>:
     328:	e92d4800 	push	{fp, lr}
     32c:	e28db004 	add	fp, sp, #4
     330:	e24dd010 	sub	sp, sp, #16
     334:	e50b0010 	str	r0, [fp, #-16]
     338:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     33c:	e51b3010 	ldr	r3, [fp, #-16]
     340:	e3530001 	cmp	r3, #1
     344:	ca000002 	bgt	354 <main+0x2c>
     348:	e59f004c 	ldr	r0, [pc, #76]	; 39c <main+0x74>
     34c:	ebffff64 	bl	e4 <ls>
     350:	eb000150 	bl	898 <exit>
     354:	e3a03001 	mov	r3, #1
     358:	e50b3008 	str	r3, [fp, #-8]
     35c:	ea000009 	b	388 <main+0x60>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e1a03103 	lsl	r3, r3, #2
     368:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     36c:	e0823003 	add	r3, r2, r3
     370:	e5933000 	ldr	r3, [r3]
     374:	e1a00003 	mov	r0, r3
     378:	ebffff59 	bl	e4 <ls>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e2833001 	add	r3, r3, #1
     384:	e50b3008 	str	r3, [fp, #-8]
     388:	e51b2008 	ldr	r2, [fp, #-8]
     38c:	e51b3010 	ldr	r3, [fp, #-16]
     390:	e1520003 	cmp	r2, r3
     394:	bafffff1 	blt	360 <main+0x38>
     398:	eb00013e 	bl	898 <exit>
     39c:	0000148c 	.word	0x0000148c

000003a0 <strcpy>:
     3a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     3a4:	e28db000 	add	fp, sp, #0
     3a8:	e24dd014 	sub	sp, sp, #20
     3ac:	e50b0010 	str	r0, [fp, #-16]
     3b0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3b4:	e51b3010 	ldr	r3, [fp, #-16]
     3b8:	e50b3008 	str	r3, [fp, #-8]
     3bc:	e1a00000 	nop			; (mov r0, r0)
     3c0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     3c4:	e2823001 	add	r3, r2, #1
     3c8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     3cc:	e51b3010 	ldr	r3, [fp, #-16]
     3d0:	e2831001 	add	r1, r3, #1
     3d4:	e50b1010 	str	r1, [fp, #-16]
     3d8:	e5d22000 	ldrb	r2, [r2]
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e5d33000 	ldrb	r3, [r3]
     3e4:	e3530000 	cmp	r3, #0
     3e8:	1afffff4 	bne	3c0 <strcpy+0x20>
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e1a00003 	mov	r0, r3
     3f4:	e28bd000 	add	sp, fp, #0
     3f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3fc:	e12fff1e 	bx	lr

00000400 <strcmp>:
     400:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     404:	e28db000 	add	fp, sp, #0
     408:	e24dd00c 	sub	sp, sp, #12
     40c:	e50b0008 	str	r0, [fp, #-8]
     410:	e50b100c 	str	r1, [fp, #-12]
     414:	ea000005 	b	430 <strcmp+0x30>
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e2833001 	add	r3, r3, #1
     420:	e50b3008 	str	r3, [fp, #-8]
     424:	e51b300c 	ldr	r3, [fp, #-12]
     428:	e2833001 	add	r3, r3, #1
     42c:	e50b300c 	str	r3, [fp, #-12]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e5d33000 	ldrb	r3, [r3]
     438:	e3530000 	cmp	r3, #0
     43c:	0a000005 	beq	458 <strcmp+0x58>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e5d32000 	ldrb	r2, [r3]
     448:	e51b300c 	ldr	r3, [fp, #-12]
     44c:	e5d33000 	ldrb	r3, [r3]
     450:	e1520003 	cmp	r2, r3
     454:	0affffef 	beq	418 <strcmp+0x18>
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e1a02003 	mov	r2, r3
     464:	e51b300c 	ldr	r3, [fp, #-12]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e0423003 	sub	r3, r2, r3
     470:	e1a00003 	mov	r0, r3
     474:	e28bd000 	add	sp, fp, #0
     478:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     47c:	e12fff1e 	bx	lr

00000480 <strlen>:
     480:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     484:	e28db000 	add	fp, sp, #0
     488:	e24dd014 	sub	sp, sp, #20
     48c:	e50b0010 	str	r0, [fp, #-16]
     490:	e3a03000 	mov	r3, #0
     494:	e50b3008 	str	r3, [fp, #-8]
     498:	ea000002 	b	4a8 <strlen+0x28>
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e2833001 	add	r3, r3, #1
     4a4:	e50b3008 	str	r3, [fp, #-8]
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e51b2010 	ldr	r2, [fp, #-16]
     4b0:	e0823003 	add	r3, r2, r3
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e3530000 	cmp	r3, #0
     4bc:	1afffff6 	bne	49c <strlen+0x1c>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e1a00003 	mov	r0, r3
     4c8:	e28bd000 	add	sp, fp, #0
     4cc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4d0:	e12fff1e 	bx	lr

000004d4 <memset>:
     4d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4d8:	e28db000 	add	fp, sp, #0
     4dc:	e24dd024 	sub	sp, sp, #36	; 0x24
     4e0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     4e4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     4e8:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4f0:	e50b3008 	str	r3, [fp, #-8]
     4f4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     4f8:	e54b300d 	strb	r3, [fp, #-13]
     4fc:	e55b300d 	ldrb	r3, [fp, #-13]
     500:	e1a02c03 	lsl	r2, r3, #24
     504:	e55b300d 	ldrb	r3, [fp, #-13]
     508:	e1a03803 	lsl	r3, r3, #16
     50c:	e1822003 	orr	r2, r2, r3
     510:	e55b300d 	ldrb	r3, [fp, #-13]
     514:	e1a03403 	lsl	r3, r3, #8
     518:	e1822003 	orr	r2, r2, r3
     51c:	e55b300d 	ldrb	r3, [fp, #-13]
     520:	e1823003 	orr	r3, r2, r3
     524:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     528:	ea000008 	b	550 <memset+0x7c>
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e55b200d 	ldrb	r2, [fp, #-13]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     53c:	e2433001 	sub	r3, r3, #1
     540:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e2833001 	add	r3, r3, #1
     54c:	e50b3008 	str	r3, [fp, #-8]
     550:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     554:	e3530000 	cmp	r3, #0
     558:	0a000003 	beq	56c <memset+0x98>
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e2033003 	and	r3, r3, #3
     564:	e3530000 	cmp	r3, #0
     568:	1affffef 	bne	52c <memset+0x58>
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e50b300c 	str	r3, [fp, #-12]
     574:	ea000008 	b	59c <memset+0xc8>
     578:	e51b300c 	ldr	r3, [fp, #-12]
     57c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     580:	e5832000 	str	r2, [r3]
     584:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     588:	e2433004 	sub	r3, r3, #4
     58c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     590:	e51b300c 	ldr	r3, [fp, #-12]
     594:	e2833004 	add	r3, r3, #4
     598:	e50b300c 	str	r3, [fp, #-12]
     59c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5a0:	e3530003 	cmp	r3, #3
     5a4:	8afffff3 	bhi	578 <memset+0xa4>
     5a8:	e51b300c 	ldr	r3, [fp, #-12]
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	ea000008 	b	5d8 <memset+0x104>
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e55b200d 	ldrb	r2, [fp, #-13]
     5bc:	e5c32000 	strb	r2, [r3]
     5c0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5c4:	e2433001 	sub	r3, r3, #1
     5c8:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e2833001 	add	r3, r3, #1
     5d4:	e50b3008 	str	r3, [fp, #-8]
     5d8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5dc:	e3530000 	cmp	r3, #0
     5e0:	1afffff3 	bne	5b4 <memset+0xe0>
     5e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5e8:	e1a00003 	mov	r0, r3
     5ec:	e28bd000 	add	sp, fp, #0
     5f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <strchr>:
     5f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     5fc:	e28db000 	add	fp, sp, #0
     600:	e24dd00c 	sub	sp, sp, #12
     604:	e50b0008 	str	r0, [fp, #-8]
     608:	e1a03001 	mov	r3, r1
     60c:	e54b3009 	strb	r3, [fp, #-9]
     610:	ea000009 	b	63c <strchr+0x44>
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e5d33000 	ldrb	r3, [r3]
     61c:	e55b2009 	ldrb	r2, [fp, #-9]
     620:	e1520003 	cmp	r2, r3
     624:	1a000001 	bne	630 <strchr+0x38>
     628:	e51b3008 	ldr	r3, [fp, #-8]
     62c:	ea000007 	b	650 <strchr+0x58>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e2833001 	add	r3, r3, #1
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5d33000 	ldrb	r3, [r3]
     644:	e3530000 	cmp	r3, #0
     648:	1afffff1 	bne	614 <strchr+0x1c>
     64c:	e3a03000 	mov	r3, #0
     650:	e1a00003 	mov	r0, r3
     654:	e28bd000 	add	sp, fp, #0
     658:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <gets>:
     660:	e92d4800 	push	{fp, lr}
     664:	e28db004 	add	fp, sp, #4
     668:	e24dd018 	sub	sp, sp, #24
     66c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     670:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     674:	e3a03000 	mov	r3, #0
     678:	e50b3008 	str	r3, [fp, #-8]
     67c:	ea000016 	b	6dc <gets+0x7c>
     680:	e24b300d 	sub	r3, fp, #13
     684:	e3a02001 	mov	r2, #1
     688:	e1a01003 	mov	r1, r3
     68c:	e3a00000 	mov	r0, #0
     690:	eb00009b 	bl	904 <read>
     694:	e50b000c 	str	r0, [fp, #-12]
     698:	e51b300c 	ldr	r3, [fp, #-12]
     69c:	e3530000 	cmp	r3, #0
     6a0:	da000013 	ble	6f4 <gets+0x94>
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e2832001 	add	r2, r3, #1
     6ac:	e50b2008 	str	r2, [fp, #-8]
     6b0:	e1a02003 	mov	r2, r3
     6b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     6b8:	e0833002 	add	r3, r3, r2
     6bc:	e55b200d 	ldrb	r2, [fp, #-13]
     6c0:	e5c32000 	strb	r2, [r3]
     6c4:	e55b300d 	ldrb	r3, [fp, #-13]
     6c8:	e353000a 	cmp	r3, #10
     6cc:	0a000009 	beq	6f8 <gets+0x98>
     6d0:	e55b300d 	ldrb	r3, [fp, #-13]
     6d4:	e353000d 	cmp	r3, #13
     6d8:	0a000006 	beq	6f8 <gets+0x98>
     6dc:	e51b3008 	ldr	r3, [fp, #-8]
     6e0:	e2833001 	add	r3, r3, #1
     6e4:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     6e8:	e1520003 	cmp	r2, r3
     6ec:	caffffe3 	bgt	680 <gets+0x20>
     6f0:	ea000000 	b	6f8 <gets+0x98>
     6f4:	e1a00000 	nop			; (mov r0, r0)
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     700:	e0823003 	add	r3, r2, r3
     704:	e3a02000 	mov	r2, #0
     708:	e5c32000 	strb	r2, [r3]
     70c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     710:	e1a00003 	mov	r0, r3
     714:	e24bd004 	sub	sp, fp, #4
     718:	e8bd8800 	pop	{fp, pc}

0000071c <stat>:
     71c:	e92d4800 	push	{fp, lr}
     720:	e28db004 	add	fp, sp, #4
     724:	e24dd010 	sub	sp, sp, #16
     728:	e50b0010 	str	r0, [fp, #-16]
     72c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     730:	e3a01000 	mov	r1, #0
     734:	e51b0010 	ldr	r0, [fp, #-16]
     738:	eb00009e 	bl	9b8 <open>
     73c:	e50b0008 	str	r0, [fp, #-8]
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e3530000 	cmp	r3, #0
     748:	aa000001 	bge	754 <stat+0x38>
     74c:	e3e03000 	mvn	r3, #0
     750:	ea000006 	b	770 <stat+0x54>
     754:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     758:	e51b0008 	ldr	r0, [fp, #-8]
     75c:	eb0000b0 	bl	a24 <fstat>
     760:	e50b000c 	str	r0, [fp, #-12]
     764:	e51b0008 	ldr	r0, [fp, #-8]
     768:	eb000077 	bl	94c <close>
     76c:	e51b300c 	ldr	r3, [fp, #-12]
     770:	e1a00003 	mov	r0, r3
     774:	e24bd004 	sub	sp, fp, #4
     778:	e8bd8800 	pop	{fp, pc}

0000077c <atoi>:
     77c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     780:	e28db000 	add	fp, sp, #0
     784:	e24dd014 	sub	sp, sp, #20
     788:	e50b0010 	str	r0, [fp, #-16]
     78c:	e3a03000 	mov	r3, #0
     790:	e50b3008 	str	r3, [fp, #-8]
     794:	ea00000c 	b	7cc <atoi+0x50>
     798:	e51b2008 	ldr	r2, [fp, #-8]
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a03103 	lsl	r3, r3, #2
     7a4:	e0833002 	add	r3, r3, r2
     7a8:	e1a03083 	lsl	r3, r3, #1
     7ac:	e1a01003 	mov	r1, r3
     7b0:	e51b3010 	ldr	r3, [fp, #-16]
     7b4:	e2832001 	add	r2, r3, #1
     7b8:	e50b2010 	str	r2, [fp, #-16]
     7bc:	e5d33000 	ldrb	r3, [r3]
     7c0:	e0813003 	add	r3, r1, r3
     7c4:	e2433030 	sub	r3, r3, #48	; 0x30
     7c8:	e50b3008 	str	r3, [fp, #-8]
     7cc:	e51b3010 	ldr	r3, [fp, #-16]
     7d0:	e5d33000 	ldrb	r3, [r3]
     7d4:	e353002f 	cmp	r3, #47	; 0x2f
     7d8:	9a000003 	bls	7ec <atoi+0x70>
     7dc:	e51b3010 	ldr	r3, [fp, #-16]
     7e0:	e5d33000 	ldrb	r3, [r3]
     7e4:	e3530039 	cmp	r3, #57	; 0x39
     7e8:	9affffea 	bls	798 <atoi+0x1c>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e1a00003 	mov	r0, r3
     7f4:	e28bd000 	add	sp, fp, #0
     7f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <memmove>:
     800:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     804:	e28db000 	add	fp, sp, #0
     808:	e24dd01c 	sub	sp, sp, #28
     80c:	e50b0010 	str	r0, [fp, #-16]
     810:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     814:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     818:	e51b3010 	ldr	r3, [fp, #-16]
     81c:	e50b3008 	str	r3, [fp, #-8]
     820:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     824:	e50b300c 	str	r3, [fp, #-12]
     828:	ea000007 	b	84c <memmove+0x4c>
     82c:	e51b200c 	ldr	r2, [fp, #-12]
     830:	e2823001 	add	r3, r2, #1
     834:	e50b300c 	str	r3, [fp, #-12]
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e2831001 	add	r1, r3, #1
     840:	e50b1008 	str	r1, [fp, #-8]
     844:	e5d22000 	ldrb	r2, [r2]
     848:	e5c32000 	strb	r2, [r3]
     84c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     850:	e2432001 	sub	r2, r3, #1
     854:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     858:	e3530000 	cmp	r3, #0
     85c:	cafffff2 	bgt	82c <memmove+0x2c>
     860:	e51b3010 	ldr	r3, [fp, #-16]
     864:	e1a00003 	mov	r0, r3
     868:	e28bd000 	add	sp, fp, #0
     86c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <fork>:
     874:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00001 	mov	r0, #1
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <exit>:
     898:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a00002 	mov	r0, #2
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <wait>:
     8bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a00003 	mov	r0, #3
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <pipe>:
     8e0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a00004 	mov	r0, #4
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <read>:
     904:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00005 	mov	r0, #5
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <write>:
     928:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a00010 	mov	r0, #16
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <close>:
     94c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00015 	mov	r0, #21
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <kill>:
     970:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00006 	mov	r0, #6
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <exec>:
     994:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     998:	e1a04003 	mov	r4, r3
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a02001 	mov	r2, r1
     9a4:	e1a01000 	mov	r1, r0
     9a8:	e3a00007 	mov	r0, #7
     9ac:	ef000000 	svc	0x00000000
     9b0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <open>:
     9b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a0000f 	mov	r0, #15
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <mknod>:
     9dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a00011 	mov	r0, #17
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <unlink>:
     a00:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a00012 	mov	r0, #18
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <fstat>:
     a24:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00008 	mov	r0, #8
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <link>:
     a48:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00013 	mov	r0, #19
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <mkdir>:
     a6c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00014 	mov	r0, #20
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <chdir>:
     a90:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a00009 	mov	r0, #9
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <dup>:
     ab4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a0000a 	mov	r0, #10
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <getpid>:
     ad8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a0000b 	mov	r0, #11
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <sbrk>:
     afc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a0000c 	mov	r0, #12
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <sleep>:
     b20:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a0000d 	mov	r0, #13
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <uptime>:
     b44:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a0000e 	mov	r0, #14
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <memfree>:
     b68:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b6c:	e1a04003 	mov	r4, r3
     b70:	e1a03002 	mov	r3, r2
     b74:	e1a02001 	mov	r2, r1
     b78:	e1a01000 	mov	r1, r0
     b7c:	e3a00016 	mov	r0, #22
     b80:	ef000000 	svc	0x00000000
     b84:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b88:	e12fff1e 	bx	lr

00000b8c <traceon>:
     b8c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b90:	e1a04003 	mov	r4, r3
     b94:	e1a03002 	mov	r3, r2
     b98:	e1a02001 	mov	r2, r1
     b9c:	e1a01000 	mov	r1, r0
     ba0:	e3a00017 	mov	r0, #23
     ba4:	ef000000 	svc	0x00000000
     ba8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <getps>:
     bb0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     bb4:	e1a04003 	mov	r4, r3
     bb8:	e1a03002 	mov	r3, r2
     bbc:	e1a02001 	mov	r2, r1
     bc0:	e1a01000 	mov	r1, r0
     bc4:	e3a00018 	mov	r0, #24
     bc8:	ef000000 	svc	0x00000000
     bcc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bd0:	e12fff1e 	bx	lr

00000bd4 <suspend>:
     bd4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     bd8:	e1a04003 	mov	r4, r3
     bdc:	e1a03002 	mov	r3, r2
     be0:	e1a02001 	mov	r2, r1
     be4:	e1a01000 	mov	r1, r0
     be8:	e3a00019 	mov	r0, #25
     bec:	ef000000 	svc	0x00000000
     bf0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bf4:	e12fff1e 	bx	lr

00000bf8 <resume>:
     bf8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     bfc:	e1a04003 	mov	r4, r3
     c00:	e1a03002 	mov	r3, r2
     c04:	e1a02001 	mov	r2, r1
     c08:	e1a01000 	mov	r1, r0
     c0c:	e3a0001a 	mov	r0, #26
     c10:	ef000000 	svc	0x00000000
     c14:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <putc>:
     c1c:	e92d4800 	push	{fp, lr}
     c20:	e28db004 	add	fp, sp, #4
     c24:	e24dd008 	sub	sp, sp, #8
     c28:	e50b0008 	str	r0, [fp, #-8]
     c2c:	e1a03001 	mov	r3, r1
     c30:	e54b3009 	strb	r3, [fp, #-9]
     c34:	e24b3009 	sub	r3, fp, #9
     c38:	e3a02001 	mov	r2, #1
     c3c:	e1a01003 	mov	r1, r3
     c40:	e51b0008 	ldr	r0, [fp, #-8]
     c44:	ebffff37 	bl	928 <write>
     c48:	e1a00000 	nop			; (mov r0, r0)
     c4c:	e24bd004 	sub	sp, fp, #4
     c50:	e8bd8800 	pop	{fp, pc}

00000c54 <printint>:
     c54:	e92d4800 	push	{fp, lr}
     c58:	e28db004 	add	fp, sp, #4
     c5c:	e24dd030 	sub	sp, sp, #48	; 0x30
     c60:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     c64:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     c68:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     c6c:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     c70:	e3a03000 	mov	r3, #0
     c74:	e50b300c 	str	r3, [fp, #-12]
     c78:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     c7c:	e3530000 	cmp	r3, #0
     c80:	0a000008 	beq	ca8 <printint+0x54>
     c84:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     c88:	e3530000 	cmp	r3, #0
     c8c:	aa000005 	bge	ca8 <printint+0x54>
     c90:	e3a03001 	mov	r3, #1
     c94:	e50b300c 	str	r3, [fp, #-12]
     c98:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     c9c:	e2633000 	rsb	r3, r3, #0
     ca0:	e50b3010 	str	r3, [fp, #-16]
     ca4:	ea000001 	b	cb0 <printint+0x5c>
     ca8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     cac:	e50b3010 	str	r3, [fp, #-16]
     cb0:	e3a03000 	mov	r3, #0
     cb4:	e50b3008 	str	r3, [fp, #-8]
     cb8:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     cbc:	e51b3010 	ldr	r3, [fp, #-16]
     cc0:	e1a01002 	mov	r1, r2
     cc4:	e1a00003 	mov	r0, r3
     cc8:	eb0001d3 	bl	141c <__aeabi_uidivmod>
     ccc:	e1a03001 	mov	r3, r1
     cd0:	e1a01003 	mov	r1, r3
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e2832001 	add	r2, r3, #1
     cdc:	e50b2008 	str	r2, [fp, #-8]
     ce0:	e59f209c 	ldr	r2, [pc, #156]	; d84 <printint+0x130>
     ce4:	e7d22001 	ldrb	r2, [r2, r1]
     ce8:	e24b1004 	sub	r1, fp, #4
     cec:	e0813003 	add	r3, r1, r3
     cf0:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     cf4:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     cf8:	e1a01003 	mov	r1, r3
     cfc:	e51b0010 	ldr	r0, [fp, #-16]
     d00:	eb000188 	bl	1328 <__udivsi3>
     d04:	e1a03000 	mov	r3, r0
     d08:	e50b3010 	str	r3, [fp, #-16]
     d0c:	e51b3010 	ldr	r3, [fp, #-16]
     d10:	e3530000 	cmp	r3, #0
     d14:	1affffe7 	bne	cb8 <printint+0x64>
     d18:	e51b300c 	ldr	r3, [fp, #-12]
     d1c:	e3530000 	cmp	r3, #0
     d20:	0a00000e 	beq	d60 <printint+0x10c>
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e2832001 	add	r2, r3, #1
     d2c:	e50b2008 	str	r2, [fp, #-8]
     d30:	e24b2004 	sub	r2, fp, #4
     d34:	e0823003 	add	r3, r2, r3
     d38:	e3a0202d 	mov	r2, #45	; 0x2d
     d3c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     d40:	ea000006 	b	d60 <printint+0x10c>
     d44:	e24b2020 	sub	r2, fp, #32
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e0823003 	add	r3, r2, r3
     d50:	e5d33000 	ldrb	r3, [r3]
     d54:	e1a01003 	mov	r1, r3
     d58:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     d5c:	ebffffae 	bl	c1c <putc>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e2433001 	sub	r3, r3, #1
     d68:	e50b3008 	str	r3, [fp, #-8]
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e3530000 	cmp	r3, #0
     d74:	aafffff2 	bge	d44 <printint+0xf0>
     d78:	e1a00000 	nop			; (mov r0, r0)
     d7c:	e24bd004 	sub	sp, fp, #4
     d80:	e8bd8800 	pop	{fp, pc}
     d84:	00001498 	.word	0x00001498

00000d88 <printf>:
     d88:	e92d000e 	push	{r1, r2, r3}
     d8c:	e92d4800 	push	{fp, lr}
     d90:	e28db004 	add	fp, sp, #4
     d94:	e24dd024 	sub	sp, sp, #36	; 0x24
     d98:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     d9c:	e3a03000 	mov	r3, #0
     da0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     da4:	e28b3008 	add	r3, fp, #8
     da8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     dac:	e3a03000 	mov	r3, #0
     db0:	e50b3010 	str	r3, [fp, #-16]
     db4:	ea000074 	b	f8c <printf+0x204>
     db8:	e59b2004 	ldr	r2, [fp, #4]
     dbc:	e51b3010 	ldr	r3, [fp, #-16]
     dc0:	e0823003 	add	r3, r2, r3
     dc4:	e5d33000 	ldrb	r3, [r3]
     dc8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     dcc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     dd0:	e3530000 	cmp	r3, #0
     dd4:	1a00000b 	bne	e08 <printf+0x80>
     dd8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ddc:	e3530025 	cmp	r3, #37	; 0x25
     de0:	1a000002 	bne	df0 <printf+0x68>
     de4:	e3a03025 	mov	r3, #37	; 0x25
     de8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     dec:	ea000063 	b	f80 <printf+0x1f8>
     df0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     df4:	e6ef3073 	uxtb	r3, r3
     df8:	e1a01003 	mov	r1, r3
     dfc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e00:	ebffff85 	bl	c1c <putc>
     e04:	ea00005d 	b	f80 <printf+0x1f8>
     e08:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     e0c:	e3530025 	cmp	r3, #37	; 0x25
     e10:	1a00005a 	bne	f80 <printf+0x1f8>
     e14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e18:	e3530064 	cmp	r3, #100	; 0x64
     e1c:	1a00000a 	bne	e4c <printf+0xc4>
     e20:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e1a01003 	mov	r1, r3
     e2c:	e3a03001 	mov	r3, #1
     e30:	e3a0200a 	mov	r2, #10
     e34:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e38:	ebffff85 	bl	c54 <printint>
     e3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e40:	e2833004 	add	r3, r3, #4
     e44:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     e48:	ea00004a 	b	f78 <printf+0x1f0>
     e4c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e50:	e3530078 	cmp	r3, #120	; 0x78
     e54:	0a000002 	beq	e64 <printf+0xdc>
     e58:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e5c:	e3530070 	cmp	r3, #112	; 0x70
     e60:	1a00000a 	bne	e90 <printf+0x108>
     e64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e1a01003 	mov	r1, r3
     e70:	e3a03000 	mov	r3, #0
     e74:	e3a02010 	mov	r2, #16
     e78:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e7c:	ebffff74 	bl	c54 <printint>
     e80:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e84:	e2833004 	add	r3, r3, #4
     e88:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     e8c:	ea000039 	b	f78 <printf+0x1f0>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e94:	e3530073 	cmp	r3, #115	; 0x73
     e98:	1a000018 	bne	f00 <printf+0x178>
     e9c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     eac:	e2833004 	add	r3, r3, #4
     eb0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1a00000a 	bne	eec <printf+0x164>
     ec0:	e59f30f0 	ldr	r3, [pc, #240]	; fb8 <printf+0x230>
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	ea000007 	b	eec <printf+0x164>
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5d33000 	ldrb	r3, [r3]
     ed4:	e1a01003 	mov	r1, r3
     ed8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     edc:	ebffff4e 	bl	c1c <putc>
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e2833001 	add	r3, r3, #1
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5d33000 	ldrb	r3, [r3]
     ef4:	e3530000 	cmp	r3, #0
     ef8:	1afffff3 	bne	ecc <printf+0x144>
     efc:	ea00001d 	b	f78 <printf+0x1f0>
     f00:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f04:	e3530063 	cmp	r3, #99	; 0x63
     f08:	1a000009 	bne	f34 <printf+0x1ac>
     f0c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e6ef3073 	uxtb	r3, r3
     f18:	e1a01003 	mov	r1, r3
     f1c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f20:	ebffff3d 	bl	c1c <putc>
     f24:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f28:	e2833004 	add	r3, r3, #4
     f2c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     f30:	ea000010 	b	f78 <printf+0x1f0>
     f34:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f38:	e3530025 	cmp	r3, #37	; 0x25
     f3c:	1a000005 	bne	f58 <printf+0x1d0>
     f40:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f44:	e6ef3073 	uxtb	r3, r3
     f48:	e1a01003 	mov	r1, r3
     f4c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f50:	ebffff31 	bl	c1c <putc>
     f54:	ea000007 	b	f78 <printf+0x1f0>
     f58:	e3a01025 	mov	r1, #37	; 0x25
     f5c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f60:	ebffff2d 	bl	c1c <putc>
     f64:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f68:	e6ef3073 	uxtb	r3, r3
     f6c:	e1a01003 	mov	r1, r3
     f70:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f74:	ebffff28 	bl	c1c <putc>
     f78:	e3a03000 	mov	r3, #0
     f7c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     f80:	e51b3010 	ldr	r3, [fp, #-16]
     f84:	e2833001 	add	r3, r3, #1
     f88:	e50b3010 	str	r3, [fp, #-16]
     f8c:	e59b2004 	ldr	r2, [fp, #4]
     f90:	e51b3010 	ldr	r3, [fp, #-16]
     f94:	e0823003 	add	r3, r2, r3
     f98:	e5d33000 	ldrb	r3, [r3]
     f9c:	e3530000 	cmp	r3, #0
     fa0:	1affff84 	bne	db8 <printf+0x30>
     fa4:	e1a00000 	nop			; (mov r0, r0)
     fa8:	e24bd004 	sub	sp, fp, #4
     fac:	e8bd4800 	pop	{fp, lr}
     fb0:	e28dd00c 	add	sp, sp, #12
     fb4:	e12fff1e 	bx	lr
     fb8:	00001490 	.word	0x00001490

00000fbc <free>:
     fbc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     fc0:	e28db000 	add	fp, sp, #0
     fc4:	e24dd014 	sub	sp, sp, #20
     fc8:	e50b0010 	str	r0, [fp, #-16]
     fcc:	e51b3010 	ldr	r3, [fp, #-16]
     fd0:	e2433008 	sub	r3, r3, #8
     fd4:	e50b300c 	str	r3, [fp, #-12]
     fd8:	e59f3154 	ldr	r3, [pc, #340]	; 1134 <free+0x178>
     fdc:	e5933000 	ldr	r3, [r3]
     fe0:	e50b3008 	str	r3, [fp, #-8]
     fe4:	ea000010 	b	102c <free+0x70>
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e51b2008 	ldr	r2, [fp, #-8]
     ff4:	e1520003 	cmp	r2, r3
     ff8:	3a000008 	bcc	1020 <free+0x64>
     ffc:	e51b200c 	ldr	r2, [fp, #-12]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e1520003 	cmp	r2, r3
    1008:	8a000010 	bhi	1050 <free+0x94>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e51b200c 	ldr	r2, [fp, #-12]
    1018:	e1520003 	cmp	r2, r3
    101c:	3a00000b 	bcc	1050 <free+0x94>
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5933000 	ldr	r3, [r3]
    1028:	e50b3008 	str	r3, [fp, #-8]
    102c:	e51b200c 	ldr	r2, [fp, #-12]
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e1520003 	cmp	r2, r3
    1038:	9affffea 	bls	fe8 <free+0x2c>
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e51b200c 	ldr	r2, [fp, #-12]
    1048:	e1520003 	cmp	r2, r3
    104c:	2affffe5 	bcs	fe8 <free+0x2c>
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e5933004 	ldr	r3, [r3, #4]
    1058:	e1a03183 	lsl	r3, r3, #3
    105c:	e51b200c 	ldr	r2, [fp, #-12]
    1060:	e0822003 	add	r2, r2, r3
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5933000 	ldr	r3, [r3]
    106c:	e1520003 	cmp	r2, r3
    1070:	1a00000d 	bne	10ac <free+0xf0>
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e5932004 	ldr	r2, [r3, #4]
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e5933000 	ldr	r3, [r3]
    1084:	e5933004 	ldr	r3, [r3, #4]
    1088:	e0822003 	add	r2, r2, r3
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e5832004 	str	r2, [r3, #4]
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e5932000 	ldr	r2, [r3]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e5832000 	str	r2, [r3]
    10a8:	ea000003 	b	10bc <free+0x100>
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e5932000 	ldr	r2, [r3]
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e5832000 	str	r2, [r3]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5933004 	ldr	r3, [r3, #4]
    10c4:	e1a03183 	lsl	r3, r3, #3
    10c8:	e51b2008 	ldr	r2, [fp, #-8]
    10cc:	e0823003 	add	r3, r2, r3
    10d0:	e51b200c 	ldr	r2, [fp, #-12]
    10d4:	e1520003 	cmp	r2, r3
    10d8:	1a00000b 	bne	110c <free+0x150>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5932004 	ldr	r2, [r3, #4]
    10e4:	e51b300c 	ldr	r3, [fp, #-12]
    10e8:	e5933004 	ldr	r3, [r3, #4]
    10ec:	e0822003 	add	r2, r2, r3
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5832004 	str	r2, [r3, #4]
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e5932000 	ldr	r2, [r3]
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e5832000 	str	r2, [r3]
    1108:	ea000002 	b	1118 <free+0x15c>
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e51b200c 	ldr	r2, [fp, #-12]
    1114:	e5832000 	str	r2, [r3]
    1118:	e59f2014 	ldr	r2, [pc, #20]	; 1134 <free+0x178>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5823000 	str	r3, [r2]
    1124:	e1a00000 	nop			; (mov r0, r0)
    1128:	e28bd000 	add	sp, fp, #0
    112c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    1130:	e12fff1e 	bx	lr
    1134:	000014c4 	.word	0x000014c4

00001138 <morecore>:
    1138:	e92d4800 	push	{fp, lr}
    113c:	e28db004 	add	fp, sp, #4
    1140:	e24dd010 	sub	sp, sp, #16
    1144:	e50b0010 	str	r0, [fp, #-16]
    1148:	e51b3010 	ldr	r3, [fp, #-16]
    114c:	e3530a01 	cmp	r3, #4096	; 0x1000
    1150:	2a000001 	bcs	115c <morecore+0x24>
    1154:	e3a03a01 	mov	r3, #4096	; 0x1000
    1158:	e50b3010 	str	r3, [fp, #-16]
    115c:	e51b3010 	ldr	r3, [fp, #-16]
    1160:	e1a03183 	lsl	r3, r3, #3
    1164:	e1a00003 	mov	r0, r3
    1168:	ebfffe63 	bl	afc <sbrk>
    116c:	e50b0008 	str	r0, [fp, #-8]
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e3730001 	cmn	r3, #1
    1178:	1a000001 	bne	1184 <morecore+0x4c>
    117c:	e3a03000 	mov	r3, #0
    1180:	ea00000a 	b	11b0 <morecore+0x78>
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e50b300c 	str	r3, [fp, #-12]
    118c:	e51b300c 	ldr	r3, [fp, #-12]
    1190:	e51b2010 	ldr	r2, [fp, #-16]
    1194:	e5832004 	str	r2, [r3, #4]
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e2833008 	add	r3, r3, #8
    11a0:	e1a00003 	mov	r0, r3
    11a4:	ebffff84 	bl	fbc <free>
    11a8:	e59f300c 	ldr	r3, [pc, #12]	; 11bc <morecore+0x84>
    11ac:	e5933000 	ldr	r3, [r3]
    11b0:	e1a00003 	mov	r0, r3
    11b4:	e24bd004 	sub	sp, fp, #4
    11b8:	e8bd8800 	pop	{fp, pc}
    11bc:	000014c4 	.word	0x000014c4

000011c0 <malloc>:
    11c0:	e92d4800 	push	{fp, lr}
    11c4:	e28db004 	add	fp, sp, #4
    11c8:	e24dd018 	sub	sp, sp, #24
    11cc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    11d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    11d4:	e2833007 	add	r3, r3, #7
    11d8:	e1a031a3 	lsr	r3, r3, #3
    11dc:	e2833001 	add	r3, r3, #1
    11e0:	e50b3010 	str	r3, [fp, #-16]
    11e4:	e59f3134 	ldr	r3, [pc, #308]	; 1320 <malloc+0x160>
    11e8:	e5933000 	ldr	r3, [r3]
    11ec:	e50b300c 	str	r3, [fp, #-12]
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e3530000 	cmp	r3, #0
    11f8:	1a00000b 	bne	122c <malloc+0x6c>
    11fc:	e59f3120 	ldr	r3, [pc, #288]	; 1324 <malloc+0x164>
    1200:	e50b300c 	str	r3, [fp, #-12]
    1204:	e59f2114 	ldr	r2, [pc, #276]	; 1320 <malloc+0x160>
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5823000 	str	r3, [r2]
    1210:	e59f3108 	ldr	r3, [pc, #264]	; 1320 <malloc+0x160>
    1214:	e5933000 	ldr	r3, [r3]
    1218:	e59f2104 	ldr	r2, [pc, #260]	; 1324 <malloc+0x164>
    121c:	e5823000 	str	r3, [r2]
    1220:	e59f30fc 	ldr	r3, [pc, #252]	; 1324 <malloc+0x164>
    1224:	e3a02000 	mov	r2, #0
    1228:	e5832004 	str	r2, [r3, #4]
    122c:	e51b300c 	ldr	r3, [fp, #-12]
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e50b3008 	str	r3, [fp, #-8]
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5933004 	ldr	r3, [r3, #4]
    1240:	e51b2010 	ldr	r2, [fp, #-16]
    1244:	e1520003 	cmp	r2, r3
    1248:	8a00001e 	bhi	12c8 <malloc+0x108>
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e5933004 	ldr	r3, [r3, #4]
    1254:	e51b2010 	ldr	r2, [fp, #-16]
    1258:	e1520003 	cmp	r2, r3
    125c:	1a000004 	bne	1274 <malloc+0xb4>
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5932000 	ldr	r2, [r3]
    1268:	e51b300c 	ldr	r3, [fp, #-12]
    126c:	e5832000 	str	r2, [r3]
    1270:	ea00000e 	b	12b0 <malloc+0xf0>
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5932004 	ldr	r2, [r3, #4]
    127c:	e51b3010 	ldr	r3, [fp, #-16]
    1280:	e0422003 	sub	r2, r2, r3
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5832004 	str	r2, [r3, #4]
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e5933004 	ldr	r3, [r3, #4]
    1294:	e1a03183 	lsl	r3, r3, #3
    1298:	e51b2008 	ldr	r2, [fp, #-8]
    129c:	e0823003 	add	r3, r2, r3
    12a0:	e50b3008 	str	r3, [fp, #-8]
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e51b2010 	ldr	r2, [fp, #-16]
    12ac:	e5832004 	str	r2, [r3, #4]
    12b0:	e59f2068 	ldr	r2, [pc, #104]	; 1320 <malloc+0x160>
    12b4:	e51b300c 	ldr	r3, [fp, #-12]
    12b8:	e5823000 	str	r3, [r2]
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e2833008 	add	r3, r3, #8
    12c4:	ea000012 	b	1314 <malloc+0x154>
    12c8:	e59f3050 	ldr	r3, [pc, #80]	; 1320 <malloc+0x160>
    12cc:	e5933000 	ldr	r3, [r3]
    12d0:	e51b2008 	ldr	r2, [fp, #-8]
    12d4:	e1520003 	cmp	r2, r3
    12d8:	1a000007 	bne	12fc <malloc+0x13c>
    12dc:	e51b0010 	ldr	r0, [fp, #-16]
    12e0:	ebffff94 	bl	1138 <morecore>
    12e4:	e50b0008 	str	r0, [fp, #-8]
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e3530000 	cmp	r3, #0
    12f0:	1a000001 	bne	12fc <malloc+0x13c>
    12f4:	e3a03000 	mov	r3, #0
    12f8:	ea000005 	b	1314 <malloc+0x154>
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5933000 	ldr	r3, [r3]
    130c:	e50b3008 	str	r3, [fp, #-8]
    1310:	eaffffc8 	b	1238 <malloc+0x78>
    1314:	e1a00003 	mov	r0, r3
    1318:	e24bd004 	sub	sp, fp, #4
    131c:	e8bd8800 	pop	{fp, pc}
    1320:	000014c4 	.word	0x000014c4
    1324:	000014bc 	.word	0x000014bc

00001328 <__udivsi3>:
    1328:	e2512001 	subs	r2, r1, #1
    132c:	012fff1e 	bxeq	lr
    1330:	3a000036 	bcc	1410 <__udivsi3+0xe8>
    1334:	e1500001 	cmp	r0, r1
    1338:	9a000022 	bls	13c8 <__udivsi3+0xa0>
    133c:	e1110002 	tst	r1, r2
    1340:	0a000023 	beq	13d4 <__udivsi3+0xac>
    1344:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1348:	01a01181 	lsleq	r1, r1, #3
    134c:	03a03008 	moveq	r3, #8
    1350:	13a03001 	movne	r3, #1
    1354:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1358:	31510000 	cmpcc	r1, r0
    135c:	31a01201 	lslcc	r1, r1, #4
    1360:	31a03203 	lslcc	r3, r3, #4
    1364:	3afffffa 	bcc	1354 <__udivsi3+0x2c>
    1368:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    136c:	31510000 	cmpcc	r1, r0
    1370:	31a01081 	lslcc	r1, r1, #1
    1374:	31a03083 	lslcc	r3, r3, #1
    1378:	3afffffa 	bcc	1368 <__udivsi3+0x40>
    137c:	e3a02000 	mov	r2, #0
    1380:	e1500001 	cmp	r0, r1
    1384:	20400001 	subcs	r0, r0, r1
    1388:	21822003 	orrcs	r2, r2, r3
    138c:	e15000a1 	cmp	r0, r1, lsr #1
    1390:	204000a1 	subcs	r0, r0, r1, lsr #1
    1394:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1398:	e1500121 	cmp	r0, r1, lsr #2
    139c:	20400121 	subcs	r0, r0, r1, lsr #2
    13a0:	21822123 	orrcs	r2, r2, r3, lsr #2
    13a4:	e15001a1 	cmp	r0, r1, lsr #3
    13a8:	204001a1 	subcs	r0, r0, r1, lsr #3
    13ac:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13b0:	e3500000 	cmp	r0, #0
    13b4:	11b03223 	lsrsne	r3, r3, #4
    13b8:	11a01221 	lsrne	r1, r1, #4
    13bc:	1affffef 	bne	1380 <__udivsi3+0x58>
    13c0:	e1a00002 	mov	r0, r2
    13c4:	e12fff1e 	bx	lr
    13c8:	03a00001 	moveq	r0, #1
    13cc:	13a00000 	movne	r0, #0
    13d0:	e12fff1e 	bx	lr
    13d4:	e3510801 	cmp	r1, #65536	; 0x10000
    13d8:	21a01821 	lsrcs	r1, r1, #16
    13dc:	23a02010 	movcs	r2, #16
    13e0:	33a02000 	movcc	r2, #0
    13e4:	e3510c01 	cmp	r1, #256	; 0x100
    13e8:	21a01421 	lsrcs	r1, r1, #8
    13ec:	22822008 	addcs	r2, r2, #8
    13f0:	e3510010 	cmp	r1, #16
    13f4:	21a01221 	lsrcs	r1, r1, #4
    13f8:	22822004 	addcs	r2, r2, #4
    13fc:	e3510004 	cmp	r1, #4
    1400:	82822003 	addhi	r2, r2, #3
    1404:	908220a1 	addls	r2, r2, r1, lsr #1
    1408:	e1a00230 	lsr	r0, r0, r2
    140c:	e12fff1e 	bx	lr
    1410:	e3500000 	cmp	r0, #0
    1414:	13e00000 	mvnne	r0, #0
    1418:	ea000007 	b	143c <__aeabi_idiv0>

0000141c <__aeabi_uidivmod>:
    141c:	e3510000 	cmp	r1, #0
    1420:	0afffffa 	beq	1410 <__udivsi3+0xe8>
    1424:	e92d4003 	push	{r0, r1, lr}
    1428:	ebffffbe 	bl	1328 <__udivsi3>
    142c:	e8bd4006 	pop	{r1, r2, lr}
    1430:	e0030092 	mul	r3, r2, r0
    1434:	e0411003 	sub	r1, r1, r3
    1438:	e12fff1e 	bx	lr

0000143c <__aeabi_idiv0>:
    143c:	e12fff1e 	bx	lr
