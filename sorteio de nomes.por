programa
{
	inclua biblioteca Util --> U
	
	funcao inicio()
	{
		cadeia nomes[10]
		cadeia sorteados[10]
		inteiro repetir, sorteio, repetir2
		logico achou

		limpa()
		achou=falso
		para(repetir=0;repetir<10;repetir++){
			escreva("Digite o " + (repetir+1) + "° nome: ")
			leia(nomes[repetir])
		}
		
		para(repetir=0;repetir<10;repetir++){
			sorteio = U.sorteia(0,9)
			para(repetir2=9;repetir2>=0;repetir2--){
				se(nomes[sorteio]==sorteados[repetir2]){
					achou=verdadeiro
				}
				
			}
			se(achou==falso){
					sorteados[repetir] = nomes[sorteio]
					achou=falso
			}senao{
				sorteio=U.sorteia(0,9)
				achou=falso
				repetir--
			}
		}
		
		limpa()
		escreva("=====================\n")
		escreva("***Nomes Sorteados***\n")
		escreva("=====================\n")
		
		para(repetir=0;repetir<10;repetir++){
			escreva((repetir+1) + "° sorteado: " + sorteados[repetir] + "\n")
			U.aguarde(700)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 917; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 7, 9, 5}-{sorteados, 8, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */