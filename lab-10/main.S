main:
    addi a0, zero, 0x10; #a0=0000_0010H，数据区域（数组）首址
    ori a1, zero, 3 #a1=0000_0003H，累加的数据个数
    xori a2, zero, 0x30; #a2=0000_0030H，累加和存放的单元
    jal BankSum #子程序调用
    lw s0, 0(a2) #读出累加和
BankSum:
    add t0, a0, zero; #t0=数据区域首址
    or t1, a1, zero; #t1=计数器，初始为累加的数据个数
    and t2, zero, zero; #t2=累加和，初始清零
L:
    lw t3, 0(t0); #t3=取出数据
    add t2, t2, t3 #累加
    addi t0, t0, 4; #移动数据区指针
    addi t1, t1, -1; #计数器-1
    beq t1, zero, exit; #计数值=0，累加完成，退出循环
    j L #计数值≠0，继续累加，跳转至循环体首部
exit:
    sw t2, 0(a2); #累加和，存到指定单元
    jr ra #子程序返回