Algoritmo "area-poligonos"

Var
    poligono, area, lado: real
    lados: inteiro

Inicio

    //pedir para informar quantos lados tera o poligono
    escreva("Informe quantos lados terá o polígono (3, 4 ou 6): ")
    leia(poligono)
    //informar o tamanho dos lados
    escreva("Informe qual o tamanho dos lados: ")
    leia(lado)

    //se o poligono for 3 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
    se poligono = 3 então
        area <- (lado*lado*1.73)/4
        escreval("O valor da área é: ", area)
    senão
      //se o poligono for 4 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
        se poligono=4 então
            area <-lado*lado
            escreval("O valor da área é: ", area)
        senão
          //se o poligono for 6 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
            se poligono=6 então
                area <-(6*lado*lado*1.73)/4
                escreval("O valor da área é: ", area)
            senão
            //caso a quantidade de lados do poligono não for 3,4 ou 6 ele ira informar que não é possivel fazer o calculo da area
                escreval("Não é possível calcular a área deste polígono.")
            fimse
            fimse
            fimse

Fimalgoritmo
