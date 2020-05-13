
_strace:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd020 	sub	sp, sp, #32
       c:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
      14:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
      18:	e5933004 	ldr	r3, [r3, #4]
      1c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
      20:	e3a03000 	mov	r3, #0
      24:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      28:	eb000142 	bl	538 <fork>
      2c:	e50b0008 	str	r0, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e3530000 	cmp	r3, #0
      38:	1a000006 	bne	58 <main+0x58>
      3c:	eb000203 	bl	850 <traceon>
      40:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
      44:	e24b2018 	sub	r2, fp, #24
      48:	e1a01002 	mov	r1, r2
      4c:	e1a00003 	mov	r0, r3
      50:	eb000180 	bl	658 <exec>
      54:	eb000140 	bl	55c <exit>
      58:	eb000148 	bl	580 <wait>
      5c:	e50b0008 	str	r0, [fp, #-8]
      60:	eb00013d 	bl	55c <exit>

00000064 <strcpy>:
      64:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      68:	e28db000 	add	fp, sp, #0
      6c:	e24dd014 	sub	sp, sp, #20
      70:	e50b0010 	str	r0, [fp, #-16]
      74:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	e50b3008 	str	r3, [fp, #-8]
      80:	e1a00000 	nop			; (mov r0, r0)
      84:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      88:	e2823001 	add	r3, r2, #1
      8c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      90:	e51b3010 	ldr	r3, [fp, #-16]
      94:	e2831001 	add	r1, r3, #1
      98:	e50b1010 	str	r1, [fp, #-16]
      9c:	e5d22000 	ldrb	r2, [r2]
      a0:	e5c32000 	strb	r2, [r3]
      a4:	e5d33000 	ldrb	r3, [r3]
      a8:	e3530000 	cmp	r3, #0
      ac:	1afffff4 	bne	84 <strcpy+0x20>
      b0:	e51b3008 	ldr	r3, [fp, #-8]
      b4:	e1a00003 	mov	r0, r3
      b8:	e28bd000 	add	sp, fp, #0
      bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
      c0:	e12fff1e 	bx	lr

000000c4 <strcmp>:
      c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
      c8:	e28db000 	add	fp, sp, #0
      cc:	e24dd00c 	sub	sp, sp, #12
      d0:	e50b0008 	str	r0, [fp, #-8]
      d4:	e50b100c 	str	r1, [fp, #-12]
      d8:	ea000005 	b	f4 <strcmp+0x30>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e2833001 	add	r3, r3, #1
      e4:	e50b3008 	str	r3, [fp, #-8]
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e2833001 	add	r3, r3, #1
      f0:	e50b300c 	str	r3, [fp, #-12]
      f4:	e51b3008 	ldr	r3, [fp, #-8]
      f8:	e5d33000 	ldrb	r3, [r3]
      fc:	e3530000 	cmp	r3, #0
     100:	0a000005 	beq	11c <strcmp+0x58>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e5d32000 	ldrb	r2, [r3]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e5d33000 	ldrb	r3, [r3]
     114:	e1520003 	cmp	r2, r3
     118:	0affffef 	beq	dc <strcmp+0x18>
     11c:	e51b3008 	ldr	r3, [fp, #-8]
     120:	e5d33000 	ldrb	r3, [r3]
     124:	e1a02003 	mov	r2, r3
     128:	e51b300c 	ldr	r3, [fp, #-12]
     12c:	e5d33000 	ldrb	r3, [r3]
     130:	e0423003 	sub	r3, r2, r3
     134:	e1a00003 	mov	r0, r3
     138:	e28bd000 	add	sp, fp, #0
     13c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     140:	e12fff1e 	bx	lr

00000144 <strlen>:
     144:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     148:	e28db000 	add	fp, sp, #0
     14c:	e24dd014 	sub	sp, sp, #20
     150:	e50b0010 	str	r0, [fp, #-16]
     154:	e3a03000 	mov	r3, #0
     158:	e50b3008 	str	r3, [fp, #-8]
     15c:	ea000002 	b	16c <strlen+0x28>
     160:	e51b3008 	ldr	r3, [fp, #-8]
     164:	e2833001 	add	r3, r3, #1
     168:	e50b3008 	str	r3, [fp, #-8]
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e51b2010 	ldr	r2, [fp, #-16]
     174:	e0823003 	add	r3, r2, r3
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	1afffff6 	bne	160 <strlen+0x1c>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	e28bd000 	add	sp, fp, #0
     190:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     194:	e12fff1e 	bx	lr

00000198 <memset>:
     198:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     19c:	e28db000 	add	fp, sp, #0
     1a0:	e24dd024 	sub	sp, sp, #36	; 0x24
     1a4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     1a8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     1ac:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     1b0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     1bc:	e54b300d 	strb	r3, [fp, #-13]
     1c0:	e55b300d 	ldrb	r3, [fp, #-13]
     1c4:	e1a02c03 	lsl	r2, r3, #24
     1c8:	e55b300d 	ldrb	r3, [fp, #-13]
     1cc:	e1a03803 	lsl	r3, r3, #16
     1d0:	e1822003 	orr	r2, r2, r3
     1d4:	e55b300d 	ldrb	r3, [fp, #-13]
     1d8:	e1a03403 	lsl	r3, r3, #8
     1dc:	e1822003 	orr	r2, r2, r3
     1e0:	e55b300d 	ldrb	r3, [fp, #-13]
     1e4:	e1823003 	orr	r3, r2, r3
     1e8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     1ec:	ea000008 	b	214 <memset+0x7c>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e55b200d 	ldrb	r2, [fp, #-13]
     1f8:	e5c32000 	strb	r2, [r3]
     1fc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     200:	e2433001 	sub	r3, r3, #1
     204:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e2833001 	add	r3, r3, #1
     210:	e50b3008 	str	r3, [fp, #-8]
     214:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     218:	e3530000 	cmp	r3, #0
     21c:	0a000003 	beq	230 <memset+0x98>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e2033003 	and	r3, r3, #3
     228:	e3530000 	cmp	r3, #0
     22c:	1affffef 	bne	1f0 <memset+0x58>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e50b300c 	str	r3, [fp, #-12]
     238:	ea000008 	b	260 <memset+0xc8>
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     244:	e5832000 	str	r2, [r3]
     248:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     24c:	e2433004 	sub	r3, r3, #4
     250:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e2833004 	add	r3, r3, #4
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     264:	e3530003 	cmp	r3, #3
     268:	8afffff3 	bhi	23c <memset+0xa4>
     26c:	e51b300c 	ldr	r3, [fp, #-12]
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000008 	b	29c <memset+0x104>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e55b200d 	ldrb	r2, [fp, #-13]
     280:	e5c32000 	strb	r2, [r3]
     284:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     288:	e2433001 	sub	r3, r3, #1
     28c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e2833001 	add	r3, r3, #1
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2a0:	e3530000 	cmp	r3, #0
     2a4:	1afffff3 	bne	278 <memset+0xe0>
     2a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2ac:	e1a00003 	mov	r0, r3
     2b0:	e28bd000 	add	sp, fp, #0
     2b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2b8:	e12fff1e 	bx	lr

000002bc <strchr>:
     2bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2c0:	e28db000 	add	fp, sp, #0
     2c4:	e24dd00c 	sub	sp, sp, #12
     2c8:	e50b0008 	str	r0, [fp, #-8]
     2cc:	e1a03001 	mov	r3, r1
     2d0:	e54b3009 	strb	r3, [fp, #-9]
     2d4:	ea000009 	b	300 <strchr+0x44>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e55b2009 	ldrb	r2, [fp, #-9]
     2e4:	e1520003 	cmp	r2, r3
     2e8:	1a000001 	bne	2f4 <strchr+0x38>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	ea000007 	b	314 <strchr+0x58>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e2833001 	add	r3, r3, #1
     2fc:	e50b3008 	str	r3, [fp, #-8]
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e3530000 	cmp	r3, #0
     30c:	1afffff1 	bne	2d8 <strchr+0x1c>
     310:	e3a03000 	mov	r3, #0
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <gets>:
     324:	e92d4800 	push	{fp, lr}
     328:	e28db004 	add	fp, sp, #4
     32c:	e24dd018 	sub	sp, sp, #24
     330:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     334:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     338:	e3a03000 	mov	r3, #0
     33c:	e50b3008 	str	r3, [fp, #-8]
     340:	ea000016 	b	3a0 <gets+0x7c>
     344:	e24b300d 	sub	r3, fp, #13
     348:	e3a02001 	mov	r2, #1
     34c:	e1a01003 	mov	r1, r3
     350:	e3a00000 	mov	r0, #0
     354:	eb00009b 	bl	5c8 <read>
     358:	e50b000c 	str	r0, [fp, #-12]
     35c:	e51b300c 	ldr	r3, [fp, #-12]
     360:	e3530000 	cmp	r3, #0
     364:	da000013 	ble	3b8 <gets+0x94>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2832001 	add	r2, r3, #1
     370:	e50b2008 	str	r2, [fp, #-8]
     374:	e1a02003 	mov	r2, r3
     378:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     37c:	e0833002 	add	r3, r3, r2
     380:	e55b200d 	ldrb	r2, [fp, #-13]
     384:	e5c32000 	strb	r2, [r3]
     388:	e55b300d 	ldrb	r3, [fp, #-13]
     38c:	e353000a 	cmp	r3, #10
     390:	0a000009 	beq	3bc <gets+0x98>
     394:	e55b300d 	ldrb	r3, [fp, #-13]
     398:	e353000d 	cmp	r3, #13
     39c:	0a000006 	beq	3bc <gets+0x98>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     3ac:	e1520003 	cmp	r2, r3
     3b0:	caffffe3 	bgt	344 <gets+0x20>
     3b4:	ea000000 	b	3bc <gets+0x98>
     3b8:	e1a00000 	nop			; (mov r0, r0)
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     3c4:	e0823003 	add	r3, r2, r3
     3c8:	e3a02000 	mov	r2, #0
     3cc:	e5c32000 	strb	r2, [r3]
     3d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3d4:	e1a00003 	mov	r0, r3
     3d8:	e24bd004 	sub	sp, fp, #4
     3dc:	e8bd8800 	pop	{fp, pc}

000003e0 <stat>:
     3e0:	e92d4800 	push	{fp, lr}
     3e4:	e28db004 	add	fp, sp, #4
     3e8:	e24dd010 	sub	sp, sp, #16
     3ec:	e50b0010 	str	r0, [fp, #-16]
     3f0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3f4:	e3a01000 	mov	r1, #0
     3f8:	e51b0010 	ldr	r0, [fp, #-16]
     3fc:	eb00009e 	bl	67c <open>
     400:	e50b0008 	str	r0, [fp, #-8]
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e3530000 	cmp	r3, #0
     40c:	aa000001 	bge	418 <stat+0x38>
     410:	e3e03000 	mvn	r3, #0
     414:	ea000006 	b	434 <stat+0x54>
     418:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     41c:	e51b0008 	ldr	r0, [fp, #-8]
     420:	eb0000b0 	bl	6e8 <fstat>
     424:	e50b000c 	str	r0, [fp, #-12]
     428:	e51b0008 	ldr	r0, [fp, #-8]
     42c:	eb000077 	bl	610 <close>
     430:	e51b300c 	ldr	r3, [fp, #-12]
     434:	e1a00003 	mov	r0, r3
     438:	e24bd004 	sub	sp, fp, #4
     43c:	e8bd8800 	pop	{fp, pc}

00000440 <atoi>:
     440:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     444:	e28db000 	add	fp, sp, #0
     448:	e24dd014 	sub	sp, sp, #20
     44c:	e50b0010 	str	r0, [fp, #-16]
     450:	e3a03000 	mov	r3, #0
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea00000c 	b	490 <atoi+0x50>
     45c:	e51b2008 	ldr	r2, [fp, #-8]
     460:	e1a03002 	mov	r3, r2
     464:	e1a03103 	lsl	r3, r3, #2
     468:	e0833002 	add	r3, r3, r2
     46c:	e1a03083 	lsl	r3, r3, #1
     470:	e1a01003 	mov	r1, r3
     474:	e51b3010 	ldr	r3, [fp, #-16]
     478:	e2832001 	add	r2, r3, #1
     47c:	e50b2010 	str	r2, [fp, #-16]
     480:	e5d33000 	ldrb	r3, [r3]
     484:	e0813003 	add	r3, r1, r3
     488:	e2433030 	sub	r3, r3, #48	; 0x30
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	e51b3010 	ldr	r3, [fp, #-16]
     494:	e5d33000 	ldrb	r3, [r3]
     498:	e353002f 	cmp	r3, #47	; 0x2f
     49c:	9a000003 	bls	4b0 <atoi+0x70>
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e5d33000 	ldrb	r3, [r3]
     4a8:	e3530039 	cmp	r3, #57	; 0x39
     4ac:	9affffea 	bls	45c <atoi+0x1c>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e1a00003 	mov	r0, r3
     4b8:	e28bd000 	add	sp, fp, #0
     4bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4c0:	e12fff1e 	bx	lr

000004c4 <memmove>:
     4c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4c8:	e28db000 	add	fp, sp, #0
     4cc:	e24dd01c 	sub	sp, sp, #28
     4d0:	e50b0010 	str	r0, [fp, #-16]
     4d4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4d8:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     4dc:	e51b3010 	ldr	r3, [fp, #-16]
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	ea000007 	b	510 <memmove+0x4c>
     4f0:	e51b200c 	ldr	r2, [fp, #-12]
     4f4:	e2823001 	add	r3, r2, #1
     4f8:	e50b300c 	str	r3, [fp, #-12]
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e2831001 	add	r1, r3, #1
     504:	e50b1008 	str	r1, [fp, #-8]
     508:	e5d22000 	ldrb	r2, [r2]
     50c:	e5c32000 	strb	r2, [r3]
     510:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     514:	e2432001 	sub	r2, r3, #1
     518:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     51c:	e3530000 	cmp	r3, #0
     520:	cafffff2 	bgt	4f0 <memmove+0x2c>
     524:	e51b3010 	ldr	r3, [fp, #-16]
     528:	e1a00003 	mov	r0, r3
     52c:	e28bd000 	add	sp, fp, #0
     530:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     534:	e12fff1e 	bx	lr

00000538 <fork>:
     538:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     53c:	e1a04003 	mov	r4, r3
     540:	e1a03002 	mov	r3, r2
     544:	e1a02001 	mov	r2, r1
     548:	e1a01000 	mov	r1, r0
     54c:	e3a00001 	mov	r0, #1
     550:	ef000000 	svc	0x00000000
     554:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <exit>:
     55c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     560:	e1a04003 	mov	r4, r3
     564:	e1a03002 	mov	r3, r2
     568:	e1a02001 	mov	r2, r1
     56c:	e1a01000 	mov	r1, r0
     570:	e3a00002 	mov	r0, #2
     574:	ef000000 	svc	0x00000000
     578:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     57c:	e12fff1e 	bx	lr

00000580 <wait>:
     580:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     584:	e1a04003 	mov	r4, r3
     588:	e1a03002 	mov	r3, r2
     58c:	e1a02001 	mov	r2, r1
     590:	e1a01000 	mov	r1, r0
     594:	e3a00003 	mov	r0, #3
     598:	ef000000 	svc	0x00000000
     59c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5a0:	e12fff1e 	bx	lr

000005a4 <pipe>:
     5a4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5a8:	e1a04003 	mov	r4, r3
     5ac:	e1a03002 	mov	r3, r2
     5b0:	e1a02001 	mov	r2, r1
     5b4:	e1a01000 	mov	r1, r0
     5b8:	e3a00004 	mov	r0, #4
     5bc:	ef000000 	svc	0x00000000
     5c0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5c4:	e12fff1e 	bx	lr

000005c8 <read>:
     5c8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5cc:	e1a04003 	mov	r4, r3
     5d0:	e1a03002 	mov	r3, r2
     5d4:	e1a02001 	mov	r2, r1
     5d8:	e1a01000 	mov	r1, r0
     5dc:	e3a00005 	mov	r0, #5
     5e0:	ef000000 	svc	0x00000000
     5e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <write>:
     5ec:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5f0:	e1a04003 	mov	r4, r3
     5f4:	e1a03002 	mov	r3, r2
     5f8:	e1a02001 	mov	r2, r1
     5fc:	e1a01000 	mov	r1, r0
     600:	e3a00010 	mov	r0, #16
     604:	ef000000 	svc	0x00000000
     608:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <close>:
     610:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     614:	e1a04003 	mov	r4, r3
     618:	e1a03002 	mov	r3, r2
     61c:	e1a02001 	mov	r2, r1
     620:	e1a01000 	mov	r1, r0
     624:	e3a00015 	mov	r0, #21
     628:	ef000000 	svc	0x00000000
     62c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <kill>:
     634:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     638:	e1a04003 	mov	r4, r3
     63c:	e1a03002 	mov	r3, r2
     640:	e1a02001 	mov	r2, r1
     644:	e1a01000 	mov	r1, r0
     648:	e3a00006 	mov	r0, #6
     64c:	ef000000 	svc	0x00000000
     650:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <exec>:
     658:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     65c:	e1a04003 	mov	r4, r3
     660:	e1a03002 	mov	r3, r2
     664:	e1a02001 	mov	r2, r1
     668:	e1a01000 	mov	r1, r0
     66c:	e3a00007 	mov	r0, #7
     670:	ef000000 	svc	0x00000000
     674:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <open>:
     67c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a0000f 	mov	r0, #15
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <mknod>:
     6a0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00011 	mov	r0, #17
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <unlink>:
     6c4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a00012 	mov	r0, #18
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <fstat>:
     6e8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a00008 	mov	r0, #8
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <link>:
     70c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00013 	mov	r0, #19
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <mkdir>:
     730:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00014 	mov	r0, #20
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <chdir>:
     754:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a00009 	mov	r0, #9
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <dup>:
     778:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a0000a 	mov	r0, #10
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <getpid>:
     79c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a0000b 	mov	r0, #11
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <sbrk>:
     7c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a0000c 	mov	r0, #12
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <sleep>:
     7e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a0000d 	mov	r0, #13
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <uptime>:
     808:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a0000e 	mov	r0, #14
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <memfree>:
     82c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a00016 	mov	r0, #22
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <traceon>:
     850:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a00017 	mov	r0, #23
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <getps>:
     874:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a00018 	mov	r0, #24
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <suspend>:
     898:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a00019 	mov	r0, #25
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <resume>:
     8bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a0001a 	mov	r0, #26
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <putc>:
     8e0:	e92d4800 	push	{fp, lr}
     8e4:	e28db004 	add	fp, sp, #4
     8e8:	e24dd008 	sub	sp, sp, #8
     8ec:	e50b0008 	str	r0, [fp, #-8]
     8f0:	e1a03001 	mov	r3, r1
     8f4:	e54b3009 	strb	r3, [fp, #-9]
     8f8:	e24b3009 	sub	r3, fp, #9
     8fc:	e3a02001 	mov	r2, #1
     900:	e1a01003 	mov	r1, r3
     904:	e51b0008 	ldr	r0, [fp, #-8]
     908:	ebffff37 	bl	5ec <write>
     90c:	e1a00000 	nop			; (mov r0, r0)
     910:	e24bd004 	sub	sp, fp, #4
     914:	e8bd8800 	pop	{fp, pc}

00000918 <printint>:
     918:	e92d4800 	push	{fp, lr}
     91c:	e28db004 	add	fp, sp, #4
     920:	e24dd030 	sub	sp, sp, #48	; 0x30
     924:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     928:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     92c:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     930:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     934:	e3a03000 	mov	r3, #0
     938:	e50b300c 	str	r3, [fp, #-12]
     93c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     940:	e3530000 	cmp	r3, #0
     944:	0a000008 	beq	96c <printint+0x54>
     948:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     94c:	e3530000 	cmp	r3, #0
     950:	aa000005 	bge	96c <printint+0x54>
     954:	e3a03001 	mov	r3, #1
     958:	e50b300c 	str	r3, [fp, #-12]
     95c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     960:	e2633000 	rsb	r3, r3, #0
     964:	e50b3010 	str	r3, [fp, #-16]
     968:	ea000001 	b	974 <printint+0x5c>
     96c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     970:	e50b3010 	str	r3, [fp, #-16]
     974:	e3a03000 	mov	r3, #0
     978:	e50b3008 	str	r3, [fp, #-8]
     97c:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     980:	e51b3010 	ldr	r3, [fp, #-16]
     984:	e1a01002 	mov	r1, r2
     988:	e1a00003 	mov	r0, r3
     98c:	eb0001d3 	bl	10e0 <__aeabi_uidivmod>
     990:	e1a03001 	mov	r3, r1
     994:	e1a01003 	mov	r1, r3
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e2832001 	add	r2, r3, #1
     9a0:	e50b2008 	str	r2, [fp, #-8]
     9a4:	e59f209c 	ldr	r2, [pc, #156]	; a48 <printint+0x130>
     9a8:	e7d22001 	ldrb	r2, [r2, r1]
     9ac:	e24b1004 	sub	r1, fp, #4
     9b0:	e0813003 	add	r3, r1, r3
     9b4:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     9b8:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     9bc:	e1a01003 	mov	r1, r3
     9c0:	e51b0010 	ldr	r0, [fp, #-16]
     9c4:	eb000188 	bl	fec <__udivsi3>
     9c8:	e1a03000 	mov	r3, r0
     9cc:	e50b3010 	str	r3, [fp, #-16]
     9d0:	e51b3010 	ldr	r3, [fp, #-16]
     9d4:	e3530000 	cmp	r3, #0
     9d8:	1affffe7 	bne	97c <printint+0x64>
     9dc:	e51b300c 	ldr	r3, [fp, #-12]
     9e0:	e3530000 	cmp	r3, #0
     9e4:	0a00000e 	beq	a24 <printint+0x10c>
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e2832001 	add	r2, r3, #1
     9f0:	e50b2008 	str	r2, [fp, #-8]
     9f4:	e24b2004 	sub	r2, fp, #4
     9f8:	e0823003 	add	r3, r2, r3
     9fc:	e3a0202d 	mov	r2, #45	; 0x2d
     a00:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a04:	ea000006 	b	a24 <printint+0x10c>
     a08:	e24b2020 	sub	r2, fp, #32
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e0823003 	add	r3, r2, r3
     a14:	e5d33000 	ldrb	r3, [r3]
     a18:	e1a01003 	mov	r1, r3
     a1c:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     a20:	ebffffae 	bl	8e0 <putc>
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e2433001 	sub	r3, r3, #1
     a2c:	e50b3008 	str	r3, [fp, #-8]
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e3530000 	cmp	r3, #0
     a38:	aafffff2 	bge	a08 <printint+0xf0>
     a3c:	e1a00000 	nop			; (mov r0, r0)
     a40:	e24bd004 	sub	sp, fp, #4
     a44:	e8bd8800 	pop	{fp, pc}
     a48:	0000110c 	.word	0x0000110c

00000a4c <printf>:
     a4c:	e92d000e 	push	{r1, r2, r3}
     a50:	e92d4800 	push	{fp, lr}
     a54:	e28db004 	add	fp, sp, #4
     a58:	e24dd024 	sub	sp, sp, #36	; 0x24
     a5c:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     a60:	e3a03000 	mov	r3, #0
     a64:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     a68:	e28b3008 	add	r3, fp, #8
     a6c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     a70:	e3a03000 	mov	r3, #0
     a74:	e50b3010 	str	r3, [fp, #-16]
     a78:	ea000074 	b	c50 <printf+0x204>
     a7c:	e59b2004 	ldr	r2, [fp, #4]
     a80:	e51b3010 	ldr	r3, [fp, #-16]
     a84:	e0823003 	add	r3, r2, r3
     a88:	e5d33000 	ldrb	r3, [r3]
     a8c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     a90:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     a94:	e3530000 	cmp	r3, #0
     a98:	1a00000b 	bne	acc <printf+0x80>
     a9c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     aa0:	e3530025 	cmp	r3, #37	; 0x25
     aa4:	1a000002 	bne	ab4 <printf+0x68>
     aa8:	e3a03025 	mov	r3, #37	; 0x25
     aac:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     ab0:	ea000063 	b	c44 <printf+0x1f8>
     ab4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ab8:	e6ef3073 	uxtb	r3, r3
     abc:	e1a01003 	mov	r1, r3
     ac0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ac4:	ebffff85 	bl	8e0 <putc>
     ac8:	ea00005d 	b	c44 <printf+0x1f8>
     acc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ad0:	e3530025 	cmp	r3, #37	; 0x25
     ad4:	1a00005a 	bne	c44 <printf+0x1f8>
     ad8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     adc:	e3530064 	cmp	r3, #100	; 0x64
     ae0:	1a00000a 	bne	b10 <printf+0xc4>
     ae4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ae8:	e5933000 	ldr	r3, [r3]
     aec:	e1a01003 	mov	r1, r3
     af0:	e3a03001 	mov	r3, #1
     af4:	e3a0200a 	mov	r2, #10
     af8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     afc:	ebffff85 	bl	918 <printint>
     b00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b04:	e2833004 	add	r3, r3, #4
     b08:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b0c:	ea00004a 	b	c3c <printf+0x1f0>
     b10:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b14:	e3530078 	cmp	r3, #120	; 0x78
     b18:	0a000002 	beq	b28 <printf+0xdc>
     b1c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b20:	e3530070 	cmp	r3, #112	; 0x70
     b24:	1a00000a 	bne	b54 <printf+0x108>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b2c:	e5933000 	ldr	r3, [r3]
     b30:	e1a01003 	mov	r1, r3
     b34:	e3a03000 	mov	r3, #0
     b38:	e3a02010 	mov	r2, #16
     b3c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b40:	ebffff74 	bl	918 <printint>
     b44:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b48:	e2833004 	add	r3, r3, #4
     b4c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b50:	ea000039 	b	c3c <printf+0x1f0>
     b54:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b58:	e3530073 	cmp	r3, #115	; 0x73
     b5c:	1a000018 	bne	bc4 <printf+0x178>
     b60:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b64:	e5933000 	ldr	r3, [r3]
     b68:	e50b300c 	str	r3, [fp, #-12]
     b6c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b70:	e2833004 	add	r3, r3, #4
     b74:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b78:	e51b300c 	ldr	r3, [fp, #-12]
     b7c:	e3530000 	cmp	r3, #0
     b80:	1a00000a 	bne	bb0 <printf+0x164>
     b84:	e59f30f0 	ldr	r3, [pc, #240]	; c7c <printf+0x230>
     b88:	e50b300c 	str	r3, [fp, #-12]
     b8c:	ea000007 	b	bb0 <printf+0x164>
     b90:	e51b300c 	ldr	r3, [fp, #-12]
     b94:	e5d33000 	ldrb	r3, [r3]
     b98:	e1a01003 	mov	r1, r3
     b9c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ba0:	ebffff4e 	bl	8e0 <putc>
     ba4:	e51b300c 	ldr	r3, [fp, #-12]
     ba8:	e2833001 	add	r3, r3, #1
     bac:	e50b300c 	str	r3, [fp, #-12]
     bb0:	e51b300c 	ldr	r3, [fp, #-12]
     bb4:	e5d33000 	ldrb	r3, [r3]
     bb8:	e3530000 	cmp	r3, #0
     bbc:	1afffff3 	bne	b90 <printf+0x144>
     bc0:	ea00001d 	b	c3c <printf+0x1f0>
     bc4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bc8:	e3530063 	cmp	r3, #99	; 0x63
     bcc:	1a000009 	bne	bf8 <printf+0x1ac>
     bd0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bd4:	e5933000 	ldr	r3, [r3]
     bd8:	e6ef3073 	uxtb	r3, r3
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     be4:	ebffff3d 	bl	8e0 <putc>
     be8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bec:	e2833004 	add	r3, r3, #4
     bf0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bf4:	ea000010 	b	c3c <printf+0x1f0>
     bf8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bfc:	e3530025 	cmp	r3, #37	; 0x25
     c00:	1a000005 	bne	c1c <printf+0x1d0>
     c04:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c08:	e6ef3073 	uxtb	r3, r3
     c0c:	e1a01003 	mov	r1, r3
     c10:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c14:	ebffff31 	bl	8e0 <putc>
     c18:	ea000007 	b	c3c <printf+0x1f0>
     c1c:	e3a01025 	mov	r1, #37	; 0x25
     c20:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c24:	ebffff2d 	bl	8e0 <putc>
     c28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c2c:	e6ef3073 	uxtb	r3, r3
     c30:	e1a01003 	mov	r1, r3
     c34:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c38:	ebffff28 	bl	8e0 <putc>
     c3c:	e3a03000 	mov	r3, #0
     c40:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     c44:	e51b3010 	ldr	r3, [fp, #-16]
     c48:	e2833001 	add	r3, r3, #1
     c4c:	e50b3010 	str	r3, [fp, #-16]
     c50:	e59b2004 	ldr	r2, [fp, #4]
     c54:	e51b3010 	ldr	r3, [fp, #-16]
     c58:	e0823003 	add	r3, r2, r3
     c5c:	e5d33000 	ldrb	r3, [r3]
     c60:	e3530000 	cmp	r3, #0
     c64:	1affff84 	bne	a7c <printf+0x30>
     c68:	e1a00000 	nop			; (mov r0, r0)
     c6c:	e24bd004 	sub	sp, fp, #4
     c70:	e8bd4800 	pop	{fp, lr}
     c74:	e28dd00c 	add	sp, sp, #12
     c78:	e12fff1e 	bx	lr
     c7c:	00001104 	.word	0x00001104

00000c80 <free>:
     c80:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c84:	e28db000 	add	fp, sp, #0
     c88:	e24dd014 	sub	sp, sp, #20
     c8c:	e50b0010 	str	r0, [fp, #-16]
     c90:	e51b3010 	ldr	r3, [fp, #-16]
     c94:	e2433008 	sub	r3, r3, #8
     c98:	e50b300c 	str	r3, [fp, #-12]
     c9c:	e59f3154 	ldr	r3, [pc, #340]	; df8 <free+0x178>
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e50b3008 	str	r3, [fp, #-8]
     ca8:	ea000010 	b	cf0 <free+0x70>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e5933000 	ldr	r3, [r3]
     cb4:	e51b2008 	ldr	r2, [fp, #-8]
     cb8:	e1520003 	cmp	r2, r3
     cbc:	3a000008 	bcc	ce4 <free+0x64>
     cc0:	e51b200c 	ldr	r2, [fp, #-12]
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e1520003 	cmp	r2, r3
     ccc:	8a000010 	bhi	d14 <free+0x94>
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e5933000 	ldr	r3, [r3]
     cd8:	e51b200c 	ldr	r2, [fp, #-12]
     cdc:	e1520003 	cmp	r2, r3
     ce0:	3a00000b 	bcc	d14 <free+0x94>
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e50b3008 	str	r3, [fp, #-8]
     cf0:	e51b200c 	ldr	r2, [fp, #-12]
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	9affffea 	bls	cac <free+0x2c>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e1520003 	cmp	r2, r3
     d10:	2affffe5 	bcs	cac <free+0x2c>
     d14:	e51b300c 	ldr	r3, [fp, #-12]
     d18:	e5933004 	ldr	r3, [r3, #4]
     d1c:	e1a03183 	lsl	r3, r3, #3
     d20:	e51b200c 	ldr	r2, [fp, #-12]
     d24:	e0822003 	add	r2, r2, r3
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e1520003 	cmp	r2, r3
     d34:	1a00000d 	bne	d70 <free+0xf0>
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5932004 	ldr	r2, [r3, #4]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e5933004 	ldr	r3, [r3, #4]
     d4c:	e0822003 	add	r2, r2, r3
     d50:	e51b300c 	ldr	r3, [fp, #-12]
     d54:	e5832004 	str	r2, [r3, #4]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e5932000 	ldr	r2, [r3]
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5832000 	str	r2, [r3]
     d6c:	ea000003 	b	d80 <free+0x100>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5932000 	ldr	r2, [r3]
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5832000 	str	r2, [r3]
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933004 	ldr	r3, [r3, #4]
     d88:	e1a03183 	lsl	r3, r3, #3
     d8c:	e51b2008 	ldr	r2, [fp, #-8]
     d90:	e0823003 	add	r3, r2, r3
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e1520003 	cmp	r2, r3
     d9c:	1a00000b 	bne	dd0 <free+0x150>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5932004 	ldr	r2, [r3, #4]
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5933004 	ldr	r3, [r3, #4]
     db0:	e0822003 	add	r2, r2, r3
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5832004 	str	r2, [r3, #4]
     dbc:	e51b300c 	ldr	r3, [fp, #-12]
     dc0:	e5932000 	ldr	r2, [r3]
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5832000 	str	r2, [r3]
     dcc:	ea000002 	b	ddc <free+0x15c>
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e51b200c 	ldr	r2, [fp, #-12]
     dd8:	e5832000 	str	r2, [r3]
     ddc:	e59f2014 	ldr	r2, [pc, #20]	; df8 <free+0x178>
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5823000 	str	r3, [r2]
     de8:	e1a00000 	nop			; (mov r0, r0)
     dec:	e28bd000 	add	sp, fp, #0
     df0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     df4:	e12fff1e 	bx	lr
     df8:	00001128 	.word	0x00001128

00000dfc <morecore>:
     dfc:	e92d4800 	push	{fp, lr}
     e00:	e28db004 	add	fp, sp, #4
     e04:	e24dd010 	sub	sp, sp, #16
     e08:	e50b0010 	str	r0, [fp, #-16]
     e0c:	e51b3010 	ldr	r3, [fp, #-16]
     e10:	e3530a01 	cmp	r3, #4096	; 0x1000
     e14:	2a000001 	bcs	e20 <morecore+0x24>
     e18:	e3a03a01 	mov	r3, #4096	; 0x1000
     e1c:	e50b3010 	str	r3, [fp, #-16]
     e20:	e51b3010 	ldr	r3, [fp, #-16]
     e24:	e1a03183 	lsl	r3, r3, #3
     e28:	e1a00003 	mov	r0, r3
     e2c:	ebfffe63 	bl	7c0 <sbrk>
     e30:	e50b0008 	str	r0, [fp, #-8]
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e3730001 	cmn	r3, #1
     e3c:	1a000001 	bne	e48 <morecore+0x4c>
     e40:	e3a03000 	mov	r3, #0
     e44:	ea00000a 	b	e74 <morecore+0x78>
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e50b300c 	str	r3, [fp, #-12]
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e51b2010 	ldr	r2, [fp, #-16]
     e58:	e5832004 	str	r2, [r3, #4]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e2833008 	add	r3, r3, #8
     e64:	e1a00003 	mov	r0, r3
     e68:	ebffff84 	bl	c80 <free>
     e6c:	e59f300c 	ldr	r3, [pc, #12]	; e80 <morecore+0x84>
     e70:	e5933000 	ldr	r3, [r3]
     e74:	e1a00003 	mov	r0, r3
     e78:	e24bd004 	sub	sp, fp, #4
     e7c:	e8bd8800 	pop	{fp, pc}
     e80:	00001128 	.word	0x00001128

00000e84 <malloc>:
     e84:	e92d4800 	push	{fp, lr}
     e88:	e28db004 	add	fp, sp, #4
     e8c:	e24dd018 	sub	sp, sp, #24
     e90:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     e94:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e98:	e2833007 	add	r3, r3, #7
     e9c:	e1a031a3 	lsr	r3, r3, #3
     ea0:	e2833001 	add	r3, r3, #1
     ea4:	e50b3010 	str	r3, [fp, #-16]
     ea8:	e59f3134 	ldr	r3, [pc, #308]	; fe4 <malloc+0x160>
     eac:	e5933000 	ldr	r3, [r3]
     eb0:	e50b300c 	str	r3, [fp, #-12]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1a00000b 	bne	ef0 <malloc+0x6c>
     ec0:	e59f3120 	ldr	r3, [pc, #288]	; fe8 <malloc+0x164>
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e59f2114 	ldr	r2, [pc, #276]	; fe4 <malloc+0x160>
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5823000 	str	r3, [r2]
     ed4:	e59f3108 	ldr	r3, [pc, #264]	; fe4 <malloc+0x160>
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e59f2104 	ldr	r2, [pc, #260]	; fe8 <malloc+0x164>
     ee0:	e5823000 	str	r3, [r2]
     ee4:	e59f30fc 	ldr	r3, [pc, #252]	; fe8 <malloc+0x164>
     ee8:	e3a02000 	mov	r2, #0
     eec:	e5832004 	str	r2, [r3, #4]
     ef0:	e51b300c 	ldr	r3, [fp, #-12]
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e50b3008 	str	r3, [fp, #-8]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933004 	ldr	r3, [r3, #4]
     f04:	e51b2010 	ldr	r2, [fp, #-16]
     f08:	e1520003 	cmp	r2, r3
     f0c:	8a00001e 	bhi	f8c <malloc+0x108>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933004 	ldr	r3, [r3, #4]
     f18:	e51b2010 	ldr	r2, [fp, #-16]
     f1c:	e1520003 	cmp	r2, r3
     f20:	1a000004 	bne	f38 <malloc+0xb4>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5932000 	ldr	r2, [r3]
     f2c:	e51b300c 	ldr	r3, [fp, #-12]
     f30:	e5832000 	str	r2, [r3]
     f34:	ea00000e 	b	f74 <malloc+0xf0>
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5932004 	ldr	r2, [r3, #4]
     f40:	e51b3010 	ldr	r3, [fp, #-16]
     f44:	e0422003 	sub	r2, r2, r3
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5832004 	str	r2, [r3, #4]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e1a03183 	lsl	r3, r3, #3
     f5c:	e51b2008 	ldr	r2, [fp, #-8]
     f60:	e0823003 	add	r3, r2, r3
     f64:	e50b3008 	str	r3, [fp, #-8]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e51b2010 	ldr	r2, [fp, #-16]
     f70:	e5832004 	str	r2, [r3, #4]
     f74:	e59f2068 	ldr	r2, [pc, #104]	; fe4 <malloc+0x160>
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5823000 	str	r3, [r2]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e2833008 	add	r3, r3, #8
     f88:	ea000012 	b	fd8 <malloc+0x154>
     f8c:	e59f3050 	ldr	r3, [pc, #80]	; fe4 <malloc+0x160>
     f90:	e5933000 	ldr	r3, [r3]
     f94:	e51b2008 	ldr	r2, [fp, #-8]
     f98:	e1520003 	cmp	r2, r3
     f9c:	1a000007 	bne	fc0 <malloc+0x13c>
     fa0:	e51b0010 	ldr	r0, [fp, #-16]
     fa4:	ebffff94 	bl	dfc <morecore>
     fa8:	e50b0008 	str	r0, [fp, #-8]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e3530000 	cmp	r3, #0
     fb4:	1a000001 	bne	fc0 <malloc+0x13c>
     fb8:	e3a03000 	mov	r3, #0
     fbc:	ea000005 	b	fd8 <malloc+0x154>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e50b300c 	str	r3, [fp, #-12]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5933000 	ldr	r3, [r3]
     fd0:	e50b3008 	str	r3, [fp, #-8]
     fd4:	eaffffc8 	b	efc <malloc+0x78>
     fd8:	e1a00003 	mov	r0, r3
     fdc:	e24bd004 	sub	sp, fp, #4
     fe0:	e8bd8800 	pop	{fp, pc}
     fe4:	00001128 	.word	0x00001128
     fe8:	00001120 	.word	0x00001120

00000fec <__udivsi3>:
     fec:	e2512001 	subs	r2, r1, #1
     ff0:	012fff1e 	bxeq	lr
     ff4:	3a000036 	bcc	10d4 <__udivsi3+0xe8>
     ff8:	e1500001 	cmp	r0, r1
     ffc:	9a000022 	bls	108c <__udivsi3+0xa0>
    1000:	e1110002 	tst	r1, r2
    1004:	0a000023 	beq	1098 <__udivsi3+0xac>
    1008:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    100c:	01a01181 	lsleq	r1, r1, #3
    1010:	03a03008 	moveq	r3, #8
    1014:	13a03001 	movne	r3, #1
    1018:	e3510201 	cmp	r1, #268435456	; 0x10000000
    101c:	31510000 	cmpcc	r1, r0
    1020:	31a01201 	lslcc	r1, r1, #4
    1024:	31a03203 	lslcc	r3, r3, #4
    1028:	3afffffa 	bcc	1018 <__udivsi3+0x2c>
    102c:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1030:	31510000 	cmpcc	r1, r0
    1034:	31a01081 	lslcc	r1, r1, #1
    1038:	31a03083 	lslcc	r3, r3, #1
    103c:	3afffffa 	bcc	102c <__udivsi3+0x40>
    1040:	e3a02000 	mov	r2, #0
    1044:	e1500001 	cmp	r0, r1
    1048:	20400001 	subcs	r0, r0, r1
    104c:	21822003 	orrcs	r2, r2, r3
    1050:	e15000a1 	cmp	r0, r1, lsr #1
    1054:	204000a1 	subcs	r0, r0, r1, lsr #1
    1058:	218220a3 	orrcs	r2, r2, r3, lsr #1
    105c:	e1500121 	cmp	r0, r1, lsr #2
    1060:	20400121 	subcs	r0, r0, r1, lsr #2
    1064:	21822123 	orrcs	r2, r2, r3, lsr #2
    1068:	e15001a1 	cmp	r0, r1, lsr #3
    106c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1070:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1074:	e3500000 	cmp	r0, #0
    1078:	11b03223 	lsrsne	r3, r3, #4
    107c:	11a01221 	lsrne	r1, r1, #4
    1080:	1affffef 	bne	1044 <__udivsi3+0x58>
    1084:	e1a00002 	mov	r0, r2
    1088:	e12fff1e 	bx	lr
    108c:	03a00001 	moveq	r0, #1
    1090:	13a00000 	movne	r0, #0
    1094:	e12fff1e 	bx	lr
    1098:	e3510801 	cmp	r1, #65536	; 0x10000
    109c:	21a01821 	lsrcs	r1, r1, #16
    10a0:	23a02010 	movcs	r2, #16
    10a4:	33a02000 	movcc	r2, #0
    10a8:	e3510c01 	cmp	r1, #256	; 0x100
    10ac:	21a01421 	lsrcs	r1, r1, #8
    10b0:	22822008 	addcs	r2, r2, #8
    10b4:	e3510010 	cmp	r1, #16
    10b8:	21a01221 	lsrcs	r1, r1, #4
    10bc:	22822004 	addcs	r2, r2, #4
    10c0:	e3510004 	cmp	r1, #4
    10c4:	82822003 	addhi	r2, r2, #3
    10c8:	908220a1 	addls	r2, r2, r1, lsr #1
    10cc:	e1a00230 	lsr	r0, r0, r2
    10d0:	e12fff1e 	bx	lr
    10d4:	e3500000 	cmp	r0, #0
    10d8:	13e00000 	mvnne	r0, #0
    10dc:	ea000007 	b	1100 <__aeabi_idiv0>

000010e0 <__aeabi_uidivmod>:
    10e0:	e3510000 	cmp	r1, #0
    10e4:	0afffffa 	beq	10d4 <__udivsi3+0xe8>
    10e8:	e92d4003 	push	{r0, r1, lr}
    10ec:	ebffffbe 	bl	fec <__udivsi3>
    10f0:	e8bd4006 	pop	{r1, r2, lr}
    10f4:	e0030092 	mul	r3, r2, r0
    10f8:	e0411003 	sub	r1, r1, r3
    10fc:	e12fff1e 	bx	lr

00001100 <__aeabi_idiv0>:
    1100:	e12fff1e 	bx	lr
