Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/09/2023
Var

   escVc, escPc, contaVc, contaPc, contaEmp: inteiro
   perVit, perDer, perEmp, totalJog: real
   esc: caracter

Inicio
      contaVc <- 0
      contaPc <- 0
      totalJog <- 0

      repita
            limpatela
            escreval("==========================================")
            escreval("------------- J O K E N P O --------------")
            escreval("-------------  Score:", contaVc, " x", contaPc, "  -------------")
            escreval
            escreval(" 1 - PAPEL")
            escreval(" 2 - PEDRA")
            escreval(" 3 - TESOURA")
            escreval
            escreval("==========================================")
            repita
                  escreva("Digite a opção: ")
                  leia(escVc)
                  escreval
            ate(escVc >= 1) e (escVc <= 3)
            escolha(escVc)
                 caso 1
                      escreval("Você escolheu: PAPEL")
                 caso 2
                      escreval("Você escolhe: PEDRA")
                 caso 3
                      escreval("Você escolheu: TESOURA")
            fimescolha
            escPc <- randi(3) + 1
            escolha(escPc)
                 caso 1
                      escreval("O adversário escolheu: PAPEL")
                 caso 2
                      escreval("O adversário escolheu: PEDRA")
                 caso 3
                      escreval("O adversário escolheu: TESOURA")
            fimescolha
            se((escVc = 1) e (escPc = 2)) ou ((escVc = 2) e (escPc = 3)) ou ((escVc = 3) e (escPc = 1)) entao
                escreval
                escreval("-------------- Você Ganhou ---------------")
                contaVc <- contaVc + 1
            fimse
            se((escVc = 1) e (escPc = 3)) ou ((escVc = 2) e (escPc = 1)) ou ((escVc = 3) e (escPc = 2)) entao
                escreval
                escreval("-------------- Você Perdeu ---------------")
                contaPc <- contaPc + 1
            fimse
            se(escVc = escPc) entao
               escreval
               escreval("-------------- Você Empatou --------------")
               contaEmp <- contaEmp + 1
            fimse
            escreval
            escreva("Deseja Continuar? (S ou N): ")
            leia(esc)
            totalJog <- totalJog + 1
      ate(esc = "N")
      
      perVit <- (contaVc * 100) / totalJog
      perDer <- (contaPc * 100) / totalJog
      perEmp <- (contaEmp * 100) / totalJog
      limpatela
      escreval
      escreval(("--------- E S T A T Í S T I C A S ----------"))
      escreval
      escreval("Percentual de VITÓRIAS:    ", perVit:3:1, "%")
      escreval("Percentual de DERROTAS:    ", perDer:3:1, "%")
      escreval(" Percentual de EMPATES:    ", perEmp:3:1, "%")
      escreval
      escreval(("--------------------------------------------"))
Fimalgoritmo