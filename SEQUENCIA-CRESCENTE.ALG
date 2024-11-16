Algoritmo "sequencia-crescente"

//Escreva um programa no qual o usuário digita uma quantidade arbitrária de números inteiros
positivos.
// Quando o usuário digitar um número menor ou igual a 0, o programa deve indicar o
//tamanho da maior sequência crescente observada. Por exemplo, se os números digitados
forem 5, 10, 3, 2, 4, 7, 9, 8, 5,
// a maior sequência crescente é 2, 4, 7, 9, 
//então o programa deve mostrar na tela que a maior sequência crescente tem 4 números.
// Já a sequência 10, 8, 7, 5, 2 está em ordem decrescente,
// portanto a maior sequência crescente observada tem tamanho 1.

Var
    numero, anterior, contador, maiorseq: inteiro

Inicio
    // Inicializar a variavel maiorseq com 0 e contador com 1
    maiorseq <- 0
    contador <- 1

    // Pedir para que o usuario digite numeros inteiros positivos
    escreval("Digite numeros inteiros positivos (digite um numero menor ou igual a 0 para parar): ")
    leia(numero)

    // Se o primeiro numero for menor ou igual a 0, não entra no loop
    se numero >= 0 então
        anterior <- numero //o valor de numero sera armazenado na variavel "anterior"
        
        //se o numero for maior entrara
        enquanto numero > 0 faça
            leia(numero)  //vai ler outro numero
            se numero > anterior então  //se for maior que o anterior,sera uma sequencia crescente
                contador <- contador + 1  // caso seja uma sequencia crescente, o contador ira armazenando essas sequencias
            senão
                // vai verificar se a sequencia atual foi a maior
                se contador > maiorseq então
                    maiorseq <- contador  //Se a sequencia atual for maior, então atualizaremos a maiorseq com o valor de contador.
                fimse
                contador <- 1  // reiniciar o contador para a nova sequencia
            fimse
            anterior <- numero  //vai atualizar o valor da variavel anterior para o numero atual
        fimenquanto

        // fazer a verificação final( para caso do ultimo numero inserido for fazer parte da sequencia crescente)
        se contador > maiorseq então
            maiorseq <- contador
        fimse

        //agora informar a maior sequencia crescente, e caso não tenha mostrar que não possui nenhuma sequencia crescente
        escreval("A maior sequencia crescente tem ", maiorseq, " numeros.")
    senão
        escreval("Nenhuma sequencia crescente foi inserida.")
    fimse

Fimalgoritmo
