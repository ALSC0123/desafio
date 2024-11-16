Algoritmo "importo-de-renda"

Var
      bc, imposto: real

Inicio
      //pedir a base de calculo mensal para calcular o imposto de renda devido
      escreva("Informe a base de cálculo mensal em R$: ")
      leia(bc)

      //se for menor ou igual a 1637.11 então o imposto de renda devido é 0
      se bc <= 1637.11 então
         imposto <- 0
      senao
         se bc <= 2453.50 então //se for menor ou igual a 2453.50 então sera realizado este calculo para descobrir o valor do imposto
            imposto <- (bc*7.5/100)-122.78
         senao
            se bc <= 3271.38 então //se for menor ou igual a 3271.38 então sera realizado este calculo para descobrir o valor do imposto
               imposto <- (bc*15.0/100)-306.80
            senao
               se bc <= 4087.65 então //se for menor ou igual a 4087.65 então sera realizado este calculo para descobrir o valor do imposto
                  imposto <- (bc*22.5/100)-552.15
               senao
                  imposto <- (bc*27.6/100)-756.53 //caso seja maior que 4087.65 então sera realizado este calculo para descobrir o valor do imposto
               fimse
            fimse
         fimse
      fimse
      //informara o valor do imposto
      escreva("O total de imposto de renda devido é: R$", imposto)

Fimalgoritmo
