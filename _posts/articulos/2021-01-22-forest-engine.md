---
layout: single
title: Forest Engine liberado
header:
  teaser: /assets/images/thumbnails/engine-public.jpg
categories:
  - Artículos
tags:
  - Autodidacta
  - Transpiladores
  - Compiladores
  - C++
  - Game Engine
  - OpenGL
  - GitHub
published: true
---

Forest Engine ha sido la última iteración de mi Game Engine (previamente [DruidEngine](https://github.com/adrianensis/DruidEngine){:target="_blank"} y antes de eso fue [ThiefEngine](https://github.com/adrianensis/ThiefEngine){:target="_blank"}).

Después de unos 10 años de aprendizaje<!--more--> he decidido dejar de trabajar en ello y liberar el código en GitHub por si fuera de ayuda o de interés para otras personas.

El estado en el que dejo el engine es estable pero no usable, aún hay bugs conocidos y tareas pendientes, por tanto no tomen este código como una referencia fiable.

## Repositorio

Aquí el repositorio en GitHub: [ForestEngine](https://github.com/adrianensis/ForestEngine){:target="_blank"}

## Devlogs

Aquí en mi blog podéis encontrar todos los devlogs de mi Game Engine, desde que era 2D hasta la última versión 3D: [Devlogs]({{ '/' | absolute_url }}categories/#devlogs){:target="_blank"}

## Características

- OpenGL 4.x
- Batching
- Shaders
- Soporte para Texture Atlases
- Animación mediante Spritesheet
- Chunks
- UI simple
- Gestión de escenas
- Cámara perspectiva / ortográfica
- Stencil
- Módulo de matemátias
- Scripting simple
- Carga de modelos 3D GLTF

## Bugs y TODOs

- El sistema de chunks sigue siendo 2D mientras el espacio es 3D.
  - Programé un módulo de Spatial Partition (octree) que venía a sustituir el sistema lineal de chunks.
- Stencil fue mi última feature, aún puede ser algo inconsistente.