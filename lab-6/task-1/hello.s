
hello:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	add	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	2c4d                	jal	10350 <__call_exitprocs>
   100a0:	0301a503          	lw	a0,48(gp) # 13cd0 <_global_impure_ptr>
   100a4:	5d5c                	lw	a5,60(a0)
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	1fc020ef          	jal	122a8 <_exit>

000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c789                	beqz	a5,100be <register_fini+0xe>
   100b6:	6541                	lui	a0,0x10
   100b8:	69450513          	add	a0,a0,1684 # 10694 <__libc_fini_array>
   100bc:	ae89                	j	1040e <atexit>
   100be:	8082                	ret

000100c0 <_start>:
   100c0:	00004197          	auipc	gp,0x4
   100c4:	be018193          	add	gp,gp,-1056 # 13ca0 <__global_pointer$>
   100c8:	04418513          	add	a0,gp,68 # 13ce4 <__malloc_max_total_mem>
   100cc:	09c18613          	add	a2,gp,156 # 13d3c <__BSS_END__>
   100d0:	8e09                	sub	a2,a2,a0
   100d2:	4581                	li	a1,0
   100d4:	28c5                	jal	101c4 <memset>
   100d6:	00000517          	auipc	a0,0x0
   100da:	33850513          	add	a0,a0,824 # 1040e <atexit>
   100de:	c511                	beqz	a0,100ea <_start+0x2a>
   100e0:	00000517          	auipc	a0,0x0
   100e4:	5b450513          	add	a0,a0,1460 # 10694 <__libc_fini_array>
   100e8:	261d                	jal	1040e <atexit>
   100ea:	2885                	jal	1015a <__libc_init_array>
   100ec:	4502                	lw	a0,0(sp)
   100ee:	004c                	add	a1,sp,4
   100f0:	4601                	li	a2,0
   100f2:	20b1                	jal	1013e <main>
   100f4:	b745                	j	10094 <exit>

000100f6 <__do_global_dtors_aux>:
   100f6:	1141                	add	sp,sp,-16
   100f8:	c422                	sw	s0,8(sp)
   100fa:	0581c783          	lbu	a5,88(gp) # 13cf8 <completed.1>
   100fe:	c606                	sw	ra,12(sp)
   10100:	ef91                	bnez	a5,1011c <__do_global_dtors_aux+0x26>
   10102:	00000793          	li	a5,0
   10106:	cb81                	beqz	a5,10116 <__do_global_dtors_aux+0x20>
   10108:	654d                	lui	a0,0x13
   1010a:	48c50513          	add	a0,a0,1164 # 1348c <__EH_FRAME_BEGIN__>
   1010e:	00000097          	auipc	ra,0x0
   10112:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10116:	4785                	li	a5,1
   10118:	04f18c23          	sb	a5,88(gp) # 13cf8 <completed.1>
   1011c:	40b2                	lw	ra,12(sp)
   1011e:	4422                	lw	s0,8(sp)
   10120:	0141                	add	sp,sp,16
   10122:	8082                	ret

00010124 <frame_dummy>:
   10124:	00000793          	li	a5,0
   10128:	cb91                	beqz	a5,1013c <frame_dummy+0x18>
   1012a:	654d                	lui	a0,0x13
   1012c:	05c18593          	add	a1,gp,92 # 13cfc <object.0>
   10130:	48c50513          	add	a0,a0,1164 # 1348c <__EH_FRAME_BEGIN__>
   10134:	00000317          	auipc	t1,0x0
   10138:	00000067          	jr	zero # 0 <exit-0x10094>
   1013c:	8082                	ret

0001013e <main>:
   1013e:	1141                	add	sp,sp,-16
   10140:	c606                	sw	ra,12(sp)
   10142:	c422                	sw	s0,8(sp)
   10144:	0800                	add	s0,sp,16
   10146:	67c9                	lui	a5,0x12
   10148:	47c78513          	add	a0,a5,1148 # 1247c <__errno+0x8>
   1014c:	2a61                	jal	102e4 <puts>
   1014e:	4781                	li	a5,0
   10150:	853e                	mv	a0,a5
   10152:	40b2                	lw	ra,12(sp)
   10154:	4422                	lw	s0,8(sp)
   10156:	0141                	add	sp,sp,16
   10158:	8082                	ret

0001015a <__libc_init_array>:
   1015a:	1141                	add	sp,sp,-16
   1015c:	c422                	sw	s0,8(sp)
   1015e:	67cd                	lui	a5,0x13
   10160:	644d                	lui	s0,0x13
   10162:	c04a                	sw	s2,0(sp)
   10164:	49078793          	add	a5,a5,1168 # 13490 <__init_array_start>
   10168:	49040713          	add	a4,s0,1168 # 13490 <__init_array_start>
   1016c:	c606                	sw	ra,12(sp)
   1016e:	c226                	sw	s1,4(sp)
   10170:	40e78933          	sub	s2,a5,a4
   10174:	00e78d63          	beq	a5,a4,1018e <__libc_init_array+0x34>
   10178:	40295913          	sra	s2,s2,0x2
   1017c:	49040413          	add	s0,s0,1168
   10180:	4481                	li	s1,0
   10182:	401c                	lw	a5,0(s0)
   10184:	0485                	add	s1,s1,1
   10186:	0411                	add	s0,s0,4
   10188:	9782                	jalr	a5
   1018a:	ff24ece3          	bltu	s1,s2,10182 <__libc_init_array+0x28>
   1018e:	644d                	lui	s0,0x13
   10190:	67cd                	lui	a5,0x13
   10192:	49878793          	add	a5,a5,1176 # 13498 <__do_global_dtors_aux_fini_array_entry>
   10196:	49040713          	add	a4,s0,1168 # 13490 <__init_array_start>
   1019a:	40e78933          	sub	s2,a5,a4
   1019e:	40295913          	sra	s2,s2,0x2
   101a2:	00e78b63          	beq	a5,a4,101b8 <__libc_init_array+0x5e>
   101a6:	49040413          	add	s0,s0,1168
   101aa:	4481                	li	s1,0
   101ac:	401c                	lw	a5,0(s0)
   101ae:	0485                	add	s1,s1,1
   101b0:	0411                	add	s0,s0,4
   101b2:	9782                	jalr	a5
   101b4:	ff24ece3          	bltu	s1,s2,101ac <__libc_init_array+0x52>
   101b8:	40b2                	lw	ra,12(sp)
   101ba:	4422                	lw	s0,8(sp)
   101bc:	4492                	lw	s1,4(sp)
   101be:	4902                	lw	s2,0(sp)
   101c0:	0141                	add	sp,sp,16
   101c2:	8082                	ret

000101c4 <memset>:
   101c4:	433d                	li	t1,15
   101c6:	872a                	mv	a4,a0
   101c8:	02c37363          	bgeu	t1,a2,101ee <memset+0x2a>
   101cc:	00f77793          	and	a5,a4,15
   101d0:	efbd                	bnez	a5,1024e <memset+0x8a>
   101d2:	e5ad                	bnez	a1,1023c <memset+0x78>
   101d4:	ff067693          	and	a3,a2,-16
   101d8:	8a3d                	and	a2,a2,15
   101da:	96ba                	add	a3,a3,a4
   101dc:	c30c                	sw	a1,0(a4)
   101de:	c34c                	sw	a1,4(a4)
   101e0:	c70c                	sw	a1,8(a4)
   101e2:	c74c                	sw	a1,12(a4)
   101e4:	0741                	add	a4,a4,16
   101e6:	fed76be3          	bltu	a4,a3,101dc <memset+0x18>
   101ea:	e211                	bnez	a2,101ee <memset+0x2a>
   101ec:	8082                	ret
   101ee:	40c306b3          	sub	a3,t1,a2
   101f2:	068a                	sll	a3,a3,0x2
   101f4:	00000297          	auipc	t0,0x0
   101f8:	9696                	add	a3,a3,t0
   101fa:	00a68067          	jr	10(a3)
   101fe:	00b70723          	sb	a1,14(a4)
   10202:	00b706a3          	sb	a1,13(a4)
   10206:	00b70623          	sb	a1,12(a4)
   1020a:	00b705a3          	sb	a1,11(a4)
   1020e:	00b70523          	sb	a1,10(a4)
   10212:	00b704a3          	sb	a1,9(a4)
   10216:	00b70423          	sb	a1,8(a4)
   1021a:	00b703a3          	sb	a1,7(a4)
   1021e:	00b70323          	sb	a1,6(a4)
   10222:	00b702a3          	sb	a1,5(a4)
   10226:	00b70223          	sb	a1,4(a4)
   1022a:	00b701a3          	sb	a1,3(a4)
   1022e:	00b70123          	sb	a1,2(a4)
   10232:	00b700a3          	sb	a1,1(a4)
   10236:	00b70023          	sb	a1,0(a4)
   1023a:	8082                	ret
   1023c:	0ff5f593          	zext.b	a1,a1
   10240:	00859693          	sll	a3,a1,0x8
   10244:	8dd5                	or	a1,a1,a3
   10246:	01059693          	sll	a3,a1,0x10
   1024a:	8dd5                	or	a1,a1,a3
   1024c:	b761                	j	101d4 <memset+0x10>
   1024e:	00279693          	sll	a3,a5,0x2
   10252:	00000297          	auipc	t0,0x0
   10256:	9696                	add	a3,a3,t0
   10258:	8286                	mv	t0,ra
   1025a:	fa8680e7          	jalr	-88(a3)
   1025e:	8096                	mv	ra,t0
   10260:	17c1                	add	a5,a5,-16
   10262:	8f1d                	sub	a4,a4,a5
   10264:	963e                	add	a2,a2,a5
   10266:	f8c374e3          	bgeu	t1,a2,101ee <memset+0x2a>
   1026a:	b7a5                	j	101d2 <memset+0xe>

0001026c <_puts_r>:
   1026c:	7139                	add	sp,sp,-64
   1026e:	dc22                	sw	s0,56(sp)
   10270:	842a                	mv	s0,a0
   10272:	852e                	mv	a0,a1
   10274:	da26                	sw	s1,52(sp)
   10276:	de06                	sw	ra,60(sp)
   10278:	84ae                	mv	s1,a1
   1027a:	288d                	jal	102ec <strlen>
   1027c:	67c9                	lui	a5,0x12
   1027e:	48878793          	add	a5,a5,1160 # 12488 <__errno+0x14>
   10282:	d43e                	sw	a5,40(sp)
   10284:	4785                	li	a5,1
   10286:	d63e                	sw	a5,44(sp)
   10288:	5c18                	lw	a4,56(s0)
   1028a:	101c                	add	a5,sp,32
   1028c:	00150693          	add	a3,a0,1
   10290:	ca3e                	sw	a5,20(sp)
   10292:	4789                	li	a5,2
   10294:	d026                	sw	s1,32(sp)
   10296:	d22a                	sw	a0,36(sp)
   10298:	ce36                	sw	a3,28(sp)
   1029a:	cc3e                	sw	a5,24(sp)
   1029c:	440c                	lw	a1,8(s0)
   1029e:	cf15                	beqz	a4,102da <_puts_r+0x6e>
   102a0:	00c59783          	lh	a5,12(a1)
   102a4:	01279713          	sll	a4,a5,0x12
   102a8:	00074b63          	bltz	a4,102be <_puts_r+0x52>
   102ac:	51f8                	lw	a4,100(a1)
   102ae:	6689                	lui	a3,0x2
   102b0:	8fd5                	or	a5,a5,a3
   102b2:	76f9                	lui	a3,0xffffe
   102b4:	16fd                	add	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffea2c3>
   102b6:	8f75                	and	a4,a4,a3
   102b8:	00f59623          	sh	a5,12(a1)
   102bc:	d1f8                	sw	a4,100(a1)
   102be:	0850                	add	a2,sp,20
   102c0:	8522                	mv	a0,s0
   102c2:	2119                	jal	106c8 <__sfvwrite_r>
   102c4:	50f2                	lw	ra,60(sp)
   102c6:	5462                	lw	s0,56(sp)
   102c8:	00153513          	seqz	a0,a0
   102cc:	40a00533          	neg	a0,a0
   102d0:	892d                	and	a0,a0,11
   102d2:	54d2                	lw	s1,52(sp)
   102d4:	157d                	add	a0,a0,-1
   102d6:	6121                	add	sp,sp,64
   102d8:	8082                	ret
   102da:	8522                	mv	a0,s0
   102dc:	c62e                	sw	a1,12(sp)
   102de:	2679                	jal	1066c <__sinit>
   102e0:	45b2                	lw	a1,12(sp)
   102e2:	bf7d                	j	102a0 <_puts_r+0x34>

000102e4 <puts>:
   102e4:	85aa                	mv	a1,a0
   102e6:	0381a503          	lw	a0,56(gp) # 13cd8 <_impure_ptr>
   102ea:	b749                	j	1026c <_puts_r>

000102ec <strlen>:
   102ec:	00357793          	and	a5,a0,3
   102f0:	872a                	mv	a4,a0
   102f2:	ef9d                	bnez	a5,10330 <strlen+0x44>
   102f4:	7f7f86b7          	lui	a3,0x7f7f8
   102f8:	f7f68693          	add	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4243>
   102fc:	55fd                	li	a1,-1
   102fe:	4310                	lw	a2,0(a4)
   10300:	0711                	add	a4,a4,4
   10302:	00d677b3          	and	a5,a2,a3
   10306:	97b6                	add	a5,a5,a3
   10308:	8fd1                	or	a5,a5,a2
   1030a:	8fd5                	or	a5,a5,a3
   1030c:	feb789e3          	beq	a5,a1,102fe <strlen+0x12>
   10310:	ffc74683          	lbu	a3,-4(a4)
   10314:	40a707b3          	sub	a5,a4,a0
   10318:	ca8d                	beqz	a3,1034a <strlen+0x5e>
   1031a:	ffd74683          	lbu	a3,-3(a4)
   1031e:	c29d                	beqz	a3,10344 <strlen+0x58>
   10320:	ffe74503          	lbu	a0,-2(a4)
   10324:	00a03533          	snez	a0,a0
   10328:	953e                	add	a0,a0,a5
   1032a:	1579                	add	a0,a0,-2
   1032c:	8082                	ret
   1032e:	d2f9                	beqz	a3,102f4 <strlen+0x8>
   10330:	00074783          	lbu	a5,0(a4)
   10334:	0705                	add	a4,a4,1
   10336:	00377693          	and	a3,a4,3
   1033a:	fbf5                	bnez	a5,1032e <strlen+0x42>
   1033c:	8f09                	sub	a4,a4,a0
   1033e:	fff70513          	add	a0,a4,-1
   10342:	8082                	ret
   10344:	ffd78513          	add	a0,a5,-3
   10348:	8082                	ret
   1034a:	ffc78513          	add	a0,a5,-4
   1034e:	8082                	ret

00010350 <__call_exitprocs>:
   10350:	7179                	add	sp,sp,-48
   10352:	cc52                	sw	s4,24(sp)
   10354:	0301aa03          	lw	s4,48(gp) # 13cd0 <_global_impure_ptr>
   10358:	d04a                	sw	s2,32(sp)
   1035a:	d606                	sw	ra,44(sp)
   1035c:	148a2903          	lw	s2,328(s4)
   10360:	d422                	sw	s0,40(sp)
   10362:	d226                	sw	s1,36(sp)
   10364:	ce4e                	sw	s3,28(sp)
   10366:	ca56                	sw	s5,20(sp)
   10368:	c85a                	sw	s6,16(sp)
   1036a:	c65e                	sw	s7,12(sp)
   1036c:	c462                	sw	s8,8(sp)
   1036e:	02090863          	beqz	s2,1039e <__call_exitprocs+0x4e>
   10372:	8b2a                	mv	s6,a0
   10374:	8bae                	mv	s7,a1
   10376:	4a85                	li	s5,1
   10378:	59fd                	li	s3,-1
   1037a:	00492483          	lw	s1,4(s2)
   1037e:	fff48413          	add	s0,s1,-1
   10382:	00044e63          	bltz	s0,1039e <__call_exitprocs+0x4e>
   10386:	048a                	sll	s1,s1,0x2
   10388:	94ca                	add	s1,s1,s2
   1038a:	020b8663          	beqz	s7,103b6 <__call_exitprocs+0x66>
   1038e:	1044a783          	lw	a5,260(s1)
   10392:	03778263          	beq	a5,s7,103b6 <__call_exitprocs+0x66>
   10396:	147d                	add	s0,s0,-1
   10398:	14f1                	add	s1,s1,-4
   1039a:	ff3418e3          	bne	s0,s3,1038a <__call_exitprocs+0x3a>
   1039e:	50b2                	lw	ra,44(sp)
   103a0:	5422                	lw	s0,40(sp)
   103a2:	5492                	lw	s1,36(sp)
   103a4:	5902                	lw	s2,32(sp)
   103a6:	49f2                	lw	s3,28(sp)
   103a8:	4a62                	lw	s4,24(sp)
   103aa:	4ad2                	lw	s5,20(sp)
   103ac:	4b42                	lw	s6,16(sp)
   103ae:	4bb2                	lw	s7,12(sp)
   103b0:	4c22                	lw	s8,8(sp)
   103b2:	6145                	add	sp,sp,48
   103b4:	8082                	ret
   103b6:	00492783          	lw	a5,4(s2)
   103ba:	40d4                	lw	a3,4(s1)
   103bc:	17fd                	add	a5,a5,-1
   103be:	04878263          	beq	a5,s0,10402 <__call_exitprocs+0xb2>
   103c2:	0004a223          	sw	zero,4(s1)
   103c6:	dae1                	beqz	a3,10396 <__call_exitprocs+0x46>
   103c8:	18892783          	lw	a5,392(s2)
   103cc:	008a9733          	sll	a4,s5,s0
   103d0:	00492c03          	lw	s8,4(s2)
   103d4:	8ff9                	and	a5,a5,a4
   103d6:	ef89                	bnez	a5,103f0 <__call_exitprocs+0xa0>
   103d8:	9682                	jalr	a3
   103da:	00492703          	lw	a4,4(s2)
   103de:	148a2783          	lw	a5,328(s4)
   103e2:	01871463          	bne	a4,s8,103ea <__call_exitprocs+0x9a>
   103e6:	fb2788e3          	beq	a5,s2,10396 <__call_exitprocs+0x46>
   103ea:	dbd5                	beqz	a5,1039e <__call_exitprocs+0x4e>
   103ec:	893e                	mv	s2,a5
   103ee:	b771                	j	1037a <__call_exitprocs+0x2a>
   103f0:	18c92783          	lw	a5,396(s2)
   103f4:	0844a583          	lw	a1,132(s1)
   103f8:	8f7d                	and	a4,a4,a5
   103fa:	e719                	bnez	a4,10408 <__call_exitprocs+0xb8>
   103fc:	855a                	mv	a0,s6
   103fe:	9682                	jalr	a3
   10400:	bfe9                	j	103da <__call_exitprocs+0x8a>
   10402:	00892223          	sw	s0,4(s2)
   10406:	b7c1                	j	103c6 <__call_exitprocs+0x76>
   10408:	852e                	mv	a0,a1
   1040a:	9682                	jalr	a3
   1040c:	b7f9                	j	103da <__call_exitprocs+0x8a>

0001040e <atexit>:
   1040e:	85aa                	mv	a1,a0
   10410:	4681                	li	a3,0
   10412:	4601                	li	a2,0
   10414:	4501                	li	a0,0
   10416:	4be0106f          	j	118d4 <__register_exitproc>

0001041a <__fp_lock>:
   1041a:	4501                	li	a0,0
   1041c:	8082                	ret

0001041e <_cleanup_r>:
   1041e:	65c9                	lui	a1,0x12
   10420:	97658593          	add	a1,a1,-1674 # 11976 <_fclose_r>
   10424:	a535                	j	10a50 <_fwalk_reent>

00010426 <__fp_unlock>:
   10426:	4501                	li	a0,0
   10428:	8082                	ret

0001042a <__sinit.part.0>:
   1042a:	1101                	add	sp,sp,-32
   1042c:	67c1                	lui	a5,0x10
   1042e:	ce06                	sw	ra,28(sp)
   10430:	cc22                	sw	s0,24(sp)
   10432:	ca26                	sw	s1,20(sp)
   10434:	c84a                	sw	s2,16(sp)
   10436:	c64e                	sw	s3,12(sp)
   10438:	c452                	sw	s4,8(sp)
   1043a:	c256                	sw	s5,4(sp)
   1043c:	c05a                	sw	s6,0(sp)
   1043e:	4140                	lw	s0,4(a0)
   10440:	41e78793          	add	a5,a5,1054 # 1041e <_cleanup_r>
   10444:	dd5c                	sw	a5,60(a0)
   10446:	2ec50713          	add	a4,a0,748
   1044a:	478d                	li	a5,3
   1044c:	2ee52423          	sw	a4,744(a0)
   10450:	2ef52223          	sw	a5,740(a0)
   10454:	2e052023          	sw	zero,736(a0)
   10458:	4791                	li	a5,4
   1045a:	892a                	mv	s2,a0
   1045c:	c45c                	sw	a5,12(s0)
   1045e:	4621                	li	a2,8
   10460:	4581                	li	a1,0
   10462:	00042023          	sw	zero,0(s0)
   10466:	00042223          	sw	zero,4(s0)
   1046a:	00042423          	sw	zero,8(s0)
   1046e:	06042223          	sw	zero,100(s0)
   10472:	00042823          	sw	zero,16(s0)
   10476:	00042a23          	sw	zero,20(s0)
   1047a:	00042c23          	sw	zero,24(s0)
   1047e:	05c40513          	add	a0,s0,92
   10482:	3389                	jal	101c4 <memset>
   10484:	6b45                	lui	s6,0x11
   10486:	00892483          	lw	s1,8(s2)
   1048a:	6ac5                	lui	s5,0x11
   1048c:	6a45                	lui	s4,0x11
   1048e:	69c5                	lui	s3,0x11
   10490:	6e2b0b13          	add	s6,s6,1762 # 116e2 <__sread>
   10494:	71ea8a93          	add	s5,s5,1822 # 1171e <__swrite>
   10498:	770a0a13          	add	s4,s4,1904 # 11770 <__sseek>
   1049c:	7ba98993          	add	s3,s3,1978 # 117ba <__sclose>
   104a0:	67c1                	lui	a5,0x10
   104a2:	03642023          	sw	s6,32(s0)
   104a6:	03542223          	sw	s5,36(s0)
   104aa:	03442423          	sw	s4,40(s0)
   104ae:	03342623          	sw	s3,44(s0)
   104b2:	cc40                	sw	s0,28(s0)
   104b4:	07a5                	add	a5,a5,9 # 10009 <exit-0x8b>
   104b6:	c4dc                	sw	a5,12(s1)
   104b8:	4621                	li	a2,8
   104ba:	4581                	li	a1,0
   104bc:	0004a023          	sw	zero,0(s1)
   104c0:	0004a223          	sw	zero,4(s1)
   104c4:	0004a423          	sw	zero,8(s1)
   104c8:	0604a223          	sw	zero,100(s1)
   104cc:	0004a823          	sw	zero,16(s1)
   104d0:	0004aa23          	sw	zero,20(s1)
   104d4:	0004ac23          	sw	zero,24(s1)
   104d8:	05c48513          	add	a0,s1,92
   104dc:	31e5                	jal	101c4 <memset>
   104de:	00c92403          	lw	s0,12(s2)
   104e2:	000207b7          	lui	a5,0x20
   104e6:	0364a023          	sw	s6,32(s1)
   104ea:	0354a223          	sw	s5,36(s1)
   104ee:	0344a423          	sw	s4,40(s1)
   104f2:	0334a623          	sw	s3,44(s1)
   104f6:	ccc4                	sw	s1,28(s1)
   104f8:	07c9                	add	a5,a5,18 # 20012 <__BSS_END__+0xc2d6>
   104fa:	c45c                	sw	a5,12(s0)
   104fc:	00042023          	sw	zero,0(s0)
   10500:	00042223          	sw	zero,4(s0)
   10504:	00042423          	sw	zero,8(s0)
   10508:	06042223          	sw	zero,100(s0)
   1050c:	00042823          	sw	zero,16(s0)
   10510:	00042a23          	sw	zero,20(s0)
   10514:	00042c23          	sw	zero,24(s0)
   10518:	05c40513          	add	a0,s0,92
   1051c:	4621                	li	a2,8
   1051e:	4581                	li	a1,0
   10520:	3155                	jal	101c4 <memset>
   10522:	40f2                	lw	ra,28(sp)
   10524:	03642023          	sw	s6,32(s0)
   10528:	03542223          	sw	s5,36(s0)
   1052c:	03442423          	sw	s4,40(s0)
   10530:	03342623          	sw	s3,44(s0)
   10534:	cc40                	sw	s0,28(s0)
   10536:	4462                	lw	s0,24(sp)
   10538:	4785                	li	a5,1
   1053a:	02f92c23          	sw	a5,56(s2)
   1053e:	44d2                	lw	s1,20(sp)
   10540:	4942                	lw	s2,16(sp)
   10542:	49b2                	lw	s3,12(sp)
   10544:	4a22                	lw	s4,8(sp)
   10546:	4a92                	lw	s5,4(sp)
   10548:	4b02                	lw	s6,0(sp)
   1054a:	6105                	add	sp,sp,32
   1054c:	8082                	ret

0001054e <__sfmoreglue>:
   1054e:	1141                	add	sp,sp,-16
   10550:	c226                	sw	s1,4(sp)
   10552:	06800793          	li	a5,104
   10556:	fff58493          	add	s1,a1,-1
   1055a:	02f484b3          	mul	s1,s1,a5
   1055e:	c04a                	sw	s2,0(sp)
   10560:	892e                	mv	s2,a1
   10562:	c422                	sw	s0,8(sp)
   10564:	c606                	sw	ra,12(sp)
   10566:	07448593          	add	a1,s1,116
   1056a:	2ba9                	jal	10ac4 <_malloc_r>
   1056c:	842a                	mv	s0,a0
   1056e:	c919                	beqz	a0,10584 <__sfmoreglue+0x36>
   10570:	0531                	add	a0,a0,12
   10572:	00042023          	sw	zero,0(s0)
   10576:	01242223          	sw	s2,4(s0)
   1057a:	c408                	sw	a0,8(s0)
   1057c:	06848613          	add	a2,s1,104
   10580:	4581                	li	a1,0
   10582:	3189                	jal	101c4 <memset>
   10584:	40b2                	lw	ra,12(sp)
   10586:	8522                	mv	a0,s0
   10588:	4422                	lw	s0,8(sp)
   1058a:	4492                	lw	s1,4(sp)
   1058c:	4902                	lw	s2,0(sp)
   1058e:	0141                	add	sp,sp,16
   10590:	8082                	ret

00010592 <__sfp>:
   10592:	1101                	add	sp,sp,-32
   10594:	c84a                	sw	s2,16(sp)
   10596:	0301a903          	lw	s2,48(gp) # 13cd0 <_global_impure_ptr>
   1059a:	c64e                	sw	s3,12(sp)
   1059c:	ce06                	sw	ra,28(sp)
   1059e:	03892783          	lw	a5,56(s2)
   105a2:	cc22                	sw	s0,24(sp)
   105a4:	ca26                	sw	s1,20(sp)
   105a6:	89aa                	mv	s3,a0
   105a8:	cfbd                	beqz	a5,10626 <__sfp+0x94>
   105aa:	2e090913          	add	s2,s2,736
   105ae:	54fd                	li	s1,-1
   105b0:	00492783          	lw	a5,4(s2)
   105b4:	00892403          	lw	s0,8(s2)
   105b8:	17fd                	add	a5,a5,-1
   105ba:	0007d763          	bgez	a5,105c8 <__sfp+0x36>
   105be:	a8b9                	j	1061c <__sfp+0x8a>
   105c0:	06840413          	add	s0,s0,104
   105c4:	04978c63          	beq	a5,s1,1061c <__sfp+0x8a>
   105c8:	00c41703          	lh	a4,12(s0)
   105cc:	17fd                	add	a5,a5,-1
   105ce:	fb6d                	bnez	a4,105c0 <__sfp+0x2e>
   105d0:	77c1                	lui	a5,0xffff0
   105d2:	0785                	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc2c5>
   105d4:	c45c                	sw	a5,12(s0)
   105d6:	06042223          	sw	zero,100(s0)
   105da:	00042023          	sw	zero,0(s0)
   105de:	00042423          	sw	zero,8(s0)
   105e2:	00042223          	sw	zero,4(s0)
   105e6:	00042823          	sw	zero,16(s0)
   105ea:	00042a23          	sw	zero,20(s0)
   105ee:	00042c23          	sw	zero,24(s0)
   105f2:	4621                	li	a2,8
   105f4:	4581                	li	a1,0
   105f6:	05c40513          	add	a0,s0,92
   105fa:	36e9                	jal	101c4 <memset>
   105fc:	02042823          	sw	zero,48(s0)
   10600:	02042a23          	sw	zero,52(s0)
   10604:	04042223          	sw	zero,68(s0)
   10608:	04042423          	sw	zero,72(s0)
   1060c:	40f2                	lw	ra,28(sp)
   1060e:	8522                	mv	a0,s0
   10610:	4462                	lw	s0,24(sp)
   10612:	44d2                	lw	s1,20(sp)
   10614:	4942                	lw	s2,16(sp)
   10616:	49b2                	lw	s3,12(sp)
   10618:	6105                	add	sp,sp,32
   1061a:	8082                	ret
   1061c:	00092403          	lw	s0,0(s2)
   10620:	c411                	beqz	s0,1062c <__sfp+0x9a>
   10622:	8922                	mv	s2,s0
   10624:	b771                	j	105b0 <__sfp+0x1e>
   10626:	854a                	mv	a0,s2
   10628:	3509                	jal	1042a <__sinit.part.0>
   1062a:	b741                	j	105aa <__sfp+0x18>
   1062c:	1ac00593          	li	a1,428
   10630:	854e                	mv	a0,s3
   10632:	2949                	jal	10ac4 <_malloc_r>
   10634:	842a                	mv	s0,a0
   10636:	cd19                	beqz	a0,10654 <__sfp+0xc2>
   10638:	0531                	add	a0,a0,12
   1063a:	4791                	li	a5,4
   1063c:	00042023          	sw	zero,0(s0)
   10640:	c05c                	sw	a5,4(s0)
   10642:	c408                	sw	a0,8(s0)
   10644:	1a000613          	li	a2,416
   10648:	4581                	li	a1,0
   1064a:	3ead                	jal	101c4 <memset>
   1064c:	00892023          	sw	s0,0(s2)
   10650:	8922                	mv	s2,s0
   10652:	bfb9                	j	105b0 <__sfp+0x1e>
   10654:	00092023          	sw	zero,0(s2)
   10658:	47b1                	li	a5,12
   1065a:	00f9a023          	sw	a5,0(s3)
   1065e:	b77d                	j	1060c <__sfp+0x7a>

00010660 <_cleanup>:
   10660:	0301a503          	lw	a0,48(gp) # 13cd0 <_global_impure_ptr>
   10664:	65c9                	lui	a1,0x12
   10666:	97658593          	add	a1,a1,-1674 # 11976 <_fclose_r>
   1066a:	a6dd                	j	10a50 <_fwalk_reent>

0001066c <__sinit>:
   1066c:	5d1c                	lw	a5,56(a0)
   1066e:	c391                	beqz	a5,10672 <__sinit+0x6>
   10670:	8082                	ret
   10672:	bb65                	j	1042a <__sinit.part.0>

00010674 <__sfp_lock_acquire>:
   10674:	8082                	ret

00010676 <__sfp_lock_release>:
   10676:	8082                	ret

00010678 <__sinit_lock_acquire>:
   10678:	8082                	ret

0001067a <__sinit_lock_release>:
   1067a:	8082                	ret

0001067c <__fp_lock_all>:
   1067c:	0381a503          	lw	a0,56(gp) # 13cd8 <_impure_ptr>
   10680:	65c1                	lui	a1,0x10
   10682:	41a58593          	add	a1,a1,1050 # 1041a <__fp_lock>
   10686:	aeb9                	j	109e4 <_fwalk>

00010688 <__fp_unlock_all>:
   10688:	0381a503          	lw	a0,56(gp) # 13cd8 <_impure_ptr>
   1068c:	65c1                	lui	a1,0x10
   1068e:	42658593          	add	a1,a1,1062 # 10426 <__fp_unlock>
   10692:	ae89                	j	109e4 <_fwalk>

00010694 <__libc_fini_array>:
   10694:	1141                	add	sp,sp,-16
   10696:	c422                	sw	s0,8(sp)
   10698:	67cd                	lui	a5,0x13
   1069a:	644d                	lui	s0,0x13
   1069c:	49878793          	add	a5,a5,1176 # 13498 <__do_global_dtors_aux_fini_array_entry>
   106a0:	49c40413          	add	s0,s0,1180 # 1349c <__fini_array_end>
   106a4:	8c1d                	sub	s0,s0,a5
   106a6:	c226                	sw	s1,4(sp)
   106a8:	c606                	sw	ra,12(sp)
   106aa:	40245493          	sra	s1,s0,0x2
   106ae:	c881                	beqz	s1,106be <__libc_fini_array+0x2a>
   106b0:	1471                	add	s0,s0,-4
   106b2:	943e                	add	s0,s0,a5
   106b4:	401c                	lw	a5,0(s0)
   106b6:	14fd                	add	s1,s1,-1
   106b8:	1471                	add	s0,s0,-4
   106ba:	9782                	jalr	a5
   106bc:	fce5                	bnez	s1,106b4 <__libc_fini_array+0x20>
   106be:	40b2                	lw	ra,12(sp)
   106c0:	4422                	lw	s0,8(sp)
   106c2:	4492                	lw	s1,4(sp)
   106c4:	0141                	add	sp,sp,16
   106c6:	8082                	ret

000106c8 <__sfvwrite_r>:
   106c8:	461c                	lw	a5,8(a2)
   106ca:	20078f63          	beqz	a5,108e8 <__sfvwrite_r+0x220>
   106ce:	00c59683          	lh	a3,12(a1)
   106d2:	7179                	add	sp,sp,-48
   106d4:	d422                	sw	s0,40(sp)
   106d6:	cc52                	sw	s4,24(sp)
   106d8:	c85a                	sw	s6,16(sp)
   106da:	d606                	sw	ra,44(sp)
   106dc:	d226                	sw	s1,36(sp)
   106de:	d04a                	sw	s2,32(sp)
   106e0:	ce4e                	sw	s3,28(sp)
   106e2:	ca56                	sw	s5,20(sp)
   106e4:	c65e                	sw	s7,12(sp)
   106e6:	c462                	sw	s8,8(sp)
   106e8:	c266                	sw	s9,4(sp)
   106ea:	0086f793          	and	a5,a3,8
   106ee:	8b32                	mv	s6,a2
   106f0:	8a2a                	mv	s4,a0
   106f2:	842e                	mv	s0,a1
   106f4:	c3ad                	beqz	a5,10756 <__sfvwrite_r+0x8e>
   106f6:	499c                	lw	a5,16(a1)
   106f8:	cfb9                	beqz	a5,10756 <__sfvwrite_r+0x8e>
   106fa:	0026f793          	and	a5,a3,2
   106fe:	000b2483          	lw	s1,0(s6)
   10702:	c7bd                	beqz	a5,10770 <__sfvwrite_r+0xa8>
   10704:	505c                	lw	a5,36(s0)
   10706:	4c4c                	lw	a1,28(s0)
   10708:	80000ab7          	lui	s5,0x80000
   1070c:	4981                	li	s3,0
   1070e:	4901                	li	s2,0
   10710:	c00aca93          	xor	s5,s5,-1024
   10714:	864e                	mv	a2,s3
   10716:	8552                	mv	a0,s4
   10718:	02090963          	beqz	s2,1074a <__sfvwrite_r+0x82>
   1071c:	86ca                	mv	a3,s2
   1071e:	012af363          	bgeu	s5,s2,10724 <__sfvwrite_r+0x5c>
   10722:	86d6                	mv	a3,s5
   10724:	9782                	jalr	a5
   10726:	1aa05963          	blez	a0,108d8 <__sfvwrite_r+0x210>
   1072a:	008b2783          	lw	a5,8(s6)
   1072e:	99aa                	add	s3,s3,a0
   10730:	40a90933          	sub	s2,s2,a0
   10734:	8f89                	sub	a5,a5,a0
   10736:	00fb2423          	sw	a5,8(s6)
   1073a:	16078c63          	beqz	a5,108b2 <__sfvwrite_r+0x1ea>
   1073e:	505c                	lw	a5,36(s0)
   10740:	4c4c                	lw	a1,28(s0)
   10742:	864e                	mv	a2,s3
   10744:	8552                	mv	a0,s4
   10746:	fc091be3          	bnez	s2,1071c <__sfvwrite_r+0x54>
   1074a:	0004a983          	lw	s3,0(s1)
   1074e:	0044a903          	lw	s2,4(s1)
   10752:	04a1                	add	s1,s1,8
   10754:	b7c1                	j	10714 <__sfvwrite_r+0x4c>
   10756:	85a2                	mv	a1,s0
   10758:	8552                	mv	a0,s4
   1075a:	0a2010ef          	jal	117fc <__swsetup_r>
   1075e:	18051363          	bnez	a0,108e4 <__sfvwrite_r+0x21c>
   10762:	00c41683          	lh	a3,12(s0)
   10766:	000b2483          	lw	s1,0(s6)
   1076a:	0026f793          	and	a5,a3,2
   1076e:	fbd9                	bnez	a5,10704 <__sfvwrite_r+0x3c>
   10770:	0016f793          	and	a5,a3,1
   10774:	e3e5                	bnez	a5,10854 <__sfvwrite_r+0x18c>
   10776:	401c                	lw	a5,0(s0)
   10778:	4418                	lw	a4,8(s0)
   1077a:	80000ab7          	lui	s5,0x80000
   1077e:	4b81                	li	s7,0
   10780:	4981                	li	s3,0
   10782:	fffaca93          	not	s5,s5
   10786:	853e                	mv	a0,a5
   10788:	8c3a                	mv	s8,a4
   1078a:	0a098f63          	beqz	s3,10848 <__sfvwrite_r+0x180>
   1078e:	2006f613          	and	a2,a3,512
   10792:	18060b63          	beqz	a2,10928 <__sfvwrite_r+0x260>
   10796:	8cba                	mv	s9,a4
   10798:	1ee9ea63          	bltu	s3,a4,1098c <__sfvwrite_r+0x2c4>
   1079c:	4806f713          	and	a4,a3,1152
   107a0:	c73d                	beqz	a4,1080e <__sfvwrite_r+0x146>
   107a2:	4850                	lw	a2,20(s0)
   107a4:	480c                	lw	a1,16(s0)
   107a6:	00161713          	sll	a4,a2,0x1
   107aa:	9732                	add	a4,a4,a2
   107ac:	40b78933          	sub	s2,a5,a1
   107b0:	01f75c13          	srl	s8,a4,0x1f
   107b4:	9c3a                	add	s8,s8,a4
   107b6:	00190793          	add	a5,s2,1
   107ba:	401c5c13          	sra	s8,s8,0x1
   107be:	97ce                	add	a5,a5,s3
   107c0:	8662                	mv	a2,s8
   107c2:	00fc7463          	bgeu	s8,a5,107ca <__sfvwrite_r+0x102>
   107c6:	8c3e                	mv	s8,a5
   107c8:	863e                	mv	a2,a5
   107ca:	4006f693          	and	a3,a3,1024
   107ce:	1c068f63          	beqz	a3,109ac <__sfvwrite_r+0x2e4>
   107d2:	85b2                	mv	a1,a2
   107d4:	8552                	mv	a0,s4
   107d6:	24fd                	jal	10ac4 <_malloc_r>
   107d8:	8caa                	mv	s9,a0
   107da:	1e050f63          	beqz	a0,109d8 <__sfvwrite_r+0x310>
   107de:	480c                	lw	a1,16(s0)
   107e0:	864a                	mv	a2,s2
   107e2:	0f5000ef          	jal	110d6 <memcpy>
   107e6:	00c45783          	lhu	a5,12(s0)
   107ea:	b7f7f793          	and	a5,a5,-1153
   107ee:	0807e793          	or	a5,a5,128
   107f2:	00f41623          	sh	a5,12(s0)
   107f6:	012c8533          	add	a0,s9,s2
   107fa:	412c07b3          	sub	a5,s8,s2
   107fe:	01942823          	sw	s9,16(s0)
   10802:	01842a23          	sw	s8,20(s0)
   10806:	c008                	sw	a0,0(s0)
   10808:	8c4e                	mv	s8,s3
   1080a:	c41c                	sw	a5,8(s0)
   1080c:	8cce                	mv	s9,s3
   1080e:	8666                	mv	a2,s9
   10810:	85de                	mv	a1,s7
   10812:	20b000ef          	jal	1121c <memmove>
   10816:	4418                	lw	a4,8(s0)
   10818:	401c                	lw	a5,0(s0)
   1081a:	894e                	mv	s2,s3
   1081c:	41870733          	sub	a4,a4,s8
   10820:	97e6                	add	a5,a5,s9
   10822:	c418                	sw	a4,8(s0)
   10824:	c01c                	sw	a5,0(s0)
   10826:	4981                	li	s3,0
   10828:	008b2783          	lw	a5,8(s6)
   1082c:	9bca                	add	s7,s7,s2
   1082e:	412787b3          	sub	a5,a5,s2
   10832:	00fb2423          	sw	a5,8(s6)
   10836:	cfb5                	beqz	a5,108b2 <__sfvwrite_r+0x1ea>
   10838:	401c                	lw	a5,0(s0)
   1083a:	4418                	lw	a4,8(s0)
   1083c:	00c41683          	lh	a3,12(s0)
   10840:	853e                	mv	a0,a5
   10842:	8c3a                	mv	s8,a4
   10844:	f40995e3          	bnez	s3,1078e <__sfvwrite_r+0xc6>
   10848:	0004ab83          	lw	s7,0(s1)
   1084c:	0044a983          	lw	s3,4(s1)
   10850:	04a1                	add	s1,s1,8
   10852:	bf15                	j	10786 <__sfvwrite_r+0xbe>
   10854:	4a81                	li	s5,0
   10856:	4501                	li	a0,0
   10858:	4c01                	li	s8,0
   1085a:	4981                	li	s3,0
   1085c:	08098863          	beqz	s3,108ec <__sfvwrite_r+0x224>
   10860:	cd51                	beqz	a0,108fc <__sfvwrite_r+0x234>
   10862:	87d6                	mv	a5,s5
   10864:	8bce                	mv	s7,s3
   10866:	0137f363          	bgeu	a5,s3,1086c <__sfvwrite_r+0x1a4>
   1086a:	8bbe                	mv	s7,a5
   1086c:	4008                	lw	a0,0(s0)
   1086e:	481c                	lw	a5,16(s0)
   10870:	00842903          	lw	s2,8(s0)
   10874:	4854                	lw	a3,20(s0)
   10876:	00a7f563          	bgeu	a5,a0,10880 <__sfvwrite_r+0x1b8>
   1087a:	9936                	add	s2,s2,a3
   1087c:	09794963          	blt	s2,s7,1090e <__sfvwrite_r+0x246>
   10880:	10dbc963          	blt	s7,a3,10992 <__sfvwrite_r+0x2ca>
   10884:	505c                	lw	a5,36(s0)
   10886:	4c4c                	lw	a1,28(s0)
   10888:	8662                	mv	a2,s8
   1088a:	8552                	mv	a0,s4
   1088c:	9782                	jalr	a5
   1088e:	892a                	mv	s2,a0
   10890:	04a05463          	blez	a0,108d8 <__sfvwrite_r+0x210>
   10894:	412a8ab3          	sub	s5,s5,s2
   10898:	4505                	li	a0,1
   1089a:	020a8a63          	beqz	s5,108ce <__sfvwrite_r+0x206>
   1089e:	008b2783          	lw	a5,8(s6)
   108a2:	9c4a                	add	s8,s8,s2
   108a4:	412989b3          	sub	s3,s3,s2
   108a8:	412787b3          	sub	a5,a5,s2
   108ac:	00fb2423          	sw	a5,8(s6)
   108b0:	f7d5                	bnez	a5,1085c <__sfvwrite_r+0x194>
   108b2:	4501                	li	a0,0
   108b4:	50b2                	lw	ra,44(sp)
   108b6:	5422                	lw	s0,40(sp)
   108b8:	5492                	lw	s1,36(sp)
   108ba:	5902                	lw	s2,32(sp)
   108bc:	49f2                	lw	s3,28(sp)
   108be:	4a62                	lw	s4,24(sp)
   108c0:	4ad2                	lw	s5,20(sp)
   108c2:	4b42                	lw	s6,16(sp)
   108c4:	4bb2                	lw	s7,12(sp)
   108c6:	4c22                	lw	s8,8(sp)
   108c8:	4c92                	lw	s9,4(sp)
   108ca:	6145                	add	sp,sp,48
   108cc:	8082                	ret
   108ce:	85a2                	mv	a1,s0
   108d0:	8552                	mv	a0,s4
   108d2:	2d2010ef          	jal	11ba4 <_fflush_r>
   108d6:	d561                	beqz	a0,1089e <__sfvwrite_r+0x1d6>
   108d8:	00c41783          	lh	a5,12(s0)
   108dc:	0407e793          	or	a5,a5,64
   108e0:	00f41623          	sh	a5,12(s0)
   108e4:	557d                	li	a0,-1
   108e6:	b7f9                	j	108b4 <__sfvwrite_r+0x1ec>
   108e8:	4501                	li	a0,0
   108ea:	8082                	ret
   108ec:	0044a983          	lw	s3,4(s1)
   108f0:	87a6                	mv	a5,s1
   108f2:	04a1                	add	s1,s1,8
   108f4:	fe098ce3          	beqz	s3,108ec <__sfvwrite_r+0x224>
   108f8:	0007ac03          	lw	s8,0(a5)
   108fc:	864e                	mv	a2,s3
   108fe:	45a9                	li	a1,10
   10900:	8562                	mv	a0,s8
   10902:	2791                	jal	11046 <memchr>
   10904:	c571                	beqz	a0,109d0 <__sfvwrite_r+0x308>
   10906:	0505                	add	a0,a0,1
   10908:	41850ab3          	sub	s5,a0,s8
   1090c:	bf99                	j	10862 <__sfvwrite_r+0x19a>
   1090e:	85e2                	mv	a1,s8
   10910:	864a                	mv	a2,s2
   10912:	10b000ef          	jal	1121c <memmove>
   10916:	401c                	lw	a5,0(s0)
   10918:	85a2                	mv	a1,s0
   1091a:	8552                	mv	a0,s4
   1091c:	97ca                	add	a5,a5,s2
   1091e:	c01c                	sw	a5,0(s0)
   10920:	284010ef          	jal	11ba4 <_fflush_r>
   10924:	d925                	beqz	a0,10894 <__sfvwrite_r+0x1cc>
   10926:	bf4d                	j	108d8 <__sfvwrite_r+0x210>
   10928:	4814                	lw	a3,16(s0)
   1092a:	02f6e863          	bltu	a3,a5,1095a <__sfvwrite_r+0x292>
   1092e:	4850                	lw	a2,20(s0)
   10930:	02c9e563          	bltu	s3,a2,1095a <__sfvwrite_r+0x292>
   10934:	87ce                	mv	a5,s3
   10936:	013af363          	bgeu	s5,s3,1093c <__sfvwrite_r+0x274>
   1093a:	87d6                	mv	a5,s5
   1093c:	02c7e6b3          	rem	a3,a5,a2
   10940:	5058                	lw	a4,36(s0)
   10942:	4c4c                	lw	a1,28(s0)
   10944:	865e                	mv	a2,s7
   10946:	8552                	mv	a0,s4
   10948:	40d786b3          	sub	a3,a5,a3
   1094c:	9702                	jalr	a4
   1094e:	892a                	mv	s2,a0
   10950:	f8a054e3          	blez	a0,108d8 <__sfvwrite_r+0x210>
   10954:	412989b3          	sub	s3,s3,s2
   10958:	bdc1                	j	10828 <__sfvwrite_r+0x160>
   1095a:	893a                	mv	s2,a4
   1095c:	00e9f363          	bgeu	s3,a4,10962 <__sfvwrite_r+0x29a>
   10960:	894e                	mv	s2,s3
   10962:	853e                	mv	a0,a5
   10964:	864a                	mv	a2,s2
   10966:	85de                	mv	a1,s7
   10968:	0b5000ef          	jal	1121c <memmove>
   1096c:	4418                	lw	a4,8(s0)
   1096e:	401c                	lw	a5,0(s0)
   10970:	41270733          	sub	a4,a4,s2
   10974:	97ca                	add	a5,a5,s2
   10976:	c418                	sw	a4,8(s0)
   10978:	c01c                	sw	a5,0(s0)
   1097a:	ff69                	bnez	a4,10954 <__sfvwrite_r+0x28c>
   1097c:	85a2                	mv	a1,s0
   1097e:	8552                	mv	a0,s4
   10980:	224010ef          	jal	11ba4 <_fflush_r>
   10984:	f931                	bnez	a0,108d8 <__sfvwrite_r+0x210>
   10986:	412989b3          	sub	s3,s3,s2
   1098a:	bd79                	j	10828 <__sfvwrite_r+0x160>
   1098c:	8c4e                	mv	s8,s3
   1098e:	8cce                	mv	s9,s3
   10990:	bdbd                	j	1080e <__sfvwrite_r+0x146>
   10992:	865e                	mv	a2,s7
   10994:	85e2                	mv	a1,s8
   10996:	087000ef          	jal	1121c <memmove>
   1099a:	4418                	lw	a4,8(s0)
   1099c:	401c                	lw	a5,0(s0)
   1099e:	895e                	mv	s2,s7
   109a0:	41770733          	sub	a4,a4,s7
   109a4:	97de                	add	a5,a5,s7
   109a6:	c418                	sw	a4,8(s0)
   109a8:	c01c                	sw	a5,0(s0)
   109aa:	b5ed                	j	10894 <__sfvwrite_r+0x1cc>
   109ac:	8552                	mv	a0,s4
   109ae:	145000ef          	jal	112f2 <_realloc_r>
   109b2:	8caa                	mv	s9,a0
   109b4:	e40511e3          	bnez	a0,107f6 <__sfvwrite_r+0x12e>
   109b8:	480c                	lw	a1,16(s0)
   109ba:	8552                	mv	a0,s4
   109bc:	332010ef          	jal	11cee <_free_r>
   109c0:	00c41783          	lh	a5,12(s0)
   109c4:	4731                	li	a4,12
   109c6:	00ea2023          	sw	a4,0(s4)
   109ca:	f7f7f793          	and	a5,a5,-129
   109ce:	b739                	j	108dc <__sfvwrite_r+0x214>
   109d0:	00198793          	add	a5,s3,1
   109d4:	8abe                	mv	s5,a5
   109d6:	b579                	j	10864 <__sfvwrite_r+0x19c>
   109d8:	4731                	li	a4,12
   109da:	00c41783          	lh	a5,12(s0)
   109de:	00ea2023          	sw	a4,0(s4)
   109e2:	bded                	j	108dc <__sfvwrite_r+0x214>

000109e4 <_fwalk>:
   109e4:	1101                	add	sp,sp,-32
   109e6:	c84a                	sw	s2,16(sp)
   109e8:	c64e                	sw	s3,12(sp)
   109ea:	c452                	sw	s4,8(sp)
   109ec:	c256                	sw	s5,4(sp)
   109ee:	c05a                	sw	s6,0(sp)
   109f0:	ce06                	sw	ra,28(sp)
   109f2:	cc22                	sw	s0,24(sp)
   109f4:	ca26                	sw	s1,20(sp)
   109f6:	8b2e                	mv	s6,a1
   109f8:	2e050a93          	add	s5,a0,736
   109fc:	4a01                	li	s4,0
   109fe:	4985                	li	s3,1
   10a00:	597d                	li	s2,-1
   10a02:	004aa483          	lw	s1,4(s5) # 80000004 <__BSS_END__+0x7ffec2c8>
   10a06:	008aa403          	lw	s0,8(s5)
   10a0a:	14fd                	add	s1,s1,-1
   10a0c:	0204c363          	bltz	s1,10a32 <_fwalk+0x4e>
   10a10:	00c45783          	lhu	a5,12(s0)
   10a14:	14fd                	add	s1,s1,-1
   10a16:	00f9fa63          	bgeu	s3,a5,10a2a <_fwalk+0x46>
   10a1a:	00e41783          	lh	a5,14(s0)
   10a1e:	8522                	mv	a0,s0
   10a20:	01278563          	beq	a5,s2,10a2a <_fwalk+0x46>
   10a24:	9b02                	jalr	s6
   10a26:	00aa6a33          	or	s4,s4,a0
   10a2a:	06840413          	add	s0,s0,104
   10a2e:	ff2491e3          	bne	s1,s2,10a10 <_fwalk+0x2c>
   10a32:	000aaa83          	lw	s5,0(s5)
   10a36:	fc0a96e3          	bnez	s5,10a02 <_fwalk+0x1e>
   10a3a:	40f2                	lw	ra,28(sp)
   10a3c:	4462                	lw	s0,24(sp)
   10a3e:	44d2                	lw	s1,20(sp)
   10a40:	4942                	lw	s2,16(sp)
   10a42:	49b2                	lw	s3,12(sp)
   10a44:	4a92                	lw	s5,4(sp)
   10a46:	4b02                	lw	s6,0(sp)
   10a48:	8552                	mv	a0,s4
   10a4a:	4a22                	lw	s4,8(sp)
   10a4c:	6105                	add	sp,sp,32
   10a4e:	8082                	ret

00010a50 <_fwalk_reent>:
   10a50:	7179                	add	sp,sp,-48
   10a52:	d04a                	sw	s2,32(sp)
   10a54:	ce4e                	sw	s3,28(sp)
   10a56:	cc52                	sw	s4,24(sp)
   10a58:	ca56                	sw	s5,20(sp)
   10a5a:	c85a                	sw	s6,16(sp)
   10a5c:	c65e                	sw	s7,12(sp)
   10a5e:	d606                	sw	ra,44(sp)
   10a60:	d422                	sw	s0,40(sp)
   10a62:	d226                	sw	s1,36(sp)
   10a64:	8aaa                	mv	s5,a0
   10a66:	8bae                	mv	s7,a1
   10a68:	2e050b13          	add	s6,a0,736
   10a6c:	4a01                	li	s4,0
   10a6e:	4985                	li	s3,1
   10a70:	597d                	li	s2,-1
   10a72:	004b2483          	lw	s1,4(s6)
   10a76:	008b2403          	lw	s0,8(s6)
   10a7a:	14fd                	add	s1,s1,-1
   10a7c:	0204c463          	bltz	s1,10aa4 <_fwalk_reent+0x54>
   10a80:	00c45783          	lhu	a5,12(s0)
   10a84:	14fd                	add	s1,s1,-1
   10a86:	00f9fb63          	bgeu	s3,a5,10a9c <_fwalk_reent+0x4c>
   10a8a:	00e41783          	lh	a5,14(s0)
   10a8e:	85a2                	mv	a1,s0
   10a90:	8556                	mv	a0,s5
   10a92:	01278563          	beq	a5,s2,10a9c <_fwalk_reent+0x4c>
   10a96:	9b82                	jalr	s7
   10a98:	00aa6a33          	or	s4,s4,a0
   10a9c:	06840413          	add	s0,s0,104
   10aa0:	ff2490e3          	bne	s1,s2,10a80 <_fwalk_reent+0x30>
   10aa4:	000b2b03          	lw	s6,0(s6)
   10aa8:	fc0b15e3          	bnez	s6,10a72 <_fwalk_reent+0x22>
   10aac:	50b2                	lw	ra,44(sp)
   10aae:	5422                	lw	s0,40(sp)
   10ab0:	5492                	lw	s1,36(sp)
   10ab2:	5902                	lw	s2,32(sp)
   10ab4:	49f2                	lw	s3,28(sp)
   10ab6:	4ad2                	lw	s5,20(sp)
   10ab8:	4b42                	lw	s6,16(sp)
   10aba:	4bb2                	lw	s7,12(sp)
   10abc:	8552                	mv	a0,s4
   10abe:	4a62                	lw	s4,24(sp)
   10ac0:	6145                	add	sp,sp,48
   10ac2:	8082                	ret

00010ac4 <_malloc_r>:
   10ac4:	7179                	add	sp,sp,-48
   10ac6:	ce4e                	sw	s3,28(sp)
   10ac8:	d606                	sw	ra,44(sp)
   10aca:	d422                	sw	s0,40(sp)
   10acc:	d226                	sw	s1,36(sp)
   10ace:	d04a                	sw	s2,32(sp)
   10ad0:	cc52                	sw	s4,24(sp)
   10ad2:	ca56                	sw	s5,20(sp)
   10ad4:	c85a                	sw	s6,16(sp)
   10ad6:	c65e                	sw	s7,12(sp)
   10ad8:	c462                	sw	s8,8(sp)
   10ada:	c266                	sw	s9,4(sp)
   10adc:	00b58793          	add	a5,a1,11
   10ae0:	4759                	li	a4,22
   10ae2:	89aa                	mv	s3,a0
   10ae4:	04f76f63          	bltu	a4,a5,10b42 <_malloc_r+0x7e>
   10ae8:	47c1                	li	a5,16
   10aea:	16b7ec63          	bltu	a5,a1,10c62 <_malloc_r+0x19e>
   10aee:	001000ef          	jal	112ee <__malloc_lock>
   10af2:	44c1                	li	s1,16
   10af4:	47e1                	li	a5,24
   10af6:	4589                	li	a1,2
   10af8:	c2818913          	add	s2,gp,-984 # 138c8 <__malloc_av_>
   10afc:	97ca                	add	a5,a5,s2
   10afe:	43c0                	lw	s0,4(a5)
   10b00:	ff878713          	add	a4,a5,-8
   10b04:	22e40963          	beq	s0,a4,10d36 <_malloc_r+0x272>
   10b08:	405c                	lw	a5,4(s0)
   10b0a:	4454                	lw	a3,12(s0)
   10b0c:	4410                	lw	a2,8(s0)
   10b0e:	9bf1                	and	a5,a5,-4
   10b10:	97a2                	add	a5,a5,s0
   10b12:	43d8                	lw	a4,4(a5)
   10b14:	c654                	sw	a3,12(a2)
   10b16:	c690                	sw	a2,8(a3)
   10b18:	00176713          	or	a4,a4,1
   10b1c:	854e                	mv	a0,s3
   10b1e:	c3d8                	sw	a4,4(a5)
   10b20:	7d0000ef          	jal	112f0 <__malloc_unlock>
   10b24:	00840513          	add	a0,s0,8
   10b28:	50b2                	lw	ra,44(sp)
   10b2a:	5422                	lw	s0,40(sp)
   10b2c:	5492                	lw	s1,36(sp)
   10b2e:	5902                	lw	s2,32(sp)
   10b30:	49f2                	lw	s3,28(sp)
   10b32:	4a62                	lw	s4,24(sp)
   10b34:	4ad2                	lw	s5,20(sp)
   10b36:	4b42                	lw	s6,16(sp)
   10b38:	4bb2                	lw	s7,12(sp)
   10b3a:	4c22                	lw	s8,8(sp)
   10b3c:	4c92                	lw	s9,4(sp)
   10b3e:	6145                	add	sp,sp,48
   10b40:	8082                	ret
   10b42:	ff87f493          	and	s1,a5,-8
   10b46:	1007ce63          	bltz	a5,10c62 <_malloc_r+0x19e>
   10b4a:	10b4ec63          	bltu	s1,a1,10c62 <_malloc_r+0x19e>
   10b4e:	2745                	jal	112ee <__malloc_lock>
   10b50:	1f700793          	li	a5,503
   10b54:	2a97f063          	bgeu	a5,s1,10df4 <_malloc_r+0x330>
   10b58:	0094d793          	srl	a5,s1,0x9
   10b5c:	10078863          	beqz	a5,10c6c <_malloc_r+0x1a8>
   10b60:	4711                	li	a4,4
   10b62:	20f76f63          	bltu	a4,a5,10d80 <_malloc_r+0x2bc>
   10b66:	0064d793          	srl	a5,s1,0x6
   10b6a:	03978593          	add	a1,a5,57
   10b6e:	03878513          	add	a0,a5,56
   10b72:	00359693          	sll	a3,a1,0x3
   10b76:	c2818913          	add	s2,gp,-984 # 138c8 <__malloc_av_>
   10b7a:	96ca                	add	a3,a3,s2
   10b7c:	42c0                	lw	s0,4(a3)
   10b7e:	16e1                	add	a3,a3,-8
   10b80:	02868063          	beq	a3,s0,10ba0 <_malloc_r+0xdc>
   10b84:	463d                	li	a2,15
   10b86:	a031                	j	10b92 <_malloc_r+0xce>
   10b88:	1a075463          	bgez	a4,10d30 <_malloc_r+0x26c>
   10b8c:	4440                	lw	s0,12(s0)
   10b8e:	00868963          	beq	a3,s0,10ba0 <_malloc_r+0xdc>
   10b92:	405c                	lw	a5,4(s0)
   10b94:	9bf1                	and	a5,a5,-4
   10b96:	40978733          	sub	a4,a5,s1
   10b9a:	fee657e3          	bge	a2,a4,10b88 <_malloc_r+0xc4>
   10b9e:	85aa                	mv	a1,a0
   10ba0:	01092403          	lw	s0,16(s2)
   10ba4:	c3018813          	add	a6,gp,-976 # 138d0 <__malloc_av_+0x8>
   10ba8:	17040363          	beq	s0,a6,10d0e <_malloc_r+0x24a>
   10bac:	405c                	lw	a5,4(s0)
   10bae:	46bd                	li	a3,15
   10bb0:	9bf1                	and	a5,a5,-4
   10bb2:	40978733          	sub	a4,a5,s1
   10bb6:	24e6c463          	blt	a3,a4,10dfe <_malloc_r+0x33a>
   10bba:	01092a23          	sw	a6,20(s2)
   10bbe:	01092823          	sw	a6,16(s2)
   10bc2:	20075f63          	bgez	a4,10de0 <_malloc_r+0x31c>
   10bc6:	1ff00713          	li	a4,511
   10bca:	00492503          	lw	a0,4(s2)
   10bce:	16f76963          	bltu	a4,a5,10d40 <_malloc_r+0x27c>
   10bd2:	ff87f713          	and	a4,a5,-8
   10bd6:	0721                	add	a4,a4,8
   10bd8:	974a                	add	a4,a4,s2
   10bda:	4314                	lw	a3,0(a4)
   10bdc:	0057d613          	srl	a2,a5,0x5
   10be0:	4785                	li	a5,1
   10be2:	00c797b3          	sll	a5,a5,a2
   10be6:	8d5d                	or	a0,a0,a5
   10be8:	ff870793          	add	a5,a4,-8
   10bec:	c45c                	sw	a5,12(s0)
   10bee:	c414                	sw	a3,8(s0)
   10bf0:	00a92223          	sw	a0,4(s2)
   10bf4:	c300                	sw	s0,0(a4)
   10bf6:	c6c0                	sw	s0,12(a3)
   10bf8:	4025d793          	sra	a5,a1,0x2
   10bfc:	4605                	li	a2,1
   10bfe:	00f61633          	sll	a2,a2,a5
   10c02:	06c56c63          	bltu	a0,a2,10c7a <_malloc_r+0x1b6>
   10c06:	00a677b3          	and	a5,a2,a0
   10c0a:	ef81                	bnez	a5,10c22 <_malloc_r+0x15e>
   10c0c:	0606                	sll	a2,a2,0x1
   10c0e:	99f1                	and	a1,a1,-4
   10c10:	00a677b3          	and	a5,a2,a0
   10c14:	0591                	add	a1,a1,4
   10c16:	e791                	bnez	a5,10c22 <_malloc_r+0x15e>
   10c18:	0606                	sll	a2,a2,0x1
   10c1a:	00a677b3          	and	a5,a2,a0
   10c1e:	0591                	add	a1,a1,4
   10c20:	dfe5                	beqz	a5,10c18 <_malloc_r+0x154>
   10c22:	48bd                	li	a7,15
   10c24:	00359313          	sll	t1,a1,0x3
   10c28:	934a                	add	t1,t1,s2
   10c2a:	851a                	mv	a0,t1
   10c2c:	455c                	lw	a5,12(a0)
   10c2e:	8e2e                	mv	t3,a1
   10c30:	16f50863          	beq	a0,a5,10da0 <_malloc_r+0x2dc>
   10c34:	43d8                	lw	a4,4(a5)
   10c36:	843e                	mv	s0,a5
   10c38:	47dc                	lw	a5,12(a5)
   10c3a:	9b71                	and	a4,a4,-4
   10c3c:	409706b3          	sub	a3,a4,s1
   10c40:	16d8c763          	blt	a7,a3,10dae <_malloc_r+0x2ea>
   10c44:	fe06c6e3          	bltz	a3,10c30 <_malloc_r+0x16c>
   10c48:	9722                	add	a4,a4,s0
   10c4a:	4354                	lw	a3,4(a4)
   10c4c:	4410                	lw	a2,8(s0)
   10c4e:	854e                	mv	a0,s3
   10c50:	0016e693          	or	a3,a3,1
   10c54:	c354                	sw	a3,4(a4)
   10c56:	c65c                	sw	a5,12(a2)
   10c58:	c790                	sw	a2,8(a5)
   10c5a:	2d59                	jal	112f0 <__malloc_unlock>
   10c5c:	00840513          	add	a0,s0,8
   10c60:	b5e1                	j	10b28 <_malloc_r+0x64>
   10c62:	47b1                	li	a5,12
   10c64:	00f9a023          	sw	a5,0(s3)
   10c68:	4501                	li	a0,0
   10c6a:	bd7d                	j	10b28 <_malloc_r+0x64>
   10c6c:	20000693          	li	a3,512
   10c70:	04000593          	li	a1,64
   10c74:	03f00513          	li	a0,63
   10c78:	bdfd                	j	10b76 <_malloc_r+0xb2>
   10c7a:	00892403          	lw	s0,8(s2)
   10c7e:	405c                	lw	a5,4(s0)
   10c80:	ffc7fb13          	and	s6,a5,-4
   10c84:	009b6763          	bltu	s6,s1,10c92 <_malloc_r+0x1ce>
   10c88:	409b0733          	sub	a4,s6,s1
   10c8c:	47bd                	li	a5,15
   10c8e:	08e7c363          	blt	a5,a4,10d14 <_malloc_r+0x250>
   10c92:	04c1aa83          	lw	s5,76(gp) # 13cec <__malloc_top_pad>
   10c96:	03c1a703          	lw	a4,60(gp) # 13cdc <__malloc_sbrk_base>
   10c9a:	57fd                	li	a5,-1
   10c9c:	01640a33          	add	s4,s0,s6
   10ca0:	9aa6                	add	s5,s5,s1
   10ca2:	2af70f63          	beq	a4,a5,10f60 <_malloc_r+0x49c>
   10ca6:	6785                	lui	a5,0x1
   10ca8:	07bd                	add	a5,a5,15 # 100f <exit-0xf085>
   10caa:	9abe                	add	s5,s5,a5
   10cac:	77fd                	lui	a5,0xfffff
   10cae:	00fafab3          	and	s5,s5,a5
   10cb2:	85d6                	mv	a1,s5
   10cb4:	854e                	mv	a0,s3
   10cb6:	1f7000ef          	jal	116ac <_sbrk_r>
   10cba:	57fd                	li	a5,-1
   10cbc:	8baa                	mv	s7,a0
   10cbe:	18f50063          	beq	a0,a5,10e3e <_malloc_r+0x37a>
   10cc2:	17456c63          	bltu	a0,s4,10e3a <_malloc_r+0x376>
   10cc6:	07418c13          	add	s8,gp,116 # 13d14 <__malloc_current_mallinfo>
   10cca:	000c2583          	lw	a1,0(s8)
   10cce:	95d6                	add	a1,a1,s5
   10cd0:	00bc2023          	sw	a1,0(s8)
   10cd4:	872e                	mv	a4,a1
   10cd6:	1eaa1063          	bne	s4,a0,10eb6 <_malloc_r+0x3f2>
   10cda:	01451793          	sll	a5,a0,0x14
   10cde:	1c079c63          	bnez	a5,10eb6 <_malloc_r+0x3f2>
   10ce2:	00892b83          	lw	s7,8(s2)
   10ce6:	015b07b3          	add	a5,s6,s5
   10cea:	0017e793          	or	a5,a5,1
   10cee:	00fba223          	sw	a5,4(s7)
   10cf2:	0481a683          	lw	a3,72(gp) # 13ce8 <__malloc_max_sbrked_mem>
   10cf6:	00b6f463          	bgeu	a3,a1,10cfe <_malloc_r+0x23a>
   10cfa:	04b1a423          	sw	a1,72(gp) # 13ce8 <__malloc_max_sbrked_mem>
   10cfe:	0441a683          	lw	a3,68(gp) # 13ce4 <__malloc_max_total_mem>
   10d02:	00b6f463          	bgeu	a3,a1,10d0a <_malloc_r+0x246>
   10d06:	04b1a223          	sw	a1,68(gp) # 13ce4 <__malloc_max_total_mem>
   10d0a:	845e                	mv	s0,s7
   10d0c:	aa25                	j	10e44 <_malloc_r+0x380>
   10d0e:	00492503          	lw	a0,4(s2)
   10d12:	b5dd                	j	10bf8 <_malloc_r+0x134>
   10d14:	0014e793          	or	a5,s1,1
   10d18:	c05c                	sw	a5,4(s0)
   10d1a:	94a2                	add	s1,s1,s0
   10d1c:	00992423          	sw	s1,8(s2)
   10d20:	00176713          	or	a4,a4,1
   10d24:	854e                	mv	a0,s3
   10d26:	c0d8                	sw	a4,4(s1)
   10d28:	23e1                	jal	112f0 <__malloc_unlock>
   10d2a:	00840513          	add	a0,s0,8
   10d2e:	bbed                	j	10b28 <_malloc_r+0x64>
   10d30:	4454                	lw	a3,12(s0)
   10d32:	4410                	lw	a2,8(s0)
   10d34:	bbf1                	j	10b10 <_malloc_r+0x4c>
   10d36:	47c0                	lw	s0,12(a5)
   10d38:	0589                	add	a1,a1,2
   10d3a:	e68783e3          	beq	a5,s0,10ba0 <_malloc_r+0xdc>
   10d3e:	b3e9                	j	10b08 <_malloc_r+0x44>
   10d40:	0097d713          	srl	a4,a5,0x9
   10d44:	4691                	li	a3,4
   10d46:	0ee6f263          	bgeu	a3,a4,10e2a <_malloc_r+0x366>
   10d4a:	46d1                	li	a3,20
   10d4c:	24e6e363          	bltu	a3,a4,10f92 <_malloc_r+0x4ce>
   10d50:	05c70613          	add	a2,a4,92
   10d54:	05b70693          	add	a3,a4,91
   10d58:	060e                	sll	a2,a2,0x3
   10d5a:	964a                	add	a2,a2,s2
   10d5c:	4218                	lw	a4,0(a2)
   10d5e:	1661                	add	a2,a2,-8
   10d60:	00e61663          	bne	a2,a4,10d6c <_malloc_r+0x2a8>
   10d64:	a401                	j	10f64 <_malloc_r+0x4a0>
   10d66:	4718                	lw	a4,8(a4)
   10d68:	00e60663          	beq	a2,a4,10d74 <_malloc_r+0x2b0>
   10d6c:	4354                	lw	a3,4(a4)
   10d6e:	9af1                	and	a3,a3,-4
   10d70:	fed7ebe3          	bltu	a5,a3,10d66 <_malloc_r+0x2a2>
   10d74:	4750                	lw	a2,12(a4)
   10d76:	c450                	sw	a2,12(s0)
   10d78:	c418                	sw	a4,8(s0)
   10d7a:	c600                	sw	s0,8(a2)
   10d7c:	c740                	sw	s0,12(a4)
   10d7e:	bdad                	j	10bf8 <_malloc_r+0x134>
   10d80:	4751                	li	a4,20
   10d82:	0cf77d63          	bgeu	a4,a5,10e5c <_malloc_r+0x398>
   10d86:	05400713          	li	a4,84
   10d8a:	22f76063          	bltu	a4,a5,10faa <_malloc_r+0x4e6>
   10d8e:	00c4d793          	srl	a5,s1,0xc
   10d92:	06f78593          	add	a1,a5,111 # fffff06f <__BSS_END__+0xfffeb333>
   10d96:	06e78513          	add	a0,a5,110
   10d9a:	00359693          	sll	a3,a1,0x3
   10d9e:	bbe1                	j	10b76 <_malloc_r+0xb2>
   10da0:	0e05                	add	t3,t3,1
   10da2:	003e7793          	and	a5,t3,3
   10da6:	0521                	add	a0,a0,8
   10da8:	c7f1                	beqz	a5,10e74 <_malloc_r+0x3b0>
   10daa:	455c                	lw	a5,12(a0)
   10dac:	b551                	j	10c30 <_malloc_r+0x16c>
   10dae:	4410                	lw	a2,8(s0)
   10db0:	0014e593          	or	a1,s1,1
   10db4:	c04c                	sw	a1,4(s0)
   10db6:	c65c                	sw	a5,12(a2)
   10db8:	c790                	sw	a2,8(a5)
   10dba:	94a2                	add	s1,s1,s0
   10dbc:	00992a23          	sw	s1,20(s2)
   10dc0:	00992823          	sw	s1,16(s2)
   10dc4:	0016e793          	or	a5,a3,1
   10dc8:	0104a623          	sw	a6,12(s1)
   10dcc:	0104a423          	sw	a6,8(s1)
   10dd0:	c0dc                	sw	a5,4(s1)
   10dd2:	9722                	add	a4,a4,s0
   10dd4:	854e                	mv	a0,s3
   10dd6:	c314                	sw	a3,0(a4)
   10dd8:	2b21                	jal	112f0 <__malloc_unlock>
   10dda:	00840513          	add	a0,s0,8
   10dde:	b3a9                	j	10b28 <_malloc_r+0x64>
   10de0:	97a2                	add	a5,a5,s0
   10de2:	43d8                	lw	a4,4(a5)
   10de4:	854e                	mv	a0,s3
   10de6:	00176713          	or	a4,a4,1
   10dea:	c3d8                	sw	a4,4(a5)
   10dec:	2311                	jal	112f0 <__malloc_unlock>
   10dee:	00840513          	add	a0,s0,8
   10df2:	bb1d                	j	10b28 <_malloc_r+0x64>
   10df4:	0034d593          	srl	a1,s1,0x3
   10df8:	00848793          	add	a5,s1,8
   10dfc:	b9f5                	j	10af8 <_malloc_r+0x34>
   10dfe:	0014e693          	or	a3,s1,1
   10e02:	c054                	sw	a3,4(s0)
   10e04:	94a2                	add	s1,s1,s0
   10e06:	00992a23          	sw	s1,20(s2)
   10e0a:	00992823          	sw	s1,16(s2)
   10e0e:	00176693          	or	a3,a4,1
   10e12:	0104a623          	sw	a6,12(s1)
   10e16:	0104a423          	sw	a6,8(s1)
   10e1a:	c0d4                	sw	a3,4(s1)
   10e1c:	97a2                	add	a5,a5,s0
   10e1e:	854e                	mv	a0,s3
   10e20:	c398                	sw	a4,0(a5)
   10e22:	21f9                	jal	112f0 <__malloc_unlock>
   10e24:	00840513          	add	a0,s0,8
   10e28:	b301                	j	10b28 <_malloc_r+0x64>
   10e2a:	0067d713          	srl	a4,a5,0x6
   10e2e:	03970613          	add	a2,a4,57
   10e32:	03870693          	add	a3,a4,56
   10e36:	060e                	sll	a2,a2,0x3
   10e38:	b70d                	j	10d5a <_malloc_r+0x296>
   10e3a:	07240763          	beq	s0,s2,10ea8 <_malloc_r+0x3e4>
   10e3e:	00892403          	lw	s0,8(s2)
   10e42:	405c                	lw	a5,4(s0)
   10e44:	9bf1                	and	a5,a5,-4
   10e46:	40978733          	sub	a4,a5,s1
   10e4a:	0097e563          	bltu	a5,s1,10e54 <_malloc_r+0x390>
   10e4e:	47bd                	li	a5,15
   10e50:	ece7c2e3          	blt	a5,a4,10d14 <_malloc_r+0x250>
   10e54:	854e                	mv	a0,s3
   10e56:	2969                	jal	112f0 <__malloc_unlock>
   10e58:	4501                	li	a0,0
   10e5a:	b1f9                	j	10b28 <_malloc_r+0x64>
   10e5c:	05c78593          	add	a1,a5,92
   10e60:	05b78513          	add	a0,a5,91
   10e64:	00359693          	sll	a3,a1,0x3
   10e68:	b339                	j	10b76 <_malloc_r+0xb2>
   10e6a:	00832783          	lw	a5,8(t1) # 1013c <frame_dummy+0x18>
   10e6e:	15fd                	add	a1,a1,-1
   10e70:	1c679863          	bne	a5,t1,11040 <_malloc_r+0x57c>
   10e74:	0035f793          	and	a5,a1,3
   10e78:	1361                	add	t1,t1,-8
   10e7a:	fbe5                	bnez	a5,10e6a <_malloc_r+0x3a6>
   10e7c:	00492703          	lw	a4,4(s2)
   10e80:	fff64793          	not	a5,a2
   10e84:	8ff9                	and	a5,a5,a4
   10e86:	00f92223          	sw	a5,4(s2)
   10e8a:	0606                	sll	a2,a2,0x1
   10e8c:	dec7e7e3          	bltu	a5,a2,10c7a <_malloc_r+0x1b6>
   10e90:	de0605e3          	beqz	a2,10c7a <_malloc_r+0x1b6>
   10e94:	00f67733          	and	a4,a2,a5
   10e98:	e711                	bnez	a4,10ea4 <_malloc_r+0x3e0>
   10e9a:	0606                	sll	a2,a2,0x1
   10e9c:	00f67733          	and	a4,a2,a5
   10ea0:	0e11                	add	t3,t3,4
   10ea2:	df65                	beqz	a4,10e9a <_malloc_r+0x3d6>
   10ea4:	85f2                	mv	a1,t3
   10ea6:	bbbd                	j	10c24 <_malloc_r+0x160>
   10ea8:	07418c13          	add	s8,gp,116 # 13d14 <__malloc_current_mallinfo>
   10eac:	000c2703          	lw	a4,0(s8)
   10eb0:	9756                	add	a4,a4,s5
   10eb2:	00ec2023          	sw	a4,0(s8)
   10eb6:	03c1a683          	lw	a3,60(gp) # 13cdc <__malloc_sbrk_base>
   10eba:	57fd                	li	a5,-1
   10ebc:	10f68463          	beq	a3,a5,10fc4 <_malloc_r+0x500>
   10ec0:	414b87b3          	sub	a5,s7,s4
   10ec4:	97ba                	add	a5,a5,a4
   10ec6:	00fc2023          	sw	a5,0(s8)
   10eca:	007bfc93          	and	s9,s7,7
   10ece:	0a0c8363          	beqz	s9,10f74 <_malloc_r+0x4b0>
   10ed2:	6705                	lui	a4,0x1
   10ed4:	419b8bb3          	sub	s7,s7,s9
   10ed8:	00870593          	add	a1,a4,8 # 1008 <exit-0xf08c>
   10edc:	0ba1                	add	s7,s7,8
   10ede:	419585b3          	sub	a1,a1,s9
   10ee2:	9ade                	add	s5,s5,s7
   10ee4:	415585b3          	sub	a1,a1,s5
   10ee8:	177d                	add	a4,a4,-1
   10eea:	00e5fa33          	and	s4,a1,a4
   10eee:	85d2                	mv	a1,s4
   10ef0:	854e                	mv	a0,s3
   10ef2:	7ba000ef          	jal	116ac <_sbrk_r>
   10ef6:	57fd                	li	a5,-1
   10ef8:	10f50663          	beq	a0,a5,11004 <_malloc_r+0x540>
   10efc:	41750533          	sub	a0,a0,s7
   10f00:	01450ab3          	add	s5,a0,s4
   10f04:	000c2703          	lw	a4,0(s8)
   10f08:	01792423          	sw	s7,8(s2)
   10f0c:	001ae793          	or	a5,s5,1
   10f10:	00ea05b3          	add	a1,s4,a4
   10f14:	00bc2023          	sw	a1,0(s8)
   10f18:	00fba223          	sw	a5,4(s7)
   10f1c:	dd240be3          	beq	s0,s2,10cf2 <_malloc_r+0x22e>
   10f20:	46bd                	li	a3,15
   10f22:	0b66f463          	bgeu	a3,s6,10fca <_malloc_r+0x506>
   10f26:	4058                	lw	a4,4(s0)
   10f28:	ff4b0793          	add	a5,s6,-12
   10f2c:	9be1                	and	a5,a5,-8
   10f2e:	8b05                	and	a4,a4,1
   10f30:	8f5d                	or	a4,a4,a5
   10f32:	c058                	sw	a4,4(s0)
   10f34:	4615                	li	a2,5
   10f36:	00f40733          	add	a4,s0,a5
   10f3a:	c350                	sw	a2,4(a4)
   10f3c:	c710                	sw	a2,8(a4)
   10f3e:	00f6e563          	bltu	a3,a5,10f48 <_malloc_r+0x484>
   10f42:	004ba783          	lw	a5,4(s7)
   10f46:	b375                	j	10cf2 <_malloc_r+0x22e>
   10f48:	00840593          	add	a1,s0,8
   10f4c:	854e                	mv	a0,s3
   10f4e:	5a1000ef          	jal	11cee <_free_r>
   10f52:	00892b83          	lw	s7,8(s2)
   10f56:	000c2583          	lw	a1,0(s8)
   10f5a:	004ba783          	lw	a5,4(s7)
   10f5e:	bb51                	j	10cf2 <_malloc_r+0x22e>
   10f60:	0ac1                	add	s5,s5,16
   10f62:	bb81                	j	10cb2 <_malloc_r+0x1ee>
   10f64:	8689                	sra	a3,a3,0x2
   10f66:	4785                	li	a5,1
   10f68:	00d797b3          	sll	a5,a5,a3
   10f6c:	8d5d                	or	a0,a0,a5
   10f6e:	00a92223          	sw	a0,4(s2)
   10f72:	b511                	j	10d76 <_malloc_r+0x2b2>
   10f74:	015b85b3          	add	a1,s7,s5
   10f78:	40b005b3          	neg	a1,a1
   10f7c:	05d2                	sll	a1,a1,0x14
   10f7e:	0145da13          	srl	s4,a1,0x14
   10f82:	85d2                	mv	a1,s4
   10f84:	854e                	mv	a0,s3
   10f86:	271d                	jal	116ac <_sbrk_r>
   10f88:	57fd                	li	a5,-1
   10f8a:	f6f519e3          	bne	a0,a5,10efc <_malloc_r+0x438>
   10f8e:	4a01                	li	s4,0
   10f90:	bf95                	j	10f04 <_malloc_r+0x440>
   10f92:	05400693          	li	a3,84
   10f96:	02e6ee63          	bltu	a3,a4,10fd2 <_malloc_r+0x50e>
   10f9a:	00c7d713          	srl	a4,a5,0xc
   10f9e:	06f70613          	add	a2,a4,111
   10fa2:	06e70693          	add	a3,a4,110
   10fa6:	060e                	sll	a2,a2,0x3
   10fa8:	bb4d                	j	10d5a <_malloc_r+0x296>
   10faa:	15400713          	li	a4,340
   10fae:	02f76e63          	bltu	a4,a5,10fea <_malloc_r+0x526>
   10fb2:	00f4d793          	srl	a5,s1,0xf
   10fb6:	07878593          	add	a1,a5,120
   10fba:	07778513          	add	a0,a5,119
   10fbe:	00359693          	sll	a3,a1,0x3
   10fc2:	be55                	j	10b76 <_malloc_r+0xb2>
   10fc4:	0371ae23          	sw	s7,60(gp) # 13cdc <__malloc_sbrk_base>
   10fc8:	b709                	j	10eca <_malloc_r+0x406>
   10fca:	4785                	li	a5,1
   10fcc:	00fba223          	sw	a5,4(s7)
   10fd0:	b551                	j	10e54 <_malloc_r+0x390>
   10fd2:	15400693          	li	a3,340
   10fd6:	02e6ed63          	bltu	a3,a4,11010 <_malloc_r+0x54c>
   10fda:	00f7d713          	srl	a4,a5,0xf
   10fde:	07870613          	add	a2,a4,120
   10fe2:	07770693          	add	a3,a4,119
   10fe6:	060e                	sll	a2,a2,0x3
   10fe8:	bb8d                	j	10d5a <_malloc_r+0x296>
   10fea:	55400713          	li	a4,1364
   10fee:	02f76d63          	bltu	a4,a5,11028 <_malloc_r+0x564>
   10ff2:	0124d793          	srl	a5,s1,0x12
   10ff6:	07d78593          	add	a1,a5,125
   10ffa:	07c78513          	add	a0,a5,124
   10ffe:	00359693          	sll	a3,a1,0x3
   11002:	be95                	j	10b76 <_malloc_r+0xb2>
   11004:	1ce1                	add	s9,s9,-8
   11006:	9ae6                	add	s5,s5,s9
   11008:	417a8ab3          	sub	s5,s5,s7
   1100c:	4a01                	li	s4,0
   1100e:	bddd                	j	10f04 <_malloc_r+0x440>
   11010:	55400693          	li	a3,1364
   11014:	02e6e163          	bltu	a3,a4,11036 <_malloc_r+0x572>
   11018:	0127d713          	srl	a4,a5,0x12
   1101c:	07d70613          	add	a2,a4,125
   11020:	07c70693          	add	a3,a4,124
   11024:	060e                	sll	a2,a2,0x3
   11026:	bb15                	j	10d5a <_malloc_r+0x296>
   11028:	3f800693          	li	a3,1016
   1102c:	07f00593          	li	a1,127
   11030:	07e00513          	li	a0,126
   11034:	b689                	j	10b76 <_malloc_r+0xb2>
   11036:	3f800613          	li	a2,1016
   1103a:	07e00693          	li	a3,126
   1103e:	bb31                	j	10d5a <_malloc_r+0x296>
   11040:	00492783          	lw	a5,4(s2)
   11044:	b599                	j	10e8a <_malloc_r+0x3c6>

00011046 <memchr>:
   11046:	00357793          	and	a5,a0,3
   1104a:	0ff5f693          	zext.b	a3,a1
   1104e:	c785                	beqz	a5,11076 <memchr+0x30>
   11050:	fff60793          	add	a5,a2,-1
   11054:	ce19                	beqz	a2,11072 <memchr+0x2c>
   11056:	567d                	li	a2,-1
   11058:	a801                	j	11068 <memchr+0x22>
   1105a:	0505                	add	a0,a0,1
   1105c:	00357713          	and	a4,a0,3
   11060:	cf01                	beqz	a4,11078 <memchr+0x32>
   11062:	17fd                	add	a5,a5,-1
   11064:	00c78763          	beq	a5,a2,11072 <memchr+0x2c>
   11068:	00054703          	lbu	a4,0(a0)
   1106c:	fed717e3          	bne	a4,a3,1105a <memchr+0x14>
   11070:	8082                	ret
   11072:	4501                	li	a0,0
   11074:	8082                	ret
   11076:	87b2                	mv	a5,a2
   11078:	470d                	li	a4,3
   1107a:	04f77263          	bgeu	a4,a5,110be <memchr+0x78>
   1107e:	0ff5f593          	zext.b	a1,a1
   11082:	00859713          	sll	a4,a1,0x8
   11086:	95ba                	add	a1,a1,a4
   11088:	01059713          	sll	a4,a1,0x10
   1108c:	feff08b7          	lui	a7,0xfeff0
   11090:	80808837          	lui	a6,0x80808
   11094:	95ba                	add	a1,a1,a4
   11096:	eff88893          	add	a7,a7,-257 # fefefeff <__BSS_END__+0xfefdc1c3>
   1109a:	08080813          	add	a6,a6,128 # 80808080 <__BSS_END__+0x807f4344>
   1109e:	430d                	li	t1,3
   110a0:	a029                	j	110aa <memchr+0x64>
   110a2:	17f1                	add	a5,a5,-4
   110a4:	0511                	add	a0,a0,4
   110a6:	00f37c63          	bgeu	t1,a5,110be <memchr+0x78>
   110aa:	4118                	lw	a4,0(a0)
   110ac:	8f2d                	xor	a4,a4,a1
   110ae:	01170633          	add	a2,a4,a7
   110b2:	fff74713          	not	a4,a4
   110b6:	8f71                	and	a4,a4,a2
   110b8:	01077733          	and	a4,a4,a6
   110bc:	d37d                	beqz	a4,110a2 <memchr+0x5c>
   110be:	00f50733          	add	a4,a0,a5
   110c2:	e789                	bnez	a5,110cc <memchr+0x86>
   110c4:	b77d                	j	11072 <memchr+0x2c>
   110c6:	0505                	add	a0,a0,1
   110c8:	faa705e3          	beq	a4,a0,11072 <memchr+0x2c>
   110cc:	00054783          	lbu	a5,0(a0)
   110d0:	fed79be3          	bne	a5,a3,110c6 <memchr+0x80>
   110d4:	8082                	ret

000110d6 <memcpy>:
   110d6:	00b547b3          	xor	a5,a0,a1
   110da:	8b8d                	and	a5,a5,3
   110dc:	00c508b3          	add	a7,a0,a2
   110e0:	e7b1                	bnez	a5,1112c <memcpy+0x56>
   110e2:	478d                	li	a5,3
   110e4:	04c7f463          	bgeu	a5,a2,1112c <memcpy+0x56>
   110e8:	00357793          	and	a5,a0,3
   110ec:	872a                	mv	a4,a0
   110ee:	ebb9                	bnez	a5,11144 <memcpy+0x6e>
   110f0:	ffc8f613          	and	a2,a7,-4
   110f4:	40e606b3          	sub	a3,a2,a4
   110f8:	02000793          	li	a5,32
   110fc:	06d7c863          	blt	a5,a3,1116c <memcpy+0x96>
   11100:	86ae                	mv	a3,a1
   11102:	87ba                	mv	a5,a4
   11104:	02c77163          	bgeu	a4,a2,11126 <memcpy+0x50>
   11108:	0006a803          	lw	a6,0(a3)
   1110c:	0791                	add	a5,a5,4
   1110e:	0691                	add	a3,a3,4
   11110:	ff07ae23          	sw	a6,-4(a5)
   11114:	fec7eae3          	bltu	a5,a2,11108 <memcpy+0x32>
   11118:	fff60793          	add	a5,a2,-1
   1111c:	8f99                	sub	a5,a5,a4
   1111e:	9bf1                	and	a5,a5,-4
   11120:	0791                	add	a5,a5,4
   11122:	973e                	add	a4,a4,a5
   11124:	95be                	add	a1,a1,a5
   11126:	01176663          	bltu	a4,a7,11132 <memcpy+0x5c>
   1112a:	8082                	ret
   1112c:	872a                	mv	a4,a0
   1112e:	03157e63          	bgeu	a0,a7,1116a <memcpy+0x94>
   11132:	0005c783          	lbu	a5,0(a1)
   11136:	0705                	add	a4,a4,1
   11138:	0585                	add	a1,a1,1
   1113a:	fef70fa3          	sb	a5,-1(a4)
   1113e:	fee89ae3          	bne	a7,a4,11132 <memcpy+0x5c>
   11142:	8082                	ret
   11144:	0005c683          	lbu	a3,0(a1)
   11148:	0705                	add	a4,a4,1
   1114a:	00377793          	and	a5,a4,3
   1114e:	fed70fa3          	sb	a3,-1(a4)
   11152:	0585                	add	a1,a1,1
   11154:	dfd1                	beqz	a5,110f0 <memcpy+0x1a>
   11156:	0005c683          	lbu	a3,0(a1)
   1115a:	0705                	add	a4,a4,1
   1115c:	00377793          	and	a5,a4,3
   11160:	fed70fa3          	sb	a3,-1(a4)
   11164:	0585                	add	a1,a1,1
   11166:	fff9                	bnez	a5,11144 <memcpy+0x6e>
   11168:	b761                	j	110f0 <memcpy+0x1a>
   1116a:	8082                	ret
   1116c:	1141                	add	sp,sp,-16
   1116e:	c622                	sw	s0,12(sp)
   11170:	02000413          	li	s0,32
   11174:	0005a383          	lw	t2,0(a1)
   11178:	0045a283          	lw	t0,4(a1)
   1117c:	0085af83          	lw	t6,8(a1)
   11180:	00c5af03          	lw	t5,12(a1)
   11184:	0105ae83          	lw	t4,16(a1)
   11188:	0145ae03          	lw	t3,20(a1)
   1118c:	0185a303          	lw	t1,24(a1)
   11190:	01c5a803          	lw	a6,28(a1)
   11194:	5194                	lw	a3,32(a1)
   11196:	02470713          	add	a4,a4,36
   1119a:	40e607b3          	sub	a5,a2,a4
   1119e:	fc772e23          	sw	t2,-36(a4)
   111a2:	fe572023          	sw	t0,-32(a4)
   111a6:	fff72223          	sw	t6,-28(a4)
   111aa:	ffe72423          	sw	t5,-24(a4)
   111ae:	ffd72623          	sw	t4,-20(a4)
   111b2:	ffc72823          	sw	t3,-16(a4)
   111b6:	fe672a23          	sw	t1,-12(a4)
   111ba:	ff072c23          	sw	a6,-8(a4)
   111be:	fed72e23          	sw	a3,-4(a4)
   111c2:	02458593          	add	a1,a1,36
   111c6:	faf447e3          	blt	s0,a5,11174 <memcpy+0x9e>
   111ca:	86ae                	mv	a3,a1
   111cc:	87ba                	mv	a5,a4
   111ce:	02c77163          	bgeu	a4,a2,111f0 <memcpy+0x11a>
   111d2:	0006a803          	lw	a6,0(a3)
   111d6:	0791                	add	a5,a5,4
   111d8:	0691                	add	a3,a3,4
   111da:	ff07ae23          	sw	a6,-4(a5)
   111de:	fec7eae3          	bltu	a5,a2,111d2 <memcpy+0xfc>
   111e2:	fff60793          	add	a5,a2,-1
   111e6:	8f99                	sub	a5,a5,a4
   111e8:	9bf1                	and	a5,a5,-4
   111ea:	0791                	add	a5,a5,4
   111ec:	973e                	add	a4,a4,a5
   111ee:	95be                	add	a1,a1,a5
   111f0:	01176563          	bltu	a4,a7,111fa <memcpy+0x124>
   111f4:	4432                	lw	s0,12(sp)
   111f6:	0141                	add	sp,sp,16
   111f8:	8082                	ret
   111fa:	0005c783          	lbu	a5,0(a1)
   111fe:	0705                	add	a4,a4,1
   11200:	0585                	add	a1,a1,1
   11202:	fef70fa3          	sb	a5,-1(a4)
   11206:	fee887e3          	beq	a7,a4,111f4 <memcpy+0x11e>
   1120a:	0005c783          	lbu	a5,0(a1)
   1120e:	0705                	add	a4,a4,1
   11210:	0585                	add	a1,a1,1
   11212:	fef70fa3          	sb	a5,-1(a4)
   11216:	fee892e3          	bne	a7,a4,111fa <memcpy+0x124>
   1121a:	bfe9                	j	111f4 <memcpy+0x11e>

0001121c <memmove>:
   1121c:	02a5f263          	bgeu	a1,a0,11240 <memmove+0x24>
   11220:	00c58733          	add	a4,a1,a2
   11224:	00e57e63          	bgeu	a0,a4,11240 <memmove+0x24>
   11228:	00c507b3          	add	a5,a0,a2
   1122c:	ca1d                	beqz	a2,11262 <memmove+0x46>
   1122e:	fff74683          	lbu	a3,-1(a4)
   11232:	17fd                	add	a5,a5,-1
   11234:	177d                	add	a4,a4,-1
   11236:	00d78023          	sb	a3,0(a5)
   1123a:	fef51ae3          	bne	a0,a5,1122e <memmove+0x12>
   1123e:	8082                	ret
   11240:	47bd                	li	a5,15
   11242:	02c7e163          	bltu	a5,a2,11264 <memmove+0x48>
   11246:	87aa                	mv	a5,a0
   11248:	fff60693          	add	a3,a2,-1
   1124c:	ce51                	beqz	a2,112e8 <memmove+0xcc>
   1124e:	0685                	add	a3,a3,1
   11250:	96be                	add	a3,a3,a5
   11252:	0005c703          	lbu	a4,0(a1)
   11256:	0785                	add	a5,a5,1
   11258:	0585                	add	a1,a1,1
   1125a:	fee78fa3          	sb	a4,-1(a5)
   1125e:	fed79ae3          	bne	a5,a3,11252 <memmove+0x36>
   11262:	8082                	ret
   11264:	00b567b3          	or	a5,a0,a1
   11268:	8b8d                	and	a5,a5,3
   1126a:	ebbd                	bnez	a5,112e0 <memmove+0xc4>
   1126c:	ff060893          	add	a7,a2,-16
   11270:	ff08f893          	and	a7,a7,-16
   11274:	08c1                	add	a7,a7,16
   11276:	011507b3          	add	a5,a0,a7
   1127a:	86ae                	mv	a3,a1
   1127c:	872a                	mv	a4,a0
   1127e:	0006a803          	lw	a6,0(a3)
   11282:	06c1                	add	a3,a3,16
   11284:	0741                	add	a4,a4,16
   11286:	ff072823          	sw	a6,-16(a4)
   1128a:	ff46a803          	lw	a6,-12(a3)
   1128e:	ff072a23          	sw	a6,-12(a4)
   11292:	ff86a803          	lw	a6,-8(a3)
   11296:	ff072c23          	sw	a6,-8(a4)
   1129a:	ffc6a803          	lw	a6,-4(a3)
   1129e:	ff072e23          	sw	a6,-4(a4)
   112a2:	fcf71ee3          	bne	a4,a5,1127e <memmove+0x62>
   112a6:	00c67713          	and	a4,a2,12
   112aa:	95c6                	add	a1,a1,a7
   112ac:	00f67813          	and	a6,a2,15
   112b0:	cf0d                	beqz	a4,112ea <memmove+0xce>
   112b2:	86ae                	mv	a3,a1
   112b4:	873e                	mv	a4,a5
   112b6:	01078eb3          	add	t4,a5,a6
   112ba:	4e0d                	li	t3,3
   112bc:	0006a303          	lw	t1,0(a3)
   112c0:	0711                	add	a4,a4,4
   112c2:	40ee88b3          	sub	a7,t4,a4
   112c6:	fe672e23          	sw	t1,-4(a4)
   112ca:	0691                	add	a3,a3,4
   112cc:	ff1e68e3          	bltu	t3,a7,112bc <memmove+0xa0>
   112d0:	ffc80713          	add	a4,a6,-4
   112d4:	9b71                	and	a4,a4,-4
   112d6:	0711                	add	a4,a4,4
   112d8:	8a0d                	and	a2,a2,3
   112da:	97ba                	add	a5,a5,a4
   112dc:	95ba                	add	a1,a1,a4
   112de:	b7ad                	j	11248 <memmove+0x2c>
   112e0:	fff60693          	add	a3,a2,-1
   112e4:	87aa                	mv	a5,a0
   112e6:	b7a5                	j	1124e <memmove+0x32>
   112e8:	8082                	ret
   112ea:	8642                	mv	a2,a6
   112ec:	bfb1                	j	11248 <memmove+0x2c>

000112ee <__malloc_lock>:
   112ee:	8082                	ret

000112f0 <__malloc_unlock>:
   112f0:	8082                	ret

000112f2 <_realloc_r>:
   112f2:	7179                	add	sp,sp,-48
   112f4:	d226                	sw	s1,36(sp)
   112f6:	d606                	sw	ra,44(sp)
   112f8:	d422                	sw	s0,40(sp)
   112fa:	d04a                	sw	s2,32(sp)
   112fc:	ce4e                	sw	s3,28(sp)
   112fe:	cc52                	sw	s4,24(sp)
   11300:	ca56                	sw	s5,20(sp)
   11302:	c85a                	sw	s6,16(sp)
   11304:	c65e                	sw	s7,12(sp)
   11306:	c462                	sw	s8,8(sp)
   11308:	84b2                	mv	s1,a2
   1130a:	12058e63          	beqz	a1,11446 <_realloc_r+0x154>
   1130e:	842e                	mv	s0,a1
   11310:	892a                	mv	s2,a0
   11312:	3ff1                	jal	112ee <__malloc_lock>
   11314:	ffc42703          	lw	a4,-4(s0)
   11318:	00b48793          	add	a5,s1,11
   1131c:	46d9                	li	a3,22
   1131e:	ff840a93          	add	s5,s0,-8
   11322:	ffc77993          	and	s3,a4,-4
   11326:	0af6f763          	bgeu	a3,a5,113d4 <_realloc_r+0xe2>
   1132a:	ff87fa13          	and	s4,a5,-8
   1132e:	0a07c663          	bltz	a5,113da <_realloc_r+0xe8>
   11332:	0a9a6463          	bltu	s4,s1,113da <_realloc_r+0xe8>
   11336:	0b49dc63          	bge	s3,s4,113ee <_realloc_r+0xfc>
   1133a:	c2818c13          	add	s8,gp,-984 # 138c8 <__malloc_av_>
   1133e:	008c2603          	lw	a2,8(s8)
   11342:	013a86b3          	add	a3,s5,s3
   11346:	42dc                	lw	a5,4(a3)
   11348:	12d60f63          	beq	a2,a3,11486 <_realloc_r+0x194>
   1134c:	ffe7f613          	and	a2,a5,-2
   11350:	9636                	add	a2,a2,a3
   11352:	4250                	lw	a2,4(a2)
   11354:	8a05                	and	a2,a2,1
   11356:	ee71                	bnez	a2,11432 <_realloc_r+0x140>
   11358:	9bf1                	and	a5,a5,-4
   1135a:	00f98633          	add	a2,s3,a5
   1135e:	09465363          	bge	a2,s4,113e4 <_realloc_r+0xf2>
   11362:	8b05                	and	a4,a4,1
   11364:	e30d                	bnez	a4,11386 <_realloc_r+0x94>
   11366:	ff842b83          	lw	s7,-8(s0)
   1136a:	417a8bb3          	sub	s7,s5,s7
   1136e:	004ba703          	lw	a4,4(s7)
   11372:	9b71                	and	a4,a4,-4
   11374:	97ba                	add	a5,a5,a4
   11376:	01378b33          	add	s6,a5,s3
   1137a:	234b5763          	bge	s6,s4,115a8 <_realloc_r+0x2b6>
   1137e:	00e98b33          	add	s6,s3,a4
   11382:	1d4b5063          	bge	s6,s4,11542 <_realloc_r+0x250>
   11386:	85a6                	mv	a1,s1
   11388:	854a                	mv	a0,s2
   1138a:	f3aff0ef          	jal	10ac4 <_malloc_r>
   1138e:	84aa                	mv	s1,a0
   11390:	2c050763          	beqz	a0,1165e <_realloc_r+0x36c>
   11394:	ffc42783          	lw	a5,-4(s0)
   11398:	ff850713          	add	a4,a0,-8
   1139c:	9bf9                	and	a5,a5,-2
   1139e:	97d6                	add	a5,a5,s5
   113a0:	18e78c63          	beq	a5,a4,11538 <_realloc_r+0x246>
   113a4:	ffc98613          	add	a2,s3,-4
   113a8:	02400793          	li	a5,36
   113ac:	1ec7eb63          	bltu	a5,a2,115a2 <_realloc_r+0x2b0>
   113b0:	474d                	li	a4,19
   113b2:	16c76763          	bltu	a4,a2,11520 <_realloc_r+0x22e>
   113b6:	87aa                	mv	a5,a0
   113b8:	8722                	mv	a4,s0
   113ba:	4314                	lw	a3,0(a4)
   113bc:	c394                	sw	a3,0(a5)
   113be:	4354                	lw	a3,4(a4)
   113c0:	c3d4                	sw	a3,4(a5)
   113c2:	4718                	lw	a4,8(a4)
   113c4:	c798                	sw	a4,8(a5)
   113c6:	854a                	mv	a0,s2
   113c8:	85a2                	mv	a1,s0
   113ca:	125000ef          	jal	11cee <_free_r>
   113ce:	854a                	mv	a0,s2
   113d0:	3705                	jal	112f0 <__malloc_unlock>
   113d2:	a099                	j	11418 <_realloc_r+0x126>
   113d4:	4a41                	li	s4,16
   113d6:	f69a70e3          	bgeu	s4,s1,11336 <_realloc_r+0x44>
   113da:	47b1                	li	a5,12
   113dc:	00f92023          	sw	a5,0(s2)
   113e0:	4481                	li	s1,0
   113e2:	a81d                	j	11418 <_realloc_r+0x126>
   113e4:	46dc                	lw	a5,12(a3)
   113e6:	4698                	lw	a4,8(a3)
   113e8:	89b2                	mv	s3,a2
   113ea:	c75c                	sw	a5,12(a4)
   113ec:	c798                	sw	a4,8(a5)
   113ee:	004aa783          	lw	a5,4(s5)
   113f2:	414986b3          	sub	a3,s3,s4
   113f6:	463d                	li	a2,15
   113f8:	8b85                	and	a5,a5,1
   113fa:	013a8733          	add	a4,s5,s3
   113fe:	06d66263          	bltu	a2,a3,11462 <_realloc_r+0x170>
   11402:	0137e7b3          	or	a5,a5,s3
   11406:	00faa223          	sw	a5,4(s5)
   1140a:	435c                	lw	a5,4(a4)
   1140c:	0017e793          	or	a5,a5,1
   11410:	c35c                	sw	a5,4(a4)
   11412:	854a                	mv	a0,s2
   11414:	3df1                	jal	112f0 <__malloc_unlock>
   11416:	84a2                	mv	s1,s0
   11418:	50b2                	lw	ra,44(sp)
   1141a:	5422                	lw	s0,40(sp)
   1141c:	5902                	lw	s2,32(sp)
   1141e:	49f2                	lw	s3,28(sp)
   11420:	4a62                	lw	s4,24(sp)
   11422:	4ad2                	lw	s5,20(sp)
   11424:	4b42                	lw	s6,16(sp)
   11426:	4bb2                	lw	s7,12(sp)
   11428:	4c22                	lw	s8,8(sp)
   1142a:	8526                	mv	a0,s1
   1142c:	5492                	lw	s1,36(sp)
   1142e:	6145                	add	sp,sp,48
   11430:	8082                	ret
   11432:	8b05                	and	a4,a4,1
   11434:	fb29                	bnez	a4,11386 <_realloc_r+0x94>
   11436:	ff842b83          	lw	s7,-8(s0)
   1143a:	417a8bb3          	sub	s7,s5,s7
   1143e:	004ba703          	lw	a4,4(s7)
   11442:	9b71                	and	a4,a4,-4
   11444:	bf2d                	j	1137e <_realloc_r+0x8c>
   11446:	5422                	lw	s0,40(sp)
   11448:	50b2                	lw	ra,44(sp)
   1144a:	5492                	lw	s1,36(sp)
   1144c:	5902                	lw	s2,32(sp)
   1144e:	49f2                	lw	s3,28(sp)
   11450:	4a62                	lw	s4,24(sp)
   11452:	4ad2                	lw	s5,20(sp)
   11454:	4b42                	lw	s6,16(sp)
   11456:	4bb2                	lw	s7,12(sp)
   11458:	4c22                	lw	s8,8(sp)
   1145a:	85b2                	mv	a1,a2
   1145c:	6145                	add	sp,sp,48
   1145e:	e66ff06f          	j	10ac4 <_malloc_r>
   11462:	0147e7b3          	or	a5,a5,s4
   11466:	00faa223          	sw	a5,4(s5)
   1146a:	014a85b3          	add	a1,s5,s4
   1146e:	0016e693          	or	a3,a3,1
   11472:	c1d4                	sw	a3,4(a1)
   11474:	435c                	lw	a5,4(a4)
   11476:	05a1                	add	a1,a1,8
   11478:	854a                	mv	a0,s2
   1147a:	0017e793          	or	a5,a5,1
   1147e:	c35c                	sw	a5,4(a4)
   11480:	06f000ef          	jal	11cee <_free_r>
   11484:	b779                	j	11412 <_realloc_r+0x120>
   11486:	9bf1                	and	a5,a5,-4
   11488:	013786b3          	add	a3,a5,s3
   1148c:	010a0613          	add	a2,s4,16
   11490:	18c6df63          	bge	a3,a2,1162e <_realloc_r+0x33c>
   11494:	8b05                	and	a4,a4,1
   11496:	ee0718e3          	bnez	a4,11386 <_realloc_r+0x94>
   1149a:	ff842b83          	lw	s7,-8(s0)
   1149e:	417a8bb3          	sub	s7,s5,s7
   114a2:	004ba703          	lw	a4,4(s7)
   114a6:	9b71                	and	a4,a4,-4
   114a8:	97ba                	add	a5,a5,a4
   114aa:	01378b33          	add	s6,a5,s3
   114ae:	eccb48e3          	blt	s6,a2,1137e <_realloc_r+0x8c>
   114b2:	00cba783          	lw	a5,12(s7)
   114b6:	008ba703          	lw	a4,8(s7)
   114ba:	ffc98613          	add	a2,s3,-4
   114be:	02400693          	li	a3,36
   114c2:	c75c                	sw	a5,12(a4)
   114c4:	c798                	sw	a4,8(a5)
   114c6:	008b8493          	add	s1,s7,8
   114ca:	1ac6e763          	bltu	a3,a2,11678 <_realloc_r+0x386>
   114ce:	474d                	li	a4,19
   114d0:	87a6                	mv	a5,s1
   114d2:	00c77e63          	bgeu	a4,a2,114ee <_realloc_r+0x1fc>
   114d6:	4018                	lw	a4,0(s0)
   114d8:	47ed                	li	a5,27
   114da:	00eba423          	sw	a4,8(s7)
   114de:	4058                	lw	a4,4(s0)
   114e0:	00eba623          	sw	a4,12(s7)
   114e4:	18c7ee63          	bltu	a5,a2,11680 <_realloc_r+0x38e>
   114e8:	0421                	add	s0,s0,8
   114ea:	010b8793          	add	a5,s7,16
   114ee:	4018                	lw	a4,0(s0)
   114f0:	c398                	sw	a4,0(a5)
   114f2:	4058                	lw	a4,4(s0)
   114f4:	c3d8                	sw	a4,4(a5)
   114f6:	4418                	lw	a4,8(s0)
   114f8:	c798                	sw	a4,8(a5)
   114fa:	014b8733          	add	a4,s7,s4
   114fe:	414b0b33          	sub	s6,s6,s4
   11502:	00ec2423          	sw	a4,8(s8)
   11506:	001b6793          	or	a5,s6,1
   1150a:	c35c                	sw	a5,4(a4)
   1150c:	004ba783          	lw	a5,4(s7)
   11510:	854a                	mv	a0,s2
   11512:	8b85                	and	a5,a5,1
   11514:	0147e7b3          	or	a5,a5,s4
   11518:	00fba223          	sw	a5,4(s7)
   1151c:	3bd1                	jal	112f0 <__malloc_unlock>
   1151e:	bded                	j	11418 <_realloc_r+0x126>
   11520:	4014                	lw	a3,0(s0)
   11522:	476d                	li	a4,27
   11524:	c114                	sw	a3,0(a0)
   11526:	4054                	lw	a3,4(s0)
   11528:	c154                	sw	a3,4(a0)
   1152a:	0ec76763          	bltu	a4,a2,11618 <_realloc_r+0x326>
   1152e:	00840713          	add	a4,s0,8
   11532:	00850793          	add	a5,a0,8
   11536:	b551                	j	113ba <_realloc_r+0xc8>
   11538:	ffc52783          	lw	a5,-4(a0)
   1153c:	9bf1                	and	a5,a5,-4
   1153e:	99be                	add	s3,s3,a5
   11540:	b57d                	j	113ee <_realloc_r+0xfc>
   11542:	00cba783          	lw	a5,12(s7)
   11546:	008ba703          	lw	a4,8(s7)
   1154a:	ffc98613          	add	a2,s3,-4
   1154e:	02400693          	li	a3,36
   11552:	c75c                	sw	a5,12(a4)
   11554:	c798                	sw	a4,8(a5)
   11556:	008b8493          	add	s1,s7,8
   1155a:	0ac6eb63          	bltu	a3,a2,11610 <_realloc_r+0x31e>
   1155e:	474d                	li	a4,19
   11560:	87a6                	mv	a5,s1
   11562:	02c77663          	bgeu	a4,a2,1158e <_realloc_r+0x29c>
   11566:	4018                	lw	a4,0(s0)
   11568:	47ed                	li	a5,27
   1156a:	00eba423          	sw	a4,8(s7)
   1156e:	4058                	lw	a4,4(s0)
   11570:	00eba623          	sw	a4,12(s7)
   11574:	0ec7f163          	bgeu	a5,a2,11656 <_realloc_r+0x364>
   11578:	441c                	lw	a5,8(s0)
   1157a:	00fba823          	sw	a5,16(s7)
   1157e:	445c                	lw	a5,12(s0)
   11580:	00fbaa23          	sw	a5,20(s7)
   11584:	06d60b63          	beq	a2,a3,115fa <_realloc_r+0x308>
   11588:	0441                	add	s0,s0,16
   1158a:	018b8793          	add	a5,s7,24
   1158e:	4018                	lw	a4,0(s0)
   11590:	c398                	sw	a4,0(a5)
   11592:	4058                	lw	a4,4(s0)
   11594:	c3d8                	sw	a4,4(a5)
   11596:	4418                	lw	a4,8(s0)
   11598:	c798                	sw	a4,8(a5)
   1159a:	8426                	mv	s0,s1
   1159c:	89da                	mv	s3,s6
   1159e:	8ade                	mv	s5,s7
   115a0:	b5b9                	j	113ee <_realloc_r+0xfc>
   115a2:	85a2                	mv	a1,s0
   115a4:	39a5                	jal	1121c <memmove>
   115a6:	b505                	j	113c6 <_realloc_r+0xd4>
   115a8:	46dc                	lw	a5,12(a3)
   115aa:	4698                	lw	a4,8(a3)
   115ac:	ffc98613          	add	a2,s3,-4
   115b0:	02400693          	li	a3,36
   115b4:	c75c                	sw	a5,12(a4)
   115b6:	c798                	sw	a4,8(a5)
   115b8:	008ba703          	lw	a4,8(s7)
   115bc:	00cba783          	lw	a5,12(s7)
   115c0:	008b8493          	add	s1,s7,8
   115c4:	c75c                	sw	a5,12(a4)
   115c6:	c798                	sw	a4,8(a5)
   115c8:	04c6e463          	bltu	a3,a2,11610 <_realloc_r+0x31e>
   115cc:	474d                	li	a4,19
   115ce:	87a6                	mv	a5,s1
   115d0:	fac77fe3          	bgeu	a4,a2,1158e <_realloc_r+0x29c>
   115d4:	4018                	lw	a4,0(s0)
   115d6:	47ed                	li	a5,27
   115d8:	00eba423          	sw	a4,8(s7)
   115dc:	4058                	lw	a4,4(s0)
   115de:	00eba623          	sw	a4,12(s7)
   115e2:	06c7fa63          	bgeu	a5,a2,11656 <_realloc_r+0x364>
   115e6:	4418                	lw	a4,8(s0)
   115e8:	02400793          	li	a5,36
   115ec:	00eba823          	sw	a4,16(s7)
   115f0:	4458                	lw	a4,12(s0)
   115f2:	00ebaa23          	sw	a4,20(s7)
   115f6:	f8f619e3          	bne	a2,a5,11588 <_realloc_r+0x296>
   115fa:	4818                	lw	a4,16(s0)
   115fc:	020b8793          	add	a5,s7,32
   11600:	0461                	add	s0,s0,24
   11602:	00ebac23          	sw	a4,24(s7)
   11606:	ffc42703          	lw	a4,-4(s0)
   1160a:	00ebae23          	sw	a4,28(s7)
   1160e:	b741                	j	1158e <_realloc_r+0x29c>
   11610:	85a2                	mv	a1,s0
   11612:	8526                	mv	a0,s1
   11614:	3121                	jal	1121c <memmove>
   11616:	b751                	j	1159a <_realloc_r+0x2a8>
   11618:	4418                	lw	a4,8(s0)
   1161a:	c518                	sw	a4,8(a0)
   1161c:	4458                	lw	a4,12(s0)
   1161e:	c558                	sw	a4,12(a0)
   11620:	04f60363          	beq	a2,a5,11666 <_realloc_r+0x374>
   11624:	01040713          	add	a4,s0,16
   11628:	01050793          	add	a5,a0,16
   1162c:	b379                	j	113ba <_realloc_r+0xc8>
   1162e:	9ad2                	add	s5,s5,s4
   11630:	414686b3          	sub	a3,a3,s4
   11634:	015c2423          	sw	s5,8(s8)
   11638:	0016e793          	or	a5,a3,1
   1163c:	00faa223          	sw	a5,4(s5)
   11640:	ffc42783          	lw	a5,-4(s0)
   11644:	854a                	mv	a0,s2
   11646:	84a2                	mv	s1,s0
   11648:	8b85                	and	a5,a5,1
   1164a:	0147e7b3          	or	a5,a5,s4
   1164e:	fef42e23          	sw	a5,-4(s0)
   11652:	3979                	jal	112f0 <__malloc_unlock>
   11654:	b3d1                	j	11418 <_realloc_r+0x126>
   11656:	0421                	add	s0,s0,8
   11658:	010b8793          	add	a5,s7,16
   1165c:	bf0d                	j	1158e <_realloc_r+0x29c>
   1165e:	854a                	mv	a0,s2
   11660:	3941                	jal	112f0 <__malloc_unlock>
   11662:	4481                	li	s1,0
   11664:	bb55                	j	11418 <_realloc_r+0x126>
   11666:	4814                	lw	a3,16(s0)
   11668:	01840713          	add	a4,s0,24
   1166c:	01850793          	add	a5,a0,24
   11670:	c914                	sw	a3,16(a0)
   11672:	4854                	lw	a3,20(s0)
   11674:	c954                	sw	a3,20(a0)
   11676:	b391                	j	113ba <_realloc_r+0xc8>
   11678:	85a2                	mv	a1,s0
   1167a:	8526                	mv	a0,s1
   1167c:	3645                	jal	1121c <memmove>
   1167e:	bdb5                	j	114fa <_realloc_r+0x208>
   11680:	441c                	lw	a5,8(s0)
   11682:	00fba823          	sw	a5,16(s7)
   11686:	445c                	lw	a5,12(s0)
   11688:	00fbaa23          	sw	a5,20(s7)
   1168c:	00d60663          	beq	a2,a3,11698 <_realloc_r+0x3a6>
   11690:	0441                	add	s0,s0,16
   11692:	018b8793          	add	a5,s7,24
   11696:	bda1                	j	114ee <_realloc_r+0x1fc>
   11698:	4818                	lw	a4,16(s0)
   1169a:	020b8793          	add	a5,s7,32
   1169e:	00ebac23          	sw	a4,24(s7)
   116a2:	4858                	lw	a4,20(s0)
   116a4:	0461                	add	s0,s0,24
   116a6:	00ebae23          	sw	a4,28(s7)
   116aa:	b591                	j	114ee <_realloc_r+0x1fc>

000116ac <_sbrk_r>:
   116ac:	1141                	add	sp,sp,-16
   116ae:	c422                	sw	s0,8(sp)
   116b0:	c226                	sw	s1,4(sp)
   116b2:	842a                	mv	s0,a0
   116b4:	852e                	mv	a0,a1
   116b6:	c606                	sw	ra,12(sp)
   116b8:	0401a823          	sw	zero,80(gp) # 13cf0 <errno>
   116bc:	4bb000ef          	jal	12376 <_sbrk>
   116c0:	57fd                	li	a5,-1
   116c2:	00f50763          	beq	a0,a5,116d0 <_sbrk_r+0x24>
   116c6:	40b2                	lw	ra,12(sp)
   116c8:	4422                	lw	s0,8(sp)
   116ca:	4492                	lw	s1,4(sp)
   116cc:	0141                	add	sp,sp,16
   116ce:	8082                	ret
   116d0:	0501a783          	lw	a5,80(gp) # 13cf0 <errno>
   116d4:	dbed                	beqz	a5,116c6 <_sbrk_r+0x1a>
   116d6:	40b2                	lw	ra,12(sp)
   116d8:	c01c                	sw	a5,0(s0)
   116da:	4422                	lw	s0,8(sp)
   116dc:	4492                	lw	s1,4(sp)
   116de:	0141                	add	sp,sp,16
   116e0:	8082                	ret

000116e2 <__sread>:
   116e2:	1141                	add	sp,sp,-16
   116e4:	c422                	sw	s0,8(sp)
   116e6:	842e                	mv	s0,a1
   116e8:	00e59583          	lh	a1,14(a1)
   116ec:	c606                	sw	ra,12(sp)
   116ee:	1eb000ef          	jal	120d8 <_read_r>
   116f2:	00054963          	bltz	a0,11704 <__sread+0x22>
   116f6:	483c                	lw	a5,80(s0)
   116f8:	40b2                	lw	ra,12(sp)
   116fa:	97aa                	add	a5,a5,a0
   116fc:	c83c                	sw	a5,80(s0)
   116fe:	4422                	lw	s0,8(sp)
   11700:	0141                	add	sp,sp,16
   11702:	8082                	ret
   11704:	00c45783          	lhu	a5,12(s0)
   11708:	777d                	lui	a4,0xfffff
   1170a:	177d                	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb2c3>
   1170c:	8ff9                	and	a5,a5,a4
   1170e:	40b2                	lw	ra,12(sp)
   11710:	00f41623          	sh	a5,12(s0)
   11714:	4422                	lw	s0,8(sp)
   11716:	0141                	add	sp,sp,16
   11718:	8082                	ret

0001171a <__seofread>:
   1171a:	4501                	li	a0,0
   1171c:	8082                	ret

0001171e <__swrite>:
   1171e:	00c59783          	lh	a5,12(a1)
   11722:	1101                	add	sp,sp,-32
   11724:	cc22                	sw	s0,24(sp)
   11726:	ca26                	sw	s1,20(sp)
   11728:	c84a                	sw	s2,16(sp)
   1172a:	c64e                	sw	s3,12(sp)
   1172c:	ce06                	sw	ra,28(sp)
   1172e:	1007f713          	and	a4,a5,256
   11732:	842e                	mv	s0,a1
   11734:	84aa                	mv	s1,a0
   11736:	8932                	mv	s2,a2
   11738:	89b6                	mv	s3,a3
   1173a:	e315                	bnez	a4,1175e <__swrite+0x40>
   1173c:	777d                	lui	a4,0xfffff
   1173e:	177d                	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb2c3>
   11740:	8ff9                	and	a5,a5,a4
   11742:	00e41583          	lh	a1,14(s0)
   11746:	00f41623          	sh	a5,12(s0)
   1174a:	4462                	lw	s0,24(sp)
   1174c:	40f2                	lw	ra,28(sp)
   1174e:	86ce                	mv	a3,s3
   11750:	864a                	mv	a2,s2
   11752:	49b2                	lw	s3,12(sp)
   11754:	4942                	lw	s2,16(sp)
   11756:	8526                	mv	a0,s1
   11758:	44d2                	lw	s1,20(sp)
   1175a:	6105                	add	sp,sp,32
   1175c:	a095                	j	117c0 <_write_r>
   1175e:	00e59583          	lh	a1,14(a1)
   11762:	4689                	li	a3,2
   11764:	4601                	li	a2,0
   11766:	7a8000ef          	jal	11f0e <_lseek_r>
   1176a:	00c41783          	lh	a5,12(s0)
   1176e:	b7f9                	j	1173c <__swrite+0x1e>

00011770 <__sseek>:
   11770:	1141                	add	sp,sp,-16
   11772:	c422                	sw	s0,8(sp)
   11774:	842e                	mv	s0,a1
   11776:	00e59583          	lh	a1,14(a1)
   1177a:	c606                	sw	ra,12(sp)
   1177c:	792000ef          	jal	11f0e <_lseek_r>
   11780:	57fd                	li	a5,-1
   11782:	00f50f63          	beq	a0,a5,117a0 <__sseek+0x30>
   11786:	00c45783          	lhu	a5,12(s0)
   1178a:	6705                	lui	a4,0x1
   1178c:	40b2                	lw	ra,12(sp)
   1178e:	8fd9                	or	a5,a5,a4
   11790:	07c2                	sll	a5,a5,0x10
   11792:	87c1                	sra	a5,a5,0x10
   11794:	c828                	sw	a0,80(s0)
   11796:	00f41623          	sh	a5,12(s0)
   1179a:	4422                	lw	s0,8(sp)
   1179c:	0141                	add	sp,sp,16
   1179e:	8082                	ret
   117a0:	00c45783          	lhu	a5,12(s0)
   117a4:	777d                	lui	a4,0xfffff
   117a6:	177d                	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb2c3>
   117a8:	8ff9                	and	a5,a5,a4
   117aa:	07c2                	sll	a5,a5,0x10
   117ac:	87c1                	sra	a5,a5,0x10
   117ae:	40b2                	lw	ra,12(sp)
   117b0:	00f41623          	sh	a5,12(s0)
   117b4:	4422                	lw	s0,8(sp)
   117b6:	0141                	add	sp,sp,16
   117b8:	8082                	ret

000117ba <__sclose>:
   117ba:	00e59583          	lh	a1,14(a1)
   117be:	a249                	j	11940 <_close_r>

000117c0 <_write_r>:
   117c0:	1141                	add	sp,sp,-16
   117c2:	872e                	mv	a4,a1
   117c4:	c422                	sw	s0,8(sp)
   117c6:	c226                	sw	s1,4(sp)
   117c8:	85b2                	mv	a1,a2
   117ca:	842a                	mv	s0,a0
   117cc:	8636                	mv	a2,a3
   117ce:	853a                	mv	a0,a4
   117d0:	c606                	sw	ra,12(sp)
   117d2:	0401a823          	sw	zero,80(gp) # 13cf0 <errno>
   117d6:	3f3000ef          	jal	123c8 <_write>
   117da:	57fd                	li	a5,-1
   117dc:	00f50763          	beq	a0,a5,117ea <_write_r+0x2a>
   117e0:	40b2                	lw	ra,12(sp)
   117e2:	4422                	lw	s0,8(sp)
   117e4:	4492                	lw	s1,4(sp)
   117e6:	0141                	add	sp,sp,16
   117e8:	8082                	ret
   117ea:	0501a783          	lw	a5,80(gp) # 13cf0 <errno>
   117ee:	dbed                	beqz	a5,117e0 <_write_r+0x20>
   117f0:	40b2                	lw	ra,12(sp)
   117f2:	c01c                	sw	a5,0(s0)
   117f4:	4422                	lw	s0,8(sp)
   117f6:	4492                	lw	s1,4(sp)
   117f8:	0141                	add	sp,sp,16
   117fa:	8082                	ret

000117fc <__swsetup_r>:
   117fc:	0381a783          	lw	a5,56(gp) # 13cd8 <_impure_ptr>
   11800:	1141                	add	sp,sp,-16
   11802:	c422                	sw	s0,8(sp)
   11804:	c226                	sw	s1,4(sp)
   11806:	c606                	sw	ra,12(sp)
   11808:	84aa                	mv	s1,a0
   1180a:	842e                	mv	s0,a1
   1180c:	c399                	beqz	a5,11812 <__swsetup_r+0x16>
   1180e:	5f98                	lw	a4,56(a5)
   11810:	cb29                	beqz	a4,11862 <__swsetup_r+0x66>
   11812:	00c41783          	lh	a5,12(s0)
   11816:	0087f713          	and	a4,a5,8
   1181a:	cf21                	beqz	a4,11872 <__swsetup_r+0x76>
   1181c:	4818                	lw	a4,16(s0)
   1181e:	c735                	beqz	a4,1188a <__swsetup_r+0x8e>
   11820:	0017f693          	and	a3,a5,1
   11824:	ce91                	beqz	a3,11840 <__swsetup_r+0x44>
   11826:	4854                	lw	a3,20(s0)
   11828:	00042423          	sw	zero,8(s0)
   1182c:	4501                	li	a0,0
   1182e:	40d006b3          	neg	a3,a3
   11832:	cc14                	sw	a3,24(s0)
   11834:	cf11                	beqz	a4,11850 <__swsetup_r+0x54>
   11836:	40b2                	lw	ra,12(sp)
   11838:	4422                	lw	s0,8(sp)
   1183a:	4492                	lw	s1,4(sp)
   1183c:	0141                	add	sp,sp,16
   1183e:	8082                	ret
   11840:	0027f693          	and	a3,a5,2
   11844:	4601                	li	a2,0
   11846:	e291                	bnez	a3,1184a <__swsetup_r+0x4e>
   11848:	4850                	lw	a2,20(s0)
   1184a:	c410                	sw	a2,8(s0)
   1184c:	4501                	li	a0,0
   1184e:	f765                	bnez	a4,11836 <__swsetup_r+0x3a>
   11850:	0807f713          	and	a4,a5,128
   11854:	d36d                	beqz	a4,11836 <__swsetup_r+0x3a>
   11856:	0407e793          	or	a5,a5,64
   1185a:	00f41623          	sh	a5,12(s0)
   1185e:	557d                	li	a0,-1
   11860:	bfd9                	j	11836 <__swsetup_r+0x3a>
   11862:	853e                	mv	a0,a5
   11864:	e09fe0ef          	jal	1066c <__sinit>
   11868:	00c41783          	lh	a5,12(s0)
   1186c:	0087f713          	and	a4,a5,8
   11870:	f755                	bnez	a4,1181c <__swsetup_r+0x20>
   11872:	0107f713          	and	a4,a5,16
   11876:	cb31                	beqz	a4,118ca <__swsetup_r+0xce>
   11878:	0047f713          	and	a4,a5,4
   1187c:	e705                	bnez	a4,118a4 <__swsetup_r+0xa8>
   1187e:	4818                	lw	a4,16(s0)
   11880:	0087e793          	or	a5,a5,8
   11884:	00f41623          	sh	a5,12(s0)
   11888:	ff41                	bnez	a4,11820 <__swsetup_r+0x24>
   1188a:	2807f693          	and	a3,a5,640
   1188e:	20000613          	li	a2,512
   11892:	f8c687e3          	beq	a3,a2,11820 <__swsetup_r+0x24>
   11896:	85a2                	mv	a1,s0
   11898:	8526                	mv	a0,s1
   1189a:	257d                	jal	11f48 <__smakebuf_r>
   1189c:	00c41783          	lh	a5,12(s0)
   118a0:	4818                	lw	a4,16(s0)
   118a2:	bfbd                	j	11820 <__swsetup_r+0x24>
   118a4:	580c                	lw	a1,48(s0)
   118a6:	c999                	beqz	a1,118bc <__swsetup_r+0xc0>
   118a8:	04040713          	add	a4,s0,64
   118ac:	00e58663          	beq	a1,a4,118b8 <__swsetup_r+0xbc>
   118b0:	8526                	mv	a0,s1
   118b2:	2935                	jal	11cee <_free_r>
   118b4:	00c41783          	lh	a5,12(s0)
   118b8:	02042823          	sw	zero,48(s0)
   118bc:	4818                	lw	a4,16(s0)
   118be:	fdb7f793          	and	a5,a5,-37
   118c2:	00042223          	sw	zero,4(s0)
   118c6:	c018                	sw	a4,0(s0)
   118c8:	bf65                	j	11880 <__swsetup_r+0x84>
   118ca:	4725                	li	a4,9
   118cc:	c098                	sw	a4,0(s1)
   118ce:	0407e793          	or	a5,a5,64
   118d2:	b761                	j	1185a <__swsetup_r+0x5e>

000118d4 <__register_exitproc>:
   118d4:	0301a703          	lw	a4,48(gp) # 13cd0 <_global_impure_ptr>
   118d8:	14872783          	lw	a5,328(a4)
   118dc:	c3a1                	beqz	a5,1191c <__register_exitproc+0x48>
   118de:	43d8                	lw	a4,4(a5)
   118e0:	487d                	li	a6,31
   118e2:	04e84d63          	blt	a6,a4,1193c <__register_exitproc+0x68>
   118e6:	00271813          	sll	a6,a4,0x2
   118ea:	c11d                	beqz	a0,11910 <__register_exitproc+0x3c>
   118ec:	01078333          	add	t1,a5,a6
   118f0:	08c32423          	sw	a2,136(t1)
   118f4:	1887a883          	lw	a7,392(a5)
   118f8:	4605                	li	a2,1
   118fa:	00e61633          	sll	a2,a2,a4
   118fe:	00c8e8b3          	or	a7,a7,a2
   11902:	1917a423          	sw	a7,392(a5)
   11906:	10d32423          	sw	a3,264(t1)
   1190a:	4689                	li	a3,2
   1190c:	00d50d63          	beq	a0,a3,11926 <__register_exitproc+0x52>
   11910:	0705                	add	a4,a4,1
   11912:	c3d8                	sw	a4,4(a5)
   11914:	97c2                	add	a5,a5,a6
   11916:	c78c                	sw	a1,8(a5)
   11918:	4501                	li	a0,0
   1191a:	8082                	ret
   1191c:	14c70793          	add	a5,a4,332
   11920:	14f72423          	sw	a5,328(a4)
   11924:	bf6d                	j	118de <__register_exitproc+0xa>
   11926:	18c7a683          	lw	a3,396(a5)
   1192a:	0705                	add	a4,a4,1
   1192c:	c3d8                	sw	a4,4(a5)
   1192e:	8ed1                	or	a3,a3,a2
   11930:	18d7a623          	sw	a3,396(a5)
   11934:	97c2                	add	a5,a5,a6
   11936:	c78c                	sw	a1,8(a5)
   11938:	4501                	li	a0,0
   1193a:	8082                	ret
   1193c:	557d                	li	a0,-1
   1193e:	8082                	ret

00011940 <_close_r>:
   11940:	1141                	add	sp,sp,-16
   11942:	c422                	sw	s0,8(sp)
   11944:	c226                	sw	s1,4(sp)
   11946:	842a                	mv	s0,a0
   11948:	852e                	mv	a0,a1
   1194a:	c606                	sw	ra,12(sp)
   1194c:	0401a823          	sw	zero,80(gp) # 13cf0 <errno>
   11950:	12f000ef          	jal	1227e <_close>
   11954:	57fd                	li	a5,-1
   11956:	00f50763          	beq	a0,a5,11964 <_close_r+0x24>
   1195a:	40b2                	lw	ra,12(sp)
   1195c:	4422                	lw	s0,8(sp)
   1195e:	4492                	lw	s1,4(sp)
   11960:	0141                	add	sp,sp,16
   11962:	8082                	ret
   11964:	0501a783          	lw	a5,80(gp) # 13cf0 <errno>
   11968:	dbed                	beqz	a5,1195a <_close_r+0x1a>
   1196a:	40b2                	lw	ra,12(sp)
   1196c:	c01c                	sw	a5,0(s0)
   1196e:	4422                	lw	s0,8(sp)
   11970:	4492                	lw	s1,4(sp)
   11972:	0141                	add	sp,sp,16
   11974:	8082                	ret

00011976 <_fclose_r>:
   11976:	1141                	add	sp,sp,-16
   11978:	c606                	sw	ra,12(sp)
   1197a:	c422                	sw	s0,8(sp)
   1197c:	c226                	sw	s1,4(sp)
   1197e:	c04a                	sw	s2,0(sp)
   11980:	c989                	beqz	a1,11992 <_fclose_r+0x1c>
   11982:	842e                	mv	s0,a1
   11984:	84aa                	mv	s1,a0
   11986:	c119                	beqz	a0,1198c <_fclose_r+0x16>
   11988:	5d1c                	lw	a5,56(a0)
   1198a:	cbad                	beqz	a5,119fc <_fclose_r+0x86>
   1198c:	00c41783          	lh	a5,12(s0)
   11990:	eb89                	bnez	a5,119a2 <_fclose_r+0x2c>
   11992:	40b2                	lw	ra,12(sp)
   11994:	4422                	lw	s0,8(sp)
   11996:	4901                	li	s2,0
   11998:	4492                	lw	s1,4(sp)
   1199a:	854a                	mv	a0,s2
   1199c:	4902                	lw	s2,0(sp)
   1199e:	0141                	add	sp,sp,16
   119a0:	8082                	ret
   119a2:	85a2                	mv	a1,s0
   119a4:	8526                	mv	a0,s1
   119a6:	28bd                	jal	11a24 <__sflush_r>
   119a8:	545c                	lw	a5,44(s0)
   119aa:	892a                	mv	s2,a0
   119ac:	c791                	beqz	a5,119b8 <_fclose_r+0x42>
   119ae:	4c4c                	lw	a1,28(s0)
   119b0:	8526                	mv	a0,s1
   119b2:	9782                	jalr	a5
   119b4:	04054a63          	bltz	a0,11a08 <_fclose_r+0x92>
   119b8:	00c45783          	lhu	a5,12(s0)
   119bc:	0807f793          	and	a5,a5,128
   119c0:	ebb1                	bnez	a5,11a14 <_fclose_r+0x9e>
   119c2:	580c                	lw	a1,48(s0)
   119c4:	c989                	beqz	a1,119d6 <_fclose_r+0x60>
   119c6:	04040793          	add	a5,s0,64
   119ca:	00f58463          	beq	a1,a5,119d2 <_fclose_r+0x5c>
   119ce:	8526                	mv	a0,s1
   119d0:	2e39                	jal	11cee <_free_r>
   119d2:	02042823          	sw	zero,48(s0)
   119d6:	406c                	lw	a1,68(s0)
   119d8:	c589                	beqz	a1,119e2 <_fclose_r+0x6c>
   119da:	8526                	mv	a0,s1
   119dc:	2e09                	jal	11cee <_free_r>
   119de:	04042223          	sw	zero,68(s0)
   119e2:	c93fe0ef          	jal	10674 <__sfp_lock_acquire>
   119e6:	00041623          	sh	zero,12(s0)
   119ea:	c8dfe0ef          	jal	10676 <__sfp_lock_release>
   119ee:	40b2                	lw	ra,12(sp)
   119f0:	4422                	lw	s0,8(sp)
   119f2:	4492                	lw	s1,4(sp)
   119f4:	854a                	mv	a0,s2
   119f6:	4902                	lw	s2,0(sp)
   119f8:	0141                	add	sp,sp,16
   119fa:	8082                	ret
   119fc:	c71fe0ef          	jal	1066c <__sinit>
   11a00:	00c41783          	lh	a5,12(s0)
   11a04:	d7d9                	beqz	a5,11992 <_fclose_r+0x1c>
   11a06:	bf71                	j	119a2 <_fclose_r+0x2c>
   11a08:	00c45783          	lhu	a5,12(s0)
   11a0c:	597d                	li	s2,-1
   11a0e:	0807f793          	and	a5,a5,128
   11a12:	dbc5                	beqz	a5,119c2 <_fclose_r+0x4c>
   11a14:	480c                	lw	a1,16(s0)
   11a16:	8526                	mv	a0,s1
   11a18:	2cd9                	jal	11cee <_free_r>
   11a1a:	b765                	j	119c2 <_fclose_r+0x4c>

00011a1c <fclose>:
   11a1c:	85aa                	mv	a1,a0
   11a1e:	0381a503          	lw	a0,56(gp) # 13cd8 <_impure_ptr>
   11a22:	bf91                	j	11976 <_fclose_r>

00011a24 <__sflush_r>:
   11a24:	00c59783          	lh	a5,12(a1)
   11a28:	1101                	add	sp,sp,-32
   11a2a:	cc22                	sw	s0,24(sp)
   11a2c:	c64e                	sw	s3,12(sp)
   11a2e:	ce06                	sw	ra,28(sp)
   11a30:	ca26                	sw	s1,20(sp)
   11a32:	c84a                	sw	s2,16(sp)
   11a34:	0087f713          	and	a4,a5,8
   11a38:	842e                	mv	s0,a1
   11a3a:	89aa                	mv	s3,a0
   11a3c:	e361                	bnez	a4,11afc <__sflush_r+0xd8>
   11a3e:	6705                	lui	a4,0x1
   11a40:	80070713          	add	a4,a4,-2048 # 800 <exit-0xf894>
   11a44:	41d4                	lw	a3,4(a1)
   11a46:	8f5d                	or	a4,a4,a5
   11a48:	00e59623          	sh	a4,12(a1)
   11a4c:	10d05363          	blez	a3,11b52 <__sflush_r+0x12e>
   11a50:	02842803          	lw	a6,40(s0)
   11a54:	08080c63          	beqz	a6,11aec <__sflush_r+0xc8>
   11a58:	83b1                	srl	a5,a5,0xc
   11a5a:	0009a483          	lw	s1,0(s3)
   11a5e:	8b85                	and	a5,a5,1
   11a60:	0009a023          	sw	zero,0(s3)
   11a64:	4c4c                	lw	a1,28(s0)
   11a66:	ebfd                	bnez	a5,11b5c <__sflush_r+0x138>
   11a68:	4601                	li	a2,0
   11a6a:	4685                	li	a3,1
   11a6c:	854e                	mv	a0,s3
   11a6e:	9802                	jalr	a6
   11a70:	57fd                	li	a5,-1
   11a72:	862a                	mv	a2,a0
   11a74:	10f50763          	beq	a0,a5,11b82 <__sflush_r+0x15e>
   11a78:	00c41703          	lh	a4,12(s0)
   11a7c:	02842803          	lw	a6,40(s0)
   11a80:	4c4c                	lw	a1,28(s0)
   11a82:	8b11                	and	a4,a4,4
   11a84:	c719                	beqz	a4,11a92 <__sflush_r+0x6e>
   11a86:	4058                	lw	a4,4(s0)
   11a88:	581c                	lw	a5,48(s0)
   11a8a:	8e19                	sub	a2,a2,a4
   11a8c:	c399                	beqz	a5,11a92 <__sflush_r+0x6e>
   11a8e:	5c5c                	lw	a5,60(s0)
   11a90:	8e1d                	sub	a2,a2,a5
   11a92:	4681                	li	a3,0
   11a94:	854e                	mv	a0,s3
   11a96:	9802                	jalr	a6
   11a98:	57fd                	li	a5,-1
   11a9a:	0cf51363          	bne	a0,a5,11b60 <__sflush_r+0x13c>
   11a9e:	0009a683          	lw	a3,0(s3)
   11aa2:	47f5                	li	a5,29
   11aa4:	08d7e963          	bltu	a5,a3,11b36 <__sflush_r+0x112>
   11aa8:	dfc00737          	lui	a4,0xdfc00
   11aac:	1779                	add	a4,a4,-2 # dfbffffe <__BSS_END__+0xdfbec2c2>
   11aae:	40d75733          	sra	a4,a4,a3
   11ab2:	8b05                	and	a4,a4,1
   11ab4:	00c41783          	lh	a5,12(s0)
   11ab8:	e349                	bnez	a4,11b3a <__sflush_r+0x116>
   11aba:	4810                	lw	a2,16(s0)
   11abc:	777d                	lui	a4,0xfffff
   11abe:	7ff70713          	add	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebac3>
   11ac2:	8f7d                	and	a4,a4,a5
   11ac4:	83b1                	srl	a5,a5,0xc
   11ac6:	00e41623          	sh	a4,12(s0)
   11aca:	00042223          	sw	zero,4(s0)
   11ace:	c010                	sw	a2,0(s0)
   11ad0:	8b85                	and	a5,a5,1
   11ad2:	e7f1                	bnez	a5,11b9e <__sflush_r+0x17a>
   11ad4:	580c                	lw	a1,48(s0)
   11ad6:	0099a023          	sw	s1,0(s3)
   11ada:	c989                	beqz	a1,11aec <__sflush_r+0xc8>
   11adc:	04040793          	add	a5,s0,64
   11ae0:	00f58463          	beq	a1,a5,11ae8 <__sflush_r+0xc4>
   11ae4:	854e                	mv	a0,s3
   11ae6:	2421                	jal	11cee <_free_r>
   11ae8:	02042823          	sw	zero,48(s0)
   11aec:	4501                	li	a0,0
   11aee:	40f2                	lw	ra,28(sp)
   11af0:	4462                	lw	s0,24(sp)
   11af2:	44d2                	lw	s1,20(sp)
   11af4:	4942                	lw	s2,16(sp)
   11af6:	49b2                	lw	s3,12(sp)
   11af8:	6105                	add	sp,sp,32
   11afa:	8082                	ret
   11afc:	0105a903          	lw	s2,16(a1)
   11b00:	fe0906e3          	beqz	s2,11aec <__sflush_r+0xc8>
   11b04:	4184                	lw	s1,0(a1)
   11b06:	8b8d                	and	a5,a5,3
   11b08:	0125a023          	sw	s2,0(a1)
   11b0c:	412484b3          	sub	s1,s1,s2
   11b10:	4701                	li	a4,0
   11b12:	e391                	bnez	a5,11b16 <__sflush_r+0xf2>
   11b14:	49d8                	lw	a4,20(a1)
   11b16:	c418                	sw	a4,8(s0)
   11b18:	00904663          	bgtz	s1,11b24 <__sflush_r+0x100>
   11b1c:	bfc1                	j	11aec <__sflush_r+0xc8>
   11b1e:	992a                	add	s2,s2,a0
   11b20:	fc9056e3          	blez	s1,11aec <__sflush_r+0xc8>
   11b24:	505c                	lw	a5,36(s0)
   11b26:	4c4c                	lw	a1,28(s0)
   11b28:	86a6                	mv	a3,s1
   11b2a:	864a                	mv	a2,s2
   11b2c:	854e                	mv	a0,s3
   11b2e:	9782                	jalr	a5
   11b30:	8c89                	sub	s1,s1,a0
   11b32:	fea046e3          	bgtz	a0,11b1e <__sflush_r+0xfa>
   11b36:	00c41783          	lh	a5,12(s0)
   11b3a:	0407e793          	or	a5,a5,64
   11b3e:	40f2                	lw	ra,28(sp)
   11b40:	00f41623          	sh	a5,12(s0)
   11b44:	4462                	lw	s0,24(sp)
   11b46:	44d2                	lw	s1,20(sp)
   11b48:	4942                	lw	s2,16(sp)
   11b4a:	49b2                	lw	s3,12(sp)
   11b4c:	557d                	li	a0,-1
   11b4e:	6105                	add	sp,sp,32
   11b50:	8082                	ret
   11b52:	5dd4                	lw	a3,60(a1)
   11b54:	eed04ee3          	bgtz	a3,11a50 <__sflush_r+0x2c>
   11b58:	4501                	li	a0,0
   11b5a:	bf51                	j	11aee <__sflush_r+0xca>
   11b5c:	4830                	lw	a2,80(s0)
   11b5e:	b715                	j	11a82 <__sflush_r+0x5e>
   11b60:	00c41783          	lh	a5,12(s0)
   11b64:	4814                	lw	a3,16(s0)
   11b66:	777d                	lui	a4,0xfffff
   11b68:	7ff70713          	add	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebac3>
   11b6c:	8f7d                	and	a4,a4,a5
   11b6e:	83b1                	srl	a5,a5,0xc
   11b70:	00e41623          	sh	a4,12(s0)
   11b74:	00042223          	sw	zero,4(s0)
   11b78:	c014                	sw	a3,0(s0)
   11b7a:	8b85                	and	a5,a5,1
   11b7c:	dfa1                	beqz	a5,11ad4 <__sflush_r+0xb0>
   11b7e:	c828                	sw	a0,80(s0)
   11b80:	bf91                	j	11ad4 <__sflush_r+0xb0>
   11b82:	0009a783          	lw	a5,0(s3)
   11b86:	ee0789e3          	beqz	a5,11a78 <__sflush_r+0x54>
   11b8a:	4775                	li	a4,29
   11b8c:	00e78563          	beq	a5,a4,11b96 <__sflush_r+0x172>
   11b90:	4759                	li	a4,22
   11b92:	fae792e3          	bne	a5,a4,11b36 <__sflush_r+0x112>
   11b96:	0099a023          	sw	s1,0(s3)
   11b9a:	4501                	li	a0,0
   11b9c:	bf89                	j	11aee <__sflush_r+0xca>
   11b9e:	fa9d                	bnez	a3,11ad4 <__sflush_r+0xb0>
   11ba0:	c828                	sw	a0,80(s0)
   11ba2:	bf0d                	j	11ad4 <__sflush_r+0xb0>

00011ba4 <_fflush_r>:
   11ba4:	1101                	add	sp,sp,-32
   11ba6:	cc22                	sw	s0,24(sp)
   11ba8:	ce06                	sw	ra,28(sp)
   11baa:	842a                	mv	s0,a0
   11bac:	c119                	beqz	a0,11bb2 <_fflush_r+0xe>
   11bae:	5d1c                	lw	a5,56(a0)
   11bb0:	cb89                	beqz	a5,11bc2 <_fflush_r+0x1e>
   11bb2:	00c59783          	lh	a5,12(a1)
   11bb6:	ef89                	bnez	a5,11bd0 <_fflush_r+0x2c>
   11bb8:	40f2                	lw	ra,28(sp)
   11bba:	4462                	lw	s0,24(sp)
   11bbc:	4501                	li	a0,0
   11bbe:	6105                	add	sp,sp,32
   11bc0:	8082                	ret
   11bc2:	c62e                	sw	a1,12(sp)
   11bc4:	aa9fe0ef          	jal	1066c <__sinit>
   11bc8:	45b2                	lw	a1,12(sp)
   11bca:	00c59783          	lh	a5,12(a1)
   11bce:	d7ed                	beqz	a5,11bb8 <_fflush_r+0x14>
   11bd0:	8522                	mv	a0,s0
   11bd2:	4462                	lw	s0,24(sp)
   11bd4:	40f2                	lw	ra,28(sp)
   11bd6:	6105                	add	sp,sp,32
   11bd8:	b5b1                	j	11a24 <__sflush_r>

00011bda <fflush>:
   11bda:	cd1d                	beqz	a0,11c18 <fflush+0x3e>
   11bdc:	1101                	add	sp,sp,-32
   11bde:	cc22                	sw	s0,24(sp)
   11be0:	842a                	mv	s0,a0
   11be2:	0381a503          	lw	a0,56(gp) # 13cd8 <_impure_ptr>
   11be6:	ce06                	sw	ra,28(sp)
   11be8:	c119                	beqz	a0,11bee <fflush+0x14>
   11bea:	5d1c                	lw	a5,56(a0)
   11bec:	cf91                	beqz	a5,11c08 <fflush+0x2e>
   11bee:	00c41783          	lh	a5,12(s0)
   11bf2:	e791                	bnez	a5,11bfe <fflush+0x24>
   11bf4:	40f2                	lw	ra,28(sp)
   11bf6:	4462                	lw	s0,24(sp)
   11bf8:	4501                	li	a0,0
   11bfa:	6105                	add	sp,sp,32
   11bfc:	8082                	ret
   11bfe:	85a2                	mv	a1,s0
   11c00:	4462                	lw	s0,24(sp)
   11c02:	40f2                	lw	ra,28(sp)
   11c04:	6105                	add	sp,sp,32
   11c06:	bd39                	j	11a24 <__sflush_r>
   11c08:	c62a                	sw	a0,12(sp)
   11c0a:	a63fe0ef          	jal	1066c <__sinit>
   11c0e:	00c41783          	lh	a5,12(s0)
   11c12:	4532                	lw	a0,12(sp)
   11c14:	d3e5                	beqz	a5,11bf4 <fflush+0x1a>
   11c16:	b7e5                	j	11bfe <fflush+0x24>
   11c18:	0301a503          	lw	a0,48(gp) # 13cd0 <_global_impure_ptr>
   11c1c:	65c9                	lui	a1,0x12
   11c1e:	ba458593          	add	a1,a1,-1116 # 11ba4 <_fflush_r>
   11c22:	e2ffe06f          	j	10a50 <_fwalk_reent>

00011c26 <_malloc_trim_r>:
   11c26:	1101                	add	sp,sp,-32
   11c28:	c64e                	sw	s3,12(sp)
   11c2a:	cc22                	sw	s0,24(sp)
   11c2c:	ca26                	sw	s1,20(sp)
   11c2e:	c84a                	sw	s2,16(sp)
   11c30:	c452                	sw	s4,8(sp)
   11c32:	ce06                	sw	ra,28(sp)
   11c34:	8a2e                	mv	s4,a1
   11c36:	892a                	mv	s2,a0
   11c38:	c2818993          	add	s3,gp,-984 # 138c8 <__malloc_av_>
   11c3c:	eb2ff0ef          	jal	112ee <__malloc_lock>
   11c40:	0089a703          	lw	a4,8(s3)
   11c44:	6785                	lui	a5,0x1
   11c46:	fef78413          	add	s0,a5,-17 # fef <exit-0xf0a5>
   11c4a:	4344                	lw	s1,4(a4)
   11c4c:	98f1                	and	s1,s1,-4
   11c4e:	9426                	add	s0,s0,s1
   11c50:	41440433          	sub	s0,s0,s4
   11c54:	8031                	srl	s0,s0,0xc
   11c56:	147d                	add	s0,s0,-1
   11c58:	0432                	sll	s0,s0,0xc
   11c5a:	00f44b63          	blt	s0,a5,11c70 <_malloc_trim_r+0x4a>
   11c5e:	4581                	li	a1,0
   11c60:	854a                	mv	a0,s2
   11c62:	a4bff0ef          	jal	116ac <_sbrk_r>
   11c66:	0089a783          	lw	a5,8(s3)
   11c6a:	97a6                	add	a5,a5,s1
   11c6c:	00f50e63          	beq	a0,a5,11c88 <_malloc_trim_r+0x62>
   11c70:	854a                	mv	a0,s2
   11c72:	e7eff0ef          	jal	112f0 <__malloc_unlock>
   11c76:	40f2                	lw	ra,28(sp)
   11c78:	4462                	lw	s0,24(sp)
   11c7a:	44d2                	lw	s1,20(sp)
   11c7c:	4942                	lw	s2,16(sp)
   11c7e:	49b2                	lw	s3,12(sp)
   11c80:	4a22                	lw	s4,8(sp)
   11c82:	4501                	li	a0,0
   11c84:	6105                	add	sp,sp,32
   11c86:	8082                	ret
   11c88:	408005b3          	neg	a1,s0
   11c8c:	854a                	mv	a0,s2
   11c8e:	a1fff0ef          	jal	116ac <_sbrk_r>
   11c92:	57fd                	li	a5,-1
   11c94:	02f50963          	beq	a0,a5,11cc6 <_malloc_trim_r+0xa0>
   11c98:	07418793          	add	a5,gp,116 # 13d14 <__malloc_current_mallinfo>
   11c9c:	4398                	lw	a4,0(a5)
   11c9e:	0089a683          	lw	a3,8(s3)
   11ca2:	8c81                	sub	s1,s1,s0
   11ca4:	0014e493          	or	s1,s1,1
   11ca8:	8f01                	sub	a4,a4,s0
   11caa:	854a                	mv	a0,s2
   11cac:	c2c4                	sw	s1,4(a3)
   11cae:	c398                	sw	a4,0(a5)
   11cb0:	e40ff0ef          	jal	112f0 <__malloc_unlock>
   11cb4:	40f2                	lw	ra,28(sp)
   11cb6:	4462                	lw	s0,24(sp)
   11cb8:	44d2                	lw	s1,20(sp)
   11cba:	4942                	lw	s2,16(sp)
   11cbc:	49b2                	lw	s3,12(sp)
   11cbe:	4a22                	lw	s4,8(sp)
   11cc0:	4505                	li	a0,1
   11cc2:	6105                	add	sp,sp,32
   11cc4:	8082                	ret
   11cc6:	4581                	li	a1,0
   11cc8:	854a                	mv	a0,s2
   11cca:	9e3ff0ef          	jal	116ac <_sbrk_r>
   11cce:	0089a703          	lw	a4,8(s3)
   11cd2:	46bd                	li	a3,15
   11cd4:	40e507b3          	sub	a5,a0,a4
   11cd8:	f8f6dce3          	bge	a3,a5,11c70 <_malloc_trim_r+0x4a>
   11cdc:	03c1a683          	lw	a3,60(gp) # 13cdc <__malloc_sbrk_base>
   11ce0:	0017e793          	or	a5,a5,1
   11ce4:	c35c                	sw	a5,4(a4)
   11ce6:	8d15                	sub	a0,a0,a3
   11ce8:	06a1aa23          	sw	a0,116(gp) # 13d14 <__malloc_current_mallinfo>
   11cec:	b751                	j	11c70 <_malloc_trim_r+0x4a>

00011cee <_free_r>:
   11cee:	10058a63          	beqz	a1,11e02 <_free_r+0x114>
   11cf2:	1141                	add	sp,sp,-16
   11cf4:	c422                	sw	s0,8(sp)
   11cf6:	c226                	sw	s1,4(sp)
   11cf8:	842e                	mv	s0,a1
   11cfa:	84aa                	mv	s1,a0
   11cfc:	c606                	sw	ra,12(sp)
   11cfe:	df0ff0ef          	jal	112ee <__malloc_lock>
   11d02:	ffc42503          	lw	a0,-4(s0)
   11d06:	ff840713          	add	a4,s0,-8
   11d0a:	ffe57793          	and	a5,a0,-2
   11d0e:	00f70633          	add	a2,a4,a5
   11d12:	c2818593          	add	a1,gp,-984 # 138c8 <__malloc_av_>
   11d16:	4254                	lw	a3,4(a2)
   11d18:	0085a803          	lw	a6,8(a1)
   11d1c:	9af1                	and	a3,a3,-4
   11d1e:	12c80363          	beq	a6,a2,11e44 <_free_r+0x156>
   11d22:	c254                	sw	a3,4(a2)
   11d24:	8905                	and	a0,a0,1
   11d26:	00d60833          	add	a6,a2,a3
   11d2a:	e935                	bnez	a0,11d9e <_free_r+0xb0>
   11d2c:	ff842303          	lw	t1,-8(s0)
   11d30:	00482803          	lw	a6,4(a6)
   11d34:	40670733          	sub	a4,a4,t1
   11d38:	00872883          	lw	a7,8(a4)
   11d3c:	c3018513          	add	a0,gp,-976 # 138d0 <__malloc_av_+0x8>
   11d40:	979a                	add	a5,a5,t1
   11d42:	00187813          	and	a6,a6,1
   11d46:	0ea88263          	beq	a7,a0,11e2a <_free_r+0x13c>
   11d4a:	00c72303          	lw	t1,12(a4)
   11d4e:	0068a623          	sw	t1,12(a7)
   11d52:	01132423          	sw	a7,8(t1)
   11d56:	10080f63          	beqz	a6,11e74 <_free_r+0x186>
   11d5a:	0017e693          	or	a3,a5,1
   11d5e:	c354                	sw	a3,4(a4)
   11d60:	c21c                	sw	a5,0(a2)
   11d62:	1ff00693          	li	a3,511
   11d66:	04f6e963          	bltu	a3,a5,11db8 <_free_r+0xca>
   11d6a:	ff87f693          	and	a3,a5,-8
   11d6e:	06a1                	add	a3,a3,8
   11d70:	41c8                	lw	a0,4(a1)
   11d72:	96ae                	add	a3,a3,a1
   11d74:	4290                	lw	a2,0(a3)
   11d76:	0057d813          	srl	a6,a5,0x5
   11d7a:	4785                	li	a5,1
   11d7c:	010797b3          	sll	a5,a5,a6
   11d80:	8fc9                	or	a5,a5,a0
   11d82:	ff868513          	add	a0,a3,-8
   11d86:	c748                	sw	a0,12(a4)
   11d88:	c710                	sw	a2,8(a4)
   11d8a:	c1dc                	sw	a5,4(a1)
   11d8c:	c298                	sw	a4,0(a3)
   11d8e:	c658                	sw	a4,12(a2)
   11d90:	4422                	lw	s0,8(sp)
   11d92:	40b2                	lw	ra,12(sp)
   11d94:	8526                	mv	a0,s1
   11d96:	4492                	lw	s1,4(sp)
   11d98:	0141                	add	sp,sp,16
   11d9a:	d56ff06f          	j	112f0 <__malloc_unlock>
   11d9e:	00482503          	lw	a0,4(a6)
   11da2:	8905                	and	a0,a0,1
   11da4:	c125                	beqz	a0,11e04 <_free_r+0x116>
   11da6:	0017e693          	or	a3,a5,1
   11daa:	fed42e23          	sw	a3,-4(s0)
   11dae:	c21c                	sw	a5,0(a2)
   11db0:	1ff00693          	li	a3,511
   11db4:	faf6fbe3          	bgeu	a3,a5,11d6a <_free_r+0x7c>
   11db8:	0097d693          	srl	a3,a5,0x9
   11dbc:	4611                	li	a2,4
   11dbe:	0ad66d63          	bltu	a2,a3,11e78 <_free_r+0x18a>
   11dc2:	0067d693          	srl	a3,a5,0x6
   11dc6:	03968513          	add	a0,a3,57
   11dca:	03868613          	add	a2,a3,56
   11dce:	050e                	sll	a0,a0,0x3
   11dd0:	952e                	add	a0,a0,a1
   11dd2:	4114                	lw	a3,0(a0)
   11dd4:	1561                	add	a0,a0,-8
   11dd6:	00d51663          	bne	a0,a3,11de2 <_free_r+0xf4>
   11dda:	a8f1                	j	11eb6 <_free_r+0x1c8>
   11ddc:	4694                	lw	a3,8(a3)
   11dde:	00d50663          	beq	a0,a3,11dea <_free_r+0xfc>
   11de2:	42d0                	lw	a2,4(a3)
   11de4:	9a71                	and	a2,a2,-4
   11de6:	fec7ebe3          	bltu	a5,a2,11ddc <_free_r+0xee>
   11dea:	46c8                	lw	a0,12(a3)
   11dec:	c748                	sw	a0,12(a4)
   11dee:	c714                	sw	a3,8(a4)
   11df0:	4422                	lw	s0,8(sp)
   11df2:	c518                	sw	a4,8(a0)
   11df4:	40b2                	lw	ra,12(sp)
   11df6:	8526                	mv	a0,s1
   11df8:	4492                	lw	s1,4(sp)
   11dfa:	c6d8                	sw	a4,12(a3)
   11dfc:	0141                	add	sp,sp,16
   11dfe:	cf2ff06f          	j	112f0 <__malloc_unlock>
   11e02:	8082                	ret
   11e04:	97b6                	add	a5,a5,a3
   11e06:	c3018513          	add	a0,gp,-976 # 138d0 <__malloc_av_+0x8>
   11e0a:	4614                	lw	a3,8(a2)
   11e0c:	08a68b63          	beq	a3,a0,11ea2 <_free_r+0x1b4>
   11e10:	00c62803          	lw	a6,12(a2)
   11e14:	0017e513          	or	a0,a5,1
   11e18:	00f70633          	add	a2,a4,a5
   11e1c:	0106a623          	sw	a6,12(a3)
   11e20:	00d82423          	sw	a3,8(a6)
   11e24:	c348                	sw	a0,4(a4)
   11e26:	c21c                	sw	a5,0(a2)
   11e28:	bf2d                	j	11d62 <_free_r+0x74>
   11e2a:	0c081d63          	bnez	a6,11f04 <_free_r+0x216>
   11e2e:	460c                	lw	a1,8(a2)
   11e30:	4650                	lw	a2,12(a2)
   11e32:	96be                	add	a3,a3,a5
   11e34:	0016e793          	or	a5,a3,1
   11e38:	c5d0                	sw	a2,12(a1)
   11e3a:	c60c                	sw	a1,8(a2)
   11e3c:	c35c                	sw	a5,4(a4)
   11e3e:	9736                	add	a4,a4,a3
   11e40:	c314                	sw	a3,0(a4)
   11e42:	b7b9                	j	11d90 <_free_r+0xa2>
   11e44:	8905                	and	a0,a0,1
   11e46:	96be                	add	a3,a3,a5
   11e48:	e909                	bnez	a0,11e5a <_free_r+0x16c>
   11e4a:	ff842503          	lw	a0,-8(s0)
   11e4e:	8f09                	sub	a4,a4,a0
   11e50:	475c                	lw	a5,12(a4)
   11e52:	4710                	lw	a2,8(a4)
   11e54:	96aa                	add	a3,a3,a0
   11e56:	c65c                	sw	a5,12(a2)
   11e58:	c790                	sw	a2,8(a5)
   11e5a:	0016e613          	or	a2,a3,1
   11e5e:	0401a783          	lw	a5,64(gp) # 13ce0 <__malloc_trim_threshold>
   11e62:	c350                	sw	a2,4(a4)
   11e64:	c598                	sw	a4,8(a1)
   11e66:	f2f6e5e3          	bltu	a3,a5,11d90 <_free_r+0xa2>
   11e6a:	04c1a583          	lw	a1,76(gp) # 13cec <__malloc_top_pad>
   11e6e:	8526                	mv	a0,s1
   11e70:	3b5d                	jal	11c26 <_malloc_trim_r>
   11e72:	bf39                	j	11d90 <_free_r+0xa2>
   11e74:	97b6                	add	a5,a5,a3
   11e76:	bf51                	j	11e0a <_free_r+0x11c>
   11e78:	4651                	li	a2,20
   11e7a:	00d67e63          	bgeu	a2,a3,11e96 <_free_r+0x1a8>
   11e7e:	05400613          	li	a2,84
   11e82:	04d66463          	bltu	a2,a3,11eca <_free_r+0x1dc>
   11e86:	00c7d693          	srl	a3,a5,0xc
   11e8a:	06f68513          	add	a0,a3,111
   11e8e:	06e68613          	add	a2,a3,110
   11e92:	050e                	sll	a0,a0,0x3
   11e94:	bf35                	j	11dd0 <_free_r+0xe2>
   11e96:	05c68513          	add	a0,a3,92
   11e9a:	05b68613          	add	a2,a3,91
   11e9e:	050e                	sll	a0,a0,0x3
   11ea0:	bf05                	j	11dd0 <_free_r+0xe2>
   11ea2:	c9d8                	sw	a4,20(a1)
   11ea4:	c998                	sw	a4,16(a1)
   11ea6:	0017e693          	or	a3,a5,1
   11eaa:	c748                	sw	a0,12(a4)
   11eac:	c708                	sw	a0,8(a4)
   11eae:	c354                	sw	a3,4(a4)
   11eb0:	973e                	add	a4,a4,a5
   11eb2:	c31c                	sw	a5,0(a4)
   11eb4:	bdf1                	j	11d90 <_free_r+0xa2>
   11eb6:	0045a803          	lw	a6,4(a1)
   11eba:	8609                	sra	a2,a2,0x2
   11ebc:	4785                	li	a5,1
   11ebe:	00c797b3          	sll	a5,a5,a2
   11ec2:	0107e7b3          	or	a5,a5,a6
   11ec6:	c1dc                	sw	a5,4(a1)
   11ec8:	b715                	j	11dec <_free_r+0xfe>
   11eca:	15400613          	li	a2,340
   11ece:	00d66a63          	bltu	a2,a3,11ee2 <_free_r+0x1f4>
   11ed2:	00f7d693          	srl	a3,a5,0xf
   11ed6:	07868513          	add	a0,a3,120
   11eda:	07768613          	add	a2,a3,119
   11ede:	050e                	sll	a0,a0,0x3
   11ee0:	bdc5                	j	11dd0 <_free_r+0xe2>
   11ee2:	55400613          	li	a2,1364
   11ee6:	00d66a63          	bltu	a2,a3,11efa <_free_r+0x20c>
   11eea:	0127d693          	srl	a3,a5,0x12
   11eee:	07d68513          	add	a0,a3,125
   11ef2:	07c68613          	add	a2,a3,124
   11ef6:	050e                	sll	a0,a0,0x3
   11ef8:	bde1                	j	11dd0 <_free_r+0xe2>
   11efa:	3f800513          	li	a0,1016
   11efe:	07e00613          	li	a2,126
   11f02:	b5f9                	j	11dd0 <_free_r+0xe2>
   11f04:	0017e693          	or	a3,a5,1
   11f08:	c354                	sw	a3,4(a4)
   11f0a:	c21c                	sw	a5,0(a2)
   11f0c:	b551                	j	11d90 <_free_r+0xa2>

00011f0e <_lseek_r>:
   11f0e:	1141                	add	sp,sp,-16
   11f10:	872e                	mv	a4,a1
   11f12:	c422                	sw	s0,8(sp)
   11f14:	c226                	sw	s1,4(sp)
   11f16:	85b2                	mv	a1,a2
   11f18:	842a                	mv	s0,a0
   11f1a:	8636                	mv	a2,a3
   11f1c:	853a                	mv	a0,a4
   11f1e:	c606                	sw	ra,12(sp)
   11f20:	0401a823          	sw	zero,80(gp) # 13cf0 <errno>
   11f24:	2efd                	jal	12322 <_lseek>
   11f26:	57fd                	li	a5,-1
   11f28:	00f50763          	beq	a0,a5,11f36 <_lseek_r+0x28>
   11f2c:	40b2                	lw	ra,12(sp)
   11f2e:	4422                	lw	s0,8(sp)
   11f30:	4492                	lw	s1,4(sp)
   11f32:	0141                	add	sp,sp,16
   11f34:	8082                	ret
   11f36:	0501a783          	lw	a5,80(gp) # 13cf0 <errno>
   11f3a:	dbed                	beqz	a5,11f2c <_lseek_r+0x1e>
   11f3c:	40b2                	lw	ra,12(sp)
   11f3e:	c01c                	sw	a5,0(s0)
   11f40:	4422                	lw	s0,8(sp)
   11f42:	4492                	lw	s1,4(sp)
   11f44:	0141                	add	sp,sp,16
   11f46:	8082                	ret

00011f48 <__smakebuf_r>:
   11f48:	00c59783          	lh	a5,12(a1)
   11f4c:	7119                	add	sp,sp,-128
   11f4e:	dca2                	sw	s0,120(sp)
   11f50:	de86                	sw	ra,124(sp)
   11f52:	daa6                	sw	s1,116(sp)
   11f54:	d8ca                	sw	s2,112(sp)
   11f56:	d6ce                	sw	s3,108(sp)
   11f58:	d4d2                	sw	s4,104(sp)
   11f5a:	0027f713          	and	a4,a5,2
   11f5e:	842e                	mv	s0,a1
   11f60:	cf19                	beqz	a4,11f7e <__smakebuf_r+0x36>
   11f62:	04358793          	add	a5,a1,67
   11f66:	c19c                	sw	a5,0(a1)
   11f68:	c99c                	sw	a5,16(a1)
   11f6a:	4785                	li	a5,1
   11f6c:	c9dc                	sw	a5,20(a1)
   11f6e:	50f6                	lw	ra,124(sp)
   11f70:	5466                	lw	s0,120(sp)
   11f72:	54d6                	lw	s1,116(sp)
   11f74:	5946                	lw	s2,112(sp)
   11f76:	59b6                	lw	s3,108(sp)
   11f78:	5a26                	lw	s4,104(sp)
   11f7a:	6109                	add	sp,sp,128
   11f7c:	8082                	ret
   11f7e:	00e59583          	lh	a1,14(a1)
   11f82:	84aa                	mv	s1,a0
   11f84:	0605c663          	bltz	a1,11ff0 <__smakebuf_r+0xa8>
   11f88:	0030                	add	a2,sp,8
   11f8a:	2461                	jal	12212 <_fstat_r>
   11f8c:	06054063          	bltz	a0,11fec <__smakebuf_r+0xa4>
   11f90:	47b2                	lw	a5,12(sp)
   11f92:	693d                	lui	s2,0xf
   11f94:	6985                	lui	s3,0x1
   11f96:	00f97933          	and	s2,s2,a5
   11f9a:	77f9                	lui	a5,0xffffe
   11f9c:	993e                	add	s2,s2,a5
   11f9e:	00193913          	seqz	s2,s2
   11fa2:	40000a13          	li	s4,1024
   11fa6:	80098993          	add	s3,s3,-2048 # 800 <exit-0xf894>
   11faa:	85d2                	mv	a1,s4
   11fac:	8526                	mv	a0,s1
   11fae:	b17fe0ef          	jal	10ac4 <_malloc_r>
   11fb2:	00c41783          	lh	a5,12(s0)
   11fb6:	c939                	beqz	a0,1200c <__smakebuf_r+0xc4>
   11fb8:	6741                	lui	a4,0x10
   11fba:	41e70713          	add	a4,a4,1054 # 1041e <_cleanup_r>
   11fbe:	dcd8                	sw	a4,60(s1)
   11fc0:	0807e793          	or	a5,a5,128
   11fc4:	00f41623          	sh	a5,12(s0)
   11fc8:	c008                	sw	a0,0(s0)
   11fca:	c808                	sw	a0,16(s0)
   11fcc:	01442a23          	sw	s4,20(s0)
   11fd0:	06091163          	bnez	s2,12032 <__smakebuf_r+0xea>
   11fd4:	0137e7b3          	or	a5,a5,s3
   11fd8:	50f6                	lw	ra,124(sp)
   11fda:	00f41623          	sh	a5,12(s0)
   11fde:	5466                	lw	s0,120(sp)
   11fe0:	54d6                	lw	s1,116(sp)
   11fe2:	5946                	lw	s2,112(sp)
   11fe4:	59b6                	lw	s3,108(sp)
   11fe6:	5a26                	lw	s4,104(sp)
   11fe8:	6109                	add	sp,sp,128
   11fea:	8082                	ret
   11fec:	00c41783          	lh	a5,12(s0)
   11ff0:	0807f793          	and	a5,a5,128
   11ff4:	4901                	li	s2,0
   11ff6:	cb95                	beqz	a5,1202a <__smakebuf_r+0xe2>
   11ff8:	04000a13          	li	s4,64
   11ffc:	85d2                	mv	a1,s4
   11ffe:	8526                	mv	a0,s1
   12000:	ac5fe0ef          	jal	10ac4 <_malloc_r>
   12004:	00c41783          	lh	a5,12(s0)
   12008:	4981                	li	s3,0
   1200a:	f55d                	bnez	a0,11fb8 <__smakebuf_r+0x70>
   1200c:	2007f713          	and	a4,a5,512
   12010:	ff39                	bnez	a4,11f6e <__smakebuf_r+0x26>
   12012:	9bf1                	and	a5,a5,-4
   12014:	0027e793          	or	a5,a5,2
   12018:	04340713          	add	a4,s0,67
   1201c:	00f41623          	sh	a5,12(s0)
   12020:	4785                	li	a5,1
   12022:	c018                	sw	a4,0(s0)
   12024:	c818                	sw	a4,16(s0)
   12026:	c85c                	sw	a5,20(s0)
   12028:	b799                	j	11f6e <__smakebuf_r+0x26>
   1202a:	40000a13          	li	s4,1024
   1202e:	4981                	li	s3,0
   12030:	bfad                	j	11faa <__smakebuf_r+0x62>
   12032:	00e41583          	lh	a1,14(s0)
   12036:	8526                	mv	a0,s1
   12038:	2c09                	jal	1224a <_isatty_r>
   1203a:	e501                	bnez	a0,12042 <__smakebuf_r+0xfa>
   1203c:	00c41783          	lh	a5,12(s0)
   12040:	bf51                	j	11fd4 <__smakebuf_r+0x8c>
   12042:	00c45783          	lhu	a5,12(s0)
   12046:	9bf1                	and	a5,a5,-4
   12048:	0017e793          	or	a5,a5,1
   1204c:	07c2                	sll	a5,a5,0x10
   1204e:	87c1                	sra	a5,a5,0x10
   12050:	b751                	j	11fd4 <__smakebuf_r+0x8c>

00012052 <__swhatbuf_r>:
   12052:	7159                	add	sp,sp,-112
   12054:	d4a2                	sw	s0,104(sp)
   12056:	842e                	mv	s0,a1
   12058:	00e59583          	lh	a1,14(a1)
   1205c:	d2a6                	sw	s1,100(sp)
   1205e:	d0ca                	sw	s2,96(sp)
   12060:	d686                	sw	ra,108(sp)
   12062:	84b2                	mv	s1,a2
   12064:	8936                	mv	s2,a3
   12066:	0205cb63          	bltz	a1,1209c <__swhatbuf_r+0x4a>
   1206a:	0030                	add	a2,sp,8
   1206c:	225d                	jal	12212 <_fstat_r>
   1206e:	02054763          	bltz	a0,1209c <__swhatbuf_r+0x4a>
   12072:	4732                	lw	a4,12(sp)
   12074:	67bd                	lui	a5,0xf
   12076:	50b6                	lw	ra,108(sp)
   12078:	8ff9                	and	a5,a5,a4
   1207a:	7779                	lui	a4,0xffffe
   1207c:	97ba                	add	a5,a5,a4
   1207e:	5426                	lw	s0,104(sp)
   12080:	0017b793          	seqz	a5,a5
   12084:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   12088:	40000713          	li	a4,1024
   1208c:	c098                	sw	a4,0(s1)
   1208e:	6505                	lui	a0,0x1
   12090:	5496                	lw	s1,100(sp)
   12092:	5906                	lw	s2,96(sp)
   12094:	80050513          	add	a0,a0,-2048 # 800 <exit-0xf894>
   12098:	6165                	add	sp,sp,112
   1209a:	8082                	ret
   1209c:	00c45783          	lhu	a5,12(s0)
   120a0:	0807f793          	and	a5,a5,128
   120a4:	cf91                	beqz	a5,120c0 <__swhatbuf_r+0x6e>
   120a6:	50b6                	lw	ra,108(sp)
   120a8:	5426                	lw	s0,104(sp)
   120aa:	4781                	li	a5,0
   120ac:	00f92023          	sw	a5,0(s2)
   120b0:	04000713          	li	a4,64
   120b4:	c098                	sw	a4,0(s1)
   120b6:	5906                	lw	s2,96(sp)
   120b8:	5496                	lw	s1,100(sp)
   120ba:	4501                	li	a0,0
   120bc:	6165                	add	sp,sp,112
   120be:	8082                	ret
   120c0:	50b6                	lw	ra,108(sp)
   120c2:	5426                	lw	s0,104(sp)
   120c4:	00f92023          	sw	a5,0(s2)
   120c8:	40000713          	li	a4,1024
   120cc:	c098                	sw	a4,0(s1)
   120ce:	5906                	lw	s2,96(sp)
   120d0:	5496                	lw	s1,100(sp)
   120d2:	4501                	li	a0,0
   120d4:	6165                	add	sp,sp,112
   120d6:	8082                	ret

000120d8 <_read_r>:
   120d8:	1141                	add	sp,sp,-16
   120da:	872e                	mv	a4,a1
   120dc:	c422                	sw	s0,8(sp)
   120de:	c226                	sw	s1,4(sp)
   120e0:	85b2                	mv	a1,a2
   120e2:	842a                	mv	s0,a0
   120e4:	8636                	mv	a2,a3
   120e6:	853a                	mv	a0,a4
   120e8:	c606                	sw	ra,12(sp)
   120ea:	0401a823          	sw	zero,80(gp) # 13cf0 <errno>
   120ee:	2cb9                	jal	1234c <_read>
   120f0:	57fd                	li	a5,-1
   120f2:	00f50763          	beq	a0,a5,12100 <_read_r+0x28>
   120f6:	40b2                	lw	ra,12(sp)
   120f8:	4422                	lw	s0,8(sp)
   120fa:	4492                	lw	s1,4(sp)
   120fc:	0141                	add	sp,sp,16
   120fe:	8082                	ret
   12100:	0501a783          	lw	a5,80(gp) # 13cf0 <errno>
   12104:	dbed                	beqz	a5,120f6 <_read_r+0x1e>
   12106:	40b2                	lw	ra,12(sp)
   12108:	c01c                	sw	a5,0(s0)
   1210a:	4422                	lw	s0,8(sp)
   1210c:	4492                	lw	s1,4(sp)
   1210e:	0141                	add	sp,sp,16
   12110:	8082                	ret

00012112 <cleanup_glue>:
   12112:	1101                	add	sp,sp,-32
   12114:	c84a                	sw	s2,16(sp)
   12116:	0005a903          	lw	s2,0(a1)
   1211a:	cc22                	sw	s0,24(sp)
   1211c:	ca26                	sw	s1,20(sp)
   1211e:	ce06                	sw	ra,28(sp)
   12120:	c64e                	sw	s3,12(sp)
   12122:	c452                	sw	s4,8(sp)
   12124:	842e                	mv	s0,a1
   12126:	84aa                	mv	s1,a0
   12128:	02090763          	beqz	s2,12156 <cleanup_glue+0x44>
   1212c:	00092983          	lw	s3,0(s2)
   12130:	02098063          	beqz	s3,12150 <cleanup_glue+0x3e>
   12134:	0009aa03          	lw	s4,0(s3)
   12138:	000a0963          	beqz	s4,1214a <cleanup_glue+0x38>
   1213c:	000a2583          	lw	a1,0(s4)
   12140:	c191                	beqz	a1,12144 <cleanup_glue+0x32>
   12142:	3fc1                	jal	12112 <cleanup_glue>
   12144:	85d2                	mv	a1,s4
   12146:	8526                	mv	a0,s1
   12148:	365d                	jal	11cee <_free_r>
   1214a:	85ce                	mv	a1,s3
   1214c:	8526                	mv	a0,s1
   1214e:	3645                	jal	11cee <_free_r>
   12150:	85ca                	mv	a1,s2
   12152:	8526                	mv	a0,s1
   12154:	3e69                	jal	11cee <_free_r>
   12156:	85a2                	mv	a1,s0
   12158:	4462                	lw	s0,24(sp)
   1215a:	40f2                	lw	ra,28(sp)
   1215c:	4942                	lw	s2,16(sp)
   1215e:	49b2                	lw	s3,12(sp)
   12160:	4a22                	lw	s4,8(sp)
   12162:	8526                	mv	a0,s1
   12164:	44d2                	lw	s1,20(sp)
   12166:	6105                	add	sp,sp,32
   12168:	b659                	j	11cee <_free_r>

0001216a <_reclaim_reent>:
   1216a:	0381a783          	lw	a5,56(gp) # 13cd8 <_impure_ptr>
   1216e:	0aa78163          	beq	a5,a0,12210 <_reclaim_reent+0xa6>
   12172:	456c                	lw	a1,76(a0)
   12174:	1101                	add	sp,sp,-32
   12176:	ca26                	sw	s1,20(sp)
   12178:	ce06                	sw	ra,28(sp)
   1217a:	cc22                	sw	s0,24(sp)
   1217c:	c84a                	sw	s2,16(sp)
   1217e:	c64e                	sw	s3,12(sp)
   12180:	84aa                	mv	s1,a0
   12182:	c19d                	beqz	a1,121a8 <_reclaim_reent+0x3e>
   12184:	4901                	li	s2,0
   12186:	08000993          	li	s3,128
   1218a:	012587b3          	add	a5,a1,s2
   1218e:	4380                	lw	s0,0(a5)
   12190:	c419                	beqz	s0,1219e <_reclaim_reent+0x34>
   12192:	85a2                	mv	a1,s0
   12194:	4000                	lw	s0,0(s0)
   12196:	8526                	mv	a0,s1
   12198:	3e99                	jal	11cee <_free_r>
   1219a:	fc65                	bnez	s0,12192 <_reclaim_reent+0x28>
   1219c:	44ec                	lw	a1,76(s1)
   1219e:	0911                	add	s2,s2,4
   121a0:	ff3915e3          	bne	s2,s3,1218a <_reclaim_reent+0x20>
   121a4:	8526                	mv	a0,s1
   121a6:	36a1                	jal	11cee <_free_r>
   121a8:	40ac                	lw	a1,64(s1)
   121aa:	c199                	beqz	a1,121b0 <_reclaim_reent+0x46>
   121ac:	8526                	mv	a0,s1
   121ae:	3681                	jal	11cee <_free_r>
   121b0:	1484a403          	lw	s0,328(s1)
   121b4:	cc01                	beqz	s0,121cc <_reclaim_reent+0x62>
   121b6:	14c48913          	add	s2,s1,332
   121ba:	01240963          	beq	s0,s2,121cc <_reclaim_reent+0x62>
   121be:	85a2                	mv	a1,s0
   121c0:	4000                	lw	s0,0(s0)
   121c2:	8526                	mv	a0,s1
   121c4:	b2bff0ef          	jal	11cee <_free_r>
   121c8:	fe891be3          	bne	s2,s0,121be <_reclaim_reent+0x54>
   121cc:	48ec                	lw	a1,84(s1)
   121ce:	c581                	beqz	a1,121d6 <_reclaim_reent+0x6c>
   121d0:	8526                	mv	a0,s1
   121d2:	b1dff0ef          	jal	11cee <_free_r>
   121d6:	5c9c                	lw	a5,56(s1)
   121d8:	c78d                	beqz	a5,12202 <_reclaim_reent+0x98>
   121da:	5cdc                	lw	a5,60(s1)
   121dc:	8526                	mv	a0,s1
   121de:	9782                	jalr	a5
   121e0:	2e04a403          	lw	s0,736(s1)
   121e4:	cc19                	beqz	s0,12202 <_reclaim_reent+0x98>
   121e6:	400c                	lw	a1,0(s0)
   121e8:	c199                	beqz	a1,121ee <_reclaim_reent+0x84>
   121ea:	8526                	mv	a0,s1
   121ec:	371d                	jal	12112 <cleanup_glue>
   121ee:	85a2                	mv	a1,s0
   121f0:	4462                	lw	s0,24(sp)
   121f2:	40f2                	lw	ra,28(sp)
   121f4:	4942                	lw	s2,16(sp)
   121f6:	49b2                	lw	s3,12(sp)
   121f8:	8526                	mv	a0,s1
   121fa:	44d2                	lw	s1,20(sp)
   121fc:	6105                	add	sp,sp,32
   121fe:	af1ff06f          	j	11cee <_free_r>
   12202:	40f2                	lw	ra,28(sp)
   12204:	4462                	lw	s0,24(sp)
   12206:	44d2                	lw	s1,20(sp)
   12208:	4942                	lw	s2,16(sp)
   1220a:	49b2                	lw	s3,12(sp)
   1220c:	6105                	add	sp,sp,32
   1220e:	8082                	ret
   12210:	8082                	ret

00012212 <_fstat_r>:
   12212:	1141                	add	sp,sp,-16
   12214:	872e                	mv	a4,a1
   12216:	c422                	sw	s0,8(sp)
   12218:	c226                	sw	s1,4(sp)
   1221a:	842a                	mv	s0,a0
   1221c:	85b2                	mv	a1,a2
   1221e:	853a                	mv	a0,a4
   12220:	c606                	sw	ra,12(sp)
   12222:	0401a823          	sw	zero,80(gp) # 13cf0 <errno>
   12226:	204d                	jal	122c8 <_fstat>
   12228:	57fd                	li	a5,-1
   1222a:	00f50763          	beq	a0,a5,12238 <_fstat_r+0x26>
   1222e:	40b2                	lw	ra,12(sp)
   12230:	4422                	lw	s0,8(sp)
   12232:	4492                	lw	s1,4(sp)
   12234:	0141                	add	sp,sp,16
   12236:	8082                	ret
   12238:	0501a783          	lw	a5,80(gp) # 13cf0 <errno>
   1223c:	dbed                	beqz	a5,1222e <_fstat_r+0x1c>
   1223e:	40b2                	lw	ra,12(sp)
   12240:	c01c                	sw	a5,0(s0)
   12242:	4422                	lw	s0,8(sp)
   12244:	4492                	lw	s1,4(sp)
   12246:	0141                	add	sp,sp,16
   12248:	8082                	ret

0001224a <_isatty_r>:
   1224a:	1141                	add	sp,sp,-16
   1224c:	c422                	sw	s0,8(sp)
   1224e:	c226                	sw	s1,4(sp)
   12250:	842a                	mv	s0,a0
   12252:	852e                	mv	a0,a1
   12254:	c606                	sw	ra,12(sp)
   12256:	0401a823          	sw	zero,80(gp) # 13cf0 <errno>
   1225a:	205d                	jal	12300 <_isatty>
   1225c:	57fd                	li	a5,-1
   1225e:	00f50763          	beq	a0,a5,1226c <_isatty_r+0x22>
   12262:	40b2                	lw	ra,12(sp)
   12264:	4422                	lw	s0,8(sp)
   12266:	4492                	lw	s1,4(sp)
   12268:	0141                	add	sp,sp,16
   1226a:	8082                	ret
   1226c:	0501a783          	lw	a5,80(gp) # 13cf0 <errno>
   12270:	dbed                	beqz	a5,12262 <_isatty_r+0x18>
   12272:	40b2                	lw	ra,12(sp)
   12274:	c01c                	sw	a5,0(s0)
   12276:	4422                	lw	s0,8(sp)
   12278:	4492                	lw	s1,4(sp)
   1227a:	0141                	add	sp,sp,16
   1227c:	8082                	ret

0001227e <_close>:
   1227e:	1141                	add	sp,sp,-16
   12280:	c606                	sw	ra,12(sp)
   12282:	c422                	sw	s0,8(sp)
   12284:	03900893          	li	a7,57
   12288:	00000073          	ecall
   1228c:	842a                	mv	s0,a0
   1228e:	00054763          	bltz	a0,1229c <_close+0x1e>
   12292:	40b2                	lw	ra,12(sp)
   12294:	8522                	mv	a0,s0
   12296:	4422                	lw	s0,8(sp)
   12298:	0141                	add	sp,sp,16
   1229a:	8082                	ret
   1229c:	40800433          	neg	s0,s0
   122a0:	2ad1                	jal	12474 <__errno>
   122a2:	c100                	sw	s0,0(a0)
   122a4:	547d                	li	s0,-1
   122a6:	b7f5                	j	12292 <_close+0x14>

000122a8 <_exit>:
   122a8:	05d00893          	li	a7,93
   122ac:	00000073          	ecall
   122b0:	00054363          	bltz	a0,122b6 <_exit+0xe>
   122b4:	a001                	j	122b4 <_exit+0xc>
   122b6:	1141                	add	sp,sp,-16
   122b8:	c422                	sw	s0,8(sp)
   122ba:	842a                	mv	s0,a0
   122bc:	c606                	sw	ra,12(sp)
   122be:	40800433          	neg	s0,s0
   122c2:	2a4d                	jal	12474 <__errno>
   122c4:	c100                	sw	s0,0(a0)
   122c6:	a001                	j	122c6 <_exit+0x1e>

000122c8 <_fstat>:
   122c8:	7175                	add	sp,sp,-144
   122ca:	c326                	sw	s1,132(sp)
   122cc:	c706                	sw	ra,140(sp)
   122ce:	84ae                	mv	s1,a1
   122d0:	c522                	sw	s0,136(sp)
   122d2:	05000893          	li	a7,80
   122d6:	858a                	mv	a1,sp
   122d8:	00000073          	ecall
   122dc:	842a                	mv	s0,a0
   122de:	00054b63          	bltz	a0,122f4 <_fstat+0x2c>
   122e2:	8526                	mv	a0,s1
   122e4:	858a                	mv	a1,sp
   122e6:	2231                	jal	123f2 <_conv_stat>
   122e8:	40ba                	lw	ra,140(sp)
   122ea:	8522                	mv	a0,s0
   122ec:	442a                	lw	s0,136(sp)
   122ee:	449a                	lw	s1,132(sp)
   122f0:	6149                	add	sp,sp,144
   122f2:	8082                	ret
   122f4:	40800433          	neg	s0,s0
   122f8:	2ab5                	jal	12474 <__errno>
   122fa:	c100                	sw	s0,0(a0)
   122fc:	547d                	li	s0,-1
   122fe:	b7d5                	j	122e2 <_fstat+0x1a>

00012300 <_isatty>:
   12300:	7159                	add	sp,sp,-112
   12302:	002c                	add	a1,sp,8
   12304:	d686                	sw	ra,108(sp)
   12306:	37c9                	jal	122c8 <_fstat>
   12308:	57fd                	li	a5,-1
   1230a:	00f50863          	beq	a0,a5,1231a <_isatty+0x1a>
   1230e:	4532                	lw	a0,12(sp)
   12310:	50b6                	lw	ra,108(sp)
   12312:	8135                	srl	a0,a0,0xd
   12314:	8905                	and	a0,a0,1
   12316:	6165                	add	sp,sp,112
   12318:	8082                	ret
   1231a:	50b6                	lw	ra,108(sp)
   1231c:	4501                	li	a0,0
   1231e:	6165                	add	sp,sp,112
   12320:	8082                	ret

00012322 <_lseek>:
   12322:	1141                	add	sp,sp,-16
   12324:	c606                	sw	ra,12(sp)
   12326:	c422                	sw	s0,8(sp)
   12328:	03e00893          	li	a7,62
   1232c:	00000073          	ecall
   12330:	842a                	mv	s0,a0
   12332:	00054763          	bltz	a0,12340 <_lseek+0x1e>
   12336:	40b2                	lw	ra,12(sp)
   12338:	8522                	mv	a0,s0
   1233a:	4422                	lw	s0,8(sp)
   1233c:	0141                	add	sp,sp,16
   1233e:	8082                	ret
   12340:	40800433          	neg	s0,s0
   12344:	2a05                	jal	12474 <__errno>
   12346:	c100                	sw	s0,0(a0)
   12348:	547d                	li	s0,-1
   1234a:	b7f5                	j	12336 <_lseek+0x14>

0001234c <_read>:
   1234c:	1141                	add	sp,sp,-16
   1234e:	c606                	sw	ra,12(sp)
   12350:	c422                	sw	s0,8(sp)
   12352:	03f00893          	li	a7,63
   12356:	00000073          	ecall
   1235a:	842a                	mv	s0,a0
   1235c:	00054763          	bltz	a0,1236a <_read+0x1e>
   12360:	40b2                	lw	ra,12(sp)
   12362:	8522                	mv	a0,s0
   12364:	4422                	lw	s0,8(sp)
   12366:	0141                	add	sp,sp,16
   12368:	8082                	ret
   1236a:	40800433          	neg	s0,s0
   1236e:	2219                	jal	12474 <__errno>
   12370:	c100                	sw	s0,0(a0)
   12372:	547d                	li	s0,-1
   12374:	b7f5                	j	12360 <_read+0x14>

00012376 <_sbrk>:
   12376:	0541a703          	lw	a4,84(gp) # 13cf4 <heap_end.0>
   1237a:	1141                	add	sp,sp,-16
   1237c:	c606                	sw	ra,12(sp)
   1237e:	87aa                	mv	a5,a0
   12380:	ef01                	bnez	a4,12398 <_sbrk+0x22>
   12382:	0d600893          	li	a7,214
   12386:	4501                	li	a0,0
   12388:	00000073          	ecall
   1238c:	567d                	li	a2,-1
   1238e:	872a                	mv	a4,a0
   12390:	02c50563          	beq	a0,a2,123ba <_sbrk+0x44>
   12394:	04a1aa23          	sw	a0,84(gp) # 13cf4 <heap_end.0>
   12398:	0d600893          	li	a7,214
   1239c:	00e78533          	add	a0,a5,a4
   123a0:	00000073          	ecall
   123a4:	0541a703          	lw	a4,84(gp) # 13cf4 <heap_end.0>
   123a8:	97ba                	add	a5,a5,a4
   123aa:	00f51863          	bne	a0,a5,123ba <_sbrk+0x44>
   123ae:	40b2                	lw	ra,12(sp)
   123b0:	04a1aa23          	sw	a0,84(gp) # 13cf4 <heap_end.0>
   123b4:	853a                	mv	a0,a4
   123b6:	0141                	add	sp,sp,16
   123b8:	8082                	ret
   123ba:	286d                	jal	12474 <__errno>
   123bc:	40b2                	lw	ra,12(sp)
   123be:	47b1                	li	a5,12
   123c0:	c11c                	sw	a5,0(a0)
   123c2:	557d                	li	a0,-1
   123c4:	0141                	add	sp,sp,16
   123c6:	8082                	ret

000123c8 <_write>:
   123c8:	1141                	add	sp,sp,-16
   123ca:	c606                	sw	ra,12(sp)
   123cc:	c422                	sw	s0,8(sp)
   123ce:	04000893          	li	a7,64
   123d2:	00000073          	ecall
   123d6:	842a                	mv	s0,a0
   123d8:	00054763          	bltz	a0,123e6 <_write+0x1e>
   123dc:	40b2                	lw	ra,12(sp)
   123de:	8522                	mv	a0,s0
   123e0:	4422                	lw	s0,8(sp)
   123e2:	0141                	add	sp,sp,16
   123e4:	8082                	ret
   123e6:	40800433          	neg	s0,s0
   123ea:	2069                	jal	12474 <__errno>
   123ec:	c100                	sw	s0,0(a0)
   123ee:	547d                	li	s0,-1
   123f0:	b7f5                	j	123dc <_write+0x14>

000123f2 <_conv_stat>:
   123f2:	0185d703          	lhu	a4,24(a1)
   123f6:	0145d783          	lhu	a5,20(a1)
   123fa:	1141                	add	sp,sp,-16
   123fc:	01c5a283          	lw	t0,28(a1)
   12400:	0205af83          	lw	t6,32(a1)
   12404:	0305af03          	lw	t5,48(a1)
   12408:	0405ae83          	lw	t4,64(a1)
   1240c:	0385ae03          	lw	t3,56(a1)
   12410:	0485a303          	lw	t1,72(a1)
   12414:	04c5a383          	lw	t2,76(a1)
   12418:	0585a803          	lw	a6,88(a1)
   1241c:	05c5a883          	lw	a7,92(a1)
   12420:	c622                	sw	s0,12(sp)
   12422:	c426                	sw	s1,8(sp)
   12424:	4980                	lw	s0,16(a1)
   12426:	4584                	lw	s1,8(a1)
   12428:	c24a                	sw	s2,4(sp)
   1242a:	0005a903          	lw	s2,0(a1)
   1242e:	55b0                	lw	a2,104(a1)
   12430:	0742                	sll	a4,a4,0x10
   12432:	8fd9                	or	a5,a5,a4
   12434:	55f4                	lw	a3,108(a1)
   12436:	01251023          	sh	s2,0(a0)
   1243a:	00951123          	sh	s1,2(a0)
   1243e:	c140                	sw	s0,4(a0)
   12440:	c51c                	sw	a5,8(a0)
   12442:	00551623          	sh	t0,12(a0)
   12446:	01f51723          	sh	t6,14(a0)
   1244a:	01e52823          	sw	t5,16(a0)
   1244e:	05d52623          	sw	t4,76(a0)
   12452:	05c52423          	sw	t3,72(a0)
   12456:	00652c23          	sw	t1,24(a0)
   1245a:	00752e23          	sw	t2,28(a0)
   1245e:	03052423          	sw	a6,40(a0)
   12462:	03152623          	sw	a7,44(a0)
   12466:	dd10                	sw	a2,56(a0)
   12468:	4432                	lw	s0,12(sp)
   1246a:	dd54                	sw	a3,60(a0)
   1246c:	44a2                	lw	s1,8(sp)
   1246e:	4912                	lw	s2,4(sp)
   12470:	0141                	add	sp,sp,16
   12472:	8082                	ret

00012474 <__errno>:
   12474:	0381a503          	lw	a0,56(gp) # 13cd8 <_impure_ptr>
   12478:	8082                	ret
