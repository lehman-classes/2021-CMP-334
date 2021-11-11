#
# Consider this Java code and translate the code into MIPS instructions as directly as possible
#
# int x = 1;
# int y = 0;
#
# if (x == 0) {
#   y++;
# } else if (x == 1) {
#   y--;
# } else {
#   y = 100;
# }
#

.data


.text
# int x = 1
li $t0, 1
# int y = 0
addi $t1, $zero, 0

# if (x == 0) {
beqz $t0, add_one
# } else if (x == 1) {
beq $t0, 1, sub_one
# } else {
j set_one_hundred

add_one:
  # y++;
  addi $t1, $t1, 1
  j end_prog

sub_one:
  # y--;
  subiu $t1, $t1, 1
  j end_prog

set_one_hundred:
  li $t1, 100

end_prog:
  li $v0, 10
  syscall