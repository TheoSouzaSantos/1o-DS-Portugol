programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T
	
	funcao inicio()
	{
		inteiro repetir, repetir2, coringa, resposta_usuario[10]
		cadeia ordem, repeticao

		faca{
			escreva("Você quer ver os números em ordem crescente ou decrescente? ")
			leia(ordem)
			ordem = T.caixa_baixa(ordem)
			limpa()
			se(ordem == "crescente" ou ordem == "decrescente"){
				para(repetir=0; repetir<10; repetir++){
					escreva("Digite o " + (repetir+1) + "° número: ")
					leia(resposta_usuario[repetir])
				}
				limpa()
		
				para(repetir=0; repetir<10; repetir++){
					para(repetir2=9; repetir2>0; repetir2--){
						se(resposta_usuario[repetir2] < resposta_usuario[(repetir2 - 1)]){
							coringa = resposta_usuario[repetir2]
							resposta_usuario[repetir2] = resposta_usuario[(repetir2-1)]
							resposta_usuario[(repetir2-1)] = coringa
						}
					}
				}
			}senao{
				escreva("***Esse tipo de ordem é inválido***")
			}
			se(ordem == "crescente"){
				para(repetir=0; repetir<10; repetir++){
					escreva(resposta_usuario[repetir])
					se(repetir==9){
						escreva(".\n")
					}senao{
						escreva(", ")
					}
					U.aguarde(600)
				}
			}senao se(ordem == "decrescente"){
				para(repetir=9; repetir>=0; repetir--){
					escreva(resposta_usuario[repetir])
					se(repetir==0){
						escreva(".\n")
					}senao{
						escreva(", ")
					}
					U.aguarde(600)
				}
			}
			escreva("Deseja repetir o programa? ")
			leia(repeticao)
			repeticao = T.caixa_baixa(repeticao)
			limpa()
		}enquanto(repeticao=="sim" ou repeticao=="s")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1096; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {coringa, 8, 29, 7}-{resposta_usuario, 8, 38, 16};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */