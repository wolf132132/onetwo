
_fib_iter_c:     file format elf32-littlearm


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
      bc:	e3a03000 	mov	r3, #0
      c0:	e50b3010 	str	r3, [fp, #-16]
      c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      c8:	e3530002 	cmp	r3, #2
      cc:	1a000002 	bne	dc <main+0x44>
      d0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
      d4:	e5933004 	ldr	r3, [r3, #4]
      d8:	e50b3010 	str	r3, [fp, #-16]
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	ebffffc5 	bl	0 <fib_iter_c>
      e8:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
      ec:	e51b3010 	ldr	r3, [fp, #-16]
      f0:	e3530000 	cmp	r3, #0
      f4:	0a000007 	beq	118 <main+0x80>
      f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      fc:	e58d3000 	str	r3, [sp]
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e51b2010 	ldr	r2, [fp, #-16]
     108:	e59f1054 	ldr	r1, [pc, #84]	; 164 <main+0xcc>
     10c:	e3a00001 	mov	r0, #1
     110:	eb000290 	bl	b58 <printf>
     114:	ea000004 	b	12c <main+0x94>
     118:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     11c:	e51b2008 	ldr	r2, [fp, #-8]
     120:	e59f1040 	ldr	r1, [pc, #64]	; 168 <main+0xd0>
     124:	e3a00001 	mov	r0, #1
     128:	eb00028a 	bl	b58 <printf>
     12c:	e3a03000 	mov	r3, #0
     130:	e50b300c 	str	r3, [fp, #-12]
     134:	ea000002 	b	144 <main+0xac>
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b300c 	ldr	r3, [fp, #-12]
     148:	e59f201c 	ldr	r2, [pc, #28]	; 16c <main+0xd4>
     14c:	e1530002 	cmp	r3, r2
     150:	9afffff8 	bls	138 <main+0xa0>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e2833001 	add	r3, r3, #1
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	eaffffdd 	b	dc <main+0x44>
     164:	00001210 	.word	0x00001210
     168:	00001228 	.word	0x00001228
     16c:	0098967f 	.word	0x0098967f

00000170 <strcpy>:
     170:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     184:	e51b3010 	ldr	r3, [fp, #-16]
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	e1a00000 	nop			; (mov r0, r0)
     190:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     194:	e2823001 	add	r3, r2, #1
     198:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e2831001 	add	r1, r3, #1
     1a4:	e50b1010 	str	r1, [fp, #-16]
     1a8:	e5d22000 	ldrb	r2, [r2]
     1ac:	e5c32000 	strb	r2, [r3]
     1b0:	e5d33000 	ldrb	r3, [r3]
     1b4:	e3530000 	cmp	r3, #0
     1b8:	1afffff4 	bne	190 <strcpy+0x20>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e1a00003 	mov	r0, r3
     1c4:	e28bd000 	add	sp, fp, #0
     1c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1cc:	e12fff1e 	bx	lr

000001d0 <strcmp>:
     1d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1d4:	e28db000 	add	fp, sp, #0
     1d8:	e24dd00c 	sub	sp, sp, #12
     1dc:	e50b0008 	str	r0, [fp, #-8]
     1e0:	e50b100c 	str	r1, [fp, #-12]
     1e4:	ea000005 	b	200 <strcmp+0x30>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e2833001 	add	r3, r3, #1
     1f0:	e50b3008 	str	r3, [fp, #-8]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b300c 	str	r3, [fp, #-12]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e5d33000 	ldrb	r3, [r3]
     208:	e3530000 	cmp	r3, #0
     20c:	0a000005 	beq	228 <strcmp+0x58>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e5d32000 	ldrb	r2, [r3]
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e1520003 	cmp	r2, r3
     224:	0affffef 	beq	1e8 <strcmp+0x18>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e1a02003 	mov	r2, r3
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e0423003 	sub	r3, r2, r3
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <strlen>:
     250:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd014 	sub	sp, sp, #20
     25c:	e50b0010 	str	r0, [fp, #-16]
     260:	e3a03000 	mov	r3, #0
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	ea000002 	b	278 <strlen+0x28>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e2833001 	add	r3, r3, #1
     274:	e50b3008 	str	r3, [fp, #-8]
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e51b2010 	ldr	r2, [fp, #-16]
     280:	e0823003 	add	r3, r2, r3
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff6 	bne	26c <strlen+0x1c>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <memset>:
     2a4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd024 	sub	sp, sp, #36	; 0x24
     2b0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     2b4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     2b8:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     2bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     2c8:	e54b300d 	strb	r3, [fp, #-13]
     2cc:	e55b300d 	ldrb	r3, [fp, #-13]
     2d0:	e1a02c03 	lsl	r2, r3, #24
     2d4:	e55b300d 	ldrb	r3, [fp, #-13]
     2d8:	e1a03803 	lsl	r3, r3, #16
     2dc:	e1822003 	orr	r2, r2, r3
     2e0:	e55b300d 	ldrb	r3, [fp, #-13]
     2e4:	e1a03403 	lsl	r3, r3, #8
     2e8:	e1822003 	orr	r2, r2, r3
     2ec:	e55b300d 	ldrb	r3, [fp, #-13]
     2f0:	e1823003 	orr	r3, r2, r3
     2f4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     2f8:	ea000008 	b	320 <memset+0x7c>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e55b200d 	ldrb	r2, [fp, #-13]
     304:	e5c32000 	strb	r2, [r3]
     308:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     30c:	e2433001 	sub	r3, r3, #1
     310:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e2833001 	add	r3, r3, #1
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     324:	e3530000 	cmp	r3, #0
     328:	0a000003 	beq	33c <memset+0x98>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e2033003 	and	r3, r3, #3
     334:	e3530000 	cmp	r3, #0
     338:	1affffef 	bne	2fc <memset+0x58>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e50b300c 	str	r3, [fp, #-12]
     344:	ea000008 	b	36c <memset+0xc8>
     348:	e51b300c 	ldr	r3, [fp, #-12]
     34c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     350:	e5832000 	str	r2, [r3]
     354:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     358:	e2433004 	sub	r3, r3, #4
     35c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     360:	e51b300c 	ldr	r3, [fp, #-12]
     364:	e2833004 	add	r3, r3, #4
     368:	e50b300c 	str	r3, [fp, #-12]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     370:	e3530003 	cmp	r3, #3
     374:	8afffff3 	bhi	348 <memset+0xa4>
     378:	e51b300c 	ldr	r3, [fp, #-12]
     37c:	e50b3008 	str	r3, [fp, #-8]
     380:	ea000008 	b	3a8 <memset+0x104>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e55b200d 	ldrb	r2, [fp, #-13]
     38c:	e5c32000 	strb	r2, [r3]
     390:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     394:	e2433001 	sub	r3, r3, #1
     398:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     39c:	e51b3008 	ldr	r3, [fp, #-8]
     3a0:	e2833001 	add	r3, r3, #1
     3a4:	e50b3008 	str	r3, [fp, #-8]
     3a8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     3ac:	e3530000 	cmp	r3, #0
     3b0:	1afffff3 	bne	384 <memset+0xe0>
     3b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3b8:	e1a00003 	mov	r0, r3
     3bc:	e28bd000 	add	sp, fp, #0
     3c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3c4:	e12fff1e 	bx	lr

000003c8 <strchr>:
     3c8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     3cc:	e28db000 	add	fp, sp, #0
     3d0:	e24dd00c 	sub	sp, sp, #12
     3d4:	e50b0008 	str	r0, [fp, #-8]
     3d8:	e1a03001 	mov	r3, r1
     3dc:	e54b3009 	strb	r3, [fp, #-9]
     3e0:	ea000009 	b	40c <strchr+0x44>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e5d33000 	ldrb	r3, [r3]
     3ec:	e55b2009 	ldrb	r2, [fp, #-9]
     3f0:	e1520003 	cmp	r2, r3
     3f4:	1a000001 	bne	400 <strchr+0x38>
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	ea000007 	b	420 <strchr+0x58>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2833001 	add	r3, r3, #1
     408:	e50b3008 	str	r3, [fp, #-8]
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e5d33000 	ldrb	r3, [r3]
     414:	e3530000 	cmp	r3, #0
     418:	1afffff1 	bne	3e4 <strchr+0x1c>
     41c:	e3a03000 	mov	r3, #0
     420:	e1a00003 	mov	r0, r3
     424:	e28bd000 	add	sp, fp, #0
     428:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     42c:	e12fff1e 	bx	lr

00000430 <gets>:
     430:	e92d4800 	push	{fp, lr}
     434:	e28db004 	add	fp, sp, #4
     438:	e24dd018 	sub	sp, sp, #24
     43c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     440:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     444:	e3a03000 	mov	r3, #0
     448:	e50b3008 	str	r3, [fp, #-8]
     44c:	ea000016 	b	4ac <gets+0x7c>
     450:	e24b300d 	sub	r3, fp, #13
     454:	e3a02001 	mov	r2, #1
     458:	e1a01003 	mov	r1, r3
     45c:	e3a00000 	mov	r0, #0
     460:	eb00009b 	bl	6d4 <read>
     464:	e50b000c 	str	r0, [fp, #-12]
     468:	e51b300c 	ldr	r3, [fp, #-12]
     46c:	e3530000 	cmp	r3, #0
     470:	da000013 	ble	4c4 <gets+0x94>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2832001 	add	r2, r3, #1
     47c:	e50b2008 	str	r2, [fp, #-8]
     480:	e1a02003 	mov	r2, r3
     484:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     488:	e0833002 	add	r3, r3, r2
     48c:	e55b200d 	ldrb	r2, [fp, #-13]
     490:	e5c32000 	strb	r2, [r3]
     494:	e55b300d 	ldrb	r3, [fp, #-13]
     498:	e353000a 	cmp	r3, #10
     49c:	0a000009 	beq	4c8 <gets+0x98>
     4a0:	e55b300d 	ldrb	r3, [fp, #-13]
     4a4:	e353000d 	cmp	r3, #13
     4a8:	0a000006 	beq	4c8 <gets+0x98>
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e2833001 	add	r3, r3, #1
     4b4:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     4b8:	e1520003 	cmp	r2, r3
     4bc:	caffffe3 	bgt	450 <gets+0x20>
     4c0:	ea000000 	b	4c8 <gets+0x98>
     4c4:	e1a00000 	nop			; (mov r0, r0)
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     4d0:	e0823003 	add	r3, r2, r3
     4d4:	e3a02000 	mov	r2, #0
     4d8:	e5c32000 	strb	r2, [r3]
     4dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4e0:	e1a00003 	mov	r0, r3
     4e4:	e24bd004 	sub	sp, fp, #4
     4e8:	e8bd8800 	pop	{fp, pc}

000004ec <stat>:
     4ec:	e92d4800 	push	{fp, lr}
     4f0:	e28db004 	add	fp, sp, #4
     4f4:	e24dd010 	sub	sp, sp, #16
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     500:	e3a01000 	mov	r1, #0
     504:	e51b0010 	ldr	r0, [fp, #-16]
     508:	eb00009e 	bl	788 <open>
     50c:	e50b0008 	str	r0, [fp, #-8]
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e3530000 	cmp	r3, #0
     518:	aa000001 	bge	524 <stat+0x38>
     51c:	e3e03000 	mvn	r3, #0
     520:	ea000006 	b	540 <stat+0x54>
     524:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     528:	e51b0008 	ldr	r0, [fp, #-8]
     52c:	eb0000b0 	bl	7f4 <fstat>
     530:	e50b000c 	str	r0, [fp, #-12]
     534:	e51b0008 	ldr	r0, [fp, #-8]
     538:	eb000077 	bl	71c <close>
     53c:	e51b300c 	ldr	r3, [fp, #-12]
     540:	e1a00003 	mov	r0, r3
     544:	e24bd004 	sub	sp, fp, #4
     548:	e8bd8800 	pop	{fp, pc}

0000054c <atoi>:
     54c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     550:	e28db000 	add	fp, sp, #0
     554:	e24dd014 	sub	sp, sp, #20
     558:	e50b0010 	str	r0, [fp, #-16]
     55c:	e3a03000 	mov	r3, #0
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	ea00000c 	b	59c <atoi+0x50>
     568:	e51b2008 	ldr	r2, [fp, #-8]
     56c:	e1a03002 	mov	r3, r2
     570:	e1a03103 	lsl	r3, r3, #2
     574:	e0833002 	add	r3, r3, r2
     578:	e1a03083 	lsl	r3, r3, #1
     57c:	e1a01003 	mov	r1, r3
     580:	e51b3010 	ldr	r3, [fp, #-16]
     584:	e2832001 	add	r2, r3, #1
     588:	e50b2010 	str	r2, [fp, #-16]
     58c:	e5d33000 	ldrb	r3, [r3]
     590:	e0813003 	add	r3, r1, r3
     594:	e2433030 	sub	r3, r3, #48	; 0x30
     598:	e50b3008 	str	r3, [fp, #-8]
     59c:	e51b3010 	ldr	r3, [fp, #-16]
     5a0:	e5d33000 	ldrb	r3, [r3]
     5a4:	e353002f 	cmp	r3, #47	; 0x2f
     5a8:	9a000003 	bls	5bc <atoi+0x70>
     5ac:	e51b3010 	ldr	r3, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e3530039 	cmp	r3, #57	; 0x39
     5b8:	9affffea 	bls	568 <atoi+0x1c>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e28bd000 	add	sp, fp, #0
     5c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <memmove>:
     5d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     5d4:	e28db000 	add	fp, sp, #0
     5d8:	e24dd01c 	sub	sp, sp, #28
     5dc:	e50b0010 	str	r0, [fp, #-16]
     5e0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5e4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5e8:	e51b3010 	ldr	r3, [fp, #-16]
     5ec:	e50b3008 	str	r3, [fp, #-8]
     5f0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     5f4:	e50b300c 	str	r3, [fp, #-12]
     5f8:	ea000007 	b	61c <memmove+0x4c>
     5fc:	e51b200c 	ldr	r2, [fp, #-12]
     600:	e2823001 	add	r3, r2, #1
     604:	e50b300c 	str	r3, [fp, #-12]
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e2831001 	add	r1, r3, #1
     610:	e50b1008 	str	r1, [fp, #-8]
     614:	e5d22000 	ldrb	r2, [r2]
     618:	e5c32000 	strb	r2, [r3]
     61c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     620:	e2432001 	sub	r2, r3, #1
     624:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     628:	e3530000 	cmp	r3, #0
     62c:	cafffff2 	bgt	5fc <memmove+0x2c>
     630:	e51b3010 	ldr	r3, [fp, #-16]
     634:	e1a00003 	mov	r0, r3
     638:	e28bd000 	add	sp, fp, #0
     63c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <fork>:
     644:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a00001 	mov	r0, #1
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <exit>:
     668:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a00002 	mov	r0, #2
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <wait>:
     68c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a00003 	mov	r0, #3
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <pipe>:
     6b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00004 	mov	r0, #4
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <read>:
     6d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a00005 	mov	r0, #5
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <write>:
     6f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a00010 	mov	r0, #16
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <close>:
     71c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00015 	mov	r0, #21
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <kill>:
     740:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00006 	mov	r0, #6
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <exec>:
     764:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00007 	mov	r0, #7
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <open>:
     788:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a0000f 	mov	r0, #15
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <mknod>:
     7ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00011 	mov	r0, #17
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <unlink>:
     7d0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00012 	mov	r0, #18
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <fstat>:
     7f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00008 	mov	r0, #8
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <link>:
     818:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00013 	mov	r0, #19
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <mkdir>:
     83c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00014 	mov	r0, #20
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <chdir>:
     860:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00009 	mov	r0, #9
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <dup>:
     884:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a0000a 	mov	r0, #10
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <getpid>:
     8a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a0000b 	mov	r0, #11
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <sbrk>:
     8cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a0000c 	mov	r0, #12
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <sleep>:
     8f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a0000d 	mov	r0, #13
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <uptime>:
     914:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a0000e 	mov	r0, #14
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <memfree>:
     938:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00016 	mov	r0, #22
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <traceon>:
     95c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00017 	mov	r0, #23
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <getps>:
     980:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00018 	mov	r0, #24
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <suspend>:
     9a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00019 	mov	r0, #25
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <resume>:
     9c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a0001a 	mov	r0, #26
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <putc>:
     9ec:	e92d4800 	push	{fp, lr}
     9f0:	e28db004 	add	fp, sp, #4
     9f4:	e24dd008 	sub	sp, sp, #8
     9f8:	e50b0008 	str	r0, [fp, #-8]
     9fc:	e1a03001 	mov	r3, r1
     a00:	e54b3009 	strb	r3, [fp, #-9]
     a04:	e24b3009 	sub	r3, fp, #9
     a08:	e3a02001 	mov	r2, #1
     a0c:	e1a01003 	mov	r1, r3
     a10:	e51b0008 	ldr	r0, [fp, #-8]
     a14:	ebffff37 	bl	6f8 <write>
     a18:	e1a00000 	nop			; (mov r0, r0)
     a1c:	e24bd004 	sub	sp, fp, #4
     a20:	e8bd8800 	pop	{fp, pc}

00000a24 <printint>:
     a24:	e92d4800 	push	{fp, lr}
     a28:	e28db004 	add	fp, sp, #4
     a2c:	e24dd030 	sub	sp, sp, #48	; 0x30
     a30:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     a34:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     a38:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     a3c:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     a40:	e3a03000 	mov	r3, #0
     a44:	e50b300c 	str	r3, [fp, #-12]
     a48:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     a4c:	e3530000 	cmp	r3, #0
     a50:	0a000008 	beq	a78 <printint+0x54>
     a54:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a58:	e3530000 	cmp	r3, #0
     a5c:	aa000005 	bge	a78 <printint+0x54>
     a60:	e3a03001 	mov	r3, #1
     a64:	e50b300c 	str	r3, [fp, #-12]
     a68:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a6c:	e2633000 	rsb	r3, r3, #0
     a70:	e50b3010 	str	r3, [fp, #-16]
     a74:	ea000001 	b	a80 <printint+0x5c>
     a78:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a7c:	e50b3010 	str	r3, [fp, #-16]
     a80:	e3a03000 	mov	r3, #0
     a84:	e50b3008 	str	r3, [fp, #-8]
     a88:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     a8c:	e51b3010 	ldr	r3, [fp, #-16]
     a90:	e1a01002 	mov	r1, r2
     a94:	e1a00003 	mov	r0, r3
     a98:	eb0001d3 	bl	11ec <__aeabi_uidivmod>
     a9c:	e1a03001 	mov	r3, r1
     aa0:	e1a01003 	mov	r1, r3
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e2832001 	add	r2, r3, #1
     aac:	e50b2008 	str	r2, [fp, #-8]
     ab0:	e59f209c 	ldr	r2, [pc, #156]	; b54 <printint+0x130>
     ab4:	e7d22001 	ldrb	r2, [r2, r1]
     ab8:	e24b1004 	sub	r1, fp, #4
     abc:	e0813003 	add	r3, r1, r3
     ac0:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     ac4:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     ac8:	e1a01003 	mov	r1, r3
     acc:	e51b0010 	ldr	r0, [fp, #-16]
     ad0:	eb000188 	bl	10f8 <__udivsi3>
     ad4:	e1a03000 	mov	r3, r0
     ad8:	e50b3010 	str	r3, [fp, #-16]
     adc:	e51b3010 	ldr	r3, [fp, #-16]
     ae0:	e3530000 	cmp	r3, #0
     ae4:	1affffe7 	bne	a88 <printint+0x64>
     ae8:	e51b300c 	ldr	r3, [fp, #-12]
     aec:	e3530000 	cmp	r3, #0
     af0:	0a00000e 	beq	b30 <printint+0x10c>
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e2832001 	add	r2, r3, #1
     afc:	e50b2008 	str	r2, [fp, #-8]
     b00:	e24b2004 	sub	r2, fp, #4
     b04:	e0823003 	add	r3, r2, r3
     b08:	e3a0202d 	mov	r2, #45	; 0x2d
     b0c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     b10:	ea000006 	b	b30 <printint+0x10c>
     b14:	e24b2020 	sub	r2, fp, #32
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e0823003 	add	r3, r2, r3
     b20:	e5d33000 	ldrb	r3, [r3]
     b24:	e1a01003 	mov	r1, r3
     b28:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     b2c:	ebffffae 	bl	9ec <putc>
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e2433001 	sub	r3, r3, #1
     b38:	e50b3008 	str	r3, [fp, #-8]
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e3530000 	cmp	r3, #0
     b44:	aafffff2 	bge	b14 <printint+0xf0>
     b48:	e1a00000 	nop			; (mov r0, r0)
     b4c:	e24bd004 	sub	sp, fp, #4
     b50:	e8bd8800 	pop	{fp, pc}
     b54:	00001244 	.word	0x00001244

00000b58 <printf>:
     b58:	e92d000e 	push	{r1, r2, r3}
     b5c:	e92d4800 	push	{fp, lr}
     b60:	e28db004 	add	fp, sp, #4
     b64:	e24dd024 	sub	sp, sp, #36	; 0x24
     b68:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     b6c:	e3a03000 	mov	r3, #0
     b70:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b74:	e28b3008 	add	r3, fp, #8
     b78:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b7c:	e3a03000 	mov	r3, #0
     b80:	e50b3010 	str	r3, [fp, #-16]
     b84:	ea000074 	b	d5c <printf+0x204>
     b88:	e59b2004 	ldr	r2, [fp, #4]
     b8c:	e51b3010 	ldr	r3, [fp, #-16]
     b90:	e0823003 	add	r3, r2, r3
     b94:	e5d33000 	ldrb	r3, [r3]
     b98:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     b9c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ba0:	e3530000 	cmp	r3, #0
     ba4:	1a00000b 	bne	bd8 <printf+0x80>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bac:	e3530025 	cmp	r3, #37	; 0x25
     bb0:	1a000002 	bne	bc0 <printf+0x68>
     bb4:	e3a03025 	mov	r3, #37	; 0x25
     bb8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     bbc:	ea000063 	b	d50 <printf+0x1f8>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bc4:	e6ef3073 	uxtb	r3, r3
     bc8:	e1a01003 	mov	r1, r3
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bd0:	ebffff85 	bl	9ec <putc>
     bd4:	ea00005d 	b	d50 <printf+0x1f8>
     bd8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     bdc:	e3530025 	cmp	r3, #37	; 0x25
     be0:	1a00005a 	bne	d50 <printf+0x1f8>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     be8:	e3530064 	cmp	r3, #100	; 0x64
     bec:	1a00000a 	bne	c1c <printf+0xc4>
     bf0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e1a01003 	mov	r1, r3
     bfc:	e3a03001 	mov	r3, #1
     c00:	e3a0200a 	mov	r2, #10
     c04:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c08:	ebffff85 	bl	a24 <printint>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c10:	e2833004 	add	r3, r3, #4
     c14:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c18:	ea00004a 	b	d48 <printf+0x1f0>
     c1c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c20:	e3530078 	cmp	r3, #120	; 0x78
     c24:	0a000002 	beq	c34 <printf+0xdc>
     c28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c2c:	e3530070 	cmp	r3, #112	; 0x70
     c30:	1a00000a 	bne	c60 <printf+0x108>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c38:	e5933000 	ldr	r3, [r3]
     c3c:	e1a01003 	mov	r1, r3
     c40:	e3a03000 	mov	r3, #0
     c44:	e3a02010 	mov	r2, #16
     c48:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c4c:	ebffff74 	bl	a24 <printint>
     c50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c54:	e2833004 	add	r3, r3, #4
     c58:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c5c:	ea000039 	b	d48 <printf+0x1f0>
     c60:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c64:	e3530073 	cmp	r3, #115	; 0x73
     c68:	1a000018 	bne	cd0 <printf+0x178>
     c6c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e50b300c 	str	r3, [fp, #-12]
     c78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c7c:	e2833004 	add	r3, r3, #4
     c80:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e3530000 	cmp	r3, #0
     c8c:	1a00000a 	bne	cbc <printf+0x164>
     c90:	e59f30f0 	ldr	r3, [pc, #240]	; d88 <printf+0x230>
     c94:	e50b300c 	str	r3, [fp, #-12]
     c98:	ea000007 	b	cbc <printf+0x164>
     c9c:	e51b300c 	ldr	r3, [fp, #-12]
     ca0:	e5d33000 	ldrb	r3, [r3]
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cac:	ebffff4e 	bl	9ec <putc>
     cb0:	e51b300c 	ldr	r3, [fp, #-12]
     cb4:	e2833001 	add	r3, r3, #1
     cb8:	e50b300c 	str	r3, [fp, #-12]
     cbc:	e51b300c 	ldr	r3, [fp, #-12]
     cc0:	e5d33000 	ldrb	r3, [r3]
     cc4:	e3530000 	cmp	r3, #0
     cc8:	1afffff3 	bne	c9c <printf+0x144>
     ccc:	ea00001d 	b	d48 <printf+0x1f0>
     cd0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     cd4:	e3530063 	cmp	r3, #99	; 0x63
     cd8:	1a000009 	bne	d04 <printf+0x1ac>
     cdc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ce0:	e5933000 	ldr	r3, [r3]
     ce4:	e6ef3073 	uxtb	r3, r3
     ce8:	e1a01003 	mov	r1, r3
     cec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cf0:	ebffff3d 	bl	9ec <putc>
     cf4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     cf8:	e2833004 	add	r3, r3, #4
     cfc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     d00:	ea000010 	b	d48 <printf+0x1f0>
     d04:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d08:	e3530025 	cmp	r3, #37	; 0x25
     d0c:	1a000005 	bne	d28 <printf+0x1d0>
     d10:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d14:	e6ef3073 	uxtb	r3, r3
     d18:	e1a01003 	mov	r1, r3
     d1c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d20:	ebffff31 	bl	9ec <putc>
     d24:	ea000007 	b	d48 <printf+0x1f0>
     d28:	e3a01025 	mov	r1, #37	; 0x25
     d2c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d30:	ebffff2d 	bl	9ec <putc>
     d34:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d38:	e6ef3073 	uxtb	r3, r3
     d3c:	e1a01003 	mov	r1, r3
     d40:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d44:	ebffff28 	bl	9ec <putc>
     d48:	e3a03000 	mov	r3, #0
     d4c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     d50:	e51b3010 	ldr	r3, [fp, #-16]
     d54:	e2833001 	add	r3, r3, #1
     d58:	e50b3010 	str	r3, [fp, #-16]
     d5c:	e59b2004 	ldr	r2, [fp, #4]
     d60:	e51b3010 	ldr	r3, [fp, #-16]
     d64:	e0823003 	add	r3, r2, r3
     d68:	e5d33000 	ldrb	r3, [r3]
     d6c:	e3530000 	cmp	r3, #0
     d70:	1affff84 	bne	b88 <printf+0x30>
     d74:	e1a00000 	nop			; (mov r0, r0)
     d78:	e24bd004 	sub	sp, fp, #4
     d7c:	e8bd4800 	pop	{fp, lr}
     d80:	e28dd00c 	add	sp, sp, #12
     d84:	e12fff1e 	bx	lr
     d88:	0000123c 	.word	0x0000123c

00000d8c <free>:
     d8c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     d90:	e28db000 	add	fp, sp, #0
     d94:	e24dd014 	sub	sp, sp, #20
     d98:	e50b0010 	str	r0, [fp, #-16]
     d9c:	e51b3010 	ldr	r3, [fp, #-16]
     da0:	e2433008 	sub	r3, r3, #8
     da4:	e50b300c 	str	r3, [fp, #-12]
     da8:	e59f3154 	ldr	r3, [pc, #340]	; f04 <free+0x178>
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e50b3008 	str	r3, [fp, #-8]
     db4:	ea000010 	b	dfc <free+0x70>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e51b2008 	ldr	r2, [fp, #-8]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	3a000008 	bcc	df0 <free+0x64>
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e1520003 	cmp	r2, r3
     dd8:	8a000010 	bhi	e20 <free+0x94>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	3a00000b 	bcc	e20 <free+0x94>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e50b3008 	str	r3, [fp, #-8]
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e1520003 	cmp	r2, r3
     e08:	9affffea 	bls	db8 <free+0x2c>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e51b200c 	ldr	r2, [fp, #-12]
     e18:	e1520003 	cmp	r2, r3
     e1c:	2affffe5 	bcs	db8 <free+0x2c>
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e5933004 	ldr	r3, [r3, #4]
     e28:	e1a03183 	lsl	r3, r3, #3
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e0822003 	add	r2, r2, r3
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e1520003 	cmp	r2, r3
     e40:	1a00000d 	bne	e7c <free+0xf0>
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e5932004 	ldr	r2, [r3, #4]
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5933000 	ldr	r3, [r3]
     e54:	e5933004 	ldr	r3, [r3, #4]
     e58:	e0822003 	add	r2, r2, r3
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5832004 	str	r2, [r3, #4]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e5932000 	ldr	r2, [r3]
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5832000 	str	r2, [r3]
     e78:	ea000003 	b	e8c <free+0x100>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5932000 	ldr	r2, [r3]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e5832000 	str	r2, [r3]
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933004 	ldr	r3, [r3, #4]
     e94:	e1a03183 	lsl	r3, r3, #3
     e98:	e51b2008 	ldr	r2, [fp, #-8]
     e9c:	e0823003 	add	r3, r2, r3
     ea0:	e51b200c 	ldr	r2, [fp, #-12]
     ea4:	e1520003 	cmp	r2, r3
     ea8:	1a00000b 	bne	edc <free+0x150>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5932004 	ldr	r2, [r3, #4]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5933004 	ldr	r3, [r3, #4]
     ebc:	e0822003 	add	r2, r2, r3
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e5832004 	str	r2, [r3, #4]
     ec8:	e51b300c 	ldr	r3, [fp, #-12]
     ecc:	e5932000 	ldr	r2, [r3]
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5832000 	str	r2, [r3]
     ed8:	ea000002 	b	ee8 <free+0x15c>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e51b200c 	ldr	r2, [fp, #-12]
     ee4:	e5832000 	str	r2, [r3]
     ee8:	e59f2014 	ldr	r2, [pc, #20]	; f04 <free+0x178>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5823000 	str	r3, [r2]
     ef4:	e1a00000 	nop			; (mov r0, r0)
     ef8:	e28bd000 	add	sp, fp, #0
     efc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     f00:	e12fff1e 	bx	lr
     f04:	00001260 	.word	0x00001260

00000f08 <morecore>:
     f08:	e92d4800 	push	{fp, lr}
     f0c:	e28db004 	add	fp, sp, #4
     f10:	e24dd010 	sub	sp, sp, #16
     f14:	e50b0010 	str	r0, [fp, #-16]
     f18:	e51b3010 	ldr	r3, [fp, #-16]
     f1c:	e3530a01 	cmp	r3, #4096	; 0x1000
     f20:	2a000001 	bcs	f2c <morecore+0x24>
     f24:	e3a03a01 	mov	r3, #4096	; 0x1000
     f28:	e50b3010 	str	r3, [fp, #-16]
     f2c:	e51b3010 	ldr	r3, [fp, #-16]
     f30:	e1a03183 	lsl	r3, r3, #3
     f34:	e1a00003 	mov	r0, r3
     f38:	ebfffe63 	bl	8cc <sbrk>
     f3c:	e50b0008 	str	r0, [fp, #-8]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e3730001 	cmn	r3, #1
     f48:	1a000001 	bne	f54 <morecore+0x4c>
     f4c:	e3a03000 	mov	r3, #0
     f50:	ea00000a 	b	f80 <morecore+0x78>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e50b300c 	str	r3, [fp, #-12]
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e51b2010 	ldr	r2, [fp, #-16]
     f64:	e5832004 	str	r2, [r3, #4]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e2833008 	add	r3, r3, #8
     f70:	e1a00003 	mov	r0, r3
     f74:	ebffff84 	bl	d8c <free>
     f78:	e59f300c 	ldr	r3, [pc, #12]	; f8c <morecore+0x84>
     f7c:	e5933000 	ldr	r3, [r3]
     f80:	e1a00003 	mov	r0, r3
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}
     f8c:	00001260 	.word	0x00001260

00000f90 <malloc>:
     f90:	e92d4800 	push	{fp, lr}
     f94:	e28db004 	add	fp, sp, #4
     f98:	e24dd018 	sub	sp, sp, #24
     f9c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     fa0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     fa4:	e2833007 	add	r3, r3, #7
     fa8:	e1a031a3 	lsr	r3, r3, #3
     fac:	e2833001 	add	r3, r3, #1
     fb0:	e50b3010 	str	r3, [fp, #-16]
     fb4:	e59f3134 	ldr	r3, [pc, #308]	; 10f0 <malloc+0x160>
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e50b300c 	str	r3, [fp, #-12]
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e3530000 	cmp	r3, #0
     fc8:	1a00000b 	bne	ffc <malloc+0x6c>
     fcc:	e59f3120 	ldr	r3, [pc, #288]	; 10f4 <malloc+0x164>
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	e59f2114 	ldr	r2, [pc, #276]	; 10f0 <malloc+0x160>
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5823000 	str	r3, [r2]
     fe0:	e59f3108 	ldr	r3, [pc, #264]	; 10f0 <malloc+0x160>
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e59f2104 	ldr	r2, [pc, #260]	; 10f4 <malloc+0x164>
     fec:	e5823000 	str	r3, [r2]
     ff0:	e59f30fc 	ldr	r3, [pc, #252]	; 10f4 <malloc+0x164>
     ff4:	e3a02000 	mov	r2, #0
     ff8:	e5832004 	str	r2, [r3, #4]
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e50b3008 	str	r3, [fp, #-8]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5933004 	ldr	r3, [r3, #4]
    1010:	e51b2010 	ldr	r2, [fp, #-16]
    1014:	e1520003 	cmp	r2, r3
    1018:	8a00001e 	bhi	1098 <malloc+0x108>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5933004 	ldr	r3, [r3, #4]
    1024:	e51b2010 	ldr	r2, [fp, #-16]
    1028:	e1520003 	cmp	r2, r3
    102c:	1a000004 	bne	1044 <malloc+0xb4>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5932000 	ldr	r2, [r3]
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e5832000 	str	r2, [r3]
    1040:	ea00000e 	b	1080 <malloc+0xf0>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5932004 	ldr	r2, [r3, #4]
    104c:	e51b3010 	ldr	r3, [fp, #-16]
    1050:	e0422003 	sub	r2, r2, r3
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5832004 	str	r2, [r3, #4]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5933004 	ldr	r3, [r3, #4]
    1064:	e1a03183 	lsl	r3, r3, #3
    1068:	e51b2008 	ldr	r2, [fp, #-8]
    106c:	e0823003 	add	r3, r2, r3
    1070:	e50b3008 	str	r3, [fp, #-8]
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e51b2010 	ldr	r2, [fp, #-16]
    107c:	e5832004 	str	r2, [r3, #4]
    1080:	e59f2068 	ldr	r2, [pc, #104]	; 10f0 <malloc+0x160>
    1084:	e51b300c 	ldr	r3, [fp, #-12]
    1088:	e5823000 	str	r3, [r2]
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e2833008 	add	r3, r3, #8
    1094:	ea000012 	b	10e4 <malloc+0x154>
    1098:	e59f3050 	ldr	r3, [pc, #80]	; 10f0 <malloc+0x160>
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e51b2008 	ldr	r2, [fp, #-8]
    10a4:	e1520003 	cmp	r2, r3
    10a8:	1a000007 	bne	10cc <malloc+0x13c>
    10ac:	e51b0010 	ldr	r0, [fp, #-16]
    10b0:	ebffff94 	bl	f08 <morecore>
    10b4:	e50b0008 	str	r0, [fp, #-8]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	1a000001 	bne	10cc <malloc+0x13c>
    10c4:	e3a03000 	mov	r3, #0
    10c8:	ea000005 	b	10e4 <malloc+0x154>
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e50b300c 	str	r3, [fp, #-12]
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e50b3008 	str	r3, [fp, #-8]
    10e0:	eaffffc8 	b	1008 <malloc+0x78>
    10e4:	e1a00003 	mov	r0, r3
    10e8:	e24bd004 	sub	sp, fp, #4
    10ec:	e8bd8800 	pop	{fp, pc}
    10f0:	00001260 	.word	0x00001260
    10f4:	00001258 	.word	0x00001258

000010f8 <__udivsi3>:
    10f8:	e2512001 	subs	r2, r1, #1
    10fc:	012fff1e 	bxeq	lr
    1100:	3a000036 	bcc	11e0 <__udivsi3+0xe8>
    1104:	e1500001 	cmp	r0, r1
    1108:	9a000022 	bls	1198 <__udivsi3+0xa0>
    110c:	e1110002 	tst	r1, r2
    1110:	0a000023 	beq	11a4 <__udivsi3+0xac>
    1114:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1118:	01a01181 	lsleq	r1, r1, #3
    111c:	03a03008 	moveq	r3, #8
    1120:	13a03001 	movne	r3, #1
    1124:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1128:	31510000 	cmpcc	r1, r0
    112c:	31a01201 	lslcc	r1, r1, #4
    1130:	31a03203 	lslcc	r3, r3, #4
    1134:	3afffffa 	bcc	1124 <__udivsi3+0x2c>
    1138:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    113c:	31510000 	cmpcc	r1, r0
    1140:	31a01081 	lslcc	r1, r1, #1
    1144:	31a03083 	lslcc	r3, r3, #1
    1148:	3afffffa 	bcc	1138 <__udivsi3+0x40>
    114c:	e3a02000 	mov	r2, #0
    1150:	e1500001 	cmp	r0, r1
    1154:	20400001 	subcs	r0, r0, r1
    1158:	21822003 	orrcs	r2, r2, r3
    115c:	e15000a1 	cmp	r0, r1, lsr #1
    1160:	204000a1 	subcs	r0, r0, r1, lsr #1
    1164:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1168:	e1500121 	cmp	r0, r1, lsr #2
    116c:	20400121 	subcs	r0, r0, r1, lsr #2
    1170:	21822123 	orrcs	r2, r2, r3, lsr #2
    1174:	e15001a1 	cmp	r0, r1, lsr #3
    1178:	204001a1 	subcs	r0, r0, r1, lsr #3
    117c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1180:	e3500000 	cmp	r0, #0
    1184:	11b03223 	lsrsne	r3, r3, #4
    1188:	11a01221 	lsrne	r1, r1, #4
    118c:	1affffef 	bne	1150 <__udivsi3+0x58>
    1190:	e1a00002 	mov	r0, r2
    1194:	e12fff1e 	bx	lr
    1198:	03a00001 	moveq	r0, #1
    119c:	13a00000 	movne	r0, #0
    11a0:	e12fff1e 	bx	lr
    11a4:	e3510801 	cmp	r1, #65536	; 0x10000
    11a8:	21a01821 	lsrcs	r1, r1, #16
    11ac:	23a02010 	movcs	r2, #16
    11b0:	33a02000 	movcc	r2, #0
    11b4:	e3510c01 	cmp	r1, #256	; 0x100
    11b8:	21a01421 	lsrcs	r1, r1, #8
    11bc:	22822008 	addcs	r2, r2, #8
    11c0:	e3510010 	cmp	r1, #16
    11c4:	21a01221 	lsrcs	r1, r1, #4
    11c8:	22822004 	addcs	r2, r2, #4
    11cc:	e3510004 	cmp	r1, #4
    11d0:	82822003 	addhi	r2, r2, #3
    11d4:	908220a1 	addls	r2, r2, r1, lsr #1
    11d8:	e1a00230 	lsr	r0, r0, r2
    11dc:	e12fff1e 	bx	lr
    11e0:	e3500000 	cmp	r0, #0
    11e4:	13e00000 	mvnne	r0, #0
    11e8:	ea000007 	b	120c <__aeabi_idiv0>

000011ec <__aeabi_uidivmod>:
    11ec:	e3510000 	cmp	r1, #0
    11f0:	0afffffa 	beq	11e0 <__udivsi3+0xe8>
    11f4:	e92d4003 	push	{r0, r1, lr}
    11f8:	ebffffbe 	bl	10f8 <__udivsi3>
    11fc:	e8bd4006 	pop	{r1, r2, lr}
    1200:	e0030092 	mul	r3, r2, r0
    1204:	e0411003 	sub	r1, r1, r3
    1208:	e12fff1e 	bx	lr

0000120c <__aeabi_idiv0>:
    120c:	e12fff1e 	bx	lr
