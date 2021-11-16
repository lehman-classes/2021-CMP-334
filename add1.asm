# Program: adding
         .data
Op1:     .asciiz         "\nEnter first operand: "
Op2:     .asciiz         "\nEnter second operand: "
Res:     .asciiz         "\nThe total sum is "
Ret:     .asciiz         "\n"

         .text
         .globl          main
main:
         li     $v0,4
         la     $a0,Op1
         syscall

         li     $v0,5
         syscall

         move   $t0,$v0

         li     $v0,4
         la     $a0,Op2
         syscall

         li     $v0,5
         syscall

         move   $t1,$v0

         li     $v0,4
         la     $a0,Res
         syscall

         addu   $a0,$t0,$t1

         li     $v0,1
         syscall

         li     $v0,4
         la     $a0,Ret
         syscall

         jr     $ra
