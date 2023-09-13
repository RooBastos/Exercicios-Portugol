programa {

    funcao inicio() {
        real saldoconta = 0
        menu(saldoconta)
    }

    funcao menu(real saldoconta) {
        faca {
            inteiro opcao
            escreva("'Bem Vindo ao nosso banco! Pedimos que escolha uma das op��es a seguir:' ")
            escreva("\n1) Saldo da Conta")
            escreva("\n2) Adicionar Fundos")
            escreva("\n3) Retirada de Saldo")
            escreva("\n0) Encerrar\n")
            leia(opcao)

            escolha(opcao) {
                caso 1:
                    escreva("\nO Saldo da conta �: R$", saldoconta, "\n\n")
                    pare

                caso 2:
                    real adicionar
                    escreva("Acrescentar: R$ ")
                    leia(adicionar)
                    saldoconta = adicionarsaldo(saldoconta, adicionar)
                    escreva("\nO saldo atual de sua conta agora � de: R$", saldoconta, "\n\n")
                    pare

                caso 3:
                    real retirada
                    escreva("Retirar: R$ ")
                    leia(retirada)
                    se(retirada <= saldoconta){
                      saldoconta = retirarsaldo(saldoconta, retirada)
                    escreva("\nO saldo atual de sua conta agora � de: R$", saldoconta, "\n\n")
                    }senao{escreva("\nDesculpe, mas voc� n�o possui saldo suficiente para essa transa��o! \n")}
                    pare

                caso 0:
                    escreva("\nObrigada por usar nossos servi�os!")
                    pare

                caso contrario:
                  escreva("Desculpe, essa op��o � inv�lida. Tente novamente!")
                  pare
            }
        } enquanto (opcao != 0)
    }

    funcao adicionarsaldo(real saldoconta, real adicionar) {
        retorne saldoconta + adicionar
    }

    funcao retirarsaldo(real saldoconta, real retirada) {
        retorne saldoconta - retirada
    }
}