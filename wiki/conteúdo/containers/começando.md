---
title: Containers?
description: Rodando coisas dentro das coisas: Inception (?!)
published: true
date: 2020-07-06T12:49:19.532Z
tags: 
editor: markdown
dateCreated: 2020-06-17T17:33:19.661Z
---

# O que são?
Já ouviu falar disso né? mas que raio são containers e por que falam tanto sobre isso nos ultimos anos? 
São uma nova camada de virtualização de recursos computacionais, é uma forma de "fatiar" os recursos de um servidor e separar por contexto de aplicação.

Complicado? Nade de novo? errado... não é complicado e apesar de não ser exatamente uma novidade, esse tipo de camada de separação traz consigo uma série de vantagens que antes não eram tão evidentes.
Mas como assim? como isso funciona? Acredito que a forma mais fácil de explicar seria pensar em uma VM (Virtual Machine), Um VM é como se fosse um servidor de verdade, com o seu próprio sistema operacional, gerenciando seus recursos (RAM, CPU, discp e etc), com o seu SO instalado e tudo mais que um servidor precisa para funcionar, certo? só que compartilhando hardware com outras instâncias como ele, tratando o acesso ao harware físico de forma virtualizada, ou seja, por software.

Até aqui a compreensão fica simples, certo? Apesar de ser muito mais simples lidar com uma VM do que com um server físico diretamente, você vai concordar que ainda terá que se preocupar com a instalação do SO, das dependências das aplicaçṍes, rede e etc, como em um servidor comum, certo? E se eu te falar q poderíamos deixar as coiass mais simples.

# Em quais situações ajuda?
E se eu conseguisse deixar uma aplicação, ou um pedaço da aplicação rodando em uma área delimitada, apenas com as suas dependências, em um quintal com cerquinha fechada, controlada e sem uma afetar a outra, com a gestão simplificada? seria interessante, não? E se tudo isso for automatizável, tudo via código e facilmente replicável? pense que coisa interessante ser facil de replicar todo um ambiente copiando apenas algumas linhas de código? É disso que estamos falando...

# Quando não ajuda?
Existem uma série de requisitos que precisam ser atendidos para que a abordagem com container faça sentido, se sua aplicação possuir uma arquitetura de micro serviços a vida ficará mais fácil do que se for um grande monolito

Um dos primeiros pontos a se pensar é: O que seu sistema precisa para funcionar?
- Qual sistema operacional?
- Quais dependências?
- Quantidade de recursos computacionais?

Se sua aplicação roda em um sistema windows, você já pode sentir um certo desânimo, pois apenas para o SO existir, já será necessário uma quantidade de recursos consideraveis e a lista de dependências é grande. Quando falamos em containers a ideia é ter instâncias de aplicações cada vez menores e nesse ponto o linux se comporta muito melhor.

Se a sua aplicação é um gigantesco monolito, talvez usar containers te traria mais complexidade do que soluções

# Como isso funcionar por baixo do capô?
## Kernel namespace
## CGroups
## Docker
## Kubernetes (K8s)

# Como começar?
## Criando a sua imagem (Dockerfile)
## Executando sua imagem
## Dockerhub

# Monitoria e operação