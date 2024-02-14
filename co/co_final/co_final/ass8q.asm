.data
prompt: .asciiz "Enter the expression"
buffer: .space 256

.text
main:
    la $a0,prompt
    li $v0,4
    syscall
    