#These instructions assume that Hazard avoidance is 
#the burden of the programmer thus nop is frequently used


addi t1, zero, 100
nop
nop
nop
nop
nop

bne t1, zero, bne_work
nop
nop
addi t1, t1, 100
nop
nop
nop
nop

bne_work:
addi t1, zero, 100
nop
nop
nop
nop

#Initialize memory slot 4
addi t3, zero, 32
nop
nop
nop
nop

sd t3, 32(zero)
nop
nop
nop
nop

#Initialize memory slot 5 (using a negative offset)
addi t4, zero, 48  #address of memory slot 6
nop
nop
nop
nop

sd t3, -8(t4)      # -8 byte offset from memory slot 6 (should be memory slot 5)
nop
nop
nop
nop

#Load value from memory slot 5
ld t4, 40(zero)
nop
nop
nop
nop

beq t3, t4, beq_work
nop
nop

addi t4, t4, 100
nop
nop
nop
nop
nop
beq_work:

addi t5, zero, 300
nop
nop
nop
nop
nop

sub t5, t5, t1
nop
nop
nop
nop
