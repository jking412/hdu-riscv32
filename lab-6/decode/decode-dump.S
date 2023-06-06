
decode.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <.text>:
   0:	007302b3          	add	t0,t1,t2
   4:	00331293          	sll	t0,t1,0x3
   8:	00230293          	add	t0,t1,2
   c:	00c30283          	lb	t0,12(t1)
  10:	00530223          	sb	t0,4(t1)
  14:	00629463          	bne	t0,t1,1c <.text+0x1c>
  18:	0000006f          	j	18 <.text+0x18>
  1c:	008302e7          	jalr	t0,8(t1)
  20:	000002ef          	jal	t0,20 <.text+0x20>
  24:	0000c2b7          	lui	t0,0xc
