#
# Consider this Java pseudo code and translate the code into MIPS instructions as directly as possible
#
# int y = 0; # use $t0 to keep track of y's value
#
# # use $t1 to keep track of i's value
# for(int i = 0; i < 5; i++) {
#   y = y + 2;
# } 
# print y
#

.data

.text                 # Start of code section 
.globl      main

main:
# setting values
# y = 0
li $t0, 0

# int i = 0;
li $t1, 0

# i < 5 *sort of
bge $t1, 5, print
# loop
for_loop:
  # y = y + 2
  addi $t0, $t0, 2
  # i++
  addi $t1, $t1, 1
  # i < 5
  blt $t1, 5, for_loop

print:
# print y
li $v0, 1
la $a0, ($t0)
syscall

# ending of program
end:
li $v0, 10
syscall

