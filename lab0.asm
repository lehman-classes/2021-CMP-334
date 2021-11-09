.data 


.text 

main:


li $t1, 4
addi $t0, $t1, 5
j end
 
li $t2, 1
addi $t2, $t2, 2 
 
end:
li $v0, 10
syscall