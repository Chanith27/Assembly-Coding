.data
	number1: .word 20
	number2: .word 11
.text
	lw $s0, number1
	lw $s1, number2
	
	sub $t0,$s0,$s1
	
	li $v0, 1
	move $a0, $t0
	syscall
	