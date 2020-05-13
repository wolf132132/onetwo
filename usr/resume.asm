
_resume:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	e51b300c 	ldr	r3, [fp, #-12]
      18:	e2833004 	add	r3, r3, #4
      1c:	e5933000 	ldr	r3, [r3]
      20:	e1a00003 	mov	r0, r3
      24:	eb000216 	bl	884 <resume>
      28:	eb00013d 	bl	524 <exit>

0000002c <strcpy>:
      2c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      30:	e28db000 	add	fp, sp, #0
      34:	e24dd014 	sub	sp, sp, #20
      38:	e50b0010 	str	r0, [fp, #-16]
      3c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      40:	e51b3010 	ldr	r3, [fp, #-16]
      44:	e50b3008 	str	r3, [fp, #-8]
      48:	e1a00000 	nop			; (mov r0, r0)
      4c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      50:	e2823001 	add	r3, r2, #1
      54:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2831001 	add	r1, r3, #1
      60:	e50b1010 	str	r1, [fp, #-16]
      64:	e5d22000 	ldrb	r2, [r2]
      68:	e5c32000 	strb	r2, [r3]
      6c:	e5d33000 	ldrb	r3, [r3]
      70:	e3530000 	cmp	r3, #0
      74:	1afffff4 	bne	4c <strcpy+0x20>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e1a00003 	mov	r0, r3
      80:	e28bd000 	add	sp, fp, #0
      84:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      88:	e12fff1e 	bx	lr

0000008c <strcmp>:
      8c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      90:	e28db000 	add	fp, sp, #0
      94:	e24dd00c 	sub	sp, sp, #12
      98:	e50b0008 	str	r0, [fp, #-8]
      9c:	e50b100c 	str	r1, [fp, #-12]
      a0:	ea000005 	b	bc <strcmp+0x30>
      a4:	e51b3008 	ldr	r3, [fp, #-8]
      a8:	e2833001 	add	r3, r3, #1
      ac:	e50b3008 	str	r3, [fp, #-8]
      b0:	e51b300c 	ldr	r3, [fp, #-12]
      b4:	e2833001 	add	r3, r3, #1
      b8:	e50b300c 	str	r3, [fp, #-12]
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e5d33000 	ldrb	r3, [r3]
      c4:	e3530000 	cmp	r3, #0
      c8:	0a000005 	beq	e4 <strcmp+0x58>
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e5d32000 	ldrb	r2, [r3]
      d4:	e51b300c 	ldr	r3, [fp, #-12]
      d8:	e5d33000 	ldrb	r3, [r3]
      dc:	e1520003 	cmp	r2, r3
      e0:	0affffef 	beq	a4 <strcmp+0x18>
      e4:	e51b3008 	ldr	r3, [fp, #-8]
      e8:	e5d33000 	ldrb	r3, [r3]
      ec:	e1a02003 	mov	r2, r3
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e0423003 	sub	r3, r2, r3
      fc:	e1a00003 	mov	r0, r3
     100:	e28bd000 	add	sp, fp, #0
     104:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     108:	e12fff1e 	bx	lr

0000010c <strlen>:
     10c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     110:	e28db000 	add	fp, sp, #0
     114:	e24dd014 	sub	sp, sp, #20
     118:	e50b0010 	str	r0, [fp, #-16]
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea000002 	b	134 <strlen+0x28>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e2833001 	add	r3, r3, #1
     130:	e50b3008 	str	r3, [fp, #-8]
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e51b2010 	ldr	r2, [fp, #-16]
     13c:	e0823003 	add	r3, r2, r3
     140:	e5d33000 	ldrb	r3, [r3]
     144:	e3530000 	cmp	r3, #0
     148:	1afffff6 	bne	128 <strlen+0x1c>
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e1a00003 	mov	r0, r3
     154:	e28bd000 	add	sp, fp, #0
     158:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     15c:	e12fff1e 	bx	lr

00000160 <memset>:
     160:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     164:	e28db000 	add	fp, sp, #0
     168:	e24dd024 	sub	sp, sp, #36	; 0x24
     16c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     170:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     174:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     178:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     184:	e54b300d 	strb	r3, [fp, #-13]
     188:	e55b300d 	ldrb	r3, [fp, #-13]
     18c:	e1a02c03 	lsl	r2, r3, #24
     190:	e55b300d 	ldrb	r3, [fp, #-13]
     194:	e1a03803 	lsl	r3, r3, #16
     198:	e1822003 	orr	r2, r2, r3
     19c:	e55b300d 	ldrb	r3, [fp, #-13]
     1a0:	e1a03403 	lsl	r3, r3, #8
     1a4:	e1822003 	orr	r2, r2, r3
     1a8:	e55b300d 	ldrb	r3, [fp, #-13]
     1ac:	e1823003 	orr	r3, r2, r3
     1b0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     1b4:	ea000008 	b	1dc <memset+0x7c>
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e55b200d 	ldrb	r2, [fp, #-13]
     1c0:	e5c32000 	strb	r2, [r3]
     1c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1c8:	e2433001 	sub	r3, r3, #1
     1cc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e2833001 	add	r3, r3, #1
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     1e0:	e3530000 	cmp	r3, #0
     1e4:	0a000003 	beq	1f8 <memset+0x98>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e2033003 	and	r3, r3, #3
     1f0:	e3530000 	cmp	r3, #0
     1f4:	1affffef 	bne	1b8 <memset+0x58>
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e50b300c 	str	r3, [fp, #-12]
     200:	ea000008 	b	228 <memset+0xc8>
     204:	e51b300c 	ldr	r3, [fp, #-12]
     208:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     20c:	e5832000 	str	r2, [r3]
     210:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     214:	e2433004 	sub	r3, r3, #4
     218:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     21c:	e51b300c 	ldr	r3, [fp, #-12]
     220:	e2833004 	add	r3, r3, #4
     224:	e50b300c 	str	r3, [fp, #-12]
     228:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     22c:	e3530003 	cmp	r3, #3
     230:	8afffff3 	bhi	204 <memset+0xa4>
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	ea000008 	b	264 <memset+0x104>
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
     26c:	1afffff3 	bne	240 <memset+0xe0>
     270:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     274:	e1a00003 	mov	r0, r3
     278:	e28bd000 	add	sp, fp, #0
     27c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     280:	e12fff1e 	bx	lr

00000284 <strchr>:
     284:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     288:	e28db000 	add	fp, sp, #0
     28c:	e24dd00c 	sub	sp, sp, #12
     290:	e50b0008 	str	r0, [fp, #-8]
     294:	e1a03001 	mov	r3, r1
     298:	e54b3009 	strb	r3, [fp, #-9]
     29c:	ea000009 	b	2c8 <strchr+0x44>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e5d33000 	ldrb	r3, [r3]
     2a8:	e55b2009 	ldrb	r2, [fp, #-9]
     2ac:	e1520003 	cmp	r2, r3
     2b0:	1a000001 	bne	2bc <strchr+0x38>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	ea000007 	b	2dc <strchr+0x58>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff1 	bne	2a0 <strchr+0x1c>
     2d8:	e3a03000 	mov	r3, #0
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <gets>:
     2ec:	e92d4800 	push	{fp, lr}
     2f0:	e28db004 	add	fp, sp, #4
     2f4:	e24dd018 	sub	sp, sp, #24
     2f8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     2fc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     300:	e3a03000 	mov	r3, #0
     304:	e50b3008 	str	r3, [fp, #-8]
     308:	ea000016 	b	368 <gets+0x7c>
     30c:	e24b300d 	sub	r3, fp, #13
     310:	e3a02001 	mov	r2, #1
     314:	e1a01003 	mov	r1, r3
     318:	e3a00000 	mov	r0, #0
     31c:	eb00009b 	bl	590 <read>
     320:	e50b000c 	str	r0, [fp, #-12]
     324:	e51b300c 	ldr	r3, [fp, #-12]
     328:	e3530000 	cmp	r3, #0
     32c:	da000013 	ble	380 <gets+0x94>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2832001 	add	r2, r3, #1
     338:	e50b2008 	str	r2, [fp, #-8]
     33c:	e1a02003 	mov	r2, r3
     340:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     344:	e0833002 	add	r3, r3, r2
     348:	e55b200d 	ldrb	r2, [fp, #-13]
     34c:	e5c32000 	strb	r2, [r3]
     350:	e55b300d 	ldrb	r3, [fp, #-13]
     354:	e353000a 	cmp	r3, #10
     358:	0a000009 	beq	384 <gets+0x98>
     35c:	e55b300d 	ldrb	r3, [fp, #-13]
     360:	e353000d 	cmp	r3, #13
     364:	0a000006 	beq	384 <gets+0x98>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2833001 	add	r3, r3, #1
     370:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     374:	e1520003 	cmp	r2, r3
     378:	caffffe3 	bgt	30c <gets+0x20>
     37c:	ea000000 	b	384 <gets+0x98>
     380:	e1a00000 	nop			; (mov r0, r0)
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     38c:	e0823003 	add	r3, r2, r3
     390:	e3a02000 	mov	r2, #0
     394:	e5c32000 	strb	r2, [r3]
     398:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     39c:	e1a00003 	mov	r0, r3
     3a0:	e24bd004 	sub	sp, fp, #4
     3a4:	e8bd8800 	pop	{fp, pc}

000003a8 <stat>:
     3a8:	e92d4800 	push	{fp, lr}
     3ac:	e28db004 	add	fp, sp, #4
     3b0:	e24dd010 	sub	sp, sp, #16
     3b4:	e50b0010 	str	r0, [fp, #-16]
     3b8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3bc:	e3a01000 	mov	r1, #0
     3c0:	e51b0010 	ldr	r0, [fp, #-16]
     3c4:	eb00009e 	bl	644 <open>
     3c8:	e50b0008 	str	r0, [fp, #-8]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e3530000 	cmp	r3, #0
     3d4:	aa000001 	bge	3e0 <stat+0x38>
     3d8:	e3e03000 	mvn	r3, #0
     3dc:	ea000006 	b	3fc <stat+0x54>
     3e0:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     3e4:	e51b0008 	ldr	r0, [fp, #-8]
     3e8:	eb0000b0 	bl	6b0 <fstat>
     3ec:	e50b000c 	str	r0, [fp, #-12]
     3f0:	e51b0008 	ldr	r0, [fp, #-8]
     3f4:	eb000077 	bl	5d8 <close>
     3f8:	e51b300c 	ldr	r3, [fp, #-12]
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <atoi>:
     408:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     40c:	e28db000 	add	fp, sp, #0
     410:	e24dd014 	sub	sp, sp, #20
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e3a03000 	mov	r3, #0
     41c:	e50b3008 	str	r3, [fp, #-8]
     420:	ea00000c 	b	458 <atoi+0x50>
     424:	e51b2008 	ldr	r2, [fp, #-8]
     428:	e1a03002 	mov	r3, r2
     42c:	e1a03103 	lsl	r3, r3, #2
     430:	e0833002 	add	r3, r3, r2
     434:	e1a03083 	lsl	r3, r3, #1
     438:	e1a01003 	mov	r1, r3
     43c:	e51b3010 	ldr	r3, [fp, #-16]
     440:	e2832001 	add	r2, r3, #1
     444:	e50b2010 	str	r2, [fp, #-16]
     448:	e5d33000 	ldrb	r3, [r3]
     44c:	e0813003 	add	r3, r1, r3
     450:	e2433030 	sub	r3, r3, #48	; 0x30
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	e51b3010 	ldr	r3, [fp, #-16]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e353002f 	cmp	r3, #47	; 0x2f
     464:	9a000003 	bls	478 <atoi+0x70>
     468:	e51b3010 	ldr	r3, [fp, #-16]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e3530039 	cmp	r3, #57	; 0x39
     474:	9affffea 	bls	424 <atoi+0x1c>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e1a00003 	mov	r0, r3
     480:	e28bd000 	add	sp, fp, #0
     484:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     488:	e12fff1e 	bx	lr

0000048c <memmove>:
     48c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     490:	e28db000 	add	fp, sp, #0
     494:	e24dd01c 	sub	sp, sp, #28
     498:	e50b0010 	str	r0, [fp, #-16]
     49c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4a0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4a4:	e51b3010 	ldr	r3, [fp, #-16]
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     4b0:	e50b300c 	str	r3, [fp, #-12]
     4b4:	ea000007 	b	4d8 <memmove+0x4c>
     4b8:	e51b200c 	ldr	r2, [fp, #-12]
     4bc:	e2823001 	add	r3, r2, #1
     4c0:	e50b300c 	str	r3, [fp, #-12]
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e2831001 	add	r1, r3, #1
     4cc:	e50b1008 	str	r1, [fp, #-8]
     4d0:	e5d22000 	ldrb	r2, [r2]
     4d4:	e5c32000 	strb	r2, [r3]
     4d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4dc:	e2432001 	sub	r2, r3, #1
     4e0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4e4:	e3530000 	cmp	r3, #0
     4e8:	cafffff2 	bgt	4b8 <memmove+0x2c>
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e28bd000 	add	sp, fp, #0
     4f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4fc:	e12fff1e 	bx	lr

00000500 <fork>:
     500:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     504:	e1a04003 	mov	r4, r3
     508:	e1a03002 	mov	r3, r2
     50c:	e1a02001 	mov	r2, r1
     510:	e1a01000 	mov	r1, r0
     514:	e3a00001 	mov	r0, #1
     518:	ef000000 	svc	0x00000000
     51c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     520:	e12fff1e 	bx	lr

00000524 <exit>:
     524:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     528:	e1a04003 	mov	r4, r3
     52c:	e1a03002 	mov	r3, r2
     530:	e1a02001 	mov	r2, r1
     534:	e1a01000 	mov	r1, r0
     538:	e3a00002 	mov	r0, #2
     53c:	ef000000 	svc	0x00000000
     540:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     544:	e12fff1e 	bx	lr

00000548 <wait>:
     548:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     54c:	e1a04003 	mov	r4, r3
     550:	e1a03002 	mov	r3, r2
     554:	e1a02001 	mov	r2, r1
     558:	e1a01000 	mov	r1, r0
     55c:	e3a00003 	mov	r0, #3
     560:	ef000000 	svc	0x00000000
     564:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     568:	e12fff1e 	bx	lr

0000056c <pipe>:
     56c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     570:	e1a04003 	mov	r4, r3
     574:	e1a03002 	mov	r3, r2
     578:	e1a02001 	mov	r2, r1
     57c:	e1a01000 	mov	r1, r0
     580:	e3a00004 	mov	r0, #4
     584:	ef000000 	svc	0x00000000
     588:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <read>:
     590:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     594:	e1a04003 	mov	r4, r3
     598:	e1a03002 	mov	r3, r2
     59c:	e1a02001 	mov	r2, r1
     5a0:	e1a01000 	mov	r1, r0
     5a4:	e3a00005 	mov	r0, #5
     5a8:	ef000000 	svc	0x00000000
     5ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <write>:
     5b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5b8:	e1a04003 	mov	r4, r3
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a02001 	mov	r2, r1
     5c4:	e1a01000 	mov	r1, r0
     5c8:	e3a00010 	mov	r0, #16
     5cc:	ef000000 	svc	0x00000000
     5d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5d4:	e12fff1e 	bx	lr

000005d8 <close>:
     5d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5dc:	e1a04003 	mov	r4, r3
     5e0:	e1a03002 	mov	r3, r2
     5e4:	e1a02001 	mov	r2, r1
     5e8:	e1a01000 	mov	r1, r0
     5ec:	e3a00015 	mov	r0, #21
     5f0:	ef000000 	svc	0x00000000
     5f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <kill>:
     5fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     600:	e1a04003 	mov	r4, r3
     604:	e1a03002 	mov	r3, r2
     608:	e1a02001 	mov	r2, r1
     60c:	e1a01000 	mov	r1, r0
     610:	e3a00006 	mov	r0, #6
     614:	ef000000 	svc	0x00000000
     618:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <exec>:
     620:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     624:	e1a04003 	mov	r4, r3
     628:	e1a03002 	mov	r3, r2
     62c:	e1a02001 	mov	r2, r1
     630:	e1a01000 	mov	r1, r0
     634:	e3a00007 	mov	r0, #7
     638:	ef000000 	svc	0x00000000
     63c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <open>:
     644:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a0000f 	mov	r0, #15
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <mknod>:
     668:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a00011 	mov	r0, #17
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <unlink>:
     68c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a00012 	mov	r0, #18
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <fstat>:
     6b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00008 	mov	r0, #8
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <link>:
     6d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a00013 	mov	r0, #19
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <mkdir>:
     6f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a00014 	mov	r0, #20
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <chdir>:
     71c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00009 	mov	r0, #9
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <dup>:
     740:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a0000a 	mov	r0, #10
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <getpid>:
     764:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a0000b 	mov	r0, #11
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <sbrk>:
     788:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a0000c 	mov	r0, #12
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <sleep>:
     7ac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a0000d 	mov	r0, #13
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <uptime>:
     7d0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a0000e 	mov	r0, #14
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <memfree>:
     7f4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00016 	mov	r0, #22
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <traceon>:
     818:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00017 	mov	r0, #23
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <getps>:
     83c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00018 	mov	r0, #24
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <suspend>:
     860:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00019 	mov	r0, #25
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <resume>:
     884:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a0001a 	mov	r0, #26
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <putc>:
     8a8:	e92d4800 	push	{fp, lr}
     8ac:	e28db004 	add	fp, sp, #4
     8b0:	e24dd008 	sub	sp, sp, #8
     8b4:	e50b0008 	str	r0, [fp, #-8]
     8b8:	e1a03001 	mov	r3, r1
     8bc:	e54b3009 	strb	r3, [fp, #-9]
     8c0:	e24b3009 	sub	r3, fp, #9
     8c4:	e3a02001 	mov	r2, #1
     8c8:	e1a01003 	mov	r1, r3
     8cc:	e51b0008 	ldr	r0, [fp, #-8]
     8d0:	ebffff37 	bl	5b4 <write>
     8d4:	e1a00000 	nop			; (mov r0, r0)
     8d8:	e24bd004 	sub	sp, fp, #4
     8dc:	e8bd8800 	pop	{fp, pc}

000008e0 <printint>:
     8e0:	e92d4800 	push	{fp, lr}
     8e4:	e28db004 	add	fp, sp, #4
     8e8:	e24dd030 	sub	sp, sp, #48	; 0x30
     8ec:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     8f0:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     8f4:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     8f8:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     8fc:	e3a03000 	mov	r3, #0
     900:	e50b300c 	str	r3, [fp, #-12]
     904:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     908:	e3530000 	cmp	r3, #0
     90c:	0a000008 	beq	934 <printint+0x54>
     910:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     914:	e3530000 	cmp	r3, #0
     918:	aa000005 	bge	934 <printint+0x54>
     91c:	e3a03001 	mov	r3, #1
     920:	e50b300c 	str	r3, [fp, #-12]
     924:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     928:	e2633000 	rsb	r3, r3, #0
     92c:	e50b3010 	str	r3, [fp, #-16]
     930:	ea000001 	b	93c <printint+0x5c>
     934:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     938:	e50b3010 	str	r3, [fp, #-16]
     93c:	e3a03000 	mov	r3, #0
     940:	e50b3008 	str	r3, [fp, #-8]
     944:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     948:	e51b3010 	ldr	r3, [fp, #-16]
     94c:	e1a01002 	mov	r1, r2
     950:	e1a00003 	mov	r0, r3
     954:	eb0001d3 	bl	10a8 <__aeabi_uidivmod>
     958:	e1a03001 	mov	r3, r1
     95c:	e1a01003 	mov	r1, r3
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e2832001 	add	r2, r3, #1
     968:	e50b2008 	str	r2, [fp, #-8]
     96c:	e59f209c 	ldr	r2, [pc, #156]	; a10 <printint+0x130>
     970:	e7d22001 	ldrb	r2, [r2, r1]
     974:	e24b1004 	sub	r1, fp, #4
     978:	e0813003 	add	r3, r1, r3
     97c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     980:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     984:	e1a01003 	mov	r1, r3
     988:	e51b0010 	ldr	r0, [fp, #-16]
     98c:	eb000188 	bl	fb4 <__udivsi3>
     990:	e1a03000 	mov	r3, r0
     994:	e50b3010 	str	r3, [fp, #-16]
     998:	e51b3010 	ldr	r3, [fp, #-16]
     99c:	e3530000 	cmp	r3, #0
     9a0:	1affffe7 	bne	944 <printint+0x64>
     9a4:	e51b300c 	ldr	r3, [fp, #-12]
     9a8:	e3530000 	cmp	r3, #0
     9ac:	0a00000e 	beq	9ec <printint+0x10c>
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2832001 	add	r2, r3, #1
     9b8:	e50b2008 	str	r2, [fp, #-8]
     9bc:	e24b2004 	sub	r2, fp, #4
     9c0:	e0823003 	add	r3, r2, r3
     9c4:	e3a0202d 	mov	r2, #45	; 0x2d
     9c8:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9cc:	ea000006 	b	9ec <printint+0x10c>
     9d0:	e24b2020 	sub	r2, fp, #32
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e0823003 	add	r3, r2, r3
     9dc:	e5d33000 	ldrb	r3, [r3]
     9e0:	e1a01003 	mov	r1, r3
     9e4:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     9e8:	ebffffae 	bl	8a8 <putc>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e2433001 	sub	r3, r3, #1
     9f4:	e50b3008 	str	r3, [fp, #-8]
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e3530000 	cmp	r3, #0
     a00:	aafffff2 	bge	9d0 <printint+0xf0>
     a04:	e1a00000 	nop			; (mov r0, r0)
     a08:	e24bd004 	sub	sp, fp, #4
     a0c:	e8bd8800 	pop	{fp, pc}
     a10:	000010d4 	.word	0x000010d4

00000a14 <printf>:
     a14:	e92d000e 	push	{r1, r2, r3}
     a18:	e92d4800 	push	{fp, lr}
     a1c:	e28db004 	add	fp, sp, #4
     a20:	e24dd024 	sub	sp, sp, #36	; 0x24
     a24:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a28:	e3a03000 	mov	r3, #0
     a2c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a30:	e28b3008 	add	r3, fp, #8
     a34:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a38:	e3a03000 	mov	r3, #0
     a3c:	e50b3010 	str	r3, [fp, #-16]
     a40:	ea000074 	b	c18 <printf+0x204>
     a44:	e59b2004 	ldr	r2, [fp, #4]
     a48:	e51b3010 	ldr	r3, [fp, #-16]
     a4c:	e0823003 	add	r3, r2, r3
     a50:	e5d33000 	ldrb	r3, [r3]
     a54:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     a58:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a5c:	e3530000 	cmp	r3, #0
     a60:	1a00000b 	bne	a94 <printf+0x80>
     a64:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a68:	e3530025 	cmp	r3, #37	; 0x25
     a6c:	1a000002 	bne	a7c <printf+0x68>
     a70:	e3a03025 	mov	r3, #37	; 0x25
     a74:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a78:	ea000063 	b	c0c <printf+0x1f8>
     a7c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     a80:	e6ef3073 	uxtb	r3, r3
     a84:	e1a01003 	mov	r1, r3
     a88:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     a8c:	ebffff85 	bl	8a8 <putc>
     a90:	ea00005d 	b	c0c <printf+0x1f8>
     a94:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a98:	e3530025 	cmp	r3, #37	; 0x25
     a9c:	1a00005a 	bne	c0c <printf+0x1f8>
     aa0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     aa4:	e3530064 	cmp	r3, #100	; 0x64
     aa8:	1a00000a 	bne	ad8 <printf+0xc4>
     aac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ab0:	e5933000 	ldr	r3, [r3]
     ab4:	e1a01003 	mov	r1, r3
     ab8:	e3a03001 	mov	r3, #1
     abc:	e3a0200a 	mov	r2, #10
     ac0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ac4:	ebffff85 	bl	8e0 <printint>
     ac8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     acc:	e2833004 	add	r3, r3, #4
     ad0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ad4:	ea00004a 	b	c04 <printf+0x1f0>
     ad8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     adc:	e3530078 	cmp	r3, #120	; 0x78
     ae0:	0a000002 	beq	af0 <printf+0xdc>
     ae4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ae8:	e3530070 	cmp	r3, #112	; 0x70
     aec:	1a00000a 	bne	b1c <printf+0x108>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     af4:	e5933000 	ldr	r3, [r3]
     af8:	e1a01003 	mov	r1, r3
     afc:	e3a03000 	mov	r3, #0
     b00:	e3a02010 	mov	r2, #16
     b04:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b08:	ebffff74 	bl	8e0 <printint>
     b0c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b10:	e2833004 	add	r3, r3, #4
     b14:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b18:	ea000039 	b	c04 <printf+0x1f0>
     b1c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b20:	e3530073 	cmp	r3, #115	; 0x73
     b24:	1a000018 	bne	b8c <printf+0x178>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b2c:	e5933000 	ldr	r3, [r3]
     b30:	e50b300c 	str	r3, [fp, #-12]
     b34:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b38:	e2833004 	add	r3, r3, #4
     b3c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b40:	e51b300c 	ldr	r3, [fp, #-12]
     b44:	e3530000 	cmp	r3, #0
     b48:	1a00000a 	bne	b78 <printf+0x164>
     b4c:	e59f30f0 	ldr	r3, [pc, #240]	; c44 <printf+0x230>
     b50:	e50b300c 	str	r3, [fp, #-12]
     b54:	ea000007 	b	b78 <printf+0x164>
     b58:	e51b300c 	ldr	r3, [fp, #-12]
     b5c:	e5d33000 	ldrb	r3, [r3]
     b60:	e1a01003 	mov	r1, r3
     b64:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b68:	ebffff4e 	bl	8a8 <putc>
     b6c:	e51b300c 	ldr	r3, [fp, #-12]
     b70:	e2833001 	add	r3, r3, #1
     b74:	e50b300c 	str	r3, [fp, #-12]
     b78:	e51b300c 	ldr	r3, [fp, #-12]
     b7c:	e5d33000 	ldrb	r3, [r3]
     b80:	e3530000 	cmp	r3, #0
     b84:	1afffff3 	bne	b58 <printf+0x144>
     b88:	ea00001d 	b	c04 <printf+0x1f0>
     b8c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b90:	e3530063 	cmp	r3, #99	; 0x63
     b94:	1a000009 	bne	bc0 <printf+0x1ac>
     b98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b9c:	e5933000 	ldr	r3, [r3]
     ba0:	e6ef3073 	uxtb	r3, r3
     ba4:	e1a01003 	mov	r1, r3
     ba8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bac:	ebffff3d 	bl	8a8 <putc>
     bb0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bb4:	e2833004 	add	r3, r3, #4
     bb8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bbc:	ea000010 	b	c04 <printf+0x1f0>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bc4:	e3530025 	cmp	r3, #37	; 0x25
     bc8:	1a000005 	bne	be4 <printf+0x1d0>
     bcc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bd0:	e6ef3073 	uxtb	r3, r3
     bd4:	e1a01003 	mov	r1, r3
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bdc:	ebffff31 	bl	8a8 <putc>
     be0:	ea000007 	b	c04 <printf+0x1f0>
     be4:	e3a01025 	mov	r1, #37	; 0x25
     be8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bec:	ebffff2d 	bl	8a8 <putc>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bf4:	e6ef3073 	uxtb	r3, r3
     bf8:	e1a01003 	mov	r1, r3
     bfc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c00:	ebffff28 	bl	8a8 <putc>
     c04:	e3a03000 	mov	r3, #0
     c08:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c0c:	e51b3010 	ldr	r3, [fp, #-16]
     c10:	e2833001 	add	r3, r3, #1
     c14:	e50b3010 	str	r3, [fp, #-16]
     c18:	e59b2004 	ldr	r2, [fp, #4]
     c1c:	e51b3010 	ldr	r3, [fp, #-16]
     c20:	e0823003 	add	r3, r2, r3
     c24:	e5d33000 	ldrb	r3, [r3]
     c28:	e3530000 	cmp	r3, #0
     c2c:	1affff84 	bne	a44 <printf+0x30>
     c30:	e1a00000 	nop			; (mov r0, r0)
     c34:	e24bd004 	sub	sp, fp, #4
     c38:	e8bd4800 	pop	{fp, lr}
     c3c:	e28dd00c 	add	sp, sp, #12
     c40:	e12fff1e 	bx	lr
     c44:	000010cc 	.word	0x000010cc

00000c48 <free>:
     c48:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c4c:	e28db000 	add	fp, sp, #0
     c50:	e24dd014 	sub	sp, sp, #20
     c54:	e50b0010 	str	r0, [fp, #-16]
     c58:	e51b3010 	ldr	r3, [fp, #-16]
     c5c:	e2433008 	sub	r3, r3, #8
     c60:	e50b300c 	str	r3, [fp, #-12]
     c64:	e59f3154 	ldr	r3, [pc, #340]	; dc0 <free+0x178>
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e50b3008 	str	r3, [fp, #-8]
     c70:	ea000010 	b	cb8 <free+0x70>
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e5933000 	ldr	r3, [r3]
     c7c:	e51b2008 	ldr	r2, [fp, #-8]
     c80:	e1520003 	cmp	r2, r3
     c84:	3a000008 	bcc	cac <free+0x64>
     c88:	e51b200c 	ldr	r2, [fp, #-12]
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e1520003 	cmp	r2, r3
     c94:	8a000010 	bhi	cdc <free+0x94>
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e5933000 	ldr	r3, [r3]
     ca0:	e51b200c 	ldr	r2, [fp, #-12]
     ca4:	e1520003 	cmp	r2, r3
     ca8:	3a00000b 	bcc	cdc <free+0x94>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e5933000 	ldr	r3, [r3]
     cb4:	e50b3008 	str	r3, [fp, #-8]
     cb8:	e51b200c 	ldr	r2, [fp, #-12]
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e1520003 	cmp	r2, r3
     cc4:	9affffea 	bls	c74 <free+0x2c>
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e51b200c 	ldr	r2, [fp, #-12]
     cd4:	e1520003 	cmp	r2, r3
     cd8:	2affffe5 	bcs	c74 <free+0x2c>
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e5933004 	ldr	r3, [r3, #4]
     ce4:	e1a03183 	lsl	r3, r3, #3
     ce8:	e51b200c 	ldr	r2, [fp, #-12]
     cec:	e0822003 	add	r2, r2, r3
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	1a00000d 	bne	d38 <free+0xf0>
     d00:	e51b300c 	ldr	r3, [fp, #-12]
     d04:	e5932004 	ldr	r2, [r3, #4]
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e5933004 	ldr	r3, [r3, #4]
     d14:	e0822003 	add	r2, r2, r3
     d18:	e51b300c 	ldr	r3, [fp, #-12]
     d1c:	e5832004 	str	r2, [r3, #4]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5933000 	ldr	r3, [r3]
     d28:	e5932000 	ldr	r2, [r3]
     d2c:	e51b300c 	ldr	r3, [fp, #-12]
     d30:	e5832000 	str	r2, [r3]
     d34:	ea000003 	b	d48 <free+0x100>
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e5932000 	ldr	r2, [r3]
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e5832000 	str	r2, [r3]
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933004 	ldr	r3, [r3, #4]
     d50:	e1a03183 	lsl	r3, r3, #3
     d54:	e51b2008 	ldr	r2, [fp, #-8]
     d58:	e0823003 	add	r3, r2, r3
     d5c:	e51b200c 	ldr	r2, [fp, #-12]
     d60:	e1520003 	cmp	r2, r3
     d64:	1a00000b 	bne	d98 <free+0x150>
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5932004 	ldr	r2, [r3, #4]
     d70:	e51b300c 	ldr	r3, [fp, #-12]
     d74:	e5933004 	ldr	r3, [r3, #4]
     d78:	e0822003 	add	r2, r2, r3
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5832004 	str	r2, [r3, #4]
     d84:	e51b300c 	ldr	r3, [fp, #-12]
     d88:	e5932000 	ldr	r2, [r3]
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e5832000 	str	r2, [r3]
     d94:	ea000002 	b	da4 <free+0x15c>
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e5832000 	str	r2, [r3]
     da4:	e59f2014 	ldr	r2, [pc, #20]	; dc0 <free+0x178>
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5823000 	str	r3, [r2]
     db0:	e1a00000 	nop			; (mov r0, r0)
     db4:	e28bd000 	add	sp, fp, #0
     db8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     dbc:	e12fff1e 	bx	lr
     dc0:	000010f0 	.word	0x000010f0

00000dc4 <morecore>:
     dc4:	e92d4800 	push	{fp, lr}
     dc8:	e28db004 	add	fp, sp, #4
     dcc:	e24dd010 	sub	sp, sp, #16
     dd0:	e50b0010 	str	r0, [fp, #-16]
     dd4:	e51b3010 	ldr	r3, [fp, #-16]
     dd8:	e3530a01 	cmp	r3, #4096	; 0x1000
     ddc:	2a000001 	bcs	de8 <morecore+0x24>
     de0:	e3a03a01 	mov	r3, #4096	; 0x1000
     de4:	e50b3010 	str	r3, [fp, #-16]
     de8:	e51b3010 	ldr	r3, [fp, #-16]
     dec:	e1a03183 	lsl	r3, r3, #3
     df0:	e1a00003 	mov	r0, r3
     df4:	ebfffe63 	bl	788 <sbrk>
     df8:	e50b0008 	str	r0, [fp, #-8]
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e3730001 	cmn	r3, #1
     e04:	1a000001 	bne	e10 <morecore+0x4c>
     e08:	e3a03000 	mov	r3, #0
     e0c:	ea00000a 	b	e3c <morecore+0x78>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e51b2010 	ldr	r2, [fp, #-16]
     e20:	e5832004 	str	r2, [r3, #4]
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e2833008 	add	r3, r3, #8
     e2c:	e1a00003 	mov	r0, r3
     e30:	ebffff84 	bl	c48 <free>
     e34:	e59f300c 	ldr	r3, [pc, #12]	; e48 <morecore+0x84>
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e1a00003 	mov	r0, r3
     e40:	e24bd004 	sub	sp, fp, #4
     e44:	e8bd8800 	pop	{fp, pc}
     e48:	000010f0 	.word	0x000010f0

00000e4c <malloc>:
     e4c:	e92d4800 	push	{fp, lr}
     e50:	e28db004 	add	fp, sp, #4
     e54:	e24dd018 	sub	sp, sp, #24
     e58:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e5c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e60:	e2833007 	add	r3, r3, #7
     e64:	e1a031a3 	lsr	r3, r3, #3
     e68:	e2833001 	add	r3, r3, #1
     e6c:	e50b3010 	str	r3, [fp, #-16]
     e70:	e59f3134 	ldr	r3, [pc, #308]	; fac <malloc+0x160>
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e3530000 	cmp	r3, #0
     e84:	1a00000b 	bne	eb8 <malloc+0x6c>
     e88:	e59f3120 	ldr	r3, [pc, #288]	; fb0 <malloc+0x164>
     e8c:	e50b300c 	str	r3, [fp, #-12]
     e90:	e59f2114 	ldr	r2, [pc, #276]	; fac <malloc+0x160>
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e5823000 	str	r3, [r2]
     e9c:	e59f3108 	ldr	r3, [pc, #264]	; fac <malloc+0x160>
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e59f2104 	ldr	r2, [pc, #260]	; fb0 <malloc+0x164>
     ea8:	e5823000 	str	r3, [r2]
     eac:	e59f30fc 	ldr	r3, [pc, #252]	; fb0 <malloc+0x164>
     eb0:	e3a02000 	mov	r2, #0
     eb4:	e5832004 	str	r2, [r3, #4]
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e5933000 	ldr	r3, [r3]
     ec0:	e50b3008 	str	r3, [fp, #-8]
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5933004 	ldr	r3, [r3, #4]
     ecc:	e51b2010 	ldr	r2, [fp, #-16]
     ed0:	e1520003 	cmp	r2, r3
     ed4:	8a00001e 	bhi	f54 <malloc+0x108>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5933004 	ldr	r3, [r3, #4]
     ee0:	e51b2010 	ldr	r2, [fp, #-16]
     ee4:	e1520003 	cmp	r2, r3
     ee8:	1a000004 	bne	f00 <malloc+0xb4>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5932000 	ldr	r2, [r3]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5832000 	str	r2, [r3]
     efc:	ea00000e 	b	f3c <malloc+0xf0>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5932004 	ldr	r2, [r3, #4]
     f08:	e51b3010 	ldr	r3, [fp, #-16]
     f0c:	e0422003 	sub	r2, r2, r3
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5832004 	str	r2, [r3, #4]
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5933004 	ldr	r3, [r3, #4]
     f20:	e1a03183 	lsl	r3, r3, #3
     f24:	e51b2008 	ldr	r2, [fp, #-8]
     f28:	e0823003 	add	r3, r2, r3
     f2c:	e50b3008 	str	r3, [fp, #-8]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e51b2010 	ldr	r2, [fp, #-16]
     f38:	e5832004 	str	r2, [r3, #4]
     f3c:	e59f2068 	ldr	r2, [pc, #104]	; fac <malloc+0x160>
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5823000 	str	r3, [r2]
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e2833008 	add	r3, r3, #8
     f50:	ea000012 	b	fa0 <malloc+0x154>
     f54:	e59f3050 	ldr	r3, [pc, #80]	; fac <malloc+0x160>
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e51b2008 	ldr	r2, [fp, #-8]
     f60:	e1520003 	cmp	r2, r3
     f64:	1a000007 	bne	f88 <malloc+0x13c>
     f68:	e51b0010 	ldr	r0, [fp, #-16]
     f6c:	ebffff94 	bl	dc4 <morecore>
     f70:	e50b0008 	str	r0, [fp, #-8]
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e3530000 	cmp	r3, #0
     f7c:	1a000001 	bne	f88 <malloc+0x13c>
     f80:	e3a03000 	mov	r3, #0
     f84:	ea000005 	b	fa0 <malloc+0x154>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e50b300c 	str	r3, [fp, #-12]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e50b3008 	str	r3, [fp, #-8]
     f9c:	eaffffc8 	b	ec4 <malloc+0x78>
     fa0:	e1a00003 	mov	r0, r3
     fa4:	e24bd004 	sub	sp, fp, #4
     fa8:	e8bd8800 	pop	{fp, pc}
     fac:	000010f0 	.word	0x000010f0
     fb0:	000010e8 	.word	0x000010e8

00000fb4 <__udivsi3>:
     fb4:	e2512001 	subs	r2, r1, #1
     fb8:	012fff1e 	bxeq	lr
     fbc:	3a000036 	bcc	109c <__udivsi3+0xe8>
     fc0:	e1500001 	cmp	r0, r1
     fc4:	9a000022 	bls	1054 <__udivsi3+0xa0>
     fc8:	e1110002 	tst	r1, r2
     fcc:	0a000023 	beq	1060 <__udivsi3+0xac>
     fd0:	e311020e 	tst	r1, #-536870912	; 0xe0000000
     fd4:	01a01181 	lsleq	r1, r1, #3
     fd8:	03a03008 	moveq	r3, #8
     fdc:	13a03001 	movne	r3, #1
     fe0:	e3510201 	cmp	r1, #268435456	; 0x10000000
     fe4:	31510000 	cmpcc	r1, r0
     fe8:	31a01201 	lslcc	r1, r1, #4
     fec:	31a03203 	lslcc	r3, r3, #4
     ff0:	3afffffa 	bcc	fe0 <__udivsi3+0x2c>
     ff4:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
     ff8:	31510000 	cmpcc	r1, r0
     ffc:	31a01081 	lslcc	r1, r1, #1
    1000:	31a03083 	lslcc	r3, r3, #1
    1004:	3afffffa 	bcc	ff4 <__udivsi3+0x40>
    1008:	e3a02000 	mov	r2, #0
    100c:	e1500001 	cmp	r0, r1
    1010:	20400001 	subcs	r0, r0, r1
    1014:	21822003 	orrcs	r2, r2, r3
    1018:	e15000a1 	cmp	r0, r1, lsr #1
    101c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1020:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1024:	e1500121 	cmp	r0, r1, lsr #2
    1028:	20400121 	subcs	r0, r0, r1, lsr #2
    102c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1030:	e15001a1 	cmp	r0, r1, lsr #3
    1034:	204001a1 	subcs	r0, r0, r1, lsr #3
    1038:	218221a3 	orrcs	r2, r2, r3, lsr #3
    103c:	e3500000 	cmp	r0, #0
    1040:	11b03223 	lsrsne	r3, r3, #4
    1044:	11a01221 	lsrne	r1, r1, #4
    1048:	1affffef 	bne	100c <__udivsi3+0x58>
    104c:	e1a00002 	mov	r0, r2
    1050:	e12fff1e 	bx	lr
    1054:	03a00001 	moveq	r0, #1
    1058:	13a00000 	movne	r0, #0
    105c:	e12fff1e 	bx	lr
    1060:	e3510801 	cmp	r1, #65536	; 0x10000
    1064:	21a01821 	lsrcs	r1, r1, #16
    1068:	23a02010 	movcs	r2, #16
    106c:	33a02000 	movcc	r2, #0
    1070:	e3510c01 	cmp	r1, #256	; 0x100
    1074:	21a01421 	lsrcs	r1, r1, #8
    1078:	22822008 	addcs	r2, r2, #8
    107c:	e3510010 	cmp	r1, #16
    1080:	21a01221 	lsrcs	r1, r1, #4
    1084:	22822004 	addcs	r2, r2, #4
    1088:	e3510004 	cmp	r1, #4
    108c:	82822003 	addhi	r2, r2, #3
    1090:	908220a1 	addls	r2, r2, r1, lsr #1
    1094:	e1a00230 	lsr	r0, r0, r2
    1098:	e12fff1e 	bx	lr
    109c:	e3500000 	cmp	r0, #0
    10a0:	13e00000 	mvnne	r0, #0
    10a4:	ea000007 	b	10c8 <__aeabi_idiv0>

000010a8 <__aeabi_uidivmod>:
    10a8:	e3510000 	cmp	r1, #0
    10ac:	0afffffa 	beq	109c <__udivsi3+0xe8>
    10b0:	e92d4003 	push	{r0, r1, lr}
    10b4:	ebffffbe 	bl	fb4 <__udivsi3>
    10b8:	e8bd4006 	pop	{r1, r2, lr}
    10bc:	e0030092 	mul	r3, r2, r0
    10c0:	e0411003 	sub	r1, r1, r3
    10c4:	e12fff1e 	bx	lr

000010c8 <__aeabi_idiv0>:
    10c8:	e12fff1e 	bx	lr
