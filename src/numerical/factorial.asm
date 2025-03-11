#without checking whether overflow
factorial: #s0 is n -> s0 is n! 
	#s1 is count,finally it is zero
	mv s1, s0
    	li s0, 1
    	loop1:
    		mul s0, s0, s1
    		addi s1, s1, -1
    		bnez  s1, loop1
    	jr ra