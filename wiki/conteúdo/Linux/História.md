---
title: 1. A história
description: De onde veio, como aconteceu e as razões em ser assim
published: true
date: 2020-06-29T02:42:35.578Z
tags: 
editor: markdown
dateCreated: 2020-06-17T16:54:42.051Z
---

# O que é Linux?
![tux-guitar.png](/tux-guitar.png)
Para muita gente, o Linux é meramente um sistema operacional. Essa definição não está errada, mas também não está completa. Na verdade, o Linux é parte de um todo, mais precisamente, é um kernel de código-fonte* aberto, que foi — e é desenvolvido — ao longo do tempo graças à colaboração voluntária de desenvolvedores de várias partes do mundo.

>  Em poucas palavras, código-fonte é um conjunto de instruções baseado em uma linguagem de programação que, depois de compilado ou interpretado, forma um software. Tendo acesso ao código-fonte, é possível saber como determinado programa ou recurso de software foi desenvolvido.

# O que é kernel?
Kernel pode ser entendido como o núcleo do sistema operacional, isto é, como a parte essencial deste. Cabe ao kernel fazer a intermediação entre o hardware e os programas executados pelo computador. Isso significa que a junção do kernel mais os softwares que tornam o computador usável (drivers, protocolos de comunicação, entre outros), de acordo com a sua aplicação, é que formam o sistema operacional em si.

Para compreender melhor, você pode imaginar o kernel como sendo o chassi de um veículo. De acordo com a aplicação em questão, uma montadora pode adquirir um chassi e utilizá-lo para montar um carro para transportar cargas ou, se a necessidade for esta, construir um automóvel de passeio para uma família.

Perceba que o kernel não é, necessariamente, um software manipulável pelo usuário. Ou seja, não se trata de algo tão simples a ponto de poder ser instalado e, logo em seguida, estar pronto para uso, como um aplicativo de edição de textos, por exemplo. O kernel é uma base complexa, que serve de estrutura para o sistema, atuando nos "bastidores". Assim, o usuário sequer precisa saber de sua existência para poder utilizar o computador.

# Então, o Linux é um kernel?
Exatamente! Quando procuramos um programa que possui versões para vários sistemas operacionais — como o navegador Mozilla Firefox —, nos deparamos com vários links: um que aponta para a versão Windows, outra que direciona para a versão OS X, outra para Linux e assim por diante. Perceba que, em situações como essa, o nome Linux não é empregado incorretamente. Por outro lado, achar que o Linux é todo o conjunto de software, incluindo aplicativos, interfaces gráficas e outros, é uma visão bastante limitada.

Mas, para entender melhor o que é Linux e o que ele representa, é conveniente conhecer a sua história.


# A história do Linux
A história do Linux começa no ano de 1991, pelas mãos de um estudante universitário finlandês chamado Linus Torvalds. O Linux foi criado por ele, não totalmente do "zero", mas sim como uma variação do Minix.

## Minix 
O Minix é um sistema operacional simples, criado por Andrew S. Tanenbaum, um renomado professor de computação que é conhecido pelos diversos livros que escreveu para a área.

Tanenbaum disponibilizou o Minix principalmente para servir de auxílio no ensino de computação. Trata-se de um sistema operacional simples, que exige poucos recursos de hardware e cuja primeira versão foi lançada em 1987.

Dadas as suas finalidades acadêmicas, não só o Minix foi disponibilizado de maneira gratuita e livre, como também o seu código-fonte completo. Assim, os estudantes de computação podiam — e podem — estudá-lo inteiramente para desenvolver habilidades ou mesmo para criar projetos derivados. Foi assim que Linus Torvalds entrou nessa história.

## A relação do Linux — e do Minix — com o Unix
O Minix também não foi escrito do "zero". Trata-se, na verdade, de um projeto baseado em um sistema operacional que tem grande participação na história da computação: o Unix.

O surgimento do Unix se deu em 1969, como um projeto da Bell Labs, laboratório pertencente à AT&T. Mas somente em meados da década seguinte o Unix tornou-se um sistema efetivamente disponível no meio acadêmico, o que permitiu a sua evolução e o surgimento de variações.

O Unix, na verdade, começou em meados dos anos 1960 como um projeto a ser desenvolvido por um grupo de habilidosos programadores, entre eles, Ken Thompson e Dennis Ritchie: um sistema operacional de nome Multics.

O Multics era um projeto ambicioso, mas enfrentou vários problemas, entre eles, falta de recursos computacionais. Assim, no mesmo ano, Ken Thompson decidiu criar algo mais "realista", chamando o novo projeto de Unics. Tempos depois, o nome foi mudado para Unix, denominação que permanece até hoje.

Apesar de haver outros programadores envolvidos com a criação do Unix, Ken Thompson e Dennis Ritchie são os nomes mais lembrados porque ambos, em 1973, praticamente reescreveram o Unix a partir da linguagem C.

C é uma criação de Dennis Ritchie, daí o seu comprometimento com o trabalho envolvendo a linguagem e o Unix. Por causa de seus recursos, a linguagem passou a ser utilizada em vários outros projetos mais complexos, inclusive no desenvolvimento de outros sistemas operacionais, fazendo o seu criador ser reconhecido mundialmente como um dos grandes nomes da computação. Dennis Ritchie faleceu eum outubro de 2011).

O Unix teve grande aceitação não somente em universidades, mas também em ambientes corporativos, resultando no surgimento de variações diversas do sistema, como as versões BSD e o Solaris. O Minix, assim como o Linux, é  uma delas, o que não quer dizer que ambos sejam iguais ao Unix, mas notoriamente parecidos.

# O surgimento do Linux
Linus Torvalds, então com quase 20 anos, começou a estudar ciência da computação na Universidade de Helsinki, na Finlândia, em 1988. Cerca de dois anos depois, aproveitando o conhecimento que tinha e estava adquirindo sobre a linguagem C, decidiu criar a sua própria implementação de um terminal em seu recém obtido computador 80386, principalmente para acessar o servidor Unix da instituição de ensino. Isso porque ele já havia testado o Minix para essa finalidade, mas não estava satisfeito com os seus recursos.

A intenção de Torvalds era a de fazer o projeto rodar especificamente em sua máquina 80386, com o desenvolvimento sendo feito a partir do Minix. O trabalho avançou de tal forma que chegou um ponto em que Torvalds já tinha um kernel funcional em mãos.

Em 1991, Linus Torvalds decidiu divulgar abertamente o projeto. Para isso, publicou mensagens na Usenet (uma espécie de antecessora da internet baseada em troca de mensagens) pedindo sugestões e colaborações para a sua iniciativa.

Eis a íntegra da primeira mensagem, em inglês, postada em 25 de agosto de 1991. Logo em seguida, sua tradução para português:

> From: torvalds@klaava.Helsinki.Fi (Linus Benedict Torvalds)
> Newsgroups: comp.os.Minix
> Subject: What would you like to see most in Minix?
> Summary: small poll for my new operating system
> Keywords: 386, preferences
> Message-ID: <1991Aug25.205708.9541@klaava.Helsinki.FI>
> Date: 25 Aug 91 20:57:08 GMT
> Organization: University of Helsinki
> Lines: 20
> 
> Hello everybody out there using Minix -
> 
> I'm doing a (free) operating system (just a hobby, won't be big and
> professional like gnu) for 386(486) AT clones. This has been brewing
> since april, and is starting to get ready. I'd like any feedback on
> things people like/dislike in Minix, as my OS resembles it somewhat
> (same physical layout of the file-system (due to practical reasons)
> among other things).
> 
> I've currently ported bash(1.08) and gcc(1.40), and things seem to work.
> This implies that I'll get something practical within a few months, and
> I'd like to know what features most people would want. Any suggestions
> are welcome, but I won't promise I'll implement them :-)
> 
> Linus (torvalds@klaava.Helsinki.Fi)
> 
> PS. Yes - it's free of any Minix code, and it has a multi-threaded fs.
> It is NOT protable (uses 386 task switching etc), and it probably never
> will support anything other than AT-harddisks, as that's all I have :-(.

**Tradução livre para português:**

> Assunto: O que você gostaria de ver no Minix?
> Summary: Pequena pesquisa para o meu novo sistema operacional
> 
> Olá a todos que usam o Minix -
> 
> Estou fazendo um sistema operacional (livre - apenas como um hobby,
> não será algo grande e profissional como o GNU) para
> máquinas AT 386 (486). Ele tem sido trabalhado desde abril, e
> está começando a ficar pronto. Eu gostaria de
> opiniões sobre coisas que as pessoas gostam/não gostam no
> Minix, já que o meu SO lembra um pouco ele (mesmo layout
> físico do sistema de arquivos (por motivos práticos),
> entre outros).
> 
> Eu já portei o bash (1.08) e o gcc (1.40) e as coisas parecem
> funcionar. Isso indica que conseguirei alguma coisa prática
> dentro de alguns meses, e gostaria de saber quais recursos as pessoas
> mais gostaria de ter. Todas as sugestões serão
> bem-vindas, mas não prometo implementá-las :-)
> 
> Linus (torvalds@kruuna.helsinki.fi)
> 
> PS. Sim - ele está livre de qualquer código do Minix, e
> tem sistema de arquivos com multi-threading. Ele NÂO é
> portável (usa 386, chaveamento de tarefas, etc) e provavelmente
> nunca suportará qualquer coisa além de discos
> rígidos AT, pois é tudo o que eu tenho :-(.

Por essa mensagem, é possível perceber que Linus Torvalds não esperava que seu projeto fosse crescer tanto e se tornar tão importante para o advento da computação e da Tecnologia da Informação.

O início da trajetória do Linux não foi isenta de problemas. Uma dos obstáculos que Torvalds teve que enfrentar foram as críticas do professor Andrew S. Tanenbaum, que em suas declarações afirmou que o "Linux é obsoleto", especialmente por ter "design monolítico".

Tanenbaum não estava contente com o fato de o Linux ter sido preparado especificamente para rodar com o processador 80386 que, além de caro (na época), teria sua arquitetura substituída futuramente, o que, na verdade, não aconteceu.

Linus respondeu às críticas e continuou seu trabalho, contando com o apoio de cada vez mais pessoas. Com o passar do tempo, o Linux acabou inclusive sendo portado para várias outras plataformas, o que certamente contribuiu para o seu sucesso.

# O nome Linux
O projeto já era realidade, mas não tinha um nome. Inicialmente, Torvalds atribuiu ao kernel a denominação Freax, uma mistura de free (livre) com freak (monstruoso, esquisito) e a letra 'x', para lembrar o Unix.

O programador Ari Lemmke, depois de sugerir a Torvalds que colocasse o projeto em uma rede para torná-lo mais acessível, decidiu criar no servidor de FTP que hospedaria o software uma pasta de nome "linux" (muito provavelmente, uma mistura de Linus com Unix), já que não havia gostado de Freax. A denominação "Linux" acabou "pegando" e é, tal como você vê, utilizada até hoje.


# GNU/Linux
Você já deve ter visto em vários lugares — inclusive aqui no InfoWester — a expressão GNU/Linux. O que isso significa?

Tal como você já sabe, o Linux, por si só, é um kernel. Sozinho, um kernel não tem muita utilidade. É necessário "juntá-lo" a um conjunto de softwares para que tenhamos, efetivamente, um sistema operacional em condições de uso. É aí que o projeto GNU entra em cena.

GNU é a sigla para um nome curioso: "GNU is Not Unix (GNU Não é Unix)". Trata-se de um projeto que teve início em 1984 pelas mãos de Richard Stallman, que queria criar um sistema compatível com Unix, mas sem utilizar código deste.

Com o passar dos anos, o projeto foi ganhando recursos, como compiladores e editores de texto. Mas, faltava um elemento importantíssimo: um kernel. Stallman e seus colaboradores estavam trabalhando em um kernel de nome Hurd, mas dada a demora em concluí-lo, muitos daqueles que precisavam ou queriam usar software GNU decidiram recorrer a algo que souberam ser capaz de atender à necessidade que tinham: o Linux.

Então, basicamente, o Linux que temos hoje é conhecido por trabalhar em conjunto com software GNU. Por isso, muitos integrantes e simpatizantes de movimentos ligados ao software livre defendem a ideia de que, quando houver referência ao sistema operacional como um todo, o nome GNU/Linux deve ser utilizado. Acontece que, por comodidade ou simplesmente desconhecimento, muitas pessoas criaram o hábito de chamar todo o conjunto de Linux e não apenas o kernel.


# Distribuições Linux
Você já sabe que o Linux, ao contrário de outros sistemas baseados no Unix ou mesmo deste, não é um sistema operacional como um todo. Mas, sendo um kernel disponível de maneira gratuita e com código-fonte aberto, qualquer pessoa ou organização pode juntá-lo a um conjunto de softwares para criar um sistema operacional customizado.

Ao longo dos últimos anos, foi justamente isso o que aconteceu. Vários grupos ou mesmo empresas se organizaram e criaram seu próprio sistema operacional baseado em Linux. Cada um deles recebe o nome de "distribuição Linux" (ou "distribuição GNU/Linux").

Há várias distribuições Linux por aí, para os mais diversos fins. Muitas inclusive fazem parte de negócios rentáveis em que a empresa fornece, por exemplo, o sistema operacional de graça, mas obtém receita a partir de serviços de suporte. Naturalmente, aquelas distribuições que se destinam ao segmento de usuários domésticos são mais populares.

Para o público em geral, a distribuição mais famosa atualmente é o Ubuntu, da empresa Canonical. Por padrão, são lançadas novas versões do Ubuntu em todos os meses de abril e outubro de cada ano. Há um esquema de numeração que ajuda a identificar a época de lançamento: a versão 15.10 do Ubuntu, por exemplo, foi lançada em 2015, no mês de outubro. É possível saber disso porque a indicação de ano aparece primeiro (15) e, depois do ponto, vem a indicação do número do mês (10).

É claro que há outras distribuições renomadas, entre elas:

* Fedora (ligada à Red Hat)
* Debian
* Arch Linux
* Linux Mint
* CentOS (com foco em servidores);
* Slackware.

É possível obter informações sobre essas e outras distribuições Linux no site [DistroWatch.com](https://distrowatch.com/) (em inglês).

O CanalTech fez uma [série de artigos muito legais](https://canaltech.com.br/linux/o-que-sao-distros-linux-e-qual-devo-instalar/) sobre isso, vale a pena dar uma olhada.

## Mas qual instalar?

Quando alguém decide instalar o Linux pela primeira vez, passa sempre pela mesmo dilema: por que existem tantas "versões" de Linux na internet e qual é a melhor? A resposta, para variar, não é das mais simples.

Primeiro, é preciso ter em mente que o Linux em si é apenas o kernel do sistema, ou seja, um software que você não vê, mas que é o responsável por controlar as interações entre o hardware e outros programas da máquina. Sempre que um aplicativo recebe ou envia dados, é o kernel que traduz essas informações ao processador e outros componentes eletrônicos do computador.

Portanto, apesar de o kernel do sistema ser muito importante, ele sozinho não é muito útil para o usuário final, visto que todos precisamos de editores de textos, navegadores, programas de bate-papo e um joguinho ou outro para passar o tempo. Com isso, foram criadas as distribuições Linux – também chamadas de distros –, que reúnem não apenas o kernel criado por Linus Torvalds, mas também aplicativos e utilitários diversos que agregam valor ao sistema. Muitas vezes, arquivos de documentação, como guias e manuais, também são produzidos e incluídos na distro.

Atualmente, já foram criadas cerca de 600 distribuições Linux, sendo que mais da metade delas continua ativa e com desenvolvimento frequente. Seja de objetivo comercial ou puramente voltado à comunidade de usuários e programadores, cada distribuição possui suas peculiaridades e, por isso, acaba sendo preferida ou desprezada pelos adeptos do pinguim.

### Como escolher uma distro Linux?
Por mais clichê que seja, a resposta é a mesma de muitas questões similares: escolha a distro que melhor atender às suas necessidades ou, então, aquela com a qual você se sente mais confortável. Cada sistema possui suas características próprias e ferramentas específicas, portanto, apenas podemos propor alguns métodos para que você escolha a distro certa.

Primeiramente, você pode analisar se deseja um "sabor" de Linux mais voltado à comunidade, produzido apenas com softwares livres, como o Debian, ou se não se incomoda por ter aplicativos proprietários de terceiros em sua máquina, como codecs para a reprodução de MP3 e DivX.

Outro ponto a analisar é o uso que você fará do sistema. Existem distribuições voltadas a máquinas com poucos recursos de processamento e memória, como é o caso do Lubuntu, ou distros específicas para o uso em desktops, com aparência e softwares de fácil utilização, ou servidores, contendo apenas softwares essenciais e bem estáveis, de uso exclusivo em modo texto.

### 6 distros Linux que você precisa conhecer
Para facilitar, o Canaltech preparou uma breve apresentação das principais distros da atualidade. Antes, vale a pena lembrar que toda lista está fadada a falhar, pois ao delimitar um escopo acaba sendo incompleta sob diversos pontos de vista. Portanto, caso você não encontre a sua distro favorita aqui, não se preocupe. Ela certamente existe e está em algum canto da internet, provavelmente listada no DistroWatch.

Pense nas descrições abaixo como uma espécie de "guia turístico" para iniciantes, pelo qual você poderá ter uma ideia de como iniciar a caminhada no mundo do Linux. E independentemente do caminho tomado, lembre-se de que o importante é fazer uma boa viagem e, acima de tudo, divertir-se.

#### Fedora
![fedora.png](/fedora.png)
Em 2003, quando a empresa Red Hat decidiu tornar a linha de produtos Enterprise como a única oficial do seu portfólio, muitos adeptos do Red Hat Linux se sentiram um pouco órfãos. Por isso, a empresa incentivou, na mesma ocasião, a criação do projeto Fedora, uma distribuição derivada e mantida pela comunidade.

O objetivo principal do projeto é construir um sistema Linux de propósito geral e de desenvolvimento público. Normalmente, são lançadas de duas a três versões do sistema todo ano, enquanto que engenheiros da Red Hat também participam do desenvolvimento da distro. O ambiente gráfico padrão é o GNOME e a distribuição também se preocupa com a segurança do sistema, fazendo uso de um conjunto de mecanismos de acesso conhecido como Security-Enhanced Linux (SELinux).

#### Debian
![debian.png](/debian.png)
A distribuição Debian GNU/Linux é uma das mais antigas em atividade, representando um sistema sólido e bastante popular não apenas em desktops, mas em servidores do mundo todo. Essa distro também serviu de origem para mais de 140 outros sistemas que derivaram dela, com é o caso do Ubuntu Linux.

Nos repositórios de programas compatíveis com o Debian estão 37,5 mil pacotes e, embora o projeto hospede apenas software livre, o sistema também permite a instalação de programas proprietários, desenvolvidos por terceiros. Entre os software presentes no Debian GNU/Linux estão a suíte LibreOffice, o navegador Iceweasel e o cliente de email Evolution, além de aplicativos para reprodução de música e vídeo, gravação de CD/DVD e muito mais.

#### Ubuntu
![ubuntu.png](/ubuntu.png)
Essa é, no momento, a distribuição mais popular de Linux, e o sucesso se deve, principalmente, ao fato de essa distro ser muito bem adaptada para desktops, mantendo interface e configuração bastante amigáveis se comparadas a outras distribuições. Assim como o Debian GNU/Linux, o Ubuntu também deu origem a diversas distros derivadas, cada uma seguindo um propósito específico, como é o caso do Kubuntu, que traz o KDE como ambiente gráfico padrão, e o Edubuntu, voltado para o uso educacional.

Você pode experimentar o Ubuntu em seu computador sem a necessidade de desinstalar o Windows ou o Mac OS X.

#### openSuSE
![opensuse.png](/opensuse.png)
Quando a Novell comprou a alemã SuSE, tomou iniciativa semelhante à da Red Hat e criou o openSuSE, projeto aberto e de base colaborativa que tem como um dos objetivos tornar cada vez mais fácil e simples o uso do sistema Linux.

Um dos diferenciais dessa distribuição é a ferramenta de configuração YaST, que permite ajustar detalhes de rede, hardware e segurança mais facilmente, de maneira similar ao Painel de Controle do Windows. Além disso, foi um desenvovedor da SuSE, David Reveman, que anunciou o surgimento do Xgl, em 2006, levando efeitos tridimensionais ao ambiente gráfico do sistema, como a rotação da área de trabalho em forma de cubo.

#### Linux Mint (minha dica para começar)
![linuxmint.png](/linuxmint.png)
Por que derivar de uma distro quando se pode derivar de duas, aproveitando o melhor de cada uma delas? A distribuição Linux Mint tem suas origens tanto no Debian quanto no Ubuntu, segue o propósito de ser poderosa e, ao mesmo tempo, "moderna, elegante e fácil de usar".

Entre os diferenciais da distro estão o suporte completo para recursos multimídia, incluindo softwares proprietários como o Adobe Flash Player. Também são lançadas duas versões do Linux Mint por ano, cerca de um mês depois do último release do Ubuntu. Outra peculiaridade é o fato de a distribuição não optar por KDE ou GNOME como ambiente gráfico padrão, seguindo o rumo da maioria. Em vez disso, promove o uso dos ambientes MATE ou Cinnamon.

#### CentOS
![centos.svg](/centos.svg)
Por último, chegamos ao CentOS, uma distribuição feita por indíviduos e organizações que, apesar de não receberem investimentos pesados, criam um sistema estável da categoria Enterprise. Sendo assim, este sistema operacional possui recursos e funcionalidades suficientes para ser usado em empresas e corporações, mas sem o custo de suporte e certificação que os concorrentes comerciais costumam praticar.

Como se não bastasse, o CentOS é 100% compatível com o Red Hat Enterprise Linux, sendo derivado do mesmo código-fonte. Portanto, caso você precise de uma opção mais robusta do Linux, já sabe onde recorrer.

# Versões do kernel
Periodicamente, novas versões do kernel Linux são lançadas. Atualizações são naturais para qualquer software e ocorrem para atribuir melhorias a determinadas funcionalidades, para corrigir falhas (bugs) e, no caso de sistemas operacionais, para adicionar recursos importantes ao kernel, principalmente compatibilidade com novos hardwares.

Normalmente, cada versão do kernel é representada por três números distintos separados por pontos, por exemplo: 2.6.24. O primeiro número indica a versão do kernel. O segundo número indica a última revisão feita até o momento naquela versão. O terceiro número, por sua vez, indica uma revisão menor, como se fosse uma "revisão da última revisão" do kernel. Um quarto número pode ser utilizado para indicar uma atualização importante naquela versão.

É válido frisar que antes da série 2.6.x, a numeração do kernel tinha o seguinte esquema: se o segundo número da representação fosse ímpar, significava que aquela série ainda estava em desenvolvimento, ou seja, era uma versão instável e em fase de testes ou aperfeiçoamentos. Se o número fosse par, significava que aquela série já tinha estabilidade para ser disponibilizada para uso.

A numeração sofreu outra mudança em julho de 2011, quando foi lançada a versão 3.0 do Linux. Das versões 1.x para 2.x houve significativas alterações no kernel. No entanto, da 2.x para a 3.x não houve nada tão importante assim, tanto que, pelo esquema, esta versão deveria ser 2.6.40.

Tudo indica que a mudança aconteceu por uma questão de comodidade e "estética". Há também quem afirme que a numeração 3.0 foi dada como forma de comemorar o aniversário do Linux, que completou 20 anos de existência em 2011.


# A licença do Linux
Uma licença é, em poucas palavras, um documento que explica como determinado software pode ser utilizado. No que se refere a programas de código-fonte aberto, há vários tipos de licenças disponíveis. O Linux utiliza a GPL (GNU Public Licence).

Vale frisar que, inicialmente, Linus Torvalds aplicou ao Linux uma licença própria, que tinha restrições para uso comercial. A GPL só foi adotada em 1992, mesmo porque o Linux já era utilizado com software GNU.

A GPL é uma licença criada pela Free Software Foundation (organização fundada por Richard Stallman) baseada nas liberdades que a entidade defende:

liberdade de executar o programa, para qualquer propósito (liberdade zero);
liberdade de estudar como o programa funciona e adaptá-lo às suas necessidades (liberdade 1), sendo o acesso ao código-fonte um pré-requisito para esta aspecto;
liberdade de distribuir cópias de forma que você possa ajudar ao seu próximo (liberdade 2);
liberdade de melhorar o programa e liberar os seus aperfeiçoamentos, de modo que toda a comunidade se beneficie (liberdade três). Novamente, aqui o acesso ao código-fonte é um pré-requisito.
Um software não pode utilizar a GPL se não corresponder a todos esses requisitos.

A GPL surgiu em 1989, mas foi revisada em 1991 para atender a determinadas necessidades, resultando na GPLv2 (GPL versão dois). Em 2007, surgiu a GPLv3 (GPL versão três). É possível consultar a GPL no seguinte link (em inglês): www.gnu.org/licenses/gpl.html.

Saiba mais sobre o assunto no artigo Software livre, código aberto e software gratuito: as diferenças.


# Finalizando
Você pode até não ter Linux em seu computador, mas já o utilizou de alguma forma. Por se tratar de um software gratuito, de código-fonte aberto e amplamente disponível, é comum encontrá-lo nas mais diversas aplicações. O servidor que hospeda o InfoWester, por exemplo, roda uma distribuição Linux. Também é possível encontrar esse kernel em sistemas embarcados, caixas eletrônicos, dispositivos móveis, entre outros.

# Para saber mais
[Tudo oque você precisa saber para começar](https://canaltech.com.br/linux/Biblioteca-de-conteudo-Tudo-o-que-voce-precisa-saber-sobre-Linux/)

# Fontes
[InfoWester](https://www.infowester.com/historia_linux.php)