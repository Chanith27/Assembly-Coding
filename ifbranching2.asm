.data
	message: 	.asciiz "The Numbers are less than the other."
.text
	main:
		addi $t0, $zero, 1
		addi $t1, $zero, 10
		
		blt  $t0, $t1 , numbersEqual
	
	# syscall of programme
	li $v0 , 10
	syscall
	
	numbersEqual:
		li $v0, 4
		la $a0, message
		syscall