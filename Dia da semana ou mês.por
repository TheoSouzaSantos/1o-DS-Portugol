programa
{
	
	funcao inicio()
	{
		//Informar qual dia da semana e mês o número representa

		//Variáveis
		cadeia dia[8] = {"", "Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira",
		"Quinta-Feira", "Sexta-Feira", "Sábado"}

		cadeia mes[13] = {"", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Julho", "Junho", "Agosto", "Setembro",
		"Outubro", "Novembro", "Dezembro"}

		inteiro nd, nm
		cadeia mod

		//Entrada de dados 1
		escreva("Você quer ver qual dia corresponde a um mês ou a um dia da semana? ")
		leia(mod)

		se(mod == "Dia da semana" ou mod == "dia da semana"){
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
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1041; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */