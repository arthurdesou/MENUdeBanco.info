programa
{

funcao inicio()
{
inteiro menu=1
real saldo=0, saque=0, deposito=0, depositos=0, saques=0
cadeia extrato="" 
real investimento = 0 , rendimento = 0 , senha
inteiro meses 

escreva("Digite sua senha: ")
leia(senha)

enquanto(menu!=0 e menu<6 e menu>0 e senha == 1234){
escreva("|            1.Saque             |\n")
escreva("|            2.Deposito          |\n")
escreva("|            3.Extrato           |\n")
escreva("|            4.Saldo             |\n")
escreva("|            5.Investimento      |\n")
escreva("|            0.Sair              |\n")
leia (menu)
limpa()

escolha(menu){
caso 1:
escreva("Digite o valor do saque:")
leia (saque)
saques=saques + saque
se (saldo<saque ou saque < 0){
escreva("Impossivel Sacar \n")
}

senao{
escreva("Saque realizado com sucesso \n")
saldo = saldo - saque
extrato= extrato + "saque----R$" + saque + "\n"
}

pare

caso 2:
escreva("Digite o valo do deposito: ")
leia(deposito)
escreva("Deposito realizado com sucesso \n")
saldo= saldo+deposito
depositos= depositos + deposito
extrato= extrato + "deposito----R$" + deposito + "\n"
pare

caso 3:
escreva("Depositos:" + depositos + "\n")
escreva("Saques:" + saques + "\n")
escreva(extrato)
pare

caso 4:
escreva ("Seu saldo e:" + saldo + "\n")
pare

caso 5:
escreva("Digite a quantidade do investimento: ")
leia(investimento)
escreva("Digite a quantidade de meses que deseja investir: ")
leia(meses)
se(saldo >= investimento){
	saldo = saldo - investimento
	para(inteiro contador = 1 ; contador <= meses ; contador++){
	rendimento = investimento*1.02
	investimento = rendimento
}
}

senao{
	escreva("Não Autorizado! Saldo Insuficiente!")
}
pare


}
}
}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */