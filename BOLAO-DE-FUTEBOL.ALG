Algoritmo "bolao-de-futebol"

//Zeca está organizando um bolão de futebol. Segundo suas regras, os apostadores informam o
placar do jogo e
// ganham 10 pontos se acertarem o vencedor ou se acertarem que foi empate,
// ganham mais 5 pontos para ○ placar de cada time que acertarem.

//Escreva um programa que requisita do usuário o placar apostado e 
//depois ○ placar do jogo e informa quantos pontos o apostador fez.

Var
    aposta1, aposta2: inteiro
    placar1, placar2: inteiro
    pontos: inteiro

Inicio
    //informar primeiro as apostas dos 2 times
    escreva("Informe sua aposta para o time 1: ")
    leia(aposta1)
    escreva("Informe sua aposta para o time 2: ")
    leia(aposta2)

    escreval("")

    //informar a quantidade de gols reais dos 2 times
    escreva("Informe os gols reais do time 1: ")
    leia(placar1)
    escreva("Informe os gols reais do time 2: ")
    leia(placar2)

    //começando com zero pontos e ir acumulando a cada acerto
    pontos<- 0

    se (aposta1>aposta2) e (placar1>placar2) ou (aposta1<aposta2) e (placar1<placar2) então
        pontos <-pontos+10
    fimse

    se aposta1=placar1 então
        pontos <-pontos + 5
    fimse

    se aposta2=placar2 então
        pontos<-pontos+5
    fimse

    //informar a quantidade de pontos acumulados
    escreval("A quantidade de pontos acumulados foi: ",pontos," pontos")

Fimalgoritmo