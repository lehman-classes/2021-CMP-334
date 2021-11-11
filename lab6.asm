#
# Consider the Java code below and translate it into MIPS instructions as directly as possible
#
# int x = 1;
# int y = 2;
# int z = 3;
#
# int p = x + y + z;
#

.data

.text
# int x = 1;
li $t0, 1
# int y = 2;
li $t1, 2
# int z = 3;
li $t2, 3

# int p = x + y + z;
# p = x + y
add $t3, $t0, $t1
# p = p + z
add $t3, $t3, $t2

li $v0, 10
syscall