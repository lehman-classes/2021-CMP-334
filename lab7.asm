#
# Consider the Java code below and translate it into MIPS instructions as directly as possible
#
# int a = 1;
# int b = 2;
# int c = 3;
# int d = 4;
# int e = 5;
# int f = 6;
# int g = 7;
#
# int x = a + b + c + d + e + f + g;
#

.data

result: .asciiz "the result is: " 

.text
# int a = 1;
li $t0, 1
# int b = 2;
li $t1, 2
# int c = 3;
li $t2, 3
# int d = 4;
li $t3, 4
# int e = 5;
li $t4, 5
# int f = 6;
li $t5, 6
# int g = 7;
li $t6, 7

# int x = a + b + c + d + e + f + g;
add $t7, $t0, $t1
add $t7, $t7, $t2
add $t7, $t7, $t3
add $t7, $t7, $t4
add $t7, $t7, $t5
add $t7, $t7, $t6

# printStuff(String text) {
#   System.out.println(text);
# }
# print string
li $v0, 4
la $a0, result
syscall

# printStuff(int num) {
#  System.out.println(num);
# }
# print result
li $v0, 1
add $a0, $t7, $zero
syscall

# end program
li $v0, 10
syscall