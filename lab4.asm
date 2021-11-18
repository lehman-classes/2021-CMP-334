#
# Consider the Java code below and translate the code into MIPS instructions as directly as possible
#
# int x = 20;
# int y = x + 5;
#

.data 

.text

# x = 20
li $t0, 20
# y = x + 5
addi $t1, $t0, 5
