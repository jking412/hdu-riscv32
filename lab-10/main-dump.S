
main.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	01000513          	li	a0,16
   4:	00306593          	or	a1,zero,3
   8:	03004613          	xor	a2,zero,48
   c:	008000ef          	jal	14 <BankSum>
  10:	00062403          	lw	s0,0(a2)

00000014 <BankSum>:
  14:	000502b3          	add	t0,a0,zero
  18:	0005e333          	or	t1,a1,zero
  1c:	000073b3          	and	t2,zero,zero

00000020 <L>:
  20:	0002ae03          	lw	t3,0(t0)
  24:	01c383b3          	add	t2,t2,t3
  28:	00428293          	add	t0,t0,4
  2c:	fff30313          	add	t1,t1,-1
  30:	00030463          	beqz	t1,38 <exit>
  34:	fedff06f          	j	20 <L>

00000038 <exit>:
  38:	00762023          	sw	t2,0(a2)
  3c:	00008067          	ret

