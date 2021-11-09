      .data

str:  .asciiz "hello there" 

      .text
main:
      li $v0, 4
      la $a0, str
      syscall

