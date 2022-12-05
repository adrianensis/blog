---
layout: single
title: Transpilador C++ liberado
header:
  teaser: /assets/images/thumbnails/transpilador-public.jpg
categories:
  - Artículos
tags:
  - Autodidacta
  - Transpiladores
  - Compiladores
  - C++
published: true
---

Este proyecto es un **transpilador**, solo que lo comencé como un estudio/práctica de compiladores. Aquí intento traducir de una **forma simplificada de C++** a C++ moderno.

> (Debería pensar en un nombre para mi versión simplificada de C++)

Este fue un side project de un par de meses, no dudes en aprender de él, pero no espere una herramienta estable. Hay cosas a medio hacer y características con errores aquí y allá.

Aun así, logré transferir algunas clases del módulo de matemáticas de mi motor de juego a **C++ simplificado**, lo cual fue mucho más de lo que esperaba cuando comencé esto. Los compiladores son intimidantes, pero una vez que tienes uno básico funcionando, se siente muy poderoso.

## Características

- Sin punteros ni referencias
- Tienes que decidir el espacio de memoria para cada clase (stack o heap) usando la palabra clave **stack** antes de la definición de clase: `stack class Line: public Shape`
- Ficheros únicos (sin separación de declaración/aplicación)
- ¡Módulos!
- Includes y dependencias circulares automáticos
- Se basa en linters de C++ y Language Servers para coloreado/autocompletado de código
  - Es posible que se detecten algunos errores (relacionados con las inclusiones, etc.)
- Uso algunas macros tontas (ver `code/core/FakeMacros.hpp`) para falsificar algunas palabras clave

## Repositorio

Aquí el repositorio en GitHub: [https://github.com/adrianensis/Compiler](https://github.com/adrianensis/Compiler){:target="_blank"}