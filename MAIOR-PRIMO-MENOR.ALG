Algoritmo "maior-primo-menor"

//Escrever um programa para ler um número inteiro do usuário e
//exibir o maior número primo que seja menor do que o número digitado.

Var
    numero, maiorPrimo: inteiro
    ehPrimo: logico

Inicio
    // pedir o numero
    escreva("Informe um numero inteiro: ")
    leia(numero)

    // maior numero primo menor que o numero informado
    maiorPrimo <- 0

    // vai verificar de 1 em 1 se é numero primo, subtraindo do numero informado ate chegar em um que seja apenas dividido por 1 e por ele mesmo
    se (numero > 2) então
        se (numero - 1) mod 2 <> 0 então
            maiorPrimo <- numero - 1
        senão
            se (numero - 2) mod 2 <> 0 então
                maiorPrimo <- numero - 2
        fimse
    fimse

    // Mostrar o maior numero primo encontrado
    se maiorPrimo > 0 então
        escreva("O maior numero primo menor que ", numero, " é ", maiorPrimo)
    senão
        escreva("Não existe numero primo menor que ", numero)
    fimse

Fimalgoritmo
