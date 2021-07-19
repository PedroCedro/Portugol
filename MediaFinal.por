programa {
    inclua biblioteca Util --> u
    caracter opcao, temp
    inteiro cont1 = 0
    inteiro cont2 = 0
    inteiro cont3 = 0
    real n1, n2, n3, n4, media
    cadeia nome
    
    funcao start(){ limpa()
     cont3++
     escreva("\n __  __            _   _            ___                               ")
     escreva("\n|  \\/  |  ___   __| | (_)  __ _    / __|  ___   _  _   _ _   __   ___ ")
     escreva("\n| |\\/| | / -_) / _` | | | / _` |   \\__ \\ / _ \\ | || | | '_| / _| / -_)")
     escreva("\n|_|  |_| \\___| \\__,_| |_| \\__,_|   |___/ \\___/  \\_,_| |_|   \\__| \\___|\n")
     u.aguarde(5000)
    }
    funcao sair() { start() escreva("\nObrigado por utilizar nosso programa!\n") }
    funcao menu() { limpa ()
        escreva("\n(1)-CADASTRAR-ALUNO\n")
        escreva("(2)-CADASTRAR-NOTAS\n")
        escreva("(3)-ACESSAR-RESULTADO\n")
        escreva("(4)-SAIR\n")
        escreva("Digite o número da opção listada: ")
    }
    funcao cadastroAluno() { limpa ()
        cont1++
        escreva("\n(1)-CADASTRAR-ALUNO\n")
    escreva("Digite o nome do ALuno: ")
	leia(nome)
	inicio()
    }
    funcao cadastroNota() { limpa ()
        cont2++
        escreva("\n(2)-CADASTRAR-NOTAS\n")
    escreva("Digite n1: ")
    leia(n1)
    escreva("Digite n2: ")
    leia(n2)
    escreva("Digite n3: ")
    leia(n3)
    escreva("Digite n4: ")
    leia(n4)
    media = (n1+n2+n3+n4)/4
    inicio()
    }
    funcao resultado() { limpa ()
        se (cont1 == 0) { 
            para (inteiro contador = 5; contador >= 0; contador--)
                { limpa()
                    escreva("\nCadastre o Aluno primeiro! Agora aguarde: ", contador, "\n")
                    u.aguarde(1000)
                }
		
        inicio()}
        se (cont2  == 0) {
            para (inteiro contador = 5; contador >= 0; contador--)
                { limpa()
                    escreva("\nCadastre as Notas primeiro! Agora aguarde: ", contador, "\n")
                    u.aguarde(1000)
                }
        inicio()}
        escreva("\n(3)-ACESSAR-RESULTADO")
    
    se (media >= 7) {   
        para (inteiro contador = 10; contador >= 0; contador--)
                { limpa()
                    escreva("\nA média final de ", nome +" é: ", media)
                    escreva("\nParabéns para ", nome, "! Foi aprovado(a)! ", contador, "\n")
                    u.aguarde(1000)
                }}
    senao se (media >= 5) {   para (inteiro contador = 10; contador >= 0; contador--)
                { limpa()
                    escreva("\nA média final de ", nome +" é: ", media)
                    escreva("\nO(A) Aluno(a), ", nome, ", está de recuperação! Peça-o(a) para procurar o professor.", contador, "\n")
                    u.aguarde(1000)
    }}
    senao {  para (inteiro contador = 10; contador >= 0; contador--)
                { limpa()
                    escreva("\nA média final de ", nome +" é: ", media)
                    escreva("\nO(A) Aluno(a), ", nome, ", infelizmente foi reprovado(a)! ", contador, "\n")
                    u.aguarde(1000)}
    }
    inicio()
    }
    funcao inicio() { se (cont3 == 0) { start() }	
    menu()
    leia(opcao)
    se (opcao == '1') { cadastroAluno() }
    senao se (opcao == '2') { cadastroNota() }
    senao se (opcao == '3') { resultado() }
    senao se (opcao == '4') {sair() }
    senao { escreva("\nOpção Inválida. Digite um dos números listados!\n") inicio()}
}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3442; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */