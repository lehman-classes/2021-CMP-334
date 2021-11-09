#
#  Write a program that reads an integer, adds 1 to it, and prints the result
#

.data


.text

# read an integer
li $v0, 5
syscall

# adds 1 to it
add $t0, $v0, 1

# prints the result
li $v0, 1
add $a0, $t0, $zero
syscall
