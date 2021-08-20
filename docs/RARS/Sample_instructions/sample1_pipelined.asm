#These instructions assume that Hazard avoidance is 
#the burden of the programmer thus nop is frequently used


#initialize t1 with 100
addi t1, zero, 100
nop
nop
nop
nop
nop

#check bne operation
bne t1, zero, bne_work
nop
nop
addi t1, t1, 100
nop
nop
nop
nop

#should land here 
bne_work:
addi t1, t1, 100
nop
nop
nop
nop
#at this point t1 should only be equal to 200 (error when t1 = 300)

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

sd t3, -8(t4)      # -8 byte offset from memory slot 6 (should be memory index 5)
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

#check beq operation
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
#should land here 
addi t5, t4, 300
nop
nop
nop
nop


sub t5, t5, t1
nop
nop
nop
nop
#at this point t5 should equal 132

sd t5, 48(zero)      # store in memory slot 7 (should be memory index 6)
nop
nop
nop
nop

#Final values are:
#t5 = 132
#t4 = 32
#t3 = 32
#t2 = 0
#t1 = 200
#memory index 6 = 132 (signed decimal)
