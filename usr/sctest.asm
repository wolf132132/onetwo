
_sctest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd088 	sub	sp, sp, #136	; 0x88
       c:	e50b0088 	str	r0, [fp, #-136]	; 0xffffff78
      10:	e50b108c 	str	r1, [fp, #-140]	; 0xffffff74
      14:	e59f336c 	ldr	r3, [pc, #876]	; 388 <main+0x388>
      18:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
      1c:	e59f3368 	ldr	r3, [pc, #872]	; 38c <main+0x38c>
      20:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
      24:	e3a03000 	mov	r3, #0
      28:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
      2c:	e51b3088 	ldr	r3, [fp, #-136]	; 0xffffff78
      30:	e3530001 	cmp	r3, #1
      34:	da00001e 	ble	b4 <main+0xb4>
      38:	e51b308c 	ldr	r3, [fp, #-140]	; 0xffffff74
      3c:	e2833004 	add	r3, r3, #4
      40:	e5933000 	ldr	r3, [r3]
      44:	e5d33000 	ldrb	r3, [r3]
      48:	e3530061 	cmp	r3, #97	; 0x61
      4c:	1a000006 	bne	6c <main+0x6c>
      50:	eb0002b0 	bl	b18 <getpid>
      54:	e1a03000 	mov	r3, r0
      58:	e1a02003 	mov	r2, r3
      5c:	e59f132c 	ldr	r1, [pc, #812]	; 390 <main+0x390>
      60:	e3a00001 	mov	r0, #1
      64:	eb000357 	bl	dc8 <printf>
      68:	eb00021a 	bl	8d8 <exit>
      6c:	e51b308c 	ldr	r3, [fp, #-140]	; 0xffffff74
      70:	e2833004 	add	r3, r3, #4
      74:	e5933000 	ldr	r3, [r3]
      78:	e5d33000 	ldrb	r3, [r3]
      7c:	e3530062 	cmp	r3, #98	; 0x62
      80:	1a00000b 	bne	b4 <main+0xb4>
      84:	eb0002a3 	bl	b18 <getpid>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e59f12f8 	ldr	r1, [pc, #760]	; 390 <main+0x390>
      94:	e3a00001 	mov	r0, #1
      98:	eb00034a 	bl	dc8 <printf>
      9c:	e59f12f0 	ldr	r1, [pc, #752]	; 394 <main+0x394>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb000347 	bl	dc8 <printf>
      a8:	e3a0000a 	mov	r0, #10
      ac:	eb0002ab 	bl	b60 <sleep>
      b0:	eafffffc 	b	a8 <main+0xa8>
      b4:	eb0002b2 	bl	b84 <uptime>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b200c 	ldr	r2, [fp, #-12]
      c0:	e59f12d0 	ldr	r1, [pc, #720]	; 398 <main+0x398>
      c4:	e3a00001 	mov	r0, #1
      c8:	eb00033e 	bl	dc8 <printf>
      cc:	eb0001f8 	bl	8b4 <fork>
      d0:	e50b0010 	str	r0, [fp, #-16]
      d4:	e51b3010 	ldr	r3, [fp, #-16]
      d8:	e3530000 	cmp	r3, #0
      dc:	1a00000c 	bne	114 <main+0x114>
      e0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
      e4:	e3a02061 	mov	r2, #97	; 0x61
      e8:	e5c32000 	strb	r2, [r3]
      ec:	eb000289 	bl	b18 <getpid>
      f0:	e1a03000 	mov	r3, r0
      f4:	e1a02003 	mov	r2, r3
      f8:	e59f129c 	ldr	r1, [pc, #668]	; 39c <main+0x39c>
      fc:	e3a00001 	mov	r0, #1
     100:	eb000330 	bl	dc8 <printf>
     104:	e24b3028 	sub	r3, fp, #40	; 0x28
     108:	e1a01003 	mov	r1, r3
     10c:	e59f0274 	ldr	r0, [pc, #628]	; 388 <main+0x388>
     110:	eb00022f 	bl	9d4 <exec>
     114:	eb0001f8 	bl	8fc <wait>
     118:	e50b0010 	str	r0, [fp, #-16]
     11c:	eb0001e4 	bl	8b4 <fork>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	1a00000c 	bne	164 <main+0x164>
     130:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
     134:	e3a02062 	mov	r2, #98	; 0x62
     138:	e5c32000 	strb	r2, [r3]
     13c:	eb000275 	bl	b18 <getpid>
     140:	e1a03000 	mov	r3, r0
     144:	e1a02003 	mov	r2, r3
     148:	e59f124c 	ldr	r1, [pc, #588]	; 39c <main+0x39c>
     14c:	e3a00001 	mov	r0, #1
     150:	eb00031c 	bl	dc8 <printf>
     154:	e24b3028 	sub	r3, fp, #40	; 0x28
     158:	e1a01003 	mov	r1, r3
     15c:	e59f0224 	ldr	r0, [pc, #548]	; 388 <main+0x388>
     160:	eb00021b 	bl	9d4 <exec>
     164:	e3a03000 	mov	r3, #0
     168:	e50b3008 	str	r3, [fp, #-8]
     16c:	ea000004 	b	184 <main+0x184>
     170:	e3a0000a 	mov	r0, #10
     174:	eb000279 	bl	b60 <sleep>
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e2833001 	add	r3, r3, #1
     180:	e50b3008 	str	r3, [fp, #-8]
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e3530002 	cmp	r3, #2
     18c:	dafffff7 	ble	170 <main+0x170>
     190:	e51b0010 	ldr	r0, [fp, #-16]
     194:	eb000205 	bl	9b0 <kill>
     198:	eb0001d7 	bl	8fc <wait>
     19c:	e50b0010 	str	r0, [fp, #-16]
     1a0:	e51b2010 	ldr	r2, [fp, #-16]
     1a4:	e59f11f4 	ldr	r1, [pc, #500]	; 3a0 <main+0x3a0>
     1a8:	e3a00001 	mov	r0, #1
     1ac:	eb000305 	bl	dc8 <printf>
     1b0:	e24b3030 	sub	r3, fp, #48	; 0x30
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0001d8 	bl	920 <pipe>
     1bc:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     1c0:	e3a02005 	mov	r2, #5
     1c4:	e59f11d8 	ldr	r1, [pc, #472]	; 3a4 <main+0x3a4>
     1c8:	e1a00003 	mov	r0, r3
     1cc:	eb0001e5 	bl	968 <write>
     1d0:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     1d4:	e1a00003 	mov	r0, r3
     1d8:	eb000245 	bl	af4 <dup>
     1dc:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     1e0:	e24b3070 	sub	r3, fp, #112	; 0x70
     1e4:	e3a02005 	mov	r2, #5
     1e8:	e1a01003 	mov	r1, r3
     1ec:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     1f0:	eb0001d3 	bl	944 <read>
     1f4:	e3a03000 	mov	r3, #0
     1f8:	e54b306b 	strb	r3, [fp, #-107]	; 0xffffff95
     1fc:	e24b3070 	sub	r3, fp, #112	; 0x70
     200:	e1a02003 	mov	r2, r3
     204:	e59f119c 	ldr	r1, [pc, #412]	; 3a8 <main+0x3a8>
     208:	e3a00001 	mov	r0, #1
     20c:	eb0002ed 	bl	dc8 <printf>
     210:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     214:	e1a00003 	mov	r0, r3
     218:	eb0001db 	bl	98c <close>
     21c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     220:	e1a00003 	mov	r0, r3
     224:	eb0001d8 	bl	98c <close>
     228:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     22c:	eb0001d6 	bl	98c <close>
     230:	e59f0174 	ldr	r0, [pc, #372]	; 3ac <main+0x3ac>
     234:	eb00021c 	bl	aac <mkdir>
     238:	e59f1170 	ldr	r1, [pc, #368]	; 3b0 <main+0x3b0>
     23c:	e59f0170 	ldr	r0, [pc, #368]	; 3b4 <main+0x3b4>
     240:	eb0001ec 	bl	9f8 <open>
     244:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     248:	e3a02007 	mov	r2, #7
     24c:	e59f1164 	ldr	r1, [pc, #356]	; 3b8 <main+0x3b8>
     250:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     254:	eb0001c3 	bl	968 <write>
     258:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     25c:	eb0001ca 	bl	98c <close>
     260:	e3a01000 	mov	r1, #0
     264:	e59f0148 	ldr	r0, [pc, #328]	; 3b4 <main+0x3b4>
     268:	eb0001e2 	bl	9f8 <open>
     26c:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     270:	e24b3070 	sub	r3, fp, #112	; 0x70
     274:	e3a02007 	mov	r2, #7
     278:	e1a01003 	mov	r1, r3
     27c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     280:	eb0001af 	bl	944 <read>
     284:	e3a03000 	mov	r3, #0
     288:	e54b3068 	strb	r3, [fp, #-104]	; 0xffffff98
     28c:	e24b3070 	sub	r3, fp, #112	; 0x70
     290:	e1a01003 	mov	r1, r3
     294:	e3a00001 	mov	r0, #1
     298:	eb0002ca 	bl	dc8 <printf>
     29c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     2a0:	eb0001b9 	bl	98c <close>
     2a4:	e3a0201b 	mov	r2, #27
     2a8:	e3a01003 	mov	r1, #3
     2ac:	e59f0108 	ldr	r0, [pc, #264]	; 3bc <main+0x3bc>
     2b0:	eb0001d9 	bl	a1c <mknod>
     2b4:	e50b000c 	str	r0, [fp, #-12]
     2b8:	e51b200c 	ldr	r2, [fp, #-12]
     2bc:	e59f10fc 	ldr	r1, [pc, #252]	; 3c0 <main+0x3c0>
     2c0:	e3a00001 	mov	r0, #1
     2c4:	eb0002bf 	bl	dc8 <printf>
     2c8:	e3a0201b 	mov	r2, #27
     2cc:	e3a01003 	mov	r1, #3
     2d0:	e59f00ec 	ldr	r0, [pc, #236]	; 3c4 <main+0x3c4>
     2d4:	eb0001d0 	bl	a1c <mknod>
     2d8:	e50b000c 	str	r0, [fp, #-12]
     2dc:	e51b200c 	ldr	r2, [fp, #-12]
     2e0:	e59f10d8 	ldr	r1, [pc, #216]	; 3c0 <main+0x3c0>
     2e4:	e3a00001 	mov	r0, #1
     2e8:	eb0002b6 	bl	dc8 <printf>
     2ec:	e59f00d0 	ldr	r0, [pc, #208]	; 3c4 <main+0x3c4>
     2f0:	eb0001d2 	bl	a40 <unlink>
     2f4:	e3a01000 	mov	r1, #0
     2f8:	e59f00ac 	ldr	r0, [pc, #172]	; 3ac <main+0x3ac>
     2fc:	eb0001bd 	bl	9f8 <open>
     300:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
     304:	e24b3084 	sub	r3, fp, #132	; 0x84
     308:	e1a01003 	mov	r1, r3
     30c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     310:	eb0001d3 	bl	a64 <fstat>
     314:	e50b000c 	str	r0, [fp, #-12]
     318:	e15b38f4 	ldrsh	r3, [fp, #-132]	; 0xffffff7c
     31c:	e1a02003 	mov	r2, r3
     320:	e59f10a0 	ldr	r1, [pc, #160]	; 3c8 <main+0x3c8>
     324:	e3a00001 	mov	r0, #1
     328:	eb0002a6 	bl	dc8 <printf>
     32c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     330:	eb000195 	bl	98c <close>
     334:	e59f0070 	ldr	r0, [pc, #112]	; 3ac <main+0x3ac>
     338:	eb0001e4 	bl	ad0 <chdir>
     33c:	e59f1088 	ldr	r1, [pc, #136]	; 3cc <main+0x3cc>
     340:	e59f0088 	ldr	r0, [pc, #136]	; 3d0 <main+0x3d0>
     344:	eb0001cf 	bl	a88 <link>
     348:	e59f0080 	ldr	r0, [pc, #128]	; 3d0 <main+0x3d0>
     34c:	eb0001bb 	bl	a40 <unlink>
     350:	e59f007c 	ldr	r0, [pc, #124]	; 3d4 <main+0x3d4>
     354:	eb0001dd 	bl	ad0 <chdir>
     358:	e3a00a01 	mov	r0, #4096	; 0x1000
     35c:	eb0001f6 	bl	b3c <sbrk>
     360:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     364:	e59f106c 	ldr	r1, [pc, #108]	; 3d8 <main+0x3d8>
     368:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
     36c:	eb00001b 	bl	3e0 <strcpy>
     370:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     374:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     378:	e59f105c 	ldr	r1, [pc, #92]	; 3dc <main+0x3dc>
     37c:	e3a00001 	mov	r0, #1
     380:	eb000290 	bl	dc8 <printf>
     384:	eb000153 	bl	8d8 <exit>
     388:	00001480 	.word	0x00001480
     38c:	00001488 	.word	0x00001488
     390:	0000148c 	.word	0x0000148c
     394:	000014a8 	.word	0x000014a8
     398:	000014c8 	.word	0x000014c8
     39c:	000014d8 	.word	0x000014d8
     3a0:	000014f4 	.word	0x000014f4
     3a4:	00001504 	.word	0x00001504
     3a8:	0000150c 	.word	0x0000150c
     3ac:	00001520 	.word	0x00001520
     3b0:	00000202 	.word	0x00000202
     3b4:	00001524 	.word	0x00001524
     3b8:	00001534 	.word	0x00001534
     3bc:	0000153c 	.word	0x0000153c
     3c0:	0000154c 	.word	0x0000154c
     3c4:	0000155c 	.word	0x0000155c
     3c8:	00001570 	.word	0x00001570
     3cc:	00001588 	.word	0x00001588
     3d0:	00001594 	.word	0x00001594
     3d4:	000015a0 	.word	0x000015a0
     3d8:	000015a4 	.word	0x000015a4
     3dc:	000015b0 	.word	0x000015b0

000003e0 <strcpy>:
     3e0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     3e4:	e28db000 	add	fp, sp, #0
     3e8:	e24dd014 	sub	sp, sp, #20
     3ec:	e50b0010 	str	r0, [fp, #-16]
     3f0:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     3f4:	e51b3010 	ldr	r3, [fp, #-16]
     3f8:	e50b3008 	str	r3, [fp, #-8]
     3fc:	e1a00000 	nop			; (mov r0, r0)
     400:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     404:	e2823001 	add	r3, r2, #1
     408:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     40c:	e51b3010 	ldr	r3, [fp, #-16]
     410:	e2831001 	add	r1, r3, #1
     414:	e50b1010 	str	r1, [fp, #-16]
     418:	e5d22000 	ldrb	r2, [r2]
     41c:	e5c32000 	strb	r2, [r3]
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e3530000 	cmp	r3, #0
     428:	1afffff4 	bne	400 <strcpy+0x20>
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e1a00003 	mov	r0, r3
     434:	e28bd000 	add	sp, fp, #0
     438:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     43c:	e12fff1e 	bx	lr

00000440 <strcmp>:
     440:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     444:	e28db000 	add	fp, sp, #0
     448:	e24dd00c 	sub	sp, sp, #12
     44c:	e50b0008 	str	r0, [fp, #-8]
     450:	e50b100c 	str	r1, [fp, #-12]
     454:	ea000005 	b	470 <strcmp+0x30>
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e2833001 	add	r3, r3, #1
     460:	e50b3008 	str	r3, [fp, #-8]
     464:	e51b300c 	ldr	r3, [fp, #-12]
     468:	e2833001 	add	r3, r3, #1
     46c:	e50b300c 	str	r3, [fp, #-12]
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e5d33000 	ldrb	r3, [r3]
     478:	e3530000 	cmp	r3, #0
     47c:	0a000005 	beq	498 <strcmp+0x58>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e5d32000 	ldrb	r2, [r3]
     488:	e51b300c 	ldr	r3, [fp, #-12]
     48c:	e5d33000 	ldrb	r3, [r3]
     490:	e1520003 	cmp	r2, r3
     494:	0affffef 	beq	458 <strcmp+0x18>
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e1a02003 	mov	r2, r3
     4a4:	e51b300c 	ldr	r3, [fp, #-12]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0423003 	sub	r3, r2, r3
     4b0:	e1a00003 	mov	r0, r3
     4b4:	e28bd000 	add	sp, fp, #0
     4b8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     4bc:	e12fff1e 	bx	lr

000004c0 <strlen>:
     4c0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     4c4:	e28db000 	add	fp, sp, #0
     4c8:	e24dd014 	sub	sp, sp, #20
     4cc:	e50b0010 	str	r0, [fp, #-16]
     4d0:	e3a03000 	mov	r3, #0
     4d4:	e50b3008 	str	r3, [fp, #-8]
     4d8:	ea000002 	b	4e8 <strlen+0x28>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e2833001 	add	r3, r3, #1
     4e4:	e50b3008 	str	r3, [fp, #-8]
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e51b2010 	ldr	r2, [fp, #-16]
     4f0:	e0823003 	add	r3, r2, r3
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e3530000 	cmp	r3, #0
     4fc:	1afffff6 	bne	4dc <strlen+0x1c>
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e1a00003 	mov	r0, r3
     508:	e28bd000 	add	sp, fp, #0
     50c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     510:	e12fff1e 	bx	lr

00000514 <memset>:
     514:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     518:	e28db000 	add	fp, sp, #0
     51c:	e24dd024 	sub	sp, sp, #36	; 0x24
     520:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     524:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     528:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
     52c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     530:	e50b3008 	str	r3, [fp, #-8]
     534:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     538:	e54b300d 	strb	r3, [fp, #-13]
     53c:	e55b300d 	ldrb	r3, [fp, #-13]
     540:	e1a02c03 	lsl	r2, r3, #24
     544:	e55b300d 	ldrb	r3, [fp, #-13]
     548:	e1a03803 	lsl	r3, r3, #16
     54c:	e1822003 	orr	r2, r2, r3
     550:	e55b300d 	ldrb	r3, [fp, #-13]
     554:	e1a03403 	lsl	r3, r3, #8
     558:	e1822003 	orr	r2, r2, r3
     55c:	e55b300d 	ldrb	r3, [fp, #-13]
     560:	e1823003 	orr	r3, r2, r3
     564:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     568:	ea000008 	b	590 <memset+0x7c>
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e55b200d 	ldrb	r2, [fp, #-13]
     574:	e5c32000 	strb	r2, [r3]
     578:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     57c:	e2433001 	sub	r3, r3, #1
     580:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2833001 	add	r3, r3, #1
     58c:	e50b3008 	str	r3, [fp, #-8]
     590:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     594:	e3530000 	cmp	r3, #0
     598:	0a000003 	beq	5ac <memset+0x98>
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e2033003 	and	r3, r3, #3
     5a4:	e3530000 	cmp	r3, #0
     5a8:	1affffef 	bne	56c <memset+0x58>
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e50b300c 	str	r3, [fp, #-12]
     5b4:	ea000008 	b	5dc <memset+0xc8>
     5b8:	e51b300c 	ldr	r3, [fp, #-12]
     5bc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
     5c0:	e5832000 	str	r2, [r3]
     5c4:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5c8:	e2433004 	sub	r3, r3, #4
     5cc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     5d0:	e51b300c 	ldr	r3, [fp, #-12]
     5d4:	e2833004 	add	r3, r3, #4
     5d8:	e50b300c 	str	r3, [fp, #-12]
     5dc:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     5e0:	e3530003 	cmp	r3, #3
     5e4:	8afffff3 	bhi	5b8 <memset+0xa4>
     5e8:	e51b300c 	ldr	r3, [fp, #-12]
     5ec:	e50b3008 	str	r3, [fp, #-8]
     5f0:	ea000008 	b	618 <memset+0x104>
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e55b200d 	ldrb	r2, [fp, #-13]
     5fc:	e5c32000 	strb	r2, [r3]
     600:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     604:	e2433001 	sub	r3, r3, #1
     608:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e2833001 	add	r3, r3, #1
     614:	e50b3008 	str	r3, [fp, #-8]
     618:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
     61c:	e3530000 	cmp	r3, #0
     620:	1afffff3 	bne	5f4 <memset+0xe0>
     624:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     628:	e1a00003 	mov	r0, r3
     62c:	e28bd000 	add	sp, fp, #0
     630:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <strchr>:
     638:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     63c:	e28db000 	add	fp, sp, #0
     640:	e24dd00c 	sub	sp, sp, #12
     644:	e50b0008 	str	r0, [fp, #-8]
     648:	e1a03001 	mov	r3, r1
     64c:	e54b3009 	strb	r3, [fp, #-9]
     650:	ea000009 	b	67c <strchr+0x44>
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e5d33000 	ldrb	r3, [r3]
     65c:	e55b2009 	ldrb	r2, [fp, #-9]
     660:	e1520003 	cmp	r2, r3
     664:	1a000001 	bne	670 <strchr+0x38>
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	ea000007 	b	690 <strchr+0x58>
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e2833001 	add	r3, r3, #1
     678:	e50b3008 	str	r3, [fp, #-8]
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e5d33000 	ldrb	r3, [r3]
     684:	e3530000 	cmp	r3, #0
     688:	1afffff1 	bne	654 <strchr+0x1c>
     68c:	e3a03000 	mov	r3, #0
     690:	e1a00003 	mov	r0, r3
     694:	e28bd000 	add	sp, fp, #0
     698:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <gets>:
     6a0:	e92d4800 	push	{fp, lr}
     6a4:	e28db004 	add	fp, sp, #4
     6a8:	e24dd018 	sub	sp, sp, #24
     6ac:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
     6b0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
     6b4:	e3a03000 	mov	r3, #0
     6b8:	e50b3008 	str	r3, [fp, #-8]
     6bc:	ea000016 	b	71c <gets+0x7c>
     6c0:	e24b300d 	sub	r3, fp, #13
     6c4:	e3a02001 	mov	r2, #1
     6c8:	e1a01003 	mov	r1, r3
     6cc:	e3a00000 	mov	r0, #0
     6d0:	eb00009b 	bl	944 <read>
     6d4:	e50b000c 	str	r0, [fp, #-12]
     6d8:	e51b300c 	ldr	r3, [fp, #-12]
     6dc:	e3530000 	cmp	r3, #0
     6e0:	da000013 	ble	734 <gets+0x94>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2832001 	add	r2, r3, #1
     6ec:	e50b2008 	str	r2, [fp, #-8]
     6f0:	e1a02003 	mov	r2, r3
     6f4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     6f8:	e0833002 	add	r3, r3, r2
     6fc:	e55b200d 	ldrb	r2, [fp, #-13]
     700:	e5c32000 	strb	r2, [r3]
     704:	e55b300d 	ldrb	r3, [fp, #-13]
     708:	e353000a 	cmp	r3, #10
     70c:	0a000009 	beq	738 <gets+0x98>
     710:	e55b300d 	ldrb	r3, [fp, #-13]
     714:	e353000d 	cmp	r3, #13
     718:	0a000006 	beq	738 <gets+0x98>
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e2833001 	add	r3, r3, #1
     724:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
     728:	e1520003 	cmp	r2, r3
     72c:	caffffe3 	bgt	6c0 <gets+0x20>
     730:	ea000000 	b	738 <gets+0x98>
     734:	e1a00000 	nop			; (mov r0, r0)
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     740:	e0823003 	add	r3, r2, r3
     744:	e3a02000 	mov	r2, #0
     748:	e5c32000 	strb	r2, [r3]
     74c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     750:	e1a00003 	mov	r0, r3
     754:	e24bd004 	sub	sp, fp, #4
     758:	e8bd8800 	pop	{fp, pc}

0000075c <stat>:
     75c:	e92d4800 	push	{fp, lr}
     760:	e28db004 	add	fp, sp, #4
     764:	e24dd010 	sub	sp, sp, #16
     768:	e50b0010 	str	r0, [fp, #-16]
     76c:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     770:	e3a01000 	mov	r1, #0
     774:	e51b0010 	ldr	r0, [fp, #-16]
     778:	eb00009e 	bl	9f8 <open>
     77c:	e50b0008 	str	r0, [fp, #-8]
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e3530000 	cmp	r3, #0
     788:	aa000001 	bge	794 <stat+0x38>
     78c:	e3e03000 	mvn	r3, #0
     790:	ea000006 	b	7b0 <stat+0x54>
     794:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
     798:	e51b0008 	ldr	r0, [fp, #-8]
     79c:	eb0000b0 	bl	a64 <fstat>
     7a0:	e50b000c 	str	r0, [fp, #-12]
     7a4:	e51b0008 	ldr	r0, [fp, #-8]
     7a8:	eb000077 	bl	98c <close>
     7ac:	e51b300c 	ldr	r3, [fp, #-12]
     7b0:	e1a00003 	mov	r0, r3
     7b4:	e24bd004 	sub	sp, fp, #4
     7b8:	e8bd8800 	pop	{fp, pc}

000007bc <atoi>:
     7bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     7c0:	e28db000 	add	fp, sp, #0
     7c4:	e24dd014 	sub	sp, sp, #20
     7c8:	e50b0010 	str	r0, [fp, #-16]
     7cc:	e3a03000 	mov	r3, #0
     7d0:	e50b3008 	str	r3, [fp, #-8]
     7d4:	ea00000c 	b	80c <atoi+0x50>
     7d8:	e51b2008 	ldr	r2, [fp, #-8]
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a03103 	lsl	r3, r3, #2
     7e4:	e0833002 	add	r3, r3, r2
     7e8:	e1a03083 	lsl	r3, r3, #1
     7ec:	e1a01003 	mov	r1, r3
     7f0:	e51b3010 	ldr	r3, [fp, #-16]
     7f4:	e2832001 	add	r2, r3, #1
     7f8:	e50b2010 	str	r2, [fp, #-16]
     7fc:	e5d33000 	ldrb	r3, [r3]
     800:	e0813003 	add	r3, r1, r3
     804:	e2433030 	sub	r3, r3, #48	; 0x30
     808:	e50b3008 	str	r3, [fp, #-8]
     80c:	e51b3010 	ldr	r3, [fp, #-16]
     810:	e5d33000 	ldrb	r3, [r3]
     814:	e353002f 	cmp	r3, #47	; 0x2f
     818:	9a000003 	bls	82c <atoi+0x70>
     81c:	e51b3010 	ldr	r3, [fp, #-16]
     820:	e5d33000 	ldrb	r3, [r3]
     824:	e3530039 	cmp	r3, #57	; 0x39
     828:	9affffea 	bls	7d8 <atoi+0x1c>
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e1a00003 	mov	r0, r3
     834:	e28bd000 	add	sp, fp, #0
     838:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <memmove>:
     840:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     844:	e28db000 	add	fp, sp, #0
     848:	e24dd01c 	sub	sp, sp, #28
     84c:	e50b0010 	str	r0, [fp, #-16]
     850:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
     854:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     858:	e51b3010 	ldr	r3, [fp, #-16]
     85c:	e50b3008 	str	r3, [fp, #-8]
     860:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     864:	e50b300c 	str	r3, [fp, #-12]
     868:	ea000007 	b	88c <memmove+0x4c>
     86c:	e51b200c 	ldr	r2, [fp, #-12]
     870:	e2823001 	add	r3, r2, #1
     874:	e50b300c 	str	r3, [fp, #-12]
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e2831001 	add	r1, r3, #1
     880:	e50b1008 	str	r1, [fp, #-8]
     884:	e5d22000 	ldrb	r2, [r2]
     888:	e5c32000 	strb	r2, [r3]
     88c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     890:	e2432001 	sub	r2, r3, #1
     894:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
     898:	e3530000 	cmp	r3, #0
     89c:	cafffff2 	bgt	86c <memmove+0x2c>
     8a0:	e51b3010 	ldr	r3, [fp, #-16]
     8a4:	e1a00003 	mov	r0, r3
     8a8:	e28bd000 	add	sp, fp, #0
     8ac:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <fork>:
     8b4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a00001 	mov	r0, #1
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <exit>:
     8d8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00002 	mov	r0, #2
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <wait>:
     8fc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00003 	mov	r0, #3
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <pipe>:
     920:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00004 	mov	r0, #4
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <read>:
     944:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00005 	mov	r0, #5
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <write>:
     968:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00010 	mov	r0, #16
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <close>:
     98c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00015 	mov	r0, #21
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <kill>:
     9b0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00006 	mov	r0, #6
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <exec>:
     9d4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a00007 	mov	r0, #7
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <open>:
     9f8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a0000f 	mov	r0, #15
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <mknod>:
     a1c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a00011 	mov	r0, #17
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <unlink>:
     a40:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a00012 	mov	r0, #18
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <fstat>:
     a64:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00008 	mov	r0, #8
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <link>:
     a88:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00013 	mov	r0, #19
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <mkdir>:
     aac:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00014 	mov	r0, #20
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <chdir>:
     ad0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00009 	mov	r0, #9
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <dup>:
     af4:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a0000a 	mov	r0, #10
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <getpid>:
     b18:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a0000b 	mov	r0, #11
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <sbrk>:
     b3c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a0000c 	mov	r0, #12
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <sleep>:
     b60:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a0000d 	mov	r0, #13
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <uptime>:
     b84:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a0000e 	mov	r0, #14
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <memfree>:
     ba8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00016 	mov	r0, #22
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <traceon>:
     bcc:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00017 	mov	r0, #23
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <getps>:
     bf0:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00018 	mov	r0, #24
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <suspend>:
     c14:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00019 	mov	r0, #25
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <resume>:
     c38:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a0001a 	mov	r0, #26
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <putc>:
     c5c:	e92d4800 	push	{fp, lr}
     c60:	e28db004 	add	fp, sp, #4
     c64:	e24dd008 	sub	sp, sp, #8
     c68:	e50b0008 	str	r0, [fp, #-8]
     c6c:	e1a03001 	mov	r3, r1
     c70:	e54b3009 	strb	r3, [fp, #-9]
     c74:	e24b3009 	sub	r3, fp, #9
     c78:	e3a02001 	mov	r2, #1
     c7c:	e1a01003 	mov	r1, r3
     c80:	e51b0008 	ldr	r0, [fp, #-8]
     c84:	ebffff37 	bl	968 <write>
     c88:	e1a00000 	nop			; (mov r0, r0)
     c8c:	e24bd004 	sub	sp, fp, #4
     c90:	e8bd8800 	pop	{fp, pc}

00000c94 <printint>:
     c94:	e92d4800 	push	{fp, lr}
     c98:	e28db004 	add	fp, sp, #4
     c9c:	e24dd030 	sub	sp, sp, #48	; 0x30
     ca0:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
     ca4:	e50b102c 	str	r1, [fp, #-44]	; 0xffffffd4
     ca8:	e50b2030 	str	r2, [fp, #-48]	; 0xffffffd0
     cac:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
     cb0:	e3a03000 	mov	r3, #0
     cb4:	e50b300c 	str	r3, [fp, #-12]
     cb8:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
     cbc:	e3530000 	cmp	r3, #0
     cc0:	0a000008 	beq	ce8 <printint+0x54>
     cc4:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     cc8:	e3530000 	cmp	r3, #0
     ccc:	aa000005 	bge	ce8 <printint+0x54>
     cd0:	e3a03001 	mov	r3, #1
     cd4:	e50b300c 	str	r3, [fp, #-12]
     cd8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     cdc:	e2633000 	rsb	r3, r3, #0
     ce0:	e50b3010 	str	r3, [fp, #-16]
     ce4:	ea000001 	b	cf0 <printint+0x5c>
     ce8:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     cec:	e50b3010 	str	r3, [fp, #-16]
     cf0:	e3a03000 	mov	r3, #0
     cf4:	e50b3008 	str	r3, [fp, #-8]
     cf8:	e51b2030 	ldr	r2, [fp, #-48]	; 0xffffffd0
     cfc:	e51b3010 	ldr	r3, [fp, #-16]
     d00:	e1a01002 	mov	r1, r2
     d04:	e1a00003 	mov	r0, r3
     d08:	eb0001d3 	bl	145c <__aeabi_uidivmod>
     d0c:	e1a03001 	mov	r3, r1
     d10:	e1a01003 	mov	r1, r3
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e2832001 	add	r2, r3, #1
     d1c:	e50b2008 	str	r2, [fp, #-8]
     d20:	e59f209c 	ldr	r2, [pc, #156]	; dc4 <printint+0x130>
     d24:	e7d22001 	ldrb	r2, [r2, r1]
     d28:	e24b1004 	sub	r1, fp, #4
     d2c:	e0813003 	add	r3, r1, r3
     d30:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     d34:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
     d38:	e1a01003 	mov	r1, r3
     d3c:	e51b0010 	ldr	r0, [fp, #-16]
     d40:	eb000188 	bl	1368 <__udivsi3>
     d44:	e1a03000 	mov	r3, r0
     d48:	e50b3010 	str	r3, [fp, #-16]
     d4c:	e51b3010 	ldr	r3, [fp, #-16]
     d50:	e3530000 	cmp	r3, #0
     d54:	1affffe7 	bne	cf8 <printint+0x64>
     d58:	e51b300c 	ldr	r3, [fp, #-12]
     d5c:	e3530000 	cmp	r3, #0
     d60:	0a00000e 	beq	da0 <printint+0x10c>
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e2832001 	add	r2, r3, #1
     d6c:	e50b2008 	str	r2, [fp, #-8]
     d70:	e24b2004 	sub	r2, fp, #4
     d74:	e0823003 	add	r3, r2, r3
     d78:	e3a0202d 	mov	r2, #45	; 0x2d
     d7c:	e543201c 	strb	r2, [r3, #-28]	; 0xffffffe4
     d80:	ea000006 	b	da0 <printint+0x10c>
     d84:	e24b2020 	sub	r2, fp, #32
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e0823003 	add	r3, r2, r3
     d90:	e5d33000 	ldrb	r3, [r3]
     d94:	e1a01003 	mov	r1, r3
     d98:	e51b0028 	ldr	r0, [fp, #-40]	; 0xffffffd8
     d9c:	ebffffae 	bl	c5c <putc>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e2433001 	sub	r3, r3, #1
     da8:	e50b3008 	str	r3, [fp, #-8]
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e3530000 	cmp	r3, #0
     db4:	aafffff2 	bge	d84 <printint+0xf0>
     db8:	e1a00000 	nop			; (mov r0, r0)
     dbc:	e24bd004 	sub	sp, fp, #4
     dc0:	e8bd8800 	pop	{fp, pc}
     dc4:	000015d0 	.word	0x000015d0

00000dc8 <printf>:
     dc8:	e92d000e 	push	{r1, r2, r3}
     dcc:	e92d4800 	push	{fp, lr}
     dd0:	e28db004 	add	fp, sp, #4
     dd4:	e24dd024 	sub	sp, sp, #36	; 0x24
     dd8:	e50b0024 	str	r0, [fp, #-36]	; 0xffffffdc
     ddc:	e3a03000 	mov	r3, #0
     de0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     de4:	e28b3008 	add	r3, fp, #8
     de8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     dec:	e3a03000 	mov	r3, #0
     df0:	e50b3010 	str	r3, [fp, #-16]
     df4:	ea000074 	b	fcc <printf+0x204>
     df8:	e59b2004 	ldr	r2, [fp, #4]
     dfc:	e51b3010 	ldr	r3, [fp, #-16]
     e00:	e0823003 	add	r3, r2, r3
     e04:	e5d33000 	ldrb	r3, [r3]
     e08:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
     e0c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     e10:	e3530000 	cmp	r3, #0
     e14:	1a00000b 	bne	e48 <printf+0x80>
     e18:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e1c:	e3530025 	cmp	r3, #37	; 0x25
     e20:	1a000002 	bne	e30 <printf+0x68>
     e24:	e3a03025 	mov	r3, #37	; 0x25
     e28:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     e2c:	ea000063 	b	fc0 <printf+0x1f8>
     e30:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e34:	e6ef3073 	uxtb	r3, r3
     e38:	e1a01003 	mov	r1, r3
     e3c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e40:	ebffff85 	bl	c5c <putc>
     e44:	ea00005d 	b	fc0 <printf+0x1f8>
     e48:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     e4c:	e3530025 	cmp	r3, #37	; 0x25
     e50:	1a00005a 	bne	fc0 <printf+0x1f8>
     e54:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e58:	e3530064 	cmp	r3, #100	; 0x64
     e5c:	1a00000a 	bne	e8c <printf+0xc4>
     e60:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e64:	e5933000 	ldr	r3, [r3]
     e68:	e1a01003 	mov	r1, r3
     e6c:	e3a03001 	mov	r3, #1
     e70:	e3a0200a 	mov	r2, #10
     e74:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     e78:	ebffff85 	bl	c94 <printint>
     e7c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     e80:	e2833004 	add	r3, r3, #4
     e84:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     e88:	ea00004a 	b	fb8 <printf+0x1f0>
     e8c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e90:	e3530078 	cmp	r3, #120	; 0x78
     e94:	0a000002 	beq	ea4 <printf+0xdc>
     e98:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     e9c:	e3530070 	cmp	r3, #112	; 0x70
     ea0:	1a00000a 	bne	ed0 <printf+0x108>
     ea4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e1a01003 	mov	r1, r3
     eb0:	e3a03000 	mov	r3, #0
     eb4:	e3a02010 	mov	r2, #16
     eb8:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     ebc:	ebffff74 	bl	c94 <printint>
     ec0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ec4:	e2833004 	add	r3, r3, #4
     ec8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ecc:	ea000039 	b	fb8 <printf+0x1f0>
     ed0:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     ed4:	e3530073 	cmp	r3, #115	; 0x73
     ed8:	1a000018 	bne	f40 <printf+0x178>
     edc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e50b300c 	str	r3, [fp, #-12]
     ee8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     eec:	e2833004 	add	r3, r3, #4
     ef0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e3530000 	cmp	r3, #0
     efc:	1a00000a 	bne	f2c <printf+0x164>
     f00:	e59f30f0 	ldr	r3, [pc, #240]	; ff8 <printf+0x230>
     f04:	e50b300c 	str	r3, [fp, #-12]
     f08:	ea000007 	b	f2c <printf+0x164>
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5d33000 	ldrb	r3, [r3]
     f14:	e1a01003 	mov	r1, r3
     f18:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f1c:	ebffff4e 	bl	c5c <putc>
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e2833001 	add	r3, r3, #1
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b300c 	ldr	r3, [fp, #-12]
     f30:	e5d33000 	ldrb	r3, [r3]
     f34:	e3530000 	cmp	r3, #0
     f38:	1afffff3 	bne	f0c <printf+0x144>
     f3c:	ea00001d 	b	fb8 <printf+0x1f0>
     f40:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f44:	e3530063 	cmp	r3, #99	; 0x63
     f48:	1a000009 	bne	f74 <printf+0x1ac>
     f4c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e6ef3073 	uxtb	r3, r3
     f58:	e1a01003 	mov	r1, r3
     f5c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f60:	ebffff3d 	bl	c5c <putc>
     f64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
     f68:	e2833004 	add	r3, r3, #4
     f6c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
     f70:	ea000010 	b	fb8 <printf+0x1f0>
     f74:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f78:	e3530025 	cmp	r3, #37	; 0x25
     f7c:	1a000005 	bne	f98 <printf+0x1d0>
     f80:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     f84:	e6ef3073 	uxtb	r3, r3
     f88:	e1a01003 	mov	r1, r3
     f8c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     f90:	ebffff31 	bl	c5c <putc>
     f94:	ea000007 	b	fb8 <printf+0x1f0>
     f98:	e3a01025 	mov	r1, #37	; 0x25
     f9c:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     fa0:	ebffff2d 	bl	c5c <putc>
     fa4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
     fa8:	e6ef3073 	uxtb	r3, r3
     fac:	e1a01003 	mov	r1, r3
     fb0:	e51b0024 	ldr	r0, [fp, #-36]	; 0xffffffdc
     fb4:	ebffff28 	bl	c5c <putc>
     fb8:	e3a03000 	mov	r3, #0
     fbc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     fc0:	e51b3010 	ldr	r3, [fp, #-16]
     fc4:	e2833001 	add	r3, r3, #1
     fc8:	e50b3010 	str	r3, [fp, #-16]
     fcc:	e59b2004 	ldr	r2, [fp, #4]
     fd0:	e51b3010 	ldr	r3, [fp, #-16]
     fd4:	e0823003 	add	r3, r2, r3
     fd8:	e5d33000 	ldrb	r3, [r3]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	1affff84 	bne	df8 <printf+0x30>
     fe4:	e1a00000 	nop			; (mov r0, r0)
     fe8:	e24bd004 	sub	sp, fp, #4
     fec:	e8bd4800 	pop	{fp, lr}
     ff0:	e28dd00c 	add	sp, sp, #12
     ff4:	e12fff1e 	bx	lr
     ff8:	000015c8 	.word	0x000015c8

00000ffc <free>:
     ffc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    1000:	e28db000 	add	fp, sp, #0
    1004:	e24dd014 	sub	sp, sp, #20
    1008:	e50b0010 	str	r0, [fp, #-16]
    100c:	e51b3010 	ldr	r3, [fp, #-16]
    1010:	e2433008 	sub	r3, r3, #8
    1014:	e50b300c 	str	r3, [fp, #-12]
    1018:	e59f3154 	ldr	r3, [pc, #340]	; 1174 <free+0x178>
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e50b3008 	str	r3, [fp, #-8]
    1024:	ea000010 	b	106c <free+0x70>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5933000 	ldr	r3, [r3]
    1030:	e51b2008 	ldr	r2, [fp, #-8]
    1034:	e1520003 	cmp	r2, r3
    1038:	3a000008 	bcc	1060 <free+0x64>
    103c:	e51b200c 	ldr	r2, [fp, #-12]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e1520003 	cmp	r2, r3
    1048:	8a000010 	bhi	1090 <free+0x94>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5933000 	ldr	r3, [r3]
    1054:	e51b200c 	ldr	r2, [fp, #-12]
    1058:	e1520003 	cmp	r2, r3
    105c:	3a00000b 	bcc	1090 <free+0x94>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e50b3008 	str	r3, [fp, #-8]
    106c:	e51b200c 	ldr	r2, [fp, #-12]
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e1520003 	cmp	r2, r3
    1078:	9affffea 	bls	1028 <free+0x2c>
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e5933000 	ldr	r3, [r3]
    1084:	e51b200c 	ldr	r2, [fp, #-12]
    1088:	e1520003 	cmp	r2, r3
    108c:	2affffe5 	bcs	1028 <free+0x2c>
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5933004 	ldr	r3, [r3, #4]
    1098:	e1a03183 	lsl	r3, r3, #3
    109c:	e51b200c 	ldr	r2, [fp, #-12]
    10a0:	e0822003 	add	r2, r2, r3
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e1520003 	cmp	r2, r3
    10b0:	1a00000d 	bne	10ec <free+0xf0>
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e5932004 	ldr	r2, [r3, #4]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e5933004 	ldr	r3, [r3, #4]
    10c8:	e0822003 	add	r2, r2, r3
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e5832004 	str	r2, [r3, #4]
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e5932000 	ldr	r2, [r3]
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e5832000 	str	r2, [r3]
    10e8:	ea000003 	b	10fc <free+0x100>
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e5932000 	ldr	r2, [r3]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5832000 	str	r2, [r3]
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933004 	ldr	r3, [r3, #4]
    1104:	e1a03183 	lsl	r3, r3, #3
    1108:	e51b2008 	ldr	r2, [fp, #-8]
    110c:	e0823003 	add	r3, r2, r3
    1110:	e51b200c 	ldr	r2, [fp, #-12]
    1114:	e1520003 	cmp	r2, r3
    1118:	1a00000b 	bne	114c <free+0x150>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5932004 	ldr	r2, [r3, #4]
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e5933004 	ldr	r3, [r3, #4]
    112c:	e0822003 	add	r2, r2, r3
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e5832004 	str	r2, [r3, #4]
    1138:	e51b300c 	ldr	r3, [fp, #-12]
    113c:	e5932000 	ldr	r2, [r3]
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e5832000 	str	r2, [r3]
    1148:	ea000002 	b	1158 <free+0x15c>
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e51b200c 	ldr	r2, [fp, #-12]
    1154:	e5832000 	str	r2, [r3]
    1158:	e59f2014 	ldr	r2, [pc, #20]	; 1174 <free+0x178>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5823000 	str	r3, [r2]
    1164:	e1a00000 	nop			; (mov r0, r0)
    1168:	e28bd000 	add	sp, fp, #0
    116c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    1170:	e12fff1e 	bx	lr
    1174:	000015ec 	.word	0x000015ec

00001178 <morecore>:
    1178:	e92d4800 	push	{fp, lr}
    117c:	e28db004 	add	fp, sp, #4
    1180:	e24dd010 	sub	sp, sp, #16
    1184:	e50b0010 	str	r0, [fp, #-16]
    1188:	e51b3010 	ldr	r3, [fp, #-16]
    118c:	e3530a01 	cmp	r3, #4096	; 0x1000
    1190:	2a000001 	bcs	119c <morecore+0x24>
    1194:	e3a03a01 	mov	r3, #4096	; 0x1000
    1198:	e50b3010 	str	r3, [fp, #-16]
    119c:	e51b3010 	ldr	r3, [fp, #-16]
    11a0:	e1a03183 	lsl	r3, r3, #3
    11a4:	e1a00003 	mov	r0, r3
    11a8:	ebfffe63 	bl	b3c <sbrk>
    11ac:	e50b0008 	str	r0, [fp, #-8]
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e3730001 	cmn	r3, #1
    11b8:	1a000001 	bne	11c4 <morecore+0x4c>
    11bc:	e3a03000 	mov	r3, #0
    11c0:	ea00000a 	b	11f0 <morecore+0x78>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e50b300c 	str	r3, [fp, #-12]
    11cc:	e51b300c 	ldr	r3, [fp, #-12]
    11d0:	e51b2010 	ldr	r2, [fp, #-16]
    11d4:	e5832004 	str	r2, [r3, #4]
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e2833008 	add	r3, r3, #8
    11e0:	e1a00003 	mov	r0, r3
    11e4:	ebffff84 	bl	ffc <free>
    11e8:	e59f300c 	ldr	r3, [pc, #12]	; 11fc <morecore+0x84>
    11ec:	e5933000 	ldr	r3, [r3]
    11f0:	e1a00003 	mov	r0, r3
    11f4:	e24bd004 	sub	sp, fp, #4
    11f8:	e8bd8800 	pop	{fp, pc}
    11fc:	000015ec 	.word	0x000015ec

00001200 <malloc>:
    1200:	e92d4800 	push	{fp, lr}
    1204:	e28db004 	add	fp, sp, #4
    1208:	e24dd018 	sub	sp, sp, #24
    120c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
    1210:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    1214:	e2833007 	add	r3, r3, #7
    1218:	e1a031a3 	lsr	r3, r3, #3
    121c:	e2833001 	add	r3, r3, #1
    1220:	e50b3010 	str	r3, [fp, #-16]
    1224:	e59f3134 	ldr	r3, [pc, #308]	; 1360 <malloc+0x160>
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e50b300c 	str	r3, [fp, #-12]
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e3530000 	cmp	r3, #0
    1238:	1a00000b 	bne	126c <malloc+0x6c>
    123c:	e59f3120 	ldr	r3, [pc, #288]	; 1364 <malloc+0x164>
    1240:	e50b300c 	str	r3, [fp, #-12]
    1244:	e59f2114 	ldr	r2, [pc, #276]	; 1360 <malloc+0x160>
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e5823000 	str	r3, [r2]
    1250:	e59f3108 	ldr	r3, [pc, #264]	; 1360 <malloc+0x160>
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e59f2104 	ldr	r2, [pc, #260]	; 1364 <malloc+0x164>
    125c:	e5823000 	str	r3, [r2]
    1260:	e59f30fc 	ldr	r3, [pc, #252]	; 1364 <malloc+0x164>
    1264:	e3a02000 	mov	r2, #0
    1268:	e5832004 	str	r2, [r3, #4]
    126c:	e51b300c 	ldr	r3, [fp, #-12]
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e50b3008 	str	r3, [fp, #-8]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5933004 	ldr	r3, [r3, #4]
    1280:	e51b2010 	ldr	r2, [fp, #-16]
    1284:	e1520003 	cmp	r2, r3
    1288:	8a00001e 	bhi	1308 <malloc+0x108>
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e5933004 	ldr	r3, [r3, #4]
    1294:	e51b2010 	ldr	r2, [fp, #-16]
    1298:	e1520003 	cmp	r2, r3
    129c:	1a000004 	bne	12b4 <malloc+0xb4>
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5932000 	ldr	r2, [r3]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e5832000 	str	r2, [r3]
    12b0:	ea00000e 	b	12f0 <malloc+0xf0>
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5932004 	ldr	r2, [r3, #4]
    12bc:	e51b3010 	ldr	r3, [fp, #-16]
    12c0:	e0422003 	sub	r2, r2, r3
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e5832004 	str	r2, [r3, #4]
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5933004 	ldr	r3, [r3, #4]
    12d4:	e1a03183 	lsl	r3, r3, #3
    12d8:	e51b2008 	ldr	r2, [fp, #-8]
    12dc:	e0823003 	add	r3, r2, r3
    12e0:	e50b3008 	str	r3, [fp, #-8]
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e51b2010 	ldr	r2, [fp, #-16]
    12ec:	e5832004 	str	r2, [r3, #4]
    12f0:	e59f2068 	ldr	r2, [pc, #104]	; 1360 <malloc+0x160>
    12f4:	e51b300c 	ldr	r3, [fp, #-12]
    12f8:	e5823000 	str	r3, [r2]
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e2833008 	add	r3, r3, #8
    1304:	ea000012 	b	1354 <malloc+0x154>
    1308:	e59f3050 	ldr	r3, [pc, #80]	; 1360 <malloc+0x160>
    130c:	e5933000 	ldr	r3, [r3]
    1310:	e51b2008 	ldr	r2, [fp, #-8]
    1314:	e1520003 	cmp	r2, r3
    1318:	1a000007 	bne	133c <malloc+0x13c>
    131c:	e51b0010 	ldr	r0, [fp, #-16]
    1320:	ebffff94 	bl	1178 <morecore>
    1324:	e50b0008 	str	r0, [fp, #-8]
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e3530000 	cmp	r3, #0
    1330:	1a000001 	bne	133c <malloc+0x13c>
    1334:	e3a03000 	mov	r3, #0
    1338:	ea000005 	b	1354 <malloc+0x154>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e50b300c 	str	r3, [fp, #-12]
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e50b3008 	str	r3, [fp, #-8]
    1350:	eaffffc8 	b	1278 <malloc+0x78>
    1354:	e1a00003 	mov	r0, r3
    1358:	e24bd004 	sub	sp, fp, #4
    135c:	e8bd8800 	pop	{fp, pc}
    1360:	000015ec 	.word	0x000015ec
    1364:	000015e4 	.word	0x000015e4

00001368 <__udivsi3>:
    1368:	e2512001 	subs	r2, r1, #1
    136c:	012fff1e 	bxeq	lr
    1370:	3a000036 	bcc	1450 <__udivsi3+0xe8>
    1374:	e1500001 	cmp	r0, r1
    1378:	9a000022 	bls	1408 <__udivsi3+0xa0>
    137c:	e1110002 	tst	r1, r2
    1380:	0a000023 	beq	1414 <__udivsi3+0xac>
    1384:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    1388:	01a01181 	lsleq	r1, r1, #3
    138c:	03a03008 	moveq	r3, #8
    1390:	13a03001 	movne	r3, #1
    1394:	e3510201 	cmp	r1, #268435456	; 0x10000000
    1398:	31510000 	cmpcc	r1, r0
    139c:	31a01201 	lslcc	r1, r1, #4
    13a0:	31a03203 	lslcc	r3, r3, #4
    13a4:	3afffffa 	bcc	1394 <__udivsi3+0x2c>
    13a8:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    13ac:	31510000 	cmpcc	r1, r0
    13b0:	31a01081 	lslcc	r1, r1, #1
    13b4:	31a03083 	lslcc	r3, r3, #1
    13b8:	3afffffa 	bcc	13a8 <__udivsi3+0x40>
    13bc:	e3a02000 	mov	r2, #0
    13c0:	e1500001 	cmp	r0, r1
    13c4:	20400001 	subcs	r0, r0, r1
    13c8:	21822003 	orrcs	r2, r2, r3
    13cc:	e15000a1 	cmp	r0, r1, lsr #1
    13d0:	204000a1 	subcs	r0, r0, r1, lsr #1
    13d4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    13d8:	e1500121 	cmp	r0, r1, lsr #2
    13dc:	20400121 	subcs	r0, r0, r1, lsr #2
    13e0:	21822123 	orrcs	r2, r2, r3, lsr #2
    13e4:	e15001a1 	cmp	r0, r1, lsr #3
    13e8:	204001a1 	subcs	r0, r0, r1, lsr #3
    13ec:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13f0:	e3500000 	cmp	r0, #0
    13f4:	11b03223 	lsrsne	r3, r3, #4
    13f8:	11a01221 	lsrne	r1, r1, #4
    13fc:	1affffef 	bne	13c0 <__udivsi3+0x58>
    1400:	e1a00002 	mov	r0, r2
    1404:	e12fff1e 	bx	lr
    1408:	03a00001 	moveq	r0, #1
    140c:	13a00000 	movne	r0, #0
    1410:	e12fff1e 	bx	lr
    1414:	e3510801 	cmp	r1, #65536	; 0x10000
    1418:	21a01821 	lsrcs	r1, r1, #16
    141c:	23a02010 	movcs	r2, #16
    1420:	33a02000 	movcc	r2, #0
    1424:	e3510c01 	cmp	r1, #256	; 0x100
    1428:	21a01421 	lsrcs	r1, r1, #8
    142c:	22822008 	addcs	r2, r2, #8
    1430:	e3510010 	cmp	r1, #16
    1434:	21a01221 	lsrcs	r1, r1, #4
    1438:	22822004 	addcs	r2, r2, #4
    143c:	e3510004 	cmp	r1, #4
    1440:	82822003 	addhi	r2, r2, #3
    1444:	908220a1 	addls	r2, r2, r1, lsr #1
    1448:	e1a00230 	lsr	r0, r0, r2
    144c:	e12fff1e 	bx	lr
    1450:	e3500000 	cmp	r0, #0
    1454:	13e00000 	mvnne	r0, #0
    1458:	ea000007 	b	147c <__aeabi_idiv0>

0000145c <__aeabi_uidivmod>:
    145c:	e3510000 	cmp	r1, #0
    1460:	0afffffa 	beq	1450 <__udivsi3+0xe8>
    1464:	e92d4003 	push	{r0, r1, lr}
    1468:	ebffffbe 	bl	1368 <__udivsi3>
    146c:	e8bd4006 	pop	{r1, r2, lr}
    1470:	e0030092 	mul	r3, r2, r0
    1474:	e0411003 	sub	r1, r1, r3
    1478:	e12fff1e 	bx	lr

0000147c <__aeabi_idiv0>:
    147c:	e12fff1e 	bx	lr
