Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
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
                  escreva("Digite a op��o: ")
                  leia(escVc)
                  escreval
            ate(escVc >= 1) e (escVc <= 3)
            escolha(escVc)
                 caso 1
                      escreval("Voc� escolheu: PAPEL")
                 caso 2
                      escreval("Voc� escolhe: PEDRA")
                 caso 3
                      escreval("Voc� escolheu: TESOURA")
            fimescolha
            escPc <- randi(3) + 1
            escolha(escPc)
                 caso 1
                      escreval("O advers�rio escolheu: PAPEL")
                 caso 2
                      escreval("O advers�rio escolheu: PEDRA")
                 caso 3
                      escreval("O advers�rio escolheu: TESOURA")
            fimescolha
            se((escVc = 1) e (escPc = 2)) ou ((escVc = 2) e (escPc = 3)) ou ((escVc = 3) e (escPc = 1)) entao
                escreval
                escreval("-------------- Voc� Ganhou ---------------")
                contaVc <- contaVc + 1
            fimse
            se((escVc = 1) e (escPc = 3)) ou ((escVc = 2) e (escPc = 1)) ou ((escVc = 3) e (escPc = 2)) entao
                escreval
                escreval("-------------- Voc� Perdeu ---------------")
                contaPc <- contaPc + 1
            fimse
            se(escVc = escPc) entao
               escreval
               escreval("-------------- Voc� Empatou --------------")
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
      escreval(("--------- E S T A T � S T I C A S ----------"))
      escreval
      escreval("Percentual de VIT�RIAS:    ", perVit:3:1, "%")
      escreval("Percentual de DERROTAS:    ", perDer:3:1, "%")
      escreval(" Percentual de EMPATES:    ", perEmp:3:1, "%")
      escreval
      escreval(("--------------------------------------------"))
Fimalgoritmo