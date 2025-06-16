.data
	message: 	.asciiz "The Numbers are Equal."
	message2: 	.asciiz "Nothing Happened."
.text
	main:
		addi $t0, $zero, 10
		addi $t1, $zero, 10
		
		beq $t0, $t1 , numbersEqual
	
	# syscall of programme
	li $v0 , 10
	syscall
	
	numbersEqual:
		li $v0, 4
		la $a0, message
		syscall