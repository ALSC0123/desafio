Algoritmo "area-poligonos"

Var
    poligono, area, lado: real
    lados: inteiro

Inicio

    //pedir para informar quantos lados tera o poligono 
    escreva("Informe quantos lados ter� o pol�gono (3, 4 ou 6): ")
    leia(poligono)
    //informar o tamanho dos lados
    escreva("Informe qual o tamanho dos lados: ")
    leia(lado)

    //se o poligono for 3 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
    se poligono = 3 ent�o
        area <- (lado*lado*1.73)/4
        escreval("O valor da �rea �: ", area)
    sen�o
      //se o poligono for 4 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
        se poligono=4 ent�o
            area <-lado*lado
            escreval("O valor da �rea �: ", area)
        sen�o
          //se o poligono for 6 ele vai realizar o calculo da area e mostrar o  valor no final(valor da area)
            se poligono=6 ent�o
                area <-(6*lado*lado*1.73)/4
                escreval("O valor da �rea �: ", area)
            sen�o
            //caso a quantidade de lados do poligono n�o for 3,4 ou 6 ele ira informar que n�o � possivel fazer o calculo da area
                escreval("N�o � poss�vel calcular a �rea deste pol�gono.")
            fimse
            fimse
            fimse

Fimalgoritmo
