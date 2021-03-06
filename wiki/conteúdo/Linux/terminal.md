---
title: 2. O Terminal
description: Sua principal ferramenta de trabalho
published: true
date: 2020-07-29T23:53:08.243Z
tags: 
editor: markdown
dateCreated: 2020-06-17T16:56:22.117Z
---

![unity-desktop.jpg](/unity-desktop.jpg)
O Terminal + VIM: Sua nova ferramenta principal, coisas que vão facilitar sua vida.

As distros Linux sempre tiveram a fama de ser difíceis de utilizar, voltadas para usuários avançados que devem recorrer ao Terminal e digitar um comando assustadoramente complicado para fazer qualquer tarefa. No Ubuntu, essa abordagem é opcional, e tudo pode ser feito através da interface gráfica, como no Windows.

Mas o Terminal ainda é uma ferramenta bastante poderosa e vale a pena gastar algum tempo aprendendo como facilitar algumas tarefas com ela.

Ao abri-lo você verá um cursor piscando aguardando comandos, e tarefas que alteram configurações importantes devem ser feitas com permissões de administrador. No Linux existe uma opção de executar um comando como administrador (o chamado 'super user') simplesmente digitando "sudo" antes de escrevê-lo. Por exemplo, se quisermos atualizar o sistema por linha de comando podemos digitar:

- **Debian**
```shell
sudo apt update
```
- **RHEL**
```shell
sudo yum update
```

# Não precisa ser feio, vamos deixar as coisas mais bonitas? 
## Meu terminal (terminator com tudo isso aí instalado)
![terminator.png](/terminator.png)
### Versões automatizadas 
[BASE RHEL em AWS Linux 2](https://raw.githubusercontent.com/RafaelFino/learnops/master/scripts/rhel-prepare.sh)

## Instalação manual:
- **Update**
```shell
#update
sudo yum update -y
sudo yum install -y git vim zsh wget unzip jq
```

- **ZSH (oh my zsh)**
```shell
#zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"/g' .zshrc
sudo sed -i 's/ec2-user:\/bin\/bash/ec2-user:\/usr\/bin\/zsh/g' /etc/passwd
echo zsh >> ~/.bashrc
```

- **VI|VIM**
```shell
#vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo set nu >> ~/.vim_runtime/my_configs.vim
```

- **Fonts**
```shell
#fonts
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
```

- **[exa](https://the.exa.website/) (ls bonitão)**
```shell
#exa
wget https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip
unzip exa-linux-x86_64-0.9.0.zip
sudo mv exa-linux-x86_64 /usr/local/bin/exa
rm exa-linux-x86_64-0.9.0.zip
echo 'alias ls="exa -hHBmgaFl --git"' >> .zshrc

```

- **Golang**
```shell
#golang
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
rm go1.14.4.linux-amd64.tar.gz
echo PATH=$PATH:/usr/local/go/bin >> ~/.zshrc
export PATH=$PATH:/usr/local/go/bin
```

- **Docker**
```shell
#install docker
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
docker --version
```

# Falando mais formalmente
Em linhas básicas, o terminal do Linux, também conhecido como shell, é um programa que recebe os comandos do usuário a partir do teclado e repassa-os às camadas de baixo nível do sistema operacional. Logo, podemos defini-lo como um mecanismo de software que intermedeia a interação do usuário com o Linux.

Se reproduzirmos a hierarquia do sistema por meio de suas camadas, veremos que a comunicação é estabelecida em quatro níveis. Primeiramente, o usuário executa o shell; este envia as instruções aos serviços de baixo nível, os quais interagem com o kernel; por sua vez, o kernel aciona o hardware.

Portanto o terminal do Linux é o instrumento que, propriamente, nos permite utilizar os componentes do computador. Até por isso os comandos representam a maneira mais abrangente para acesso aos recursos avançados do sistema, tornando-o quase ilimitado. Contudo, você sabe como o shell é acessado?

É comum entre os iniciantes acreditar na existência de vários tipos de shell. Na verdade, há aplicações de software que são emuladores do shell, capazes de fazer o usuário interagir com o terminal usando uma interface gráfica. Eles atuam como facilitadores em meio a essa relação, seja pela inteligibilidade, seja pelos recursos avançados.

Agora que tocamos no assunto, que tal conhecermos alguns interpretadores para melhor elucidarmos as suas funções? 

## Quais são os interpretadores mais comuns?
Abaixo, você se esbarrará com nomes frequentes no universo Linux, principalmente quando vasculhamos os fóruns da comunidade. Tratam-se de programas que interpretam o shell e, ao mesmo tempo, oferecem recursos e sintaxes diferentes.

Percebeu como o Linux expande os horizontes do usuário? Em vez de mantê-lo preso a uma via única de utilizar o sistema, ele disponibiliza ferramentas que descomplicam a sua experiência, tornando-a customizável e conveniente.

Mas quais são esses programas, afinal? Vejamos alguns dos mais populares:

### No Linux
- **TERMINATOR:** Um emulador de terminal fácil de usar e, ao mesmo tempo, repleto de recursos de customização (desde esquema de cores a atalhos). A quantidade de plugins disponíveis é, também, um atrativo do Terminator.
- **GUAKE:** O Guake foi desenvolvido em python e voltado a ambientes de desktop GNOME. Por meio de atalhos, o emulador pode ser acionado ou colocado em segundo plano. Uma curiosidade bacana é que, caso você tenha se lembrado do game Quake (um clássico dos jogos em primeira pessoa), isso não aconteceu por acaso. O emulador foi inspirado no próprio terminal presente no Quake para PC.
- **KONSOLE:** Baseado na interface KDE, o Konsole é um dos principais emuladores de terminal, sendo este livre e open source. Entre as diversas funções presentes no Konsole, destacam-se as opções de customização, organização em abas, sistema de busca e exportação de conteúdo em arquivo de texto ou HTML.
- **TERMITE:** O Termite é um emulador com design minimalista e não é acompanhado de muitos recursos. Contudo, ele se destaca pelo desempenho e, principalmente, pela sua capacidade de trabalhar com múltiplos quadros em uma só janela.

**Dica**: Gosto muito do **Terminator**

### No Mac
- **KiTTY:** também com versões para Linux e Windows, o KiTTY é um emulador open source extremamente leve, customizável e dispõe de plugins;
- **TreeTerm:** é definido como uma combinação de gerenciador de arquivos e emulador de terminal;
- **Hyper:** trata-se de um emulador de terminal que se destaca pelo design (é customizável, inclusive), pelo suporte e as diversas extensões que acompanham o software;
- **iTerm2:** o iTerm2 é um emulador livre e open source bastante completo e popular entre os usuários do Mac.

**Dica**: Gosto muito do **iTerm**

### No Windows
- **Cmder:** é considerado um dos melhores emuladores, disponível, inclusive, em sua versão portable (não requer instalação);
- **ConEmu:** o ConEmu é altamente personalizável, podendo o usuário configurar esquema de cores, plano de fundo, atalhos e muito mais;
- **Terminus:** se diferencia pelo fato de ser open source e contar com uma comunidade ativa; e
- **PuTTY:** um dos principais emuladores existentes para a plataforma.

**Dica**: Gosto muito do **ConEmu**

# Os vários Shells do Linux
A maioria das distribuições do Linux inclui o shell bash por padrão, mas você também pode alternar para outro ambiente de shell. Zsh é uma alternativa particularmente popular, e existem outras conchas, como cinzas, traços, peixes e tcsh. Mas qual é a diferença e por que existem tantos?

## O que os shells fazem?
Quando você entra na linha de comando ou inicia uma janela de terminal no Linux, o sistema inicia o programa shell. Os shells oferecem uma maneira padrão de estender o ambiente de linha de comando. Você pode trocar o shell padrão por outro, se quiser.

O primeiro ambiente shell foi o Thompson Shell, desenvolvido no Bell Labs e lançado em 1971. Desde então, os ambientes Shell têm construído o conceito, adicionando uma variedade Novos recursos, funcionalidade e melhorias de velocidade.

Por exemplo, o Bash oferece conclusão de comandos e nomes de arquivos, recursos avançados de script, histórico de comandos, cores configuráveis, aliases de comando e uma variedade de outros recursos que não estavam disponíveis em 1971, quando o primeiro shell foi lançado

O shell também é usado em segundo plano por vários serviços do sistema. As distribuições do Linux incluem muitas funções escritas como scripts de shell. Esses scripts são comandos e outras funções avançadas de script de shell executadas no ambiente do shell.

## Shells que levam até o Bash: sh, csh, tsh e ksh
RELACIONADOS: O que é o Unix e por que ele é importante? O progenitor mais proeminente das conchas modernas é o Bourne shell - também conhecido como “sh” - que recebeu o nome de seu criador, Stephen Bourne, que trabalhou no Bell Labs da AT & T. Lançado em 1979, tornou-se o interpretador de comandos padrão no Unix devido ao seu suporte à substituição de comandos, tubulações, variáveis, testes de condição e looping, além de outros recursos. Ele não oferecia muita personalização para os usuários e não suportava nichos modernos como aliases, conclusão de comandos e funções de shell (embora esse último tenha sido adicionado).

O shell C, ou “csh”, foi desenvolvido no final dos anos 1970 por Bill Joy na Universidade da Califórnia, Berkley. Ele adicionou muitos elementos interativos com os quais os usuários podiam controlar seus sistemas, como aliases (atalhos para comandos longos), habilidades de gerenciamento de tarefas, histórico de comandos e muito mais. Ele foi modelado a partir da linguagem de programação C, na qual o próprio sistema operacional Unix foi escrito. Isso também significava que os usuários do shell Bourne tinham que aprender C para que pudessem inserir comandos nele. Além disso, o csh tinha alguns bugs que precisavam ser martelados pelos usuários e criadores por um longo período de tempo. As pessoas acabaram usando o shell Bourne para scripts porque manipulavam comandos não interativos melhor, mas ficavam com o shell C para uso normal.

Com o tempo, muitas pessoas corrigiram erros e adicionaram recursos ao shell C, culminando em uma versão melhorada do csh conhecida como "tcsh". Mas o csh ainda era o padrão em computadores baseados em Unix e tinha adicionado alguns recursos não padrão. David Korn, da Bell Labs, trabalhou no KornShell, ou “ksh”, que tentou melhorar a situação sendo compatível com a linguagem do shell Bourne, mas adicionando muitos recursos do shell csh. Foi lançado em 1983, mas sob licença proprietária. Não era software livre até os anos 2000, quando foi lançado sob várias licenças de código aberto.

## O nascimento de bash

A interface do sistema operacional portátil para Unix, ou POSIX, foi outra resposta para o csh proprietário implementações. Ele criou com sucesso um padrão para interpretação de comandos (entre outras coisas) e eventualmente espelhou muitos dos recursos do KornShell. Ao mesmo tempo, o Projeto GNU estava tentando criar um sistema operacional livre compatível com Unix. O Projeto GNU desenvolveu um shell de software livre para ser parte de seu sistema operacional livre e o chamou de "Bourne Again Shell", ou "bash".

O Bash foi melhorado nas décadas desde seu primeiro lançamento em 1989, mas é ainda o shell padrão na maioria das distribuições Linux hoje. É também o shell padrão no macOS da Apple e está disponível para instalação no Windows 10 da Microsoft.Novos Shells: ash, dash, zsh e fish

Embora a comunidade Linux tenha se estabelecido no Bash desde então, os desenvolvedores não pararam de criar novos shells quando Bash foi lançado pela primeira vez há 28 anos.
Kenneth Almquist criou um clone de shell Bourne conhecido como shell Almquish, A Shell, “ash”, ou às vezes apenas “sh”. Ele também era compatível com POSIX e tornou-se o shell padrão no BSD, uma ramificação diferente do Unix. O shell cinza é mais leve que o bash, o que o torna popular em sistemas Linux embarcados. Se você tem um telefone Android rooteado com o BusyBox instalado - ou qualquer outro dispositivo com o pacote BusyBox de software - ele está usando código do ash.

O Debian desenvolveu um ambiente shell baseado em cinzas e o chamou de "traço". Ele foi projetado para ser compatível com POSIX e leve, por isso é mais rápido que o Bash, mas não terá todos os recursos. O Ubuntu usa o shell dash como seu shell padrão para tarefas não interativas, acelerando os scripts de shell e outras tarefas em execução em segundo plano. O Ubuntu ainda usa o bash para shells interativos, no entanto, os usuários ainda têm o ambiente interativo com recursos completos.

Um dos mais novos shells mais populares é o Z shell, ou “zsh”. Criado por Paul Falstad em 1990, o zsh é um shell estilo Bourne que contém os recursos que você encontrará no bash, e ainda mais. Por exemplo, o zsh possui verificação ortográfica, a capacidade de observar logins / logouts, alguns recursos de programação integrados como bytecode, suporte a notação científica em sintaxe, permite aritmética de ponto flutuante e mais recursos.

Outra novidade shell é o Friendly Interactive Shell, ou “peixe”, lançado em 2005. Ele possui uma sintaxe de linha de comando única, projetada para ser um pouco mais fácil de aprender, mas não é derivada do shell Bourne ou do shell C. É uma ideia interessante, mas o que você aprende com o uso de peixes não necessariamente ajuda você a usar bash e outros shells derivados de Bourne.

# Qual você deve escolher? (e por que o Zsh é popular e eu gosto demais dele)

![eombimz.png](/eombimz.png)

Você não precisa escolher um shell. Seu sistema operacional escolhe seu shell padrão para você, e essa escolha é quase sempre bash. Sente-se na frente de uma distribuição Linux - ou até mesmo um Mac - e você quase sempre terá um ambiente de shell bash. O Bash tem alguns recursos avançados, mas você provavelmente não os usará, a menos que você programe scripts de shell.

Em sistemas Linux embarcados ou sistemas BSD, você terminará com o shell ash. Mas o ash é um shell baseado em Bourne e é amplamente compatível com o bash. Qualquer conhecimento que você tenha sobre o uso do bash será transferido para um shell ash ou dash, embora alguns recursos de script avançados não estejam disponíveis neste shell leve.

Quase todos os shell que você encontrará são baseados em Bourne e funcionam de maneira semelhante.

É por isso que o zsh é popular. Este novo shell é compatível com o bash, mas inclui mais recursos. O shell zsh oferece correção de ortografia incorporada, conclusão de linha de comando aprimorada, módulos carregáveis ​​que funcionam como plug-ins para o shell, aliases globais que permitem aliasar nomes de arquivos ou qualquer outra coisa na linha de comando em vez de apenas comandos e mais suporte a temas. É como bash, mas com muitos extras, recursos adicionais e opções configuráveis ​​que você pode apreciar se você gastar muito tempo na linha de comando.

Se você estiver familiarizado com o bash, você pode alternar para o zsh sem aprender uma sintaxe diferente, você só vai ganhar recursos adicionais. Se você estiver familiarizado com o zsh, você pode mudar para o bash sem aprender uma sintaxe diferente - você simplesmente não terá acesso a esses recursos.

[“Oh My ZSH”](https://ohmyz.sh/) é uma ferramenta que ajuda você a habilitar mais facilmente o plug-in do zsh. ins e alterna entre temas pré-criados, customizando rapidamente seu shell zsh sem gastar horas aprimorando as coisas.

Existem outros shells também. Por exemplo, o shell tcsh ainda está por aí e ainda é uma opção. O FreeBSD usa tsch como seu shell root padrão e ash como seu shell interativo padrão. Se você usa a programação C regularmente, o tsch pode ser mais adequado para você. No entanto, não é nem de longe tão comumente usado como bash ou zsh.

# Como alternar entre shells

É fácil alternar para um novo shell para testá-lo. Apenas instale o shell do gerenciador de pacotes da sua distribuição Linux e digite o comando para iniciar o shell.
Por exemplo, digamos que você queira tentar o zsh no Ubuntu. Você executaria os seguintes comandos para instalar e depois iniciá-lo:

``` shell 
sudo apt install zsh zsh
```

Você estaria então sentado em um shell zsh. Digite "
exit" no shell para sair e retornar ao seu shell atual.Isso é apenas temporário. Sempre que você abrir uma nova janela de terminal ou entrar em seu sistema na linha de comando, você verá o seu shell padrão. Para alterar o shell que você vê ao entrar, conhecido como seu shell de login, geralmente é possível usar o comando

chshou "Change Shell".Para usar este comando, você primeiro precisa encontrar o caminho completo para o seu shell com o comando which. Por exemplo, digamos que queremos mudar para o shell zsh. Nós rodamos o seguinte comando:

``` shell 
which zsh
```

No Ubuntu, isso nos diz que o binário zsh está armazenado em /usr/bin/zsh.
Execute o seguinte comando, digite sua senha e você ' Será solicitado que você escolha um novo shell de login:

``` shell 
chsh
```

De acordo com o comando acima, digitaríamos

``` shell 
/usr/bin/zsh
```
O shell zsh seria então nosso padrão até que nós executássemos o comandochshe o alterássemos de volta.


# Alguns comandos que vão te ajudar bastante
A princípio, pode parecer bobagem, visto que hoje quase todas as operações podem ser feitas na interface gráfica do sistema e muitas distros fornecem assistentes até mesmo para a confguração de servidores. Mas saiba que há muitas vantagens no uso do modo console ou de um emulador de terminal.

O modo texto do Linux oferece mais liberdade ao usuário, que pode abusar dos parâmetros de cada comando, executando ações muito personalizadas. Além disso, depois de se acostumar com o uso do sistema por esse meio, você perceberá a agilidade que o teclado oferece, principalmente ao conhecer teclas de atalho, variáveis e outros truques permitidos pelo terminal.

Como se não bastasse, aprender a trabalhar bem com os comandos em modo texto é entender um pouco dos bastidores do Linux e o que se passa por trás dos assistentes gráficos que facilitam algumas tarefas do sistema. Assim, quando esses softwares usados com o mouse não derem conta do recado, você poderá contornar as limitações rapidamente.

Nesta lista estão dez comandos básicos e úteis utilizados à exaustão não apenas por aqueles que chegaram agora no mundo do Linux, mas também por usuários experientes. Note que a intenção deste artigo não é explicar extensivamente o uso de cada um dos comandos, mas fornecer meios para que iniciantes possam conhecê-los e, posteriormente, caminhar sozinhos em busca dos seus próprios interesses e uso.

Portanto, arregace as mangas e execute o seu Terminal.

## *man*: aprenda mais sobre os comandos (Manual)
``` shell 
man
```
O comando man deveria estar no topo de toda lista de comandos importantes do Linux. A razão é muito simples: basta executá-lo para carregar uma página de manual (man page) sobre os comandos do sistema, com definições não apenas do uso de cada ferramenta, mas também descrições detalhadas dos inúmeros parâmetros do software e exemplos de uso.

Para ler as man pages é muito fácil e basta executar o man seguindo do nome do comando que você deseja buscar ajuda. Não se esqueça de pressionar a tecla Enter após digitar o comando, caso contrário ele não será executado.

Ao executar man cp, por exemplo, você poderá ler todas as instruções para o uso do comando cp. E antes de passarmos para o próximo item da lista, valem duas dicas: a primeira é que existe o comando man man, para o caso de dúvidas sobre o uso do próprio man. A segunda é que é possível traduzir o conteúdo das páginas de manual para o português, caso estejam em inglês, instalando o manpages-pt pela Central de Programas do Ubuntu.

## *ls*: listagem de arquivos (List)
``` shell 
ls -lha
```
Para listar os arquivos existentes em algum diretório, basta usar o comando ls. Se executado sem parâmetros, ele listará o conteúdo do diretório em que você se encontra. Mas você pode indicar um caminho para ele, como ls /usr/bin, por exemplo.

Também é possível usar o ls para conferir o tamanho e a data de criação de cada arquivo ou pasta. Para isso, use o parâmetro -lh, como no exemplo a seguir: ls -lh. E se você também quiser listar os arquivos ocultos, que começam com um ponto, use a opção -a (ls -lha).

Para tornar nossa vida um pouco menos difícil, o [exa](https://github.com/ogham/exa) (que instalamos lá no início, nos deu um comando *ls* turbinado e colorido, mas são alterações cosméticas apenas

## *cd*: navegue pelo sistema de arquivos (Change Directory)
``` shell 
cd ~
```
Para pular de pasta em pasta, não precisa abrir o gerenciador de arquivos. No próprio terminal é possível navegar pelo sistema de arquivos usando o comando cd seguido do caminho que você deseja seguir. Exemplo: cd /usr.

Vale a pena notar que existem alguns atalhos que podem facilitar a vida do usuário. Se você executar o comando cd sem parâmetros, ele retorna para a pasta do usuário, localizada em /home. Para voltar um nível acima na árvore de diretório, use "cd ..", sem as aspas. Dessa forma, se você estiver em /usr/bin e executar "cd ..", voltará para o diretório /usr.

## *cp*: copiar arquivos e pastas (Copy)
``` shell 
cp file.txt ~/files
```
Copiar um arquivo pelo terminal também é moleza. Use o comando cp seguindo do arquivo de origem e o destino para ele, que pode ser tanto uma nova pasta quando um novo arquivo, com nome diferente. Exemplo: cp arquivo1.txt arquivo2.txt ou, então, cp arquivo1.txt pastanova/.

Para copiar um diretório todo, não se esqueca de inserir o parâmetro -r. Se quiser clonar uma pasta, use cp -r pasta1 pasta2, por exemplo.

## *scp*: Copiando arquivos entre servidores de uma forma segura (Secure Copy)
``` shell 
scp -i ~.ssh/my-key.pem file.txt ec2-user@10.0.0.20:
```
É um comando cp que pode usar chaves SSH para se autenticar e copiar conteúdos entre servidores, é um comando extremamente útil e largamente utilizado

## *mv*: mover arquivos e pastas (Move)
``` shell 
mv file* ~/files/dest
```
Para mover arquivos existe o comando mv e ele pode ser usado tanto para remanejar arquivos como para renomeá-los. Se quiser enviar o arquivo de uma pasta para outra, basta seguir o exemplo mv pasta1/arquivo1 pasta2/. Se preferir apenas renomeá-lo, use mv arquivo1 arquivo2.

## *more*: ler arquivos de texto (Mais?)
``` shell 
cat file.log | more
```
Caso você precise ler o conteúdo de um arquivo de texto, use o comando more seguido do caminho e nome do arquivo, como em more /home/user/arquivo.txt.

Todo conteúdo do arquivo será exibido no terminal, preenchendo a tela com texto. Para prosseguir com a leitura, pressione a barra de espaço e, caso precise voltar uma ou mais páginas, use a tecla "b". Se quiser sair antes do fim do arquivo, pressione "q".

## *df*: conferir o espaço em disco (Disk Free)
``` shell 
df -h
```
Quer saber qual é o espaço total e quantos GB disponíveis existem em cada partição do sistema? Use o comando df -h. A opção -h, aliás, quer dizer human-readable, ou seja, legível para humanos. Se você executar o comando sem ela, as informações serão exibidas em kilobytes e será necessário convertê-las mentalmente para outras unidades.

## *free*: exibe a alocação da memória RAM
``` shell 
free -h
```
Se precisar saber quando de memória o sistema está alocando no momento, use esse comando. A opḉão -h pode ajudar a não precisar ficar contando o tamanho dos retornos, ele vai converter para uma forma mais legível por mamíferos.

## *sudo:* permissões especiais (Super User DO)
``` shell 
sudo ./my-script.sh
```
Por razões de segurança, o Linux trabalha com permissões de usuários. Por isso, determinados comandos ou arquivos são acessíveis apenas pelo próprio dono ou pelo usuário administrador (root). Para que você não tenha que trocar de usuário a todo instante, existe o comando sudo, que garante credenciais de usuário root temporariamente, mediante a informação de uma senha.

Para fazer o teste, tente executar o comando ls /root. Você reberá um aviso de permissão negada. Em seguida, execute sudo ls /root. Depois de informar a senha do seu próprio usuário (no caso do Ubuntu), o comando será executado normalmente e os arquivos a pasta root serão listados no terminal.

## *grep*: buscas em textos
``` shell 
tail -f /var/log/xpto-log | grep 'my-target'
```
Imagine a seguinte situação: você tem um arquivo de texto com cerca de 200 nomes de alunos de certa escola, mas não tem certeza se um nome em específico está listado. O grep ajuda você a procurar por esse aluno e a fazer muito mais com a ajuda de expressões regulares.

Bastaria executar o comando grep "Nome do Aluno" arquivo.txt para que o terminal busque pelo nome indicado dentro da relação. Caso você não tenha certeza se o nome do aluno foi escrito respeitando as letras maiúsculas, adicione o parâmetro -i para que grep passe a ignorar essa distinção durante a busca.

## *clear*: limpar o buffer
``` shell 
clear
```
Por último, um comando que ajuda a organizar um pouco a confusão de letras que ficam no terminal depois de horas de uso. Para limpar toda a ela, execute o comando clear. Depois, é só voltar a usar o terminal normalmente, como se nada tivesse acontecido.

## *pwd*: Onde diabos estou? (Te diz em qual diretório você está)
``` shell 
pwd
```
Como saber em que diretório você se encontra? Basta digitar o comando pwd e o Linux fornecerá todos os detalhes.

# Fontes
[Canal Tech](https://canaltech.com.br/linux/10-comandos-essenciais-do-linux/)
