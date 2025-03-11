.data
input: .space 100 
.text
#.globl main

main:
    # read string
    la a0, input
    li a1, 100        
    li a7, 8
    ecall         

    # print string
    la a0, input
    li a7, 4        
    ecall        

    # exit
    li a7, 10  
    ecall   