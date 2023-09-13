programa {

    funcao inicio() {
        real saldoconta = 0
        menu(saldoconta)
    }

    funcao menu(real saldoconta) {
        faca {
            inteiro opcao
            escreva("'Bem Vindo ao nosso banco! Pedimos que escolha uma das opções a seguir:' ")
            escreva("\n1) Saldo da Conta")
            escreva("\n2) Adicionar Fundos")
            escreva("\n3) Retirada de Saldo")
            escreva("\n0) Encerrar\n")
            leia(opcao)

            escolha(opcao) {
                caso 1:
                    escreva("\nO Saldo da conta é: R$", saldoconta, "\n\n")
                    pare

                caso 2:
                    real adicionar
                    escreva("Acrescentar: R$ ")
                    leia(adicionar)
                    saldoconta = adicionarsaldo(saldoconta, adicionar)
                    escreva("\nO saldo atual de sua conta agora é de: R$", saldoconta, "\n\n")
                    pare

                caso 3:
                    real retirada
                    escreva("Retirar: R$ ")
                    leia(retirada)
                    se(retirada <= saldoconta){
                      saldoconta = retirarsaldo(saldoconta, retirada)
                    escreva("\nO saldo atual de sua conta agora é de: R$", saldoconta, "\n\n")
                    }senao{escreva("\nDesculpe, mas você não possui saldo suficiente para essa transação! \n")}
                    pare

                caso 0:
                    escreva("\nObrigada por usar nossos serviços!")
                    pare

                caso contrario:
                  escreva("Desculpe, essa opção é inválida. Tente novamente!")
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