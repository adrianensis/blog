---
layout: single
title: Transpilador C++
header:
  teaser: /assets/images/thumbnails/transpilador.jpg
categories:
  - Artículos
tags:
  - Autodidacta
  - Transpiladores
  - Compiladores
  - C++
published: true
---

Parece C++ pero es mi propio lenguage (no tiene nombre aún) que transpila a C++, os cuento.<!--more-->

![]({{ '/' | absolute_url }}/assets/images/transpiler.png){: .align-center}

## ¿Por qué?

Este proyecto nació por la necesidad de escribir código C++, pero más rápido y limpio, llevo 10 años escribiendo C++ y cada vez hay más cosas que me chirrían del lenguaje, la sintaxis creciendo en varios frentes, volviéndose más enrevesada, como varios lenguajes en uno, la verbosidad cada vez mayor...

No quiero dejar de escribir C++, pero necesito una capa de abstracción sobre el lenguaje si quiero continuar mis otros proyectos de C++ a un ritmo aceptable. C++ es un lenguaje muy lento de escribir y últimamente me lastra bastante. Tanto es así que un transpilador se ha convertido hasta en una opción bastante interesante. También es un tema que lleva años interesándome pero nunca tuve tiempo para ponerme en serio con los compiladores desde la universidad.

Estoy aprendiendo mucho y siento que este proyecto me ayudará a ser mejor gamedev en el futuro.

## Features

- imita la sintaxis básica de C++
- tiene módulos
- tiene clases
- es single file (no hay separación entre header/source)
- no tiene punteros ni referencias
- soporta operator/func overloading
- aprovecha LSP de C++ para el coloreado/autocompletado

## TODO

- Sintaxis para strings
- Sintaxis para arrays, vectors, lists, map...
- Sintaxis para templates/generics
- Usar librerías de C/C++ desde mi lenguage
- Permitir bloques de C++ nativo (como los bloques ASM)
- Facilitar el uso de la librería STL

De momento estoy usando la extensión .cxx para diferenciar de C++ puro, el transpilador genera los .cpp y .hpp

![]({{ '/' | absolute_url }}/assets/images/transpiler-result.png){: .align-center}

## Siguientes pasos

Mi objetivo a corto plazo es portar toda la librería de matemáticas de mi engine a mi transpilador, eso debería darme un coverage de casos bastante alto. De vez en cuando me atasco y tengo que dejarlo respirar un tiempo, pero iré posteando updates!