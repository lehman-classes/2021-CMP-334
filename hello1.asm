# Pragram: Hello, World!
          .data                 # data declaration section; specifies values to be stored
                                # in memory and labels whereby the values are accessed
Greetings:          .asciiz          "\nHello, World!\n"

          .text                 # Start of code section 
          .globl      main
main:
          li          $v0, 4            # system call code for printing string = 4
          la          $a0, Greetings    # load address of string to be printed into $a0
          syscall                       # call operating system to perform operation;
                                        # $v0 specifies the system function called;
                                        # syscall takes $v0 (and opt arguments)
          jr          $ra
