Algoritmo "verificacao_digito"

//QUESTÃO INCORRETA

//Escreva um programa que lê um inteiro positivo e verifica se ele contém o dígito 3
//em qualquer posição. Exemplo: Os números 100, 200, 1000, 103 
//contêm o dígito 3 em qualquer posição, enquanto os números 99, 12 não.

Var
    digito, resto: inteiro
    contem3: logico

Inicio
    // Pedir o numero para verificação
    escreva("Informe um numero inteiro positivo para verificação: ")
    leia(digito)

    // Inicializar a variavel que iremos usar para verificar se o numero inserido possui digito 3
    contem3 <- falso  //iniciar com falso pois ainda não foi verificado se possui digito 3

    // Verificar se o numero contem o digito 3
    enquanto digito > 0 faça  //enquanto o digito for maior que 0 ele continuara no loop ate o fim da verificação(descobrir se tem digito 3)
        resto <- digito mod 10 //ele vai retornar o RESTO da divisão
        se resto = 3 então
            contem3 <- verdadeiro
        fimse
        digito <- digito div 10  //enquanto não aparecer o resultado 3 ele ira tirar o ultimo digito e continuara o loop
    fimenquanto

    // mostrar o resultado
    se contem3 então
        escreva("O numero inserido CONTEM o digito 3.")
    senão
        escreva("O numero inserido NAO contem o digito 3.")
    fimse

Fimalgoritmo
