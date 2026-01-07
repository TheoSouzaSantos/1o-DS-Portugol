programa
{	
	inclua biblioteca Texto
	inclua biblioteca Util --> U
	//Menu de vetores
	funcao inicio()
	{
		//Variáveis
		inteiro resposta_usuario

		//Menu
		limpa()
		
		escreva("\t============================\n")
		escreva("\t\tMenu Vetores\n")
		escreva("\t============================\n")
		escreva("\t[1] Consulta dia/mês\n")
		escreva("\t[2] Consulta siglas/Estados\n")
		escreva("\t[3] Extenso 0-1000\n")
		escreva("\t[4] Nomes\n")
		escreva("\t[5] Ordem Crescente ou Decrescente\n")
		escreva("\t[6] Fim\n")
		escreva("\t============================\n")
		escreva("\tQual é a opção desejada? ")
		leia(resposta_usuario)

		//Opções
		escolha(resposta_usuario){
			caso 1:
				diames()
			pare

			caso 2:
				estados()
			pare

			caso 3:
				extenso()
			pare

			caso 4:
				nomes()
			pare

			caso 5:
				crescente()
			pare
			
			caso contrario:
		}
			
		
	}
	funcao diames(){
		//Informar qual dia da semana e mês o número representa

		//Variáveis
		cadeia dia[8] = {"", "Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira",
		"Quinta-Feira", "Sexta-Feira", "Sábado"}

		cadeia mes[13] = {"", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Julho", "Junho", "Agosto", "Setembro",
		"Outubro", "Novembro", "Dezembro"}

		inteiro nd, nm
		cadeia mod, repeticao, menu

		faca{
		//Entrada de dados 1
		limpa()
		escreva("Você quer ver qual dia corresponde a um mês ou a um dia da semana? ")
		leia(mod)
		mod = Texto.caixa_baixa(mod)
		se(mod == "semana" ou mod == "dia da semana"){
		escreva("Digite um número: ")
		leia(nd)

		//Desvio Condicional 
		se(nd<1 ou nd>7){
			escreva("Dia da semana inválido")
		}senao{
			escreva("O número " + nd + " corresponde a " + dia[nd] + " nos dias da semana\n")
		}
		}senao {

		//Entrada de dados 2
		escreva("Digite um número: ")
		leia(nm)

		//Desvio Condicional
		se(nm<1 ou nm>12){
			escreva("Mês inválido")
		}senao
			escreva("O número " + nm + " corresponde ao mês de " + mes[nm])
		}
		escreva("\nDeseja continuar? ")
		leia(repeticao)
		repeticao = Texto.caixa_baixa(repeticao)
		}enquanto(repeticao == "sim" ou repeticao == "s")
		limpa()
		escreva("Deseja voltar ao menu? ")
		leia(menu)
		menu = Texto.caixa_baixa(menu)
		se(menu == "s" ou menu =="sim"){
			inicio()
		}
	}
	funcao estados(){
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
		escreva("\n\nDeseja continuar? ")
		leia(repeticao)
		repeticao = Texto.caixa_baixa(repeticao)
		}enquanto(repeticao=="s" ou repeticao == "sim")
		
		limpa()
		escreva("Deseja voltar ao menu? ")
		leia(menu)
		menu = Texto.caixa_baixa(menu)
		se(menu == "s" ou menu =="sim"){
			inicio()
		}
	}
	funcao extenso(){
		//Variáveis
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
		}senao se(resposta_usuario < 20){
			escreva("\nEsse número escrito por extenso é: " + unidade[resposta_usuario])
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
		repeticao = Texto.caixa_baixa(repeticao)
		}enquanto(repeticao == "s" ou repeticao == "sim")
		
		limpa()
		escreva("Deseja voltar ao menu? ")
		leia(menu)
		menu = Texto.caixa_baixa(menu)
		se(menu=="s" ou menu == "sim"){
			inicio()
		}
	}
	funcao nomes(){
		cadeia nomes[10]
		cadeia sorteados[10]
		inteiro repetir, sorteio, repetir2
		logico achou
		cadeia menu, repeticao
		faca{
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
		escreva("\nDeseja continuar? ")
		leia(repeticao)
		repeticao=Texto.caixa_baixa(repeticao)
		}enquanto(repeticao=="s" ou repeticao=="sim")
		escreva("\nDeseja voltar ao menu? ")
		leia(menu)
		menu=Texto.caixa_baixa(menu)
		se(menu == "s" ou menu == "sim"){
			inicio()
		}
	}
	funcao crescente(){
		inteiro repetir, repetir2, coringa, resposta_usuario[10]
		cadeia ordem, repeticao

		faca{
			escreva("Você quer ver os números em ordem crescente ou decrescente? ")
			leia(ordem)
			ordem = Texto.caixa_baixa(ordem)
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
						escreva(".")
					}senao{
						escreva(", ")
					}
					U.aguarde(600)
				}
			}senao se(ordem == "decrescente"){
				para(repetir=9; repetir>=0; repetir--){
					escreva(resposta_usuario[repetir])
					se(repetir==0){
						escreva(".")
					}senao{
						escreva(", ")
					}
					U.aguarde(600)
				}
			}
			escreva("Deseja repetir o programa? ")
			leia(repeticao)
			repeticao = Texto.caixa_baixa(repeticao)
			limpa()
		}enquanto(repeticao=="sim" ou repeticao=="s")
		escreva("\nDeseja voltar ao menu? ")
		leia(menu)
		menu=Texto.caixa_baixa(menu)
		se(menu == "s" ou menu == "sim"){
			inicio()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7734; 
 * @DOBRAMENTO-CODIGO = [53, 106, 194, 197, 199, 209, 211, 213, 227, 203, 190, 319];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */