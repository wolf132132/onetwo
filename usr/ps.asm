
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24ddc06 	sub	sp, sp, #1536	; 0x600
       c:	e24dd008 	sub	sp, sp, #8
      10:	e24b3c06 	sub	r3, fp, #1536	; 0x600
      14:	e2433004 	sub	r3, r3, #4
      18:	e2433008 	sub	r3, r3, #8
      1c:	e1a00003 	mov	r0, r3
      20:	eb00023e 	bl	920 <getps>
      24:	e59f10d8 	ldr	r1, [pc, #216]	; 104 <main+0x104>
      28:	e3a00001 	mov	r0, #1
      2c:	eb0002b1 	bl	af8 <printf>
      30:	e3a03000 	mov	r3, #0
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00002c 	b	f0 <main+0xf0>
      3c:	e51b2008 	ldr	r2, [fp, #-8]
      40:	e1a03002 	mov	r3, r2
      44:	e1a03083 	lsl	r3, r3, #1
      48:	e0833002 	add	r3, r3, r2
      4c:	e1a03183 	lsl	r3, r3, #3
      50:	e24b2004 	sub	r2, fp, #4
      54:	e0823003 	add	r3, r2, r3
      58:	e2433c06 	sub	r3, r3, #1536	; 0x600
      5c:	e2433008 	sub	r3, r3, #8
      60:	e5933000 	ldr	r3, [r3]
      64:	e1a02003 	mov	r2, r3
      68:	e59f1098 	ldr	r1, [pc, #152]	; 108 <main+0x108>
      6c:	e3a00001 	mov	r0, #1
      70:	eb0002a0 	bl	af8 <printf>
      74:	e51b2008 	ldr	r2, [fp, #-8]
      78:	e1a03002 	mov	r3, r2
      7c:	e1a03083 	lsl	r3, r3, #1
      80:	e0833002 	add	r3, r3, r2
      84:	e1a03183 	lsl	r3, r3, #3
      88:	e24b2004 	sub	r2, fp, #4
      8c:	e0823003 	add	r3, r2, r3
      90:	e2433c06 	sub	r3, r3, #1536	; 0x600
      94:	e2433004 	sub	r3, r3, #4
      98:	e5933000 	ldr	r3, [r3]
      9c:	e1a02003 	mov	r2, r3
      a0:	e59f1060 	ldr	r1, [pc, #96]	; 108 <main+0x108>
      a4:	e3a00001 	mov	r0, #1
      a8:	eb000292 	bl	af8 <printf>
      ac:	e24b2c06 	sub	r2, fp, #1536	; 0x600
      b0:	e2422004 	sub	r2, r2, #4
      b4:	e2422008 	sub	r2, r2, #8
      b8:	e51b1008 	ldr	r1, [fp, #-8]
      bc:	e1a03001 	mov	r3, r1
      c0:	e1a03083 	lsl	r3, r3, #1
      c4:	e0833001 	add	r3, r3, r1
      c8:	e1a03183 	lsl	r3, r3, #3
      cc:	e2833008 	add	r3, r3, #8
      d0:	e0823003 	add	r3, r2, r3
      d4:	e1a02003 	mov	r2, r3
      d8:	e59f102c 	ldr	r1, [pc, #44]	; 10c <main+0x10c>
      dc:	e3a00001 	mov	r0, #1
      e0:	eb000284 	bl	af8 <printf>
      e4:	e51b3008 	ldr	r3, [fp, #-8]
      e8:	e2833001 	add	r3, r3, #1
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e51b2008 	ldr	r2, [fp, #-8]
      f8:	e1520003 	cmp	r2, r3
      fc:	baffffce 	blt	3c <main+0x3c>
     100:	eb000140 	bl	608 <exit>
     104:	000011b0 	.word	0x000011b0
     108:	000011c0 	.word	0x000011c0
     10c:	000011c4 	.word	0x000011c4

00000110 <strcpy>:
     110:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     114:	e28db000 	add	fp, sp, #0
     118:	e24dd014 	sub	sp, sp, #20
     11c:	e50b0010 	str	r0, [fp, #-16]
     120:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	e1a00000 	nop			; (mov r0, r0)
     130:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     134:	e2823001 	add	r3, r2, #1
     138:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     13c:	e51b3010 	ldr	r3, [fp, #-16]
     140:	e2831001 	add	r1, r3, #1
     144:	e50b1010 	str	r1, [fp, #-16]
     148:	e5d22000 	ldrb	r2, [r2]
     14c:	e5c32000 	strb	r2, [r3]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e3530000 	cmp	r3, #0
     158:	1afffff4 	bne	130 <strcpy+0x20>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strcmp>:
     170:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd00c 	sub	sp, sp, #12
     17c:	e50b0008 	str	r0, [fp, #-8]
     180:	e50b100c 	str	r1, [fp, #-12]
     184:	ea000005 	b	1a0 <strcmp+0x30>
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e2833001 	add	r3, r3, #1
     190:	e50b3008 	str	r3, [fp, #-8]
     194:	e51b300c 	ldr	r3, [fp, #-12]
     198:	e2833001 	add	r3, r3, #1
     19c:	e50b300c 	str	r3, [fp, #-12]
     1a0:	e51b3008 	ldr	r3, [fp, #-8]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	0a000005 	beq	1c8 <strcmp+0x58>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e5d32000 	ldrb	r2, [r3]
     1b8:	e51b300c 	ldr	r3, [fp, #-12]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e1520003 	cmp	r2, r3
     1c4:	0affffef 	beq	188 <strcmp+0x18>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e5d33000 	ldrb	r3, [r3]
     1d0:	e1a02003 	mov	r2, r3
     1d4:	e51b300c 	ldr	r3, [fp, #-12]
     1d8:	e5d33000 	ldrb	r3, [r3]
     1dc:	e0423003 	sub	r3, r2, r3
     1e0:	e1a00003 	mov	r0, r3
     1e4:	e28bd000 	add	sp, fp, #0
     1e8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1ec:	e12fff1e 	bx	lr

000001f0 <strlen>:
     1f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1f4:	e28db000 	add	fp, sp, #0
     1f8:	e24dd014 	sub	sp, sp, #20
     1fc:	e50b0010 	str	r0, [fp, #-16]
     200:	e3a03000 	mov	r3, #0
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	ea000002 	b	218 <strlen+0x28>
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e2833001 	add	r3, r3, #1
     214:	e50b3008 	str	r3, [fp, #-8]
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e51b2010 	ldr	r2, [fp, #-16]
     220:	e0823003 	add	r3, r2, r3
     224:	e5d33000 	ldrb	r3, [r3]
     228:	e3530000 	cmp	r3, #0
     22c:	1afffff6 	bne	20c <strlen+0x1c>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e1a00003 	mov	r0, r3
     238:	e28bd000 	add	sp, fp, #0
     23c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     240:	e12fff1e 	bx	lr

00000244 <memset>:
     244:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd024 	sub	sp, sp, #36	; 0x24
     250:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     254:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     258:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     25c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     260:	e50b3008 	str	r3, [fp, #-8]
     264:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     268:	e54b300d 	strb	r3, [fp, #-13]
     26c:	e55b300d 	ldrb	r3, [fp, #-13]
     270:	e1a02c03 	lsl	r2, r3, #24
     274:	e55b300d 	ldrb	r3, [fp, #-13]
     278:	e1a03803 	lsl	r3, r3, #16
     27c:	e1822003 	orr	r2, r2, r3
     280:	e55b300d 	ldrb	r3, [fp, #-13]
     284:	e1a03403 	lsl	r3, r3, #8
     288:	e1822003 	orr	r2, r2, r3
     28c:	e55b300d 	ldrb	r3, [fp, #-13]
     290:	e1823003 	orr	r3, r2, r3
     294:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     298:	ea000008 	b	2c0 <memset+0x7c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e55b200d 	ldrb	r2, [fp, #-13]
     2a4:	e5c32000 	strb	r2, [r3]
     2a8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2ac:	e2433001 	sub	r3, r3, #1
     2b0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2c4:	e3530000 	cmp	r3, #0
     2c8:	0a000003 	beq	2dc <memset+0x98>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e2033003 	and	r3, r3, #3
     2d4:	e3530000 	cmp	r3, #0
     2d8:	1affffef 	bne	29c <memset+0x58>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e50b300c 	str	r3, [fp, #-12]
     2e4:	ea000008 	b	30c <memset+0xc8>
     2e8:	e51b300c 	ldr	r3, [fp, #-12]
     2ec:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     2f0:	e5832000 	str	r2, [r3]
     2f4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2f8:	e2433004 	sub	r3, r3, #4
     2fc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     300:	e51b300c 	ldr	r3, [fp, #-12]
     304:	e2833004 	add	r3, r3, #4
     308:	e50b300c 	str	r3, [fp, #-12]
     30c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     310:	e3530003 	cmp	r3, #3
     314:	8afffff3 	bhi	2e8 <memset+0xa4>
     318:	e51b300c 	ldr	r3, [fp, #-12]
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	ea000008 	b	348 <memset+0x104>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e55b200d 	ldrb	r2, [fp, #-13]
     32c:	e5c32000 	strb	r2, [r3]
     330:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     334:	e2433001 	sub	r3, r3, #1
     338:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     34c:	e3530000 	cmp	r3, #0
     350:	1afffff3 	bne	324 <memset+0xe0>
     354:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     358:	e1a00003 	mov	r0, r3
     35c:	e28bd000 	add	sp, fp, #0
     360:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     364:	e12fff1e 	bx	lr

00000368 <strchr>:
     368:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     36c:	e28db000 	add	fp, sp, #0
     370:	e24dd00c 	sub	sp, sp, #12
     374:	e50b0008 	str	r0, [fp, #-8]
     378:	e1a03001 	mov	r3, r1
     37c:	e54b3009 	strb	r3, [fp, #-9]
     380:	ea000009 	b	3ac <strchr+0x44>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e5d33000 	ldrb	r3, [r3]
     38c:	e55b2009 	ldrb	r2, [fp, #-9]
     390:	e1520003 	cmp	r2, r3
     394:	1a000001 	bne	3a0 <strchr+0x38>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	ea000007 	b	3c0 <strchr+0x58>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e5d33000 	ldrb	r3, [r3]
     3b4:	e3530000 	cmp	r3, #0
     3b8:	1afffff1 	bne	384 <strchr+0x1c>
     3bc:	e3a03000 	mov	r3, #0
     3c0:	e1a00003 	mov	r0, r3
     3c4:	e28bd000 	add	sp, fp, #0
     3c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3cc:	e12fff1e 	bx	lr

000003d0 <gets>:
     3d0:	e92d4800 	push	{fp, lr}
     3d4:	e28db004 	add	fp, sp, #4
     3d8:	e24dd018 	sub	sp, sp, #24
     3dc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     3e0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     3e4:	e3a03000 	mov	r3, #0
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	ea000016 	b	44c <gets+0x7c>
     3f0:	e24b300d 	sub	r3, fp, #13
     3f4:	e3a02001 	mov	r2, #1
     3f8:	e1a01003 	mov	r1, r3
     3fc:	e3a00000 	mov	r0, #0
     400:	eb00009b 	bl	674 <read>
     404:	e50b000c 	str	r0, [fp, #-12]
     408:	e51b300c 	ldr	r3, [fp, #-12]
     40c:	e3530000 	cmp	r3, #0
     410:	da000013 	ble	464 <gets+0x94>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e2832001 	add	r2, r3, #1
     41c:	e50b2008 	str	r2, [fp, #-8]
     420:	e1a02003 	mov	r2, r3
     424:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     428:	e0833002 	add	r3, r3, r2
     42c:	e55b200d 	ldrb	r2, [fp, #-13]
     430:	e5c32000 	strb	r2, [r3]
     434:	e55b300d 	ldrb	r3, [fp, #-13]
     438:	e353000a 	cmp	r3, #10
     43c:	0a000009 	beq	468 <gets+0x98>
     440:	e55b300d 	ldrb	r3, [fp, #-13]
     444:	e353000d 	cmp	r3, #13
     448:	0a000006 	beq	468 <gets+0x98>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2833001 	add	r3, r3, #1
     454:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     458:	e1520003 	cmp	r2, r3
     45c:	caffffe3 	bgt	3f0 <gets+0x20>
     460:	ea000000 	b	468 <gets+0x98>
     464:	e1a00000 	nop			; (mov r0, r0)
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     470:	e0823003 	add	r3, r2, r3
     474:	e3a02000 	mov	r2, #0
     478:	e5c32000 	strb	r2, [r3]
     47c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     480:	e1a00003 	mov	r0, r3
     484:	e24bd004 	sub	sp, fp, #4
     488:	e8bd8800 	pop	{fp, pc}

0000048c <stat>:
     48c:	e92d4800 	push	{fp, lr}
     490:	e28db004 	add	fp, sp, #4
     494:	e24dd010 	sub	sp, sp, #16
     498:	e50b0010 	str	r0, [fp, #-16]
     49c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4a0:	e3a01000 	mov	r1, #0
     4a4:	e51b0010 	ldr	r0, [fp, #-16]
     4a8:	eb00009e 	bl	728 <open>
     4ac:	e50b0008 	str	r0, [fp, #-8]
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e3530000 	cmp	r3, #0
     4b8:	aa000001 	bge	4c4 <stat+0x38>
     4bc:	e3e03000 	mvn	r3, #0
     4c0:	ea000006 	b	4e0 <stat+0x54>
     4c4:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     4c8:	e51b0008 	ldr	r0, [fp, #-8]
     4cc:	eb0000b0 	bl	794 <fstat>
     4d0:	e50b000c 	str	r0, [fp, #-12]
     4d4:	e51b0008 	ldr	r0, [fp, #-8]
     4d8:	eb000077 	bl	6bc <close>
     4dc:	e51b300c 	ldr	r3, [fp, #-12]
     4e0:	e1a00003 	mov	r0, r3
     4e4:	e24bd004 	sub	sp, fp, #4
     4e8:	e8bd8800 	pop	{fp, pc}

000004ec <atoi>:
     4ec:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd014 	sub	sp, sp, #20
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e3a03000 	mov	r3, #0
     500:	e50b3008 	str	r3, [fp, #-8]
     504:	ea00000c 	b	53c <atoi+0x50>
     508:	e51b2008 	ldr	r2, [fp, #-8]
     50c:	e1a03002 	mov	r3, r2
     510:	e1a03103 	lsl	r3, r3, #2
     514:	e0833002 	add	r3, r3, r2
     518:	e1a03083 	lsl	r3, r3, #1
     51c:	e1a01003 	mov	r1, r3
     520:	e51b3010 	ldr	r3, [fp, #-16]
     524:	e2832001 	add	r2, r3, #1
     528:	e50b2010 	str	r2, [fp, #-16]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e0813003 	add	r3, r1, r3
     534:	e2433030 	sub	r3, r3, #48	; 0x30
     538:	e50b3008 	str	r3, [fp, #-8]
     53c:	e51b3010 	ldr	r3, [fp, #-16]
     540:	e5d33000 	ldrb	r3, [r3]
     544:	e353002f 	cmp	r3, #47	; 0x2f
     548:	9a000003 	bls	55c <atoi+0x70>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e5d33000 	ldrb	r3, [r3]
     554:	e3530039 	cmp	r3, #57	; 0x39
     558:	9affffea 	bls	508 <atoi+0x1c>
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e1a00003 	mov	r0, r3
     564:	e28bd000 	add	sp, fp, #0
     568:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     56c:	e12fff1e 	bx	lr

00000570 <memmove>:
     570:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     574:	e28db000 	add	fp, sp, #0
     578:	e24dd01c 	sub	sp, sp, #28
     57c:	e50b0010 	str	r0, [fp, #-16]
     580:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     584:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     588:	e51b3010 	ldr	r3, [fp, #-16]
     58c:	e50b3008 	str	r3, [fp, #-8]
     590:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     594:	e50b300c 	str	r3, [fp, #-12]
     598:	ea000007 	b	5bc <memmove+0x4c>
     59c:	e51b200c 	ldr	r2, [fp, #-12]
     5a0:	e2823001 	add	r3, r2, #1
     5a4:	e50b300c 	str	r3, [fp, #-12]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e2831001 	add	r1, r3, #1
     5b0:	e50b1008 	str	r1, [fp, #-8]
     5b4:	e5d22000 	ldrb	r2, [r2]
     5b8:	e5c32000 	strb	r2, [r3]
     5bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5c0:	e2432001 	sub	r2, r3, #1
     5c4:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5c8:	e3530000 	cmp	r3, #0
     5cc:	cafffff2 	bgt	59c <memmove+0x2c>
     5d0:	e51b3010 	ldr	r3, [fp, #-16]
     5d4:	e1a00003 	mov	r0, r3
     5d8:	e28bd000 	add	sp, fp, #0
     5dc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     5e0:	e12fff1e 	bx	lr

000005e4 <fork>:
     5e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     5e8:	e1a04003 	mov	r4, r3
     5ec:	e1a03002 	mov	r3, r2
     5f0:	e1a02001 	mov	r2, r1
     5f4:	e1a01000 	mov	r1, r0
     5f8:	e3a00001 	mov	r0, #1
     5fc:	ef000000 	svc	0x00000000
     600:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     604:	e12fff1e 	bx	lr

00000608 <exit>:
     608:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     60c:	e1a04003 	mov	r4, r3
     610:	e1a03002 	mov	r3, r2
     614:	e1a02001 	mov	r2, r1
     618:	e1a01000 	mov	r1, r0
     61c:	e3a00002 	mov	r0, #2
     620:	ef000000 	svc	0x00000000
     624:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <wait>:
     62c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     630:	e1a04003 	mov	r4, r3
     634:	e1a03002 	mov	r3, r2
     638:	e1a02001 	mov	r2, r1
     63c:	e1a01000 	mov	r1, r0
     640:	e3a00003 	mov	r0, #3
     644:	ef000000 	svc	0x00000000
     648:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <pipe>:
     650:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     654:	e1a04003 	mov	r4, r3
     658:	e1a03002 	mov	r3, r2
     65c:	e1a02001 	mov	r2, r1
     660:	e1a01000 	mov	r1, r0
     664:	e3a00004 	mov	r0, #4
     668:	ef000000 	svc	0x00000000
     66c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <read>:
     674:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     678:	e1a04003 	mov	r4, r3
     67c:	e1a03002 	mov	r3, r2
     680:	e1a02001 	mov	r2, r1
     684:	e1a01000 	mov	r1, r0
     688:	e3a00005 	mov	r0, #5
     68c:	ef000000 	svc	0x00000000
     690:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <write>:
     698:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     69c:	e1a04003 	mov	r4, r3
     6a0:	e1a03002 	mov	r3, r2
     6a4:	e1a02001 	mov	r2, r1
     6a8:	e1a01000 	mov	r1, r0
     6ac:	e3a00010 	mov	r0, #16
     6b0:	ef000000 	svc	0x00000000
     6b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <close>:
     6bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6c0:	e1a04003 	mov	r4, r3
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a02001 	mov	r2, r1
     6cc:	e1a01000 	mov	r1, r0
     6d0:	e3a00015 	mov	r0, #21
     6d4:	ef000000 	svc	0x00000000
     6d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <kill>:
     6e0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6e4:	e1a04003 	mov	r4, r3
     6e8:	e1a03002 	mov	r3, r2
     6ec:	e1a02001 	mov	r2, r1
     6f0:	e1a01000 	mov	r1, r0
     6f4:	e3a00006 	mov	r0, #6
     6f8:	ef000000 	svc	0x00000000
     6fc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <exec>:
     704:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     708:	e1a04003 	mov	r4, r3
     70c:	e1a03002 	mov	r3, r2
     710:	e1a02001 	mov	r2, r1
     714:	e1a01000 	mov	r1, r0
     718:	e3a00007 	mov	r0, #7
     71c:	ef000000 	svc	0x00000000
     720:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <open>:
     728:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a0000f 	mov	r0, #15
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <mknod>:
     74c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a00011 	mov	r0, #17
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <unlink>:
     770:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00012 	mov	r0, #18
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <fstat>:
     794:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a00008 	mov	r0, #8
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <link>:
     7b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00013 	mov	r0, #19
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <mkdir>:
     7dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00014 	mov	r0, #20
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <chdir>:
     800:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00009 	mov	r0, #9
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <dup>:
     824:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a0000a 	mov	r0, #10
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <getpid>:
     848:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a0000b 	mov	r0, #11
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <sbrk>:
     86c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a0000c 	mov	r0, #12
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <sleep>:
     890:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a0000d 	mov	r0, #13
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <uptime>:
     8b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a0000e 	mov	r0, #14
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <memfree>:
     8d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00016 	mov	r0, #22
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <traceon>:
     8fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00017 	mov	r0, #23
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <getps>:
     920:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00018 	mov	r0, #24
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <suspend>:
     944:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00019 	mov	r0, #25
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <resume>:
     968:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a0001a 	mov	r0, #26
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <putc>:
     98c:	e92d4800 	push	{fp, lr}
     990:	e28db004 	add	fp, sp, #4
     994:	e24dd008 	sub	sp, sp, #8
     998:	e50b0008 	str	r0, [fp, #-8]
     99c:	e1a03001 	mov	r3, r1
     9a0:	e54b3009 	strb	r3, [fp, #-9]
     9a4:	e24b3009 	sub	r3, fp, #9
     9a8:	e3a02001 	mov	r2, #1
     9ac:	e1a01003 	mov	r1, r3
     9b0:	e51b0008 	ldr	r0, [fp, #-8]
     9b4:	ebffff37 	bl	698 <write>
     9b8:	e1a00000 	nop			; (mov r0, r0)
     9bc:	e24bd004 	sub	sp, fp, #4
     9c0:	e8bd8800 	pop	{fp, pc}

000009c4 <printint>:
     9c4:	e92d4800 	push	{fp, lr}
     9c8:	e28db004 	add	fp, sp, #4
     9cc:	e24dd030 	sub	sp, sp, #48	; 0x30
     9d0:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     9d4:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     9d8:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     9dc:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     9e0:	e3a03000 	mov	r3, #0
     9e4:	e50b300c 	str	r3, [fp, #-12]
     9e8:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     9ec:	e3530000 	cmp	r3, #0
     9f0:	0a000008 	beq	a18 <printint+0x54>
     9f4:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     9f8:	e3530000 	cmp	r3, #0
     9fc:	aa000005 	bge	a18 <printint+0x54>
     a00:	e3a03001 	mov	r3, #1
     a04:	e50b300c 	str	r3, [fp, #-12]
     a08:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a0c:	e2633000 	rsb	r3, r3, #0
     a10:	e50b3010 	str	r3, [fp, #-16]
     a14:	ea000001 	b	a20 <printint+0x5c>
     a18:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a1c:	e50b3010 	str	r3, [fp, #-16]
     a20:	e3a03000 	mov	r3, #0
     a24:	e50b3008 	str	r3, [fp, #-8]
     a28:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     a2c:	e51b3010 	ldr	r3, [fp, #-16]
     a30:	e1a01002 	mov	r1, r2
     a34:	e1a00003 	mov	r0, r3
     a38:	eb0001d3 	bl	118c <__aeabi_uidivmod>
     a3c:	e1a03001 	mov	r3, r1
     a40:	e1a01003 	mov	r1, r3
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e2832001 	add	r2, r3, #1
     a4c:	e50b2008 	str	r2, [fp, #-8]
     a50:	e59f209c 	ldr	r2, [pc, #156]	; af4 <printint+0x130>
     a54:	e7d22001 	ldrb	r2, [r2, r1]
     a58:	e24b1004 	sub	r1, fp, #4
     a5c:	e0813003 	add	r3, r1, r3
     a60:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a64:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     a68:	e1a01003 	mov	r1, r3
     a6c:	e51b0010 	ldr	r0, [fp, #-16]
     a70:	eb000188 	bl	1098 <__udivsi3>
     a74:	e1a03000 	mov	r3, r0
     a78:	e50b3010 	str	r3, [fp, #-16]
     a7c:	e51b3010 	ldr	r3, [fp, #-16]
     a80:	e3530000 	cmp	r3, #0
     a84:	1affffe7 	bne	a28 <printint+0x64>
     a88:	e51b300c 	ldr	r3, [fp, #-12]
     a8c:	e3530000 	cmp	r3, #0
     a90:	0a00000e 	beq	ad0 <printint+0x10c>
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e2832001 	add	r2, r3, #1
     a9c:	e50b2008 	str	r2, [fp, #-8]
     aa0:	e24b2004 	sub	r2, fp, #4
     aa4:	e0823003 	add	r3, r2, r3
     aa8:	e3a0202d 	mov	r2, #45	; 0x2d
     aac:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     ab0:	ea000006 	b	ad0 <printint+0x10c>
     ab4:	e24b2020 	sub	r2, fp, #32
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e0823003 	add	r3, r2, r3
     ac0:	e5d33000 	ldrb	r3, [r3]
     ac4:	e1a01003 	mov	r1, r3
     ac8:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     acc:	ebffffae 	bl	98c <putc>
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e2433001 	sub	r3, r3, #1
     ad8:	e50b3008 	str	r3, [fp, #-8]
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e3530000 	cmp	r3, #0
     ae4:	aafffff2 	bge	ab4 <printint+0xf0>
     ae8:	e1a00000 	nop			; (mov r0, r0)
     aec:	e24bd004 	sub	sp, fp, #4
     af0:	e8bd8800 	pop	{fp, pc}
     af4:	000011d0 	.word	0x000011d0

00000af8 <printf>:
     af8:	e92d000e 	push	{r1, r2, r3}
     afc:	e92d4800 	push	{fp, lr}
     b00:	e28db004 	add	fp, sp, #4
     b04:	e24dd024 	sub	sp, sp, #36	; 0x24
     b08:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     b0c:	e3a03000 	mov	r3, #0
     b10:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b14:	e28b3008 	add	r3, fp, #8
     b18:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b1c:	e3a03000 	mov	r3, #0
     b20:	e50b3010 	str	r3, [fp, #-16]
     b24:	ea000074 	b	cfc <printf+0x204>
     b28:	e59b2004 	ldr	r2, [fp, #4]
     b2c:	e51b3010 	ldr	r3, [fp, #-16]
     b30:	e0823003 	add	r3, r2, r3
     b34:	e5d33000 	ldrb	r3, [r3]
     b38:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     b3c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b40:	e3530000 	cmp	r3, #0
     b44:	1a00000b 	bne	b78 <printf+0x80>
     b48:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b4c:	e3530025 	cmp	r3, #37	; 0x25
     b50:	1a000002 	bne	b60 <printf+0x68>
     b54:	e3a03025 	mov	r3, #37	; 0x25
     b58:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b5c:	ea000063 	b	cf0 <printf+0x1f8>
     b60:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b64:	e6ef3073 	uxtb	r3, r3
     b68:	e1a01003 	mov	r1, r3
     b6c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b70:	ebffff85 	bl	98c <putc>
     b74:	ea00005d 	b	cf0 <printf+0x1f8>
     b78:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b7c:	e3530025 	cmp	r3, #37	; 0x25
     b80:	1a00005a 	bne	cf0 <printf+0x1f8>
     b84:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b88:	e3530064 	cmp	r3, #100	; 0x64
     b8c:	1a00000a 	bne	bbc <printf+0xc4>
     b90:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     b94:	e5933000 	ldr	r3, [r3]
     b98:	e1a01003 	mov	r1, r3
     b9c:	e3a03001 	mov	r3, #1
     ba0:	e3a0200a 	mov	r2, #10
     ba4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ba8:	ebffff85 	bl	9c4 <printint>
     bac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bb0:	e2833004 	add	r3, r3, #4
     bb4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bb8:	ea00004a 	b	ce8 <printf+0x1f0>
     bbc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bc0:	e3530078 	cmp	r3, #120	; 0x78
     bc4:	0a000002 	beq	bd4 <printf+0xdc>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bcc:	e3530070 	cmp	r3, #112	; 0x70
     bd0:	1a00000a 	bne	c00 <printf+0x108>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bd8:	e5933000 	ldr	r3, [r3]
     bdc:	e1a01003 	mov	r1, r3
     be0:	e3a03000 	mov	r3, #0
     be4:	e3a02010 	mov	r2, #16
     be8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bec:	ebffff74 	bl	9c4 <printint>
     bf0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bf4:	e2833004 	add	r3, r3, #4
     bf8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     bfc:	ea000039 	b	ce8 <printf+0x1f0>
     c00:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c04:	e3530073 	cmp	r3, #115	; 0x73
     c08:	1a000018 	bne	c70 <printf+0x178>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e50b300c 	str	r3, [fp, #-12]
     c18:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c1c:	e2833004 	add	r3, r3, #4
     c20:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c24:	e51b300c 	ldr	r3, [fp, #-12]
     c28:	e3530000 	cmp	r3, #0
     c2c:	1a00000a 	bne	c5c <printf+0x164>
     c30:	e59f30f0 	ldr	r3, [pc, #240]	; d28 <printf+0x230>
     c34:	e50b300c 	str	r3, [fp, #-12]
     c38:	ea000007 	b	c5c <printf+0x164>
     c3c:	e51b300c 	ldr	r3, [fp, #-12]
     c40:	e5d33000 	ldrb	r3, [r3]
     c44:	e1a01003 	mov	r1, r3
     c48:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c4c:	ebffff4e 	bl	98c <putc>
     c50:	e51b300c 	ldr	r3, [fp, #-12]
     c54:	e2833001 	add	r3, r3, #1
     c58:	e50b300c 	str	r3, [fp, #-12]
     c5c:	e51b300c 	ldr	r3, [fp, #-12]
     c60:	e5d33000 	ldrb	r3, [r3]
     c64:	e3530000 	cmp	r3, #0
     c68:	1afffff3 	bne	c3c <printf+0x144>
     c6c:	ea00001d 	b	ce8 <printf+0x1f0>
     c70:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c74:	e3530063 	cmp	r3, #99	; 0x63
     c78:	1a000009 	bne	ca4 <printf+0x1ac>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e6ef3073 	uxtb	r3, r3
     c88:	e1a01003 	mov	r1, r3
     c8c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c90:	ebffff3d 	bl	98c <putc>
     c94:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c98:	e2833004 	add	r3, r3, #4
     c9c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ca0:	ea000010 	b	ce8 <printf+0x1f0>
     ca4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ca8:	e3530025 	cmp	r3, #37	; 0x25
     cac:	1a000005 	bne	cc8 <printf+0x1d0>
     cb0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     cb4:	e6ef3073 	uxtb	r3, r3
     cb8:	e1a01003 	mov	r1, r3
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cc0:	ebffff31 	bl	98c <putc>
     cc4:	ea000007 	b	ce8 <printf+0x1f0>
     cc8:	e3a01025 	mov	r1, #37	; 0x25
     ccc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cd0:	ebffff2d 	bl	98c <putc>
     cd4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     cd8:	e6ef3073 	uxtb	r3, r3
     cdc:	e1a01003 	mov	r1, r3
     ce0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ce4:	ebffff28 	bl	98c <putc>
     ce8:	e3a03000 	mov	r3, #0
     cec:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     cf0:	e51b3010 	ldr	r3, [fp, #-16]
     cf4:	e2833001 	add	r3, r3, #1
     cf8:	e50b3010 	str	r3, [fp, #-16]
     cfc:	e59b2004 	ldr	r2, [fp, #4]
     d00:	e51b3010 	ldr	r3, [fp, #-16]
     d04:	e0823003 	add	r3, r2, r3
     d08:	e5d33000 	ldrb	r3, [r3]
     d0c:	e3530000 	cmp	r3, #0
     d10:	1affff84 	bne	b28 <printf+0x30>
     d14:	e1a00000 	nop			; (mov r0, r0)
     d18:	e24bd004 	sub	sp, fp, #4
     d1c:	e8bd4800 	pop	{fp, lr}
     d20:	e28dd00c 	add	sp, sp, #12
     d24:	e12fff1e 	bx	lr
     d28:	000011c8 	.word	0x000011c8

00000d2c <free>:
     d2c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     d30:	e28db000 	add	fp, sp, #0
     d34:	e24dd014 	sub	sp, sp, #20
     d38:	e50b0010 	str	r0, [fp, #-16]
     d3c:	e51b3010 	ldr	r3, [fp, #-16]
     d40:	e2433008 	sub	r3, r3, #8
     d44:	e50b300c 	str	r3, [fp, #-12]
     d48:	e59f3154 	ldr	r3, [pc, #340]	; ea4 <free+0x178>
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e50b3008 	str	r3, [fp, #-8]
     d54:	ea000010 	b	d9c <free+0x70>
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e51b2008 	ldr	r2, [fp, #-8]
     d64:	e1520003 	cmp	r2, r3
     d68:	3a000008 	bcc	d90 <free+0x64>
     d6c:	e51b200c 	ldr	r2, [fp, #-12]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e1520003 	cmp	r2, r3
     d78:	8a000010 	bhi	dc0 <free+0x94>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5933000 	ldr	r3, [r3]
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e1520003 	cmp	r2, r3
     d8c:	3a00000b 	bcc	dc0 <free+0x94>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e50b3008 	str	r3, [fp, #-8]
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e1520003 	cmp	r2, r3
     da8:	9affffea 	bls	d58 <free+0x2c>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e51b200c 	ldr	r2, [fp, #-12]
     db8:	e1520003 	cmp	r2, r3
     dbc:	2affffe5 	bcs	d58 <free+0x2c>
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e5933004 	ldr	r3, [r3, #4]
     dc8:	e1a03183 	lsl	r3, r3, #3
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e0822003 	add	r2, r2, r3
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e1520003 	cmp	r2, r3
     de0:	1a00000d 	bne	e1c <free+0xf0>
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e5932004 	ldr	r2, [r3, #4]
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e5933004 	ldr	r3, [r3, #4]
     df8:	e0822003 	add	r2, r2, r3
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5832004 	str	r2, [r3, #4]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5933000 	ldr	r3, [r3]
     e0c:	e5932000 	ldr	r2, [r3]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5832000 	str	r2, [r3]
     e18:	ea000003 	b	e2c <free+0x100>
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5932000 	ldr	r2, [r3]
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5832000 	str	r2, [r3]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5933004 	ldr	r3, [r3, #4]
     e34:	e1a03183 	lsl	r3, r3, #3
     e38:	e51b2008 	ldr	r2, [fp, #-8]
     e3c:	e0823003 	add	r3, r2, r3
     e40:	e51b200c 	ldr	r2, [fp, #-12]
     e44:	e1520003 	cmp	r2, r3
     e48:	1a00000b 	bne	e7c <free+0x150>
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5932004 	ldr	r2, [r3, #4]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5933004 	ldr	r3, [r3, #4]
     e5c:	e0822003 	add	r2, r2, r3
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5832004 	str	r2, [r3, #4]
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5932000 	ldr	r2, [r3]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5832000 	str	r2, [r3]
     e78:	ea000002 	b	e88 <free+0x15c>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e51b200c 	ldr	r2, [fp, #-12]
     e84:	e5832000 	str	r2, [r3]
     e88:	e59f2014 	ldr	r2, [pc, #20]	; ea4 <free+0x178>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5823000 	str	r3, [r2]
     e94:	e1a00000 	nop			; (mov r0, r0)
     e98:	e28bd000 	add	sp, fp, #0
     e9c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     ea0:	e12fff1e 	bx	lr
     ea4:	000011ec 	.word	0x000011ec

00000ea8 <morecore>:
     ea8:	e92d4800 	push	{fp, lr}
     eac:	e28db004 	add	fp, sp, #4
     eb0:	e24dd010 	sub	sp, sp, #16
     eb4:	e50b0010 	str	r0, [fp, #-16]
     eb8:	e51b3010 	ldr	r3, [fp, #-16]
     ebc:	e3530a01 	cmp	r3, #4096	; 0x1000
     ec0:	2a000001 	bcs	ecc <morecore+0x24>
     ec4:	e3a03a01 	mov	r3, #4096	; 0x1000
     ec8:	e50b3010 	str	r3, [fp, #-16]
     ecc:	e51b3010 	ldr	r3, [fp, #-16]
     ed0:	e1a03183 	lsl	r3, r3, #3
     ed4:	e1a00003 	mov	r0, r3
     ed8:	ebfffe63 	bl	86c <sbrk>
     edc:	e50b0008 	str	r0, [fp, #-8]
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e3730001 	cmn	r3, #1
     ee8:	1a000001 	bne	ef4 <morecore+0x4c>
     eec:	e3a03000 	mov	r3, #0
     ef0:	ea00000a 	b	f20 <morecore+0x78>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e50b300c 	str	r3, [fp, #-12]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e51b2010 	ldr	r2, [fp, #-16]
     f04:	e5832004 	str	r2, [r3, #4]
     f08:	e51b300c 	ldr	r3, [fp, #-12]
     f0c:	e2833008 	add	r3, r3, #8
     f10:	e1a00003 	mov	r0, r3
     f14:	ebffff84 	bl	d2c <free>
     f18:	e59f300c 	ldr	r3, [pc, #12]	; f2c <morecore+0x84>
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e1a00003 	mov	r0, r3
     f24:	e24bd004 	sub	sp, fp, #4
     f28:	e8bd8800 	pop	{fp, pc}
     f2c:	000011ec 	.word	0x000011ec

00000f30 <malloc>:
     f30:	e92d4800 	push	{fp, lr}
     f34:	e28db004 	add	fp, sp, #4
     f38:	e24dd018 	sub	sp, sp, #24
     f3c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     f40:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f44:	e2833007 	add	r3, r3, #7
     f48:	e1a031a3 	lsr	r3, r3, #3
     f4c:	e2833001 	add	r3, r3, #1
     f50:	e50b3010 	str	r3, [fp, #-16]
     f54:	e59f3134 	ldr	r3, [pc, #308]	; 1090 <malloc+0x160>
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e50b300c 	str	r3, [fp, #-12]
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e3530000 	cmp	r3, #0
     f68:	1a00000b 	bne	f9c <malloc+0x6c>
     f6c:	e59f3120 	ldr	r3, [pc, #288]	; 1094 <malloc+0x164>
     f70:	e50b300c 	str	r3, [fp, #-12]
     f74:	e59f2114 	ldr	r2, [pc, #276]	; 1090 <malloc+0x160>
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5823000 	str	r3, [r2]
     f80:	e59f3108 	ldr	r3, [pc, #264]	; 1090 <malloc+0x160>
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e59f2104 	ldr	r2, [pc, #260]	; 1094 <malloc+0x164>
     f8c:	e5823000 	str	r3, [r2]
     f90:	e59f30fc 	ldr	r3, [pc, #252]	; 1094 <malloc+0x164>
     f94:	e3a02000 	mov	r2, #0
     f98:	e5832004 	str	r2, [r3, #4]
     f9c:	e51b300c 	ldr	r3, [fp, #-12]
     fa0:	e5933000 	ldr	r3, [r3]
     fa4:	e50b3008 	str	r3, [fp, #-8]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e51b2010 	ldr	r2, [fp, #-16]
     fb4:	e1520003 	cmp	r2, r3
     fb8:	8a00001e 	bhi	1038 <malloc+0x108>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933004 	ldr	r3, [r3, #4]
     fc4:	e51b2010 	ldr	r2, [fp, #-16]
     fc8:	e1520003 	cmp	r2, r3
     fcc:	1a000004 	bne	fe4 <malloc+0xb4>
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5932000 	ldr	r2, [r3]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5832000 	str	r2, [r3]
     fe0:	ea00000e 	b	1020 <malloc+0xf0>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5932004 	ldr	r2, [r3, #4]
     fec:	e51b3010 	ldr	r3, [fp, #-16]
     ff0:	e0422003 	sub	r2, r2, r3
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5832004 	str	r2, [r3, #4]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933004 	ldr	r3, [r3, #4]
    1004:	e1a03183 	lsl	r3, r3, #3
    1008:	e51b2008 	ldr	r2, [fp, #-8]
    100c:	e0823003 	add	r3, r2, r3
    1010:	e50b3008 	str	r3, [fp, #-8]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e51b2010 	ldr	r2, [fp, #-16]
    101c:	e5832004 	str	r2, [r3, #4]
    1020:	e59f2068 	ldr	r2, [pc, #104]	; 1090 <malloc+0x160>
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5823000 	str	r3, [r2]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e2833008 	add	r3, r3, #8
    1034:	ea000012 	b	1084 <malloc+0x154>
    1038:	e59f3050 	ldr	r3, [pc, #80]	; 1090 <malloc+0x160>
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e51b2008 	ldr	r2, [fp, #-8]
    1044:	e1520003 	cmp	r2, r3
    1048:	1a000007 	bne	106c <malloc+0x13c>
    104c:	e51b0010 	ldr	r0, [fp, #-16]
    1050:	ebffff94 	bl	ea8 <morecore>
    1054:	e50b0008 	str	r0, [fp, #-8]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e3530000 	cmp	r3, #0
    1060:	1a000001 	bne	106c <malloc+0x13c>
    1064:	e3a03000 	mov	r3, #0
    1068:	ea000005 	b	1084 <malloc+0x154>
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e50b300c 	str	r3, [fp, #-12]
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5933000 	ldr	r3, [r3]
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	eaffffc8 	b	fa8 <malloc+0x78>
    1084:	e1a00003 	mov	r0, r3
    1088:	e24bd004 	sub	sp, fp, #4
    108c:	e8bd8800 	pop	{fp, pc}
    1090:	000011ec 	.word	0x000011ec
    1094:	000011e4 	.word	0x000011e4

00001098 <__udivsi3>:
    1098:	e2512001 	subs	r2, r1, #1
    109c:	012fff1e 	bxeq	lr
    10a0:	3a000036 	bcc	1180 <__udivsi3+0xe8>
    10a4:	e1500001 	cmp	r0, r1
    10a8:	9a000022 	bls	1138 <__udivsi3+0xa0>
    10ac:	e1110002 	tst	r1, r2
    10b0:	0a000023 	beq	1144 <__udivsi3+0xac>
    10b4:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    10b8:	01a01181 	lsleq	r1, r1, #3
    10bc:	03a03008 	moveq	r3, #8
    10c0:	13a03001 	movne	r3, #1
    10c4:	e3510201 	cmp	r1, #268435456	; 0x10000000
    10c8:	31510000 	cmpcc	r1, r0
    10cc:	31a01201 	lslcc	r1, r1, #4
    10d0:	31a03203 	lslcc	r3, r3, #4
    10d4:	3afffffa 	bcc	10c4 <__udivsi3+0x2c>
    10d8:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    10dc:	31510000 	cmpcc	r1, r0
    10e0:	31a01081 	lslcc	r1, r1, #1
    10e4:	31a03083 	lslcc	r3, r3, #1
    10e8:	3afffffa 	bcc	10d8 <__udivsi3+0x40>
    10ec:	e3a02000 	mov	r2, #0
    10f0:	e1500001 	cmp	r0, r1
    10f4:	20400001 	subcs	r0, r0, r1
    10f8:	21822003 	orrcs	r2, r2, r3
    10fc:	e15000a1 	cmp	r0, r1, lsr #1
    1100:	204000a1 	subcs	r0, r0, r1, lsr #1
    1104:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1108:	e1500121 	cmp	r0, r1, lsr #2
    110c:	20400121 	subcs	r0, r0, r1, lsr #2
    1110:	21822123 	orrcs	r2, r2, r3, lsr #2
    1114:	e15001a1 	cmp	r0, r1, lsr #3
    1118:	204001a1 	subcs	r0, r0, r1, lsr #3
    111c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1120:	e3500000 	cmp	r0, #0
    1124:	11b03223 	lsrsne	r3, r3, #4
    1128:	11a01221 	lsrne	r1, r1, #4
    112c:	1affffef 	bne	10f0 <__udivsi3+0x58>
    1130:	e1a00002 	mov	r0, r2
    1134:	e12fff1e 	bx	lr
    1138:	03a00001 	moveq	r0, #1
    113c:	13a00000 	movne	r0, #0
    1140:	e12fff1e 	bx	lr
    1144:	e3510801 	cmp	r1, #65536	; 0x10000
    1148:	21a01821 	lsrcs	r1, r1, #16
    114c:	23a02010 	movcs	r2, #16
    1150:	33a02000 	movcc	r2, #0
    1154:	e3510c01 	cmp	r1, #256	; 0x100
    1158:	21a01421 	lsrcs	r1, r1, #8
    115c:	22822008 	addcs	r2, r2, #8
    1160:	e3510010 	cmp	r1, #16
    1164:	21a01221 	lsrcs	r1, r1, #4
    1168:	22822004 	addcs	r2, r2, #4
    116c:	e3510004 	cmp	r1, #4
    1170:	82822003 	addhi	r2, r2, #3
    1174:	908220a1 	addls	r2, r2, r1, lsr #1
    1178:	e1a00230 	lsr	r0, r0, r2
    117c:	e12fff1e 	bx	lr
    1180:	e3500000 	cmp	r0, #0
    1184:	13e00000 	mvnne	r0, #0
    1188:	ea000007 	b	11ac <__aeabi_idiv0>

0000118c <__aeabi_uidivmod>:
    118c:	e3510000 	cmp	r1, #0
    1190:	0afffffa 	beq	1180 <__udivsi3+0xe8>
    1194:	e92d4003 	push	{r0, r1, lr}
    1198:	ebffffbe 	bl	1098 <__udivsi3>
    119c:	e8bd4006 	pop	{r1, r2, lr}
    11a0:	e0030092 	mul	r3, r2, r0
    11a4:	e0411003 	sub	r1, r1, r3
    11a8:	e12fff1e 	bx	lr

000011ac <__aeabi_idiv0>:
    11ac:	e12fff1e 	bx	lr
