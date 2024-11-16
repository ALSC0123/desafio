Algoritmo "cedulas"

Var
   rs: inteiro
   resto, cem, cinquenta, dez, cinco, dois, um: inteiro

Inicio
   //pedir a quantidade de reais
   escreval("Contador de cédulas para caixas eletrônicos")
   escreva("Escreva a quantidade de reais. R$: ")
   leia(rs)
   //resto fica com o valor do numero fornecido
   resto <- rs

   //se for maior igual a 100 então sera realizado o calculo da variavel cem
   se resto >= 100 então
      cem <- resto \ 100 //valor fornecido divido por 100 (  "\"- divisão inteira)
      resto <- resto - (cem * 100) // vai pegar o valor total fornecido e vai subtrair pelo valor da variavel cem*100 (descobrindo assim o valor em reais que sera utilizado nos proximos passos)
   fimse
   //sera realizado o mesmo calculo nos proximos passor, apenas com valores diferentes
   se resto >= 50 então
      cinquenta <- resto \ 50
      resto <- resto - (cinquenta * 50)
   fimse


   se resto >= 10 então
      dez <- resto \ 10
      resto <- resto - (dez * 10)
   fimse


   se resto >= 5 então
      cinco <- resto \ 5
      resto <- resto - (cinco * 5)
   fimse


   se resto >= 2 então
      dois <- resto \ 2
      resto <- resto - (dois * 2)
   fimse


   um <- resto
   //informara a quantidade de cedulas transformadas apartir do valor informado
   escreval("R$", rs, ": ", cem, " cédulas de 100, ", cinquenta, " cédulas de 50, ", dez, " cédulas de 10, ", cinco, " cédulas de 5, ", dois, " cédulas de 2 e ", um, " cédula de 1.")

Fimalgoritmo