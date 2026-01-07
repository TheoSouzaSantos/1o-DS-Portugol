programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> T
	
	funcao inicio()
	{
		cadeia cpf, n1, n2, n3, n4, n5, n6, n7, n8, n9, n0, n11, rep
		inteiro soma1, soma2, n01, n02, n03, n04, n05, n06, n07, n08, n09, n00, n011
		real resto1, resto2

		faca{
			limpa()
			escreva("Digite o CPF para analisar se é válido (com os caracteres - e .): ")
			leia(cpf)
			n1 = T.extrair_subtexto(cpf, 0, 1)
			n2 = T.extrair_subtexto(cpf, 1, 2)
			n3 = T.extrair_subtexto(cpf, 2, 3)
			n4 = T.extrair_subtexto(cpf, 4, 5)
			n5 = T.extrair_subtexto(cpf, 5, 6)
			n6 = T.extrair_subtexto(cpf, 6, 7)
			n7 = T.extrair_subtexto(cpf, 8, 9)
			n8 = T.extrair_subtexto(cpf, 9, 10)
			n9 = T.extrair_subtexto(cpf, 10, 11)
			n0 = T.extrair_subtexto(cpf, 12, 13)
			n11 = T.extrair_subtexto(cpf, 13, 14)
	
			n01 = t.cadeia_para_inteiro(n1, 10)
			n02 = t.cadeia_para_inteiro(n2, 10)
			n03 = t.cadeia_para_inteiro(n3, 10)
			n04 = t.cadeia_para_inteiro(n4, 10)
			n05 = t.cadeia_para_inteiro(n5, 10) 
			n06 = t.cadeia_para_inteiro(n6, 10)
			n07 = t.cadeia_para_inteiro(n7, 10) 
			n08 = t.cadeia_para_inteiro(n8, 10)
			n09 = t.cadeia_para_inteiro(n9, 10)
			n00 = t.cadeia_para_inteiro(n0, 10)
			n011 = t.cadeia_para_inteiro(n11, 10)
	
			se(n1==n2 e n2==n3 e n3==n4 e n4==n5 e n5==n6 e n6==n7 e n7==n8 e n8==n9 e n9==n0 e n0==n11){
				escreva("\n***O CPF " + cpf + " é inválido***")
				escreva("\nDeseja digitar outro CPF? ")
				leia(rep)
				rep = T.caixa_baixa(rep)
			}senao{
				soma1 = n01*10 + n02*9 + n03*8 + n04*7 + n05*6 + n06*5 + n07*4 + n08*3 + n09*2
				resto1 = (soma1*10)%11
				se(resto1==10){
					resto1 = 0 
				}
				soma2 = n01*11 + n02*10 + n03*9 + n04*8 + n05*7 + n06*6 + n07*5 + n08*4 + n09*3 + n00*2
				resto2 = (soma2*10)%11
				se(resto2==10){
					resto2 = 0 
				}
	
				se(resto1==n00 e resto2==n011){
					escreva("\n***O CPF " + cpf + " é válido***")
					escreva("\nDeseja repetir o programa? ")
					leia(rep)
					rep = T.caixa_baixa(rep)
				}senao{
					escreva("\n***O CPF " + cpf + " é inválido***")
					escreva("\nDeseja digitar outro CPF? ")
					leia(rep)
					rep = T.caixa_baixa(rep)
				}
			}
		}enquanto(rep=="sim" ou rep=="s")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */