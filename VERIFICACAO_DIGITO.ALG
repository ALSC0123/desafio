Algoritmo "verificacao_digito"

Var
    digito, resto: inteiro
    contem3: logico

Inicio
    // Pedir o número para verificação
    escreva("Informe um número inteiro positivo para verificação: ")
    leia(digito)

    // Inicializar a variavel que iremos usar para verificar se o numero inserido possui digito 3
    contem3 <- falso  //iniciar com falso pois ainda não foi verificado se possui digito 3

    // Verificar se o número contém o dígito 3
    enquanto digito > 0 faça  //enquanto o digito for maior que 0 ele continuara no loop ate o fim da verificação(descobrir se tem digito 3)
        resto <- digito mod 10 //ele vai retornar o RESTO da divisão
        se resto = 3 então
            contem3 <- verdadeiro
        fimse
        digito <- digito div 10  //enquanto não aparecer o resultado 3 ele ira tirar o ultimo digito e continuara o loop
    fimenquanto

    // mostrar o resultado
    se contem3 então
        escreva("O número inserido CONTÉM o dígito 3.")
    senão
        escreva("O número inserido NÃO contém o dígito 3.")
    fimse

Fimalgoritmo
