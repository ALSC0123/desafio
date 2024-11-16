Algoritmo "velocidade-maxima-desa1"

Var

       vm, vd, diferenca, multa: inteiro


Inicio
       //pedir a valocidade maxima da avenida
        escreva("Escreva a velocidade máxima da avenida: ")
        leia(vm)

        //pedir a velocidade maxima em que o motorista esta diriggindo
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