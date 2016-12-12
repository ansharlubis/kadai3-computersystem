	.data
A:
	.word 1 2 3 4
B:
	.word 5 6 7 8

	.text
main:
	li $t0, 0		# index for A
	li $t1, 12 		# index for B

loop:
	lw $t3, A($t0)	
	beq $t3, $zero, end
	lw $t4, B($t1)
	add $t5, $t3, $t4
	li	$v0, 1
	move $a0, $t5
	syscall

	addi $t0, $t0, 8
	addi $t1, $t1, -8
	j loop

end:
	jr $ra
