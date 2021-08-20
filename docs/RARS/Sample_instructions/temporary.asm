
#this file is intentend to be used for quick unit tests
#current unit test doesnt work
addi t1, zero, 100
nop
nop
nop
nop

jalr t5, zero, 32
nop
nop

addi t2, t2, 50
nop
nop
nop
nop

branch_works:
addi t2, t2, 100