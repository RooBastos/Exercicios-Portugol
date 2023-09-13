programa {

    funcao inicio() {
        real saldoconta = 0
        menu(saldoconta)
    }

    funcao menu(real saldoconta) {
        faca {
            inteiro opcao
              escreva("\n1) Saldo da Conta")
              escreva("\n2) Adicionar Fundos")
              escreva("\n3) Retirada de Saldo")
              escreva("\n0) Encerrar\n")
              leia(opcao)

              escolha(opcao) {
                  caso 1:
                      escreva("Saldo: R$", saldoconta, "\n")
                      pare
                  caso 2:
                      escreva("Valor a adicionar: R$")
                      real adicionar
                      leia(adicionar)
                      saldoconta = saldoconta + adicionar
                      escreva("\nSaldo atualizado: R$", saldoconta, "\n")
                      pare

                  caso 3:
                      escreva("Valor a retirar: R$")
                      real retirada
                      leia(retirada)
                      se(retirada <= saldoconta) {
                        saldoconta = saldoconta - retirada
                      escreva("\nSaldo atualizado: R$", saldoconta, "\n")
                      }senao(escreva("\nDesculpe, mas você não possui saldo suficiente para essa transação! \n"))
                      
                      pare

                  caso 0:
                      escreva("Obrigado por usar nossos serviços!\n")
                      pare

                  caso contrario:
                      escreva("Opcao invalida!\n")
                      pare
                }
            } enquanto( opcao != 0)
        }
    }

