
_rm:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	; ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb00029b 	bl	a9c <printf>
      2c:	eb00015e 	bl	5ac <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0001ae 	bl	714 <unlink>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e1a02003 	mov	r2, r3
      7c:	e59f102c 	ldr	r1, [pc, #44]	; b0 <main+0xb0>
      80:	e3a00002 	mov	r0, #2
      84:	eb000284 	bl	a9c <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb00013f 	bl	5ac <exit>
      ac:	00001154 	.word	0x00001154
      b0:	00001168 	.word	0x00001168

000000b4 <strcpy>:
      b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e1a00000 	nop			; (mov r0, r0)
      d4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      d8:	e2823001 	add	r3, r2, #1
      dc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      e0:	e51b3010 	ldr	r3, [fp, #-16]
      e4:	e2831001 	add	r1, r3, #1
      e8:	e50b1010 	str	r1, [fp, #-16]
      ec:	e5d22000 	ldrb	r2, [r2]
      f0:	e5c32000 	strb	r2, [r3]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff4 	bne	d4 <strcpy+0x20>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcmp>:
     114:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd00c 	sub	sp, sp, #12
     120:	e50b0008 	str	r0, [fp, #-8]
     124:	e50b100c 	str	r1, [fp, #-12]
     128:	ea000005 	b	144 <strcmp+0x30>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e2833001 	add	r3, r3, #1
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strcmp+0x58>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffef 	beq	12c <strcmp+0x18>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e1a02003 	mov	r2, r3
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e0423003 	sub	r3, r2, r3
     184:	e1a00003 	mov	r0, r3
     188:	e28bd000 	add	sp, fp, #0
     18c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strlen>:
     194:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd014 	sub	sp, sp, #20
     1a0:	e50b0010 	str	r0, [fp, #-16]
     1a4:	e3a03000 	mov	r3, #0
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	ea000002 	b	1bc <strlen+0x28>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e51b2010 	ldr	r2, [fp, #-16]
     1c4:	e0823003 	add	r3, r2, r3
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff6 	bne	1b0 <strlen+0x1c>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <memset>:
     1e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd024 	sub	sp, sp, #36	; 0x24
     1f4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     1f8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     1fc:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     200:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     20c:	e54b300d 	strb	r3, [fp, #-13]
     210:	e55b300d 	ldrb	r3, [fp, #-13]
     214:	e1a02c03 	lsl	r2, r3, #24
     218:	e55b300d 	ldrb	r3, [fp, #-13]
     21c:	e1a03803 	lsl	r3, r3, #16
     220:	e1822003 	orr	r2, r2, r3
     224:	e55b300d 	ldrb	r3, [fp, #-13]
     228:	e1a03403 	lsl	r3, r3, #8
     22c:	e1822003 	orr	r2, r2, r3
     230:	e55b300d 	ldrb	r3, [fp, #-13]
     234:	e1823003 	orr	r3, r2, r3
     238:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     23c:	ea000008 	b	264 <memset+0x7c>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e55b200d 	ldrb	r2, [fp, #-13]
     248:	e5c32000 	strb	r2, [r3]
     24c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     250:	e2433001 	sub	r3, r3, #1
     254:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e2833001 	add	r3, r3, #1
     260:	e50b3008 	str	r3, [fp, #-8]
     264:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     268:	e3530000 	cmp	r3, #0
     26c:	0a000003 	beq	280 <memset+0x98>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2033003 	and	r3, r3, #3
     278:	e3530000 	cmp	r3, #0
     27c:	1affffef 	bne	240 <memset+0x58>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	ea000008 	b	2b0 <memset+0xc8>
     28c:	e51b300c 	ldr	r3, [fp, #-12]
     290:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     294:	e5832000 	str	r2, [r3]
     298:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     29c:	e2433004 	sub	r3, r3, #4
     2a0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2a4:	e51b300c 	ldr	r3, [fp, #-12]
     2a8:	e2833004 	add	r3, r3, #4
     2ac:	e50b300c 	str	r3, [fp, #-12]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2b4:	e3530003 	cmp	r3, #3
     2b8:	8afffff3 	bhi	28c <memset+0xa4>
     2bc:	e51b300c 	ldr	r3, [fp, #-12]
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	ea000008 	b	2ec <memset+0x104>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e5c32000 	strb	r2, [r3]
     2d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2d8:	e2433001 	sub	r3, r3, #1
     2dc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e2833001 	add	r3, r3, #1
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2f0:	e3530000 	cmp	r3, #0
     2f4:	1afffff3 	bne	2c8 <memset+0xe0>
     2f8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2fc:	e1a00003 	mov	r0, r3
     300:	e28bd000 	add	sp, fp, #0
     304:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     308:	e12fff1e 	bx	lr

0000030c <strchr>:
     30c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     310:	e28db000 	add	fp, sp, #0
     314:	e24dd00c 	sub	sp, sp, #12
     318:	e50b0008 	str	r0, [fp, #-8]
     31c:	e1a03001 	mov	r3, r1
     320:	e54b3009 	strb	r3, [fp, #-9]
     324:	ea000009 	b	350 <strchr+0x44>
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e55b2009 	ldrb	r2, [fp, #-9]
     334:	e1520003 	cmp	r2, r3
     338:	1a000001 	bne	344 <strchr+0x38>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	ea000007 	b	364 <strchr+0x58>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e2833001 	add	r3, r3, #1
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	1afffff1 	bne	328 <strchr+0x1c>
     360:	e3a03000 	mov	r3, #0
     364:	e1a00003 	mov	r0, r3
     368:	e28bd000 	add	sp, fp, #0
     36c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     370:	e12fff1e 	bx	lr

00000374 <gets>:
     374:	e92d4800 	push	{fp, lr}
     378:	e28db004 	add	fp, sp, #4
     37c:	e24dd018 	sub	sp, sp, #24
     380:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     384:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     388:	e3a03000 	mov	r3, #0
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000016 	b	3f0 <gets+0x7c>
     394:	e24b300d 	sub	r3, fp, #13
     398:	e3a02001 	mov	r2, #1
     39c:	e1a01003 	mov	r1, r3
     3a0:	e3a00000 	mov	r0, #0
     3a4:	eb00009b 	bl	618 <read>
     3a8:	e50b000c 	str	r0, [fp, #-12]
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e3530000 	cmp	r3, #0
     3b4:	da000013 	ble	408 <gets+0x94>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e2832001 	add	r2, r3, #1
     3c0:	e50b2008 	str	r2, [fp, #-8]
     3c4:	e1a02003 	mov	r2, r3
     3c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3cc:	e0833002 	add	r3, r3, r2
     3d0:	e55b200d 	ldrb	r2, [fp, #-13]
     3d4:	e5c32000 	strb	r2, [r3]
     3d8:	e55b300d 	ldrb	r3, [fp, #-13]
     3dc:	e353000a 	cmp	r3, #10
     3e0:	0a000009 	beq	40c <gets+0x98>
     3e4:	e55b300d 	ldrb	r3, [fp, #-13]
     3e8:	e353000d 	cmp	r3, #13
     3ec:	0a000006 	beq	40c <gets+0x98>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e2833001 	add	r3, r3, #1
     3f8:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     3fc:	e1520003 	cmp	r2, r3
     400:	caffffe3 	bgt	394 <gets+0x20>
     404:	ea000000 	b	40c <gets+0x98>
     408:	e1a00000 	nop			; (mov r0, r0)
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     414:	e0823003 	add	r3, r2, r3
     418:	e3a02000 	mov	r2, #0
     41c:	e5c32000 	strb	r2, [r3]
     420:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     424:	e1a00003 	mov	r0, r3
     428:	e24bd004 	sub	sp, fp, #4
     42c:	e8bd8800 	pop	{fp, pc}

00000430 <stat>:
     430:	e92d4800 	push	{fp, lr}
     434:	e28db004 	add	fp, sp, #4
     438:	e24dd010 	sub	sp, sp, #16
     43c:	e50b0010 	str	r0, [fp, #-16]
     440:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     444:	e3a01000 	mov	r1, #0
     448:	e51b0010 	ldr	r0, [fp, #-16]
     44c:	eb00009e 	bl	6cc <open>
     450:	e50b0008 	str	r0, [fp, #-8]
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e3530000 	cmp	r3, #0
     45c:	aa000001 	bge	468 <stat+0x38>
     460:	e3e03000 	mvn	r3, #0
     464:	ea000006 	b	484 <stat+0x54>
     468:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     46c:	e51b0008 	ldr	r0, [fp, #-8]
     470:	eb0000b0 	bl	738 <fstat>
     474:	e50b000c 	str	r0, [fp, #-12]
     478:	e51b0008 	ldr	r0, [fp, #-8]
     47c:	eb000077 	bl	660 <close>
     480:	e51b300c 	ldr	r3, [fp, #-12]
     484:	e1a00003 	mov	r0, r3
     488:	e24bd004 	sub	sp, fp, #4
     48c:	e8bd8800 	pop	{fp, pc}

00000490 <atoi>:
     490:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     494:	e28db000 	add	fp, sp, #0
     498:	e24dd014 	sub	sp, sp, #20
     49c:	e50b0010 	str	r0, [fp, #-16]
     4a0:	e3a03000 	mov	r3, #0
     4a4:	e50b3008 	str	r3, [fp, #-8]
     4a8:	ea00000c 	b	4e0 <atoi+0x50>
     4ac:	e51b2008 	ldr	r2, [fp, #-8]
     4b0:	e1a03002 	mov	r3, r2
     4b4:	e1a03103 	lsl	r3, r3, #2
     4b8:	e0833002 	add	r3, r3, r2
     4bc:	e1a03083 	lsl	r3, r3, #1
     4c0:	e1a01003 	mov	r1, r3
     4c4:	e51b3010 	ldr	r3, [fp, #-16]
     4c8:	e2832001 	add	r2, r3, #1
     4cc:	e50b2010 	str	r2, [fp, #-16]
     4d0:	e5d33000 	ldrb	r3, [r3]
     4d4:	e0813003 	add	r3, r1, r3
     4d8:	e2433030 	sub	r3, r3, #48	; 0x30
     4dc:	e50b3008 	str	r3, [fp, #-8]
     4e0:	e51b3010 	ldr	r3, [fp, #-16]
     4e4:	e5d33000 	ldrb	r3, [r3]
     4e8:	e353002f 	cmp	r3, #47	; 0x2f
     4ec:	9a000003 	bls	500 <atoi+0x70>
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e3530039 	cmp	r3, #57	; 0x39
     4fc:	9affffea 	bls	4ac <atoi+0x1c>
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e1a00003 	mov	r0, r3
     508:	e28bd000 	add	sp, fp, #0
     50c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     510:	e12fff1e 	bx	lr

00000514 <memmove>:
     514:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     518:	e28db000 	add	fp, sp, #0
     51c:	e24dd01c 	sub	sp, sp, #28
     520:	e50b0010 	str	r0, [fp, #-16]
     524:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     528:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     52c:	e51b3010 	ldr	r3, [fp, #-16]
     530:	e50b3008 	str	r3, [fp, #-8]
     534:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     538:	e50b300c 	str	r3, [fp, #-12]
     53c:	ea000007 	b	560 <memmove+0x4c>
     540:	e51b200c 	ldr	r2, [fp, #-12]
     544:	e2823001 	add	r3, r2, #1
     548:	e50b300c 	str	r3, [fp, #-12]
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2831001 	add	r1, r3, #1
     554:	e50b1008 	str	r1, [fp, #-8]
     558:	e5d22000 	ldrb	r2, [r2]
     55c:	e5c32000 	strb	r2, [r3]
     560:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     564:	e2432001 	sub	r2, r3, #1
     568:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     56c:	e3530000 	cmp	r3, #0
     570:	cafffff2 	bgt	540 <memmove+0x2c>
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e1a00003 	mov	r0, r3
     57c:	e28bd000 	add	sp, fp, #0
     580:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <fork>:
     588:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     58c:	e1a04003 	mov	r4, r3
     590:	e1a03002 	mov	r3, r2
     594:	e1a02001 	mov	r2, r1
     598:	e1a01000 	mov	r1, r0
     59c:	e3a00001 	mov	r0, #1
     5a0:	ef000000 	svc	0x00000000
     5a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <exit>:
     5ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5b0:	e1a04003 	mov	r4, r3
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a02001 	mov	r2, r1
     5bc:	e1a01000 	mov	r1, r0
     5c0:	e3a00002 	mov	r0, #2
     5c4:	ef000000 	svc	0x00000000
     5c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <wait>:
     5d0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00003 	mov	r0, #3
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <pipe>:
     5f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00004 	mov	r0, #4
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <read>:
     618:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00005 	mov	r0, #5
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <write>:
     63c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00010 	mov	r0, #16
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <close>:
     660:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00015 	mov	r0, #21
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <kill>:
     684:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00006 	mov	r0, #6
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <exec>:
     6a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00007 	mov	r0, #7
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <open>:
     6cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a0000f 	mov	r0, #15
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <mknod>:
     6f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00011 	mov	r0, #17
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <unlink>:
     714:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00012 	mov	r0, #18
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <fstat>:
     738:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00008 	mov	r0, #8
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <link>:
     75c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00013 	mov	r0, #19
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <mkdir>:
     780:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00014 	mov	r0, #20
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <chdir>:
     7a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00009 	mov	r0, #9
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <dup>:
     7c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a0000a 	mov	r0, #10
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <getpid>:
     7ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a0000b 	mov	r0, #11
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <sbrk>:
     810:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000c 	mov	r0, #12
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <sleep>:
     834:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000d 	mov	r0, #13
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <uptime>:
     858:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a0000e 	mov	r0, #14
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <memfree>:
     87c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00016 	mov	r0, #22
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <traceon>:
     8a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00017 	mov	r0, #23
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <getps>:
     8c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00018 	mov	r0, #24
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <suspend>:
     8e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00019 	mov	r0, #25
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <resume>:
     90c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a0001a 	mov	r0, #26
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <putc>:
     930:	e92d4800 	push	{fp, lr}
     934:	e28db004 	add	fp, sp, #4
     938:	e24dd008 	sub	sp, sp, #8
     93c:	e50b0008 	str	r0, [fp, #-8]
     940:	e1a03001 	mov	r3, r1
     944:	e54b3009 	strb	r3, [fp, #-9]
     948:	e24b3009 	sub	r3, fp, #9
     94c:	e3a02001 	mov	r2, #1
     950:	e1a01003 	mov	r1, r3
     954:	e51b0008 	ldr	r0, [fp, #-8]
     958:	ebffff37 	bl	63c <write>
     95c:	e1a00000 	nop			; (mov r0, r0)
     960:	e24bd004 	sub	sp, fp, #4
     964:	e8bd8800 	pop	{fp, pc}

00000968 <printint>:
     968:	e92d4800 	push	{fp, lr}
     96c:	e28db004 	add	fp, sp, #4
     970:	e24dd030 	sub	sp, sp, #48	; 0x30
     974:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     978:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     97c:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     980:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     984:	e3a03000 	mov	r3, #0
     988:	e50b300c 	str	r3, [fp, #-12]
     98c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     990:	e3530000 	cmp	r3, #0
     994:	0a000008 	beq	9bc <printint+0x54>
     998:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     99c:	e3530000 	cmp	r3, #0
     9a0:	aa000005 	bge	9bc <printint+0x54>
     9a4:	e3a03001 	mov	r3, #1
     9a8:	e50b300c 	str	r3, [fp, #-12]
     9ac:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     9b0:	e2633000 	rsb	r3, r3, #0
     9b4:	e50b3010 	str	r3, [fp, #-16]
     9b8:	ea000001 	b	9c4 <printint+0x5c>
     9bc:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     9c0:	e50b3010 	str	r3, [fp, #-16]
     9c4:	e3a03000 	mov	r3, #0
     9c8:	e50b3008 	str	r3, [fp, #-8]
     9cc:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     9d0:	e51b3010 	ldr	r3, [fp, #-16]
     9d4:	e1a01002 	mov	r1, r2
     9d8:	e1a00003 	mov	r0, r3
     9dc:	eb0001d3 	bl	1130 <__aeabi_uidivmod>
     9e0:	e1a03001 	mov	r3, r1
     9e4:	e1a01003 	mov	r1, r3
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e2832001 	add	r2, r3, #1
     9f0:	e50b2008 	str	r2, [fp, #-8]
     9f4:	e59f209c 	ldr	r2, [pc, #156]	; a98 <printint+0x130>
     9f8:	e7d22001 	ldrb	r2, [r2, r1]
     9fc:	e24b1004 	sub	r1, fp, #4
     a00:	e0813003 	add	r3, r1, r3
     a04:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a08:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     a0c:	e1a01003 	mov	r1, r3
     a10:	e51b0010 	ldr	r0, [fp, #-16]
     a14:	eb000188 	bl	103c <__udivsi3>
     a18:	e1a03000 	mov	r3, r0
     a1c:	e50b3010 	str	r3, [fp, #-16]
     a20:	e51b3010 	ldr	r3, [fp, #-16]
     a24:	e3530000 	cmp	r3, #0
     a28:	1affffe7 	bne	9cc <printint+0x64>
     a2c:	e51b300c 	ldr	r3, [fp, #-12]
     a30:	e3530000 	cmp	r3, #0
     a34:	0a00000e 	beq	a74 <printint+0x10c>
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2832001 	add	r2, r3, #1
     a40:	e50b2008 	str	r2, [fp, #-8]
     a44:	e24b2004 	sub	r2, fp, #4
     a48:	e0823003 	add	r3, r2, r3
     a4c:	e3a0202d 	mov	r2, #45	; 0x2d
     a50:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a54:	ea000006 	b	a74 <printint+0x10c>
     a58:	e24b2020 	sub	r2, fp, #32
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e0823003 	add	r3, r2, r3
     a64:	e5d33000 	ldrb	r3, [r3]
     a68:	e1a01003 	mov	r1, r3
     a6c:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     a70:	ebffffae 	bl	930 <putc>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e2433001 	sub	r3, r3, #1
     a7c:	e50b3008 	str	r3, [fp, #-8]
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e3530000 	cmp	r3, #0
     a88:	aafffff2 	bge	a58 <printint+0xf0>
     a8c:	e1a00000 	nop			; (mov r0, r0)
     a90:	e24bd004 	sub	sp, fp, #4
     a94:	e8bd8800 	pop	{fp, pc}
     a98:	0000118c 	.word	0x0000118c

00000a9c <printf>:
     a9c:	e92d000e 	push	{r1, r2, r3}
     aa0:	e92d4800 	push	{fp, lr}
     aa4:	e28db004 	add	fp, sp, #4
     aa8:	e24dd024 	sub	sp, sp, #36	; 0x24
     aac:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     ab0:	e3a03000 	mov	r3, #0
     ab4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     ab8:	e28b3008 	add	r3, fp, #8
     abc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ac0:	e3a03000 	mov	r3, #0
     ac4:	e50b3010 	str	r3, [fp, #-16]
     ac8:	ea000074 	b	ca0 <printf+0x204>
     acc:	e59b2004 	ldr	r2, [fp, #4]
     ad0:	e51b3010 	ldr	r3, [fp, #-16]
     ad4:	e0823003 	add	r3, r2, r3
     ad8:	e5d33000 	ldrb	r3, [r3]
     adc:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     ae0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ae4:	e3530000 	cmp	r3, #0
     ae8:	1a00000b 	bne	b1c <printf+0x80>
     aec:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     af0:	e3530025 	cmp	r3, #37	; 0x25
     af4:	1a000002 	bne	b04 <printf+0x68>
     af8:	e3a03025 	mov	r3, #37	; 0x25
     afc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b00:	ea000063 	b	c94 <printf+0x1f8>
     b04:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b08:	e6ef3073 	uxtb	r3, r3
     b0c:	e1a01003 	mov	r1, r3
     b10:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b14:	ebffff85 	bl	930 <putc>
     b18:	ea00005d 	b	c94 <printf+0x1f8>
     b1c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b20:	e3530025 	cmp	r3, #37	; 0x25
     b24:	1a00005a 	bne	c94 <printf+0x1f8>
     b28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b2c:	e3530064 	cmp	r3, #100	; 0x64
     b30:	1a00000a 	bne	b60 <printf+0xc4>
     b34:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b38:	e5933000 	ldr	r3, [r3]
     b3c:	e1a01003 	mov	r1, r3
     b40:	e3a03001 	mov	r3, #1
     b44:	e3a0200a 	mov	r2, #10
     b48:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b4c:	ebffff85 	bl	968 <printint>
     b50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b54:	e2833004 	add	r3, r3, #4
     b58:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b5c:	ea00004a 	b	c8c <printf+0x1f0>
     b60:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b64:	e3530078 	cmp	r3, #120	; 0x78
     b68:	0a000002 	beq	b78 <printf+0xdc>
     b6c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b70:	e3530070 	cmp	r3, #112	; 0x70
     b74:	1a00000a 	bne	ba4 <printf+0x108>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b7c:	e5933000 	ldr	r3, [r3]
     b80:	e1a01003 	mov	r1, r3
     b84:	e3a03000 	mov	r3, #0
     b88:	e3a02010 	mov	r2, #16
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b90:	ebffff74 	bl	968 <printint>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b98:	e2833004 	add	r3, r3, #4
     b9c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ba0:	ea000039 	b	c8c <printf+0x1f0>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ba8:	e3530073 	cmp	r3, #115	; 0x73
     bac:	1a000018 	bne	c14 <printf+0x178>
     bb0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bb4:	e5933000 	ldr	r3, [r3]
     bb8:	e50b300c 	str	r3, [fp, #-12]
     bbc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bc0:	e2833004 	add	r3, r3, #4
     bc4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bc8:	e51b300c 	ldr	r3, [fp, #-12]
     bcc:	e3530000 	cmp	r3, #0
     bd0:	1a00000a 	bne	c00 <printf+0x164>
     bd4:	e59f30f0 	ldr	r3, [pc, #240]	; ccc <printf+0x230>
     bd8:	e50b300c 	str	r3, [fp, #-12]
     bdc:	ea000007 	b	c00 <printf+0x164>
     be0:	e51b300c 	ldr	r3, [fp, #-12]
     be4:	e5d33000 	ldrb	r3, [r3]
     be8:	e1a01003 	mov	r1, r3
     bec:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bf0:	ebffff4e 	bl	930 <putc>
     bf4:	e51b300c 	ldr	r3, [fp, #-12]
     bf8:	e2833001 	add	r3, r3, #1
     bfc:	e50b300c 	str	r3, [fp, #-12]
     c00:	e51b300c 	ldr	r3, [fp, #-12]
     c04:	e5d33000 	ldrb	r3, [r3]
     c08:	e3530000 	cmp	r3, #0
     c0c:	1afffff3 	bne	be0 <printf+0x144>
     c10:	ea00001d 	b	c8c <printf+0x1f0>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c18:	e3530063 	cmp	r3, #99	; 0x63
     c1c:	1a000009 	bne	c48 <printf+0x1ac>
     c20:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c24:	e5933000 	ldr	r3, [r3]
     c28:	e6ef3073 	uxtb	r3, r3
     c2c:	e1a01003 	mov	r1, r3
     c30:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c34:	ebffff3d 	bl	930 <putc>
     c38:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c3c:	e2833004 	add	r3, r3, #4
     c40:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c44:	ea000010 	b	c8c <printf+0x1f0>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c4c:	e3530025 	cmp	r3, #37	; 0x25
     c50:	1a000005 	bne	c6c <printf+0x1d0>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c58:	e6ef3073 	uxtb	r3, r3
     c5c:	e1a01003 	mov	r1, r3
     c60:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c64:	ebffff31 	bl	930 <putc>
     c68:	ea000007 	b	c8c <printf+0x1f0>
     c6c:	e3a01025 	mov	r1, #37	; 0x25
     c70:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c74:	ebffff2d 	bl	930 <putc>
     c78:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c7c:	e6ef3073 	uxtb	r3, r3
     c80:	e1a01003 	mov	r1, r3
     c84:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c88:	ebffff28 	bl	930 <putc>
     c8c:	e3a03000 	mov	r3, #0
     c90:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c94:	e51b3010 	ldr	r3, [fp, #-16]
     c98:	e2833001 	add	r3, r3, #1
     c9c:	e50b3010 	str	r3, [fp, #-16]
     ca0:	e59b2004 	ldr	r2, [fp, #4]
     ca4:	e51b3010 	ldr	r3, [fp, #-16]
     ca8:	e0823003 	add	r3, r2, r3
     cac:	e5d33000 	ldrb	r3, [r3]
     cb0:	e3530000 	cmp	r3, #0
     cb4:	1affff84 	bne	acc <printf+0x30>
     cb8:	e1a00000 	nop			; (mov r0, r0)
     cbc:	e24bd004 	sub	sp, fp, #4
     cc0:	e8bd4800 	pop	{fp, lr}
     cc4:	e28dd00c 	add	sp, sp, #12
     cc8:	e12fff1e 	bx	lr
     ccc:	00001184 	.word	0x00001184

00000cd0 <free>:
     cd0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     cd4:	e28db000 	add	fp, sp, #0
     cd8:	e24dd014 	sub	sp, sp, #20
     cdc:	e50b0010 	str	r0, [fp, #-16]
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e2433008 	sub	r3, r3, #8
     ce8:	e50b300c 	str	r3, [fp, #-12]
     cec:	e59f3154 	ldr	r3, [pc, #340]	; e48 <free+0x178>
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e50b3008 	str	r3, [fp, #-8]
     cf8:	ea000010 	b	d40 <free+0x70>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e51b2008 	ldr	r2, [fp, #-8]
     d08:	e1520003 	cmp	r2, r3
     d0c:	3a000008 	bcc	d34 <free+0x64>
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e1520003 	cmp	r2, r3
     d1c:	8a000010 	bhi	d64 <free+0x94>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5933000 	ldr	r3, [r3]
     d28:	e51b200c 	ldr	r2, [fp, #-12]
     d2c:	e1520003 	cmp	r2, r3
     d30:	3a00000b 	bcc	d64 <free+0x94>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e50b3008 	str	r3, [fp, #-8]
     d40:	e51b200c 	ldr	r2, [fp, #-12]
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e1520003 	cmp	r2, r3
     d4c:	9affffea 	bls	cfc <free+0x2c>
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e5933000 	ldr	r3, [r3]
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e1520003 	cmp	r2, r3
     d60:	2affffe5 	bcs	cfc <free+0x2c>
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5933004 	ldr	r3, [r3, #4]
     d6c:	e1a03183 	lsl	r3, r3, #3
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e0822003 	add	r2, r2, r3
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e1520003 	cmp	r2, r3
     d84:	1a00000d 	bne	dc0 <free+0xf0>
     d88:	e51b300c 	ldr	r3, [fp, #-12]
     d8c:	e5932004 	ldr	r2, [r3, #4]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e5933004 	ldr	r3, [r3, #4]
     d9c:	e0822003 	add	r2, r2, r3
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e5832004 	str	r2, [r3, #4]
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e5932000 	ldr	r2, [r3]
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5832000 	str	r2, [r3]
     dbc:	ea000003 	b	dd0 <free+0x100>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5932000 	ldr	r2, [r3]
     dc8:	e51b300c 	ldr	r3, [fp, #-12]
     dcc:	e5832000 	str	r2, [r3]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5933004 	ldr	r3, [r3, #4]
     dd8:	e1a03183 	lsl	r3, r3, #3
     ddc:	e51b2008 	ldr	r2, [fp, #-8]
     de0:	e0823003 	add	r3, r2, r3
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	1a00000b 	bne	e20 <free+0x150>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5932004 	ldr	r2, [r3, #4]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e5933004 	ldr	r3, [r3, #4]
     e00:	e0822003 	add	r2, r2, r3
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5832004 	str	r2, [r3, #4]
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5932000 	ldr	r2, [r3]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5832000 	str	r2, [r3]
     e1c:	ea000002 	b	e2c <free+0x15c>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e51b200c 	ldr	r2, [fp, #-12]
     e28:	e5832000 	str	r2, [r3]
     e2c:	e59f2014 	ldr	r2, [pc, #20]	; e48 <free+0x178>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5823000 	str	r3, [r2]
     e38:	e1a00000 	nop			; (mov r0, r0)
     e3c:	e28bd000 	add	sp, fp, #0
     e40:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     e44:	e12fff1e 	bx	lr
     e48:	000011a8 	.word	0x000011a8

00000e4c <morecore>:
     e4c:	e92d4800 	push	{fp, lr}
     e50:	e28db004 	add	fp, sp, #4
     e54:	e24dd010 	sub	sp, sp, #16
     e58:	e50b0010 	str	r0, [fp, #-16]
     e5c:	e51b3010 	ldr	r3, [fp, #-16]
     e60:	e3530a01 	cmp	r3, #4096	; 0x1000
     e64:	2a000001 	bcs	e70 <morecore+0x24>
     e68:	e3a03a01 	mov	r3, #4096	; 0x1000
     e6c:	e50b3010 	str	r3, [fp, #-16]
     e70:	e51b3010 	ldr	r3, [fp, #-16]
     e74:	e1a03183 	lsl	r3, r3, #3
     e78:	e1a00003 	mov	r0, r3
     e7c:	ebfffe63 	bl	810 <sbrk>
     e80:	e50b0008 	str	r0, [fp, #-8]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e3730001 	cmn	r3, #1
     e8c:	1a000001 	bne	e98 <morecore+0x4c>
     e90:	e3a03000 	mov	r3, #0
     e94:	ea00000a 	b	ec4 <morecore+0x78>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e51b2010 	ldr	r2, [fp, #-16]
     ea8:	e5832004 	str	r2, [r3, #4]
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e2833008 	add	r3, r3, #8
     eb4:	e1a00003 	mov	r0, r3
     eb8:	ebffff84 	bl	cd0 <free>
     ebc:	e59f300c 	ldr	r3, [pc, #12]	; ed0 <morecore+0x84>
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e1a00003 	mov	r0, r3
     ec8:	e24bd004 	sub	sp, fp, #4
     ecc:	e8bd8800 	pop	{fp, pc}
     ed0:	000011a8 	.word	0x000011a8

00000ed4 <malloc>:
     ed4:	e92d4800 	push	{fp, lr}
     ed8:	e28db004 	add	fp, sp, #4
     edc:	e24dd018 	sub	sp, sp, #24
     ee0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     ee4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ee8:	e2833007 	add	r3, r3, #7
     eec:	e1a031a3 	lsr	r3, r3, #3
     ef0:	e2833001 	add	r3, r3, #1
     ef4:	e50b3010 	str	r3, [fp, #-16]
     ef8:	e59f3134 	ldr	r3, [pc, #308]	; 1034 <malloc+0x160>
     efc:	e5933000 	ldr	r3, [r3]
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e3530000 	cmp	r3, #0
     f0c:	1a00000b 	bne	f40 <malloc+0x6c>
     f10:	e59f3120 	ldr	r3, [pc, #288]	; 1038 <malloc+0x164>
     f14:	e50b300c 	str	r3, [fp, #-12]
     f18:	e59f2114 	ldr	r2, [pc, #276]	; 1034 <malloc+0x160>
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5823000 	str	r3, [r2]
     f24:	e59f3108 	ldr	r3, [pc, #264]	; 1034 <malloc+0x160>
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e59f2104 	ldr	r2, [pc, #260]	; 1038 <malloc+0x164>
     f30:	e5823000 	str	r3, [r2]
     f34:	e59f30fc 	ldr	r3, [pc, #252]	; 1038 <malloc+0x164>
     f38:	e3a02000 	mov	r2, #0
     f3c:	e5832004 	str	r2, [r3, #4]
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e50b3008 	str	r3, [fp, #-8]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933004 	ldr	r3, [r3, #4]
     f54:	e51b2010 	ldr	r2, [fp, #-16]
     f58:	e1520003 	cmp	r2, r3
     f5c:	8a00001e 	bhi	fdc <malloc+0x108>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5933004 	ldr	r3, [r3, #4]
     f68:	e51b2010 	ldr	r2, [fp, #-16]
     f6c:	e1520003 	cmp	r2, r3
     f70:	1a000004 	bne	f88 <malloc+0xb4>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5932000 	ldr	r2, [r3]
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5832000 	str	r2, [r3]
     f84:	ea00000e 	b	fc4 <malloc+0xf0>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5932004 	ldr	r2, [r3, #4]
     f90:	e51b3010 	ldr	r3, [fp, #-16]
     f94:	e0422003 	sub	r2, r2, r3
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5832004 	str	r2, [r3, #4]
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5933004 	ldr	r3, [r3, #4]
     fa8:	e1a03183 	lsl	r3, r3, #3
     fac:	e51b2008 	ldr	r2, [fp, #-8]
     fb0:	e0823003 	add	r3, r2, r3
     fb4:	e50b3008 	str	r3, [fp, #-8]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e51b2010 	ldr	r2, [fp, #-16]
     fc0:	e5832004 	str	r2, [r3, #4]
     fc4:	e59f2068 	ldr	r2, [pc, #104]	; 1034 <malloc+0x160>
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5823000 	str	r3, [r2]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e2833008 	add	r3, r3, #8
     fd8:	ea000012 	b	1028 <malloc+0x154>
     fdc:	e59f3050 	ldr	r3, [pc, #80]	; 1034 <malloc+0x160>
     fe0:	e5933000 	ldr	r3, [r3]
     fe4:	e51b2008 	ldr	r2, [fp, #-8]
     fe8:	e1520003 	cmp	r2, r3
     fec:	1a000007 	bne	1010 <malloc+0x13c>
     ff0:	e51b0010 	ldr	r0, [fp, #-16]
     ff4:	ebffff94 	bl	e4c <morecore>
     ff8:	e50b0008 	str	r0, [fp, #-8]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e3530000 	cmp	r3, #0
    1004:	1a000001 	bne	1010 <malloc+0x13c>
    1008:	e3a03000 	mov	r3, #0
    100c:	ea000005 	b	1028 <malloc+0x154>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e50b300c 	str	r3, [fp, #-12]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e50b3008 	str	r3, [fp, #-8]
    1024:	eaffffc8 	b	f4c <malloc+0x78>
    1028:	e1a00003 	mov	r0, r3
    102c:	e24bd004 	sub	sp, fp, #4
    1030:	e8bd8800 	pop	{fp, pc}
    1034:	000011a8 	.word	0x000011a8
    1038:	000011a0 	.word	0x000011a0

0000103c <__udivsi3>:
    103c:	e2512001 	subs	r2, r1, #1
    1040:	012fff1e 	bxeq	lr
    1044:	3a000036 	bcc	1124 <__udivsi3+0xe8>
    1048:	e1500001 	cmp	r0, r1
    104c:	9a000022 	bls	10dc <__udivsi3+0xa0>
    1050:	e1110002 	tst	r1, r2
    1054:	0a000023 	beq	10e8 <__udivsi3+0xac>
    1058:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    105c:	01a01181 	lsleq	r1, r1, #3
    1060:	03a03008 	moveq	r3, #8
    1064:	13a03001 	movne	r3, #1
    1068:	e3510201 	cmp	r1, #268435456	; 0x10000000
    106c:	31510000 	cmpcc	r1, r0
    1070:	31a01201 	lslcc	r1, r1, #4
    1074:	31a03203 	lslcc	r3, r3, #4
    1078:	3afffffa 	bcc	1068 <__udivsi3+0x2c>
    107c:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1080:	31510000 	cmpcc	r1, r0
    1084:	31a01081 	lslcc	r1, r1, #1
    1088:	31a03083 	lslcc	r3, r3, #1
    108c:	3afffffa 	bcc	107c <__udivsi3+0x40>
    1090:	e3a02000 	mov	r2, #0
    1094:	e1500001 	cmp	r0, r1
    1098:	20400001 	subcs	r0, r0, r1
    109c:	21822003 	orrcs	r2, r2, r3
    10a0:	e15000a1 	cmp	r0, r1, lsr #1
    10a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    10a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10ac:	e1500121 	cmp	r0, r1, lsr #2
    10b0:	20400121 	subcs	r0, r0, r1, lsr #2
    10b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    10b8:	e15001a1 	cmp	r0, r1, lsr #3
    10bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    10c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10c4:	e3500000 	cmp	r0, #0
    10c8:	11b03223 	lsrsne	r3, r3, #4
    10cc:	11a01221 	lsrne	r1, r1, #4
    10d0:	1affffef 	bne	1094 <__udivsi3+0x58>
    10d4:	e1a00002 	mov	r0, r2
    10d8:	e12fff1e 	bx	lr
    10dc:	03a00001 	moveq	r0, #1
    10e0:	13a00000 	movne	r0, #0
    10e4:	e12fff1e 	bx	lr
    10e8:	e3510801 	cmp	r1, #65536	; 0x10000
    10ec:	21a01821 	lsrcs	r1, r1, #16
    10f0:	23a02010 	movcs	r2, #16
    10f4:	33a02000 	movcc	r2, #0
    10f8:	e3510c01 	cmp	r1, #256	; 0x100
    10fc:	21a01421 	lsrcs	r1, r1, #8
    1100:	22822008 	addcs	r2, r2, #8
    1104:	e3510010 	cmp	r1, #16
    1108:	21a01221 	lsrcs	r1, r1, #4
    110c:	22822004 	addcs	r2, r2, #4
    1110:	e3510004 	cmp	r1, #4
    1114:	82822003 	addhi	r2, r2, #3
    1118:	908220a1 	addls	r2, r2, r1, lsr #1
    111c:	e1a00230 	lsr	r0, r0, r2
    1120:	e12fff1e 	bx	lr
    1124:	e3500000 	cmp	r0, #0
    1128:	13e00000 	mvnne	r0, #0
    112c:	ea000007 	b	1150 <__aeabi_idiv0>

00001130 <__aeabi_uidivmod>:
    1130:	e3510000 	cmp	r1, #0
    1134:	0afffffa 	beq	1124 <__udivsi3+0xe8>
    1138:	e92d4003 	push	{r0, r1, lr}
    113c:	ebffffbe 	bl	103c <__udivsi3>
    1140:	e8bd4006 	pop	{r1, r2, lr}
    1144:	e0030092 	mul	r3, r2, r0
    1148:	e0411003 	sub	r1, r1, r3
    114c:	e12fff1e 	bx	lr

00001150 <__aeabi_idiv0>:
    1150:	e12fff1e 	bx	lr
