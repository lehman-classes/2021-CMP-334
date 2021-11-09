# class lab 0
#
# Let's start coding in Assembly
# 
# Write a program that reads an integer, adds 1 to it, and prints the result.

.data

prompt_user: .asciiz "Please enter a value: "
show_result: .asciiz "The result is: "

.text
main:

# reading an integer
li $v0, 4
la $a0, prompt_user
syscall

li $v0, 5
syscall

# adding 1 to the read integer
addi $t0, $v0, 1

#printing the result
li $v0, 4
la $a0, show_result
syscall

li $v0, 1
la $a0, ($t0)
syscall

# save result to memory
sw $t0, -4($sp)


# ending the program
li $v0, 10
syscall