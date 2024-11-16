Algoritmo "area-poligonos"

//Faça um programa que receba do usuário o número de lados e o tamanho dos lados de um
polígono regular
// e imprima o valor da área do poligono. O programa deve utilizar uma
//estrutura switch-case para decidir que fórmula de cálculo utilizar, de acordo com o número
de lados do polígono.
//Se o número de lados for diferente de 3, 4 ou 6 o programa deve
informar: "não sei calcular a área". Áreas:

// !!!!INCORRETO
//triângulo: (A = \fracfL \times L \times 1.73)[43)
//Quadrado: (A= L \times L)
//exágono: (A= \fracf6 \times L\times L \times 1.73)[43 )

//!!!!CORRETO
//triangulo: A= (L x L x 1,73)/4
//quadrado: L x L
// Hexagono: A=(6x L x L x 1,7)/4

Var
    poligono, area, lado: real
    lados: inteiro

Inicio

    //pedir para informar quantos lados tera o poligono 
    escreva("Informe quantos lados tera o poligono (3, 4 ou 6): ")
    leia(poligono)

    //informar o tamanho dos lados
    escreva("Informe qual o tamanho dos lados: ")
    leia(lado)

    //se o poligono for 3 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
    se poligono = 3 então
        area <- (lado*lado*1.73)/4
        escreval("O valor da area é: ", area)
    senão
        //se o poligono for 4 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
        se poligono=4 então
            area <-lado*lado
            escreval("O valor da area é: ", area)
        senão
            //se o poligono for 6 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
            se poligono=6 então
                area <-(6*lado*lado*1.73)/4
                escreval("O valor da area é: ", area)
            senão
                //caso a quantidade de lados do poligono não for 3,4 ou 6 ele ira informar que n�o � possivel fazer o calculo da area
                escreval("Não é possovel calcular a area deste poligono.")
            fimse
        fimse
    fimse

Fimalgoritmo
