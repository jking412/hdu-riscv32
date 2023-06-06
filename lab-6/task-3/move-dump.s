
move.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <BankMove>:
   0:	000502b3          	add	t0,a0,zero
   4:	00058333          	add	t1,a1,zero
   8:	000603b3          	add	t2,a2,zero

0000000c <L1>:
   c:	0002ae03          	lw	t3,0(t0)
  10:	01c32023          	sw	t3,0(t1)
  14:	00428293          	add	t0,t0,4
  18:	00430313          	add	t1,t1,4
  1c:	fff38393          	add	t2,t2,-1
  20:	fe0396e3          	bnez	t2,c <L1>
  24:	00008067          	ret

00000028 <main>:
  28:	03000513          	li	a0,48
  2c:	06000593          	li	a1,96
  30:	00a00613          	li	a2,10
  34:	fcdff0ef          	jal	0 <BankMove>
