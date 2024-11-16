Algoritmo "velocidade-maxima-desa1"

//Escreva um programa que receba a velocidade máxima em uma avenida 
//e a velocidade com que um motorista estava dirigindo nela.
// Calcule a multa que o motorista vai receber, considerando que são pagos R$ 5.00
// por cada km/h que estiver acima da velocidade permitida (considere apenas números inteiros). 
//Se a velocidade do motorista estiver dentro do limite, o programa deve informar que não há multa.


Var

       vm, vd, diferenca, multa: inteiro


Inicio
       //pedir a valocidade maxima da avenida
       escreva("Escreva a velocidade máxima da avenida: ")
       leia(vm)

       //pedir a velocidade maxima em que o motorista esta dirigindo
       escreva("Escreva a velocidade em que o motorista esta dirigindo: ")
       leia(vd)

       // descobrir se possui diferença na velocidade, se for maior que 0 então sera aplicado a multa, caso contrario não recebe multa
       diferenca<- vd-vm
       se diferenca>0 então
           multa<-diferenca*5
           escreva("Você foi multado! O valor da multa é: R$ ",multa)
       senão
           escreva("Você não foi multado! arrasou")
       fimse

Fimalgoritmo