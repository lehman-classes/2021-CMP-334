# In assembly, we are able to have access to two kinds of memory 
# - Register Files
# - Memory (as we know it)
#
# In higher level languages, like Java, programmers have only access to just memory (not the register file)
# - Memory
#
# CPU -> needs access to some kind of storage
# - Hard Drive  -> Big but slow - too too sloooow and far removed from the CPU
# - Memory -> Not as big but faster - faster but not as fast as register
# - Register -> small but fastest 
#
#
# a word in MIPS is 32 bits or 4 bytes 00000000 00000000 00000000 00000000 
.data 
a: .word 5
b: .word 2
c: .word 3
z: .word 0

# x = a + b + c + d - (2 * z) / 4

prompt: .asciiz "Enter a value for z: "
result: .asciiz "The result is: "
nl: .asciiz "\n"

.text
main:
# Get input value and store it in $s0
li $v0, 4
la $a0, prompt
syscall

li $v0, 5
syscall

move $s0, $v0

# Use the value of $s0 and add 7 to it, store the result into z
addi $t6, $s0, 7
# print value of register $t6
li $v0, 1
la $a0, ($t6)
syscall

sw $t6, z

li $v0, 4
la $a0, nl
syscall

li $v0, 1
lw $a0, z
syscall


# Load constants a, b, c into registers $t0, $t1, $t2
lw $t0, a
lw $t1, b
lw $t2, c




