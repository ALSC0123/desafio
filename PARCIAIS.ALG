Algoritmo "parciais"

//Fazer um programa que recebe as parciais de um aluno (0 a 100), até que o usuário digite -1 
//e informa se ele está aprovado (média maior ou igual a 70), 
//em exame final (média entre 40 e 69) ou reprovado (média menor do que 40). 
//Caso esteja em exame o programa deve pedir a nota do exame (0 a 100) 
//e informar se O aluno está aprovado (média mais nota do exame maior ou igual a 100) 
//ou reprovado (média mais nota do exame menor do que 100).

Var
   nota, soman, contagem, media, exame: real

Inicio
    //começar com as variaveis =0
    soman <- 0
    contagem <- 0

    //pedir para que informe a nota da parcial ate que seja digitado -1
    escreva("Digite a nota parcial (0 a 100) ou -1 para finalizar: ")
    leia(nota)

    //enquanto a nota for diferente de -1 ele continuara pedindo
    enquanto nota <> -1 faça
        soman <- soman + nota //apos a primeira nota aplicada ele ja vai começar a somar e vai armazenando estes valores
        contagem <- contagem + 1 //a cada nota que for acrescentada ele vai somar mais 1, para no fim calcular a media
        escreva("Digite a nota parcial (0 a 100) ou -1 para finalizar: ")
        leia(nota)
    fimenquanto

    //calculo da media
    se contagem > 0 então
        media <- soman / contagem
        
        //se a media for maior igual a 70 o aluno é aprovado
        se media >= 70 então
            escreval("ALUNO APROVADO! COM MEDIA ", media)
        
        //senão se for menor ou igual a 40 ele reprovado automaticamente, sem direito a exame final
        senão
            se media <=40 então
                escreval( "ALUNO REPROVADO! COM MEDIA ",media)

            //se a media for menor que 70 o aluno ira realizar a prova de exame final
            senão
                se media < 70 então
                    escreval("ALUNO EM EXAME FINAL! COM MEDIA ", media)
                    escreval("Digite a nota que o aluno tirou no exame final: ") //informar a nota tirada na prova de exame
                    leia(nota)
                    exame <- media + nota //se apos o exame que somara a ultima media com a nota desta prova o aluno não conseguir tirar mais de 100 ele é reprovado, caso contrario ele sera aprovado
                    se exame < 100 então
                        escreval("ALUNO REPROVADO APOS EXAME! COM MEDIA ",exame)
                    senão
                        escreval("ALUNO APROVADO APOS EXAME! COM MEDIA", exame)
                fimse
            fimse
        fimse
    fimse

Fimalgoritmo
