#
#  Write a program that reads an integer and prints all the integers up to its value
#
#  so if the integer read is 5, the program should print 0 1 2 3 4
#
#  read integer x
#  i = 0;
#  while(i < x) {
#    print i
#    i++
#  }

.data

.text

# read an integer
li $v0, 5
syscall

# saving value read into another register
addi $s0, $v0, 0

# starting counter at 0
addi $t0, $zero, 0

while:
  # print value of $t0
  li $v0, 1
  add $a0, $t0, $zero
  syscall
  
  # increment counter
  addi $t0, $t0, 1
  
  # loop
  blt $t0, $s0, while 

