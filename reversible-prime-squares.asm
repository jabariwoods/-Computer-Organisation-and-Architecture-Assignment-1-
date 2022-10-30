# File : Reversible prime square.asm
# Author : Raphooko Montsi Phooko 
#Student number : 202004555
# Purpose : To generat the first 10 reversible prime squares

# Example function to demonstrate calling conventions
# -----------------------------------------------------
.data
rhs: .word 3
lhs: .word 5
rps: .word 0
ps: .word 6
count: .word 0
# ------------------------------------
# Main routine
.text
.globl main
.ent main
main:
lw $a0,rps  # pass arg's to function
lw $a1,ps 
jal reversed
sw $v0, count
li $v0, 10
syscall # terminate
.end main

.globl reversed
.ent reversed
reversed:
li $v0, 1
li $t0, 0
powLoop:
mul $v0, $v0, $a0
add $t0, $t0, 1
blt $t0, $a1, reversed
jr $ra
.end reversed
