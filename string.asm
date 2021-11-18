
.data

string: .asciiz "Hello" 

.text

.globl main

main:
# read string
la $t0, string

# int i =0

# name.length - 1

# print name[i]


li $t7, 0
load_string_length_into_reg_7:
  lb $a0, 0($t0)   # placing one byte of string into register $a0
  beqz $a0, end    # exit if it is null or zero
  addi $t0, $t0, 1 # increment index
  addi $t7, $t7, 1 # adding each char to determine length
  j load_string_length_into_reg_7
    
end:
li $v0, 10
syscall
