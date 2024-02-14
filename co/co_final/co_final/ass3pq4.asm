.text
.globl main
main: 
    li $v0,5
    syscall
    move $t0,$v0

    li $t1,40
    blt $t0,$t1,1000
    bc1t fgrade
    bc2t conds

fgrade:

    li $v0,4
    la $a0,gradef
    syscall

    li $v0,10
    syscall
conds:
    
    li $t2,80

    bgt $t1,$t2,1000
    bc1t agrade
    bc2f cond2

    li $v0,10
    syscall

agrade:
    li $v0,4
    la $a0,gradea
    syscall

    li $v0,10
    syscall

cond2: 
    li $t3,60

    bgt $t1,$t3,1000
    bc1t bgrade
    bc2f cond3

    li $v0,10
    syscall



bgrade:
    li $v0,4
    la $a0,gradeb
    syscall

    li $v0,10
    syscall

cond3: 
    li $t4,40

    bgt $t1,$t4,1000
    bc1t cgrade

    li $v0,10
    syscall

cgrade:
    li $v0,4
    la $a0,gradec
    syscall

    li $v0,10
    syscall



gradef: .asciiz"F Grade"
gradeb: .asciiz"B Grade"
gradec: .asciiz"C Grade"
gradea: .asciiz"A Grade"