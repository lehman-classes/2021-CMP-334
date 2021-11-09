#
#  Write a program that prints the value 5
# 

.data


.text

# li $v0, 1
addi $v0, $zero, 1
addi $a0, $zero, 5
syscall
