.data
    number1: .asciiz "Enter Your First Number: "
    number2: .asciiz "Enter Your Second Number: "
    result_add: .asciiz "Addition: "
    result_sub: .asciiz "Subtraction: "

.text
    # Prompt and read first number
    li $v0, 4              
    la $a0, number1
    syscall

    li $v0, 5             
    syscall
    move $t0, $v0          

    # Prompt and read second number
    li $v0, 4
    la $a0, number2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0          
    
    # Branch depending on values
    bge $t1, $t0, addition

    # Subtraction if $t1 < $t0
    sub $t2, $t0, $t1
    li $v0, 4
    la $a0, result_sub
    syscall

    li $v0, 1             
    move $a0, $t2
    syscall
    j end_program

addition:
    add $t3, $t0, $t1
    li $v0, 4
    la $a0, result_add
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

end_program:
