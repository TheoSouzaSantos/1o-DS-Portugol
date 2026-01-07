programa
{
	
	funcao inicio()
	{
		//Criar um menu inicial com várias posiibilidades de escolha para códigos

		//Variáveis
		inteiro ans

		//Menu
		escreva("\t================================\n")
		escreva("\t\t*Menu Principal*\n")
		escreva("\t================================\n")

		//Entrada de dados
		escreva("\tEscolha uma das opções a seguir: \n")
		escreva("\t[1] Cálculos \n")
		escreva("\t[2] Compara Números \n")
		escreva("\t[3] Par Ímpar \n")
		escreva("\t[4] Entrevista \n")
		escreva("\t[5] Área Triânguo \n")
		escreva("\t[6] Tabuada \n")
		escreva("\t[7] Jogo Adivinha Números \n")
		escreva("\t[8] Analisa Números \n")
		escreva("\t[9] Fim\n")
		escreva("\tQual sua escolha? ")
		leia(ans)

		escolha(ans){
			caso 1:
			calculos()
			pare

			caso 2:
			comparanum()
			pare

			caso 3:
			parimpar()
			pare

			caso 4:
			entrevista()
			pare

			caso 5:
			area()
			pare

			caso 6:

			pare

			caso 7:

			pare

			caso 8:

			pare

			caso contrario:
			
		}

		//Processamento de dados
		
	}
	funcao calculos(){
		//Receber dois números e mostrar o resultado de 4 operações aritméticas
		limpa()

		//Variáveis
		real n1,n2,res1,res2,res3,res4
		cadeia rep

		faca
		{
		//Entrada de dados
		limpa()
		
		escreva("Escreva um número ")
		leia(n1)

		escreva("Escreva outro número ")
		leia(n2)

		//Processamento de dados
		res1 = n1 + n2
		res2 = n1 - n2
		res3 = n1 * n2
		res4 = n1 / n2

		//Saída de dados
		limpa()
		
		escreva("  O resultado da adição desses números é " + res1)
		escreva("\n O resultado da subtração entre o primeiro e o segundo número é " + res2)
		escreva("\n O resultao da multiplicação entre esses dois números é " + res3)
		escreva("\n O resultado da divisão entre o primeiro e o segundo número é " + res4)

		//Repete?
		escreva("\nDeseja repetir o cálculo? (responda com Sim ou Não) ")
		leia(rep)
		
		limpa()
		
		}enquanto(rep == "Sim" ou rep =="sim")

		//Fim
	}
	funcao parimpar(){
		//Analisar se o número escrito é ímpar ou par

		//Variáveis
		inteiro n1,res
		cadeia rep

		//Repetição
		faca
		{
		//Entrada de dados
		limpa()

		escreva("Digite um numero ")
		leia(n1)

		//Processamento de dados
		res = n1 % 2

		//Saída de dados
		se (res == 1)
		{
			escreva("O número é ímpar")
		}senao{
			escreva("O número é par")
		}

		escreva("\nDeseja recomeçar o programa? ")
		leia(rep)

		limpa()
		
		}enquanto(rep == "Sim" ou rep == "sim")
	}
	funcao entrevista(){
		//Objetivo: Fazer uma entrevista no Portugol Studio
		limpa()
		
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
	funcao area(){
		//Calcular a área de um triângulo

		//Variáveis 
		real b,h,a
		cadeia rep

		//Repetição
		faca
		{

		//Entrada de dados
		limpa()
		
		escreva("Qual a medida da base? (em centímetros) ")
		leia(b)

		escreva("Qual a medida da altura? (em centímetros) ")
		leia(h)

		//Processamento de dados
		a = (b * h) / 2

		//Saída de dados
		limpa()
		
		escreva("A área desse triângulo é: " + a)
		escreva("\nDeseja repetir o cálculo? ")
		leia(rep)

		}enquanto (rep == "sim" ou rep == "Sim")

		//Fim
	}
	funcao comparanum(){
		//Comparar dois números e dizer qual o maior ou se são iguais
		limpa()

		//Variáveis
		inteiro n1, n2, joke

		//Entrada de dados
		escreva("Digite um número: ")
		leia(n1)
		escreva("Digite outro número: ")
		leia(n2)

		//Processamento de dados
		se (n1 == n2){
			escreva("Os dois números são iguais")
		}senao se ((n1 - n2) < 0){
			escreva("O número " + n2 + " é o maior")
		}senao{
			escreva("O número " + n1 + " é o maior")
		}

		//Fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4659; 
 * @DOBRAMENTO-CODIGO = [69, 112, 146, 223];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */