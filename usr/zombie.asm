
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb00013a 	bl	4f8 <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb0001e0 	bl	7a4 <sleep>
      20:	eb00013d 	bl	51c <exit>

00000024 <strcpy>:
      24:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      38:	e51b3010 	ldr	r3, [fp, #-16]
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	e1a00000 	nop			; (mov r0, r0)
      44:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      48:	e2823001 	add	r3, r2, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      50:	e51b3010 	ldr	r3, [fp, #-16]
      54:	e2831001 	add	r1, r3, #1
      58:	e50b1010 	str	r1, [fp, #-16]
      5c:	e5d22000 	ldrb	r2, [r2]
      60:	e5c32000 	strb	r2, [r3]
      64:	e5d33000 	ldrb	r3, [r3]
      68:	e3530000 	cmp	r3, #0
      6c:	1afffff4 	bne	44 <strcpy+0x20>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e1a00003 	mov	r0, r3
      78:	e28bd000 	add	sp, fp, #0
      7c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      80:	e12fff1e 	bx	lr

00000084 <strcmp>:
      84:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      88:	e28db000 	add	fp, sp, #0
      8c:	e24dd00c 	sub	sp, sp, #12
      90:	e50b0008 	str	r0, [fp, #-8]
      94:	e50b100c 	str	r1, [fp, #-12]
      98:	ea000005 	b	b4 <strcmp+0x30>
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e2833001 	add	r3, r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e51b300c 	ldr	r3, [fp, #-12]
      ac:	e2833001 	add	r3, r3, #1
      b0:	e50b300c 	str	r3, [fp, #-12]
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e5d33000 	ldrb	r3, [r3]
      bc:	e3530000 	cmp	r3, #0
      c0:	0a000005 	beq	dc <strcmp+0x58>
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e5d32000 	ldrb	r2, [r3]
      cc:	e51b300c 	ldr	r3, [fp, #-12]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e1520003 	cmp	r2, r3
      d8:	0affffef 	beq	9c <strcmp+0x18>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e5d33000 	ldrb	r3, [r3]
      e4:	e1a02003 	mov	r2, r3
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e5d33000 	ldrb	r3, [r3]
      f0:	e0423003 	sub	r3, r2, r3
      f4:	e1a00003 	mov	r0, r3
      f8:	e28bd000 	add	sp, fp, #0
      fc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     100:	e12fff1e 	bx	lr

00000104 <strlen>:
     104:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd014 	sub	sp, sp, #20
     110:	e50b0010 	str	r0, [fp, #-16]
     114:	e3a03000 	mov	r3, #0
     118:	e50b3008 	str	r3, [fp, #-8]
     11c:	ea000002 	b	12c <strlen+0x28>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e2833001 	add	r3, r3, #1
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e51b2010 	ldr	r2, [fp, #-16]
     134:	e0823003 	add	r3, r2, r3
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff6 	bne	120 <strlen+0x1c>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <memset>:
     158:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd024 	sub	sp, sp, #36	; 0x24
     164:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     168:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     16c:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     170:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     17c:	e54b300d 	strb	r3, [fp, #-13]
     180:	e55b300d 	ldrb	r3, [fp, #-13]
     184:	e1a02c03 	lsl	r2, r3, #24
     188:	e55b300d 	ldrb	r3, [fp, #-13]
     18c:	e1a03803 	lsl	r3, r3, #16
     190:	e1822003 	orr	r2, r2, r3
     194:	e55b300d 	ldrb	r3, [fp, #-13]
     198:	e1a03403 	lsl	r3, r3, #8
     19c:	e1822003 	orr	r2, r2, r3
     1a0:	e55b300d 	ldrb	r3, [fp, #-13]
     1a4:	e1823003 	orr	r3, r2, r3
     1a8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     1ac:	ea000008 	b	1d4 <memset+0x7c>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e55b200d 	ldrb	r2, [fp, #-13]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1c0:	e2433001 	sub	r3, r3, #1
     1c4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e2833001 	add	r3, r3, #1
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1d8:	e3530000 	cmp	r3, #0
     1dc:	0a000003 	beq	1f0 <memset+0x98>
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e2033003 	and	r3, r3, #3
     1e8:	e3530000 	cmp	r3, #0
     1ec:	1affffef 	bne	1b0 <memset+0x58>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e50b300c 	str	r3, [fp, #-12]
     1f8:	ea000008 	b	220 <memset+0xc8>
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     204:	e5832000 	str	r2, [r3]
     208:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     20c:	e2433004 	sub	r3, r3, #4
     210:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     214:	e51b300c 	ldr	r3, [fp, #-12]
     218:	e2833004 	add	r3, r3, #4
     21c:	e50b300c 	str	r3, [fp, #-12]
     220:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     224:	e3530003 	cmp	r3, #3
     228:	8afffff3 	bhi	1fc <memset+0xa4>
     22c:	e51b300c 	ldr	r3, [fp, #-12]
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	ea000008 	b	25c <memset+0x104>
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e55b200d 	ldrb	r2, [fp, #-13]
     240:	e5c32000 	strb	r2, [r3]
     244:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     248:	e2433001 	sub	r3, r3, #1
     24c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e2833001 	add	r3, r3, #1
     258:	e50b3008 	str	r3, [fp, #-8]
     25c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     260:	e3530000 	cmp	r3, #0
     264:	1afffff3 	bne	238 <memset+0xe0>
     268:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     26c:	e1a00003 	mov	r0, r3
     270:	e28bd000 	add	sp, fp, #0
     274:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     278:	e12fff1e 	bx	lr

0000027c <strchr>:
     27c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     280:	e28db000 	add	fp, sp, #0
     284:	e24dd00c 	sub	sp, sp, #12
     288:	e50b0008 	str	r0, [fp, #-8]
     28c:	e1a03001 	mov	r3, r1
     290:	e54b3009 	strb	r3, [fp, #-9]
     294:	ea000009 	b	2c0 <strchr+0x44>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e55b2009 	ldrb	r2, [fp, #-9]
     2a4:	e1520003 	cmp	r2, r3
     2a8:	1a000001 	bne	2b4 <strchr+0x38>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	ea000007 	b	2d4 <strchr+0x58>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e5d33000 	ldrb	r3, [r3]
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff1 	bne	298 <strchr+0x1c>
     2d0:	e3a03000 	mov	r3, #0
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <gets>:
     2e4:	e92d4800 	push	{fp, lr}
     2e8:	e28db004 	add	fp, sp, #4
     2ec:	e24dd018 	sub	sp, sp, #24
     2f0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     2f4:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     2f8:	e3a03000 	mov	r3, #0
     2fc:	e50b3008 	str	r3, [fp, #-8]
     300:	ea000016 	b	360 <gets+0x7c>
     304:	e24b300d 	sub	r3, fp, #13
     308:	e3a02001 	mov	r2, #1
     30c:	e1a01003 	mov	r1, r3
     310:	e3a00000 	mov	r0, #0
     314:	eb00009b 	bl	588 <read>
     318:	e50b000c 	str	r0, [fp, #-12]
     31c:	e51b300c 	ldr	r3, [fp, #-12]
     320:	e3530000 	cmp	r3, #0
     324:	da000013 	ble	378 <gets+0x94>
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2832001 	add	r2, r3, #1
     330:	e50b2008 	str	r2, [fp, #-8]
     334:	e1a02003 	mov	r2, r3
     338:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     33c:	e0833002 	add	r3, r3, r2
     340:	e55b200d 	ldrb	r2, [fp, #-13]
     344:	e5c32000 	strb	r2, [r3]
     348:	e55b300d 	ldrb	r3, [fp, #-13]
     34c:	e353000a 	cmp	r3, #10
     350:	0a000009 	beq	37c <gets+0x98>
     354:	e55b300d 	ldrb	r3, [fp, #-13]
     358:	e353000d 	cmp	r3, #13
     35c:	0a000006 	beq	37c <gets+0x98>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e2833001 	add	r3, r3, #1
     368:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     36c:	e1520003 	cmp	r2, r3
     370:	caffffe3 	bgt	304 <gets+0x20>
     374:	ea000000 	b	37c <gets+0x98>
     378:	e1a00000 	nop			; (mov r0, r0)
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     384:	e0823003 	add	r3, r2, r3
     388:	e3a02000 	mov	r2, #0
     38c:	e5c32000 	strb	r2, [r3]
     390:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     394:	e1a00003 	mov	r0, r3
     398:	e24bd004 	sub	sp, fp, #4
     39c:	e8bd8800 	pop	{fp, pc}

000003a0 <stat>:
     3a0:	e92d4800 	push	{fp, lr}
     3a4:	e28db004 	add	fp, sp, #4
     3a8:	e24dd010 	sub	sp, sp, #16
     3ac:	e50b0010 	str	r0, [fp, #-16]
     3b0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3b4:	e3a01000 	mov	r1, #0
     3b8:	e51b0010 	ldr	r0, [fp, #-16]
     3bc:	eb00009e 	bl	63c <open>
     3c0:	e50b0008 	str	r0, [fp, #-8]
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e3530000 	cmp	r3, #0
     3cc:	aa000001 	bge	3d8 <stat+0x38>
     3d0:	e3e03000 	mvn	r3, #0
     3d4:	ea000006 	b	3f4 <stat+0x54>
     3d8:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     3dc:	e51b0008 	ldr	r0, [fp, #-8]
     3e0:	eb0000b0 	bl	6a8 <fstat>
     3e4:	e50b000c 	str	r0, [fp, #-12]
     3e8:	e51b0008 	ldr	r0, [fp, #-8]
     3ec:	eb000077 	bl	5d0 <close>
     3f0:	e51b300c 	ldr	r3, [fp, #-12]
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e24bd004 	sub	sp, fp, #4
     3fc:	e8bd8800 	pop	{fp, pc}

00000400 <atoi>:
     400:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     404:	e28db000 	add	fp, sp, #0
     408:	e24dd014 	sub	sp, sp, #20
     40c:	e50b0010 	str	r0, [fp, #-16]
     410:	e3a03000 	mov	r3, #0
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	ea00000c 	b	450 <atoi+0x50>
     41c:	e51b2008 	ldr	r2, [fp, #-8]
     420:	e1a03002 	mov	r3, r2
     424:	e1a03103 	lsl	r3, r3, #2
     428:	e0833002 	add	r3, r3, r2
     42c:	e1a03083 	lsl	r3, r3, #1
     430:	e1a01003 	mov	r1, r3
     434:	e51b3010 	ldr	r3, [fp, #-16]
     438:	e2832001 	add	r2, r3, #1
     43c:	e50b2010 	str	r2, [fp, #-16]
     440:	e5d33000 	ldrb	r3, [r3]
     444:	e0813003 	add	r3, r1, r3
     448:	e2433030 	sub	r3, r3, #48	; 0x30
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	e51b3010 	ldr	r3, [fp, #-16]
     454:	e5d33000 	ldrb	r3, [r3]
     458:	e353002f 	cmp	r3, #47	; 0x2f
     45c:	9a000003 	bls	470 <atoi+0x70>
     460:	e51b3010 	ldr	r3, [fp, #-16]
     464:	e5d33000 	ldrb	r3, [r3]
     468:	e3530039 	cmp	r3, #57	; 0x39
     46c:	9affffea 	bls	41c <atoi+0x1c>
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e1a00003 	mov	r0, r3
     478:	e28bd000 	add	sp, fp, #0
     47c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     480:	e12fff1e 	bx	lr

00000484 <memmove>:
     484:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd01c 	sub	sp, sp, #28
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     498:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e50b3008 	str	r3, [fp, #-8]
     4a4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     4a8:	e50b300c 	str	r3, [fp, #-12]
     4ac:	ea000007 	b	4d0 <memmove+0x4c>
     4b0:	e51b200c 	ldr	r2, [fp, #-12]
     4b4:	e2823001 	add	r3, r2, #1
     4b8:	e50b300c 	str	r3, [fp, #-12]
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2831001 	add	r1, r3, #1
     4c4:	e50b1008 	str	r1, [fp, #-8]
     4c8:	e5d22000 	ldrb	r2, [r2]
     4cc:	e5c32000 	strb	r2, [r3]
     4d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4d4:	e2432001 	sub	r2, r3, #1
     4d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4dc:	e3530000 	cmp	r3, #0
     4e0:	cafffff2 	bgt	4b0 <memmove+0x2c>
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e1a00003 	mov	r0, r3
     4ec:	e28bd000 	add	sp, fp, #0
     4f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4f4:	e12fff1e 	bx	lr

000004f8 <fork>:
     4f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     4fc:	e1a04003 	mov	r4, r3
     500:	e1a03002 	mov	r3, r2
     504:	e1a02001 	mov	r2, r1
     508:	e1a01000 	mov	r1, r0
     50c:	e3a00001 	mov	r0, #1
     510:	ef000000 	svc	0x00000000
     514:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     518:	e12fff1e 	bx	lr

0000051c <exit>:
     51c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     520:	e1a04003 	mov	r4, r3
     524:	e1a03002 	mov	r3, r2
     528:	e1a02001 	mov	r2, r1
     52c:	e1a01000 	mov	r1, r0
     530:	e3a00002 	mov	r0, #2
     534:	ef000000 	svc	0x00000000
     538:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     53c:	e12fff1e 	bx	lr

00000540 <wait>:
     540:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     544:	e1a04003 	mov	r4, r3
     548:	e1a03002 	mov	r3, r2
     54c:	e1a02001 	mov	r2, r1
     550:	e1a01000 	mov	r1, r0
     554:	e3a00003 	mov	r0, #3
     558:	ef000000 	svc	0x00000000
     55c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     560:	e12fff1e 	bx	lr

00000564 <pipe>:
     564:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     568:	e1a04003 	mov	r4, r3
     56c:	e1a03002 	mov	r3, r2
     570:	e1a02001 	mov	r2, r1
     574:	e1a01000 	mov	r1, r0
     578:	e3a00004 	mov	r0, #4
     57c:	ef000000 	svc	0x00000000
     580:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <read>:
     588:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     58c:	e1a04003 	mov	r4, r3
     590:	e1a03002 	mov	r3, r2
     594:	e1a02001 	mov	r2, r1
     598:	e1a01000 	mov	r1, r0
     59c:	e3a00005 	mov	r0, #5
     5a0:	ef000000 	svc	0x00000000
     5a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <write>:
     5ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5b0:	e1a04003 	mov	r4, r3
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a02001 	mov	r2, r1
     5bc:	e1a01000 	mov	r1, r0
     5c0:	e3a00010 	mov	r0, #16
     5c4:	ef000000 	svc	0x00000000
     5c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <close>:
     5d0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00015 	mov	r0, #21
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <kill>:
     5f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00006 	mov	r0, #6
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <exec>:
     618:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00007 	mov	r0, #7
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <open>:
     63c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a0000f 	mov	r0, #15
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <mknod>:
     660:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00011 	mov	r0, #17
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <unlink>:
     684:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00012 	mov	r0, #18
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <fstat>:
     6a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00008 	mov	r0, #8
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <link>:
     6cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00013 	mov	r0, #19
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <mkdir>:
     6f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00014 	mov	r0, #20
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <chdir>:
     714:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00009 	mov	r0, #9
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <dup>:
     738:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a0000a 	mov	r0, #10
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <getpid>:
     75c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a0000b 	mov	r0, #11
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <sbrk>:
     780:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a0000c 	mov	r0, #12
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <sleep>:
     7a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a0000d 	mov	r0, #13
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <uptime>:
     7c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a0000e 	mov	r0, #14
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <memfree>:
     7ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00016 	mov	r0, #22
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <traceon>:
     810:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00017 	mov	r0, #23
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <getps>:
     834:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a00018 	mov	r0, #24
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <suspend>:
     858:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00019 	mov	r0, #25
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <resume>:
     87c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a0001a 	mov	r0, #26
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <putc>:
     8a0:	e92d4800 	push	{fp, lr}
     8a4:	e28db004 	add	fp, sp, #4
     8a8:	e24dd008 	sub	sp, sp, #8
     8ac:	e50b0008 	str	r0, [fp, #-8]
     8b0:	e1a03001 	mov	r3, r1
     8b4:	e54b3009 	strb	r3, [fp, #-9]
     8b8:	e24b3009 	sub	r3, fp, #9
     8bc:	e3a02001 	mov	r2, #1
     8c0:	e1a01003 	mov	r1, r3
     8c4:	e51b0008 	ldr	r0, [fp, #-8]
     8c8:	ebffff37 	bl	5ac <write>
     8cc:	e1a00000 	nop			; (mov r0, r0)
     8d0:	e24bd004 	sub	sp, fp, #4
     8d4:	e8bd8800 	pop	{fp, pc}

000008d8 <printint>:
     8d8:	e92d4800 	push	{fp, lr}
     8dc:	e28db004 	add	fp, sp, #4
     8e0:	e24dd030 	sub	sp, sp, #48	; 0x30
     8e4:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     8e8:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     8ec:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     8f0:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     8f4:	e3a03000 	mov	r3, #0
     8f8:	e50b300c 	str	r3, [fp, #-12]
     8fc:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     900:	e3530000 	cmp	r3, #0
     904:	0a000008 	beq	92c <printint+0x54>
     908:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     90c:	e3530000 	cmp	r3, #0
     910:	aa000005 	bge	92c <printint+0x54>
     914:	e3a03001 	mov	r3, #1
     918:	e50b300c 	str	r3, [fp, #-12]
     91c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     920:	e2633000 	rsb	r3, r3, #0
     924:	e50b3010 	str	r3, [fp, #-16]
     928:	ea000001 	b	934 <printint+0x5c>
     92c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     930:	e50b3010 	str	r3, [fp, #-16]
     934:	e3a03000 	mov	r3, #0
     938:	e50b3008 	str	r3, [fp, #-8]
     93c:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     940:	e51b3010 	ldr	r3, [fp, #-16]
     944:	e1a01002 	mov	r1, r2
     948:	e1a00003 	mov	r0, r3
     94c:	eb0001d3 	bl	10a0 <__aeabi_uidivmod>
     950:	e1a03001 	mov	r3, r1
     954:	e1a01003 	mov	r1, r3
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e2832001 	add	r2, r3, #1
     960:	e50b2008 	str	r2, [fp, #-8]
     964:	e59f209c 	ldr	r2, [pc, #156]	; a08 <printint+0x130>
     968:	e7d22001 	ldrb	r2, [r2, r1]
     96c:	e24b1004 	sub	r1, fp, #4
     970:	e0813003 	add	r3, r1, r3
     974:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     978:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     97c:	e1a01003 	mov	r1, r3
     980:	e51b0010 	ldr	r0, [fp, #-16]
     984:	eb000188 	bl	fac <__udivsi3>
     988:	e1a03000 	mov	r3, r0
     98c:	e50b3010 	str	r3, [fp, #-16]
     990:	e51b3010 	ldr	r3, [fp, #-16]
     994:	e3530000 	cmp	r3, #0
     998:	1affffe7 	bne	93c <printint+0x64>
     99c:	e51b300c 	ldr	r3, [fp, #-12]
     9a0:	e3530000 	cmp	r3, #0
     9a4:	0a00000e 	beq	9e4 <printint+0x10c>
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e2832001 	add	r2, r3, #1
     9b0:	e50b2008 	str	r2, [fp, #-8]
     9b4:	e24b2004 	sub	r2, fp, #4
     9b8:	e0823003 	add	r3, r2, r3
     9bc:	e3a0202d 	mov	r2, #45	; 0x2d
     9c0:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9c4:	ea000006 	b	9e4 <printint+0x10c>
     9c8:	e24b2020 	sub	r2, fp, #32
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e0823003 	add	r3, r2, r3
     9d4:	e5d33000 	ldrb	r3, [r3]
     9d8:	e1a01003 	mov	r1, r3
     9dc:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     9e0:	ebffffae 	bl	8a0 <putc>
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e2433001 	sub	r3, r3, #1
     9ec:	e50b3008 	str	r3, [fp, #-8]
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e3530000 	cmp	r3, #0
     9f8:	aafffff2 	bge	9c8 <printint+0xf0>
     9fc:	e1a00000 	nop			; (mov r0, r0)
     a00:	e24bd004 	sub	sp, fp, #4
     a04:	e8bd8800 	pop	{fp, pc}
     a08:	000010cc 	.word	0x000010cc

00000a0c <printf>:
     a0c:	e92d000e 	push	{r1, r2, r3}
     a10:	e92d4800 	push	{fp, lr}
     a14:	e28db004 	add	fp, sp, #4
     a18:	e24dd024 	sub	sp, sp, #36	; 0x24
     a1c:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a20:	e3a03000 	mov	r3, #0
     a24:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a28:	e28b3008 	add	r3, fp, #8
     a2c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a30:	e3a03000 	mov	r3, #0
     a34:	e50b3010 	str	r3, [fp, #-16]
     a38:	ea000074 	b	c10 <printf+0x204>
     a3c:	e59b2004 	ldr	r2, [fp, #4]
     a40:	e51b3010 	ldr	r3, [fp, #-16]
     a44:	e0823003 	add	r3, r2, r3
     a48:	e5d33000 	ldrb	r3, [r3]
     a4c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     a50:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a54:	e3530000 	cmp	r3, #0
     a58:	1a00000b 	bne	a8c <printf+0x80>
     a5c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a60:	e3530025 	cmp	r3, #37	; 0x25
     a64:	1a000002 	bne	a74 <printf+0x68>
     a68:	e3a03025 	mov	r3, #37	; 0x25
     a6c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a70:	ea000063 	b	c04 <printf+0x1f8>
     a74:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a78:	e6ef3073 	uxtb	r3, r3
     a7c:	e1a01003 	mov	r1, r3
     a80:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a84:	ebffff85 	bl	8a0 <putc>
     a88:	ea00005d 	b	c04 <printf+0x1f8>
     a8c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a90:	e3530025 	cmp	r3, #37	; 0x25
     a94:	1a00005a 	bne	c04 <printf+0x1f8>
     a98:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a9c:	e3530064 	cmp	r3, #100	; 0x64
     aa0:	1a00000a 	bne	ad0 <printf+0xc4>
     aa4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     aa8:	e5933000 	ldr	r3, [r3]
     aac:	e1a01003 	mov	r1, r3
     ab0:	e3a03001 	mov	r3, #1
     ab4:	e3a0200a 	mov	r2, #10
     ab8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     abc:	ebffff85 	bl	8d8 <printint>
     ac0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ac4:	e2833004 	add	r3, r3, #4
     ac8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     acc:	ea00004a 	b	bfc <printf+0x1f0>
     ad0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ad4:	e3530078 	cmp	r3, #120	; 0x78
     ad8:	0a000002 	beq	ae8 <printf+0xdc>
     adc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ae0:	e3530070 	cmp	r3, #112	; 0x70
     ae4:	1a00000a 	bne	b14 <printf+0x108>
     ae8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     aec:	e5933000 	ldr	r3, [r3]
     af0:	e1a01003 	mov	r1, r3
     af4:	e3a03000 	mov	r3, #0
     af8:	e3a02010 	mov	r2, #16
     afc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b00:	ebffff74 	bl	8d8 <printint>
     b04:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b08:	e2833004 	add	r3, r3, #4
     b0c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b10:	ea000039 	b	bfc <printf+0x1f0>
     b14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b18:	e3530073 	cmp	r3, #115	; 0x73
     b1c:	1a000018 	bne	b84 <printf+0x178>
     b20:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b24:	e5933000 	ldr	r3, [r3]
     b28:	e50b300c 	str	r3, [fp, #-12]
     b2c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b30:	e2833004 	add	r3, r3, #4
     b34:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b38:	e51b300c 	ldr	r3, [fp, #-12]
     b3c:	e3530000 	cmp	r3, #0
     b40:	1a00000a 	bne	b70 <printf+0x164>
     b44:	e59f30f0 	ldr	r3, [pc, #240]	; c3c <printf+0x230>
     b48:	e50b300c 	str	r3, [fp, #-12]
     b4c:	ea000007 	b	b70 <printf+0x164>
     b50:	e51b300c 	ldr	r3, [fp, #-12]
     b54:	e5d33000 	ldrb	r3, [r3]
     b58:	e1a01003 	mov	r1, r3
     b5c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b60:	ebffff4e 	bl	8a0 <putc>
     b64:	e51b300c 	ldr	r3, [fp, #-12]
     b68:	e2833001 	add	r3, r3, #1
     b6c:	e50b300c 	str	r3, [fp, #-12]
     b70:	e51b300c 	ldr	r3, [fp, #-12]
     b74:	e5d33000 	ldrb	r3, [r3]
     b78:	e3530000 	cmp	r3, #0
     b7c:	1afffff3 	bne	b50 <printf+0x144>
     b80:	ea00001d 	b	bfc <printf+0x1f0>
     b84:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b88:	e3530063 	cmp	r3, #99	; 0x63
     b8c:	1a000009 	bne	bb8 <printf+0x1ac>
     b90:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b94:	e5933000 	ldr	r3, [r3]
     b98:	e6ef3073 	uxtb	r3, r3
     b9c:	e1a01003 	mov	r1, r3
     ba0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ba4:	ebffff3d 	bl	8a0 <putc>
     ba8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bac:	e2833004 	add	r3, r3, #4
     bb0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bb4:	ea000010 	b	bfc <printf+0x1f0>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bbc:	e3530025 	cmp	r3, #37	; 0x25
     bc0:	1a000005 	bne	bdc <printf+0x1d0>
     bc4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bc8:	e6ef3073 	uxtb	r3, r3
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bd4:	ebffff31 	bl	8a0 <putc>
     bd8:	ea000007 	b	bfc <printf+0x1f0>
     bdc:	e3a01025 	mov	r1, #37	; 0x25
     be0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     be4:	ebffff2d 	bl	8a0 <putc>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bec:	e6ef3073 	uxtb	r3, r3
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bf8:	ebffff28 	bl	8a0 <putc>
     bfc:	e3a03000 	mov	r3, #0
     c00:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c04:	e51b3010 	ldr	r3, [fp, #-16]
     c08:	e2833001 	add	r3, r3, #1
     c0c:	e50b3010 	str	r3, [fp, #-16]
     c10:	e59b2004 	ldr	r2, [fp, #4]
     c14:	e51b3010 	ldr	r3, [fp, #-16]
     c18:	e0823003 	add	r3, r2, r3
     c1c:	e5d33000 	ldrb	r3, [r3]
     c20:	e3530000 	cmp	r3, #0
     c24:	1affff84 	bne	a3c <printf+0x30>
     c28:	e1a00000 	nop			; (mov r0, r0)
     c2c:	e24bd004 	sub	sp, fp, #4
     c30:	e8bd4800 	pop	{fp, lr}
     c34:	e28dd00c 	add	sp, sp, #12
     c38:	e12fff1e 	bx	lr
     c3c:	000010c4 	.word	0x000010c4

00000c40 <free>:
     c40:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c44:	e28db000 	add	fp, sp, #0
     c48:	e24dd014 	sub	sp, sp, #20
     c4c:	e50b0010 	str	r0, [fp, #-16]
     c50:	e51b3010 	ldr	r3, [fp, #-16]
     c54:	e2433008 	sub	r3, r3, #8
     c58:	e50b300c 	str	r3, [fp, #-12]
     c5c:	e59f3154 	ldr	r3, [pc, #340]	; db8 <free+0x178>
     c60:	e5933000 	ldr	r3, [r3]
     c64:	e50b3008 	str	r3, [fp, #-8]
     c68:	ea000010 	b	cb0 <free+0x70>
     c6c:	e51b3008 	ldr	r3, [fp, #-8]
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e51b2008 	ldr	r2, [fp, #-8]
     c78:	e1520003 	cmp	r2, r3
     c7c:	3a000008 	bcc	ca4 <free+0x64>
     c80:	e51b200c 	ldr	r2, [fp, #-12]
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e1520003 	cmp	r2, r3
     c8c:	8a000010 	bhi	cd4 <free+0x94>
     c90:	e51b3008 	ldr	r3, [fp, #-8]
     c94:	e5933000 	ldr	r3, [r3]
     c98:	e51b200c 	ldr	r2, [fp, #-12]
     c9c:	e1520003 	cmp	r2, r3
     ca0:	3a00000b 	bcc	cd4 <free+0x94>
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e50b3008 	str	r3, [fp, #-8]
     cb0:	e51b200c 	ldr	r2, [fp, #-12]
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e1520003 	cmp	r2, r3
     cbc:	9affffea 	bls	c6c <free+0x2c>
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e51b200c 	ldr	r2, [fp, #-12]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	2affffe5 	bcs	c6c <free+0x2c>
     cd4:	e51b300c 	ldr	r3, [fp, #-12]
     cd8:	e5933004 	ldr	r3, [r3, #4]
     cdc:	e1a03183 	lsl	r3, r3, #3
     ce0:	e51b200c 	ldr	r2, [fp, #-12]
     ce4:	e0822003 	add	r2, r2, r3
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e1520003 	cmp	r2, r3
     cf4:	1a00000d 	bne	d30 <free+0xf0>
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e5932004 	ldr	r2, [r3, #4]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e5933004 	ldr	r3, [r3, #4]
     d0c:	e0822003 	add	r2, r2, r3
     d10:	e51b300c 	ldr	r3, [fp, #-12]
     d14:	e5832004 	str	r2, [r3, #4]
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e5932000 	ldr	r2, [r3]
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5832000 	str	r2, [r3]
     d2c:	ea000003 	b	d40 <free+0x100>
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5932000 	ldr	r2, [r3]
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5832000 	str	r2, [r3]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933004 	ldr	r3, [r3, #4]
     d48:	e1a03183 	lsl	r3, r3, #3
     d4c:	e51b2008 	ldr	r2, [fp, #-8]
     d50:	e0823003 	add	r3, r2, r3
     d54:	e51b200c 	ldr	r2, [fp, #-12]
     d58:	e1520003 	cmp	r2, r3
     d5c:	1a00000b 	bne	d90 <free+0x150>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e5932004 	ldr	r2, [r3, #4]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5933004 	ldr	r3, [r3, #4]
     d70:	e0822003 	add	r2, r2, r3
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5832004 	str	r2, [r3, #4]
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5932000 	ldr	r2, [r3]
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5832000 	str	r2, [r3]
     d8c:	ea000002 	b	d9c <free+0x15c>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e5832000 	str	r2, [r3]
     d9c:	e59f2014 	ldr	r2, [pc, #20]	; db8 <free+0x178>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5823000 	str	r3, [r2]
     da8:	e1a00000 	nop			; (mov r0, r0)
     dac:	e28bd000 	add	sp, fp, #0
     db0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     db4:	e12fff1e 	bx	lr
     db8:	000010e8 	.word	0x000010e8

00000dbc <morecore>:
     dbc:	e92d4800 	push	{fp, lr}
     dc0:	e28db004 	add	fp, sp, #4
     dc4:	e24dd010 	sub	sp, sp, #16
     dc8:	e50b0010 	str	r0, [fp, #-16]
     dcc:	e51b3010 	ldr	r3, [fp, #-16]
     dd0:	e3530a01 	cmp	r3, #4096	; 0x1000
     dd4:	2a000001 	bcs	de0 <morecore+0x24>
     dd8:	e3a03a01 	mov	r3, #4096	; 0x1000
     ddc:	e50b3010 	str	r3, [fp, #-16]
     de0:	e51b3010 	ldr	r3, [fp, #-16]
     de4:	e1a03183 	lsl	r3, r3, #3
     de8:	e1a00003 	mov	r0, r3
     dec:	ebfffe63 	bl	780 <sbrk>
     df0:	e50b0008 	str	r0, [fp, #-8]
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e3730001 	cmn	r3, #1
     dfc:	1a000001 	bne	e08 <morecore+0x4c>
     e00:	e3a03000 	mov	r3, #0
     e04:	ea00000a 	b	e34 <morecore+0x78>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e50b300c 	str	r3, [fp, #-12]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e51b2010 	ldr	r2, [fp, #-16]
     e18:	e5832004 	str	r2, [r3, #4]
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e2833008 	add	r3, r3, #8
     e24:	e1a00003 	mov	r0, r3
     e28:	ebffff84 	bl	c40 <free>
     e2c:	e59f300c 	ldr	r3, [pc, #12]	; e40 <morecore+0x84>
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e1a00003 	mov	r0, r3
     e38:	e24bd004 	sub	sp, fp, #4
     e3c:	e8bd8800 	pop	{fp, pc}
     e40:	000010e8 	.word	0x000010e8

00000e44 <malloc>:
     e44:	e92d4800 	push	{fp, lr}
     e48:	e28db004 	add	fp, sp, #4
     e4c:	e24dd018 	sub	sp, sp, #24
     e50:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e58:	e2833007 	add	r3, r3, #7
     e5c:	e1a031a3 	lsr	r3, r3, #3
     e60:	e2833001 	add	r3, r3, #1
     e64:	e50b3010 	str	r3, [fp, #-16]
     e68:	e59f3134 	ldr	r3, [pc, #308]	; fa4 <malloc+0x160>
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e50b300c 	str	r3, [fp, #-12]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e3530000 	cmp	r3, #0
     e7c:	1a00000b 	bne	eb0 <malloc+0x6c>
     e80:	e59f3120 	ldr	r3, [pc, #288]	; fa8 <malloc+0x164>
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e59f2114 	ldr	r2, [pc, #276]	; fa4 <malloc+0x160>
     e8c:	e51b300c 	ldr	r3, [fp, #-12]
     e90:	e5823000 	str	r3, [r2]
     e94:	e59f3108 	ldr	r3, [pc, #264]	; fa4 <malloc+0x160>
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e59f2104 	ldr	r2, [pc, #260]	; fa8 <malloc+0x164>
     ea0:	e5823000 	str	r3, [r2]
     ea4:	e59f30fc 	ldr	r3, [pc, #252]	; fa8 <malloc+0x164>
     ea8:	e3a02000 	mov	r2, #0
     eac:	e5832004 	str	r2, [r3, #4]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e50b3008 	str	r3, [fp, #-8]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933004 	ldr	r3, [r3, #4]
     ec4:	e51b2010 	ldr	r2, [fp, #-16]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	8a00001e 	bhi	f4c <malloc+0x108>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933004 	ldr	r3, [r3, #4]
     ed8:	e51b2010 	ldr	r2, [fp, #-16]
     edc:	e1520003 	cmp	r2, r3
     ee0:	1a000004 	bne	ef8 <malloc+0xb4>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5932000 	ldr	r2, [r3]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e5832000 	str	r2, [r3]
     ef4:	ea00000e 	b	f34 <malloc+0xf0>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5932004 	ldr	r2, [r3, #4]
     f00:	e51b3010 	ldr	r3, [fp, #-16]
     f04:	e0422003 	sub	r2, r2, r3
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e5832004 	str	r2, [r3, #4]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933004 	ldr	r3, [r3, #4]
     f18:	e1a03183 	lsl	r3, r3, #3
     f1c:	e51b2008 	ldr	r2, [fp, #-8]
     f20:	e0823003 	add	r3, r2, r3
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e51b2010 	ldr	r2, [fp, #-16]
     f30:	e5832004 	str	r2, [r3, #4]
     f34:	e59f2068 	ldr	r2, [pc, #104]	; fa4 <malloc+0x160>
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e5823000 	str	r3, [r2]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e2833008 	add	r3, r3, #8
     f48:	ea000012 	b	f98 <malloc+0x154>
     f4c:	e59f3050 	ldr	r3, [pc, #80]	; fa4 <malloc+0x160>
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e51b2008 	ldr	r2, [fp, #-8]
     f58:	e1520003 	cmp	r2, r3
     f5c:	1a000007 	bne	f80 <malloc+0x13c>
     f60:	e51b0010 	ldr	r0, [fp, #-16]
     f64:	ebffff94 	bl	dbc <morecore>
     f68:	e50b0008 	str	r0, [fp, #-8]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e3530000 	cmp	r3, #0
     f74:	1a000001 	bne	f80 <malloc+0x13c>
     f78:	e3a03000 	mov	r3, #0
     f7c:	ea000005 	b	f98 <malloc+0x154>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e50b300c 	str	r3, [fp, #-12]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	eaffffc8 	b	ebc <malloc+0x78>
     f98:	e1a00003 	mov	r0, r3
     f9c:	e24bd004 	sub	sp, fp, #4
     fa0:	e8bd8800 	pop	{fp, pc}
     fa4:	000010e8 	.word	0x000010e8
     fa8:	000010e0 	.word	0x000010e0

00000fac <__udivsi3>:
     fac:	e2512001 	subs	r2, r1, #1
     fb0:	012fff1e 	bxeq	lr
     fb4:	3a000036 	bcc	1094 <__udivsi3+0xe8>
     fb8:	e1500001 	cmp	r0, r1
     fbc:	9a000022 	bls	104c <__udivsi3+0xa0>
     fc0:	e1110002 	tst	r1, r2
     fc4:	0a000023 	beq	1058 <__udivsi3+0xac>
     fc8:	e311020e 	tst	r1, #-536870912	; 0xe0000000
     fcc:	01a01181 	lsleq	r1, r1, #3
     fd0:	03a03008 	moveq	r3, #8
     fd4:	13a03001 	movne	r3, #1
     fd8:	e3510201 	cmp	r1, #268435456	; 0x10000000
     fdc:	31510000 	cmpcc	r1, r0
     fe0:	31a01201 	lslcc	r1, r1, #4
     fe4:	31a03203 	lslcc	r3, r3, #4
     fe8:	3afffffa 	bcc	fd8 <__udivsi3+0x2c>
     fec:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
     ff0:	31510000 	cmpcc	r1, r0
     ff4:	31a01081 	lslcc	r1, r1, #1
     ff8:	31a03083 	lslcc	r3, r3, #1
     ffc:	3afffffa 	bcc	fec <__udivsi3+0x40>
    1000:	e3a02000 	mov	r2, #0
    1004:	e1500001 	cmp	r0, r1
    1008:	20400001 	subcs	r0, r0, r1
    100c:	21822003 	orrcs	r2, r2, r3
    1010:	e15000a1 	cmp	r0, r1, lsr #1
    1014:	204000a1 	subcs	r0, r0, r1, lsr #1
    1018:	218220a3 	orrcs	r2, r2, r3, lsr #1
    101c:	e1500121 	cmp	r0, r1, lsr #2
    1020:	20400121 	subcs	r0, r0, r1, lsr #2
    1024:	21822123 	orrcs	r2, r2, r3, lsr #2
    1028:	e15001a1 	cmp	r0, r1, lsr #3
    102c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1030:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1034:	e3500000 	cmp	r0, #0
    1038:	11b03223 	lsrsne	r3, r3, #4
    103c:	11a01221 	lsrne	r1, r1, #4
    1040:	1affffef 	bne	1004 <__udivsi3+0x58>
    1044:	e1a00002 	mov	r0, r2
    1048:	e12fff1e 	bx	lr
    104c:	03a00001 	moveq	r0, #1
    1050:	13a00000 	movne	r0, #0
    1054:	e12fff1e 	bx	lr
    1058:	e3510801 	cmp	r1, #65536	; 0x10000
    105c:	21a01821 	lsrcs	r1, r1, #16
    1060:	23a02010 	movcs	r2, #16
    1064:	33a02000 	movcc	r2, #0
    1068:	e3510c01 	cmp	r1, #256	; 0x100
    106c:	21a01421 	lsrcs	r1, r1, #8
    1070:	22822008 	addcs	r2, r2, #8
    1074:	e3510010 	cmp	r1, #16
    1078:	21a01221 	lsrcs	r1, r1, #4
    107c:	22822004 	addcs	r2, r2, #4
    1080:	e3510004 	cmp	r1, #4
    1084:	82822003 	addhi	r2, r2, #3
    1088:	908220a1 	addls	r2, r2, r1, lsr #1
    108c:	e1a00230 	lsr	r0, r0, r2
    1090:	e12fff1e 	bx	lr
    1094:	e3500000 	cmp	r0, #0
    1098:	13e00000 	mvnne	r0, #0
    109c:	ea000007 	b	10c0 <__aeabi_idiv0>

000010a0 <__aeabi_uidivmod>:
    10a0:	e3510000 	cmp	r1, #0
    10a4:	0afffffa 	beq	1094 <__udivsi3+0xe8>
    10a8:	e92d4003 	push	{r0, r1, lr}
    10ac:	ebffffbe 	bl	fac <__udivsi3>
    10b0:	e8bd4006 	pop	{r1, r2, lr}
    10b4:	e0030092 	mul	r3, r2, r0
    10b8:	e0411003 	sub	r1, r1, r3
    10bc:	e12fff1e 	bx	lr

000010c0 <__aeabi_idiv0>:
    10c0:	e12fff1e 	bx	lr
