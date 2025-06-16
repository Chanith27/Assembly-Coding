.data
	
.text
	addi $s0, $zero, 10
	addi $s1, $zero, 4
	
	mul $t0, $s0 , $s1 	# Multiplication 01
	mult $s0 , $s1		# Multiplication 02
	
	# Display the product
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	
	# Display the product
	mflo $t1
	
	li $v1, 1
	add $a1, $zero, $t1
	syscall