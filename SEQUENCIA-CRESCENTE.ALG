Algoritmo "sequencia-crescente"

Var
    numero, anterior, contador, maiorseq: inteiro

Inicio

    // Inicializar a variavel maiorseq com 0 e contador com 1
    maiorseq <- 0
    contador <- 1

    // Pedir para que o usuário digite números inteiros positivos
    escreval("Digite números inteiros positivos (digite um número menor ou igual a 0 para parar): ")
    leia(numero)

    // Se o primeiro número for menor ou igual a 0, não entra no loop
    se numero >= 0 então
        anterior <- numero //o valor de numero sera armazenado na variavel "anterior"
        //se o numero for maior entrara
        enquanto numero > 0 faça
            leia(numero)  //vai ler outro numero
            se numero > anterior então  //se for maior que o anterior,sera uma sequencia crescente
                contador <- contador + 1  // caso seja uma sequencia crescente, o contador ira armazenando essas sequencias
            senão
                // vai verificar se a sequência atual foi a maior
                se contador > maiorseq então
                    maiorseq <- contador  //Se a sequencia atual for maior, então atualizaremos a maiorseq com o valor de contador.
                fimse
                contador <- 1  // reiniciar o contador para a nova sequência
            fimse
            anterior <- numero  //vai atualizar o valor da variavel anterior para o numero atual
        fimenquanto

        // fazer a verificação final( para caso do ultimo numero inserido for fazer parte da sequencia crescente)
        se contador > maiorseq então
            maiorseq <- contador
        fimse
         //agora informar a maior sequencia crescente, e caso não tenha mostrar que não possui nenhuma sequencia crescente
        escreval("A maior sequência crescente tem ", maiorseq, " números.")
    senão
        escreval("Nenhuma sequência crescente foi inserida.")
    fimse

Fimalgoritmo
