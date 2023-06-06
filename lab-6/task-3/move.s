BankMove:
	add t0,a0,zero;
	add t1,a1,zero;
	add t2,a2,zero;
L1:	lw t3,0(t0);
	sw t3,0(t1);
	addi t0,t0,4;
	addi t1,t1,4;
	addi t2,t2,-1;
	bne t2,zero,L1;
	jr ra
main:
	addi a0,zero,0x30;
	addi a1,zero,0x60;
	addi a2,zero,10;
	jal BankMove
