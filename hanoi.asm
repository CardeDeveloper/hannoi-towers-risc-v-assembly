.eqv i t1

.text
#numero de discos
addi t0,zero,5
#inicio apuntadores
lui  s1,0x10010 #torre origen
addi s2,s1,4#Torre aux
ori s3,s1,8#Torre destino

#colocamos disco en torre origen
addi i,zero,1 # iterador
add sp,zero,s1
init:
sw i,0(sp)
addi sp,sp,0x20
addi i,i,1
bge t0,i,init



casoBase:

hanoi:

end: