programa
{
	
	funcao inicio()
	{	//Variáveis
		inteiro resposta_usuario, numero_direita, numero_esquerda, numero_centro
		cadeia unidade[] = {"zero","um","dois","três","quatro","cinco","seis","sete","oito","nove"}
		
		cadeia dezena_especial[] ={"dez","onze","doze","treze","catorze","quize","dezesseis","dezessete",
		"dezoito","dezenove"}
		
		cadeia dezena[] = {"","","vinte","trinta","quarenta","cinquenta","sessenta","setenta","oitenta",
		"noventa"}
		
		cadeia centena[] = {"","cento","duzentos","trezentos","quatrocentos","quinhentos","seicentos",
		"setecentos","oitocentos","novecentos"}
		
		cadeia repeticao, menu

		faca{
			
		limpa()
		escreva("Digite um número: ")
		leia(resposta_usuario)

		se(resposta_usuario < 0 ou resposta_usuario > 1000){
			escreva("\n***Número fora do valor possível***")
		}senao se(resposta_usuario < 10){
			escreva("\nEsse número escrito por extenso é: " + unidade[resposta_usuario])
		}senao se(resposta_usuario < 20){
			numero_direita = resposta_usuario - 10
			escreva("Esse número escrito por extenso é: " + dezena_especial[numero_direita])
		}senao se(resposta_usuario < 100){
			
			numero_centro = resposta_usuario/10
			numero_direita = resposta_usuario%10
			
			escreva("\nEsse número escrito por extenso é: " + dezena[numero_centro])
			
			se(numero_direita != 0){
				escreva(" e " + unidade[numero_direita])
			}
		}senao se(resposta_usuario == 100){
			
				escreva("Esse número escrito por extenso é: cem")
				
		}senao se(resposta_usuario < 1000){

			numero_esquerda = resposta_usuario/100
			numero_centro = resposta_usuario/10%10
			numero_direita = resposta_usuario%10

			escreva("Esse número escrito por extenso é: " + centena[numero_esquerda])

			
			
			se(numero_centro == 1 e numero_direita >= 0){
				escreva(" e " + dezena_especial[numero_direita])
			}senao {
				
				se(numero_centro != 0){
				escreva(" e " + dezena[numero_centro])
				}
			
				se(numero_direita != 0){
				escreva(" e " + unidade[numero_direita])
				}
			}
			
		}senao se(resposta_usuario == 1000){
				escreva("Esse número escrito por extenso é: mil")
		}
		
		escreva("\nDeseja continuar? ")
		leia(repeticao)
		
		}enquanto(repeticao == "Sim" ou repeticao == "sim")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */