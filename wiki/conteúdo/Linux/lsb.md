---
title: 3. Os diretórios
description: O que são eles, o que comem, como vivem
published: true
date: 2020-06-29T01:33:53.901Z
tags: 
editor: markdown
dateCreated: 2020-06-17T16:58:05.183Z
---

# Estruturas básica de diretórios (LSB)
Leiam essse [artigo](https://ivanix.wordpress.com/2008/10/23/estrutura-de-diretorios-no-gnulinux/), é bem didático

Bastam apenas alguns minutos usando o sistema para perceber algo muito curioso: não existe "C:/", "D:/" ou "System32", como no Windows. Em vez disso, os arquivos estão armazenados em pastas com nomes bem diferentes.

A boa notícia é que, apesar desse estranhamento inicial, a estrutura de diretórios do Linux é muito bem definida e você perceberá que ela está organizada em termos lógicos e que fazem muito sentido.

Para manter a organização, desenvolvedores de distribuições Linux e softwares diversos seguem o Filesystem Hierarchy Standard (padrão para sistema de arquivos hierárquico), ou [FHS](https://pt.wikipedia.org/wiki/Filesystem_Hierarchy_Standard), uma espécie de referência que padroniza quais pastas do sistema recebem determinados tipos de arquivo.

# Como se parece a estrutura de arquivos?

## Como você a vê em uma gerenciador de janelas (Thunar, por exemplo)
![fhs.png](/fhs.png)

## Hierarquia
![fhs2.jpg](/fhs2.jpg)

## O diretório raiz (/)
Todos os arquivos e diretórios do sistema Linux instalado no computador partem de uma única origem: o diretório raiz. Mesmo que estejam armazenados em outros dispositivos físicos, é a partir do diretório raiz – representado pela barra (/) – que você poderá acessá-los.

Também vale lembrar que o único usuário do sistema capaz de criar ou mover arquivos do diretório raiz é o root, ou seja, o usuário-administrador. Isso evita que usuários comuns cometam erros e acabem comprometendo a integridade de todo o sistema de arquivos.

## Binários executáveis: /bin
No diretório /bin estão localizados os binários executáveis que podem ser utilizados por qualquer usuário do sistema. São comandos essenciais, usados para trabalhar com arquivos, textos e alguns recursos básicos de rede, como o cp, mv, ping e grep. Se você ainda não conhece esses comandos, não se preocupe: falaremos sobre eles em um artigo futuro, aqui no Canaltech.

## Binários do sistema: /sbin
Assim como o /bin, este diretório armazena executáveis, mas com um diferencial: são aplicativos utilizados por administradores de sistema com o propósito de realizar funções de manutenção e outras tarefas semelhantes. Entre os comandos disponíveis estão o ifconfig, para configurar e controlar interfaces de rede TCP/IP, e o fdisk, que permite particionar discos rígidos, por exemplo.

## Programas diversos: /usr
Se você não encontrar um comando no diretório /bin ou /sbin, ele certamente está aqui. O /usr reúne executáveis, bibliotecas e até documentação de softwares usados pelos usuários ou administradores do sistema. Além disso, sempre que você compilar e instalar um programa a partir do código-fonte, ele será instalado nesse diretório.

## Configurações do sistema: /etc
No diretório /etc ficam arquivos de configuração que podem ser usados por todos os softwares, além de scripts especiais para iniciar ou interromper módulos e programas diversos. É no /etc que se encontra, por exemplo, o arquivo resolv.conf, com uma relação de servidores DNS que podem ser acessados pelo sistema, com os parâmetros necessários para isso.

## Bibliotecas: /lib
Neste ponto do sistema de arquivos ficam localizadas as bibliotecas usadas pelos comandos presentes em /bin e /sbin. Normalmente, os arquivos de bibliotecas começam com os prefixos ld ou lib e possuem "extensão" so.

## Opcionais: /opt
Aplicativos adicionais, que não são essenciais para o sistema, terminam neste diretório.

## Aquivos pessoais: /home
No diretório /home ficam os arquivos pessoais, como documentos e fotografias, sempre dentro de pastas que levam o nome de cada usuário. Vale notar que o diretório pessoal do administrador não fica no mesmo local, e sim em /root.

## Inicialização: /boot
Arquivos relacionados à inicialização do sistema, ou seja, o processo de boot do Linux, quando o computador é ligado, ficam em /boot.

## Volumes e mídias: /mnt e /media
Para acessar os arquivos de um CD, pendrive ou disco rígido presente em outra máquina da rede, é necessário "montar" esse conteúdo no sistema de arquivos local, isso é, torná-lo acessível como se fosse apenas mais um diretório no sistema.

Em /media ficam montadas todas as mídias removíveis, como dispositivos USB e DVDs de dados. Já o diretório /mnt fica reservado aos administradores que precisam montar temporariamente um sistema de arquivos externo.

## Serviços: /srv
Dados de servidores e serviços em execução no computador ficam armazenados dentro desse diretório.

## Arquivos de dispositivos: /dev
No Linux, tudo é apresentado na forma de arquivos. Ao plugar um pendrive no computador, por exemplo, um arquivo será criado dentro do diretório /dev e ele servirá como interface para acessar ou gerenciar o drive USB. Nesse diretório, você encontra caminhos semelhantes para acessar terminais e qualquer dispositivo conectado ao computador, como o mouse e até modems.

## Arquivos variáveis: /var
Todo arquivo que aumenta de tamanho ao longo do tempo está no diretório de arquivos variáveis. Um bom exemplo são os logs do sistema, ou seja, registros em forma de texto de atividades realizadas no Linux, como os logins feitos ao longo dos meses.

## Processos do sistema: /proc
Lembra da história de que tudo funciona como um arquivo no Linux? Pois o /proc é a prova disso. Nesse diretório são encontrados arquivos que revelam informações sobre os recursos e processos em execução no sistema. Quer um exemplo? Para saber há quanto tempo o Linux está sendo usado desde a última vez em que foi iniciado, basta ler o arquivo /proc/uptime.

## Arquivos temporários: /tmp
Arquivos e diretórios criados temporariamente tanto pelo sistema quanto pelos usuários devem ficar nesse diretório. Boa parte deles é apagada sempre que o computador é reiniciado.

Como fica fácil perceber, os nomes dos diretórios dão dicas do que pode ser encontrado em seu interior e, com alguns meses de uso, você estará navegando por eles com facilidade.

# Tudo é um arquivo
Em sistemas derivados de Unix, tudo é considerado um arquivo e cada arquivo possui seu grupo de permissões (veremos isso mais em detalhes em outros artigos), mas qual é grande coisa aqui? Um device, como uma porta serial, usb, paralela ou até mesmo uma porta TCP, é vista pelo sistema como um arquivo e com todas as interações que você poderia fazer com ele, como ler e escrever por exemplo.

Já usou o comando **>>** para incluir um dado no final de um arquivo por exemplo?

`echo 'teste' >> meu-arquivo.txt`

Em sistema unix, você poderia por exemplo usar o mesmo conceito para escrever em uma porta serial, por exemplo e enviar dados para uma impressora ou qualquer outro device ali conectado

`echo 'cmd xpto' > /dev/ttyS1`

Da mesma forma você pode ler recursos de hardware como se fossem arquivos, um ótimo exemplo disso é o seguinte comando:

`cat /proc/cpuinfo`

![cpuinfo.png](/cpuinfo.png)

Nesse comando, o **cat** vai ler o caminho apontado por **/proc/cpuinfo** e exibir no terminal as especificaçãoes da CPU


# Pontos de montagem
# Como encontrar um arquivo
# Labels (atalhos)
# Fontes
[ivanix](https://ivanix.wordpress.com/2008/10/23/estrutura-de-diretorios-no-gnulinux)
[CanalTech](https://canaltech.com.br/linux/entendendo-a-estrutura-de-diretorios-do-linux/)
[Wikipedia](https://pt.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)