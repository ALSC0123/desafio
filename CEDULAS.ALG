Algoritmo "cedulas"

//Suponha que você está programando um módulo contador de cédulas para caixas eletrônicos. 
//Escreva um programa que informa com quantas cédulas de Real podemos representar um dado valor.
// Exemplo de resposta: R$ 218 = 2 cédulas de 100, 1 cédula de 10, 1 cédula de 5, 1 cédula de 2 e 1 cédula de 1. 
//Procure minimizar o número de cédulas usadas. Desconsidere valores com centavos, 
//e suponha que a máquina sempre tem disponíveis as cédulas necessárias.

Var
   rs: inteiro
   resto, cem, cinquenta, dez, cinco, dois, um: inteiro

Inicio
   //pedir a quantidade de reais
   escreval("Contador de cedulas para caixas eletronicos")
   escreva("Escreva a quantidade de reais. R$: ")
   leia(rs)

   //resto fica com o valor do numero fornecido
   resto <- rs

   //se for maior igual a 100 entao sera realizado o calculo da variavel cem
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
   escreval("R$", rs, ": ", cem, " cedulas de 100, ", cinquenta, " cedulas de 50, ", dez, " cedulas de 10, ", cinco, " cedulas de 5, ", dois, " cedulas de 2 e ", um, " cedula de 1.")

Fimalgoritmo