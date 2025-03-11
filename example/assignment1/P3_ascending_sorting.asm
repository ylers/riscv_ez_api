.data
	array: .space 200
	re: .ascii "\n"
.text

	#read n -> s1
	#temp n -> s0
	li a7, 5
	ecall
	mv s1, a0
	mv s0, s1


	# t0 as front
	# t1 as forword index
	# t2 as backword index
	la t0, array
	la t1, array
	
	
	loop1:
		#read int
		li a7, 5
		ecall
		#the input num is at a0
		mv t2, t1
		loop2:
			#avoid overflow
			beq t2, t0, then1
			
			#s10(pre) is compared numbers
			lw s10, -4(t2)
			blt s10, a0, then1#if(s10 < a0) then jump ->
			
			
			sw s10, 0(t2)
			addi t2, t2, -4
			j loop2
			
			
			
			#->
		then1:
		sw a0, 0(t2)
		addi t1, t1, 4
		addi s0, s0, -1
		bnez s0, loop1
		
		
	#read data
	la t0, array
	loop3:
		lw a0, 0(t0)
		li a7, 36
		ecall
		
		lw a0, re
		li a7, 11
		ecall
		
		
		addi t0, t0, 4
		addi s1, s1, -1
		bnez s1, loop3
		
	li a7, 10
	ecall
	
	
	
	
	