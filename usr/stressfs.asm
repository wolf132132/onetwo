
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	; 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	; 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	; 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	; 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	; 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb0002cb 	bl	b64 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	; 0x218
      38:	e3a02c02 	mov	r2, #512	; 0x200
      3c:	e3a01061 	mov	r1, #97	; 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb00017d 	bl	650 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			; (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	; 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb0002b3 	bl	b64 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	; 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0001b5 	bl	794 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	; 0x218
      d0:	e3a02c02 	mov	r2, #512	; 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb000188 	bl	704 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb000189 	bl	728 <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	; 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb000295 	bl	b64 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb00019d 	bl	794 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	; 0x218
     130:	e3a02c02 	mov	r2, #512	; 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb000167 	bl	6e0 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb000171 	bl	728 <close>
     160:	eb00014c 	bl	698 <wait>
     164:	eb000142 	bl	674 <exit>
     168:	00001244 	.word	0x00001244
     16c:	0000121c 	.word	0x0000121c
     170:	00001230 	.word	0x00001230
     174:	00000202 	.word	0x00000202
     178:	0000123c 	.word	0x0000123c

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			; (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strcmp>:
     1dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd00c 	sub	sp, sp, #12
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	ea000005 	b	20c <strcmp+0x30>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	0a000005 	beq	234 <strcmp+0x58>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d32000 	ldrb	r2, [r3]
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e1520003 	cmp	r2, r3
     230:	0affffef 	beq	1f4 <strcmp+0x18>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e1a02003 	mov	r2, r3
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e0423003 	sub	r3, r2, r3
     24c:	e1a00003 	mov	r0, r3
     250:	e28bd000 	add	sp, fp, #0
     254:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     258:	e12fff1e 	bx	lr

0000025c <strlen>:
     25c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     260:	e28db000 	add	fp, sp, #0
     264:	e24dd014 	sub	sp, sp, #20
     268:	e50b0010 	str	r0, [fp, #-16]
     26c:	e3a03000 	mov	r3, #0
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000002 	b	284 <strlen+0x28>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e51b2010 	ldr	r2, [fp, #-16]
     28c:	e0823003 	add	r3, r2, r3
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e3530000 	cmp	r3, #0
     298:	1afffff6 	bne	278 <strlen+0x1c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <memset>:
     2b0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd024 	sub	sp, sp, #36	; 0x24
     2bc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     2c0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     2c4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     2d4:	e54b300d 	strb	r3, [fp, #-13]
     2d8:	e55b300d 	ldrb	r3, [fp, #-13]
     2dc:	e1a02c03 	lsl	r2, r3, #24
     2e0:	e55b300d 	ldrb	r3, [fp, #-13]
     2e4:	e1a03803 	lsl	r3, r3, #16
     2e8:	e1822003 	orr	r2, r2, r3
     2ec:	e55b300d 	ldrb	r3, [fp, #-13]
     2f0:	e1a03403 	lsl	r3, r3, #8
     2f4:	e1822003 	orr	r2, r2, r3
     2f8:	e55b300d 	ldrb	r3, [fp, #-13]
     2fc:	e1823003 	orr	r3, r2, r3
     300:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     304:	ea000008 	b	32c <memset+0x7c>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e55b200d 	ldrb	r2, [fp, #-13]
     310:	e5c32000 	strb	r2, [r3]
     314:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     318:	e2433001 	sub	r3, r3, #1
     31c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e2833001 	add	r3, r3, #1
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     330:	e3530000 	cmp	r3, #0
     334:	0a000003 	beq	348 <memset+0x98>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e2033003 	and	r3, r3, #3
     340:	e3530000 	cmp	r3, #0
     344:	1affffef 	bne	308 <memset+0x58>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e50b300c 	str	r3, [fp, #-12]
     350:	ea000008 	b	378 <memset+0xc8>
     354:	e51b300c 	ldr	r3, [fp, #-12]
     358:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     35c:	e5832000 	str	r2, [r3]
     360:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     364:	e2433004 	sub	r3, r3, #4
     368:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e2833004 	add	r3, r3, #4
     374:	e50b300c 	str	r3, [fp, #-12]
     378:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     37c:	e3530003 	cmp	r3, #3
     380:	8afffff3 	bhi	354 <memset+0xa4>
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	ea000008 	b	3b4 <memset+0x104>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e55b200d 	ldrb	r2, [fp, #-13]
     398:	e5c32000 	strb	r2, [r3]
     39c:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     3a0:	e2433001 	sub	r3, r3, #1
     3a4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e2833001 	add	r3, r3, #1
     3b0:	e50b3008 	str	r3, [fp, #-8]
     3b4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     3b8:	e3530000 	cmp	r3, #0
     3bc:	1afffff3 	bne	390 <memset+0xe0>
     3c0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     3c4:	e1a00003 	mov	r0, r3
     3c8:	e28bd000 	add	sp, fp, #0
     3cc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     3d0:	e12fff1e 	bx	lr

000003d4 <strchr>:
     3d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     3d8:	e28db000 	add	fp, sp, #0
     3dc:	e24dd00c 	sub	sp, sp, #12
     3e0:	e50b0008 	str	r0, [fp, #-8]
     3e4:	e1a03001 	mov	r3, r1
     3e8:	e54b3009 	strb	r3, [fp, #-9]
     3ec:	ea000009 	b	418 <strchr+0x44>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e5d33000 	ldrb	r3, [r3]
     3f8:	e55b2009 	ldrb	r2, [fp, #-9]
     3fc:	e1520003 	cmp	r2, r3
     400:	1a000001 	bne	40c <strchr+0x38>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	ea000007 	b	42c <strchr+0x58>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e2833001 	add	r3, r3, #1
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e5d33000 	ldrb	r3, [r3]
     420:	e3530000 	cmp	r3, #0
     424:	1afffff1 	bne	3f0 <strchr+0x1c>
     428:	e3a03000 	mov	r3, #0
     42c:	e1a00003 	mov	r0, r3
     430:	e28bd000 	add	sp, fp, #0
     434:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     438:	e12fff1e 	bx	lr

0000043c <gets>:
     43c:	e92d4800 	push	{fp, lr}
     440:	e28db004 	add	fp, sp, #4
     444:	e24dd018 	sub	sp, sp, #24
     448:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     44c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     450:	e3a03000 	mov	r3, #0
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea000016 	b	4b8 <gets+0x7c>
     45c:	e24b300d 	sub	r3, fp, #13
     460:	e3a02001 	mov	r2, #1
     464:	e1a01003 	mov	r1, r3
     468:	e3a00000 	mov	r0, #0
     46c:	eb00009b 	bl	6e0 <read>
     470:	e50b000c 	str	r0, [fp, #-12]
     474:	e51b300c 	ldr	r3, [fp, #-12]
     478:	e3530000 	cmp	r3, #0
     47c:	da000013 	ble	4d0 <gets+0x94>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e2832001 	add	r2, r3, #1
     488:	e50b2008 	str	r2, [fp, #-8]
     48c:	e1a02003 	mov	r2, r3
     490:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     494:	e0833002 	add	r3, r3, r2
     498:	e55b200d 	ldrb	r2, [fp, #-13]
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e55b300d 	ldrb	r3, [fp, #-13]
     4a4:	e353000a 	cmp	r3, #10
     4a8:	0a000009 	beq	4d4 <gets+0x98>
     4ac:	e55b300d 	ldrb	r3, [fp, #-13]
     4b0:	e353000d 	cmp	r3, #13
     4b4:	0a000006 	beq	4d4 <gets+0x98>
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e2833001 	add	r3, r3, #1
     4c0:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     4c4:	e1520003 	cmp	r2, r3
     4c8:	caffffe3 	bgt	45c <gets+0x20>
     4cc:	ea000000 	b	4d4 <gets+0x98>
     4d0:	e1a00000 	nop			; (mov r0, r0)
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     4dc:	e0823003 	add	r3, r2, r3
     4e0:	e3a02000 	mov	r2, #0
     4e4:	e5c32000 	strb	r2, [r3]
     4e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e24bd004 	sub	sp, fp, #4
     4f4:	e8bd8800 	pop	{fp, pc}

000004f8 <stat>:
     4f8:	e92d4800 	push	{fp, lr}
     4fc:	e28db004 	add	fp, sp, #4
     500:	e24dd010 	sub	sp, sp, #16
     504:	e50b0010 	str	r0, [fp, #-16]
     508:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     50c:	e3a01000 	mov	r1, #0
     510:	e51b0010 	ldr	r0, [fp, #-16]
     514:	eb00009e 	bl	794 <open>
     518:	e50b0008 	str	r0, [fp, #-8]
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e3530000 	cmp	r3, #0
     524:	aa000001 	bge	530 <stat+0x38>
     528:	e3e03000 	mvn	r3, #0
     52c:	ea000006 	b	54c <stat+0x54>
     530:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     534:	e51b0008 	ldr	r0, [fp, #-8]
     538:	eb0000b0 	bl	800 <fstat>
     53c:	e50b000c 	str	r0, [fp, #-12]
     540:	e51b0008 	ldr	r0, [fp, #-8]
     544:	eb000077 	bl	728 <close>
     548:	e51b300c 	ldr	r3, [fp, #-12]
     54c:	e1a00003 	mov	r0, r3
     550:	e24bd004 	sub	sp, fp, #4
     554:	e8bd8800 	pop	{fp, pc}

00000558 <atoi>:
     558:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     55c:	e28db000 	add	fp, sp, #0
     560:	e24dd014 	sub	sp, sp, #20
     564:	e50b0010 	str	r0, [fp, #-16]
     568:	e3a03000 	mov	r3, #0
     56c:	e50b3008 	str	r3, [fp, #-8]
     570:	ea00000c 	b	5a8 <atoi+0x50>
     574:	e51b2008 	ldr	r2, [fp, #-8]
     578:	e1a03002 	mov	r3, r2
     57c:	e1a03103 	lsl	r3, r3, #2
     580:	e0833002 	add	r3, r3, r2
     584:	e1a03083 	lsl	r3, r3, #1
     588:	e1a01003 	mov	r1, r3
     58c:	e51b3010 	ldr	r3, [fp, #-16]
     590:	e2832001 	add	r2, r3, #1
     594:	e50b2010 	str	r2, [fp, #-16]
     598:	e5d33000 	ldrb	r3, [r3]
     59c:	e0813003 	add	r3, r1, r3
     5a0:	e2433030 	sub	r3, r3, #48	; 0x30
     5a4:	e50b3008 	str	r3, [fp, #-8]
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e5d33000 	ldrb	r3, [r3]
     5b0:	e353002f 	cmp	r3, #47	; 0x2f
     5b4:	9a000003 	bls	5c8 <atoi+0x70>
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e5d33000 	ldrb	r3, [r3]
     5c0:	e3530039 	cmp	r3, #57	; 0x39
     5c4:	9affffea 	bls	574 <atoi+0x1c>
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e1a00003 	mov	r0, r3
     5d0:	e28bd000 	add	sp, fp, #0
     5d4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <memmove>:
     5dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     5e0:	e28db000 	add	fp, sp, #0
     5e4:	e24dd01c 	sub	sp, sp, #28
     5e8:	e50b0010 	str	r0, [fp, #-16]
     5ec:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     5f0:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     5f4:	e51b3010 	ldr	r3, [fp, #-16]
     5f8:	e50b3008 	str	r3, [fp, #-8]
     5fc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     600:	e50b300c 	str	r3, [fp, #-12]
     604:	ea000007 	b	628 <memmove+0x4c>
     608:	e51b200c 	ldr	r2, [fp, #-12]
     60c:	e2823001 	add	r3, r2, #1
     610:	e50b300c 	str	r3, [fp, #-12]
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e2831001 	add	r1, r3, #1
     61c:	e50b1008 	str	r1, [fp, #-8]
     620:	e5d22000 	ldrb	r2, [r2]
     624:	e5c32000 	strb	r2, [r3]
     628:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     62c:	e2432001 	sub	r2, r3, #1
     630:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     634:	e3530000 	cmp	r3, #0
     638:	cafffff2 	bgt	608 <memmove+0x2c>
     63c:	e51b3010 	ldr	r3, [fp, #-16]
     640:	e1a00003 	mov	r0, r3
     644:	e28bd000 	add	sp, fp, #0
     648:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <fork>:
     650:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     654:	e1a04003 	mov	r4, r3
     658:	e1a03002 	mov	r3, r2
     65c:	e1a02001 	mov	r2, r1
     660:	e1a01000 	mov	r1, r0
     664:	e3a00001 	mov	r0, #1
     668:	ef000000 	svc	0x00000000
     66c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <exit>:
     674:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     678:	e1a04003 	mov	r4, r3
     67c:	e1a03002 	mov	r3, r2
     680:	e1a02001 	mov	r2, r1
     684:	e1a01000 	mov	r1, r0
     688:	e3a00002 	mov	r0, #2
     68c:	ef000000 	svc	0x00000000
     690:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <wait>:
     698:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     69c:	e1a04003 	mov	r4, r3
     6a0:	e1a03002 	mov	r3, r2
     6a4:	e1a02001 	mov	r2, r1
     6a8:	e1a01000 	mov	r1, r0
     6ac:	e3a00003 	mov	r0, #3
     6b0:	ef000000 	svc	0x00000000
     6b4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <pipe>:
     6bc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6c0:	e1a04003 	mov	r4, r3
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a02001 	mov	r2, r1
     6cc:	e1a01000 	mov	r1, r0
     6d0:	e3a00004 	mov	r0, #4
     6d4:	ef000000 	svc	0x00000000
     6d8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <read>:
     6e0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     6e4:	e1a04003 	mov	r4, r3
     6e8:	e1a03002 	mov	r3, r2
     6ec:	e1a02001 	mov	r2, r1
     6f0:	e1a01000 	mov	r1, r0
     6f4:	e3a00005 	mov	r0, #5
     6f8:	ef000000 	svc	0x00000000
     6fc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <write>:
     704:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     708:	e1a04003 	mov	r4, r3
     70c:	e1a03002 	mov	r3, r2
     710:	e1a02001 	mov	r2, r1
     714:	e1a01000 	mov	r1, r0
     718:	e3a00010 	mov	r0, #16
     71c:	ef000000 	svc	0x00000000
     720:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <close>:
     728:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a00015 	mov	r0, #21
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <kill>:
     74c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a00006 	mov	r0, #6
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <exec>:
     770:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00007 	mov	r0, #7
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <open>:
     794:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a0000f 	mov	r0, #15
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <mknod>:
     7b8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00011 	mov	r0, #17
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <unlink>:
     7dc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00012 	mov	r0, #18
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <fstat>:
     800:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00008 	mov	r0, #8
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <link>:
     824:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a00013 	mov	r0, #19
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <mkdir>:
     848:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00014 	mov	r0, #20
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <chdir>:
     86c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a00009 	mov	r0, #9
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <dup>:
     890:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a0000a 	mov	r0, #10
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <getpid>:
     8b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a0000b 	mov	r0, #11
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <sbrk>:
     8d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a0000c 	mov	r0, #12
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <sleep>:
     8fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a0000d 	mov	r0, #13
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <uptime>:
     920:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a0000e 	mov	r0, #14
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <memfree>:
     944:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00016 	mov	r0, #22
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <traceon>:
     968:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00017 	mov	r0, #23
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <getps>:
     98c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00018 	mov	r0, #24
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <suspend>:
     9b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00019 	mov	r0, #25
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <resume>:
     9d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a0001a 	mov	r0, #26
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <putc>:
     9f8:	e92d4800 	push	{fp, lr}
     9fc:	e28db004 	add	fp, sp, #4
     a00:	e24dd008 	sub	sp, sp, #8
     a04:	e50b0008 	str	r0, [fp, #-8]
     a08:	e1a03001 	mov	r3, r1
     a0c:	e54b3009 	strb	r3, [fp, #-9]
     a10:	e24b3009 	sub	r3, fp, #9
     a14:	e3a02001 	mov	r2, #1
     a18:	e1a01003 	mov	r1, r3
     a1c:	e51b0008 	ldr	r0, [fp, #-8]
     a20:	ebffff37 	bl	704 <write>
     a24:	e1a00000 	nop			; (mov r0, r0)
     a28:	e24bd004 	sub	sp, fp, #4
     a2c:	e8bd8800 	pop	{fp, pc}

00000a30 <printint>:
     a30:	e92d4800 	push	{fp, lr}
     a34:	e28db004 	add	fp, sp, #4
     a38:	e24dd030 	sub	sp, sp, #48	; 0x30
     a3c:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     a40:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     a44:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     a48:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     a4c:	e3a03000 	mov	r3, #0
     a50:	e50b300c 	str	r3, [fp, #-12]
     a54:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     a58:	e3530000 	cmp	r3, #0
     a5c:	0a000008 	beq	a84 <printint+0x54>
     a60:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a64:	e3530000 	cmp	r3, #0
     a68:	aa000005 	bge	a84 <printint+0x54>
     a6c:	e3a03001 	mov	r3, #1
     a70:	e50b300c 	str	r3, [fp, #-12]
     a74:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a78:	e2633000 	rsb	r3, r3, #0
     a7c:	e50b3010 	str	r3, [fp, #-16]
     a80:	ea000001 	b	a8c <printint+0x5c>
     a84:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     a88:	e50b3010 	str	r3, [fp, #-16]
     a8c:	e3a03000 	mov	r3, #0
     a90:	e50b3008 	str	r3, [fp, #-8]
     a94:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     a98:	e51b3010 	ldr	r3, [fp, #-16]
     a9c:	e1a01002 	mov	r1, r2
     aa0:	e1a00003 	mov	r0, r3
     aa4:	eb0001d3 	bl	11f8 <__aeabi_uidivmod>
     aa8:	e1a03001 	mov	r3, r1
     aac:	e1a01003 	mov	r1, r3
     ab0:	e51b3008 	ldr	r3, [fp, #-8]
     ab4:	e2832001 	add	r2, r3, #1
     ab8:	e50b2008 	str	r2, [fp, #-8]
     abc:	e59f209c 	ldr	r2, [pc, #156]	; b60 <printint+0x130>
     ac0:	e7d22001 	ldrb	r2, [r2, r1]
     ac4:	e24b1004 	sub	r1, fp, #4
     ac8:	e0813003 	add	r3, r1, r3
     acc:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     ad0:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     ad4:	e1a01003 	mov	r1, r3
     ad8:	e51b0010 	ldr	r0, [fp, #-16]
     adc:	eb000188 	bl	1104 <__udivsi3>
     ae0:	e1a03000 	mov	r3, r0
     ae4:	e50b3010 	str	r3, [fp, #-16]
     ae8:	e51b3010 	ldr	r3, [fp, #-16]
     aec:	e3530000 	cmp	r3, #0
     af0:	1affffe7 	bne	a94 <printint+0x64>
     af4:	e51b300c 	ldr	r3, [fp, #-12]
     af8:	e3530000 	cmp	r3, #0
     afc:	0a00000e 	beq	b3c <printint+0x10c>
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e2832001 	add	r2, r3, #1
     b08:	e50b2008 	str	r2, [fp, #-8]
     b0c:	e24b2004 	sub	r2, fp, #4
     b10:	e0823003 	add	r3, r2, r3
     b14:	e3a0202d 	mov	r2, #45	; 0x2d
     b18:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     b1c:	ea000006 	b	b3c <printint+0x10c>
     b20:	e24b2020 	sub	r2, fp, #32
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e0823003 	add	r3, r2, r3
     b2c:	e5d33000 	ldrb	r3, [r3]
     b30:	e1a01003 	mov	r1, r3
     b34:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     b38:	ebffffae 	bl	9f8 <putc>
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e2433001 	sub	r3, r3, #1
     b44:	e50b3008 	str	r3, [fp, #-8]
     b48:	e51b3008 	ldr	r3, [fp, #-8]
     b4c:	e3530000 	cmp	r3, #0
     b50:	aafffff2 	bge	b20 <printint+0xf0>
     b54:	e1a00000 	nop			; (mov r0, r0)
     b58:	e24bd004 	sub	sp, fp, #4
     b5c:	e8bd8800 	pop	{fp, pc}
     b60:	00001258 	.word	0x00001258

00000b64 <printf>:
     b64:	e92d000e 	push	{r1, r2, r3}
     b68:	e92d4800 	push	{fp, lr}
     b6c:	e28db004 	add	fp, sp, #4
     b70:	e24dd024 	sub	sp, sp, #36	; 0x24
     b74:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     b78:	e3a03000 	mov	r3, #0
     b7c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     b80:	e28b3008 	add	r3, fp, #8
     b84:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     b88:	e3a03000 	mov	r3, #0
     b8c:	e50b3010 	str	r3, [fp, #-16]
     b90:	ea000074 	b	d68 <printf+0x204>
     b94:	e59b2004 	ldr	r2, [fp, #4]
     b98:	e51b3010 	ldr	r3, [fp, #-16]
     b9c:	e0823003 	add	r3, r2, r3
     ba0:	e5d33000 	ldrb	r3, [r3]
     ba4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     ba8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     bac:	e3530000 	cmp	r3, #0
     bb0:	1a00000b 	bne	be4 <printf+0x80>
     bb4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bb8:	e3530025 	cmp	r3, #37	; 0x25
     bbc:	1a000002 	bne	bcc <printf+0x68>
     bc0:	e3a03025 	mov	r3, #37	; 0x25
     bc4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     bc8:	ea000063 	b	d5c <printf+0x1f8>
     bcc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bd0:	e6ef3073 	uxtb	r3, r3
     bd4:	e1a01003 	mov	r1, r3
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     bdc:	ebffff85 	bl	9f8 <putc>
     be0:	ea00005d 	b	d5c <printf+0x1f8>
     be4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     be8:	e3530025 	cmp	r3, #37	; 0x25
     bec:	1a00005a 	bne	d5c <printf+0x1f8>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     bf4:	e3530064 	cmp	r3, #100	; 0x64
     bf8:	1a00000a 	bne	c28 <printf+0xc4>
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e1a01003 	mov	r1, r3
     c08:	e3a03001 	mov	r3, #1
     c0c:	e3a0200a 	mov	r2, #10
     c10:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c14:	ebffff85 	bl	a30 <printint>
     c18:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c1c:	e2833004 	add	r3, r3, #4
     c20:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c24:	ea00004a 	b	d54 <printf+0x1f0>
     c28:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c2c:	e3530078 	cmp	r3, #120	; 0x78
     c30:	0a000002 	beq	c40 <printf+0xdc>
     c34:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c38:	e3530070 	cmp	r3, #112	; 0x70
     c3c:	1a00000a 	bne	c6c <printf+0x108>
     c40:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c44:	e5933000 	ldr	r3, [r3]
     c48:	e1a01003 	mov	r1, r3
     c4c:	e3a03000 	mov	r3, #0
     c50:	e3a02010 	mov	r2, #16
     c54:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     c58:	ebffff74 	bl	a30 <printint>
     c5c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c60:	e2833004 	add	r3, r3, #4
     c64:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c68:	ea000039 	b	d54 <printf+0x1f0>
     c6c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     c70:	e3530073 	cmp	r3, #115	; 0x73
     c74:	1a000018 	bne	cdc <printf+0x178>
     c78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c7c:	e5933000 	ldr	r3, [r3]
     c80:	e50b300c 	str	r3, [fp, #-12]
     c84:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     c88:	e2833004 	add	r3, r3, #4
     c8c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     c90:	e51b300c 	ldr	r3, [fp, #-12]
     c94:	e3530000 	cmp	r3, #0
     c98:	1a00000a 	bne	cc8 <printf+0x164>
     c9c:	e59f30f0 	ldr	r3, [pc, #240]	; d94 <printf+0x230>
     ca0:	e50b300c 	str	r3, [fp, #-12]
     ca4:	ea000007 	b	cc8 <printf+0x164>
     ca8:	e51b300c 	ldr	r3, [fp, #-12]
     cac:	e5d33000 	ldrb	r3, [r3]
     cb0:	e1a01003 	mov	r1, r3
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cb8:	ebffff4e 	bl	9f8 <putc>
     cbc:	e51b300c 	ldr	r3, [fp, #-12]
     cc0:	e2833001 	add	r3, r3, #1
     cc4:	e50b300c 	str	r3, [fp, #-12]
     cc8:	e51b300c 	ldr	r3, [fp, #-12]
     ccc:	e5d33000 	ldrb	r3, [r3]
     cd0:	e3530000 	cmp	r3, #0
     cd4:	1afffff3 	bne	ca8 <printf+0x144>
     cd8:	ea00001d 	b	d54 <printf+0x1f0>
     cdc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ce0:	e3530063 	cmp	r3, #99	; 0x63
     ce4:	1a000009 	bne	d10 <printf+0x1ac>
     ce8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e6ef3073 	uxtb	r3, r3
     cf4:	e1a01003 	mov	r1, r3
     cf8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     cfc:	ebffff3d 	bl	9f8 <putc>
     d00:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     d04:	e2833004 	add	r3, r3, #4
     d08:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     d0c:	ea000010 	b	d54 <printf+0x1f0>
     d10:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d14:	e3530025 	cmp	r3, #37	; 0x25
     d18:	1a000005 	bne	d34 <printf+0x1d0>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d20:	e6ef3073 	uxtb	r3, r3
     d24:	e1a01003 	mov	r1, r3
     d28:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d2c:	ebffff31 	bl	9f8 <putc>
     d30:	ea000007 	b	d54 <printf+0x1f0>
     d34:	e3a01025 	mov	r1, #37	; 0x25
     d38:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d3c:	ebffff2d 	bl	9f8 <putc>
     d40:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     d44:	e6ef3073 	uxtb	r3, r3
     d48:	e1a01003 	mov	r1, r3
     d4c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     d50:	ebffff28 	bl	9f8 <putc>
     d54:	e3a03000 	mov	r3, #0
     d58:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     d5c:	e51b3010 	ldr	r3, [fp, #-16]
     d60:	e2833001 	add	r3, r3, #1
     d64:	e50b3010 	str	r3, [fp, #-16]
     d68:	e59b2004 	ldr	r2, [fp, #4]
     d6c:	e51b3010 	ldr	r3, [fp, #-16]
     d70:	e0823003 	add	r3, r2, r3
     d74:	e5d33000 	ldrb	r3, [r3]
     d78:	e3530000 	cmp	r3, #0
     d7c:	1affff84 	bne	b94 <printf+0x30>
     d80:	e1a00000 	nop			; (mov r0, r0)
     d84:	e24bd004 	sub	sp, fp, #4
     d88:	e8bd4800 	pop	{fp, lr}
     d8c:	e28dd00c 	add	sp, sp, #12
     d90:	e12fff1e 	bx	lr
     d94:	00001250 	.word	0x00001250

00000d98 <free>:
     d98:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     d9c:	e28db000 	add	fp, sp, #0
     da0:	e24dd014 	sub	sp, sp, #20
     da4:	e50b0010 	str	r0, [fp, #-16]
     da8:	e51b3010 	ldr	r3, [fp, #-16]
     dac:	e2433008 	sub	r3, r3, #8
     db0:	e50b300c 	str	r3, [fp, #-12]
     db4:	e59f3154 	ldr	r3, [pc, #340]	; f10 <free+0x178>
     db8:	e5933000 	ldr	r3, [r3]
     dbc:	e50b3008 	str	r3, [fp, #-8]
     dc0:	ea000010 	b	e08 <free+0x70>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e51b2008 	ldr	r2, [fp, #-8]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	3a000008 	bcc	dfc <free+0x64>
     dd8:	e51b200c 	ldr	r2, [fp, #-12]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e1520003 	cmp	r2, r3
     de4:	8a000010 	bhi	e2c <free+0x94>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5933000 	ldr	r3, [r3]
     df0:	e51b200c 	ldr	r2, [fp, #-12]
     df4:	e1520003 	cmp	r2, r3
     df8:	3a00000b 	bcc	e2c <free+0x94>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e50b3008 	str	r3, [fp, #-8]
     e08:	e51b200c 	ldr	r2, [fp, #-12]
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e1520003 	cmp	r2, r3
     e14:	9affffea 	bls	dc4 <free+0x2c>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5933000 	ldr	r3, [r3]
     e20:	e51b200c 	ldr	r2, [fp, #-12]
     e24:	e1520003 	cmp	r2, r3
     e28:	2affffe5 	bcs	dc4 <free+0x2c>
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e5933004 	ldr	r3, [r3, #4]
     e34:	e1a03183 	lsl	r3, r3, #3
     e38:	e51b200c 	ldr	r2, [fp, #-12]
     e3c:	e0822003 	add	r2, r2, r3
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e1520003 	cmp	r2, r3
     e4c:	1a00000d 	bne	e88 <free+0xf0>
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5932004 	ldr	r2, [r3, #4]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e5933004 	ldr	r3, [r3, #4]
     e64:	e0822003 	add	r2, r2, r3
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5832004 	str	r2, [r3, #4]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e5932000 	ldr	r2, [r3]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e5832000 	str	r2, [r3]
     e84:	ea000003 	b	e98 <free+0x100>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5932000 	ldr	r2, [r3]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5832000 	str	r2, [r3]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5933004 	ldr	r3, [r3, #4]
     ea0:	e1a03183 	lsl	r3, r3, #3
     ea4:	e51b2008 	ldr	r2, [fp, #-8]
     ea8:	e0823003 	add	r3, r2, r3
     eac:	e51b200c 	ldr	r2, [fp, #-12]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	1a00000b 	bne	ee8 <free+0x150>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5932004 	ldr	r2, [r3, #4]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5933004 	ldr	r3, [r3, #4]
     ec8:	e0822003 	add	r2, r2, r3
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5832004 	str	r2, [r3, #4]
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5932000 	ldr	r2, [r3]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5832000 	str	r2, [r3]
     ee4:	ea000002 	b	ef4 <free+0x15c>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e51b200c 	ldr	r2, [fp, #-12]
     ef0:	e5832000 	str	r2, [r3]
     ef4:	e59f2014 	ldr	r2, [pc, #20]	; f10 <free+0x178>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5823000 	str	r3, [r2]
     f00:	e1a00000 	nop			; (mov r0, r0)
     f04:	e28bd000 	add	sp, fp, #0
     f08:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     f0c:	e12fff1e 	bx	lr
     f10:	00001274 	.word	0x00001274

00000f14 <morecore>:
     f14:	e92d4800 	push	{fp, lr}
     f18:	e28db004 	add	fp, sp, #4
     f1c:	e24dd010 	sub	sp, sp, #16
     f20:	e50b0010 	str	r0, [fp, #-16]
     f24:	e51b3010 	ldr	r3, [fp, #-16]
     f28:	e3530a01 	cmp	r3, #4096	; 0x1000
     f2c:	2a000001 	bcs	f38 <morecore+0x24>
     f30:	e3a03a01 	mov	r3, #4096	; 0x1000
     f34:	e50b3010 	str	r3, [fp, #-16]
     f38:	e51b3010 	ldr	r3, [fp, #-16]
     f3c:	e1a03183 	lsl	r3, r3, #3
     f40:	e1a00003 	mov	r0, r3
     f44:	ebfffe63 	bl	8d8 <sbrk>
     f48:	e50b0008 	str	r0, [fp, #-8]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e3730001 	cmn	r3, #1
     f54:	1a000001 	bne	f60 <morecore+0x4c>
     f58:	e3a03000 	mov	r3, #0
     f5c:	ea00000a 	b	f8c <morecore+0x78>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e51b2010 	ldr	r2, [fp, #-16]
     f70:	e5832004 	str	r2, [r3, #4]
     f74:	e51b300c 	ldr	r3, [fp, #-12]
     f78:	e2833008 	add	r3, r3, #8
     f7c:	e1a00003 	mov	r0, r3
     f80:	ebffff84 	bl	d98 <free>
     f84:	e59f300c 	ldr	r3, [pc, #12]	; f98 <morecore+0x84>
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e1a00003 	mov	r0, r3
     f90:	e24bd004 	sub	sp, fp, #4
     f94:	e8bd8800 	pop	{fp, pc}
     f98:	00001274 	.word	0x00001274

00000f9c <malloc>:
     f9c:	e92d4800 	push	{fp, lr}
     fa0:	e28db004 	add	fp, sp, #4
     fa4:	e24dd018 	sub	sp, sp, #24
     fa8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     fac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     fb0:	e2833007 	add	r3, r3, #7
     fb4:	e1a031a3 	lsr	r3, r3, #3
     fb8:	e2833001 	add	r3, r3, #1
     fbc:	e50b3010 	str	r3, [fp, #-16]
     fc0:	e59f3134 	ldr	r3, [pc, #308]	; 10fc <malloc+0x160>
     fc4:	e5933000 	ldr	r3, [r3]
     fc8:	e50b300c 	str	r3, [fp, #-12]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e3530000 	cmp	r3, #0
     fd4:	1a00000b 	bne	1008 <malloc+0x6c>
     fd8:	e59f3120 	ldr	r3, [pc, #288]	; 1100 <malloc+0x164>
     fdc:	e50b300c 	str	r3, [fp, #-12]
     fe0:	e59f2114 	ldr	r2, [pc, #276]	; 10fc <malloc+0x160>
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e5823000 	str	r3, [r2]
     fec:	e59f3108 	ldr	r3, [pc, #264]	; 10fc <malloc+0x160>
     ff0:	e5933000 	ldr	r3, [r3]
     ff4:	e59f2104 	ldr	r2, [pc, #260]	; 1100 <malloc+0x164>
     ff8:	e5823000 	str	r3, [r2]
     ffc:	e59f30fc 	ldr	r3, [pc, #252]	; 1100 <malloc+0x164>
    1000:	e3a02000 	mov	r2, #0
    1004:	e5832004 	str	r2, [r3, #4]
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e50b3008 	str	r3, [fp, #-8]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933004 	ldr	r3, [r3, #4]
    101c:	e51b2010 	ldr	r2, [fp, #-16]
    1020:	e1520003 	cmp	r2, r3
    1024:	8a00001e 	bhi	10a4 <malloc+0x108>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5933004 	ldr	r3, [r3, #4]
    1030:	e51b2010 	ldr	r2, [fp, #-16]
    1034:	e1520003 	cmp	r2, r3
    1038:	1a000004 	bne	1050 <malloc+0xb4>
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5932000 	ldr	r2, [r3]
    1044:	e51b300c 	ldr	r3, [fp, #-12]
    1048:	e5832000 	str	r2, [r3]
    104c:	ea00000e 	b	108c <malloc+0xf0>
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e5932004 	ldr	r2, [r3, #4]
    1058:	e51b3010 	ldr	r3, [fp, #-16]
    105c:	e0422003 	sub	r2, r2, r3
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5832004 	str	r2, [r3, #4]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5933004 	ldr	r3, [r3, #4]
    1070:	e1a03183 	lsl	r3, r3, #3
    1074:	e51b2008 	ldr	r2, [fp, #-8]
    1078:	e0823003 	add	r3, r2, r3
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e51b2010 	ldr	r2, [fp, #-16]
    1088:	e5832004 	str	r2, [r3, #4]
    108c:	e59f2068 	ldr	r2, [pc, #104]	; 10fc <malloc+0x160>
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5823000 	str	r3, [r2]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e2833008 	add	r3, r3, #8
    10a0:	ea000012 	b	10f0 <malloc+0x154>
    10a4:	e59f3050 	ldr	r3, [pc, #80]	; 10fc <malloc+0x160>
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e51b2008 	ldr	r2, [fp, #-8]
    10b0:	e1520003 	cmp	r2, r3
    10b4:	1a000007 	bne	10d8 <malloc+0x13c>
    10b8:	e51b0010 	ldr	r0, [fp, #-16]
    10bc:	ebffff94 	bl	f14 <morecore>
    10c0:	e50b0008 	str	r0, [fp, #-8]
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e3530000 	cmp	r3, #0
    10cc:	1a000001 	bne	10d8 <malloc+0x13c>
    10d0:	e3a03000 	mov	r3, #0
    10d4:	ea000005 	b	10f0 <malloc+0x154>
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e50b300c 	str	r3, [fp, #-12]
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e50b3008 	str	r3, [fp, #-8]
    10ec:	eaffffc8 	b	1014 <malloc+0x78>
    10f0:	e1a00003 	mov	r0, r3
    10f4:	e24bd004 	sub	sp, fp, #4
    10f8:	e8bd8800 	pop	{fp, pc}
    10fc:	00001274 	.word	0x00001274
    1100:	0000126c 	.word	0x0000126c

00001104 <__udivsi3>:
    1104:	e2512001 	subs	r2, r1, #1
    1108:	012fff1e 	bxeq	lr
    110c:	3a000036 	bcc	11ec <__udivsi3+0xe8>
    1110:	e1500001 	cmp	r0, r1
    1114:	9a000022 	bls	11a4 <__udivsi3+0xa0>
    1118:	e1110002 	tst	r1, r2
    111c:	0a000023 	beq	11b0 <__udivsi3+0xac>
    1120:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1124:	01a01181 	lsleq	r1, r1, #3
    1128:	03a03008 	moveq	r3, #8
    112c:	13a03001 	movne	r3, #1
    1130:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1134:	31510000 	cmpcc	r1, r0
    1138:	31a01201 	lslcc	r1, r1, #4
    113c:	31a03203 	lslcc	r3, r3, #4
    1140:	3afffffa 	bcc	1130 <__udivsi3+0x2c>
    1144:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    1148:	31510000 	cmpcc	r1, r0
    114c:	31a01081 	lslcc	r1, r1, #1
    1150:	31a03083 	lslcc	r3, r3, #1
    1154:	3afffffa 	bcc	1144 <__udivsi3+0x40>
    1158:	e3a02000 	mov	r2, #0
    115c:	e1500001 	cmp	r0, r1
    1160:	20400001 	subcs	r0, r0, r1
    1164:	21822003 	orrcs	r2, r2, r3
    1168:	e15000a1 	cmp	r0, r1, lsr #1
    116c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1170:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1174:	e1500121 	cmp	r0, r1, lsr #2
    1178:	20400121 	subcs	r0, r0, r1, lsr #2
    117c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1180:	e15001a1 	cmp	r0, r1, lsr #3
    1184:	204001a1 	subcs	r0, r0, r1, lsr #3
    1188:	218221a3 	orrcs	r2, r2, r3, lsr #3
    118c:	e3500000 	cmp	r0, #0
    1190:	11b03223 	lsrsne	r3, r3, #4
    1194:	11a01221 	lsrne	r1, r1, #4
    1198:	1affffef 	bne	115c <__udivsi3+0x58>
    119c:	e1a00002 	mov	r0, r2
    11a0:	e12fff1e 	bx	lr
    11a4:	03a00001 	moveq	r0, #1
    11a8:	13a00000 	movne	r0, #0
    11ac:	e12fff1e 	bx	lr
    11b0:	e3510801 	cmp	r1, #65536	; 0x10000
    11b4:	21a01821 	lsrcs	r1, r1, #16
    11b8:	23a02010 	movcs	r2, #16
    11bc:	33a02000 	movcc	r2, #0
    11c0:	e3510c01 	cmp	r1, #256	; 0x100
    11c4:	21a01421 	lsrcs	r1, r1, #8
    11c8:	22822008 	addcs	r2, r2, #8
    11cc:	e3510010 	cmp	r1, #16
    11d0:	21a01221 	lsrcs	r1, r1, #4
    11d4:	22822004 	addcs	r2, r2, #4
    11d8:	e3510004 	cmp	r1, #4
    11dc:	82822003 	addhi	r2, r2, #3
    11e0:	908220a1 	addls	r2, r2, r1, lsr #1
    11e4:	e1a00230 	lsr	r0, r0, r2
    11e8:	e12fff1e 	bx	lr
    11ec:	e3500000 	cmp	r0, #0
    11f0:	13e00000 	mvnne	r0, #0
    11f4:	ea000007 	b	1218 <__aeabi_idiv0>

000011f8 <__aeabi_uidivmod>:
    11f8:	e3510000 	cmp	r1, #0
    11fc:	0afffffa 	beq	11ec <__udivsi3+0xe8>
    1200:	e92d4003 	push	{r0, r1, lr}
    1204:	ebffffbe 	bl	1104 <__udivsi3>
    1208:	e8bd4006 	pop	{r1, r2, lr}
    120c:	e0030092 	mul	r3, r2, r0
    1210:	e0411003 	sub	r1, r1, r3
    1214:	e12fff1e 	bx	lr

00001218 <__aeabi_idiv0>:
    1218:	e12fff1e 	bx	lr
