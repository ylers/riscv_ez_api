.text
    #read n to t0
    li a7, 5
    ecall
    mv t0,a0
    
    #read k to t1
    li a7, 5
    ecall
    mv t1,a0
    
    
    #fenzi: s0,  fenmu: s1, count: a0
    li s0, 1
    li s1, 1
    mv a0, t1
    loop1:
    	mul s0, s0, t0
    	mul s1, s1, a0
    	addi t0, t0, -1
    	addi a0, a0, -1
    	bnez a0, loop1
    
    
    div s0, s0, s1
    
    mv a0, s0
    li a7, 1
    ecall
    
    
    