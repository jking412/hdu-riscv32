main:
	add t0,x0, x0
	add t1,x0, x0
	addi t2,x0, 10

L1:
    lw t3,0x40(t1)
	add t0,t0,t3
	addi t1,t1,4
	addi t2,t2,-1
	beq t2,x0,L2
	j L1

L2:
    sw t0, 0x80(x0)
