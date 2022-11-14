---
layout: single
title: Optimizaciones para mejorar el performance de un Render Engine
header:
  teaser: /assets/images/thumbnails/optimizaciones.jpg
categories:
  - Artículos
tags:
  - OpenLG
  - Render
  - Optimizaciones
  - Game Engine
published: true
---

Estos conceptos los he aprendido con OpenGL, pero son totalmente extrapolables <!--more--> a otras APIs, es posible que cambie algún nombre, pero la teoría es la misma.
{: .notice--info}

En mi vídeo introductorio de OpenGL hablo sobre todas estas optimizaciones!

{% include video id="wHNpT0ash3M" provider="youtube" %}

## 📦 Vertex Buffer Object

Esto no es exactamente una optimización, pero es la "*nueva*" forma de enviar datos de vértices a la GPU. Antes (fixed pipeline) había que invocar una función de OpenGL para cada dato de cada vértice (glVertex, glColor...). Ahora todos esos datos se combinan en un solo buffer (array) y se envía a la GPU de una sola vez. La mejora reside en que esto almacena los datos en la memoria de la GPU en lugar de la memoria del sistema. Podemos tener múltiples VBOs, para las posiciones de los vértices, normales, colores, coordenadas de texturas, etc. De modo que cada modelo de nuestro juego tendrá asociado una serie de VBOs. Cuando queremos dibujar ese modelo, tenemos que activar y configurar sus VBOs.

## 🗄️ Vertex Array Object

Un VAO es un contenedor de VBOs, también almacena información sobre el formato de los VBOs, el tamaño de sus elementos, offsets, etc. Ahora ya podemos asociar un VAO a un modelos, y ese VAO contiene toda la información necesaria. Así que ya no necesitamos activar y configurar los VBOs cada vez que queramos dibujar un modelo, solo activar su VAO. Esto también reduce la comunicación con el Driver de la gráfica.

## 🗂️ Vertex indexing

Cuando dibujamos un cuadrado, realmente estamos dibujando 2 triángulos. Pero si dibujamos 2 triángulos, hay 2 vértices que estamos dibujando doble, ¿no? Esto se arregla indexando los vértices.

![](http://www.opengl-tutorial.org/assets/images/tuto-9-vbo-indexing/indexing1.png)

(Imagen: [http://www.opengl-tutorial.org/intermediate-tutorials/tutorial-9-vbo-indexing/](http://www.opengl-tutorial.org/intermediate-tutorials/tutorial-9-vbo-indexing/))

Se dibuja el cuadrado siguiendo el orden de los índices, en lugar de  leer el buffer de vértices directamente. Esta optimización se nota más en modelos con muchos vértices, ya que en memoria, un índice (int o short) ocupa mucho menos que un vértice (3 floats).

## 🖼️ Texture Batching

Cuando dibujamos muchos sprites en pantalla, el engine tiene que activar una textura diferente para cada nuevo sprite. El problema es que activar una textura por cada nuevo draw call es demasiada comunicación con la GPU. Esta optimización consiste en renderizar juntos todos los sprites que tengan la misma textura, para solo activar 1 vez cada textura. Lo mínimo indispensable.

## 🗺️ Texture Atlas

Esta optimización consiste en agrupar muchas texturas en una sola gran textura (el texture atlas), esto nos ayuda a reducir el número de texturas que tenemos que activar ya que en el caso ideal, solo tendremos que activar 1 sola textura.

![](https://i.stack.imgur.com/S9OtX.png)

## 🔺 Geometry Batching

En esta optimización, se acumulan todos los datos de los diferentes VBOs de cada sprite, en un solo VBO y se manda todo de golpe a la GPU, esto reduce drásticamente la comunicación y envio de datos a la GPU.

## 🐀🐀 Instancing

Cuando tenemos el mismo modelo, con misma textura y shader, podemos pedirle a la GPU que replique el modelo N veces sin necesidad de enviar los mismos datos N veces a la GPU.

## 🌳 Space Partitioning

Una forma muy común de optimizar el rendering es partir el espacio en trocitos, de tal forma que nos sea más sencillo decidir que zonas de la escena dibujar y cuales descartar.

Técnicas conocidas: Quadtrees, Octrees, BSP trees, Chunks...

## 🎥 Frustum culling

Las cámaras generan un volumen de visualización, este volumen se puede usar para chekear si un objeto está dentro del campo de visión o no, y si no está, se puede descartar para no enviar sus datos a la GPU.

![](https://learnopengl.com/img/guest/2021/Frustum_culling/VisualCameraFrustum.png)

## 📏 Distance culling

Este es muy sencillito, simplemente si un objeto está muy lejos, no se dibuja o se reemplaza por un "impostor" más sencillo de dibujar.

## 🚽 Objetos estáticos

Es muy importante saber qué objetos van a ser estáticos en nuestro juego. Ya que toda la información estática se puede batchear y enviar a la GPU una sola vez. Si todo fuese dinámico, tendríamos que regenerar sus datos constantemente, inviable.

📗 Como conclusión, podemos notar que la mayoría de optimizaciones se basan en descartar cosas que no queremos dibujar, dividir problemas grandes en problemas chiquitos y reducir la comunicación con la GPU todo lo posible.

💬 Aún hay más optimizaciones (de alto y bajo nivel), pero creo que está así bien por hoy 😵‍💫

Comenten o pregunten lo que quieran 🐸💚