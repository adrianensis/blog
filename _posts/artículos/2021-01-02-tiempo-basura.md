---
layout: single
title: 10 años programando un Game Engine, ¿he tirado mi tiempo a la basura?
header:
  teaser: /assets/images/thumbnails/tiempo-basura.jpg
categories:
  - Artículos
  - Experiencias
tags:
  - Autodidacta
  - Game Engine
  - Estudios
  - Trabajo
published: true
---

## 🎓 Etapa universitaria

Nos ubicamos en 2013-2014, facultad de Informática, un jovencito <!--more--> y confuso Adrianensis descubre a través de un compañero que puede pintar triángulos en la pantalla con OpenGL, queda fascinado, pero la complejidad del asunto es demasiado alta para su limitado cerebro de universitario 🧠🔥

Más tarde, mi profesor de estadística me descubre [SDL](https://www.libsdl.org/){:target="_blank"}, librería de gráficos 2D para C, la cual simplificaba bastante (no tanto 😂) el tedioso proceso de renderizado. *"Me sirve"*, pensé.

![meme messirve](https://media.tenor.com/Hofn6Gv01poAAAAd/messirve-cool.gif){: .align-center}


Ahí empezaron mis experimentos/proyectos personales, ese mismo verano lo veo claro, *"mamá quiero programar videojuegos"*, aunque en aquel entonces (para que apreciemos cómo ha evolucionado la oferta académica en videojuegos), para un muchachito de Murcia, aquello era pura fantasía. Obviamente me puse a revisar todo google en busca de información.

¿Cómo podía llegar a tener ese trabajo? Había estudios sobre eso? ¿Qué precios tenían? ¿Me lo podía permitir? ¿Era posible en España? ¿Existían siquiera grados de videojuegos aquí? Preguntas que serían eventualmente respondidas y las cuales requieren su propio post, así que haremos un pequeño time skip un poco hacia el futuro 😀

## 👶 Primeros pasos

Después de mi primer proyecto con SDL, un game loop muy simple en el que renderizaba y movía unos sprites, llega a mí el concepto de Game Engine. Pensad que hasta el momento yo había tenido 0 información acerca del desarrollo de videojuegos, no es fácil orientarte cuando nadie sabe orientarte. Ahí se me abre todo un mundo de posibilidades y empiezo a ver engines por todos lados. También empiezo a transformar mi pequeño proyecto de SDL en un no-tan-pequeño proyecto de SDL, más parecido a un Game Engine, con módulos bien definidos y muy inspirado en lo que veía en Unity.

Los profes me decían "por qué has hecho este mini Unity y encima de eso el trabajo?", porque copiaba la estructura de la API y las nomenclaturas de Unity, el único engine comercial con el que había tratado en un cursillo de 2 semanas ese mismo verano.

Cualquier trabajo de la universidad que requiriese dibujar algo en panatlla, primero hacía un pequeño engine a modo de framework base, y sobre eso, el trabajo 🥴 Obviamente no podía acceder al código de Unity ni tampoco tenía nociones sobre los cientos de Game Engine open source que había en GitHub, así que tiraba de imaginación y trataba de emular el comportamiento de la API de Unity (a un nivel muy simple, claro).

Después de esos inicios, descubro que los AAA están hechos en C++ y que SDL no es la API que se usa para renderizar juegos AAA, sino que se accede a más bajo nivel, DirectX, OpenGL o la API de la consola en cuestión. Pues allá que voy yo, empiezo mi primer engine en C++ y OpenGL.

Y aquí es donde empiezo a machacar una de las skills que más valoro al día de hoy y gracias a la cual, en un % muy grande, he llegado a dedicarme a esto:

**🔎 APRENDER A BUSCAR EN INTERNET: INFORMACIÓN, PAPERS, TUTORIALES, APUNTES DE UNIVERSIDAD, CURSOS, VÍDEOS Y LIBROS.**
{: .notice--info}

No me quiero elaborar más en esto porque me da para otro post muy guay. Sigamos.

## ⚠️ Primeros errores

En esta primera versión del engine, descubro cosas como que de nada sirve pintar un sprite en pantalla aunque te haya costado 1 año de estudio, si no se hace de forma eficiente (y escalable) 🥲 Que no mola tener un render engine solo, sino Render + Input, Colisiones, Scripting, Gestión de Escenas, Entidades, Componentes, etc. Y que si te montas un proyecto muy complejo y quieres presentarlo como TFG ningún profe te va a coger el proyecto, haber hecho un TFG clónico y haber ido a por el 5.0, tarado :'D

Mi engine no hacía gran cosa, lo comentado anteriormente. Yo aún no sabía la cantidad de refactors que necesitaba eso y la cantidad de bugs latentes que había ahí esperando, como entrenadores pokemon esperando que pases por delante. Pero eso era problema del Adrianensis del futuro.

## 📃 Trabajo de Fin de Grado

Al final tuve una suerte galáctica y el profe encargado de gestionar el grado (y al que curiosamente también le molaban los engines y que además unos años después dió una serie de charlas conmigo sobre gráficos y OpenGL en un eventito) me preguntó que cual era mi TFG y que por qué no me lo aceptaba nadie, le comenté sobre el engine, a lo que dijo: *"Ah, ¿solo eso? Yo te tutorizo"*.

**ÉXITO**.
{: .notice--success}

Pero había un *plot twist*. En C++ no se podía entregar el TFG, había que portarlo a JavaScript porque era un lenguage más guay y moderno, y total como en ese entonces ya existía WebGL pues portarlo era "casi directo" no? NO. Tras el port + 1 año de refactors/bug fixing, lo que obtengo es:

## 💻 Primer(os) engine(s)

Thief Engine (JS / WebGL) mi primerito engine: [<i class="fab fa-fw fa-github-square" aria-hidden="true"></i><span class="label">Thief Engine</span>](https://github.com/adrianensis/ThiefEngine){:target="_blank"}

Aún con algún bug en la matemática interna, me dan el visto bueno, 9.8 y para casa. Jamás he regateado una nota y esta no iba a ser una excepción XD Venía de suspender matemáticas en el instituto, cualquier cosa que superara el 5.0 era digno para mí.

De modo que ya era libre para decidir cómo podía ser la implementación de mi engine:

**🔥 HABÍA QUE PORTARLO DE VUELTA A C++ PORQUE ES EL LENGUAJE DE LOS AAA.**
{: .notice--danger}

Así que eso hice, aquí ya nace Druid Engine si no recuerdo mal (me gusta nombrar mis engines como arquetipos de los RPG si), empiezo a portar en mi ratos libres + nuevas features: [<i class="fab fa-fw fa-github-square" aria-hidden="true"></i><span class="label">DruidEngine</span>](https://github.com/adrianensis/DruidEngine){:target="_blank"}

:-------------------------:|:-------------------------:
![Thief Engine]({{ '/' | absolute_url }}/assets/images/thief-logo.png){: .align-center} | ![Druid Engine]({{ '/' | absolute_url }}/assets/images/druid.png){: .align-center}

## 💼 Primer trabajo

Por este entonces (2017) yo estoy ya acabando la carrera, Druid está a medias aquí ojo, es solo un programa de terminal que lanza una suite de pruebas para testear la librería de matemáticas y memoria, ni render ni nada.

Esto fueron aprox. 4 años programando el peor engine de la historia, pero oye, me sirvió para engordar mi CV y me salió un trabajo super guay en Barcelona, además justo de lo que quería. VR Occulus Rift, C++ y OpenGL. No era gamedev, **pero estaba cerca!** Además para quien nos gusta el bajo nivel y crear nuestra propia arquitectura, sabéis que eso de no usar frameworks (o usar pocos) se disfruta bastante 🤖

## 📚 Mejora continua

El problema era que no me conformaba con saber lo que había aprendido, miraba mi engine y miraba algún otro engine, ni siquiera tenía que ser Unreal, sino librerías como LibGDX o SDL, y notaba que me faltaba mucho por saber, un hueco enorme entre mi engine y lo que necesitaba para dedicarme a esto.

Además, aparte de aprender más, pensé con mi cerebro cósmico, si un engine regulero, me ha servido para encontrar trabajo, un engine mejor me servirá para encontrar mejores trabajos, ¿no? Incluso tal vez trabajos dentro de la industria gamedev, ¿no? (Spoiler: si)


Así que hasta el día de hoy he estado leyendo, aprendiendo, implementando y optimizando Druid Engine (de hecho Druid quedo deprecated y ahora trabajo en Forest Engine).

Obviamente una vez que tienes experiencia laboral, tus proyectos personales pasan a segundo plano para la persona entrevistadora, no va a ser lo más relevante de tu CV, pero siguen importando, o aportando mejor dicho.

De modo que durante varios años, Druid Engine fue la estrella de mi CV (y lo sigue siendo en cuanto a proyectos personales ojo)

## Conclusión

Hacer un engine me sirvió para comprender toda la teoría básica sobre la que se sustentan engines comerciales como Unity, Unreal, Godot, etc, de tal forma, que para mi sorpresa, en mi primer trabajo con Unreal Engine 4 (2018), me tomó tan solo 1 mes en adaptarme y empezar a rendir, sin experiencia profesional previa en ningún engine. Reitero lo de que fue tremenda sorpresa para mi. Porque no sabía ni dónde me metía. Normalmente suelo ser muy cauteloso con los trabajos que acepto por si me quedan grandes, pero aquí me pudo la ilusión y me lancé (me arrepentiría más adelante).

Como resulta que ahora hay cientos de empresas que usan UE4 y buscan gente que sepa C++ (inclso a veces ni piden que sepan UE4, solo C++, pero de trabajo hablaremos en otro post, se me acumulan los posts), pues a partir de ahí el camino estaba claro. Saber UE4 cuando aún toda la industria española estaba migrando de Unity a UE4 abrió bastantes puertas 👀🚪

¿Podría haber aprendido UE4 diréctamente sin pasar por C, SDL, LibGDX, OpenGL, Ogre3D, etc? Probablemente, pero no cambiaría mi recorrido por nada. Creo que me hubiera costado horrores aprender UE4 sin esa base y considero que empezar desde muy abajo me ha aportado una base bastante sólida que me permite migrar entre tecnologías en caso de necesidad. No hace falta decir que me queda MUCHÍSIMO por aprender y la verdad es que eso me motiva bastante a seguir (uy de aquí me puede salir otro post sobre la motivación y como mantener la constancia durante años).

En cualquer caso considero este tipo de posts algo bastante importante, porque yo en su momento buscaba muchísimo los típicos relatos de "cómo entraste a la industria gamedev" para saber si mi camino era bueno, si me estaba equivocando, si me podía insipirar en otras personas. Creo que aportan una experiencia transversal que puede ayudar mucho a otras personas en la misma situación en la que todo el mundo hemos estado.

El post se me ha ido totalmente de las manos 📜 perdón y gracias por leer si has llegado hasta aquí 🙂👋💚
