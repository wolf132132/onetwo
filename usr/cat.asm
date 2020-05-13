
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	; 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0001a6 	bl	6c0 <write>
      24:	e3a02c02 	mov	r2, #512	; 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	; 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb000199 	bl	69c <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	; 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002b0 	bl	b20 <printf>
      5c:	eb000173 	bl	630 <exit>
      60:	e1a00000 	nop			; (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	0000122c 	.word	0x0000122c
      70:	000011d8 	.word	0x000011d8

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb000163 	bl	630 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb0001a0 	bl	750 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	; 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000287 	bl	b20 <printf>
     100:	eb00014a 	bl	630 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb000173 	bl	6e4 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb00013e 	bl	630 <exit>
     134:	000011ec 	.word	0x000011ec

00000138 <strcpy>:
     138:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     13c:	e28db000 	add	fp, sp, #0
     140:	e24dd014 	sub	sp, sp, #20
     144:	e50b0010 	str	r0, [fp, #-16]
     148:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     14c:	e51b3010 	ldr	r3, [fp, #-16]
     150:	e50b3008 	str	r3, [fp, #-8]
     154:	e1a00000 	nop			; (mov r0, r0)
     158:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     15c:	e2823001 	add	r3, r2, #1
     160:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     164:	e51b3010 	ldr	r3, [fp, #-16]
     168:	e2831001 	add	r1, r3, #1
     16c:	e50b1010 	str	r1, [fp, #-16]
     170:	e5d22000 	ldrb	r2, [r2]
     174:	e5c32000 	strb	r2, [r3]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	1afffff4 	bne	158 <strcpy+0x20>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	e28bd000 	add	sp, fp, #0
     190:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     194:	e12fff1e 	bx	lr

00000198 <strcmp>:
     198:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     19c:	e28db000 	add	fp, sp, #0
     1a0:	e24dd00c 	sub	sp, sp, #12
     1a4:	e50b0008 	str	r0, [fp, #-8]
     1a8:	e50b100c 	str	r1, [fp, #-12]
     1ac:	ea000005 	b	1c8 <strcmp+0x30>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b300c 	str	r3, [fp, #-12]
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e5d33000 	ldrb	r3, [r3]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	0a000005 	beq	1f0 <strcmp+0x58>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e5d32000 	ldrb	r2, [r3]
     1e0:	e51b300c 	ldr	r3, [fp, #-12]
     1e4:	e5d33000 	ldrb	r3, [r3]
     1e8:	e1520003 	cmp	r2, r3
     1ec:	0affffef 	beq	1b0 <strcmp+0x18>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e0423003 	sub	r3, r2, r3
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strlen>:
     218:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd014 	sub	sp, sp, #20
     224:	e50b0010 	str	r0, [fp, #-16]
     228:	e3a03000 	mov	r3, #0
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	ea000002 	b	240 <strlen+0x28>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e51b2010 	ldr	r2, [fp, #-16]
     248:	e0823003 	add	r3, r2, r3
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	1afffff6 	bne	234 <strlen+0x1c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e1a00003 	mov	r0, r3
     260:	e28bd000 	add	sp, fp, #0
     264:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     268:	e12fff1e 	bx	lr

0000026c <memset>:
     26c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     270:	e28db000 	add	fp, sp, #0
     274:	e24dd024 	sub	sp, sp, #36	; 0x24
     278:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     27c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     280:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     284:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     290:	e54b300d 	strb	r3, [fp, #-13]
     294:	e55b300d 	ldrb	r3, [fp, #-13]
     298:	e1a02c03 	lsl	r2, r3, #24
     29c:	e55b300d 	ldrb	r3, [fp, #-13]
     2a0:	e1a03803 	lsl	r3, r3, #16
     2a4:	e1822003 	orr	r2, r2, r3
     2a8:	e55b300d 	ldrb	r3, [fp, #-13]
     2ac:	e1a03403 	lsl	r3, r3, #8
     2b0:	e1822003 	orr	r2, r2, r3
     2b4:	e55b300d 	ldrb	r3, [fp, #-13]
     2b8:	e1823003 	orr	r3, r2, r3
     2bc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     2c0:	ea000008 	b	2e8 <memset+0x7c>
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e55b200d 	ldrb	r2, [fp, #-13]
     2cc:	e5c32000 	strb	r2, [r3]
     2d0:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2d4:	e2433001 	sub	r3, r3, #1
     2d8:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e2833001 	add	r3, r3, #1
     2e4:	e50b3008 	str	r3, [fp, #-8]
     2e8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     2ec:	e3530000 	cmp	r3, #0
     2f0:	0a000003 	beq	304 <memset+0x98>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e2033003 	and	r3, r3, #3
     2fc:	e3530000 	cmp	r3, #0
     300:	1affffef 	bne	2c4 <memset+0x58>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e50b300c 	str	r3, [fp, #-12]
     30c:	ea000008 	b	334 <memset+0xc8>
     310:	e51b300c 	ldr	r3, [fp, #-12]
     314:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     318:	e5832000 	str	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     320:	e2433004 	sub	r3, r3, #4
     324:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     328:	e51b300c 	ldr	r3, [fp, #-12]
     32c:	e2833004 	add	r3, r3, #4
     330:	e50b300c 	str	r3, [fp, #-12]
     334:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     338:	e3530003 	cmp	r3, #3
     33c:	8afffff3 	bhi	310 <memset+0xa4>
     340:	e51b300c 	ldr	r3, [fp, #-12]
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	ea000008 	b	370 <memset+0x104>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e55b200d 	ldrb	r2, [fp, #-13]
     354:	e5c32000 	strb	r2, [r3]
     358:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     35c:	e2433001 	sub	r3, r3, #1
     360:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e2833001 	add	r3, r3, #1
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     374:	e3530000 	cmp	r3, #0
     378:	1afffff3 	bne	34c <memset+0xe0>
     37c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     380:	e1a00003 	mov	r0, r3
     384:	e28bd000 	add	sp, fp, #0
     388:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     38c:	e12fff1e 	bx	lr

00000390 <strchr>:
     390:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     394:	e28db000 	add	fp, sp, #0
     398:	e24dd00c 	sub	sp, sp, #12
     39c:	e50b0008 	str	r0, [fp, #-8]
     3a0:	e1a03001 	mov	r3, r1
     3a4:	e54b3009 	strb	r3, [fp, #-9]
     3a8:	ea000009 	b	3d4 <strchr+0x44>
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e5d33000 	ldrb	r3, [r3]
     3b4:	e55b2009 	ldrb	r2, [fp, #-9]
     3b8:	e1520003 	cmp	r2, r3
     3bc:	1a000001 	bne	3c8 <strchr+0x38>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	ea000007 	b	3e8 <strchr+0x58>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e50b3008 	str	r3, [fp, #-8]
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e5d33000 	ldrb	r3, [r3]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	1afffff1 	bne	3ac <strchr+0x1c>
     3e4:	e3a03000 	mov	r3, #0
     3e8:	e1a00003 	mov	r0, r3
     3ec:	e28bd000 	add	sp, fp, #0
     3f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3f4:	e12fff1e 	bx	lr

000003f8 <gets>:
     3f8:	e92d4800 	push	{fp, lr}
     3fc:	e28db004 	add	fp, sp, #4
     400:	e24dd018 	sub	sp, sp, #24
     404:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     408:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     40c:	e3a03000 	mov	r3, #0
     410:	e50b3008 	str	r3, [fp, #-8]
     414:	ea000016 	b	474 <gets+0x7c>
     418:	e24b300d 	sub	r3, fp, #13
     41c:	e3a02001 	mov	r2, #1
     420:	e1a01003 	mov	r1, r3
     424:	e3a00000 	mov	r0, #0
     428:	eb00009b 	bl	69c <read>
     42c:	e50b000c 	str	r0, [fp, #-12]
     430:	e51b300c 	ldr	r3, [fp, #-12]
     434:	e3530000 	cmp	r3, #0
     438:	da000013 	ble	48c <gets+0x94>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e2832001 	add	r2, r3, #1
     444:	e50b2008 	str	r2, [fp, #-8]
     448:	e1a02003 	mov	r2, r3
     44c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     450:	e0833002 	add	r3, r3, r2
     454:	e55b200d 	ldrb	r2, [fp, #-13]
     458:	e5c32000 	strb	r2, [r3]
     45c:	e55b300d 	ldrb	r3, [fp, #-13]
     460:	e353000a 	cmp	r3, #10
     464:	0a000009 	beq	490 <gets+0x98>
     468:	e55b300d 	ldrb	r3, [fp, #-13]
     46c:	e353000d 	cmp	r3, #13
     470:	0a000006 	beq	490 <gets+0x98>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     480:	e1520003 	cmp	r2, r3
     484:	caffffe3 	bgt	418 <gets+0x20>
     488:	ea000000 	b	490 <gets+0x98>
     48c:	e1a00000 	nop			; (mov r0, r0)
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     498:	e0823003 	add	r3, r2, r3
     49c:	e3a02000 	mov	r2, #0
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4a8:	e1a00003 	mov	r0, r3
     4ac:	e24bd004 	sub	sp, fp, #4
     4b0:	e8bd8800 	pop	{fp, pc}

000004b4 <stat>:
     4b4:	e92d4800 	push	{fp, lr}
     4b8:	e28db004 	add	fp, sp, #4
     4bc:	e24dd010 	sub	sp, sp, #16
     4c0:	e50b0010 	str	r0, [fp, #-16]
     4c4:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     4c8:	e3a01000 	mov	r1, #0
     4cc:	e51b0010 	ldr	r0, [fp, #-16]
     4d0:	eb00009e 	bl	750 <open>
     4d4:	e50b0008 	str	r0, [fp, #-8]
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e3530000 	cmp	r3, #0
     4e0:	aa000001 	bge	4ec <stat+0x38>
     4e4:	e3e03000 	mvn	r3, #0
     4e8:	ea000006 	b	508 <stat+0x54>
     4ec:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     4f0:	e51b0008 	ldr	r0, [fp, #-8]
     4f4:	eb0000b0 	bl	7bc <fstat>
     4f8:	e50b000c 	str	r0, [fp, #-12]
     4fc:	e51b0008 	ldr	r0, [fp, #-8]
     500:	eb000077 	bl	6e4 <close>
     504:	e51b300c 	ldr	r3, [fp, #-12]
     508:	e1a00003 	mov	r0, r3
     50c:	e24bd004 	sub	sp, fp, #4
     510:	e8bd8800 	pop	{fp, pc}

00000514 <atoi>:
     514:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     518:	e28db000 	add	fp, sp, #0
     51c:	e24dd014 	sub	sp, sp, #20
     520:	e50b0010 	str	r0, [fp, #-16]
     524:	e3a03000 	mov	r3, #0
     528:	e50b3008 	str	r3, [fp, #-8]
     52c:	ea00000c 	b	564 <atoi+0x50>
     530:	e51b2008 	ldr	r2, [fp, #-8]
     534:	e1a03002 	mov	r3, r2
     538:	e1a03103 	lsl	r3, r3, #2
     53c:	e0833002 	add	r3, r3, r2
     540:	e1a03083 	lsl	r3, r3, #1
     544:	e1a01003 	mov	r1, r3
     548:	e51b3010 	ldr	r3, [fp, #-16]
     54c:	e2832001 	add	r2, r3, #1
     550:	e50b2010 	str	r2, [fp, #-16]
     554:	e5d33000 	ldrb	r3, [r3]
     558:	e0813003 	add	r3, r1, r3
     55c:	e2433030 	sub	r3, r3, #48	; 0x30
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3010 	ldr	r3, [fp, #-16]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e353002f 	cmp	r3, #47	; 0x2f
     570:	9a000003 	bls	584 <atoi+0x70>
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e3530039 	cmp	r3, #57	; 0x39
     580:	9affffea 	bls	530 <atoi+0x1c>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e1a00003 	mov	r0, r3
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <memmove>:
     598:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd01c 	sub	sp, sp, #28
     5a4:	e50b0010 	str	r0, [fp, #-16]
     5a8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5ac:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5b0:	e51b3010 	ldr	r3, [fp, #-16]
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     5bc:	e50b300c 	str	r3, [fp, #-12]
     5c0:	ea000007 	b	5e4 <memmove+0x4c>
     5c4:	e51b200c 	ldr	r2, [fp, #-12]
     5c8:	e2823001 	add	r3, r2, #1
     5cc:	e50b300c 	str	r3, [fp, #-12]
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2831001 	add	r1, r3, #1
     5d8:	e50b1008 	str	r1, [fp, #-8]
     5dc:	e5d22000 	ldrb	r2, [r2]
     5e0:	e5c32000 	strb	r2, [r3]
     5e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     5e8:	e2432001 	sub	r2, r3, #1
     5ec:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5f0:	e3530000 	cmp	r3, #0
     5f4:	cafffff2 	bgt	5c4 <memmove+0x2c>
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e1a00003 	mov	r0, r3
     600:	e28bd000 	add	sp, fp, #0
     604:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     608:	e12fff1e 	bx	lr

0000060c <fork>:
     60c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     610:	e1a04003 	mov	r4, r3
     614:	e1a03002 	mov	r3, r2
     618:	e1a02001 	mov	r2, r1
     61c:	e1a01000 	mov	r1, r0
     620:	e3a00001 	mov	r0, #1
     624:	ef000000 	svc	0x00000000
     628:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     62c:	e12fff1e 	bx	lr

00000630 <exit>:
     630:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     634:	e1a04003 	mov	r4, r3
     638:	e1a03002 	mov	r3, r2
     63c:	e1a02001 	mov	r2, r1
     640:	e1a01000 	mov	r1, r0
     644:	e3a00002 	mov	r0, #2
     648:	ef000000 	svc	0x00000000
     64c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <wait>:
     654:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     658:	e1a04003 	mov	r4, r3
     65c:	e1a03002 	mov	r3, r2
     660:	e1a02001 	mov	r2, r1
     664:	e1a01000 	mov	r1, r0
     668:	e3a00003 	mov	r0, #3
     66c:	ef000000 	svc	0x00000000
     670:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <pipe>:
     678:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     67c:	e1a04003 	mov	r4, r3
     680:	e1a03002 	mov	r3, r2
     684:	e1a02001 	mov	r2, r1
     688:	e1a01000 	mov	r1, r0
     68c:	e3a00004 	mov	r0, #4
     690:	ef000000 	svc	0x00000000
     694:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <read>:
     69c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6a0:	e1a04003 	mov	r4, r3
     6a4:	e1a03002 	mov	r3, r2
     6a8:	e1a02001 	mov	r2, r1
     6ac:	e1a01000 	mov	r1, r0
     6b0:	e3a00005 	mov	r0, #5
     6b4:	ef000000 	svc	0x00000000
     6b8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <write>:
     6c0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6c4:	e1a04003 	mov	r4, r3
     6c8:	e1a03002 	mov	r3, r2
     6cc:	e1a02001 	mov	r2, r1
     6d0:	e1a01000 	mov	r1, r0
     6d4:	e3a00010 	mov	r0, #16
     6d8:	ef000000 	svc	0x00000000
     6dc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <close>:
     6e4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6e8:	e1a04003 	mov	r4, r3
     6ec:	e1a03002 	mov	r3, r2
     6f0:	e1a02001 	mov	r2, r1
     6f4:	e1a01000 	mov	r1, r0
     6f8:	e3a00015 	mov	r0, #21
     6fc:	ef000000 	svc	0x00000000
     700:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     704:	e12fff1e 	bx	lr

00000708 <kill>:
     708:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     70c:	e1a04003 	mov	r4, r3
     710:	e1a03002 	mov	r3, r2
     714:	e1a02001 	mov	r2, r1
     718:	e1a01000 	mov	r1, r0
     71c:	e3a00006 	mov	r0, #6
     720:	ef000000 	svc	0x00000000
     724:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     728:	e12fff1e 	bx	lr

0000072c <exec>:
     72c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     730:	e1a04003 	mov	r4, r3
     734:	e1a03002 	mov	r3, r2
     738:	e1a02001 	mov	r2, r1
     73c:	e1a01000 	mov	r1, r0
     740:	e3a00007 	mov	r0, #7
     744:	ef000000 	svc	0x00000000
     748:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <open>:
     750:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     754:	e1a04003 	mov	r4, r3
     758:	e1a03002 	mov	r3, r2
     75c:	e1a02001 	mov	r2, r1
     760:	e1a01000 	mov	r1, r0
     764:	e3a0000f 	mov	r0, #15
     768:	ef000000 	svc	0x00000000
     76c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <mknod>:
     774:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     778:	e1a04003 	mov	r4, r3
     77c:	e1a03002 	mov	r3, r2
     780:	e1a02001 	mov	r2, r1
     784:	e1a01000 	mov	r1, r0
     788:	e3a00011 	mov	r0, #17
     78c:	ef000000 	svc	0x00000000
     790:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <unlink>:
     798:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     79c:	e1a04003 	mov	r4, r3
     7a0:	e1a03002 	mov	r3, r2
     7a4:	e1a02001 	mov	r2, r1
     7a8:	e1a01000 	mov	r1, r0
     7ac:	e3a00012 	mov	r0, #18
     7b0:	ef000000 	svc	0x00000000
     7b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7b8:	e12fff1e 	bx	lr

000007bc <fstat>:
     7bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7c0:	e1a04003 	mov	r4, r3
     7c4:	e1a03002 	mov	r3, r2
     7c8:	e1a02001 	mov	r2, r1
     7cc:	e1a01000 	mov	r1, r0
     7d0:	e3a00008 	mov	r0, #8
     7d4:	ef000000 	svc	0x00000000
     7d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <link>:
     7e0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7e4:	e1a04003 	mov	r4, r3
     7e8:	e1a03002 	mov	r3, r2
     7ec:	e1a02001 	mov	r2, r1
     7f0:	e1a01000 	mov	r1, r0
     7f4:	e3a00013 	mov	r0, #19
     7f8:	ef000000 	svc	0x00000000
     7fc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <mkdir>:
     804:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     808:	e1a04003 	mov	r4, r3
     80c:	e1a03002 	mov	r3, r2
     810:	e1a02001 	mov	r2, r1
     814:	e1a01000 	mov	r1, r0
     818:	e3a00014 	mov	r0, #20
     81c:	ef000000 	svc	0x00000000
     820:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <chdir>:
     828:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a00009 	mov	r0, #9
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <dup>:
     84c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     850:	e1a04003 	mov	r4, r3
     854:	e1a03002 	mov	r3, r2
     858:	e1a02001 	mov	r2, r1
     85c:	e1a01000 	mov	r1, r0
     860:	e3a0000a 	mov	r0, #10
     864:	ef000000 	svc	0x00000000
     868:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <getpid>:
     870:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     874:	e1a04003 	mov	r4, r3
     878:	e1a03002 	mov	r3, r2
     87c:	e1a02001 	mov	r2, r1
     880:	e1a01000 	mov	r1, r0
     884:	e3a0000b 	mov	r0, #11
     888:	ef000000 	svc	0x00000000
     88c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <sbrk>:
     894:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a0000c 	mov	r0, #12
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <sleep>:
     8b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a0000d 	mov	r0, #13
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <uptime>:
     8dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a0000e 	mov	r0, #14
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <memfree>:
     900:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a00016 	mov	r0, #22
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <traceon>:
     924:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a00017 	mov	r0, #23
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <getps>:
     948:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00018 	mov	r0, #24
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <suspend>:
     96c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00019 	mov	r0, #25
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <resume>:
     990:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a0001a 	mov	r0, #26
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <putc>:
     9b4:	e92d4800 	push	{fp, lr}
     9b8:	e28db004 	add	fp, sp, #4
     9bc:	e24dd008 	sub	sp, sp, #8
     9c0:	e50b0008 	str	r0, [fp, #-8]
     9c4:	e1a03001 	mov	r3, r1
     9c8:	e54b3009 	strb	r3, [fp, #-9]
     9cc:	e24b3009 	sub	r3, fp, #9
     9d0:	e3a02001 	mov	r2, #1
     9d4:	e1a01003 	mov	r1, r3
     9d8:	e51b0008 	ldr	r0, [fp, #-8]
     9dc:	ebffff37 	bl	6c0 <write>
     9e0:	e1a00000 	nop			; (mov r0, r0)
     9e4:	e24bd004 	sub	sp, fp, #4
     9e8:	e8bd8800 	pop	{fp, pc}

000009ec <printint>:
     9ec:	e92d4800 	push	{fp, lr}
     9f0:	e28db004 	add	fp, sp, #4
     9f4:	e24dd030 	sub	sp, sp, #48	; 0x30
     9f8:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     9fc:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     a00:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     a04:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     a08:	e3a03000 	mov	r3, #0
     a0c:	e50b300c 	str	r3, [fp, #-12]
     a10:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     a14:	e3530000 	cmp	r3, #0
     a18:	0a000008 	beq	a40 <printint+0x54>
     a1c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a20:	e3530000 	cmp	r3, #0
     a24:	aa000005 	bge	a40 <printint+0x54>
     a28:	e3a03001 	mov	r3, #1
     a2c:	e50b300c 	str	r3, [fp, #-12]
     a30:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a34:	e2633000 	rsb	r3, r3, #0
     a38:	e50b3010 	str	r3, [fp, #-16]
     a3c:	ea000001 	b	a48 <printint+0x5c>
     a40:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a44:	e50b3010 	str	r3, [fp, #-16]
     a48:	e3a03000 	mov	r3, #0
     a4c:	e50b3008 	str	r3, [fp, #-8]
     a50:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     a54:	e51b3010 	ldr	r3, [fp, #-16]
     a58:	e1a01002 	mov	r1, r2
     a5c:	e1a00003 	mov	r0, r3
     a60:	eb0001d3 	bl	11b4 <__aeabi_uidivmod>
     a64:	e1a03001 	mov	r3, r1
     a68:	e1a01003 	mov	r1, r3
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e2832001 	add	r2, r3, #1
     a74:	e50b2008 	str	r2, [fp, #-8]
     a78:	e59f209c 	ldr	r2, [pc, #156]	; b1c <printint+0x130>
     a7c:	e7d22001 	ldrb	r2, [r2, r1]
     a80:	e24b1004 	sub	r1, fp, #4
     a84:	e0813003 	add	r3, r1, r3
     a88:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     a8c:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     a90:	e1a01003 	mov	r1, r3
     a94:	e51b0010 	ldr	r0, [fp, #-16]
     a98:	eb000188 	bl	10c0 <__udivsi3>
     a9c:	e1a03000 	mov	r3, r0
     aa0:	e50b3010 	str	r3, [fp, #-16]
     aa4:	e51b3010 	ldr	r3, [fp, #-16]
     aa8:	e3530000 	cmp	r3, #0
     aac:	1affffe7 	bne	a50 <printint+0x64>
     ab0:	e51b300c 	ldr	r3, [fp, #-12]
     ab4:	e3530000 	cmp	r3, #0
     ab8:	0a00000e 	beq	af8 <printint+0x10c>
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e2832001 	add	r2, r3, #1
     ac4:	e50b2008 	str	r2, [fp, #-8]
     ac8:	e24b2004 	sub	r2, fp, #4
     acc:	e0823003 	add	r3, r2, r3
     ad0:	e3a0202d 	mov	r2, #45	; 0x2d
     ad4:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     ad8:	ea000006 	b	af8 <printint+0x10c>
     adc:	e24b2020 	sub	r2, fp, #32
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e0823003 	add	r3, r2, r3
     ae8:	e5d33000 	ldrb	r3, [r3]
     aec:	e1a01003 	mov	r1, r3
     af0:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     af4:	ebffffae 	bl	9b4 <putc>
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e2433001 	sub	r3, r3, #1
     b00:	e50b3008 	str	r3, [fp, #-8]
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e3530000 	cmp	r3, #0
     b0c:	aafffff2 	bge	adc <printint+0xf0>
     b10:	e1a00000 	nop			; (mov r0, r0)
     b14:	e24bd004 	sub	sp, fp, #4
     b18:	e8bd8800 	pop	{fp, pc}
     b1c:	0000120c 	.word	0x0000120c

00000b20 <printf>:
     b20:	e92d000e 	push	{r1, r2, r3}
     b24:	e92d4800 	push	{fp, lr}
     b28:	e28db004 	add	fp, sp, #4
     b2c:	e24dd024 	sub	sp, sp, #36	; 0x24
     b30:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     b34:	e3a03000 	mov	r3, #0
     b38:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b3c:	e28b3008 	add	r3, fp, #8
     b40:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b44:	e3a03000 	mov	r3, #0
     b48:	e50b3010 	str	r3, [fp, #-16]
     b4c:	ea000074 	b	d24 <printf+0x204>
     b50:	e59b2004 	ldr	r2, [fp, #4]
     b54:	e51b3010 	ldr	r3, [fp, #-16]
     b58:	e0823003 	add	r3, r2, r3
     b5c:	e5d33000 	ldrb	r3, [r3]
     b60:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     b64:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     b68:	e3530000 	cmp	r3, #0
     b6c:	1a00000b 	bne	ba0 <printf+0x80>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b74:	e3530025 	cmp	r3, #37	; 0x25
     b78:	1a000002 	bne	b88 <printf+0x68>
     b7c:	e3a03025 	mov	r3, #37	; 0x25
     b80:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b84:	ea000063 	b	d18 <printf+0x1f8>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     b8c:	e6ef3073 	uxtb	r3, r3
     b90:	e1a01003 	mov	r1, r3
     b94:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     b98:	ebffff85 	bl	9b4 <putc>
     b9c:	ea00005d 	b	d18 <printf+0x1f8>
     ba0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     ba4:	e3530025 	cmp	r3, #37	; 0x25
     ba8:	1a00005a 	bne	d18 <printf+0x1f8>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bb0:	e3530064 	cmp	r3, #100	; 0x64
     bb4:	1a00000a 	bne	be4 <printf+0xc4>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bbc:	e5933000 	ldr	r3, [r3]
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e3a03001 	mov	r3, #1
     bc8:	e3a0200a 	mov	r2, #10
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bd0:	ebffff85 	bl	9ec <printint>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     bd8:	e2833004 	add	r3, r3, #4
     bdc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     be0:	ea00004a 	b	d10 <printf+0x1f0>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     be8:	e3530078 	cmp	r3, #120	; 0x78
     bec:	0a000002 	beq	bfc <printf+0xdc>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bf4:	e3530070 	cmp	r3, #112	; 0x70
     bf8:	1a00000a 	bne	c28 <printf+0x108>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e1a01003 	mov	r1, r3
     c08:	e3a03000 	mov	r3, #0
     c0c:	e3a02010 	mov	r2, #16
     c10:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c14:	ebffff74 	bl	9ec <printint>
     c18:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c1c:	e2833004 	add	r3, r3, #4
     c20:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c24:	ea000039 	b	d10 <printf+0x1f0>
     c28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c2c:	e3530073 	cmp	r3, #115	; 0x73
     c30:	1a000018 	bne	c98 <printf+0x178>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c38:	e5933000 	ldr	r3, [r3]
     c3c:	e50b300c 	str	r3, [fp, #-12]
     c40:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c44:	e2833004 	add	r3, r3, #4
     c48:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c4c:	e51b300c 	ldr	r3, [fp, #-12]
     c50:	e3530000 	cmp	r3, #0
     c54:	1a00000a 	bne	c84 <printf+0x164>
     c58:	e59f30f0 	ldr	r3, [pc, #240]	; d50 <printf+0x230>
     c5c:	e50b300c 	str	r3, [fp, #-12]
     c60:	ea000007 	b	c84 <printf+0x164>
     c64:	e51b300c 	ldr	r3, [fp, #-12]
     c68:	e5d33000 	ldrb	r3, [r3]
     c6c:	e1a01003 	mov	r1, r3
     c70:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c74:	ebffff4e 	bl	9b4 <putc>
     c78:	e51b300c 	ldr	r3, [fp, #-12]
     c7c:	e2833001 	add	r3, r3, #1
     c80:	e50b300c 	str	r3, [fp, #-12]
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e3530000 	cmp	r3, #0
     c90:	1afffff3 	bne	c64 <printf+0x144>
     c94:	ea00001d 	b	d10 <printf+0x1f0>
     c98:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c9c:	e3530063 	cmp	r3, #99	; 0x63
     ca0:	1a000009 	bne	ccc <printf+0x1ac>
     ca4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e6ef3073 	uxtb	r3, r3
     cb0:	e1a01003 	mov	r1, r3
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cb8:	ebffff3d 	bl	9b4 <putc>
     cbc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     cc0:	e2833004 	add	r3, r3, #4
     cc4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     cc8:	ea000010 	b	d10 <printf+0x1f0>
     ccc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     cd0:	e3530025 	cmp	r3, #37	; 0x25
     cd4:	1a000005 	bne	cf0 <printf+0x1d0>
     cd8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     cdc:	e6ef3073 	uxtb	r3, r3
     ce0:	e1a01003 	mov	r1, r3
     ce4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ce8:	ebffff31 	bl	9b4 <putc>
     cec:	ea000007 	b	d10 <printf+0x1f0>
     cf0:	e3a01025 	mov	r1, #37	; 0x25
     cf4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cf8:	ebffff2d 	bl	9b4 <putc>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d00:	e6ef3073 	uxtb	r3, r3
     d04:	e1a01003 	mov	r1, r3
     d08:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d0c:	ebffff28 	bl	9b4 <putc>
     d10:	e3a03000 	mov	r3, #0
     d14:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     d18:	e51b3010 	ldr	r3, [fp, #-16]
     d1c:	e2833001 	add	r3, r3, #1
     d20:	e50b3010 	str	r3, [fp, #-16]
     d24:	e59b2004 	ldr	r2, [fp, #4]
     d28:	e51b3010 	ldr	r3, [fp, #-16]
     d2c:	e0823003 	add	r3, r2, r3
     d30:	e5d33000 	ldrb	r3, [r3]
     d34:	e3530000 	cmp	r3, #0
     d38:	1affff84 	bne	b50 <printf+0x30>
     d3c:	e1a00000 	nop			; (mov r0, r0)
     d40:	e24bd004 	sub	sp, fp, #4
     d44:	e8bd4800 	pop	{fp, lr}
     d48:	e28dd00c 	add	sp, sp, #12
     d4c:	e12fff1e 	bx	lr
     d50:	00001204 	.word	0x00001204

00000d54 <free>:
     d54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     d58:	e28db000 	add	fp, sp, #0
     d5c:	e24dd014 	sub	sp, sp, #20
     d60:	e50b0010 	str	r0, [fp, #-16]
     d64:	e51b3010 	ldr	r3, [fp, #-16]
     d68:	e2433008 	sub	r3, r3, #8
     d6c:	e50b300c 	str	r3, [fp, #-12]
     d70:	e59f3154 	ldr	r3, [pc, #340]	; ecc <free+0x178>
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e50b3008 	str	r3, [fp, #-8]
     d7c:	ea000010 	b	dc4 <free+0x70>
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933000 	ldr	r3, [r3]
     d88:	e51b2008 	ldr	r2, [fp, #-8]
     d8c:	e1520003 	cmp	r2, r3
     d90:	3a000008 	bcc	db8 <free+0x64>
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e1520003 	cmp	r2, r3
     da0:	8a000010 	bhi	de8 <free+0x94>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5933000 	ldr	r3, [r3]
     dac:	e51b200c 	ldr	r2, [fp, #-12]
     db0:	e1520003 	cmp	r2, r3
     db4:	3a00000b 	bcc	de8 <free+0x94>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e50b3008 	str	r3, [fp, #-8]
     dc4:	e51b200c 	ldr	r2, [fp, #-12]
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e1520003 	cmp	r2, r3
     dd0:	9affffea 	bls	d80 <free+0x2c>
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e51b200c 	ldr	r2, [fp, #-12]
     de0:	e1520003 	cmp	r2, r3
     de4:	2affffe5 	bcs	d80 <free+0x2c>
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5933004 	ldr	r3, [r3, #4]
     df0:	e1a03183 	lsl	r3, r3, #3
     df4:	e51b200c 	ldr	r2, [fp, #-12]
     df8:	e0822003 	add	r2, r2, r3
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e1520003 	cmp	r2, r3
     e08:	1a00000d 	bne	e44 <free+0xf0>
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5932004 	ldr	r2, [r3, #4]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933000 	ldr	r3, [r3]
     e1c:	e5933004 	ldr	r3, [r3, #4]
     e20:	e0822003 	add	r2, r2, r3
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5832004 	str	r2, [r3, #4]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e5932000 	ldr	r2, [r3]
     e38:	e51b300c 	ldr	r3, [fp, #-12]
     e3c:	e5832000 	str	r2, [r3]
     e40:	ea000003 	b	e54 <free+0x100>
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e5932000 	ldr	r2, [r3]
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e5832000 	str	r2, [r3]
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933004 	ldr	r3, [r3, #4]
     e5c:	e1a03183 	lsl	r3, r3, #3
     e60:	e51b2008 	ldr	r2, [fp, #-8]
     e64:	e0823003 	add	r3, r2, r3
     e68:	e51b200c 	ldr	r2, [fp, #-12]
     e6c:	e1520003 	cmp	r2, r3
     e70:	1a00000b 	bne	ea4 <free+0x150>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5932004 	ldr	r2, [r3, #4]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e5933004 	ldr	r3, [r3, #4]
     e84:	e0822003 	add	r2, r2, r3
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5832004 	str	r2, [r3, #4]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5932000 	ldr	r2, [r3]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5832000 	str	r2, [r3]
     ea0:	ea000002 	b	eb0 <free+0x15c>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e51b200c 	ldr	r2, [fp, #-12]
     eac:	e5832000 	str	r2, [r3]
     eb0:	e59f2014 	ldr	r2, [pc, #20]	; ecc <free+0x178>
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5823000 	str	r3, [r2]
     ebc:	e1a00000 	nop			; (mov r0, r0)
     ec0:	e28bd000 	add	sp, fp, #0
     ec4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     ec8:	e12fff1e 	bx	lr
     ecc:	00001228 	.word	0x00001228

00000ed0 <morecore>:
     ed0:	e92d4800 	push	{fp, lr}
     ed4:	e28db004 	add	fp, sp, #4
     ed8:	e24dd010 	sub	sp, sp, #16
     edc:	e50b0010 	str	r0, [fp, #-16]
     ee0:	e51b3010 	ldr	r3, [fp, #-16]
     ee4:	e3530a01 	cmp	r3, #4096	; 0x1000
     ee8:	2a000001 	bcs	ef4 <morecore+0x24>
     eec:	e3a03a01 	mov	r3, #4096	; 0x1000
     ef0:	e50b3010 	str	r3, [fp, #-16]
     ef4:	e51b3010 	ldr	r3, [fp, #-16]
     ef8:	e1a03183 	lsl	r3, r3, #3
     efc:	e1a00003 	mov	r0, r3
     f00:	ebfffe63 	bl	894 <sbrk>
     f04:	e50b0008 	str	r0, [fp, #-8]
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e3730001 	cmn	r3, #1
     f10:	1a000001 	bne	f1c <morecore+0x4c>
     f14:	e3a03000 	mov	r3, #0
     f18:	ea00000a 	b	f48 <morecore+0x78>
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e51b2010 	ldr	r2, [fp, #-16]
     f2c:	e5832004 	str	r2, [r3, #4]
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e2833008 	add	r3, r3, #8
     f38:	e1a00003 	mov	r0, r3
     f3c:	ebffff84 	bl	d54 <free>
     f40:	e59f300c 	ldr	r3, [pc, #12]	; f54 <morecore+0x84>
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e1a00003 	mov	r0, r3
     f4c:	e24bd004 	sub	sp, fp, #4
     f50:	e8bd8800 	pop	{fp, pc}
     f54:	00001228 	.word	0x00001228

00000f58 <malloc>:
     f58:	e92d4800 	push	{fp, lr}
     f5c:	e28db004 	add	fp, sp, #4
     f60:	e24dd018 	sub	sp, sp, #24
     f64:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     f68:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f6c:	e2833007 	add	r3, r3, #7
     f70:	e1a031a3 	lsr	r3, r3, #3
     f74:	e2833001 	add	r3, r3, #1
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	e59f3134 	ldr	r3, [pc, #308]	; 10b8 <malloc+0x160>
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e50b300c 	str	r3, [fp, #-12]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e3530000 	cmp	r3, #0
     f90:	1a00000b 	bne	fc4 <malloc+0x6c>
     f94:	e59f3120 	ldr	r3, [pc, #288]	; 10bc <malloc+0x164>
     f98:	e50b300c 	str	r3, [fp, #-12]
     f9c:	e59f2114 	ldr	r2, [pc, #276]	; 10b8 <malloc+0x160>
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e5823000 	str	r3, [r2]
     fa8:	e59f3108 	ldr	r3, [pc, #264]	; 10b8 <malloc+0x160>
     fac:	e5933000 	ldr	r3, [r3]
     fb0:	e59f2104 	ldr	r2, [pc, #260]	; 10bc <malloc+0x164>
     fb4:	e5823000 	str	r3, [r2]
     fb8:	e59f30fc 	ldr	r3, [pc, #252]	; 10bc <malloc+0x164>
     fbc:	e3a02000 	mov	r2, #0
     fc0:	e5832004 	str	r2, [r3, #4]
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e50b3008 	str	r3, [fp, #-8]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5933004 	ldr	r3, [r3, #4]
     fd8:	e51b2010 	ldr	r2, [fp, #-16]
     fdc:	e1520003 	cmp	r2, r3
     fe0:	8a00001e 	bhi	1060 <malloc+0x108>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933004 	ldr	r3, [r3, #4]
     fec:	e51b2010 	ldr	r2, [fp, #-16]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	1a000004 	bne	100c <malloc+0xb4>
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e5932000 	ldr	r2, [r3]
    1000:	e51b300c 	ldr	r3, [fp, #-12]
    1004:	e5832000 	str	r2, [r3]
    1008:	ea00000e 	b	1048 <malloc+0xf0>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5932004 	ldr	r2, [r3, #4]
    1014:	e51b3010 	ldr	r3, [fp, #-16]
    1018:	e0422003 	sub	r2, r2, r3
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5832004 	str	r2, [r3, #4]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933004 	ldr	r3, [r3, #4]
    102c:	e1a03183 	lsl	r3, r3, #3
    1030:	e51b2008 	ldr	r2, [fp, #-8]
    1034:	e0823003 	add	r3, r2, r3
    1038:	e50b3008 	str	r3, [fp, #-8]
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e51b2010 	ldr	r2, [fp, #-16]
    1044:	e5832004 	str	r2, [r3, #4]
    1048:	e59f2068 	ldr	r2, [pc, #104]	; 10b8 <malloc+0x160>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5823000 	str	r3, [r2]
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e2833008 	add	r3, r3, #8
    105c:	ea000012 	b	10ac <malloc+0x154>
    1060:	e59f3050 	ldr	r3, [pc, #80]	; 10b8 <malloc+0x160>
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e51b2008 	ldr	r2, [fp, #-8]
    106c:	e1520003 	cmp	r2, r3
    1070:	1a000007 	bne	1094 <malloc+0x13c>
    1074:	e51b0010 	ldr	r0, [fp, #-16]
    1078:	ebffff94 	bl	ed0 <morecore>
    107c:	e50b0008 	str	r0, [fp, #-8]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e3530000 	cmp	r3, #0
    1088:	1a000001 	bne	1094 <malloc+0x13c>
    108c:	e3a03000 	mov	r3, #0
    1090:	ea000005 	b	10ac <malloc+0x154>
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e50b300c 	str	r3, [fp, #-12]
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e5933000 	ldr	r3, [r3]
    10a4:	e50b3008 	str	r3, [fp, #-8]
    10a8:	eaffffc8 	b	fd0 <malloc+0x78>
    10ac:	e1a00003 	mov	r0, r3
    10b0:	e24bd004 	sub	sp, fp, #4
    10b4:	e8bd8800 	pop	{fp, pc}
    10b8:	00001228 	.word	0x00001228
    10bc:	00001220 	.word	0x00001220

000010c0 <__udivsi3>:
    10c0:	e2512001 	subs	r2, r1, #1
    10c4:	012fff1e 	bxeq	lr
    10c8:	3a000036 	bcc	11a8 <__udivsi3+0xe8>
    10cc:	e1500001 	cmp	r0, r1
    10d0:	9a000022 	bls	1160 <__udivsi3+0xa0>
    10d4:	e1110002 	tst	r1, r2
    10d8:	0a000023 	beq	116c <__udivsi3+0xac>
    10dc:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    10e0:	01a01181 	lsleq	r1, r1, #3
    10e4:	03a03008 	moveq	r3, #8
    10e8:	13a03001 	movne	r3, #1
    10ec:	e3510201 	cmp	r1, #268435456	; 0x10000000
    10f0:	31510000 	cmpcc	r1, r0
    10f4:	31a01201 	lslcc	r1, r1, #4
    10f8:	31a03203 	lslcc	r3, r3, #4
    10fc:	3afffffa 	bcc	10ec <__udivsi3+0x2c>
    1100:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1104:	31510000 	cmpcc	r1, r0
    1108:	31a01081 	lslcc	r1, r1, #1
    110c:	31a03083 	lslcc	r3, r3, #1
    1110:	3afffffa 	bcc	1100 <__udivsi3+0x40>
    1114:	e3a02000 	mov	r2, #0
    1118:	e1500001 	cmp	r0, r1
    111c:	20400001 	subcs	r0, r0, r1
    1120:	21822003 	orrcs	r2, r2, r3
    1124:	e15000a1 	cmp	r0, r1, lsr #1
    1128:	204000a1 	subcs	r0, r0, r1, lsr #1
    112c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1130:	e1500121 	cmp	r0, r1, lsr #2
    1134:	20400121 	subcs	r0, r0, r1, lsr #2
    1138:	21822123 	orrcs	r2, r2, r3, lsr #2
    113c:	e15001a1 	cmp	r0, r1, lsr #3
    1140:	204001a1 	subcs	r0, r0, r1, lsr #3
    1144:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1148:	e3500000 	cmp	r0, #0
    114c:	11b03223 	lsrsne	r3, r3, #4
    1150:	11a01221 	lsrne	r1, r1, #4
    1154:	1affffef 	bne	1118 <__udivsi3+0x58>
    1158:	e1a00002 	mov	r0, r2
    115c:	e12fff1e 	bx	lr
    1160:	03a00001 	moveq	r0, #1
    1164:	13a00000 	movne	r0, #0
    1168:	e12fff1e 	bx	lr
    116c:	e3510801 	cmp	r1, #65536	; 0x10000
    1170:	21a01821 	lsrcs	r1, r1, #16
    1174:	23a02010 	movcs	r2, #16
    1178:	33a02000 	movcc	r2, #0
    117c:	e3510c01 	cmp	r1, #256	; 0x100
    1180:	21a01421 	lsrcs	r1, r1, #8
    1184:	22822008 	addcs	r2, r2, #8
    1188:	e3510010 	cmp	r1, #16
    118c:	21a01221 	lsrcs	r1, r1, #4
    1190:	22822004 	addcs	r2, r2, #4
    1194:	e3510004 	cmp	r1, #4
    1198:	82822003 	addhi	r2, r2, #3
    119c:	908220a1 	addls	r2, r2, r1, lsr #1
    11a0:	e1a00230 	lsr	r0, r0, r2
    11a4:	e12fff1e 	bx	lr
    11a8:	e3500000 	cmp	r0, #0
    11ac:	13e00000 	mvnne	r0, #0
    11b0:	ea000007 	b	11d4 <__aeabi_idiv0>

000011b4 <__aeabi_uidivmod>:
    11b4:	e3510000 	cmp	r1, #0
    11b8:	0afffffa 	beq	11a8 <__udivsi3+0xe8>
    11bc:	e92d4003 	push	{r0, r1, lr}
    11c0:	ebffffbe 	bl	10c0 <__udivsi3>
    11c4:	e8bd4006 	pop	{r1, r2, lr}
    11c8:	e0030092 	mul	r3, r2, r0
    11cc:	e0411003 	sub	r1, r1, r3
    11d0:	e12fff1e 	bx	lr

000011d4 <__aeabi_idiv0>:
    11d4:	e12fff1e 	bx	lr
