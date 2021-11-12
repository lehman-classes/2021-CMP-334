#
# Consider the Java-like pseudo code below and translate to MIPS instructions as directly as possible.
#
# Save your code to a file named homework_3a.asm and upload to blackboard
#
# int a = 6;      # use $t6 to keep track of a's value
# int b = 12;     # use $t7 to keep track of b's value
# int x = 0;      # use $t0 to keep track of x's value
#
# while (a > 0) {
#   x = x + b;
#   b = b - 2;
#   a--;
# }
#

#
# Consider the Java-like pseudo code below and translate to MIPS instructions as directly as possible.
#
# Save your code to a file named homework_3b.asm and upload to blackboard
#
# read string name                          # prompt user to enter their name  "Enter your name: "
# for (i = 0, i < name.length - 1, i++) {   # use $t0 to keep track of i's value
#   print name[i]                           # prints one char at location i
# }
#