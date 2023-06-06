
acc.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	000002b3          	add	t0,zero,zero
   4:	00000333          	add	t1,zero,zero
   8:	00a00393          	li	t2,10

0000000c <L1>:
   c:	04032e03          	lw	t3,64(t1)
  10:	01c282b3          	add	t0,t0,t3
  14:	00430313          	add	t1,t1,4
  18:	fff38393          	add	t2,t2,-1
  1c:	00038463          	beqz	t2,24 <L2>
  20:	fedff06f          	j	c <L1>

00000024 <L2>:
  24:	08502023          	sw	t0,128(zero) # 80 <L2+0x5c>
