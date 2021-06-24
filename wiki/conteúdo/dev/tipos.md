---
title: 3. Tipos de linguagens
description: Nem todas são iguais, mas conceitos sempre se aplicam
published: true
date: 2020-07-13T21:07:40.674Z
tags: 
editor: markdown
dateCreated: 2020-07-13T21:03:24.641Z
---

# Tipos de linguagens

Existem basicamente dois tipos de linguagens:
- Compiladas
- Intepretadas

## Linguagens compiladas
Nesse caso, um programa chamado compilador é capaz de entender uma determinada linguagem e converter isso em linguagem de máquina, gerando o que chamamos de arquivo binário a partir de um determinado código em uma linguagem específica.

**Exemplo de código:**
``` go
package main

import (
	"fmt"
)

func main() {
	fmt.Println("Olá! sou seu primeiro programa")
}

```

**Binário gerado:**
![hex.png](/hex.png)

### Exemplos de linguagens compiladas
- C/C++
- Go
- Delphi
- Rust

## Linguagens intepretadas
Nesse caso, o código que o programador (o cara que escreve o código) faz, não será tranformado em uma série de instruções binárias diretamente, ele será convertido em algo intermediário que um interpretador fará o papel de falar diretamente na linguagem da máquina

**Exemplo de código:**
``` java
public class MinhaPrimeiraClasse {
    public static void main(String[] args) {
        System.out.println("Olha, tbm sei fazer oi em Java");
    }
}
```

### Exemplos de linguagens interpretadas
- Java
- C#
- Python
- Kotlin
- Visual Basic
- Shell
