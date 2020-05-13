
_suspend:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      14:	eb000148 	bl	53c <fork>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e3530000 	cmp	r3, #0
      24:	1a00000c 	bne	5c <main+0x5c>
      28:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      2c:	e2833004 	add	r3, r3, #4
      30:	e5933000 	ldr	r3, [r3]
      34:	e1a00003 	mov	r0, r3
      38:	eb000101 	bl	444 <atoi>
      3c:	e1a02000 	mov	r2, r0
      40:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
      44:	e2833008 	add	r3, r3, #8
      48:	e5933000 	ldr	r3, [r3]
      4c:	e1a01003 	mov	r1, r3
      50:	e1a00002 	mov	r0, r2
      54:	eb000210 	bl	89c <suspend>
      58:	eb000140 	bl	560 <exit>
      5c:	eb000148 	bl	584 <wait>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	eb00013d 	bl	560 <exit>

00000068 <strcpy>:
      68:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      6c:	e28db000 	add	fp, sp, #0
      70:	e24dd014 	sub	sp, sp, #20
      74:	e50b0010 	str	r0, [fp, #-16]
      78:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      7c:	e51b3010 	ldr	r3, [fp, #-16]
      80:	e50b3008 	str	r3, [fp, #-8]
      84:	e1a00000 	nop			; (mov r0, r0)
      88:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      8c:	e2823001 	add	r3, r2, #1
      90:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      94:	e51b3010 	ldr	r3, [fp, #-16]
      98:	e2831001 	add	r1, r3, #1
      9c:	e50b1010 	str	r1, [fp, #-16]
      a0:	e5d22000 	ldrb	r2, [r2]
      a4:	e5c32000 	strb	r2, [r3]
      a8:	e5d33000 	ldrb	r3, [r3]
      ac:	e3530000 	cmp	r3, #0
      b0:	1afffff4 	bne	88 <strcpy+0x20>
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e1a00003 	mov	r0, r3
      bc:	e28bd000 	add	sp, fp, #0
      c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      c4:	e12fff1e 	bx	lr

000000c8 <strcmp>:
      c8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      cc:	e28db000 	add	fp, sp, #0
      d0:	e24dd00c 	sub	sp, sp, #12
      d4:	e50b0008 	str	r0, [fp, #-8]
      d8:	e50b100c 	str	r1, [fp, #-12]
      dc:	ea000005 	b	f8 <strcmp+0x30>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b300c 	ldr	r3, [fp, #-12]
      f0:	e2833001 	add	r3, r3, #1
      f4:	e50b300c 	str	r3, [fp, #-12]
      f8:	e51b3008 	ldr	r3, [fp, #-8]
      fc:	e5d33000 	ldrb	r3, [r3]
     100:	e3530000 	cmp	r3, #0
     104:	0a000005 	beq	120 <strcmp+0x58>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e5d32000 	ldrb	r2, [r3]
     110:	e51b300c 	ldr	r3, [fp, #-12]
     114:	e5d33000 	ldrb	r3, [r3]
     118:	e1520003 	cmp	r2, r3
     11c:	0affffef 	beq	e0 <strcmp+0x18>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e1a02003 	mov	r2, r3
     12c:	e51b300c 	ldr	r3, [fp, #-12]
     130:	e5d33000 	ldrb	r3, [r3]
     134:	e0423003 	sub	r3, r2, r3
     138:	e1a00003 	mov	r0, r3
     13c:	e28bd000 	add	sp, fp, #0
     140:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     144:	e12fff1e 	bx	lr

00000148 <strlen>:
     148:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     14c:	e28db000 	add	fp, sp, #0
     150:	e24dd014 	sub	sp, sp, #20
     154:	e50b0010 	str	r0, [fp, #-16]
     158:	e3a03000 	mov	r3, #0
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	ea000002 	b	170 <strlen+0x28>
     164:	e51b3008 	ldr	r3, [fp, #-8]
     168:	e2833001 	add	r3, r3, #1
     16c:	e50b3008 	str	r3, [fp, #-8]
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e51b2010 	ldr	r2, [fp, #-16]
     178:	e0823003 	add	r3, r2, r3
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e3530000 	cmp	r3, #0
     184:	1afffff6 	bne	164 <strlen+0x1c>
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e1a00003 	mov	r0, r3
     190:	e28bd000 	add	sp, fp, #0
     194:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     198:	e12fff1e 	bx	lr

0000019c <memset>:
     19c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1a0:	e28db000 	add	fp, sp, #0
     1a4:	e24dd024 	sub	sp, sp, #36	; 0x24
     1a8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     1ac:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     1b0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     1b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     1c0:	e54b300d 	strb	r3, [fp, #-13]
     1c4:	e55b300d 	ldrb	r3, [fp, #-13]
     1c8:	e1a02c03 	lsl	r2, r3, #24
     1cc:	e55b300d 	ldrb	r3, [fp, #-13]
     1d0:	e1a03803 	lsl	r3, r3, #16
     1d4:	e1822003 	orr	r2, r2, r3
     1d8:	e55b300d 	ldrb	r3, [fp, #-13]
     1dc:	e1a03403 	lsl	r3, r3, #8
     1e0:	e1822003 	orr	r2, r2, r3
     1e4:	e55b300d 	ldrb	r3, [fp, #-13]
     1e8:	e1823003 	orr	r3, r2, r3
     1ec:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     1f0:	ea000008 	b	218 <memset+0x7c>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e55b200d 	ldrb	r2, [fp, #-13]
     1fc:	e5c32000 	strb	r2, [r3]
     200:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     204:	e2433001 	sub	r3, r3, #1
     208:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e2833001 	add	r3, r3, #1
     214:	e50b3008 	str	r3, [fp, #-8]
     218:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     21c:	e3530000 	cmp	r3, #0
     220:	0a000003 	beq	234 <memset+0x98>
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e2033003 	and	r3, r3, #3
     22c:	e3530000 	cmp	r3, #0
     230:	1affffef 	bne	1f4 <memset+0x58>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e50b300c 	str	r3, [fp, #-12]
     23c:	ea000008 	b	264 <memset+0xc8>
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     248:	e5832000 	str	r2, [r3]
     24c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     250:	e2433004 	sub	r3, r3, #4
     254:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     258:	e51b300c 	ldr	r3, [fp, #-12]
     25c:	e2833004 	add	r3, r3, #4
     260:	e50b300c 	str	r3, [fp, #-12]
     264:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     268:	e3530003 	cmp	r3, #3
     26c:	8afffff3 	bhi	240 <memset+0xa4>
     270:	e51b300c 	ldr	r3, [fp, #-12]
     274:	e50b3008 	str	r3, [fp, #-8]
     278:	ea000008 	b	2a0 <memset+0x104>
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e55b200d 	ldrb	r2, [fp, #-13]
     284:	e5c32000 	strb	r2, [r3]
     288:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     28c:	e2433001 	sub	r3, r3, #1
     290:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e2833001 	add	r3, r3, #1
     29c:	e50b3008 	str	r3, [fp, #-8]
     2a0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2a4:	e3530000 	cmp	r3, #0
     2a8:	1afffff3 	bne	27c <memset+0xe0>
     2ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2b0:	e1a00003 	mov	r0, r3
     2b4:	e28bd000 	add	sp, fp, #0
     2b8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2bc:	e12fff1e 	bx	lr

000002c0 <strchr>:
     2c0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2c4:	e28db000 	add	fp, sp, #0
     2c8:	e24dd00c 	sub	sp, sp, #12
     2cc:	e50b0008 	str	r0, [fp, #-8]
     2d0:	e1a03001 	mov	r3, r1
     2d4:	e54b3009 	strb	r3, [fp, #-9]
     2d8:	ea000009 	b	304 <strchr+0x44>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e5d33000 	ldrb	r3, [r3]
     2e4:	e55b2009 	ldrb	r2, [fp, #-9]
     2e8:	e1520003 	cmp	r2, r3
     2ec:	1a000001 	bne	2f8 <strchr+0x38>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	ea000007 	b	318 <strchr+0x58>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e2833001 	add	r3, r3, #1
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e3530000 	cmp	r3, #0
     310:	1afffff1 	bne	2dc <strchr+0x1c>
     314:	e3a03000 	mov	r3, #0
     318:	e1a00003 	mov	r0, r3
     31c:	e28bd000 	add	sp, fp, #0
     320:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     324:	e12fff1e 	bx	lr

00000328 <gets>:
     328:	e92d4800 	push	{fp, lr}
     32c:	e28db004 	add	fp, sp, #4
     330:	e24dd018 	sub	sp, sp, #24
     334:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     338:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     33c:	e3a03000 	mov	r3, #0
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	ea000016 	b	3a4 <gets+0x7c>
     348:	e24b300d 	sub	r3, fp, #13
     34c:	e3a02001 	mov	r2, #1
     350:	e1a01003 	mov	r1, r3
     354:	e3a00000 	mov	r0, #0
     358:	eb00009b 	bl	5cc <read>
     35c:	e50b000c 	str	r0, [fp, #-12]
     360:	e51b300c 	ldr	r3, [fp, #-12]
     364:	e3530000 	cmp	r3, #0
     368:	da000013 	ble	3bc <gets+0x94>
     36c:	e51b3008 	ldr	r3, [fp, #-8]
     370:	e2832001 	add	r2, r3, #1
     374:	e50b2008 	str	r2, [fp, #-8]
     378:	e1a02003 	mov	r2, r3
     37c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     380:	e0833002 	add	r3, r3, r2
     384:	e55b200d 	ldrb	r2, [fp, #-13]
     388:	e5c32000 	strb	r2, [r3]
     38c:	e55b300d 	ldrb	r3, [fp, #-13]
     390:	e353000a 	cmp	r3, #10
     394:	0a000009 	beq	3c0 <gets+0x98>
     398:	e55b300d 	ldrb	r3, [fp, #-13]
     39c:	e353000d 	cmp	r3, #13
     3a0:	0a000006 	beq	3c0 <gets+0x98>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2833001 	add	r3, r3, #1
     3ac:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     3b0:	e1520003 	cmp	r2, r3
     3b4:	caffffe3 	bgt	348 <gets+0x20>
     3b8:	ea000000 	b	3c0 <gets+0x98>
     3bc:	e1a00000 	nop			; (mov r0, r0)
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     3c8:	e0823003 	add	r3, r2, r3
     3cc:	e3a02000 	mov	r2, #0
     3d0:	e5c32000 	strb	r2, [r3]
     3d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3d8:	e1a00003 	mov	r0, r3
     3dc:	e24bd004 	sub	sp, fp, #4
     3e0:	e8bd8800 	pop	{fp, pc}

000003e4 <stat>:
     3e4:	e92d4800 	push	{fp, lr}
     3e8:	e28db004 	add	fp, sp, #4
     3ec:	e24dd010 	sub	sp, sp, #16
     3f0:	e50b0010 	str	r0, [fp, #-16]
     3f4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3f8:	e3a01000 	mov	r1, #0
     3fc:	e51b0010 	ldr	r0, [fp, #-16]
     400:	eb00009e 	bl	680 <open>
     404:	e50b0008 	str	r0, [fp, #-8]
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e3530000 	cmp	r3, #0
     410:	aa000001 	bge	41c <stat+0x38>
     414:	e3e03000 	mvn	r3, #0
     418:	ea000006 	b	438 <stat+0x54>
     41c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     420:	e51b0008 	ldr	r0, [fp, #-8]
     424:	eb0000b0 	bl	6ec <fstat>
     428:	e50b000c 	str	r0, [fp, #-12]
     42c:	e51b0008 	ldr	r0, [fp, #-8]
     430:	eb000077 	bl	614 <close>
     434:	e51b300c 	ldr	r3, [fp, #-12]
     438:	e1a00003 	mov	r0, r3
     43c:	e24bd004 	sub	sp, fp, #4
     440:	e8bd8800 	pop	{fp, pc}

00000444 <atoi>:
     444:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     448:	e28db000 	add	fp, sp, #0
     44c:	e24dd014 	sub	sp, sp, #20
     450:	e50b0010 	str	r0, [fp, #-16]
     454:	e3a03000 	mov	r3, #0
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea00000c 	b	494 <atoi+0x50>
     460:	e51b2008 	ldr	r2, [fp, #-8]
     464:	e1a03002 	mov	r3, r2
     468:	e1a03103 	lsl	r3, r3, #2
     46c:	e0833002 	add	r3, r3, r2
     470:	e1a03083 	lsl	r3, r3, #1
     474:	e1a01003 	mov	r1, r3
     478:	e51b3010 	ldr	r3, [fp, #-16]
     47c:	e2832001 	add	r2, r3, #1
     480:	e50b2010 	str	r2, [fp, #-16]
     484:	e5d33000 	ldrb	r3, [r3]
     488:	e0813003 	add	r3, r1, r3
     48c:	e2433030 	sub	r3, r3, #48	; 0x30
     490:	e50b3008 	str	r3, [fp, #-8]
     494:	e51b3010 	ldr	r3, [fp, #-16]
     498:	e5d33000 	ldrb	r3, [r3]
     49c:	e353002f 	cmp	r3, #47	; 0x2f
     4a0:	9a000003 	bls	4b4 <atoi+0x70>
     4a4:	e51b3010 	ldr	r3, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e3530039 	cmp	r3, #57	; 0x39
     4b0:	9affffea 	bls	460 <atoi+0x1c>
     4b4:	e51b3008 	ldr	r3, [fp, #-8]
     4b8:	e1a00003 	mov	r0, r3
     4bc:	e28bd000 	add	sp, fp, #0
     4c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4c4:	e12fff1e 	bx	lr

000004c8 <memmove>:
     4c8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4cc:	e28db000 	add	fp, sp, #0
     4d0:	e24dd01c 	sub	sp, sp, #28
     4d4:	e50b0010 	str	r0, [fp, #-16]
     4d8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4dc:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4e0:	e51b3010 	ldr	r3, [fp, #-16]
     4e4:	e50b3008 	str	r3, [fp, #-8]
     4e8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     4ec:	e50b300c 	str	r3, [fp, #-12]
     4f0:	ea000007 	b	514 <memmove+0x4c>
     4f4:	e51b200c 	ldr	r2, [fp, #-12]
     4f8:	e2823001 	add	r3, r2, #1
     4fc:	e50b300c 	str	r3, [fp, #-12]
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e2831001 	add	r1, r3, #1
     508:	e50b1008 	str	r1, [fp, #-8]
     50c:	e5d22000 	ldrb	r2, [r2]
     510:	e5c32000 	strb	r2, [r3]
     514:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     518:	e2432001 	sub	r2, r3, #1
     51c:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     520:	e3530000 	cmp	r3, #0
     524:	cafffff2 	bgt	4f4 <memmove+0x2c>
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e1a00003 	mov	r0, r3
     530:	e28bd000 	add	sp, fp, #0
     534:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     538:	e12fff1e 	bx	lr

0000053c <fork>:
     53c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     540:	e1a04003 	mov	r4, r3
     544:	e1a03002 	mov	r3, r2
     548:	e1a02001 	mov	r2, r1
     54c:	e1a01000 	mov	r1, r0
     550:	e3a00001 	mov	r0, #1
     554:	ef000000 	svc	0x00000000
     558:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <exit>:
     560:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     564:	e1a04003 	mov	r4, r3
     568:	e1a03002 	mov	r3, r2
     56c:	e1a02001 	mov	r2, r1
     570:	e1a01000 	mov	r1, r0
     574:	e3a00002 	mov	r0, #2
     578:	ef000000 	svc	0x00000000
     57c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <wait>:
     584:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00003 	mov	r0, #3
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <pipe>:
     5a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00004 	mov	r0, #4
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <read>:
     5cc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00005 	mov	r0, #5
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <write>:
     5f0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00010 	mov	r0, #16
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <close>:
     614:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00015 	mov	r0, #21
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <kill>:
     638:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00006 	mov	r0, #6
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <exec>:
     65c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00007 	mov	r0, #7
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <open>:
     680:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a0000f 	mov	r0, #15
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <mknod>:
     6a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00011 	mov	r0, #17
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <unlink>:
     6c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00012 	mov	r0, #18
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <fstat>:
     6ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00008 	mov	r0, #8
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <link>:
     710:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00013 	mov	r0, #19
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <mkdir>:
     734:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00014 	mov	r0, #20
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <chdir>:
     758:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00009 	mov	r0, #9
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <dup>:
     77c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a0000a 	mov	r0, #10
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <getpid>:
     7a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a0000b 	mov	r0, #11
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <sbrk>:
     7c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000c 	mov	r0, #12
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <sleep>:
     7e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a0000d 	mov	r0, #13
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <uptime>:
     80c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000e 	mov	r0, #14
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <memfree>:
     830:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00016 	mov	r0, #22
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <traceon>:
     854:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00017 	mov	r0, #23
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <getps>:
     878:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00018 	mov	r0, #24
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <suspend>:
     89c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00019 	mov	r0, #25
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <resume>:
     8c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a0001a 	mov	r0, #26
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <putc>:
     8e4:	e92d4800 	push	{fp, lr}
     8e8:	e28db004 	add	fp, sp, #4
     8ec:	e24dd008 	sub	sp, sp, #8
     8f0:	e50b0008 	str	r0, [fp, #-8]
     8f4:	e1a03001 	mov	r3, r1
     8f8:	e54b3009 	strb	r3, [fp, #-9]
     8fc:	e24b3009 	sub	r3, fp, #9
     900:	e3a02001 	mov	r2, #1
     904:	e1a01003 	mov	r1, r3
     908:	e51b0008 	ldr	r0, [fp, #-8]
     90c:	ebffff37 	bl	5f0 <write>
     910:	e1a00000 	nop			; (mov r0, r0)
     914:	e24bd004 	sub	sp, fp, #4
     918:	e8bd8800 	pop	{fp, pc}

0000091c <printint>:
     91c:	e92d4800 	push	{fp, lr}
     920:	e28db004 	add	fp, sp, #4
     924:	e24dd030 	sub	sp, sp, #48	; 0x30
     928:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     92c:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     930:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     934:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     938:	e3a03000 	mov	r3, #0
     93c:	e50b300c 	str	r3, [fp, #-12]
     940:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     944:	e3530000 	cmp	r3, #0
     948:	0a000008 	beq	970 <printint+0x54>
     94c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     950:	e3530000 	cmp	r3, #0
     954:	aa000005 	bge	970 <printint+0x54>
     958:	e3a03001 	mov	r3, #1
     95c:	e50b300c 	str	r3, [fp, #-12]
     960:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     964:	e2633000 	rsb	r3, r3, #0
     968:	e50b3010 	str	r3, [fp, #-16]
     96c:	ea000001 	b	978 <printint+0x5c>
     970:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     974:	e50b3010 	str	r3, [fp, #-16]
     978:	e3a03000 	mov	r3, #0
     97c:	e50b3008 	str	r3, [fp, #-8]
     980:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     984:	e51b3010 	ldr	r3, [fp, #-16]
     988:	e1a01002 	mov	r1, r2
     98c:	e1a00003 	mov	r0, r3
     990:	eb0001d3 	bl	10e4 <__aeabi_uidivmod>
     994:	e1a03001 	mov	r3, r1
     998:	e1a01003 	mov	r1, r3
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e2832001 	add	r2, r3, #1
     9a4:	e50b2008 	str	r2, [fp, #-8]
     9a8:	e59f209c 	ldr	r2, [pc, #156]	; a4c <printint+0x130>
     9ac:	e7d22001 	ldrb	r2, [r2, r1]
     9b0:	e24b1004 	sub	r1, fp, #4
     9b4:	e0813003 	add	r3, r1, r3
     9b8:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9bc:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     9c0:	e1a01003 	mov	r1, r3
     9c4:	e51b0010 	ldr	r0, [fp, #-16]
     9c8:	eb000188 	bl	ff0 <__udivsi3>
     9cc:	e1a03000 	mov	r3, r0
     9d0:	e50b3010 	str	r3, [fp, #-16]
     9d4:	e51b3010 	ldr	r3, [fp, #-16]
     9d8:	e3530000 	cmp	r3, #0
     9dc:	1affffe7 	bne	980 <printint+0x64>
     9e0:	e51b300c 	ldr	r3, [fp, #-12]
     9e4:	e3530000 	cmp	r3, #0
     9e8:	0a00000e 	beq	a28 <printint+0x10c>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e2832001 	add	r2, r3, #1
     9f4:	e50b2008 	str	r2, [fp, #-8]
     9f8:	e24b2004 	sub	r2, fp, #4
     9fc:	e0823003 	add	r3, r2, r3
     a00:	e3a0202d 	mov	r2, #45	; 0x2d
     a04:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a08:	ea000006 	b	a28 <printint+0x10c>
     a0c:	e24b2020 	sub	r2, fp, #32
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e0823003 	add	r3, r2, r3
     a18:	e5d33000 	ldrb	r3, [r3]
     a1c:	e1a01003 	mov	r1, r3
     a20:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     a24:	ebffffae 	bl	8e4 <putc>
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e2433001 	sub	r3, r3, #1
     a30:	e50b3008 	str	r3, [fp, #-8]
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e3530000 	cmp	r3, #0
     a3c:	aafffff2 	bge	a0c <printint+0xf0>
     a40:	e1a00000 	nop			; (mov r0, r0)
     a44:	e24bd004 	sub	sp, fp, #4
     a48:	e8bd8800 	pop	{fp, pc}
     a4c:	00001110 	.word	0x00001110

00000a50 <printf>:
     a50:	e92d000e 	push	{r1, r2, r3}
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd024 	sub	sp, sp, #36	; 0x24
     a60:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a64:	e3a03000 	mov	r3, #0
     a68:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a6c:	e28b3008 	add	r3, fp, #8
     a70:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a74:	e3a03000 	mov	r3, #0
     a78:	e50b3010 	str	r3, [fp, #-16]
     a7c:	ea000074 	b	c54 <printf+0x204>
     a80:	e59b2004 	ldr	r2, [fp, #4]
     a84:	e51b3010 	ldr	r3, [fp, #-16]
     a88:	e0823003 	add	r3, r2, r3
     a8c:	e5d33000 	ldrb	r3, [r3]
     a90:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     a94:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a98:	e3530000 	cmp	r3, #0
     a9c:	1a00000b 	bne	ad0 <printf+0x80>
     aa0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     aa4:	e3530025 	cmp	r3, #37	; 0x25
     aa8:	1a000002 	bne	ab8 <printf+0x68>
     aac:	e3a03025 	mov	r3, #37	; 0x25
     ab0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     ab4:	ea000063 	b	c48 <printf+0x1f8>
     ab8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     abc:	e6ef3073 	uxtb	r3, r3
     ac0:	e1a01003 	mov	r1, r3
     ac4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ac8:	ebffff85 	bl	8e4 <putc>
     acc:	ea00005d 	b	c48 <printf+0x1f8>
     ad0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ad4:	e3530025 	cmp	r3, #37	; 0x25
     ad8:	1a00005a 	bne	c48 <printf+0x1f8>
     adc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ae0:	e3530064 	cmp	r3, #100	; 0x64
     ae4:	1a00000a 	bne	b14 <printf+0xc4>
     ae8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     aec:	e5933000 	ldr	r3, [r3]
     af0:	e1a01003 	mov	r1, r3
     af4:	e3a03001 	mov	r3, #1
     af8:	e3a0200a 	mov	r2, #10
     afc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b00:	ebffff85 	bl	91c <printint>
     b04:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b08:	e2833004 	add	r3, r3, #4
     b0c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b10:	ea00004a 	b	c40 <printf+0x1f0>
     b14:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b18:	e3530078 	cmp	r3, #120	; 0x78
     b1c:	0a000002 	beq	b2c <printf+0xdc>
     b20:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b24:	e3530070 	cmp	r3, #112	; 0x70
     b28:	1a00000a 	bne	b58 <printf+0x108>
     b2c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b30:	e5933000 	ldr	r3, [r3]
     b34:	e1a01003 	mov	r1, r3
     b38:	e3a03000 	mov	r3, #0
     b3c:	e3a02010 	mov	r2, #16
     b40:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b44:	ebffff74 	bl	91c <printint>
     b48:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b4c:	e2833004 	add	r3, r3, #4
     b50:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b54:	ea000039 	b	c40 <printf+0x1f0>
     b58:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b5c:	e3530073 	cmp	r3, #115	; 0x73
     b60:	1a000018 	bne	bc8 <printf+0x178>
     b64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b68:	e5933000 	ldr	r3, [r3]
     b6c:	e50b300c 	str	r3, [fp, #-12]
     b70:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b74:	e2833004 	add	r3, r3, #4
     b78:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b7c:	e51b300c 	ldr	r3, [fp, #-12]
     b80:	e3530000 	cmp	r3, #0
     b84:	1a00000a 	bne	bb4 <printf+0x164>
     b88:	e59f30f0 	ldr	r3, [pc, #240]	; c80 <printf+0x230>
     b8c:	e50b300c 	str	r3, [fp, #-12]
     b90:	ea000007 	b	bb4 <printf+0x164>
     b94:	e51b300c 	ldr	r3, [fp, #-12]
     b98:	e5d33000 	ldrb	r3, [r3]
     b9c:	e1a01003 	mov	r1, r3
     ba0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ba4:	ebffff4e 	bl	8e4 <putc>
     ba8:	e51b300c 	ldr	r3, [fp, #-12]
     bac:	e2833001 	add	r3, r3, #1
     bb0:	e50b300c 	str	r3, [fp, #-12]
     bb4:	e51b300c 	ldr	r3, [fp, #-12]
     bb8:	e5d33000 	ldrb	r3, [r3]
     bbc:	e3530000 	cmp	r3, #0
     bc0:	1afffff3 	bne	b94 <printf+0x144>
     bc4:	ea00001d 	b	c40 <printf+0x1f0>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bcc:	e3530063 	cmp	r3, #99	; 0x63
     bd0:	1a000009 	bne	bfc <printf+0x1ac>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bd8:	e5933000 	ldr	r3, [r3]
     bdc:	e6ef3073 	uxtb	r3, r3
     be0:	e1a01003 	mov	r1, r3
     be4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     be8:	ebffff3d 	bl	8e4 <putc>
     bec:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bf0:	e2833004 	add	r3, r3, #4
     bf4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bf8:	ea000010 	b	c40 <printf+0x1f0>
     bfc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c00:	e3530025 	cmp	r3, #37	; 0x25
     c04:	1a000005 	bne	c20 <printf+0x1d0>
     c08:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c0c:	e6ef3073 	uxtb	r3, r3
     c10:	e1a01003 	mov	r1, r3
     c14:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c18:	ebffff31 	bl	8e4 <putc>
     c1c:	ea000007 	b	c40 <printf+0x1f0>
     c20:	e3a01025 	mov	r1, #37	; 0x25
     c24:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c28:	ebffff2d 	bl	8e4 <putc>
     c2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c30:	e6ef3073 	uxtb	r3, r3
     c34:	e1a01003 	mov	r1, r3
     c38:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c3c:	ebffff28 	bl	8e4 <putc>
     c40:	e3a03000 	mov	r3, #0
     c44:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c48:	e51b3010 	ldr	r3, [fp, #-16]
     c4c:	e2833001 	add	r3, r3, #1
     c50:	e50b3010 	str	r3, [fp, #-16]
     c54:	e59b2004 	ldr	r2, [fp, #4]
     c58:	e51b3010 	ldr	r3, [fp, #-16]
     c5c:	e0823003 	add	r3, r2, r3
     c60:	e5d33000 	ldrb	r3, [r3]
     c64:	e3530000 	cmp	r3, #0
     c68:	1affff84 	bne	a80 <printf+0x30>
     c6c:	e1a00000 	nop			; (mov r0, r0)
     c70:	e24bd004 	sub	sp, fp, #4
     c74:	e8bd4800 	pop	{fp, lr}
     c78:	e28dd00c 	add	sp, sp, #12
     c7c:	e12fff1e 	bx	lr
     c80:	00001108 	.word	0x00001108

00000c84 <free>:
     c84:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c88:	e28db000 	add	fp, sp, #0
     c8c:	e24dd014 	sub	sp, sp, #20
     c90:	e50b0010 	str	r0, [fp, #-16]
     c94:	e51b3010 	ldr	r3, [fp, #-16]
     c98:	e2433008 	sub	r3, r3, #8
     c9c:	e50b300c 	str	r3, [fp, #-12]
     ca0:	e59f3154 	ldr	r3, [pc, #340]	; dfc <free+0x178>
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e50b3008 	str	r3, [fp, #-8]
     cac:	ea000010 	b	cf4 <free+0x70>
     cb0:	e51b3008 	ldr	r3, [fp, #-8]
     cb4:	e5933000 	ldr	r3, [r3]
     cb8:	e51b2008 	ldr	r2, [fp, #-8]
     cbc:	e1520003 	cmp	r2, r3
     cc0:	3a000008 	bcc	ce8 <free+0x64>
     cc4:	e51b200c 	ldr	r2, [fp, #-12]
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	8a000010 	bhi	d18 <free+0x94>
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e51b200c 	ldr	r2, [fp, #-12]
     ce0:	e1520003 	cmp	r2, r3
     ce4:	3a00000b 	bcc	d18 <free+0x94>
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e50b3008 	str	r3, [fp, #-8]
     cf4:	e51b200c 	ldr	r2, [fp, #-12]
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e1520003 	cmp	r2, r3
     d00:	9affffea 	bls	cb0 <free+0x2c>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e5933000 	ldr	r3, [r3]
     d0c:	e51b200c 	ldr	r2, [fp, #-12]
     d10:	e1520003 	cmp	r2, r3
     d14:	2affffe5 	bcs	cb0 <free+0x2c>
     d18:	e51b300c 	ldr	r3, [fp, #-12]
     d1c:	e5933004 	ldr	r3, [r3, #4]
     d20:	e1a03183 	lsl	r3, r3, #3
     d24:	e51b200c 	ldr	r2, [fp, #-12]
     d28:	e0822003 	add	r2, r2, r3
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e1520003 	cmp	r2, r3
     d38:	1a00000d 	bne	d74 <free+0xf0>
     d3c:	e51b300c 	ldr	r3, [fp, #-12]
     d40:	e5932004 	ldr	r2, [r3, #4]
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5933000 	ldr	r3, [r3]
     d4c:	e5933004 	ldr	r3, [r3, #4]
     d50:	e0822003 	add	r2, r2, r3
     d54:	e51b300c 	ldr	r3, [fp, #-12]
     d58:	e5832004 	str	r2, [r3, #4]
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5933000 	ldr	r3, [r3]
     d64:	e5932000 	ldr	r2, [r3]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5832000 	str	r2, [r3]
     d70:	ea000003 	b	d84 <free+0x100>
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5932000 	ldr	r2, [r3]
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5832000 	str	r2, [r3]
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5933004 	ldr	r3, [r3, #4]
     d8c:	e1a03183 	lsl	r3, r3, #3
     d90:	e51b2008 	ldr	r2, [fp, #-8]
     d94:	e0823003 	add	r3, r2, r3
     d98:	e51b200c 	ldr	r2, [fp, #-12]
     d9c:	e1520003 	cmp	r2, r3
     da0:	1a00000b 	bne	dd4 <free+0x150>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5932004 	ldr	r2, [r3, #4]
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5933004 	ldr	r3, [r3, #4]
     db4:	e0822003 	add	r2, r2, r3
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5832004 	str	r2, [r3, #4]
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e5932000 	ldr	r2, [r3]
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5832000 	str	r2, [r3]
     dd0:	ea000002 	b	de0 <free+0x15c>
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e51b200c 	ldr	r2, [fp, #-12]
     ddc:	e5832000 	str	r2, [r3]
     de0:	e59f2014 	ldr	r2, [pc, #20]	; dfc <free+0x178>
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e5823000 	str	r3, [r2]
     dec:	e1a00000 	nop			; (mov r0, r0)
     df0:	e28bd000 	add	sp, fp, #0
     df4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     df8:	e12fff1e 	bx	lr
     dfc:	0000112c 	.word	0x0000112c

00000e00 <morecore>:
     e00:	e92d4800 	push	{fp, lr}
     e04:	e28db004 	add	fp, sp, #4
     e08:	e24dd010 	sub	sp, sp, #16
     e0c:	e50b0010 	str	r0, [fp, #-16]
     e10:	e51b3010 	ldr	r3, [fp, #-16]
     e14:	e3530a01 	cmp	r3, #4096	; 0x1000
     e18:	2a000001 	bcs	e24 <morecore+0x24>
     e1c:	e3a03a01 	mov	r3, #4096	; 0x1000
     e20:	e50b3010 	str	r3, [fp, #-16]
     e24:	e51b3010 	ldr	r3, [fp, #-16]
     e28:	e1a03183 	lsl	r3, r3, #3
     e2c:	e1a00003 	mov	r0, r3
     e30:	ebfffe63 	bl	7c4 <sbrk>
     e34:	e50b0008 	str	r0, [fp, #-8]
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e3730001 	cmn	r3, #1
     e40:	1a000001 	bne	e4c <morecore+0x4c>
     e44:	e3a03000 	mov	r3, #0
     e48:	ea00000a 	b	e78 <morecore+0x78>
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e50b300c 	str	r3, [fp, #-12]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e51b2010 	ldr	r2, [fp, #-16]
     e5c:	e5832004 	str	r2, [r3, #4]
     e60:	e51b300c 	ldr	r3, [fp, #-12]
     e64:	e2833008 	add	r3, r3, #8
     e68:	e1a00003 	mov	r0, r3
     e6c:	ebffff84 	bl	c84 <free>
     e70:	e59f300c 	ldr	r3, [pc, #12]	; e84 <morecore+0x84>
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e1a00003 	mov	r0, r3
     e7c:	e24bd004 	sub	sp, fp, #4
     e80:	e8bd8800 	pop	{fp, pc}
     e84:	0000112c 	.word	0x0000112c

00000e88 <malloc>:
     e88:	e92d4800 	push	{fp, lr}
     e8c:	e28db004 	add	fp, sp, #4
     e90:	e24dd018 	sub	sp, sp, #24
     e94:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e98:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e9c:	e2833007 	add	r3, r3, #7
     ea0:	e1a031a3 	lsr	r3, r3, #3
     ea4:	e2833001 	add	r3, r3, #1
     ea8:	e50b3010 	str	r3, [fp, #-16]
     eac:	e59f3134 	ldr	r3, [pc, #308]	; fe8 <malloc+0x160>
     eb0:	e5933000 	ldr	r3, [r3]
     eb4:	e50b300c 	str	r3, [fp, #-12]
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e3530000 	cmp	r3, #0
     ec0:	1a00000b 	bne	ef4 <malloc+0x6c>
     ec4:	e59f3120 	ldr	r3, [pc, #288]	; fec <malloc+0x164>
     ec8:	e50b300c 	str	r3, [fp, #-12]
     ecc:	e59f2114 	ldr	r2, [pc, #276]	; fe8 <malloc+0x160>
     ed0:	e51b300c 	ldr	r3, [fp, #-12]
     ed4:	e5823000 	str	r3, [r2]
     ed8:	e59f3108 	ldr	r3, [pc, #264]	; fe8 <malloc+0x160>
     edc:	e5933000 	ldr	r3, [r3]
     ee0:	e59f2104 	ldr	r2, [pc, #260]	; fec <malloc+0x164>
     ee4:	e5823000 	str	r3, [r2]
     ee8:	e59f30fc 	ldr	r3, [pc, #252]	; fec <malloc+0x164>
     eec:	e3a02000 	mov	r2, #0
     ef0:	e5832004 	str	r2, [r3, #4]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5933000 	ldr	r3, [r3]
     efc:	e50b3008 	str	r3, [fp, #-8]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e51b2010 	ldr	r2, [fp, #-16]
     f0c:	e1520003 	cmp	r2, r3
     f10:	8a00001e 	bhi	f90 <malloc+0x108>
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5933004 	ldr	r3, [r3, #4]
     f1c:	e51b2010 	ldr	r2, [fp, #-16]
     f20:	e1520003 	cmp	r2, r3
     f24:	1a000004 	bne	f3c <malloc+0xb4>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5932000 	ldr	r2, [r3]
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e5832000 	str	r2, [r3]
     f38:	ea00000e 	b	f78 <malloc+0xf0>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5932004 	ldr	r2, [r3, #4]
     f44:	e51b3010 	ldr	r3, [fp, #-16]
     f48:	e0422003 	sub	r2, r2, r3
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5832004 	str	r2, [r3, #4]
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5933004 	ldr	r3, [r3, #4]
     f5c:	e1a03183 	lsl	r3, r3, #3
     f60:	e51b2008 	ldr	r2, [fp, #-8]
     f64:	e0823003 	add	r3, r2, r3
     f68:	e50b3008 	str	r3, [fp, #-8]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e51b2010 	ldr	r2, [fp, #-16]
     f74:	e5832004 	str	r2, [r3, #4]
     f78:	e59f2068 	ldr	r2, [pc, #104]	; fe8 <malloc+0x160>
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5823000 	str	r3, [r2]
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e2833008 	add	r3, r3, #8
     f8c:	ea000012 	b	fdc <malloc+0x154>
     f90:	e59f3050 	ldr	r3, [pc, #80]	; fe8 <malloc+0x160>
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e51b2008 	ldr	r2, [fp, #-8]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	1a000007 	bne	fc4 <malloc+0x13c>
     fa4:	e51b0010 	ldr	r0, [fp, #-16]
     fa8:	ebffff94 	bl	e00 <morecore>
     fac:	e50b0008 	str	r0, [fp, #-8]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e3530000 	cmp	r3, #0
     fb8:	1a000001 	bne	fc4 <malloc+0x13c>
     fbc:	e3a03000 	mov	r3, #0
     fc0:	ea000005 	b	fdc <malloc+0x154>
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e50b300c 	str	r3, [fp, #-12]
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e50b3008 	str	r3, [fp, #-8]
     fd8:	eaffffc8 	b	f00 <malloc+0x78>
     fdc:	e1a00003 	mov	r0, r3
     fe0:	e24bd004 	sub	sp, fp, #4
     fe4:	e8bd8800 	pop	{fp, pc}
     fe8:	0000112c 	.word	0x0000112c
     fec:	00001124 	.word	0x00001124

00000ff0 <__udivsi3>:
     ff0:	e2512001 	subs	r2, r1, #1
     ff4:	012fff1e 	bxeq	lr
     ff8:	3a000036 	bcc	10d8 <__udivsi3+0xe8>
     ffc:	e1500001 	cmp	r0, r1
    1000:	9a000022 	bls	1090 <__udivsi3+0xa0>
    1004:	e1110002 	tst	r1, r2
    1008:	0a000023 	beq	109c <__udivsi3+0xac>
    100c:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1010:	01a01181 	lsleq	r1, r1, #3
    1014:	03a03008 	moveq	r3, #8
    1018:	13a03001 	movne	r3, #1
    101c:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1020:	31510000 	cmpcc	r1, r0
    1024:	31a01201 	lslcc	r1, r1, #4
    1028:	31a03203 	lslcc	r3, r3, #4
    102c:	3afffffa 	bcc	101c <__udivsi3+0x2c>
    1030:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1034:	31510000 	cmpcc	r1, r0
    1038:	31a01081 	lslcc	r1, r1, #1
    103c:	31a03083 	lslcc	r3, r3, #1
    1040:	3afffffa 	bcc	1030 <__udivsi3+0x40>
    1044:	e3a02000 	mov	r2, #0
    1048:	e1500001 	cmp	r0, r1
    104c:	20400001 	subcs	r0, r0, r1
    1050:	21822003 	orrcs	r2, r2, r3
    1054:	e15000a1 	cmp	r0, r1, lsr #1
    1058:	204000a1 	subcs	r0, r0, r1, lsr #1
    105c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1060:	e1500121 	cmp	r0, r1, lsr #2
    1064:	20400121 	subcs	r0, r0, r1, lsr #2
    1068:	21822123 	orrcs	r2, r2, r3, lsr #2
    106c:	e15001a1 	cmp	r0, r1, lsr #3
    1070:	204001a1 	subcs	r0, r0, r1, lsr #3
    1074:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1078:	e3500000 	cmp	r0, #0
    107c:	11b03223 	lsrsne	r3, r3, #4
    1080:	11a01221 	lsrne	r1, r1, #4
    1084:	1affffef 	bne	1048 <__udivsi3+0x58>
    1088:	e1a00002 	mov	r0, r2
    108c:	e12fff1e 	bx	lr
    1090:	03a00001 	moveq	r0, #1
    1094:	13a00000 	movne	r0, #0
    1098:	e12fff1e 	bx	lr
    109c:	e3510801 	cmp	r1, #65536	; 0x10000
    10a0:	21a01821 	lsrcs	r1, r1, #16
    10a4:	23a02010 	movcs	r2, #16
    10a8:	33a02000 	movcc	r2, #0
    10ac:	e3510c01 	cmp	r1, #256	; 0x100
    10b0:	21a01421 	lsrcs	r1, r1, #8
    10b4:	22822008 	addcs	r2, r2, #8
    10b8:	e3510010 	cmp	r1, #16
    10bc:	21a01221 	lsrcs	r1, r1, #4
    10c0:	22822004 	addcs	r2, r2, #4
    10c4:	e3510004 	cmp	r1, #4
    10c8:	82822003 	addhi	r2, r2, #3
    10cc:	908220a1 	addls	r2, r2, r1, lsr #1
    10d0:	e1a00230 	lsr	r0, r0, r2
    10d4:	e12fff1e 	bx	lr
    10d8:	e3500000 	cmp	r0, #0
    10dc:	13e00000 	mvnne	r0, #0
    10e0:	ea000007 	b	1104 <__aeabi_idiv0>

000010e4 <__aeabi_uidivmod>:
    10e4:	e3510000 	cmp	r1, #0
    10e8:	0afffffa 	beq	10d8 <__udivsi3+0xe8>
    10ec:	e92d4003 	push	{r0, r1, lr}
    10f0:	ebffffbe 	bl	ff0 <__udivsi3>
    10f4:	e8bd4006 	pop	{r1, r2, lr}
    10f8:	e0030092 	mul	r3, r2, r0
    10fc:	e0411003 	sub	r1, r1, r3
    1100:	e12fff1e 	bx	lr

00001104 <__aeabi_idiv0>:
    1104:	e12fff1e 	bx	lr
