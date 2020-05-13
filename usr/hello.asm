
_hello:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	eb000141 	bl	528 <fork>
      20:	e50b0008 	str	r0, [fp, #-8]
      24:	ea000005 	b	40 <main+0x40>
      28:	e51b2008 	ldr	r2, [fp, #-8]
      2c:	e59f101c 	ldr	r1, [pc, #28]	; 50 <main+0x50>
      30:	e3a00001 	mov	r0, #1
      34:	eb000280 	bl	a3c <printf>
      38:	eb00013a 	bl	528 <fork>
      3c:	e50b0008 	str	r0, [fp, #-8]
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e3530000 	cmp	r3, #0
      48:	cafffff6 	bgt	28 <main+0x28>
      4c:	eb00013e 	bl	54c <exit>
      50:	000010f4 	.word	0x000010f4

00000054 <strcpy>:
      54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      58:	e28db000 	add	fp, sp, #0
      5c:	e24dd014 	sub	sp, sp, #20
      60:	e50b0010 	str	r0, [fp, #-16]
      64:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      68:	e51b3010 	ldr	r3, [fp, #-16]
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e1a00000 	nop			; (mov r0, r0)
      74:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      78:	e2823001 	add	r3, r2, #1
      7c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      80:	e51b3010 	ldr	r3, [fp, #-16]
      84:	e2831001 	add	r1, r3, #1
      88:	e50b1010 	str	r1, [fp, #-16]
      8c:	e5d22000 	ldrb	r2, [r2]
      90:	e5c32000 	strb	r2, [r3]
      94:	e5d33000 	ldrb	r3, [r3]
      98:	e3530000 	cmp	r3, #0
      9c:	1afffff4 	bne	74 <strcpy+0x20>
      a0:	e51b3008 	ldr	r3, [fp, #-8]
      a4:	e1a00003 	mov	r0, r3
      a8:	e28bd000 	add	sp, fp, #0
      ac:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      b0:	e12fff1e 	bx	lr

000000b4 <strcmp>:
      b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd00c 	sub	sp, sp, #12
      c0:	e50b0008 	str	r0, [fp, #-8]
      c4:	e50b100c 	str	r1, [fp, #-12]
      c8:	ea000005 	b	e4 <strcmp+0x30>
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e2833001 	add	r3, r3, #1
      d4:	e50b3008 	str	r3, [fp, #-8]
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e2833001 	add	r3, r3, #1
      e0:	e50b300c 	str	r3, [fp, #-12]
      e4:	e51b3008 	ldr	r3, [fp, #-8]
      e8:	e5d33000 	ldrb	r3, [r3]
      ec:	e3530000 	cmp	r3, #0
      f0:	0a000005 	beq	10c <strcmp+0x58>
      f4:	e51b3008 	ldr	r3, [fp, #-8]
      f8:	e5d32000 	ldrb	r2, [r3]
      fc:	e51b300c 	ldr	r3, [fp, #-12]
     100:	e5d33000 	ldrb	r3, [r3]
     104:	e1520003 	cmp	r2, r3
     108:	0affffef 	beq	cc <strcmp+0x18>
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e5d33000 	ldrb	r3, [r3]
     114:	e1a02003 	mov	r2, r3
     118:	e51b300c 	ldr	r3, [fp, #-12]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e0423003 	sub	r3, r2, r3
     124:	e1a00003 	mov	r0, r3
     128:	e28bd000 	add	sp, fp, #0
     12c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     130:	e12fff1e 	bx	lr

00000134 <strlen>:
     134:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     138:	e28db000 	add	fp, sp, #0
     13c:	e24dd014 	sub	sp, sp, #20
     140:	e50b0010 	str	r0, [fp, #-16]
     144:	e3a03000 	mov	r3, #0
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	ea000002 	b	15c <strlen+0x28>
     150:	e51b3008 	ldr	r3, [fp, #-8]
     154:	e2833001 	add	r3, r3, #1
     158:	e50b3008 	str	r3, [fp, #-8]
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e51b2010 	ldr	r2, [fp, #-16]
     164:	e0823003 	add	r3, r2, r3
     168:	e5d33000 	ldrb	r3, [r3]
     16c:	e3530000 	cmp	r3, #0
     170:	1afffff6 	bne	150 <strlen+0x1c>
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e1a00003 	mov	r0, r3
     17c:	e28bd000 	add	sp, fp, #0
     180:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     184:	e12fff1e 	bx	lr

00000188 <memset>:
     188:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     18c:	e28db000 	add	fp, sp, #0
     190:	e24dd024 	sub	sp, sp, #36	; 0x24
     194:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     198:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     19c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     1a0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     1a4:	e50b3008 	str	r3, [fp, #-8]
     1a8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     1ac:	e54b300d 	strb	r3, [fp, #-13]
     1b0:	e55b300d 	ldrb	r3, [fp, #-13]
     1b4:	e1a02c03 	lsl	r2, r3, #24
     1b8:	e55b300d 	ldrb	r3, [fp, #-13]
     1bc:	e1a03803 	lsl	r3, r3, #16
     1c0:	e1822003 	orr	r2, r2, r3
     1c4:	e55b300d 	ldrb	r3, [fp, #-13]
     1c8:	e1a03403 	lsl	r3, r3, #8
     1cc:	e1822003 	orr	r2, r2, r3
     1d0:	e55b300d 	ldrb	r3, [fp, #-13]
     1d4:	e1823003 	orr	r3, r2, r3
     1d8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     1dc:	ea000008 	b	204 <memset+0x7c>
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e5c32000 	strb	r2, [r3]
     1ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1f0:	e2433001 	sub	r3, r3, #1
     1f4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e2833001 	add	r3, r3, #1
     200:	e50b3008 	str	r3, [fp, #-8]
     204:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     208:	e3530000 	cmp	r3, #0
     20c:	0a000003 	beq	220 <memset+0x98>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e2033003 	and	r3, r3, #3
     218:	e3530000 	cmp	r3, #0
     21c:	1affffef 	bne	1e0 <memset+0x58>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e50b300c 	str	r3, [fp, #-12]
     228:	ea000008 	b	250 <memset+0xc8>
     22c:	e51b300c 	ldr	r3, [fp, #-12]
     230:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     234:	e5832000 	str	r2, [r3]
     238:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     23c:	e2433004 	sub	r3, r3, #4
     240:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     244:	e51b300c 	ldr	r3, [fp, #-12]
     248:	e2833004 	add	r3, r3, #4
     24c:	e50b300c 	str	r3, [fp, #-12]
     250:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     254:	e3530003 	cmp	r3, #3
     258:	8afffff3 	bhi	22c <memset+0xa4>
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e50b3008 	str	r3, [fp, #-8]
     264:	ea000008 	b	28c <memset+0x104>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e55b200d 	ldrb	r2, [fp, #-13]
     270:	e5c32000 	strb	r2, [r3]
     274:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     278:	e2433001 	sub	r3, r3, #1
     27c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e2833001 	add	r3, r3, #1
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     290:	e3530000 	cmp	r3, #0
     294:	1afffff3 	bne	268 <memset+0xe0>
     298:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     29c:	e1a00003 	mov	r0, r3
     2a0:	e28bd000 	add	sp, fp, #0
     2a4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2a8:	e12fff1e 	bx	lr

000002ac <strchr>:
     2ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2b0:	e28db000 	add	fp, sp, #0
     2b4:	e24dd00c 	sub	sp, sp, #12
     2b8:	e50b0008 	str	r0, [fp, #-8]
     2bc:	e1a03001 	mov	r3, r1
     2c0:	e54b3009 	strb	r3, [fp, #-9]
     2c4:	ea000009 	b	2f0 <strchr+0x44>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e55b2009 	ldrb	r2, [fp, #-9]
     2d4:	e1520003 	cmp	r2, r3
     2d8:	1a000001 	bne	2e4 <strchr+0x38>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	ea000007 	b	304 <strchr+0x58>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e5d33000 	ldrb	r3, [r3]
     2f8:	e3530000 	cmp	r3, #0
     2fc:	1afffff1 	bne	2c8 <strchr+0x1c>
     300:	e3a03000 	mov	r3, #0
     304:	e1a00003 	mov	r0, r3
     308:	e28bd000 	add	sp, fp, #0
     30c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     310:	e12fff1e 	bx	lr

00000314 <gets>:
     314:	e92d4800 	push	{fp, lr}
     318:	e28db004 	add	fp, sp, #4
     31c:	e24dd018 	sub	sp, sp, #24
     320:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     324:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     328:	e3a03000 	mov	r3, #0
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	ea000016 	b	390 <gets+0x7c>
     334:	e24b300d 	sub	r3, fp, #13
     338:	e3a02001 	mov	r2, #1
     33c:	e1a01003 	mov	r1, r3
     340:	e3a00000 	mov	r0, #0
     344:	eb00009b 	bl	5b8 <read>
     348:	e50b000c 	str	r0, [fp, #-12]
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e3530000 	cmp	r3, #0
     354:	da000013 	ble	3a8 <gets+0x94>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e2832001 	add	r2, r3, #1
     360:	e50b2008 	str	r2, [fp, #-8]
     364:	e1a02003 	mov	r2, r3
     368:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     36c:	e0833002 	add	r3, r3, r2
     370:	e55b200d 	ldrb	r2, [fp, #-13]
     374:	e5c32000 	strb	r2, [r3]
     378:	e55b300d 	ldrb	r3, [fp, #-13]
     37c:	e353000a 	cmp	r3, #10
     380:	0a000009 	beq	3ac <gets+0x98>
     384:	e55b300d 	ldrb	r3, [fp, #-13]
     388:	e353000d 	cmp	r3, #13
     38c:	0a000006 	beq	3ac <gets+0x98>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2833001 	add	r3, r3, #1
     398:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     39c:	e1520003 	cmp	r2, r3
     3a0:	caffffe3 	bgt	334 <gets+0x20>
     3a4:	ea000000 	b	3ac <gets+0x98>
     3a8:	e1a00000 	nop			; (mov r0, r0)
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     3b4:	e0823003 	add	r3, r2, r3
     3b8:	e3a02000 	mov	r2, #0
     3bc:	e5c32000 	strb	r2, [r3]
     3c0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3c4:	e1a00003 	mov	r0, r3
     3c8:	e24bd004 	sub	sp, fp, #4
     3cc:	e8bd8800 	pop	{fp, pc}

000003d0 <stat>:
     3d0:	e92d4800 	push	{fp, lr}
     3d4:	e28db004 	add	fp, sp, #4
     3d8:	e24dd010 	sub	sp, sp, #16
     3dc:	e50b0010 	str	r0, [fp, #-16]
     3e0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3e4:	e3a01000 	mov	r1, #0
     3e8:	e51b0010 	ldr	r0, [fp, #-16]
     3ec:	eb00009e 	bl	66c <open>
     3f0:	e50b0008 	str	r0, [fp, #-8]
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	aa000001 	bge	408 <stat+0x38>
     400:	e3e03000 	mvn	r3, #0
     404:	ea000006 	b	424 <stat+0x54>
     408:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     40c:	e51b0008 	ldr	r0, [fp, #-8]
     410:	eb0000b0 	bl	6d8 <fstat>
     414:	e50b000c 	str	r0, [fp, #-12]
     418:	e51b0008 	ldr	r0, [fp, #-8]
     41c:	eb000077 	bl	600 <close>
     420:	e51b300c 	ldr	r3, [fp, #-12]
     424:	e1a00003 	mov	r0, r3
     428:	e24bd004 	sub	sp, fp, #4
     42c:	e8bd8800 	pop	{fp, pc}

00000430 <atoi>:
     430:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     434:	e28db000 	add	fp, sp, #0
     438:	e24dd014 	sub	sp, sp, #20
     43c:	e50b0010 	str	r0, [fp, #-16]
     440:	e3a03000 	mov	r3, #0
     444:	e50b3008 	str	r3, [fp, #-8]
     448:	ea00000c 	b	480 <atoi+0x50>
     44c:	e51b2008 	ldr	r2, [fp, #-8]
     450:	e1a03002 	mov	r3, r2
     454:	e1a03103 	lsl	r3, r3, #2
     458:	e0833002 	add	r3, r3, r2
     45c:	e1a03083 	lsl	r3, r3, #1
     460:	e1a01003 	mov	r1, r3
     464:	e51b3010 	ldr	r3, [fp, #-16]
     468:	e2832001 	add	r2, r3, #1
     46c:	e50b2010 	str	r2, [fp, #-16]
     470:	e5d33000 	ldrb	r3, [r3]
     474:	e0813003 	add	r3, r1, r3
     478:	e2433030 	sub	r3, r3, #48	; 0x30
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3010 	ldr	r3, [fp, #-16]
     484:	e5d33000 	ldrb	r3, [r3]
     488:	e353002f 	cmp	r3, #47	; 0x2f
     48c:	9a000003 	bls	4a0 <atoi+0x70>
     490:	e51b3010 	ldr	r3, [fp, #-16]
     494:	e5d33000 	ldrb	r3, [r3]
     498:	e3530039 	cmp	r3, #57	; 0x39
     49c:	9affffea 	bls	44c <atoi+0x1c>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e1a00003 	mov	r0, r3
     4a8:	e28bd000 	add	sp, fp, #0
     4ac:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4b0:	e12fff1e 	bx	lr

000004b4 <memmove>:
     4b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4b8:	e28db000 	add	fp, sp, #0
     4bc:	e24dd01c 	sub	sp, sp, #28
     4c0:	e50b0010 	str	r0, [fp, #-16]
     4c4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4c8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4cc:	e51b3010 	ldr	r3, [fp, #-16]
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     4d8:	e50b300c 	str	r3, [fp, #-12]
     4dc:	ea000007 	b	500 <memmove+0x4c>
     4e0:	e51b200c 	ldr	r2, [fp, #-12]
     4e4:	e2823001 	add	r3, r2, #1
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e2831001 	add	r1, r3, #1
     4f4:	e50b1008 	str	r1, [fp, #-8]
     4f8:	e5d22000 	ldrb	r2, [r2]
     4fc:	e5c32000 	strb	r2, [r3]
     500:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     504:	e2432001 	sub	r2, r3, #1
     508:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     50c:	e3530000 	cmp	r3, #0
     510:	cafffff2 	bgt	4e0 <memmove+0x2c>
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e1a00003 	mov	r0, r3
     51c:	e28bd000 	add	sp, fp, #0
     520:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     524:	e12fff1e 	bx	lr

00000528 <fork>:
     528:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     52c:	e1a04003 	mov	r4, r3
     530:	e1a03002 	mov	r3, r2
     534:	e1a02001 	mov	r2, r1
     538:	e1a01000 	mov	r1, r0
     53c:	e3a00001 	mov	r0, #1
     540:	ef000000 	svc	0x00000000
     544:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     548:	e12fff1e 	bx	lr

0000054c <exit>:
     54c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     550:	e1a04003 	mov	r4, r3
     554:	e1a03002 	mov	r3, r2
     558:	e1a02001 	mov	r2, r1
     55c:	e1a01000 	mov	r1, r0
     560:	e3a00002 	mov	r0, #2
     564:	ef000000 	svc	0x00000000
     568:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     56c:	e12fff1e 	bx	lr

00000570 <wait>:
     570:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     574:	e1a04003 	mov	r4, r3
     578:	e1a03002 	mov	r3, r2
     57c:	e1a02001 	mov	r2, r1
     580:	e1a01000 	mov	r1, r0
     584:	e3a00003 	mov	r0, #3
     588:	ef000000 	svc	0x00000000
     58c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <pipe>:
     594:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     598:	e1a04003 	mov	r4, r3
     59c:	e1a03002 	mov	r3, r2
     5a0:	e1a02001 	mov	r2, r1
     5a4:	e1a01000 	mov	r1, r0
     5a8:	e3a00004 	mov	r0, #4
     5ac:	ef000000 	svc	0x00000000
     5b0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <read>:
     5b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5bc:	e1a04003 	mov	r4, r3
     5c0:	e1a03002 	mov	r3, r2
     5c4:	e1a02001 	mov	r2, r1
     5c8:	e1a01000 	mov	r1, r0
     5cc:	e3a00005 	mov	r0, #5
     5d0:	ef000000 	svc	0x00000000
     5d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <write>:
     5dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5e0:	e1a04003 	mov	r4, r3
     5e4:	e1a03002 	mov	r3, r2
     5e8:	e1a02001 	mov	r2, r1
     5ec:	e1a01000 	mov	r1, r0
     5f0:	e3a00010 	mov	r0, #16
     5f4:	ef000000 	svc	0x00000000
     5f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <close>:
     600:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     604:	e1a04003 	mov	r4, r3
     608:	e1a03002 	mov	r3, r2
     60c:	e1a02001 	mov	r2, r1
     610:	e1a01000 	mov	r1, r0
     614:	e3a00015 	mov	r0, #21
     618:	ef000000 	svc	0x00000000
     61c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     620:	e12fff1e 	bx	lr

00000624 <kill>:
     624:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     628:	e1a04003 	mov	r4, r3
     62c:	e1a03002 	mov	r3, r2
     630:	e1a02001 	mov	r2, r1
     634:	e1a01000 	mov	r1, r0
     638:	e3a00006 	mov	r0, #6
     63c:	ef000000 	svc	0x00000000
     640:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <exec>:
     648:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     64c:	e1a04003 	mov	r4, r3
     650:	e1a03002 	mov	r3, r2
     654:	e1a02001 	mov	r2, r1
     658:	e1a01000 	mov	r1, r0
     65c:	e3a00007 	mov	r0, #7
     660:	ef000000 	svc	0x00000000
     664:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <open>:
     66c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a0000f 	mov	r0, #15
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <mknod>:
     690:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00011 	mov	r0, #17
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <unlink>:
     6b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00012 	mov	r0, #18
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <fstat>:
     6d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00008 	mov	r0, #8
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <link>:
     6fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00013 	mov	r0, #19
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <mkdir>:
     720:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00014 	mov	r0, #20
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <chdir>:
     744:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00009 	mov	r0, #9
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <dup>:
     768:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a0000a 	mov	r0, #10
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <getpid>:
     78c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a0000b 	mov	r0, #11
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <sbrk>:
     7b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a0000c 	mov	r0, #12
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <sleep>:
     7d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a0000d 	mov	r0, #13
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <uptime>:
     7f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a0000e 	mov	r0, #14
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <memfree>:
     81c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00016 	mov	r0, #22
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <traceon>:
     840:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00017 	mov	r0, #23
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <getps>:
     864:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00018 	mov	r0, #24
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <suspend>:
     888:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00019 	mov	r0, #25
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <resume>:
     8ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a0001a 	mov	r0, #26
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <putc>:
     8d0:	e92d4800 	push	{fp, lr}
     8d4:	e28db004 	add	fp, sp, #4
     8d8:	e24dd008 	sub	sp, sp, #8
     8dc:	e50b0008 	str	r0, [fp, #-8]
     8e0:	e1a03001 	mov	r3, r1
     8e4:	e54b3009 	strb	r3, [fp, #-9]
     8e8:	e24b3009 	sub	r3, fp, #9
     8ec:	e3a02001 	mov	r2, #1
     8f0:	e1a01003 	mov	r1, r3
     8f4:	e51b0008 	ldr	r0, [fp, #-8]
     8f8:	ebffff37 	bl	5dc <write>
     8fc:	e1a00000 	nop			; (mov r0, r0)
     900:	e24bd004 	sub	sp, fp, #4
     904:	e8bd8800 	pop	{fp, pc}

00000908 <printint>:
     908:	e92d4800 	push	{fp, lr}
     90c:	e28db004 	add	fp, sp, #4
     910:	e24dd030 	sub	sp, sp, #48	; 0x30
     914:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     918:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     91c:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     920:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     924:	e3a03000 	mov	r3, #0
     928:	e50b300c 	str	r3, [fp, #-12]
     92c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     930:	e3530000 	cmp	r3, #0
     934:	0a000008 	beq	95c <printint+0x54>
     938:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     93c:	e3530000 	cmp	r3, #0
     940:	aa000005 	bge	95c <printint+0x54>
     944:	e3a03001 	mov	r3, #1
     948:	e50b300c 	str	r3, [fp, #-12]
     94c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     950:	e2633000 	rsb	r3, r3, #0
     954:	e50b3010 	str	r3, [fp, #-16]
     958:	ea000001 	b	964 <printint+0x5c>
     95c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     960:	e50b3010 	str	r3, [fp, #-16]
     964:	e3a03000 	mov	r3, #0
     968:	e50b3008 	str	r3, [fp, #-8]
     96c:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     970:	e51b3010 	ldr	r3, [fp, #-16]
     974:	e1a01002 	mov	r1, r2
     978:	e1a00003 	mov	r0, r3
     97c:	eb0001d3 	bl	10d0 <__aeabi_uidivmod>
     980:	e1a03001 	mov	r3, r1
     984:	e1a01003 	mov	r1, r3
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e2832001 	add	r2, r3, #1
     990:	e50b2008 	str	r2, [fp, #-8]
     994:	e59f209c 	ldr	r2, [pc, #156]	; a38 <printint+0x130>
     998:	e7d22001 	ldrb	r2, [r2, r1]
     99c:	e24b1004 	sub	r1, fp, #4
     9a0:	e0813003 	add	r3, r1, r3
     9a4:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9a8:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     9ac:	e1a01003 	mov	r1, r3
     9b0:	e51b0010 	ldr	r0, [fp, #-16]
     9b4:	eb000188 	bl	fdc <__udivsi3>
     9b8:	e1a03000 	mov	r3, r0
     9bc:	e50b3010 	str	r3, [fp, #-16]
     9c0:	e51b3010 	ldr	r3, [fp, #-16]
     9c4:	e3530000 	cmp	r3, #0
     9c8:	1affffe7 	bne	96c <printint+0x64>
     9cc:	e51b300c 	ldr	r3, [fp, #-12]
     9d0:	e3530000 	cmp	r3, #0
     9d4:	0a00000e 	beq	a14 <printint+0x10c>
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e2832001 	add	r2, r3, #1
     9e0:	e50b2008 	str	r2, [fp, #-8]
     9e4:	e24b2004 	sub	r2, fp, #4
     9e8:	e0823003 	add	r3, r2, r3
     9ec:	e3a0202d 	mov	r2, #45	; 0x2d
     9f0:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9f4:	ea000006 	b	a14 <printint+0x10c>
     9f8:	e24b2020 	sub	r2, fp, #32
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e0823003 	add	r3, r2, r3
     a04:	e5d33000 	ldrb	r3, [r3]
     a08:	e1a01003 	mov	r1, r3
     a0c:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     a10:	ebffffae 	bl	8d0 <putc>
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e2433001 	sub	r3, r3, #1
     a1c:	e50b3008 	str	r3, [fp, #-8]
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e3530000 	cmp	r3, #0
     a28:	aafffff2 	bge	9f8 <printint+0xf0>
     a2c:	e1a00000 	nop			; (mov r0, r0)
     a30:	e24bd004 	sub	sp, fp, #4
     a34:	e8bd8800 	pop	{fp, pc}
     a38:	00001110 	.word	0x00001110

00000a3c <printf>:
     a3c:	e92d000e 	push	{r1, r2, r3}
     a40:	e92d4800 	push	{fp, lr}
     a44:	e28db004 	add	fp, sp, #4
     a48:	e24dd024 	sub	sp, sp, #36	; 0x24
     a4c:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a50:	e3a03000 	mov	r3, #0
     a54:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a58:	e28b3008 	add	r3, fp, #8
     a5c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a60:	e3a03000 	mov	r3, #0
     a64:	e50b3010 	str	r3, [fp, #-16]
     a68:	ea000074 	b	c40 <printf+0x204>
     a6c:	e59b2004 	ldr	r2, [fp, #4]
     a70:	e51b3010 	ldr	r3, [fp, #-16]
     a74:	e0823003 	add	r3, r2, r3
     a78:	e5d33000 	ldrb	r3, [r3]
     a7c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     a80:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a84:	e3530000 	cmp	r3, #0
     a88:	1a00000b 	bne	abc <printf+0x80>
     a8c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a90:	e3530025 	cmp	r3, #37	; 0x25
     a94:	1a000002 	bne	aa4 <printf+0x68>
     a98:	e3a03025 	mov	r3, #37	; 0x25
     a9c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     aa0:	ea000063 	b	c34 <printf+0x1f8>
     aa4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     aa8:	e6ef3073 	uxtb	r3, r3
     aac:	e1a01003 	mov	r1, r3
     ab0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ab4:	ebffff85 	bl	8d0 <putc>
     ab8:	ea00005d 	b	c34 <printf+0x1f8>
     abc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ac0:	e3530025 	cmp	r3, #37	; 0x25
     ac4:	1a00005a 	bne	c34 <printf+0x1f8>
     ac8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     acc:	e3530064 	cmp	r3, #100	; 0x64
     ad0:	1a00000a 	bne	b00 <printf+0xc4>
     ad4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e1a01003 	mov	r1, r3
     ae0:	e3a03001 	mov	r3, #1
     ae4:	e3a0200a 	mov	r2, #10
     ae8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     aec:	ebffff85 	bl	908 <printint>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     af4:	e2833004 	add	r3, r3, #4
     af8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     afc:	ea00004a 	b	c2c <printf+0x1f0>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b04:	e3530078 	cmp	r3, #120	; 0x78
     b08:	0a000002 	beq	b18 <printf+0xdc>
     b0c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b10:	e3530070 	cmp	r3, #112	; 0x70
     b14:	1a00000a 	bne	b44 <printf+0x108>
     b18:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b1c:	e5933000 	ldr	r3, [r3]
     b20:	e1a01003 	mov	r1, r3
     b24:	e3a03000 	mov	r3, #0
     b28:	e3a02010 	mov	r2, #16
     b2c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b30:	ebffff74 	bl	908 <printint>
     b34:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b38:	e2833004 	add	r3, r3, #4
     b3c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b40:	ea000039 	b	c2c <printf+0x1f0>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b48:	e3530073 	cmp	r3, #115	; 0x73
     b4c:	1a000018 	bne	bb4 <printf+0x178>
     b50:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b54:	e5933000 	ldr	r3, [r3]
     b58:	e50b300c 	str	r3, [fp, #-12]
     b5c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b60:	e2833004 	add	r3, r3, #4
     b64:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b68:	e51b300c 	ldr	r3, [fp, #-12]
     b6c:	e3530000 	cmp	r3, #0
     b70:	1a00000a 	bne	ba0 <printf+0x164>
     b74:	e59f30f0 	ldr	r3, [pc, #240]	; c6c <printf+0x230>
     b78:	e50b300c 	str	r3, [fp, #-12]
     b7c:	ea000007 	b	ba0 <printf+0x164>
     b80:	e51b300c 	ldr	r3, [fp, #-12]
     b84:	e5d33000 	ldrb	r3, [r3]
     b88:	e1a01003 	mov	r1, r3
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b90:	ebffff4e 	bl	8d0 <putc>
     b94:	e51b300c 	ldr	r3, [fp, #-12]
     b98:	e2833001 	add	r3, r3, #1
     b9c:	e50b300c 	str	r3, [fp, #-12]
     ba0:	e51b300c 	ldr	r3, [fp, #-12]
     ba4:	e5d33000 	ldrb	r3, [r3]
     ba8:	e3530000 	cmp	r3, #0
     bac:	1afffff3 	bne	b80 <printf+0x144>
     bb0:	ea00001d 	b	c2c <printf+0x1f0>
     bb4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bb8:	e3530063 	cmp	r3, #99	; 0x63
     bbc:	1a000009 	bne	be8 <printf+0x1ac>
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bc4:	e5933000 	ldr	r3, [r3]
     bc8:	e6ef3073 	uxtb	r3, r3
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bd4:	ebffff3d 	bl	8d0 <putc>
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     be4:	ea000010 	b	c2c <printf+0x1f0>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bec:	e3530025 	cmp	r3, #37	; 0x25
     bf0:	1a000005 	bne	c0c <printf+0x1d0>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bf8:	e6ef3073 	uxtb	r3, r3
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c04:	ebffff31 	bl	8d0 <putc>
     c08:	ea000007 	b	c2c <printf+0x1f0>
     c0c:	e3a01025 	mov	r1, #37	; 0x25
     c10:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c14:	ebffff2d 	bl	8d0 <putc>
     c18:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c1c:	e6ef3073 	uxtb	r3, r3
     c20:	e1a01003 	mov	r1, r3
     c24:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c28:	ebffff28 	bl	8d0 <putc>
     c2c:	e3a03000 	mov	r3, #0
     c30:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c34:	e51b3010 	ldr	r3, [fp, #-16]
     c38:	e2833001 	add	r3, r3, #1
     c3c:	e50b3010 	str	r3, [fp, #-16]
     c40:	e59b2004 	ldr	r2, [fp, #4]
     c44:	e51b3010 	ldr	r3, [fp, #-16]
     c48:	e0823003 	add	r3, r2, r3
     c4c:	e5d33000 	ldrb	r3, [r3]
     c50:	e3530000 	cmp	r3, #0
     c54:	1affff84 	bne	a6c <printf+0x30>
     c58:	e1a00000 	nop			; (mov r0, r0)
     c5c:	e24bd004 	sub	sp, fp, #4
     c60:	e8bd4800 	pop	{fp, lr}
     c64:	e28dd00c 	add	sp, sp, #12
     c68:	e12fff1e 	bx	lr
     c6c:	00001108 	.word	0x00001108

00000c70 <free>:
     c70:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c74:	e28db000 	add	fp, sp, #0
     c78:	e24dd014 	sub	sp, sp, #20
     c7c:	e50b0010 	str	r0, [fp, #-16]
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e2433008 	sub	r3, r3, #8
     c88:	e50b300c 	str	r3, [fp, #-12]
     c8c:	e59f3154 	ldr	r3, [pc, #340]	; de8 <free+0x178>
     c90:	e5933000 	ldr	r3, [r3]
     c94:	e50b3008 	str	r3, [fp, #-8]
     c98:	ea000010 	b	ce0 <free+0x70>
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e51b2008 	ldr	r2, [fp, #-8]
     ca8:	e1520003 	cmp	r2, r3
     cac:	3a000008 	bcc	cd4 <free+0x64>
     cb0:	e51b200c 	ldr	r2, [fp, #-12]
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e1520003 	cmp	r2, r3
     cbc:	8a000010 	bhi	d04 <free+0x94>
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e51b200c 	ldr	r2, [fp, #-12]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	3a00000b 	bcc	d04 <free+0x94>
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e50b3008 	str	r3, [fp, #-8]
     ce0:	e51b200c 	ldr	r2, [fp, #-12]
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e1520003 	cmp	r2, r3
     cec:	9affffea 	bls	c9c <free+0x2c>
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e51b200c 	ldr	r2, [fp, #-12]
     cfc:	e1520003 	cmp	r2, r3
     d00:	2affffe5 	bcs	c9c <free+0x2c>
     d04:	e51b300c 	ldr	r3, [fp, #-12]
     d08:	e5933004 	ldr	r3, [r3, #4]
     d0c:	e1a03183 	lsl	r3, r3, #3
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e0822003 	add	r2, r2, r3
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e1520003 	cmp	r2, r3
     d24:	1a00000d 	bne	d60 <free+0xf0>
     d28:	e51b300c 	ldr	r3, [fp, #-12]
     d2c:	e5932004 	ldr	r2, [r3, #4]
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e5933004 	ldr	r3, [r3, #4]
     d3c:	e0822003 	add	r2, r2, r3
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e5832004 	str	r2, [r3, #4]
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e5932000 	ldr	r2, [r3]
     d54:	e51b300c 	ldr	r3, [fp, #-12]
     d58:	e5832000 	str	r2, [r3]
     d5c:	ea000003 	b	d70 <free+0x100>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e5932000 	ldr	r2, [r3]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5832000 	str	r2, [r3]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933004 	ldr	r3, [r3, #4]
     d78:	e1a03183 	lsl	r3, r3, #3
     d7c:	e51b2008 	ldr	r2, [fp, #-8]
     d80:	e0823003 	add	r3, r2, r3
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e1520003 	cmp	r2, r3
     d8c:	1a00000b 	bne	dc0 <free+0x150>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5932004 	ldr	r2, [r3, #4]
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e5933004 	ldr	r3, [r3, #4]
     da0:	e0822003 	add	r2, r2, r3
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5832004 	str	r2, [r3, #4]
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5932000 	ldr	r2, [r3]
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5832000 	str	r2, [r3]
     dbc:	ea000002 	b	dcc <free+0x15c>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e51b200c 	ldr	r2, [fp, #-12]
     dc8:	e5832000 	str	r2, [r3]
     dcc:	e59f2014 	ldr	r2, [pc, #20]	; de8 <free+0x178>
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5823000 	str	r3, [r2]
     dd8:	e1a00000 	nop			; (mov r0, r0)
     ddc:	e28bd000 	add	sp, fp, #0
     de0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     de4:	e12fff1e 	bx	lr
     de8:	0000112c 	.word	0x0000112c

00000dec <morecore>:
     dec:	e92d4800 	push	{fp, lr}
     df0:	e28db004 	add	fp, sp, #4
     df4:	e24dd010 	sub	sp, sp, #16
     df8:	e50b0010 	str	r0, [fp, #-16]
     dfc:	e51b3010 	ldr	r3, [fp, #-16]
     e00:	e3530a01 	cmp	r3, #4096	; 0x1000
     e04:	2a000001 	bcs	e10 <morecore+0x24>
     e08:	e3a03a01 	mov	r3, #4096	; 0x1000
     e0c:	e50b3010 	str	r3, [fp, #-16]
     e10:	e51b3010 	ldr	r3, [fp, #-16]
     e14:	e1a03183 	lsl	r3, r3, #3
     e18:	e1a00003 	mov	r0, r3
     e1c:	ebfffe63 	bl	7b0 <sbrk>
     e20:	e50b0008 	str	r0, [fp, #-8]
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e3730001 	cmn	r3, #1
     e2c:	1a000001 	bne	e38 <morecore+0x4c>
     e30:	e3a03000 	mov	r3, #0
     e34:	ea00000a 	b	e64 <morecore+0x78>
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e50b300c 	str	r3, [fp, #-12]
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e51b2010 	ldr	r2, [fp, #-16]
     e48:	e5832004 	str	r2, [r3, #4]
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e2833008 	add	r3, r3, #8
     e54:	e1a00003 	mov	r0, r3
     e58:	ebffff84 	bl	c70 <free>
     e5c:	e59f300c 	ldr	r3, [pc, #12]	; e70 <morecore+0x84>
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e1a00003 	mov	r0, r3
     e68:	e24bd004 	sub	sp, fp, #4
     e6c:	e8bd8800 	pop	{fp, pc}
     e70:	0000112c 	.word	0x0000112c

00000e74 <malloc>:
     e74:	e92d4800 	push	{fp, lr}
     e78:	e28db004 	add	fp, sp, #4
     e7c:	e24dd018 	sub	sp, sp, #24
     e80:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e84:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e88:	e2833007 	add	r3, r3, #7
     e8c:	e1a031a3 	lsr	r3, r3, #3
     e90:	e2833001 	add	r3, r3, #1
     e94:	e50b3010 	str	r3, [fp, #-16]
     e98:	e59f3134 	ldr	r3, [pc, #308]	; fd4 <malloc+0x160>
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e50b300c 	str	r3, [fp, #-12]
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e3530000 	cmp	r3, #0
     eac:	1a00000b 	bne	ee0 <malloc+0x6c>
     eb0:	e59f3120 	ldr	r3, [pc, #288]	; fd8 <malloc+0x164>
     eb4:	e50b300c 	str	r3, [fp, #-12]
     eb8:	e59f2114 	ldr	r2, [pc, #276]	; fd4 <malloc+0x160>
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e5823000 	str	r3, [r2]
     ec4:	e59f3108 	ldr	r3, [pc, #264]	; fd4 <malloc+0x160>
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e59f2104 	ldr	r2, [pc, #260]	; fd8 <malloc+0x164>
     ed0:	e5823000 	str	r3, [r2]
     ed4:	e59f30fc 	ldr	r3, [pc, #252]	; fd8 <malloc+0x164>
     ed8:	e3a02000 	mov	r2, #0
     edc:	e5832004 	str	r2, [r3, #4]
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5933000 	ldr	r3, [r3]
     ee8:	e50b3008 	str	r3, [fp, #-8]
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5933004 	ldr	r3, [r3, #4]
     ef4:	e51b2010 	ldr	r2, [fp, #-16]
     ef8:	e1520003 	cmp	r2, r3
     efc:	8a00001e 	bhi	f7c <malloc+0x108>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e51b2010 	ldr	r2, [fp, #-16]
     f0c:	e1520003 	cmp	r2, r3
     f10:	1a000004 	bne	f28 <malloc+0xb4>
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5932000 	ldr	r2, [r3]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5832000 	str	r2, [r3]
     f24:	ea00000e 	b	f64 <malloc+0xf0>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5932004 	ldr	r2, [r3, #4]
     f30:	e51b3010 	ldr	r3, [fp, #-16]
     f34:	e0422003 	sub	r2, r2, r3
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5832004 	str	r2, [r3, #4]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5933004 	ldr	r3, [r3, #4]
     f48:	e1a03183 	lsl	r3, r3, #3
     f4c:	e51b2008 	ldr	r2, [fp, #-8]
     f50:	e0823003 	add	r3, r2, r3
     f54:	e50b3008 	str	r3, [fp, #-8]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e51b2010 	ldr	r2, [fp, #-16]
     f60:	e5832004 	str	r2, [r3, #4]
     f64:	e59f2068 	ldr	r2, [pc, #104]	; fd4 <malloc+0x160>
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5823000 	str	r3, [r2]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e2833008 	add	r3, r3, #8
     f78:	ea000012 	b	fc8 <malloc+0x154>
     f7c:	e59f3050 	ldr	r3, [pc, #80]	; fd4 <malloc+0x160>
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e51b2008 	ldr	r2, [fp, #-8]
     f88:	e1520003 	cmp	r2, r3
     f8c:	1a000007 	bne	fb0 <malloc+0x13c>
     f90:	e51b0010 	ldr	r0, [fp, #-16]
     f94:	ebffff94 	bl	dec <morecore>
     f98:	e50b0008 	str	r0, [fp, #-8]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e3530000 	cmp	r3, #0
     fa4:	1a000001 	bne	fb0 <malloc+0x13c>
     fa8:	e3a03000 	mov	r3, #0
     fac:	ea000005 	b	fc8 <malloc+0x154>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e50b300c 	str	r3, [fp, #-12]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e50b3008 	str	r3, [fp, #-8]
     fc4:	eaffffc8 	b	eec <malloc+0x78>
     fc8:	e1a00003 	mov	r0, r3
     fcc:	e24bd004 	sub	sp, fp, #4
     fd0:	e8bd8800 	pop	{fp, pc}
     fd4:	0000112c 	.word	0x0000112c
     fd8:	00001124 	.word	0x00001124

00000fdc <__udivsi3>:
     fdc:	e2512001 	subs	r2, r1, #1
     fe0:	012fff1e 	bxeq	lr
     fe4:	3a000036 	bcc	10c4 <__udivsi3+0xe8>
     fe8:	e1500001 	cmp	r0, r1
     fec:	9a000022 	bls	107c <__udivsi3+0xa0>
     ff0:	e1110002 	tst	r1, r2
     ff4:	0a000023 	beq	1088 <__udivsi3+0xac>
     ff8:	e311020e 	tst	r1, #-536870912	; 0xe0000000
     ffc:	01a01181 	lsleq	r1, r1, #3
    1000:	03a03008 	moveq	r3, #8
    1004:	13a03001 	movne	r3, #1
    1008:	e3510201 	cmp	r1, #268435456	; 0x10000000
    100c:	31510000 	cmpcc	r1, r0
    1010:	31a01201 	lslcc	r1, r1, #4
    1014:	31a03203 	lslcc	r3, r3, #4
    1018:	3afffffa 	bcc	1008 <__udivsi3+0x2c>
    101c:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1020:	31510000 	cmpcc	r1, r0
    1024:	31a01081 	lslcc	r1, r1, #1
    1028:	31a03083 	lslcc	r3, r3, #1
    102c:	3afffffa 	bcc	101c <__udivsi3+0x40>
    1030:	e3a02000 	mov	r2, #0
    1034:	e1500001 	cmp	r0, r1
    1038:	20400001 	subcs	r0, r0, r1
    103c:	21822003 	orrcs	r2, r2, r3
    1040:	e15000a1 	cmp	r0, r1, lsr #1
    1044:	204000a1 	subcs	r0, r0, r1, lsr #1
    1048:	218220a3 	orrcs	r2, r2, r3, lsr #1
    104c:	e1500121 	cmp	r0, r1, lsr #2
    1050:	20400121 	subcs	r0, r0, r1, lsr #2
    1054:	21822123 	orrcs	r2, r2, r3, lsr #2
    1058:	e15001a1 	cmp	r0, r1, lsr #3
    105c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1060:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1064:	e3500000 	cmp	r0, #0
    1068:	11b03223 	lsrsne	r3, r3, #4
    106c:	11a01221 	lsrne	r1, r1, #4
    1070:	1affffef 	bne	1034 <__udivsi3+0x58>
    1074:	e1a00002 	mov	r0, r2
    1078:	e12fff1e 	bx	lr
    107c:	03a00001 	moveq	r0, #1
    1080:	13a00000 	movne	r0, #0
    1084:	e12fff1e 	bx	lr
    1088:	e3510801 	cmp	r1, #65536	; 0x10000
    108c:	21a01821 	lsrcs	r1, r1, #16
    1090:	23a02010 	movcs	r2, #16
    1094:	33a02000 	movcc	r2, #0
    1098:	e3510c01 	cmp	r1, #256	; 0x100
    109c:	21a01421 	lsrcs	r1, r1, #8
    10a0:	22822008 	addcs	r2, r2, #8
    10a4:	e3510010 	cmp	r1, #16
    10a8:	21a01221 	lsrcs	r1, r1, #4
    10ac:	22822004 	addcs	r2, r2, #4
    10b0:	e3510004 	cmp	r1, #4
    10b4:	82822003 	addhi	r2, r2, #3
    10b8:	908220a1 	addls	r2, r2, r1, lsr #1
    10bc:	e1a00230 	lsr	r0, r0, r2
    10c0:	e12fff1e 	bx	lr
    10c4:	e3500000 	cmp	r0, #0
    10c8:	13e00000 	mvnne	r0, #0
    10cc:	ea000007 	b	10f0 <__aeabi_idiv0>

000010d0 <__aeabi_uidivmod>:
    10d0:	e3510000 	cmp	r1, #0
    10d4:	0afffffa 	beq	10c4 <__udivsi3+0xe8>
    10d8:	e92d4003 	push	{r0, r1, lr}
    10dc:	ebffffbe 	bl	fdc <__udivsi3>
    10e0:	e8bd4006 	pop	{r1, r2, lr}
    10e4:	e0030092 	mul	r3, r2, r0
    10e8:	e0411003 	sub	r1, r1, r3
    10ec:	e12fff1e 	bx	lr

000010f0 <__aeabi_idiv0>:
    10f0:	e12fff1e 	bx	lr
