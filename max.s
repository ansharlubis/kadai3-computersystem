	.data
A:
	.word 2 7 8 1 3 9

	.text
main:
	li $t0, 0  # intial maximum value
	li $t1, 0  # index number

loop:						# loop, checking array
	lw $t2, A($t1)   		# load value from array
	beq $t2, $zero, end		# check whether end of array or not
	blt $t0, $t2, change	
	addi $t1, $t1, 4		
	j loop

change:				 		# swap with new maximum value
	move $t0, $t2
	addi $t1, $t1, 4
	j loop

end:
	li $v0, 1
	move $a0, $t0
	syscall
	j $ra
	

