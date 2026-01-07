programa
{
	
	funcao inicio()
	{
				//Programa que analiza a sigla ou Estado correspondente

		//Variáveis
		cadeia estados[27][2], resposta_usuario, repeticao, menu
		inteiro repetir
		logico analise

		//Repetir
		faca{
			
		//Entrada de dados
		limpa()
		
		estados[0][0] = "SP" estados[0][1] = "São Paulo"
		estados[1][0] = "RS" estados[1][1] = "Rio Grande do Sul"
		estados[2][0] = "SC" estados[2][1] = "Santa Catarina"
		estados[3][0] = "PR" estados[3][1] = "Paraná"
		estados[4][0] = "RJ" estados[4][1] = "Rio de Janeiro"
		estados[5][0] = "ES" estados[5][1] = "Espírito Santo"
		estados[6][0] = "MG" estados[6][1] = "Minas Gerais"
		estados[7][0] = "CE" estados[7][1] = "Ceará"
		estados[8][0] = "BA" estados[8][1] = "Bahia"
		estados[9][0] = "SE" estados[9][1] = "Sergipe"
		estados[10][0] = "AL" estados[10][1] = "Alagoas"
		estados[11][0] = "AC" estados[11][1] = "Acre"
		estados[12][0] = "AP" estados[12][1] = "Amapá"
		estados[13][0] = "AM" estados[13][1] = "Amazonas"
		estados[14][0] = "DF" estados[14][1] = "Distrito Federal"
		estados[15][0] = "GO" estados[15][1] = "Goiás"
		estados[16][0] = "MA" estados[16][1] = "Maranhão"
		estados[17][0] = "MT" estados[17][1] = "Mato Grosso"
		estados[18][0] = "MS" estados[18][1] = "Mato Grosso do Sul"
		estados[19][0] = "PB" estados[19][1] = "Paraíba"
		estados[20][0] = "PE" estados[20][1] = "Pernambuco"
		estados[21][0] = "PI" estados[21][1] = "Piauí"
		estados[22][0] = "RN" estados[22][1] = "Rio Grande do Norte"
		estados[23][0] = "RO" estados[23][1] = "Rondônia"
		estados[24][0] = "RR" estados[24][1] = "Roraima"
		estados[25][0] = "PA" estados[25][1] = "Pará"
		estados[26][0] = "TO" estados[26][1] = "Tocantins"

		escreva("***Pesquisando Estados***\n")
		escreva("============================\n")

		escreva("Informe uma Sigla ou Estado: ")
		leia(resposta_usuario)
		analise = falso

		//Processamento de dados
		para(repetir=0;repetir<27;repetir++){
			se(resposta_usuario==estados[repetir][0]){
				
				escreva("\n" + resposta_usuario + " corresponde a " + estados[repetir][1] + "\n\n")
				analise = verdadeiro
			}
		}
		se(analise == falso){
			para(repetir=0;repetir<27;repetir++){
				se(resposta_usuario==estados[repetir][1]){
					escreva("\n" + resposta_usuario + " corresponde a " + estados[repetir][0] + "\n\n")
					analise = verdadeiro
				}
			}
		}
		
		
		se(analise == falso)
		{
			escreva("Estado ou Sigla inválido \n\n")
		}
		escreva("\n\nDeseja continuar?")
		leia(repeticao)
		}enquanto(repeticao=="Sim" ou repeticao == "sim")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = vetor, matriz, funcao;
 */