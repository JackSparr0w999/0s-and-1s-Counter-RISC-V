.globl main

.data
input: .space 20

.text

main:
li a7, 8
la a0, input
li a1, 20
ecall

var:
mv s0, a0
li s1, 0 #contatore per uno
li s2, 0 #contatore per zero
li s3, 10
li s4, '0' # in questo modo il programma legge il corrispettivo ascii 48

jal funzione
mv a0, s2
li a7, 1
ecall

mv a0, s3
li a7, 11 # se metto 1 che succede
ecall

mv a0, s1
li a7, 1
ecall

li a7, 10
ecall

funzione:
lb t0, 0(s0)
beq t0, s3, exit
beq t0, s4, addzero
addi s1, s1, 1 # incremento l'uno
addi s0, s0, 1 # incremento indirizzo
j funzione

exit:
ret

addzero:
addi s2, s2, 1
addi s0, s0, 1
j funzione
