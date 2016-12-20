	.data
A:
	.asciiz "true"
B:
	.asciiz "false"

	.text
main:
	li $t0, 4
	li $t1, 3
	sub $t2, $t0, $t1

	slti $t3, $t2, 1
	bne $t3, $zero, label

	li $v0, 4				
	la $a0, B
	syscall					# print false
	j end

label:
	li $v0, 4
	la $a0, A
	syscall					# print true

end:
	jr $ra