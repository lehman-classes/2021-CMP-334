# class lab 0
#
# Let's start coding in Assembly
# 
# This program should print the value 7

.data

.text
main:

# putting a value in $t0
addi $t0, $zero, 7

# printing out the value in $t0
li $v0, 1
la $a0, ($t0)
syscall

# ending the program
li $v0, 10
syscall