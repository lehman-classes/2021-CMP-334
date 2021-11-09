# data segment
.data 

something: 	.asciiz "Sum: "

# instruction segment
.text  
main:

# adding two values 1 and 2
li	$t1, 1
add	$t0, $t1, 2


# printing addition result
li	$v0, 4
la	$a0, something
syscall 

li	$v0, 1
la	$a0,($t0)
syscall 

# exiting the program
li 	$v0, 10
syscall  