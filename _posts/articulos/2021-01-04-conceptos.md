---
layout: single
title: Conceptos básicos para aprender Programación de Videojuegos
header:
  teaser: /assets/images/thumbnails/conceptos.jpg
categories:
  - Artículos
  - Aprendizaje
tags:
  - Autodidacta
  - Game Engine
  - Estudios
  - Matemáticas
published: true
---

Este post va destinado a personas que quieren introducirse de forma autodidacta <!--more--> a la programación de videojuegos desde una base de programación ya aprendida 🐸🤙
Para las personas que ya cursen una formación reglada, todo esto ya lo sabrán (asumo), puede ser una lectura interesante anyways 📖✌️

Este post no pretende ser muy denso, sino presentar unas bases que se extenderán más tarde en sucesivos artículos.
{: .notice--info}

## 🔢 Matemáticas

En principio para el puesto estándar, Gameplay Programmer, con la Trigonometría y el Álgebra Lineal de instituto vamos bien para empezar. El 90% del tiempo trabajaremos con ángulos, vectores y matrices.

Además hay libros especializados como [***3D Math primer for Graphics and Game development***](https://gamemath.com/book/intro.html){:target="_blank"} (o de título similar, hay 2-3 que se llaman casi igual y nos sirven casi para lo mismo, ya hablaremos de libros en otro post)

Y también obviamente en YT tenéis cursos de sobra, como este [Álgebra Lineal del MIT 🎓](https://youtube.com/watch?v=ZK3O402wf1c){:target="_blank"}

{% include video id="ZK3O402wf1c" provider="youtube" %}

## 🧮 Estructuras de datos

Es importante decidir en qué estructura almacenamos nuestros datos. Ya es importante para aplicaciones normales, mucho más para apps en tiempo real como los videojuegos, donde la carga de trabajo en cada frame define a cuántos FPS va a poder funcionar tu juego 🔥

No es lo mismo acceder al elemento de una lista, array dinámico, array de tamaño fijo, map, hash map, etc. Lo mismo para las iteraciones, operaciones de búsqueda, borrado, inserción, ordenación, etc. Cada una escala diferente, por eso es importante entender los **Órdenes de magnitud**.

Una mal elegida estructura en un punto crítico de tu juego, puede llevarte a una caída drástica de FPS. Esta elección puede ser uno de los factores que te limite de tener 1000 entidades a solo 50 🙆, por ejemplo.

Aqui entra en juego la localidad espacial/temporal y cache friendlyness.

## 🌳 Composición vs Herencia

Probablemente en un videojuego es un tipo de aplicación donde esto se ve más claro. La herencia es una herramienta, no una solución absoluta. Tiene algunos puntos débiles, entre ellos, que no escala bien.

Cuando tienes múltiples niveles de herencia y las clases de cada subnivel van requiriendo cada vez más propiedades de las clases (primas y hermanas) de otras ramas de la jerarquía. Cuanto más profundo se hace el árbol de jerarquía más enrevesado se vuelve, es un problema clásico.

Pero se puede solucionar con composición, los Componentes son clases que nos ayudan a construir objetos más complejos como si fueran piezas. Un componente puede aportar datos o funcionalidades o ambas, a un objeto.

Por ejemplo la clase CharacterNPC podría tener los siguientes componentes:

- Movimiento
- AI
- Diálogo
- Stats (vida, energía)
- Inventario

## 📞 Callbacks y Lambdas

Estos son conceptos que tienen MUCHOS años, pero ahora están mucho más refinados y merece la pena entender en qué nos pueden servir. Mi consejo es que hagáis un mini cursillo de JavaScript, el más básico, ahí se aprenden muy bien estos conceptos ✌️

## 👩‍💻 Lenguajes bajo nivel vs Scripting

No todos los lenguaje funcionan igual ni sirven para lo mismo. Por ejemplo en el desarrollo de un videojuego podemos encontrarnos con C++ (lenguaje a bajo nivel, tipado débil, compilado y sin gestión de memoria) para el engine y core del juego. Y algún lenguaje de Scripting para la configuración de la AI, mapas, stats y otras cosas del nivel de Gameplay. Un ejemplo podría ser Python, Unreal te permite usar Python para Scripting. Unity trae C# (e internamente está programado en C++). Una alternatival Scripting clásico es el Scripting visual, por ejemplo Blueprints en Unreal.

## 🧠 Gestión de Memoria

Desde lenguajes con gestión automática de memoria se pueden aprender estos conceptos, pero desde donde mejor se ve es en un lenguaje donde el usuario tiene que gestionar la memoria como C o C++. Al igual que el tiempo (FPS) la memoria es otro recurso importante a optimizar en nuestro juego. Entender cómo se relacionan nuestros datos con la arquitectura física de la memoria de nuestra máquina/consola (hardware) también puede supones un boost en la performance. (Lo que mencionaba de la localidad espacial/temporal y cache friendlyness).

## 🐞 Debug

Aunque el debugging es algo propio de la programación en general, en videojuegos se añaden matices como debugging visual, detener el proceso con timers o eventos asíncronos de por medio. Es muy tentador en videojuegos tratar de analizar un bug solo de forma visual o con logs en pantalla, en videojuegos hay muchos tipos de bugs de diferente naturaleza pero en la mayoría de los casos usar un debugger para analizar el estado interno del juego es la forma que más rápido nos llevará a resolver el bug.

## 🇬🇧 Inglés

Creo que podría añadir esto a todos mis hilos o hacer un hilo solo para esto. De momento solo diré: El inglés ya no es un plus, es un must.

Toda la documentación/tutoriales/cursos importantes están en inglés, todas las empresas de videojuegos medianas-grandes son equipos mixtos.

## 📨 Compunicación CPU-GPU

Es SUPER importante conocer aunque sea un poco, cómo es la comunicación CPU-GPU, ya que es el principal cuello de botella de un juego. Me vais a permitir reservarme este jugoso tema, porque ya tengo posts preparados para ello 🐰✌️