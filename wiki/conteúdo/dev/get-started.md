---
title: 2. Primeiros passos
description: Um de cada vez...
published: true
date: 2020-07-13T22:18:43.161Z
tags: 
editor: markdown
dateCreated: 2020-07-13T21:04:16.008Z
---

# Comece por aqui...
> "Mas qual linguagem devo usar? Qual sistema? Qual SO? Java? Python? C#? Hein?"
> -- O iniciante afobado

Vamos devagar, antes de pensar em qual linguagem você vai começar, qual sistema ou qualquer outra dessas dúvidas, precisamos entender o que é um programa e como podemos estrutura-lo.

> "Não adianta tentar te ensinar a falar inglês ou alemão se você não sabe o que quer falar"
> -- Programador sábio

Tenha em mente que seu computador apesar de ser uma ferramenta maravilhosa, capaz de executar milhões de instruções por segundo e poder fazer milhões de coisas, de alguma meneira ele precisa saber quais são as instruções que ele deve executar, certo? Nessa frase parece óbvio, mas é importante ter essa noção bem clara ao escrever qualquer tipo de programa, você precisa pensar em todo o contexto que seu programa vai encontrar e saber lidar com as situações que podem acontecer.

**Exemplo:**
Gosto de um exercício que me passaram quando comecei a estudar esse tipo de coisa em um curso técnico. Se imagine na seguinte situação: Você está em seu carro andando a 80 km/h e percebe que algo está errado e suspeita que um pneu furou, como seria o procedimento para resolver esse problema?

Você precisa se preocupar com uma série de situações que não são declaradas aqui. Inicialmente eu apenas disse que o carro estava em movimento em uma velocidade considerável, mas não sei onde o carro está, não sei em que faixa o carro está, nem se o pneu está mesmo furado ou se estiver, qual pneu está com problemas, então ao tentar resolver o problema você precisa estar atento a todos esses detalhes e o nível de detalhamento que você vai entrar aqui vai ditar o quanto seu programa será preparado para lidar com situações inesperadas, veja:

- Primeiro, verifique em qual faixa você está
	- Caso não esteja na faixa da direita, vá mudando de faixa até chegar a faixa mais a direita
- Existe acostamento? 
	- Caso exista, vá para o acostamento
  - Caso não exista, encontre um local seguro
- Desligue o carro
- Se estiver de cinto de segurança, retire-o (que coisa feia se não estiver! :| )
- Retire a chave do contato
- Verifique os 4 pneus e veja se há problemas
	- Se não houver problemas, volte para o carro e siga viagem
- Vá até o porta malas
- Abra usando a chave
- Pegue o macaco
- Pegue a chave de rodas
- Pegue o estepe
- Vá até o pneu furado
- Levante o carro
- Solte os parafusos da roda com problemas
- Retire os parafusos
- Retire a roda com problemas
- Coloque o estepe no lugar da roda com problemas
- Recoloque os parafusos
- Desça o carro
- Guarde a roda com problemas no lugar do estepe
- Guarde a chave de rodas
- Guarde o macado
- Feche o porta malas
- Feche o porta malas usando a chave
- Volte para a posição do motorista
- Coloque o sinto de segurança
- Dê partida no carro
- Entre na pista com cuidado
- Siga viagem

Já parou para pensar na quantidade de rotinas descritas aqui? Agora pense que você fez um script que é capaz de fazer isso tudo, mas você se esqueceu nesse script de por exemplo, de frear o carro ao chegar no acostamento, como você acha que seu programa vai se comportar? Se estamos falando de um computador, ele não sabe que precisa frear o carro e vai continuar andando... provavelmente na vida real vc terá problemas aqui.

Um programa se comporta exatamente assim. Você sempre precisa se preocupar com o "caminho feliz", que é quanto tudo está exatamente como você imaginou, mas também deve se preocupar com as situações adeversas e preparar seu programa para lidar com elas.

Você seria capaz de fazer esse exercício em formato de [fluxograma](https://pt.wikipedia.org/wiki/Fluxograma)? É um ótimo modo de começar a modelar as coisas.

## E como um progama se parece?
Uma das formas mais eficientes de entender como um programa funciona é usando uma linguagem didática chamada [portugol](https://pt.wikipedia.org/wiki/Portugol), que é muito parecido com uma linguagem chamada [Pascal](https://pt.wikipedia.org/wiki/Pascal_(linguagem_de_programa%C3%A7%C3%A3o)). Mas calma, comercialmente essa linguagem não é mais muito popular (apesar de ter sido muito há alguns anos atrás), mas ela é importante aqui para vermos alguns conceitos e esses são os mesmos na grande maioria das linguagens. Foquem na ideia! :)

**Nosso programa, escrito em um algorítimo exemplo:**
```
programa TrocaPneu;

Variaveis
	pneuFurado Roda
  macaco MacacoAutomotivo
  ferramenta FerramentaDeRoda
  chave ChaveDoCarro
  estepe Roda
  faixa
 
//Programa principal
Inicio Principal()
	faixa = FaixaAtual()
	Enquanto faixa != FaixaDireita Faça
  	faixa = MudeParaFaixaDaDireita()
  FimEnquanto
  
  Se Não ExisteAcostamento() Então  	
  	EncontreLugarSeguro()
  FimSe
  
  PareOCarro()
  chave = DesligueOCarro()
  SaiaDoCarro()
  pneuFurado = VerifiquePneuComProblema()
  
  Se pneuFurado == NENHUM Então
  	SigaViagem(chave)
    Fim
  FimSe
  
  AbraOPortaMalas(chave)
  macaco = PegueOMacaco()
  ferramenta = PegueChaveDeRoda()
  estepe = PegueEstepe()
  
  Se SubstituiRoda(pneuFurado, estepe, macaco, ferramenta) == SUCESSO Então
  	GuardeRodaNoPortaMalas(pneuFurado)
    GuardeChaveDeRoda(ferramenta)
    GuardeMacaco(macaco)
    FecheOPortaMalas(chave)
    SigaViagem(chave)
  Senão
  	ProcureAjuda()
  FimSe
Fim

//Funções
Funcao FaixaAtual() Faixa
Inicio
	Retorna Faixa //imagine aqui que seu programa sabe em qual faixa ele está no momento
Fim

Funcao MudeParaFaixaDaDireita() Faixa
Inicio
	Se Velocidade > VelocidadeDaFaixaADireita Então
  	DiminuaVelocidadeAté(VelocidadeDaFaixaADireita)
  FimSe
  MovaOCarroParaAFaixaADireita()
  Retorne Faixa - 1
Fim

Funcao ExisteAcostamento() BOOLEANO
Inicio
	Se Faixa - 1 == ACOSTAMENTO Então
  	Retorne VERDADEIRO
  FimSe
  
  Retorne FALSO
Fim

Funcao EncontreLugarSeguro() 
Inicio
	Enquanto Não HaEspacoParaParar() Então
  	Continue
  FimEnquanto
Fim

Funcao PareOCarro()
Inicio
	Enquanto Velocidade > 0 Então
  	FreieSuavemente()
  FimEnquanto
Fim

Funcao DesligueOCarro() 
Inicio
	chave ChaveDoCarro
  
  PuxeFreioDeMão()
  chave = RetireAChaveDoContato()
  Se EstiverDeCinto() == VERDADEIRO Então
  	RetireOCinto()
  FimSe
  
  Retorne chave
Fim


Funcao SaiaDoCarro()
Inicio
	AbraAPorta()
  SaiaDoCarro()
Fim

Funcao VerifiquePneuComProblema() Roda
Inicio
	Se RodaDianteiraDireita.Estado == FURADA Entao
  	Retorne RodaDianteiraDireita
  FimSe
  
	Se RodaDianteiraEsquerda.Estado == FURADA Entao
  	Retorne RodaDianteiraEsquerda
  FimSe
  
  	Se RodaTraseiraDireita.Estado == FURADA Entao
  	Retorne RodaTraseiraDireita
  FimSe
  
  	Se RodaTraseiraEsquerda.Estado == FURADA Entao
  	Retorne RodaTraseiraEsquerda
  FimSe
  
  Retorne NENHUM
Fim

Funcao AbraOPortaMalas(chave ChaveDoCarro)
Inicio
	use chave -> PortaMalas
  GireChave()  
  Abra()
Fim

Funcao PegueOMacaco() MacacoAutomotivo
Inicio
	Retorne PortaMalas.Macaco
Fim

Funcao PegueChaveDeRoda() FerramentaDeRoda
Inicio
	Retorne PortaMalas.ChaveDeRoda
Fim

Funcao PegueEstepe() Roda
Inicio
	Retorne PortaMalas.Estepe
Fim

Funcao GuardeRodaNoPortaMalas(roda RODA)
Inicio
	Guarde PortaMalas.Estepe
Fim

Funcao GuardeChaveDeRoda(ferramenta FerramentaDeRoda)
Inicio
	Guarde PortaMalas.ChaveDeRoda
Fim

Funcao GuardeMacaco(macaco MacacoAutomotivo)
Inicio
	Guarde PortaMalas.Macaco
Fim

Funcao FecheOPortaMalas(chave ChaveDoCarro)
Inicio
	Feche()
	use chave -> PortaMalas
  GireChave()   
Fim

Funcao SubstituiRoda(pneuFurado RODA, estepe RODA, macaco MacacoAutomotivo, ferramenta FerramentaDeRoda) BOOLEANO
Inicio
	VaAté pneuFurado
  Use macaco
  Enquanto pneuFurado.Altura != SUSPENSO Então
  	macaco.Altura++
  FimEnquanto
  
  parafusos = chave.Solte(pneuFurado)
  Retire pneuFurado
  Coloque(estepe)
  chave.Aperte(parafusos, estepe)
  
  Enquanto estepe.Altura == SUSPENSO Então
  	macaco.Altura--
  FimEnquanto
  
  Retire macaco
  
  Se estepe.Estado != OK Então
  	Retorne FALSO
  FimSe
  
  Retorne VERDADEIRO  
Fim

Funcao SigaViagem(chave)
Inicio
	SenteNaPosicaoDoMotorista()
  Use chave
  DePartida()
  EntreNaFaixaDaEsquerda()
Fim

Funcao ProcureAjuda()
Inicio
	//Deu ruim né? e agora? Tem seguro? chama a polícia rodoviária? chama sua mãe? 
  //Se vira e dá um jeito agora rs...
Fim

```