
_fib_iter_b:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fib_iter_c>:
       0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd01c 	sub	sp, sp, #28
       c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
      10:	e3a03000 	mov	r3, #0
      14:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      18:	e3a03000 	mov	r3, #0
      1c:	e50b3008 	str	r3, [fp, #-8]
      20:	e3a03001 	mov	r3, #1
      24:	e50b300c 	str	r3, [fp, #-12]
      28:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      2c:	e3530000 	cmp	r3, #0
      30:	1a000001 	bne	3c <fib_iter_c+0x3c>
      34:	e3a03000 	mov	r3, #0
      38:	ea000012 	b	88 <fib_iter_c+0x88>
      3c:	e3a03001 	mov	r3, #1
      40:	e50b3010 	str	r3, [fp, #-16]
      44:	ea00000a 	b	74 <fib_iter_c+0x74>
      48:	e51b3008 	ldr	r3, [fp, #-8]
      4c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      50:	e51b300c 	ldr	r3, [fp, #-12]
      54:	e50b3008 	str	r3, [fp, #-8]
      58:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      5c:	e51b3008 	ldr	r3, [fp, #-8]
      60:	e0823003 	add	r3, r2, r3
      64:	e50b300c 	str	r3, [fp, #-12]
      68:	e51b3010 	ldr	r3, [fp, #-16]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b3010 	str	r3, [fp, #-16]
      74:	e51b2010 	ldr	r2, [fp, #-16]
      78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      7c:	e1520003 	cmp	r2, r3
      80:	bafffff0 	blt	48 <fib_iter_c+0x48>
      84:	e51b300c 	ldr	r3, [fp, #-12]
      88:	e1a00003 	mov	r0, r3
      8c:	e28bd000 	add	sp, fp, #0
      90:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      94:	e12fff1e 	bx	lr

00000098 <main>:
      98:	e92d4800 	push	{fp, lr}
      9c:	e28db004 	add	fp, sp, #4
      a0:	e24dd020 	sub	sp, sp, #32
      a4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
      a8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
      ac:	e3a03000 	mov	r3, #0
      b0:	e50b3008 	str	r3, [fp, #-8]
      b4:	e3a03000 	mov	r3, #0
      b8:	e50b300c 	str	r3, [fp, #-12]
      bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      c0:	e3530002 	cmp	r3, #2
      c4:	1a000002 	bne	d4 <main+0x3c>
      c8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
      cc:	e5933004 	ldr	r3, [r3, #4]
      d0:	e50b300c 	str	r3, [fp, #-12]
      d4:	e51b0008 	ldr	r0, [fp, #-8]
      d8:	ebffffc8 	bl	0 <fib_iter_c>
      dc:	e50b0010 	str	r0, [fp, #-16]
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e3530000 	cmp	r3, #0
      e8:	0a000007 	beq	10c <main+0x74>
      ec:	e51b3010 	ldr	r3, [fp, #-16]
      f0:	e58d3000 	str	r3, [sp]
      f4:	e51b3008 	ldr	r3, [fp, #-8]
      f8:	e51b200c 	ldr	r2, [fp, #-12]
      fc:	e59f1034 	ldr	r1, [pc, #52]	; 138 <main+0xa0>
     100:	e3a00001 	mov	r0, #1
     104:	eb000287 	bl	b28 <printf>
     108:	ea000004 	b	120 <main+0x88>
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e51b2008 	ldr	r2, [fp, #-8]
     114:	e59f1020 	ldr	r1, [pc, #32]	; 13c <main+0xa4>
     118:	e3a00001 	mov	r0, #1
     11c:	eb000281 	bl	b28 <printf>
     120:	e3a0001e 	mov	r0, #30
     124:	eb0001e5 	bl	8c0 <sleep>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e2833001 	add	r3, r3, #1
     130:	e50b3008 	str	r3, [fp, #-8]
     134:	eaffffe6 	b	d4 <main+0x3c>
     138:	000011e0 	.word	0x000011e0
     13c:	000011f8 	.word	0x000011f8

00000140 <strcpy>:
     140:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     144:	e28db000 	add	fp, sp, #0
     148:	e24dd014 	sub	sp, sp, #20
     14c:	e50b0010 	str	r0, [fp, #-16]
     150:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     154:	e51b3010 	ldr	r3, [fp, #-16]
     158:	e50b3008 	str	r3, [fp, #-8]
     15c:	e1a00000 	nop			; (mov r0, r0)
     160:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     164:	e2823001 	add	r3, r2, #1
     168:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     16c:	e51b3010 	ldr	r3, [fp, #-16]
     170:	e2831001 	add	r1, r3, #1
     174:	e50b1010 	str	r1, [fp, #-16]
     178:	e5d22000 	ldrb	r2, [r2]
     17c:	e5c32000 	strb	r2, [r3]
     180:	e5d33000 	ldrb	r3, [r3]
     184:	e3530000 	cmp	r3, #0
     188:	1afffff4 	bne	160 <strcpy+0x20>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e1a00003 	mov	r0, r3
     194:	e28bd000 	add	sp, fp, #0
     198:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     19c:	e12fff1e 	bx	lr

000001a0 <strcmp>:
     1a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1a4:	e28db000 	add	fp, sp, #0
     1a8:	e24dd00c 	sub	sp, sp, #12
     1ac:	e50b0008 	str	r0, [fp, #-8]
     1b0:	e50b100c 	str	r1, [fp, #-12]
     1b4:	ea000005 	b	1d0 <strcmp+0x30>
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e2833001 	add	r3, r3, #1
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	e51b300c 	ldr	r3, [fp, #-12]
     1c8:	e2833001 	add	r3, r3, #1
     1cc:	e50b300c 	str	r3, [fp, #-12]
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e5d33000 	ldrb	r3, [r3]
     1d8:	e3530000 	cmp	r3, #0
     1dc:	0a000005 	beq	1f8 <strcmp+0x58>
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e5d32000 	ldrb	r2, [r3]
     1e8:	e51b300c 	ldr	r3, [fp, #-12]
     1ec:	e5d33000 	ldrb	r3, [r3]
     1f0:	e1520003 	cmp	r2, r3
     1f4:	0affffef 	beq	1b8 <strcmp+0x18>
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e5d33000 	ldrb	r3, [r3]
     200:	e1a02003 	mov	r2, r3
     204:	e51b300c 	ldr	r3, [fp, #-12]
     208:	e5d33000 	ldrb	r3, [r3]
     20c:	e0423003 	sub	r3, r2, r3
     210:	e1a00003 	mov	r0, r3
     214:	e28bd000 	add	sp, fp, #0
     218:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     21c:	e12fff1e 	bx	lr

00000220 <strlen>:
     220:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     224:	e28db000 	add	fp, sp, #0
     228:	e24dd014 	sub	sp, sp, #20
     22c:	e50b0010 	str	r0, [fp, #-16]
     230:	e3a03000 	mov	r3, #0
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	ea000002 	b	248 <strlen+0x28>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e2833001 	add	r3, r3, #1
     244:	e50b3008 	str	r3, [fp, #-8]
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e51b2010 	ldr	r2, [fp, #-16]
     250:	e0823003 	add	r3, r2, r3
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e3530000 	cmp	r3, #0
     25c:	1afffff6 	bne	23c <strlen+0x1c>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e1a00003 	mov	r0, r3
     268:	e28bd000 	add	sp, fp, #0
     26c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     270:	e12fff1e 	bx	lr

00000274 <memset>:
     274:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     278:	e28db000 	add	fp, sp, #0
     27c:	e24dd024 	sub	sp, sp, #36	; 0x24
     280:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     284:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     288:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     28c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     290:	e50b3008 	str	r3, [fp, #-8]
     294:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     298:	e54b300d 	strb	r3, [fp, #-13]
     29c:	e55b300d 	ldrb	r3, [fp, #-13]
     2a0:	e1a02c03 	lsl	r2, r3, #24
     2a4:	e55b300d 	ldrb	r3, [fp, #-13]
     2a8:	e1a03803 	lsl	r3, r3, #16
     2ac:	e1822003 	orr	r2, r2, r3
     2b0:	e55b300d 	ldrb	r3, [fp, #-13]
     2b4:	e1a03403 	lsl	r3, r3, #8
     2b8:	e1822003 	orr	r2, r2, r3
     2bc:	e55b300d 	ldrb	r3, [fp, #-13]
     2c0:	e1823003 	orr	r3, r2, r3
     2c4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     2c8:	ea000008 	b	2f0 <memset+0x7c>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e55b200d 	ldrb	r2, [fp, #-13]
     2d4:	e5c32000 	strb	r2, [r3]
     2d8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2dc:	e2433001 	sub	r3, r3, #1
     2e0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2f4:	e3530000 	cmp	r3, #0
     2f8:	0a000003 	beq	30c <memset+0x98>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e2033003 	and	r3, r3, #3
     304:	e3530000 	cmp	r3, #0
     308:	1affffef 	bne	2cc <memset+0x58>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e50b300c 	str	r3, [fp, #-12]
     314:	ea000008 	b	33c <memset+0xc8>
     318:	e51b300c 	ldr	r3, [fp, #-12]
     31c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     320:	e5832000 	str	r2, [r3]
     324:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     328:	e2433004 	sub	r3, r3, #4
     32c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     330:	e51b300c 	ldr	r3, [fp, #-12]
     334:	e2833004 	add	r3, r3, #4
     338:	e50b300c 	str	r3, [fp, #-12]
     33c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     340:	e3530003 	cmp	r3, #3
     344:	8afffff3 	bhi	318 <memset+0xa4>
     348:	e51b300c 	ldr	r3, [fp, #-12]
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	ea000008 	b	378 <memset+0x104>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e55b200d 	ldrb	r2, [fp, #-13]
     35c:	e5c32000 	strb	r2, [r3]
     360:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     364:	e2433001 	sub	r3, r3, #1
     368:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     36c:	e51b3008 	ldr	r3, [fp, #-8]
     370:	e2833001 	add	r3, r3, #1
     374:	e50b3008 	str	r3, [fp, #-8]
     378:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     37c:	e3530000 	cmp	r3, #0
     380:	1afffff3 	bne	354 <memset+0xe0>
     384:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     388:	e1a00003 	mov	r0, r3
     38c:	e28bd000 	add	sp, fp, #0
     390:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     394:	e12fff1e 	bx	lr

00000398 <strchr>:
     398:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     39c:	e28db000 	add	fp, sp, #0
     3a0:	e24dd00c 	sub	sp, sp, #12
     3a4:	e50b0008 	str	r0, [fp, #-8]
     3a8:	e1a03001 	mov	r3, r1
     3ac:	e54b3009 	strb	r3, [fp, #-9]
     3b0:	ea000009 	b	3dc <strchr+0x44>
     3b4:	e51b3008 	ldr	r3, [fp, #-8]
     3b8:	e5d33000 	ldrb	r3, [r3]
     3bc:	e55b2009 	ldrb	r2, [fp, #-9]
     3c0:	e1520003 	cmp	r2, r3
     3c4:	1a000001 	bne	3d0 <strchr+0x38>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	ea000007 	b	3f0 <strchr+0x58>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2833001 	add	r3, r3, #1
     3d8:	e50b3008 	str	r3, [fp, #-8]
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e5d33000 	ldrb	r3, [r3]
     3e4:	e3530000 	cmp	r3, #0
     3e8:	1afffff1 	bne	3b4 <strchr+0x1c>
     3ec:	e3a03000 	mov	r3, #0
     3f0:	e1a00003 	mov	r0, r3
     3f4:	e28bd000 	add	sp, fp, #0
     3f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3fc:	e12fff1e 	bx	lr

00000400 <gets>:
     400:	e92d4800 	push	{fp, lr}
     404:	e28db004 	add	fp, sp, #4
     408:	e24dd018 	sub	sp, sp, #24
     40c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     410:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     414:	e3a03000 	mov	r3, #0
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	ea000016 	b	47c <gets+0x7c>
     420:	e24b300d 	sub	r3, fp, #13
     424:	e3a02001 	mov	r2, #1
     428:	e1a01003 	mov	r1, r3
     42c:	e3a00000 	mov	r0, #0
     430:	eb00009b 	bl	6a4 <read>
     434:	e50b000c 	str	r0, [fp, #-12]
     438:	e51b300c 	ldr	r3, [fp, #-12]
     43c:	e3530000 	cmp	r3, #0
     440:	da000013 	ble	494 <gets+0x94>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e2832001 	add	r2, r3, #1
     44c:	e50b2008 	str	r2, [fp, #-8]
     450:	e1a02003 	mov	r2, r3
     454:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     458:	e0833002 	add	r3, r3, r2
     45c:	e55b200d 	ldrb	r2, [fp, #-13]
     460:	e5c32000 	strb	r2, [r3]
     464:	e55b300d 	ldrb	r3, [fp, #-13]
     468:	e353000a 	cmp	r3, #10
     46c:	0a000009 	beq	498 <gets+0x98>
     470:	e55b300d 	ldrb	r3, [fp, #-13]
     474:	e353000d 	cmp	r3, #13
     478:	0a000006 	beq	498 <gets+0x98>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	e2833001 	add	r3, r3, #1
     484:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     488:	e1520003 	cmp	r2, r3
     48c:	caffffe3 	bgt	420 <gets+0x20>
     490:	ea000000 	b	498 <gets+0x98>
     494:	e1a00000 	nop			; (mov r0, r0)
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     4a0:	e0823003 	add	r3, r2, r3
     4a4:	e3a02000 	mov	r2, #0
     4a8:	e5c32000 	strb	r2, [r3]
     4ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4b0:	e1a00003 	mov	r0, r3
     4b4:	e24bd004 	sub	sp, fp, #4
     4b8:	e8bd8800 	pop	{fp, pc}

000004bc <stat>:
     4bc:	e92d4800 	push	{fp, lr}
     4c0:	e28db004 	add	fp, sp, #4
     4c4:	e24dd010 	sub	sp, sp, #16
     4c8:	e50b0010 	str	r0, [fp, #-16]
     4cc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4d0:	e3a01000 	mov	r1, #0
     4d4:	e51b0010 	ldr	r0, [fp, #-16]
     4d8:	eb00009e 	bl	758 <open>
     4dc:	e50b0008 	str	r0, [fp, #-8]
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e3530000 	cmp	r3, #0
     4e8:	aa000001 	bge	4f4 <stat+0x38>
     4ec:	e3e03000 	mvn	r3, #0
     4f0:	ea000006 	b	510 <stat+0x54>
     4f4:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     4f8:	e51b0008 	ldr	r0, [fp, #-8]
     4fc:	eb0000b0 	bl	7c4 <fstat>
     500:	e50b000c 	str	r0, [fp, #-12]
     504:	e51b0008 	ldr	r0, [fp, #-8]
     508:	eb000077 	bl	6ec <close>
     50c:	e51b300c 	ldr	r3, [fp, #-12]
     510:	e1a00003 	mov	r0, r3
     514:	e24bd004 	sub	sp, fp, #4
     518:	e8bd8800 	pop	{fp, pc}

0000051c <atoi>:
     51c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     520:	e28db000 	add	fp, sp, #0
     524:	e24dd014 	sub	sp, sp, #20
     528:	e50b0010 	str	r0, [fp, #-16]
     52c:	e3a03000 	mov	r3, #0
     530:	e50b3008 	str	r3, [fp, #-8]
     534:	ea00000c 	b	56c <atoi+0x50>
     538:	e51b2008 	ldr	r2, [fp, #-8]
     53c:	e1a03002 	mov	r3, r2
     540:	e1a03103 	lsl	r3, r3, #2
     544:	e0833002 	add	r3, r3, r2
     548:	e1a03083 	lsl	r3, r3, #1
     54c:	e1a01003 	mov	r1, r3
     550:	e51b3010 	ldr	r3, [fp, #-16]
     554:	e2832001 	add	r2, r3, #1
     558:	e50b2010 	str	r2, [fp, #-16]
     55c:	e5d33000 	ldrb	r3, [r3]
     560:	e0813003 	add	r3, r1, r3
     564:	e2433030 	sub	r3, r3, #48	; 0x30
     568:	e50b3008 	str	r3, [fp, #-8]
     56c:	e51b3010 	ldr	r3, [fp, #-16]
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e353002f 	cmp	r3, #47	; 0x2f
     578:	9a000003 	bls	58c <atoi+0x70>
     57c:	e51b3010 	ldr	r3, [fp, #-16]
     580:	e5d33000 	ldrb	r3, [r3]
     584:	e3530039 	cmp	r3, #57	; 0x39
     588:	9affffea 	bls	538 <atoi+0x1c>
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e1a00003 	mov	r0, r3
     594:	e28bd000 	add	sp, fp, #0
     598:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     59c:	e12fff1e 	bx	lr

000005a0 <memmove>:
     5a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     5a4:	e28db000 	add	fp, sp, #0
     5a8:	e24dd01c 	sub	sp, sp, #28
     5ac:	e50b0010 	str	r0, [fp, #-16]
     5b0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5b4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e50b3008 	str	r3, [fp, #-8]
     5c0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     5c4:	e50b300c 	str	r3, [fp, #-12]
     5c8:	ea000007 	b	5ec <memmove+0x4c>
     5cc:	e51b200c 	ldr	r2, [fp, #-12]
     5d0:	e2823001 	add	r3, r2, #1
     5d4:	e50b300c 	str	r3, [fp, #-12]
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e2831001 	add	r1, r3, #1
     5e0:	e50b1008 	str	r1, [fp, #-8]
     5e4:	e5d22000 	ldrb	r2, [r2]
     5e8:	e5c32000 	strb	r2, [r3]
     5ec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5f0:	e2432001 	sub	r2, r3, #1
     5f4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5f8:	e3530000 	cmp	r3, #0
     5fc:	cafffff2 	bgt	5cc <memmove+0x2c>
     600:	e51b3010 	ldr	r3, [fp, #-16]
     604:	e1a00003 	mov	r0, r3
     608:	e28bd000 	add	sp, fp, #0
     60c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <fork>:
     614:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00001 	mov	r0, #1
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <exit>:
     638:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00002 	mov	r0, #2
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <wait>:
     65c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00003 	mov	r0, #3
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <pipe>:
     680:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00004 	mov	r0, #4
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <read>:
     6a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00005 	mov	r0, #5
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <write>:
     6c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00010 	mov	r0, #16
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <close>:
     6ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00015 	mov	r0, #21
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <kill>:
     710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00006 	mov	r0, #6
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <exec>:
     734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00007 	mov	r0, #7
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <open>:
     758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a0000f 	mov	r0, #15
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <mknod>:
     77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00011 	mov	r0, #17
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <unlink>:
     7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00012 	mov	r0, #18
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <fstat>:
     7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00008 	mov	r0, #8
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <link>:
     7e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00013 	mov	r0, #19
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <mkdir>:
     80c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00014 	mov	r0, #20
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <chdir>:
     830:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00009 	mov	r0, #9
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <dup>:
     854:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a0000a 	mov	r0, #10
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <getpid>:
     878:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a0000b 	mov	r0, #11
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <sbrk>:
     89c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a0000c 	mov	r0, #12
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <sleep>:
     8c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a0000d 	mov	r0, #13
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <uptime>:
     8e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a0000e 	mov	r0, #14
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <memfree>:
     908:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a00016 	mov	r0, #22
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <traceon>:
     92c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00017 	mov	r0, #23
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <getps>:
     950:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a00018 	mov	r0, #24
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <suspend>:
     974:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a00019 	mov	r0, #25
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <resume>:
     998:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a0001a 	mov	r0, #26
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <putc>:
     9bc:	e92d4800 	push	{fp, lr}
     9c0:	e28db004 	add	fp, sp, #4
     9c4:	e24dd008 	sub	sp, sp, #8
     9c8:	e50b0008 	str	r0, [fp, #-8]
     9cc:	e1a03001 	mov	r3, r1
     9d0:	e54b3009 	strb	r3, [fp, #-9]
     9d4:	e24b3009 	sub	r3, fp, #9
     9d8:	e3a02001 	mov	r2, #1
     9dc:	e1a01003 	mov	r1, r3
     9e0:	e51b0008 	ldr	r0, [fp, #-8]
     9e4:	ebffff37 	bl	6c8 <write>
     9e8:	e1a00000 	nop			; (mov r0, r0)
     9ec:	e24bd004 	sub	sp, fp, #4
     9f0:	e8bd8800 	pop	{fp, pc}

000009f4 <printint>:
     9f4:	e92d4800 	push	{fp, lr}
     9f8:	e28db004 	add	fp, sp, #4
     9fc:	e24dd030 	sub	sp, sp, #48	; 0x30
     a00:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     a04:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     a08:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     a0c:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     a10:	e3a03000 	mov	r3, #0
     a14:	e50b300c 	str	r3, [fp, #-12]
     a18:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     a1c:	e3530000 	cmp	r3, #0
     a20:	0a000008 	beq	a48 <printint+0x54>
     a24:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a28:	e3530000 	cmp	r3, #0
     a2c:	aa000005 	bge	a48 <printint+0x54>
     a30:	e3a03001 	mov	r3, #1
     a34:	e50b300c 	str	r3, [fp, #-12]
     a38:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a3c:	e2633000 	rsb	r3, r3, #0
     a40:	e50b3010 	str	r3, [fp, #-16]
     a44:	ea000001 	b	a50 <printint+0x5c>
     a48:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a4c:	e50b3010 	str	r3, [fp, #-16]
     a50:	e3a03000 	mov	r3, #0
     a54:	e50b3008 	str	r3, [fp, #-8]
     a58:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     a5c:	e51b3010 	ldr	r3, [fp, #-16]
     a60:	e1a01002 	mov	r1, r2
     a64:	e1a00003 	mov	r0, r3
     a68:	eb0001d3 	bl	11bc <__aeabi_uidivmod>
     a6c:	e1a03001 	mov	r3, r1
     a70:	e1a01003 	mov	r1, r3
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e2832001 	add	r2, r3, #1
     a7c:	e50b2008 	str	r2, [fp, #-8]
     a80:	e59f209c 	ldr	r2, [pc, #156]	; b24 <printint+0x130>
     a84:	e7d22001 	ldrb	r2, [r2, r1]
     a88:	e24b1004 	sub	r1, fp, #4
     a8c:	e0813003 	add	r3, r1, r3
     a90:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a94:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     a98:	e1a01003 	mov	r1, r3
     a9c:	e51b0010 	ldr	r0, [fp, #-16]
     aa0:	eb000188 	bl	10c8 <__udivsi3>
     aa4:	e1a03000 	mov	r3, r0
     aa8:	e50b3010 	str	r3, [fp, #-16]
     aac:	e51b3010 	ldr	r3, [fp, #-16]
     ab0:	e3530000 	cmp	r3, #0
     ab4:	1affffe7 	bne	a58 <printint+0x64>
     ab8:	e51b300c 	ldr	r3, [fp, #-12]
     abc:	e3530000 	cmp	r3, #0
     ac0:	0a00000e 	beq	b00 <printint+0x10c>
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e2832001 	add	r2, r3, #1
     acc:	e50b2008 	str	r2, [fp, #-8]
     ad0:	e24b2004 	sub	r2, fp, #4
     ad4:	e0823003 	add	r3, r2, r3
     ad8:	e3a0202d 	mov	r2, #45	; 0x2d
     adc:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     ae0:	ea000006 	b	b00 <printint+0x10c>
     ae4:	e24b2020 	sub	r2, fp, #32
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e0823003 	add	r3, r2, r3
     af0:	e5d33000 	ldrb	r3, [r3]
     af4:	e1a01003 	mov	r1, r3
     af8:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     afc:	ebffffae 	bl	9bc <putc>
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e2433001 	sub	r3, r3, #1
     b08:	e50b3008 	str	r3, [fp, #-8]
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e3530000 	cmp	r3, #0
     b14:	aafffff2 	bge	ae4 <printint+0xf0>
     b18:	e1a00000 	nop			; (mov r0, r0)
     b1c:	e24bd004 	sub	sp, fp, #4
     b20:	e8bd8800 	pop	{fp, pc}
     b24:	00001214 	.word	0x00001214

00000b28 <printf>:
     b28:	e92d000e 	push	{r1, r2, r3}
     b2c:	e92d4800 	push	{fp, lr}
     b30:	e28db004 	add	fp, sp, #4
     b34:	e24dd024 	sub	sp, sp, #36	; 0x24
     b38:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     b3c:	e3a03000 	mov	r3, #0
     b40:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b44:	e28b3008 	add	r3, fp, #8
     b48:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b4c:	e3a03000 	mov	r3, #0
     b50:	e50b3010 	str	r3, [fp, #-16]
     b54:	ea000074 	b	d2c <printf+0x204>
     b58:	e59b2004 	ldr	r2, [fp, #4]
     b5c:	e51b3010 	ldr	r3, [fp, #-16]
     b60:	e0823003 	add	r3, r2, r3
     b64:	e5d33000 	ldrb	r3, [r3]
     b68:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     b6c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b70:	e3530000 	cmp	r3, #0
     b74:	1a00000b 	bne	ba8 <printf+0x80>
     b78:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b7c:	e3530025 	cmp	r3, #37	; 0x25
     b80:	1a000002 	bne	b90 <printf+0x68>
     b84:	e3a03025 	mov	r3, #37	; 0x25
     b88:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b8c:	ea000063 	b	d20 <printf+0x1f8>
     b90:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b94:	e6ef3073 	uxtb	r3, r3
     b98:	e1a01003 	mov	r1, r3
     b9c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ba0:	ebffff85 	bl	9bc <putc>
     ba4:	ea00005d 	b	d20 <printf+0x1f8>
     ba8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     bac:	e3530025 	cmp	r3, #37	; 0x25
     bb0:	1a00005a 	bne	d20 <printf+0x1f8>
     bb4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bb8:	e3530064 	cmp	r3, #100	; 0x64
     bbc:	1a00000a 	bne	bec <printf+0xc4>
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bc4:	e5933000 	ldr	r3, [r3]
     bc8:	e1a01003 	mov	r1, r3
     bcc:	e3a03001 	mov	r3, #1
     bd0:	e3a0200a 	mov	r2, #10
     bd4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bd8:	ebffff85 	bl	9f4 <printint>
     bdc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     be0:	e2833004 	add	r3, r3, #4
     be4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     be8:	ea00004a 	b	d18 <printf+0x1f0>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bf0:	e3530078 	cmp	r3, #120	; 0x78
     bf4:	0a000002 	beq	c04 <printf+0xdc>
     bf8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bfc:	e3530070 	cmp	r3, #112	; 0x70
     c00:	1a00000a 	bne	c30 <printf+0x108>
     c04:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c08:	e5933000 	ldr	r3, [r3]
     c0c:	e1a01003 	mov	r1, r3
     c10:	e3a03000 	mov	r3, #0
     c14:	e3a02010 	mov	r2, #16
     c18:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c1c:	ebffff74 	bl	9f4 <printint>
     c20:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c24:	e2833004 	add	r3, r3, #4
     c28:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c2c:	ea000039 	b	d18 <printf+0x1f0>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c34:	e3530073 	cmp	r3, #115	; 0x73
     c38:	1a000018 	bne	ca0 <printf+0x178>
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c40:	e5933000 	ldr	r3, [r3]
     c44:	e50b300c 	str	r3, [fp, #-12]
     c48:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c4c:	e2833004 	add	r3, r3, #4
     c50:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c54:	e51b300c 	ldr	r3, [fp, #-12]
     c58:	e3530000 	cmp	r3, #0
     c5c:	1a00000a 	bne	c8c <printf+0x164>
     c60:	e59f30f0 	ldr	r3, [pc, #240]	; d58 <printf+0x230>
     c64:	e50b300c 	str	r3, [fp, #-12]
     c68:	ea000007 	b	c8c <printf+0x164>
     c6c:	e51b300c 	ldr	r3, [fp, #-12]
     c70:	e5d33000 	ldrb	r3, [r3]
     c74:	e1a01003 	mov	r1, r3
     c78:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c7c:	ebffff4e 	bl	9bc <putc>
     c80:	e51b300c 	ldr	r3, [fp, #-12]
     c84:	e2833001 	add	r3, r3, #1
     c88:	e50b300c 	str	r3, [fp, #-12]
     c8c:	e51b300c 	ldr	r3, [fp, #-12]
     c90:	e5d33000 	ldrb	r3, [r3]
     c94:	e3530000 	cmp	r3, #0
     c98:	1afffff3 	bne	c6c <printf+0x144>
     c9c:	ea00001d 	b	d18 <printf+0x1f0>
     ca0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ca4:	e3530063 	cmp	r3, #99	; 0x63
     ca8:	1a000009 	bne	cd4 <printf+0x1ac>
     cac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     cb0:	e5933000 	ldr	r3, [r3]
     cb4:	e6ef3073 	uxtb	r3, r3
     cb8:	e1a01003 	mov	r1, r3
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cc0:	ebffff3d 	bl	9bc <putc>
     cc4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     cc8:	e2833004 	add	r3, r3, #4
     ccc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     cd0:	ea000010 	b	d18 <printf+0x1f0>
     cd4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     cd8:	e3530025 	cmp	r3, #37	; 0x25
     cdc:	1a000005 	bne	cf8 <printf+0x1d0>
     ce0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ce4:	e6ef3073 	uxtb	r3, r3
     ce8:	e1a01003 	mov	r1, r3
     cec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cf0:	ebffff31 	bl	9bc <putc>
     cf4:	ea000007 	b	d18 <printf+0x1f0>
     cf8:	e3a01025 	mov	r1, #37	; 0x25
     cfc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d00:	ebffff2d 	bl	9bc <putc>
     d04:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d08:	e6ef3073 	uxtb	r3, r3
     d0c:	e1a01003 	mov	r1, r3
     d10:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d14:	ebffff28 	bl	9bc <putc>
     d18:	e3a03000 	mov	r3, #0
     d1c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     d20:	e51b3010 	ldr	r3, [fp, #-16]
     d24:	e2833001 	add	r3, r3, #1
     d28:	e50b3010 	str	r3, [fp, #-16]
     d2c:	e59b2004 	ldr	r2, [fp, #4]
     d30:	e51b3010 	ldr	r3, [fp, #-16]
     d34:	e0823003 	add	r3, r2, r3
     d38:	e5d33000 	ldrb	r3, [r3]
     d3c:	e3530000 	cmp	r3, #0
     d40:	1affff84 	bne	b58 <printf+0x30>
     d44:	e1a00000 	nop			; (mov r0, r0)
     d48:	e24bd004 	sub	sp, fp, #4
     d4c:	e8bd4800 	pop	{fp, lr}
     d50:	e28dd00c 	add	sp, sp, #12
     d54:	e12fff1e 	bx	lr
     d58:	0000120c 	.word	0x0000120c

00000d5c <free>:
     d5c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     d60:	e28db000 	add	fp, sp, #0
     d64:	e24dd014 	sub	sp, sp, #20
     d68:	e50b0010 	str	r0, [fp, #-16]
     d6c:	e51b3010 	ldr	r3, [fp, #-16]
     d70:	e2433008 	sub	r3, r3, #8
     d74:	e50b300c 	str	r3, [fp, #-12]
     d78:	e59f3154 	ldr	r3, [pc, #340]	; ed4 <free+0x178>
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e50b3008 	str	r3, [fp, #-8]
     d84:	ea000010 	b	dcc <free+0x70>
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e51b2008 	ldr	r2, [fp, #-8]
     d94:	e1520003 	cmp	r2, r3
     d98:	3a000008 	bcc	dc0 <free+0x64>
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e1520003 	cmp	r2, r3
     da8:	8a000010 	bhi	df0 <free+0x94>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e51b200c 	ldr	r2, [fp, #-12]
     db8:	e1520003 	cmp	r2, r3
     dbc:	3a00000b 	bcc	df0 <free+0x94>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e50b3008 	str	r3, [fp, #-8]
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e1520003 	cmp	r2, r3
     dd8:	9affffea 	bls	d88 <free+0x2c>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	2affffe5 	bcs	d88 <free+0x2c>
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e5933004 	ldr	r3, [r3, #4]
     df8:	e1a03183 	lsl	r3, r3, #3
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e0822003 	add	r2, r2, r3
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5933000 	ldr	r3, [r3]
     e0c:	e1520003 	cmp	r2, r3
     e10:	1a00000d 	bne	e4c <free+0xf0>
     e14:	e51b300c 	ldr	r3, [fp, #-12]
     e18:	e5932004 	ldr	r2, [r3, #4]
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5933000 	ldr	r3, [r3]
     e24:	e5933004 	ldr	r3, [r3, #4]
     e28:	e0822003 	add	r2, r2, r3
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e5832004 	str	r2, [r3, #4]
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e5932000 	ldr	r2, [r3]
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5832000 	str	r2, [r3]
     e48:	ea000003 	b	e5c <free+0x100>
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5932000 	ldr	r2, [r3]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5832000 	str	r2, [r3]
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5933004 	ldr	r3, [r3, #4]
     e64:	e1a03183 	lsl	r3, r3, #3
     e68:	e51b2008 	ldr	r2, [fp, #-8]
     e6c:	e0823003 	add	r3, r2, r3
     e70:	e51b200c 	ldr	r2, [fp, #-12]
     e74:	e1520003 	cmp	r2, r3
     e78:	1a00000b 	bne	eac <free+0x150>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5932004 	ldr	r2, [r3, #4]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e5933004 	ldr	r3, [r3, #4]
     e8c:	e0822003 	add	r2, r2, r3
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5832004 	str	r2, [r3, #4]
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e5932000 	ldr	r2, [r3]
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e5832000 	str	r2, [r3]
     ea8:	ea000002 	b	eb8 <free+0x15c>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e51b200c 	ldr	r2, [fp, #-12]
     eb4:	e5832000 	str	r2, [r3]
     eb8:	e59f2014 	ldr	r2, [pc, #20]	; ed4 <free+0x178>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5823000 	str	r3, [r2]
     ec4:	e1a00000 	nop			; (mov r0, r0)
     ec8:	e28bd000 	add	sp, fp, #0
     ecc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     ed0:	e12fff1e 	bx	lr
     ed4:	00001230 	.word	0x00001230

00000ed8 <morecore>:
     ed8:	e92d4800 	push	{fp, lr}
     edc:	e28db004 	add	fp, sp, #4
     ee0:	e24dd010 	sub	sp, sp, #16
     ee4:	e50b0010 	str	r0, [fp, #-16]
     ee8:	e51b3010 	ldr	r3, [fp, #-16]
     eec:	e3530a01 	cmp	r3, #4096	; 0x1000
     ef0:	2a000001 	bcs	efc <morecore+0x24>
     ef4:	e3a03a01 	mov	r3, #4096	; 0x1000
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	e51b3010 	ldr	r3, [fp, #-16]
     f00:	e1a03183 	lsl	r3, r3, #3
     f04:	e1a00003 	mov	r0, r3
     f08:	ebfffe63 	bl	89c <sbrk>
     f0c:	e50b0008 	str	r0, [fp, #-8]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e3730001 	cmn	r3, #1
     f18:	1a000001 	bne	f24 <morecore+0x4c>
     f1c:	e3a03000 	mov	r3, #0
     f20:	ea00000a 	b	f50 <morecore+0x78>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b300c 	ldr	r3, [fp, #-12]
     f30:	e51b2010 	ldr	r2, [fp, #-16]
     f34:	e5832004 	str	r2, [r3, #4]
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e2833008 	add	r3, r3, #8
     f40:	e1a00003 	mov	r0, r3
     f44:	ebffff84 	bl	d5c <free>
     f48:	e59f300c 	ldr	r3, [pc, #12]	; f5c <morecore+0x84>
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e1a00003 	mov	r0, r3
     f54:	e24bd004 	sub	sp, fp, #4
     f58:	e8bd8800 	pop	{fp, pc}
     f5c:	00001230 	.word	0x00001230

00000f60 <malloc>:
     f60:	e92d4800 	push	{fp, lr}
     f64:	e28db004 	add	fp, sp, #4
     f68:	e24dd018 	sub	sp, sp, #24
     f6c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     f70:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f74:	e2833007 	add	r3, r3, #7
     f78:	e1a031a3 	lsr	r3, r3, #3
     f7c:	e2833001 	add	r3, r3, #1
     f80:	e50b3010 	str	r3, [fp, #-16]
     f84:	e59f3134 	ldr	r3, [pc, #308]	; 10c0 <malloc+0x160>
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e50b300c 	str	r3, [fp, #-12]
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e3530000 	cmp	r3, #0
     f98:	1a00000b 	bne	fcc <malloc+0x6c>
     f9c:	e59f3120 	ldr	r3, [pc, #288]	; 10c4 <malloc+0x164>
     fa0:	e50b300c 	str	r3, [fp, #-12]
     fa4:	e59f2114 	ldr	r2, [pc, #276]	; 10c0 <malloc+0x160>
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5823000 	str	r3, [r2]
     fb0:	e59f3108 	ldr	r3, [pc, #264]	; 10c0 <malloc+0x160>
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e59f2104 	ldr	r2, [pc, #260]	; 10c4 <malloc+0x164>
     fbc:	e5823000 	str	r3, [r2]
     fc0:	e59f30fc 	ldr	r3, [pc, #252]	; 10c4 <malloc+0x164>
     fc4:	e3a02000 	mov	r2, #0
     fc8:	e5832004 	str	r2, [r3, #4]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e50b3008 	str	r3, [fp, #-8]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e5933004 	ldr	r3, [r3, #4]
     fe0:	e51b2010 	ldr	r2, [fp, #-16]
     fe4:	e1520003 	cmp	r2, r3
     fe8:	8a00001e 	bhi	1068 <malloc+0x108>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5933004 	ldr	r3, [r3, #4]
     ff4:	e51b2010 	ldr	r2, [fp, #-16]
     ff8:	e1520003 	cmp	r2, r3
     ffc:	1a000004 	bne	1014 <malloc+0xb4>
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e5932000 	ldr	r2, [r3]
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5832000 	str	r2, [r3]
    1010:	ea00000e 	b	1050 <malloc+0xf0>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5932004 	ldr	r2, [r3, #4]
    101c:	e51b3010 	ldr	r3, [fp, #-16]
    1020:	e0422003 	sub	r2, r2, r3
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5832004 	str	r2, [r3, #4]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5933004 	ldr	r3, [r3, #4]
    1034:	e1a03183 	lsl	r3, r3, #3
    1038:	e51b2008 	ldr	r2, [fp, #-8]
    103c:	e0823003 	add	r3, r2, r3
    1040:	e50b3008 	str	r3, [fp, #-8]
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e51b2010 	ldr	r2, [fp, #-16]
    104c:	e5832004 	str	r2, [r3, #4]
    1050:	e59f2068 	ldr	r2, [pc, #104]	; 10c0 <malloc+0x160>
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e5823000 	str	r3, [r2]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e2833008 	add	r3, r3, #8
    1064:	ea000012 	b	10b4 <malloc+0x154>
    1068:	e59f3050 	ldr	r3, [pc, #80]	; 10c0 <malloc+0x160>
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e51b2008 	ldr	r2, [fp, #-8]
    1074:	e1520003 	cmp	r2, r3
    1078:	1a000007 	bne	109c <malloc+0x13c>
    107c:	e51b0010 	ldr	r0, [fp, #-16]
    1080:	ebffff94 	bl	ed8 <morecore>
    1084:	e50b0008 	str	r0, [fp, #-8]
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e3530000 	cmp	r3, #0
    1090:	1a000001 	bne	109c <malloc+0x13c>
    1094:	e3a03000 	mov	r3, #0
    1098:	ea000005 	b	10b4 <malloc+0x154>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e50b300c 	str	r3, [fp, #-12]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e50b3008 	str	r3, [fp, #-8]
    10b0:	eaffffc8 	b	fd8 <malloc+0x78>
    10b4:	e1a00003 	mov	r0, r3
    10b8:	e24bd004 	sub	sp, fp, #4
    10bc:	e8bd8800 	pop	{fp, pc}
    10c0:	00001230 	.word	0x00001230
    10c4:	00001228 	.word	0x00001228

000010c8 <__udivsi3>:
    10c8:	e2512001 	subs	r2, r1, #1
    10cc:	012fff1e 	bxeq	lr
    10d0:	3a000036 	bcc	11b0 <__udivsi3+0xe8>
    10d4:	e1500001 	cmp	r0, r1
    10d8:	9a000022 	bls	1168 <__udivsi3+0xa0>
    10dc:	e1110002 	tst	r1, r2
    10e0:	0a000023 	beq	1174 <__udivsi3+0xac>
    10e4:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    10e8:	01a01181 	lsleq	r1, r1, #3
    10ec:	03a03008 	moveq	r3, #8
    10f0:	13a03001 	movne	r3, #1
    10f4:	e3510201 	cmp	r1, #268435456	; 0x10000000
    10f8:	31510000 	cmpcc	r1, r0
    10fc:	31a01201 	lslcc	r1, r1, #4
    1100:	31a03203 	lslcc	r3, r3, #4
    1104:	3afffffa 	bcc	10f4 <__udivsi3+0x2c>
    1108:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    110c:	31510000 	cmpcc	r1, r0
    1110:	31a01081 	lslcc	r1, r1, #1
    1114:	31a03083 	lslcc	r3, r3, #1
    1118:	3afffffa 	bcc	1108 <__udivsi3+0x40>
    111c:	e3a02000 	mov	r2, #0
    1120:	e1500001 	cmp	r0, r1
    1124:	20400001 	subcs	r0, r0, r1
    1128:	21822003 	orrcs	r2, r2, r3
    112c:	e15000a1 	cmp	r0, r1, lsr #1
    1130:	204000a1 	subcs	r0, r0, r1, lsr #1
    1134:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1138:	e1500121 	cmp	r0, r1, lsr #2
    113c:	20400121 	subcs	r0, r0, r1, lsr #2
    1140:	21822123 	orrcs	r2, r2, r3, lsr #2
    1144:	e15001a1 	cmp	r0, r1, lsr #3
    1148:	204001a1 	subcs	r0, r0, r1, lsr #3
    114c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1150:	e3500000 	cmp	r0, #0
    1154:	11b03223 	lsrsne	r3, r3, #4
    1158:	11a01221 	lsrne	r1, r1, #4
    115c:	1affffef 	bne	1120 <__udivsi3+0x58>
    1160:	e1a00002 	mov	r0, r2
    1164:	e12fff1e 	bx	lr
    1168:	03a00001 	moveq	r0, #1
    116c:	13a00000 	movne	r0, #0
    1170:	e12fff1e 	bx	lr
    1174:	e3510801 	cmp	r1, #65536	; 0x10000
    1178:	21a01821 	lsrcs	r1, r1, #16
    117c:	23a02010 	movcs	r2, #16
    1180:	33a02000 	movcc	r2, #0
    1184:	e3510c01 	cmp	r1, #256	; 0x100
    1188:	21a01421 	lsrcs	r1, r1, #8
    118c:	22822008 	addcs	r2, r2, #8
    1190:	e3510010 	cmp	r1, #16
    1194:	21a01221 	lsrcs	r1, r1, #4
    1198:	22822004 	addcs	r2, r2, #4
    119c:	e3510004 	cmp	r1, #4
    11a0:	82822003 	addhi	r2, r2, #3
    11a4:	908220a1 	addls	r2, r2, r1, lsr #1
    11a8:	e1a00230 	lsr	r0, r0, r2
    11ac:	e12fff1e 	bx	lr
    11b0:	e3500000 	cmp	r0, #0
    11b4:	13e00000 	mvnne	r0, #0
    11b8:	ea000007 	b	11dc <__aeabi_idiv0>

000011bc <__aeabi_uidivmod>:
    11bc:	e3510000 	cmp	r1, #0
    11c0:	0afffffa 	beq	11b0 <__udivsi3+0xe8>
    11c4:	e92d4003 	push	{r0, r1, lr}
    11c8:	ebffffbe 	bl	10c8 <__udivsi3>
    11cc:	e8bd4006 	pop	{r1, r2, lr}
    11d0:	e0030092 	mul	r3, r2, r0
    11d4:	e0411003 	sub	r1, r1, r3
    11d8:	e12fff1e 	bx	lr

000011dc <__aeabi_idiv0>:
    11dc:	e12fff1e 	bx	lr
