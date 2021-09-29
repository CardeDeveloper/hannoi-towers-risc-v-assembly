.text
#numero de discos
addi t0,zero,5
#inicio apuntadores
lui  s1,0x10010 #torre origen

ori s2,s1,36#Torre aux

ori s3,s2,64#Torre destino

#addi i,zero,0# iterador
addi t1,zero,5
sw t1, 0(s1) 
sw t1, 0(s2) 
sw t1, 0(s3) 

casoBase:

hanoi:

end: