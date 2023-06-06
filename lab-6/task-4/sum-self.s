sum:
    addi a0, x0, 0
    addi a1, x0, 0
loop:
    addi a0, a0, 1
    add a1, a1, a0
    bne a0, t0, loop
    jr ra
main:
    addi t0, x0, 100
    jal sum
    add t1,x0, a1
    jr ra
