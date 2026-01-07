programa
{
	inclua biblioteca Util --> U
	
	funcao inicio()
	{
		//Sortear nomes

		cadeia resposta_usuario[5]
		inteiro repetir, sorteio[5], analise
		analise = 0

		escreva("\t*** Nomes ***\n")
		escreva("============================\n\n")
		
		para(repetir=0; repetir<5; repetir++){
			escreva("Digite o " + (repetir + 1) + "° nome: ")
			leia(resposta_usuario[repetir])
		}

		escreva("\n*** Ordem inversa ***\n")
		escreva("=======================\n")
		
		para(repetir=4; repetir>=0; repetir--){
			escreva((repetir+1) + "° nome: " + resposta_usuario[repetir] + "\n")
			U.aguarde(600)
		}

		escreva("\n*** Sorteio ***\n")
		escreva("=================\n")

		para(repetir=0;repetir<5;repetir++){
			sorteio[repetir] = U.sorteia(0,4)
			
			escreva((repetir + 1) + "° sorteado: " + resposta_usuario[sorteio[repetir]] + "\n")
			U.aguarde(600)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 748; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {resposta_usuario, 9, 9, 16};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */