Algoritmo "Sistema-avancado-de-classificacao-de-tenis"

Var
   energia, vitorias, derrotas, grupo, contador, vconsecutivas, dconsecutivas: inteiro
   resultado: caractere

Inicio
   // Iniciar as variaveis
   energia <- 100
   vitorias <- 0
   derrotas <- 0
   vconsecutivas <- 0
   dconsecutivas <- 0
   contador <- 1
   grupo <- 0

   // Pedir para que informe o resultado das 6 partidas
   escreval("Entrada: ")
   enquanto contador <= 6 faca  //sera realizado 6 vezes
      leia(resultado)

      // Verificação das vitorias
      se resultado = "V" então
         vitorias <- vitorias + 1
         energia <- energia - 20
         vconsecutivas <- vconsecutivas + 1
         dconsecutivas <- 0
      senão
         se resultado = "P" então
            derrotas <- derrotas + 1
            energia <- energia - 10
            dconsecutivas <- dconsecutivas + 1
            vconsecutivas <- 0
         senão
            // Entrada invalida
            escreval("-2")
         fimse
      fimse

      se energia <=0 então
         escreval( "-2" )
      fimse

      contador<- contador+1

   fimenquanto

   //Verificar grupo com base nas vitorias
   se energia >0 então
      se vitorias>= 5 então
         grupo<- 1
      senão
         se vitorias>=3 então
           grupo <-2
         senão
            se vitorias>=1 então
               grupo<-3
            senão
               escreval("-1")
            fimse
         fimse
      fimse

      //Aplicação do bonus de consistencia
      se (grupo>1) e (vconsecutivas>=2) então
         grupo <- grupo-1
      fimse

      //aplicação da penalidade por derrotas consecutivas
      se (dconsecutivas>= 3) e (grupo<3)então
         grupo<- grupo+1
      fimse

      //Aplicação de penaliade por energia final baixa
      se energia<20 então
         grupo <- grupo + 1
      fimse

      escreval("")
      escreval("Saida: ", grupo)
   fimse

Fimalgoritmo

