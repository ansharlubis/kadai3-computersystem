	.data
A:
	.asciiz "true"
B:
	.asciiz "false"

	.text
main:
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5,
	syscall
	move $t2, $v0
	
	slt $t0, $t1, $t2		# check $t1 < $t2
	bne $t0, $zero, label	# if $t1 < $ t2 jump to label
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


	