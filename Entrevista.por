programa
{
	
	funcao inicio()
	{
		//Objetivo: Fazer uma entrevista no Portugol Studio
		
		//Variáveis
		cadeia nome,mora,estuda,filhos
		inteiro anoa,mesa,anon,mesn,quantos,idade

		//Entrada e processamento de dados 1
		escreva("Olá, seja bem vindo a essa entrevista, qual é o seu nome? ")
		leia(nome)
		
		escreva("Onde você mora? ")
		leia(mora)
		
		escreva("E onde estuda? ")
		leia(estuda)
		
		escreva("Tem filhos? ")
		leia(filhos)
		
		se (filhos == "Sim" ou filhos == "sim")
		{
		   escreva("Quantos? ")
		   leia(quantos)
		}
		senao
		{
		   quantos = 0
		}
		
		escreva("Em que ano você nasceu? ")
		   leia(anon)
		   
		escreva("E em que mês você nasceu? ")
		   leia(mesn)
		   
	     escreva("Em que ano estamos agora? ")
		   leia(anoa)
		   
		escreva("E em que mês estamos agora? ")
		   leia(mesa)
		   
		//Processamento de dados 2
		idade = anoa - anon
		
		se (mesa < mesn)
		{
			idade = anoa - anon - 1
		}

		//Saída de dados
		limpa()
		
		escreva("Agora já sei que se chama " + nome)
		
		escreva("\nQue mora em " + mora)
		
		escreva("\nQue estuda em " + estuda)
		
		se (quantos == 0)
		{
			escreva("\nQue não tem filhos")
		}
		senao se (quantos == 1)
		{
			escreva("\nQue tem " + quantos + " filho")
		}
		senao
		{
			escreva("\nQue tem " + quantos + " filhos")
		}
		
		escreva("\nE que tem " + idade + " anos completos")
		
		//Fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */