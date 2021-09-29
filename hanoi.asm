#Oscar Angel cardenas Auilar
#Marcela Quintero Perez

.eqv i t1
.eqv discs s0
.text
#numero de discos
addi discs,zero,5
#inicio apuntadores
lui  s1,0x10010 #torre origen
addi s2,s1,4#Torre aux
ori s3,s1,8#Torre destino

#colocamos disco en torre origen
add i,zero,discs # iterador
add sp,zero,s1
init:
sw i,0(sp)
addi sp,sp,0x20
addi i,i,-1
blt zero,i,init

#parametros de funcion
addi sp,sp,-0x20
add a0,zero,discs #n
add a1,zero,sp #origen
add a2,zero,s2 #aux
add a3,zero,s3 #dest
jal ra, hanoi
jal ra, end


hanoi:
#todo sp
#comprobamos caso base
addi s10,zero,1
beq a0,s10,casoBase
#else
#hanoi(n-1,o,a,d)
#a.push(o.pop())
lw t5,0(a1)
sw zero,0(a1)
sw t5,0(a3)

#hanoi(n-1,a,d,o)



#caso base
casoBase:
#mover cuando solo hay 1 disco a la torre destino



end: