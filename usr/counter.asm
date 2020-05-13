
_counter:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	e3a03000 	mov	r3, #0
      20:	e50b300c 	str	r3, [fp, #-12]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e3530002 	cmp	r3, #2
      2c:	1a000002 	bne	3c <main+0x3c>
      30:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      34:	e5933004 	ldr	r3, [r3, #4]
      38:	e50b300c 	str	r3, [fp, #-12]
      3c:	e51b300c 	ldr	r3, [fp, #-12]
      40:	e3530000 	cmp	r3, #0
      44:	0a000005 	beq	60 <main+0x60>
      48:	e51b3008 	ldr	r3, [fp, #-8]
      4c:	e51b200c 	ldr	r2, [fp, #-12]
      50:	e59f1030 	ldr	r1, [pc, #48]	; 88 <main+0x88>
      54:	e3a00001 	mov	r0, #1
      58:	eb000286 	bl	a78 <printf>
      5c:	ea000003 	b	70 <main+0x70>
      60:	e51b2008 	ldr	r2, [fp, #-8]
      64:	e59f1020 	ldr	r1, [pc, #32]	; 8c <main+0x8c>
      68:	e3a00001 	mov	r0, #1
      6c:	eb000281 	bl	a78 <printf>
      70:	e3a0001e 	mov	r0, #30
      74:	eb0001e5 	bl	810 <sleep>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e2833001 	add	r3, r3, #1
      80:	e50b3008 	str	r3, [fp, #-8]
      84:	eaffffec 	b	3c <main+0x3c>
      88:	00001130 	.word	0x00001130
      8c:	00001140 	.word	0x00001140

00000090 <strcpy>:
      90:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e1a00000 	nop			; (mov r0, r0)
      b0:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      b4:	e2823001 	add	r3, r2, #1
      b8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      bc:	e51b3010 	ldr	r3, [fp, #-16]
      c0:	e2831001 	add	r1, r3, #1
      c4:	e50b1010 	str	r1, [fp, #-16]
      c8:	e5d22000 	ldrb	r2, [r2]
      cc:	e5c32000 	strb	r2, [r3]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e3530000 	cmp	r3, #0
      d8:	1afffff4 	bne	b0 <strcpy+0x20>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	e28bd000 	add	sp, fp, #0
      e8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      ec:	e12fff1e 	bx	lr

000000f0 <strcmp>:
      f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      f4:	e28db000 	add	fp, sp, #0
      f8:	e24dd00c 	sub	sp, sp, #12
      fc:	e50b0008 	str	r0, [fp, #-8]
     100:	e50b100c 	str	r1, [fp, #-12]
     104:	ea000005 	b	120 <strcmp+0x30>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e2833001 	add	r3, r3, #1
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b300c 	str	r3, [fp, #-12]
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e3530000 	cmp	r3, #0
     12c:	0a000005 	beq	148 <strcmp+0x58>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e5d32000 	ldrb	r2, [r3]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1520003 	cmp	r2, r3
     144:	0affffef 	beq	108 <strcmp+0x18>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e5d33000 	ldrb	r3, [r3]
     150:	e1a02003 	mov	r2, r3
     154:	e51b300c 	ldr	r3, [fp, #-12]
     158:	e5d33000 	ldrb	r3, [r3]
     15c:	e0423003 	sub	r3, r2, r3
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strlen>:
     170:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e3a03000 	mov	r3, #0
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	ea000002 	b	198 <strlen+0x28>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e51b2010 	ldr	r2, [fp, #-16]
     1a0:	e0823003 	add	r3, r2, r3
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffff6 	bne	18c <strlen+0x1c>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e28bd000 	add	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <memset>:
     1c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd024 	sub	sp, sp, #36	; 0x24
     1d0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     1d4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     1d8:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     1dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     1e8:	e54b300d 	strb	r3, [fp, #-13]
     1ec:	e55b300d 	ldrb	r3, [fp, #-13]
     1f0:	e1a02c03 	lsl	r2, r3, #24
     1f4:	e55b300d 	ldrb	r3, [fp, #-13]
     1f8:	e1a03803 	lsl	r3, r3, #16
     1fc:	e1822003 	orr	r2, r2, r3
     200:	e55b300d 	ldrb	r3, [fp, #-13]
     204:	e1a03403 	lsl	r3, r3, #8
     208:	e1822003 	orr	r2, r2, r3
     20c:	e55b300d 	ldrb	r3, [fp, #-13]
     210:	e1823003 	orr	r3, r2, r3
     214:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     218:	ea000008 	b	240 <memset+0x7c>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e55b200d 	ldrb	r2, [fp, #-13]
     224:	e5c32000 	strb	r2, [r3]
     228:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     22c:	e2433001 	sub	r3, r3, #1
     230:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     244:	e3530000 	cmp	r3, #0
     248:	0a000003 	beq	25c <memset+0x98>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2033003 	and	r3, r3, #3
     254:	e3530000 	cmp	r3, #0
     258:	1affffef 	bne	21c <memset+0x58>
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e50b300c 	str	r3, [fp, #-12]
     264:	ea000008 	b	28c <memset+0xc8>
     268:	e51b300c 	ldr	r3, [fp, #-12]
     26c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     270:	e5832000 	str	r2, [r3]
     274:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     278:	e2433004 	sub	r3, r3, #4
     27c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e2833004 	add	r3, r3, #4
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     290:	e3530003 	cmp	r3, #3
     294:	8afffff3 	bhi	268 <memset+0xa4>
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e50b3008 	str	r3, [fp, #-8]
     2a0:	ea000008 	b	2c8 <memset+0x104>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ac:	e5c32000 	strb	r2, [r3]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2b4:	e2433001 	sub	r3, r3, #1
     2b8:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff3 	bne	2a4 <memset+0xe0>
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <strchr>:
     2e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2ec:	e28db000 	add	fp, sp, #0
     2f0:	e24dd00c 	sub	sp, sp, #12
     2f4:	e50b0008 	str	r0, [fp, #-8]
     2f8:	e1a03001 	mov	r3, r1
     2fc:	e54b3009 	strb	r3, [fp, #-9]
     300:	ea000009 	b	32c <strchr+0x44>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e55b2009 	ldrb	r2, [fp, #-9]
     310:	e1520003 	cmp	r2, r3
     314:	1a000001 	bne	320 <strchr+0x38>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	ea000007 	b	340 <strchr+0x58>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e2833001 	add	r3, r3, #1
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530000 	cmp	r3, #0
     338:	1afffff1 	bne	304 <strchr+0x1c>
     33c:	e3a03000 	mov	r3, #0
     340:	e1a00003 	mov	r0, r3
     344:	e28bd000 	add	sp, fp, #0
     348:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     34c:	e12fff1e 	bx	lr

00000350 <gets>:
     350:	e92d4800 	push	{fp, lr}
     354:	e28db004 	add	fp, sp, #4
     358:	e24dd018 	sub	sp, sp, #24
     35c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     360:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     364:	e3a03000 	mov	r3, #0
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	ea000016 	b	3cc <gets+0x7c>
     370:	e24b300d 	sub	r3, fp, #13
     374:	e3a02001 	mov	r2, #1
     378:	e1a01003 	mov	r1, r3
     37c:	e3a00000 	mov	r0, #0
     380:	eb00009b 	bl	5f4 <read>
     384:	e50b000c 	str	r0, [fp, #-12]
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e3530000 	cmp	r3, #0
     390:	da000013 	ble	3e4 <gets+0x94>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e2832001 	add	r2, r3, #1
     39c:	e50b2008 	str	r2, [fp, #-8]
     3a0:	e1a02003 	mov	r2, r3
     3a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3a8:	e0833002 	add	r3, r3, r2
     3ac:	e55b200d 	ldrb	r2, [fp, #-13]
     3b0:	e5c32000 	strb	r2, [r3]
     3b4:	e55b300d 	ldrb	r3, [fp, #-13]
     3b8:	e353000a 	cmp	r3, #10
     3bc:	0a000009 	beq	3e8 <gets+0x98>
     3c0:	e55b300d 	ldrb	r3, [fp, #-13]
     3c4:	e353000d 	cmp	r3, #13
     3c8:	0a000006 	beq	3e8 <gets+0x98>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e2833001 	add	r3, r3, #1
     3d4:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     3d8:	e1520003 	cmp	r2, r3
     3dc:	caffffe3 	bgt	370 <gets+0x20>
     3e0:	ea000000 	b	3e8 <gets+0x98>
     3e4:	e1a00000 	nop			; (mov r0, r0)
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     3f0:	e0823003 	add	r3, r2, r3
     3f4:	e3a02000 	mov	r2, #0
     3f8:	e5c32000 	strb	r2, [r3]
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     400:	e1a00003 	mov	r0, r3
     404:	e24bd004 	sub	sp, fp, #4
     408:	e8bd8800 	pop	{fp, pc}

0000040c <stat>:
     40c:	e92d4800 	push	{fp, lr}
     410:	e28db004 	add	fp, sp, #4
     414:	e24dd010 	sub	sp, sp, #16
     418:	e50b0010 	str	r0, [fp, #-16]
     41c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     420:	e3a01000 	mov	r1, #0
     424:	e51b0010 	ldr	r0, [fp, #-16]
     428:	eb00009e 	bl	6a8 <open>
     42c:	e50b0008 	str	r0, [fp, #-8]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e3530000 	cmp	r3, #0
     438:	aa000001 	bge	444 <stat+0x38>
     43c:	e3e03000 	mvn	r3, #0
     440:	ea000006 	b	460 <stat+0x54>
     444:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb0000b0 	bl	714 <fstat>
     450:	e50b000c 	str	r0, [fp, #-12]
     454:	e51b0008 	ldr	r0, [fp, #-8]
     458:	eb000077 	bl	63c <close>
     45c:	e51b300c 	ldr	r3, [fp, #-12]
     460:	e1a00003 	mov	r0, r3
     464:	e24bd004 	sub	sp, fp, #4
     468:	e8bd8800 	pop	{fp, pc}

0000046c <atoi>:
     46c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     470:	e28db000 	add	fp, sp, #0
     474:	e24dd014 	sub	sp, sp, #20
     478:	e50b0010 	str	r0, [fp, #-16]
     47c:	e3a03000 	mov	r3, #0
     480:	e50b3008 	str	r3, [fp, #-8]
     484:	ea00000c 	b	4bc <atoi+0x50>
     488:	e51b2008 	ldr	r2, [fp, #-8]
     48c:	e1a03002 	mov	r3, r2
     490:	e1a03103 	lsl	r3, r3, #2
     494:	e0833002 	add	r3, r3, r2
     498:	e1a03083 	lsl	r3, r3, #1
     49c:	e1a01003 	mov	r1, r3
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e2832001 	add	r2, r3, #1
     4a8:	e50b2010 	str	r2, [fp, #-16]
     4ac:	e5d33000 	ldrb	r3, [r3]
     4b0:	e0813003 	add	r3, r1, r3
     4b4:	e2433030 	sub	r3, r3, #48	; 0x30
     4b8:	e50b3008 	str	r3, [fp, #-8]
     4bc:	e51b3010 	ldr	r3, [fp, #-16]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e353002f 	cmp	r3, #47	; 0x2f
     4c8:	9a000003 	bls	4dc <atoi+0x70>
     4cc:	e51b3010 	ldr	r3, [fp, #-16]
     4d0:	e5d33000 	ldrb	r3, [r3]
     4d4:	e3530039 	cmp	r3, #57	; 0x39
     4d8:	9affffea 	bls	488 <atoi+0x1c>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e1a00003 	mov	r0, r3
     4e4:	e28bd000 	add	sp, fp, #0
     4e8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4ec:	e12fff1e 	bx	lr

000004f0 <memmove>:
     4f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4f4:	e28db000 	add	fp, sp, #0
     4f8:	e24dd01c 	sub	sp, sp, #28
     4fc:	e50b0010 	str	r0, [fp, #-16]
     500:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     504:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     508:	e51b3010 	ldr	r3, [fp, #-16]
     50c:	e50b3008 	str	r3, [fp, #-8]
     510:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     514:	e50b300c 	str	r3, [fp, #-12]
     518:	ea000007 	b	53c <memmove+0x4c>
     51c:	e51b200c 	ldr	r2, [fp, #-12]
     520:	e2823001 	add	r3, r2, #1
     524:	e50b300c 	str	r3, [fp, #-12]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e2831001 	add	r1, r3, #1
     530:	e50b1008 	str	r1, [fp, #-8]
     534:	e5d22000 	ldrb	r2, [r2]
     538:	e5c32000 	strb	r2, [r3]
     53c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     540:	e2432001 	sub	r2, r3, #1
     544:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     548:	e3530000 	cmp	r3, #0
     54c:	cafffff2 	bgt	51c <memmove+0x2c>
     550:	e51b3010 	ldr	r3, [fp, #-16]
     554:	e1a00003 	mov	r0, r3
     558:	e28bd000 	add	sp, fp, #0
     55c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     560:	e12fff1e 	bx	lr

00000564 <fork>:
     564:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     568:	e1a04003 	mov	r4, r3
     56c:	e1a03002 	mov	r3, r2
     570:	e1a02001 	mov	r2, r1
     574:	e1a01000 	mov	r1, r0
     578:	e3a00001 	mov	r0, #1
     57c:	ef000000 	svc	0x00000000
     580:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <exit>:
     588:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     58c:	e1a04003 	mov	r4, r3
     590:	e1a03002 	mov	r3, r2
     594:	e1a02001 	mov	r2, r1
     598:	e1a01000 	mov	r1, r0
     59c:	e3a00002 	mov	r0, #2
     5a0:	ef000000 	svc	0x00000000
     5a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <wait>:
     5ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5b0:	e1a04003 	mov	r4, r3
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a02001 	mov	r2, r1
     5bc:	e1a01000 	mov	r1, r0
     5c0:	e3a00003 	mov	r0, #3
     5c4:	ef000000 	svc	0x00000000
     5c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <pipe>:
     5d0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00004 	mov	r0, #4
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <read>:
     5f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00005 	mov	r0, #5
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <write>:
     618:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00010 	mov	r0, #16
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <close>:
     63c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00015 	mov	r0, #21
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <kill>:
     660:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00006 	mov	r0, #6
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <exec>:
     684:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00007 	mov	r0, #7
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <open>:
     6a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a0000f 	mov	r0, #15
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <mknod>:
     6cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00011 	mov	r0, #17
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <unlink>:
     6f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00012 	mov	r0, #18
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <fstat>:
     714:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00008 	mov	r0, #8
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <link>:
     738:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00013 	mov	r0, #19
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <mkdir>:
     75c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00014 	mov	r0, #20
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <chdir>:
     780:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00009 	mov	r0, #9
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <dup>:
     7a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a0000a 	mov	r0, #10
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <getpid>:
     7c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a0000b 	mov	r0, #11
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <sbrk>:
     7ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a0000c 	mov	r0, #12
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <sleep>:
     810:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000d 	mov	r0, #13
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <uptime>:
     834:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000e 	mov	r0, #14
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <memfree>:
     858:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00016 	mov	r0, #22
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <traceon>:
     87c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00017 	mov	r0, #23
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <getps>:
     8a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00018 	mov	r0, #24
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <suspend>:
     8c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00019 	mov	r0, #25
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <resume>:
     8e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a0001a 	mov	r0, #26
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <putc>:
     90c:	e92d4800 	push	{fp, lr}
     910:	e28db004 	add	fp, sp, #4
     914:	e24dd008 	sub	sp, sp, #8
     918:	e50b0008 	str	r0, [fp, #-8]
     91c:	e1a03001 	mov	r3, r1
     920:	e54b3009 	strb	r3, [fp, #-9]
     924:	e24b3009 	sub	r3, fp, #9
     928:	e3a02001 	mov	r2, #1
     92c:	e1a01003 	mov	r1, r3
     930:	e51b0008 	ldr	r0, [fp, #-8]
     934:	ebffff37 	bl	618 <write>
     938:	e1a00000 	nop			; (mov r0, r0)
     93c:	e24bd004 	sub	sp, fp, #4
     940:	e8bd8800 	pop	{fp, pc}

00000944 <printint>:
     944:	e92d4800 	push	{fp, lr}
     948:	e28db004 	add	fp, sp, #4
     94c:	e24dd030 	sub	sp, sp, #48	; 0x30
     950:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     954:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     958:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     95c:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     960:	e3a03000 	mov	r3, #0
     964:	e50b300c 	str	r3, [fp, #-12]
     968:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     96c:	e3530000 	cmp	r3, #0
     970:	0a000008 	beq	998 <printint+0x54>
     974:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     978:	e3530000 	cmp	r3, #0
     97c:	aa000005 	bge	998 <printint+0x54>
     980:	e3a03001 	mov	r3, #1
     984:	e50b300c 	str	r3, [fp, #-12]
     988:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     98c:	e2633000 	rsb	r3, r3, #0
     990:	e50b3010 	str	r3, [fp, #-16]
     994:	ea000001 	b	9a0 <printint+0x5c>
     998:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     99c:	e50b3010 	str	r3, [fp, #-16]
     9a0:	e3a03000 	mov	r3, #0
     9a4:	e50b3008 	str	r3, [fp, #-8]
     9a8:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     9ac:	e51b3010 	ldr	r3, [fp, #-16]
     9b0:	e1a01002 	mov	r1, r2
     9b4:	e1a00003 	mov	r0, r3
     9b8:	eb0001d3 	bl	110c <__aeabi_uidivmod>
     9bc:	e1a03001 	mov	r3, r1
     9c0:	e1a01003 	mov	r1, r3
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e2832001 	add	r2, r3, #1
     9cc:	e50b2008 	str	r2, [fp, #-8]
     9d0:	e59f209c 	ldr	r2, [pc, #156]	; a74 <printint+0x130>
     9d4:	e7d22001 	ldrb	r2, [r2, r1]
     9d8:	e24b1004 	sub	r1, fp, #4
     9dc:	e0813003 	add	r3, r1, r3
     9e0:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9e4:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     9e8:	e1a01003 	mov	r1, r3
     9ec:	e51b0010 	ldr	r0, [fp, #-16]
     9f0:	eb000188 	bl	1018 <__udivsi3>
     9f4:	e1a03000 	mov	r3, r0
     9f8:	e50b3010 	str	r3, [fp, #-16]
     9fc:	e51b3010 	ldr	r3, [fp, #-16]
     a00:	e3530000 	cmp	r3, #0
     a04:	1affffe7 	bne	9a8 <printint+0x64>
     a08:	e51b300c 	ldr	r3, [fp, #-12]
     a0c:	e3530000 	cmp	r3, #0
     a10:	0a00000e 	beq	a50 <printint+0x10c>
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e2832001 	add	r2, r3, #1
     a1c:	e50b2008 	str	r2, [fp, #-8]
     a20:	e24b2004 	sub	r2, fp, #4
     a24:	e0823003 	add	r3, r2, r3
     a28:	e3a0202d 	mov	r2, #45	; 0x2d
     a2c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a30:	ea000006 	b	a50 <printint+0x10c>
     a34:	e24b2020 	sub	r2, fp, #32
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e0823003 	add	r3, r2, r3
     a40:	e5d33000 	ldrb	r3, [r3]
     a44:	e1a01003 	mov	r1, r3
     a48:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     a4c:	ebffffae 	bl	90c <putc>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e2433001 	sub	r3, r3, #1
     a58:	e50b3008 	str	r3, [fp, #-8]
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e3530000 	cmp	r3, #0
     a64:	aafffff2 	bge	a34 <printint+0xf0>
     a68:	e1a00000 	nop			; (mov r0, r0)
     a6c:	e24bd004 	sub	sp, fp, #4
     a70:	e8bd8800 	pop	{fp, pc}
     a74:	00001150 	.word	0x00001150

00000a78 <printf>:
     a78:	e92d000e 	push	{r1, r2, r3}
     a7c:	e92d4800 	push	{fp, lr}
     a80:	e28db004 	add	fp, sp, #4
     a84:	e24dd024 	sub	sp, sp, #36	; 0x24
     a88:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a8c:	e3a03000 	mov	r3, #0
     a90:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a94:	e28b3008 	add	r3, fp, #8
     a98:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a9c:	e3a03000 	mov	r3, #0
     aa0:	e50b3010 	str	r3, [fp, #-16]
     aa4:	ea000074 	b	c7c <printf+0x204>
     aa8:	e59b2004 	ldr	r2, [fp, #4]
     aac:	e51b3010 	ldr	r3, [fp, #-16]
     ab0:	e0823003 	add	r3, r2, r3
     ab4:	e5d33000 	ldrb	r3, [r3]
     ab8:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     abc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ac0:	e3530000 	cmp	r3, #0
     ac4:	1a00000b 	bne	af8 <printf+0x80>
     ac8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     acc:	e3530025 	cmp	r3, #37	; 0x25
     ad0:	1a000002 	bne	ae0 <printf+0x68>
     ad4:	e3a03025 	mov	r3, #37	; 0x25
     ad8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     adc:	ea000063 	b	c70 <printf+0x1f8>
     ae0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ae4:	e6ef3073 	uxtb	r3, r3
     ae8:	e1a01003 	mov	r1, r3
     aec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     af0:	ebffff85 	bl	90c <putc>
     af4:	ea00005d 	b	c70 <printf+0x1f8>
     af8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     afc:	e3530025 	cmp	r3, #37	; 0x25
     b00:	1a00005a 	bne	c70 <printf+0x1f8>
     b04:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b08:	e3530064 	cmp	r3, #100	; 0x64
     b0c:	1a00000a 	bne	b3c <printf+0xc4>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b14:	e5933000 	ldr	r3, [r3]
     b18:	e1a01003 	mov	r1, r3
     b1c:	e3a03001 	mov	r3, #1
     b20:	e3a0200a 	mov	r2, #10
     b24:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b28:	ebffff85 	bl	944 <printint>
     b2c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b30:	e2833004 	add	r3, r3, #4
     b34:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b38:	ea00004a 	b	c68 <printf+0x1f0>
     b3c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b40:	e3530078 	cmp	r3, #120	; 0x78
     b44:	0a000002 	beq	b54 <printf+0xdc>
     b48:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b4c:	e3530070 	cmp	r3, #112	; 0x70
     b50:	1a00000a 	bne	b80 <printf+0x108>
     b54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b58:	e5933000 	ldr	r3, [r3]
     b5c:	e1a01003 	mov	r1, r3
     b60:	e3a03000 	mov	r3, #0
     b64:	e3a02010 	mov	r2, #16
     b68:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b6c:	ebffff74 	bl	944 <printint>
     b70:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b74:	e2833004 	add	r3, r3, #4
     b78:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b7c:	ea000039 	b	c68 <printf+0x1f0>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b84:	e3530073 	cmp	r3, #115	; 0x73
     b88:	1a000018 	bne	bf0 <printf+0x178>
     b8c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b90:	e5933000 	ldr	r3, [r3]
     b94:	e50b300c 	str	r3, [fp, #-12]
     b98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b9c:	e2833004 	add	r3, r3, #4
     ba0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ba4:	e51b300c 	ldr	r3, [fp, #-12]
     ba8:	e3530000 	cmp	r3, #0
     bac:	1a00000a 	bne	bdc <printf+0x164>
     bb0:	e59f30f0 	ldr	r3, [pc, #240]	; ca8 <printf+0x230>
     bb4:	e50b300c 	str	r3, [fp, #-12]
     bb8:	ea000007 	b	bdc <printf+0x164>
     bbc:	e51b300c 	ldr	r3, [fp, #-12]
     bc0:	e5d33000 	ldrb	r3, [r3]
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bcc:	ebffff4e 	bl	90c <putc>
     bd0:	e51b300c 	ldr	r3, [fp, #-12]
     bd4:	e2833001 	add	r3, r3, #1
     bd8:	e50b300c 	str	r3, [fp, #-12]
     bdc:	e51b300c 	ldr	r3, [fp, #-12]
     be0:	e5d33000 	ldrb	r3, [r3]
     be4:	e3530000 	cmp	r3, #0
     be8:	1afffff3 	bne	bbc <printf+0x144>
     bec:	ea00001d 	b	c68 <printf+0x1f0>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bf4:	e3530063 	cmp	r3, #99	; 0x63
     bf8:	1a000009 	bne	c24 <printf+0x1ac>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e6ef3073 	uxtb	r3, r3
     c08:	e1a01003 	mov	r1, r3
     c0c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c10:	ebffff3d 	bl	90c <putc>
     c14:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c18:	e2833004 	add	r3, r3, #4
     c1c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c20:	ea000010 	b	c68 <printf+0x1f0>
     c24:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c28:	e3530025 	cmp	r3, #37	; 0x25
     c2c:	1a000005 	bne	c48 <printf+0x1d0>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c34:	e6ef3073 	uxtb	r3, r3
     c38:	e1a01003 	mov	r1, r3
     c3c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c40:	ebffff31 	bl	90c <putc>
     c44:	ea000007 	b	c68 <printf+0x1f0>
     c48:	e3a01025 	mov	r1, #37	; 0x25
     c4c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c50:	ebffff2d 	bl	90c <putc>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c58:	e6ef3073 	uxtb	r3, r3
     c5c:	e1a01003 	mov	r1, r3
     c60:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c64:	ebffff28 	bl	90c <putc>
     c68:	e3a03000 	mov	r3, #0
     c6c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c70:	e51b3010 	ldr	r3, [fp, #-16]
     c74:	e2833001 	add	r3, r3, #1
     c78:	e50b3010 	str	r3, [fp, #-16]
     c7c:	e59b2004 	ldr	r2, [fp, #4]
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e0823003 	add	r3, r2, r3
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e3530000 	cmp	r3, #0
     c90:	1affff84 	bne	aa8 <printf+0x30>
     c94:	e1a00000 	nop			; (mov r0, r0)
     c98:	e24bd004 	sub	sp, fp, #4
     c9c:	e8bd4800 	pop	{fp, lr}
     ca0:	e28dd00c 	add	sp, sp, #12
     ca4:	e12fff1e 	bx	lr
     ca8:	00001148 	.word	0x00001148

00000cac <free>:
     cac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     cb0:	e28db000 	add	fp, sp, #0
     cb4:	e24dd014 	sub	sp, sp, #20
     cb8:	e50b0010 	str	r0, [fp, #-16]
     cbc:	e51b3010 	ldr	r3, [fp, #-16]
     cc0:	e2433008 	sub	r3, r3, #8
     cc4:	e50b300c 	str	r3, [fp, #-12]
     cc8:	e59f3154 	ldr	r3, [pc, #340]	; e24 <free+0x178>
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e50b3008 	str	r3, [fp, #-8]
     cd4:	ea000010 	b	d1c <free+0x70>
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e51b2008 	ldr	r2, [fp, #-8]
     ce4:	e1520003 	cmp	r2, r3
     ce8:	3a000008 	bcc	d10 <free+0x64>
     cec:	e51b200c 	ldr	r2, [fp, #-12]
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e1520003 	cmp	r2, r3
     cf8:	8a000010 	bhi	d40 <free+0x94>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e51b200c 	ldr	r2, [fp, #-12]
     d08:	e1520003 	cmp	r2, r3
     d0c:	3a00000b 	bcc	d40 <free+0x94>
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e50b3008 	str	r3, [fp, #-8]
     d1c:	e51b200c 	ldr	r2, [fp, #-12]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e1520003 	cmp	r2, r3
     d28:	9affffea 	bls	cd8 <free+0x2c>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e51b200c 	ldr	r2, [fp, #-12]
     d38:	e1520003 	cmp	r2, r3
     d3c:	2affffe5 	bcs	cd8 <free+0x2c>
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e5933004 	ldr	r3, [r3, #4]
     d48:	e1a03183 	lsl	r3, r3, #3
     d4c:	e51b200c 	ldr	r2, [fp, #-12]
     d50:	e0822003 	add	r2, r2, r3
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5933000 	ldr	r3, [r3]
     d5c:	e1520003 	cmp	r2, r3
     d60:	1a00000d 	bne	d9c <free+0xf0>
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5932004 	ldr	r2, [r3, #4]
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5933000 	ldr	r3, [r3]
     d74:	e5933004 	ldr	r3, [r3, #4]
     d78:	e0822003 	add	r2, r2, r3
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5832004 	str	r2, [r3, #4]
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e5932000 	ldr	r2, [r3]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5832000 	str	r2, [r3]
     d98:	ea000003 	b	dac <free+0x100>
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5932000 	ldr	r2, [r3]
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e5832000 	str	r2, [r3]
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5933004 	ldr	r3, [r3, #4]
     db4:	e1a03183 	lsl	r3, r3, #3
     db8:	e51b2008 	ldr	r2, [fp, #-8]
     dbc:	e0823003 	add	r3, r2, r3
     dc0:	e51b200c 	ldr	r2, [fp, #-12]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	1a00000b 	bne	dfc <free+0x150>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5932004 	ldr	r2, [r3, #4]
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e5933004 	ldr	r3, [r3, #4]
     ddc:	e0822003 	add	r2, r2, r3
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5832004 	str	r2, [r3, #4]
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5932000 	ldr	r2, [r3]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5832000 	str	r2, [r3]
     df8:	ea000002 	b	e08 <free+0x15c>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e51b200c 	ldr	r2, [fp, #-12]
     e04:	e5832000 	str	r2, [r3]
     e08:	e59f2014 	ldr	r2, [pc, #20]	; e24 <free+0x178>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5823000 	str	r3, [r2]
     e14:	e1a00000 	nop			; (mov r0, r0)
     e18:	e28bd000 	add	sp, fp, #0
     e1c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     e20:	e12fff1e 	bx	lr
     e24:	0000116c 	.word	0x0000116c

00000e28 <morecore>:
     e28:	e92d4800 	push	{fp, lr}
     e2c:	e28db004 	add	fp, sp, #4
     e30:	e24dd010 	sub	sp, sp, #16
     e34:	e50b0010 	str	r0, [fp, #-16]
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e3530a01 	cmp	r3, #4096	; 0x1000
     e40:	2a000001 	bcs	e4c <morecore+0x24>
     e44:	e3a03a01 	mov	r3, #4096	; 0x1000
     e48:	e50b3010 	str	r3, [fp, #-16]
     e4c:	e51b3010 	ldr	r3, [fp, #-16]
     e50:	e1a03183 	lsl	r3, r3, #3
     e54:	e1a00003 	mov	r0, r3
     e58:	ebfffe63 	bl	7ec <sbrk>
     e5c:	e50b0008 	str	r0, [fp, #-8]
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e3730001 	cmn	r3, #1
     e68:	1a000001 	bne	e74 <morecore+0x4c>
     e6c:	e3a03000 	mov	r3, #0
     e70:	ea00000a 	b	ea0 <morecore+0x78>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e51b2010 	ldr	r2, [fp, #-16]
     e84:	e5832004 	str	r2, [r3, #4]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e2833008 	add	r3, r3, #8
     e90:	e1a00003 	mov	r0, r3
     e94:	ebffff84 	bl	cac <free>
     e98:	e59f300c 	ldr	r3, [pc, #12]	; eac <morecore+0x84>
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e1a00003 	mov	r0, r3
     ea4:	e24bd004 	sub	sp, fp, #4
     ea8:	e8bd8800 	pop	{fp, pc}
     eac:	0000116c 	.word	0x0000116c

00000eb0 <malloc>:
     eb0:	e92d4800 	push	{fp, lr}
     eb4:	e28db004 	add	fp, sp, #4
     eb8:	e24dd018 	sub	sp, sp, #24
     ebc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     ec0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ec4:	e2833007 	add	r3, r3, #7
     ec8:	e1a031a3 	lsr	r3, r3, #3
     ecc:	e2833001 	add	r3, r3, #1
     ed0:	e50b3010 	str	r3, [fp, #-16]
     ed4:	e59f3134 	ldr	r3, [pc, #308]	; 1010 <malloc+0x160>
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e50b300c 	str	r3, [fp, #-12]
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e3530000 	cmp	r3, #0
     ee8:	1a00000b 	bne	f1c <malloc+0x6c>
     eec:	e59f3120 	ldr	r3, [pc, #288]	; 1014 <malloc+0x164>
     ef0:	e50b300c 	str	r3, [fp, #-12]
     ef4:	e59f2114 	ldr	r2, [pc, #276]	; 1010 <malloc+0x160>
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5823000 	str	r3, [r2]
     f00:	e59f3108 	ldr	r3, [pc, #264]	; 1010 <malloc+0x160>
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e59f2104 	ldr	r2, [pc, #260]	; 1014 <malloc+0x164>
     f0c:	e5823000 	str	r3, [r2]
     f10:	e59f30fc 	ldr	r3, [pc, #252]	; 1014 <malloc+0x164>
     f14:	e3a02000 	mov	r2, #0
     f18:	e5832004 	str	r2, [r3, #4]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5933000 	ldr	r3, [r3]
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5933004 	ldr	r3, [r3, #4]
     f30:	e51b2010 	ldr	r2, [fp, #-16]
     f34:	e1520003 	cmp	r2, r3
     f38:	8a00001e 	bhi	fb8 <malloc+0x108>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933004 	ldr	r3, [r3, #4]
     f44:	e51b2010 	ldr	r2, [fp, #-16]
     f48:	e1520003 	cmp	r2, r3
     f4c:	1a000004 	bne	f64 <malloc+0xb4>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5932000 	ldr	r2, [r3]
     f58:	e51b300c 	ldr	r3, [fp, #-12]
     f5c:	e5832000 	str	r2, [r3]
     f60:	ea00000e 	b	fa0 <malloc+0xf0>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5932004 	ldr	r2, [r3, #4]
     f6c:	e51b3010 	ldr	r3, [fp, #-16]
     f70:	e0422003 	sub	r2, r2, r3
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5832004 	str	r2, [r3, #4]
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e5933004 	ldr	r3, [r3, #4]
     f84:	e1a03183 	lsl	r3, r3, #3
     f88:	e51b2008 	ldr	r2, [fp, #-8]
     f8c:	e0823003 	add	r3, r2, r3
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e51b2010 	ldr	r2, [fp, #-16]
     f9c:	e5832004 	str	r2, [r3, #4]
     fa0:	e59f2068 	ldr	r2, [pc, #104]	; 1010 <malloc+0x160>
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e5823000 	str	r3, [r2]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e2833008 	add	r3, r3, #8
     fb4:	ea000012 	b	1004 <malloc+0x154>
     fb8:	e59f3050 	ldr	r3, [pc, #80]	; 1010 <malloc+0x160>
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e51b2008 	ldr	r2, [fp, #-8]
     fc4:	e1520003 	cmp	r2, r3
     fc8:	1a000007 	bne	fec <malloc+0x13c>
     fcc:	e51b0010 	ldr	r0, [fp, #-16]
     fd0:	ebffff94 	bl	e28 <morecore>
     fd4:	e50b0008 	str	r0, [fp, #-8]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	1a000001 	bne	fec <malloc+0x13c>
     fe4:	e3a03000 	mov	r3, #0
     fe8:	ea000005 	b	1004 <malloc+0x154>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e50b300c 	str	r3, [fp, #-12]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5933000 	ldr	r3, [r3]
     ffc:	e50b3008 	str	r3, [fp, #-8]
    1000:	eaffffc8 	b	f28 <malloc+0x78>
    1004:	e1a00003 	mov	r0, r3
    1008:	e24bd004 	sub	sp, fp, #4
    100c:	e8bd8800 	pop	{fp, pc}
    1010:	0000116c 	.word	0x0000116c
    1014:	00001164 	.word	0x00001164

00001018 <__udivsi3>:
    1018:	e2512001 	subs	r2, r1, #1
    101c:	012fff1e 	bxeq	lr
    1020:	3a000036 	bcc	1100 <__udivsi3+0xe8>
    1024:	e1500001 	cmp	r0, r1
    1028:	9a000022 	bls	10b8 <__udivsi3+0xa0>
    102c:	e1110002 	tst	r1, r2
    1030:	0a000023 	beq	10c4 <__udivsi3+0xac>
    1034:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1038:	01a01181 	lsleq	r1, r1, #3
    103c:	03a03008 	moveq	r3, #8
    1040:	13a03001 	movne	r3, #1
    1044:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1048:	31510000 	cmpcc	r1, r0
    104c:	31a01201 	lslcc	r1, r1, #4
    1050:	31a03203 	lslcc	r3, r3, #4
    1054:	3afffffa 	bcc	1044 <__udivsi3+0x2c>
    1058:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    105c:	31510000 	cmpcc	r1, r0
    1060:	31a01081 	lslcc	r1, r1, #1
    1064:	31a03083 	lslcc	r3, r3, #1
    1068:	3afffffa 	bcc	1058 <__udivsi3+0x40>
    106c:	e3a02000 	mov	r2, #0
    1070:	e1500001 	cmp	r0, r1
    1074:	20400001 	subcs	r0, r0, r1
    1078:	21822003 	orrcs	r2, r2, r3
    107c:	e15000a1 	cmp	r0, r1, lsr #1
    1080:	204000a1 	subcs	r0, r0, r1, lsr #1
    1084:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1088:	e1500121 	cmp	r0, r1, lsr #2
    108c:	20400121 	subcs	r0, r0, r1, lsr #2
    1090:	21822123 	orrcs	r2, r2, r3, lsr #2
    1094:	e15001a1 	cmp	r0, r1, lsr #3
    1098:	204001a1 	subcs	r0, r0, r1, lsr #3
    109c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10a0:	e3500000 	cmp	r0, #0
    10a4:	11b03223 	lsrsne	r3, r3, #4
    10a8:	11a01221 	lsrne	r1, r1, #4
    10ac:	1affffef 	bne	1070 <__udivsi3+0x58>
    10b0:	e1a00002 	mov	r0, r2
    10b4:	e12fff1e 	bx	lr
    10b8:	03a00001 	moveq	r0, #1
    10bc:	13a00000 	movne	r0, #0
    10c0:	e12fff1e 	bx	lr
    10c4:	e3510801 	cmp	r1, #65536	; 0x10000
    10c8:	21a01821 	lsrcs	r1, r1, #16
    10cc:	23a02010 	movcs	r2, #16
    10d0:	33a02000 	movcc	r2, #0
    10d4:	e3510c01 	cmp	r1, #256	; 0x100
    10d8:	21a01421 	lsrcs	r1, r1, #8
    10dc:	22822008 	addcs	r2, r2, #8
    10e0:	e3510010 	cmp	r1, #16
    10e4:	21a01221 	lsrcs	r1, r1, #4
    10e8:	22822004 	addcs	r2, r2, #4
    10ec:	e3510004 	cmp	r1, #4
    10f0:	82822003 	addhi	r2, r2, #3
    10f4:	908220a1 	addls	r2, r2, r1, lsr #1
    10f8:	e1a00230 	lsr	r0, r0, r2
    10fc:	e12fff1e 	bx	lr
    1100:	e3500000 	cmp	r0, #0
    1104:	13e00000 	mvnne	r0, #0
    1108:	ea000007 	b	112c <__aeabi_idiv0>

0000110c <__aeabi_uidivmod>:
    110c:	e3510000 	cmp	r1, #0
    1110:	0afffffa 	beq	1100 <__udivsi3+0xe8>
    1114:	e92d4003 	push	{r0, r1, lr}
    1118:	ebffffbe 	bl	1018 <__udivsi3>
    111c:	e8bd4006 	pop	{r1, r2, lr}
    1120:	e0030092 	mul	r3, r2, r0
    1124:	e0411003 	sub	r1, r1, r3
    1128:	e12fff1e 	bx	lr

0000112c <__aeabi_idiv0>:
    112c:	e12fff1e 	bx	lr
