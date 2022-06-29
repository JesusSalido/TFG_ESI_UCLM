# FAQ (LaTeX4TFG)

Recuerda consultar el contenido de este documento antes de plantear tus preguntas sobre LaTex4TFG, ya que quizás aquí está publicada la solución que andas buscando.

- [¿Porqué algunas secciones de la memoria no aparecen numeradas?](#secnumdepth)
- [¿Porqué algunas secciones de la memoria no aparecen en el índice de contenidos (TOC)?](#tocdepth)
- [¿Puedo usar el interlineado por defecto de LaTeX en mi memoria o debo ajustarlo a 1,5 líneas?](#setspace)
- [¿Cómo ajustar a inglés el idioma principal del documento?](#spanishfalse)
- [¿Cómo evitar títulos muy largos en los índices de secciones, figuras y tablas mediante títulos cortos alternativos?](#shortcaptions)
- [¿Cómo suprimir el color de los hiperenlaces en el documento PDF final generado?](#hidelinks)
- [¿Cómo anclar la ubicación de las figuras y tablas en el texto?](#float)
- [¿Cómo rotar una página para que una imagen o tabla aparezca con orientación apaisada?](#sidewaysfigure)
- [¿Cómo utilizar correctamente figuras e imágenes de terceros sin violar sus derechos de uso?](#fuentefiguras)
- [¿Cómo conseguir que las referencias bibliográficas aparezcan en el idioma correcto?](#includebbl)
- [¿Cómo conseguir una lista de referencias bibliográficas ordenadas por orden de citación en el texto?](#unsorted)

---





### <a name="secnumdepth"></a>¿Porqué algunas secciones de la memoria no aparecen numeradas?
Recuerda que si empleas la versión con estrella (``*``) de los comandos de sección, estás no aparecen ni numeradas. Asumimos que este no es el caso. El control de la numeración de secciones en LaTeX se controla mediante variables internas de tipo contador. En concreto el contador **`secnumdepth`** controla el nivel a partir del cual no se numeran las secciones. Recuerda que nos niveles más empleados son: `-1` (part), `0` (chapter), `1` (section), `2` (subsection) y `3` (subsubsection). Por tanto, para modificar el contador es preciso incluir en el preámbulo del documento (antes de `\begin{document}`), el comando:
> ``\setcounter{secnumdepth}{n}`` con ``n`` el valor del último nivel numerado.














### <a name="tocdepth"></a>¿Porqué algunas secciones de la memoria no aparecen en el índice de contenidos (TOC)?
Si para las secciones afectadas no se emplea la versión con estrella del comando de sección (p.ej., ``\section*{Título}``), el control de la aparición de secciones en el TOC se lleva a cabo con el contador **``tocdepth``**. El valor de dicho contador indica el último nivel mostrado en el TOC. En la respuesta a la pregunta sobre [numeración de secciones](#secnumdepth) encontrarás los niveles que identifican cada sección. Por tanto, para modificar el contador es preciso incluir en el preámbulo del documento (antes de ``\begin{document}``), el comando:
> ``\setcounter{tocdepth}{n}`` con ``n`` el valor del último nivel que aparece en el TOC. 

*NOTA: En la plantilla este valor se ha ajustado al valor ``1`` porque entiendo que es suficiente con que el índice incluya los capítulos (``0``) y las secciones (``1``).*













### <a name="setspace"></a>¿Puedo usar el interlineado por defecto de LaTeX en mi memoria o debo ajustarlo a 1,5 líneas?
Si mantienes en tu memoria el interlineado por defecto que ofrece LaTeX (1 línea) estarás respetando la reglamentación de la ESI-UCLM para el TFG. Este es el interlineado ajustado en la plantilla de TFG suministrada y el que te recomiendo usar para la versión definitiva. Si deseas modificar dicho interlineado te aconsejo el uso del paquete ``setspace``. Dicho paquete proporciona tres comandos para ajustar en tu documento el interlineado a partir del punto en que se incluya el comando:
>``\singlespacing`` (simple) 

>``\onehalfspacing`` (mediano) 

>``\doublespacing`` (doble)











### <a name="spanishfalse"></a>¿Cómo ajustar a inglés el idioma principal del documento?
La plantilla proporcionada para elaboración de TFG, tesis y otros documentos académicos en la UCLM, tiene en cuenta que el idioma principal del texto es español, mientras que alguna parte como el *Resumen* pueden aparecer también en inglés. Sin embargo, en algunas titulaciones (p.ej., ESI-UCLM) dichos documentos se pueden presentar en inglés como idioma principal. En este caso la plantilla es igualmente válida pero para su correcto uso de sebe activar o incluir al principio del documento maestro el comando: ``\spanishfalse``. De este modo se activarán cambios en la plantilla para la producción del documento en inglés. 

*NOTA: Aunque no es preciso, se recomienda la reordenación manual de los resúmenes para que aparezca primero la versión en inglés y después en español.*  










### <a name="shortcaptions"></a>¿Cómo evitar títulos muy largos en los índices de secciones, figuras y tablas mediante títulos cortos alternativos?
Si en el documento algún elemento como capítulo, sección, figura, tabla, etc. presenta un título muy largo, su inclusión en el índice correspondiente puede producir resultados poco estéticos. Para evitarlo LaTeX proporciona la posibilidad de incluir entre corchetes un título corto alternativo que se empleará solo en los índices. Por tanto, para usar dicha característica se recomienda usar:
> ``\chapter[Título corto]{El título largo que aparece impreso en el documento en el punto en que se incluye este comando}``

> ``\caption[Titulo corto]{Título largo ...}``













### <a name="hidelinks"></a>¿Cómo suprimir el color de los hiperenlaces en el documento PDF final generado?
Las características de los hiperenlaces del documento resultante (PDF) se controlan mediante ajustes del paquete ``hyperref``. Para ocultar el color de los hiperenlaces se debe activar la opción ``hidelinks``. Todas las opciones relacionadas con los hiperenlaces se ajustan con los argumentos del comando ``\hypersetup``.

*NOTA: En la plantilla busca el comando ``\hypersetup`` y en el puedes descomentar la opción ``hidelinks``.*












### <a name="float"></a>¿Cómo anclar la ubicación de las figuras y tablas en el texto?
Al principio la colocación de figuras en un documento con LaTeX se puede convertir en un dolor de cabeza. Dicha ubicación se controla automáticamente mediante un algoritmo interno en el que habitualmente se intenta preservar la preferencia del usuario ajustada mediante los parámetros opcionales para localización de los objetos flotantes (como ``figure`` y ``table``). Las preferencias de usuario para ubicación de objetos flotantes son:
  
 |Opción| Descripción|
  ------|------------|
 |``h`` | (*here*, en el punto de inserción del objeto en el documento)|
 |``t`` | (*top*, parte superior de la página de inserción del objeto en el documento)|
 |``b`` | (*bottom*, parte inferior de la página de inserción del objeto en el documento)|
 
 Con estas preferencias ajustadas habitualmente en el orden ``hbt``, el algoritmo de LaTeX intenta componer la página de modo armonioso basado en estándares de composición tipográfica. Sin embargo, cuando el número de elementos flotantes es considerable, el algoritmo de LaTeX suele producir resultados que no consideramos satisfactorios. En estos casos se recomienda recurrir a un anclaje determinista de los elementos flotantes al texto. Dicho anclaje se consigue con la opción de ubicación ``H`` proporcionada por el paquete ``float``.  Con esta opción es muy posible que se produzcan páginas con texto demasiado espaciado entre dos elementos flotantes consecutivos. Para corregir dicho efecto, se debe ir comprobando el resultado final desde el inicio del documento hacia el final del mismos, cambiando ligeramente la ubitación y/o tamaño del elemento y recurriendo al comando ``\newpage``  cuando se desee reiniciar la maquetación de nuevas páginas.
















### <a name="sidewaysfigure"></a>¿Cómo rotar una página para que una imagen o tabla aparezca con orientación apaisada?
Cuando una imagen o tabla es demasiado grande para su inclusión en la orientación vertical convencional de una página, surge la duda de la conveniencia de rotar la página (formato apaisado o *landscape*) para conseguir introducir en la página el elemento deseado. Efectivamente, la solución para por modificar la orientación del elemento a mostrar (figura o tabla), pero en lugar de alterar la orientación de la página particular se aconseja recurrir a la rotación el elemento mediante los nuevos entornos proporcionados por el paquete ``rotating`` semejantes a ``figure`` y ``table``:
> ``sidewaysfigure``: Rota la imagen junto con su título, para mostrarla en orientación apaisada.

> ``sidewaystable``: Ídem para tablas.















### <a name="fuentefiguras"></a>¿Cómo utilizar correctamente figuras e imágenes de terceros sin violar sus derechos de uso?
La inclusión de tablas e imágenes, sobre todo, de fuentes externas en los trabajos académicos es motivo de controversia porque es demasiado habitual pensar que todo aquello que se encuentra accesible en Internet se puede emplear sin limitaciones. Por desgracia, esta creencia errónea puede ser fuente de violaciones leales de derechos de autor y constituir un delito. Recuerda que es tu obligación recabar la información sobre las licencias de uso de material ajeno y el modo en que se evita el plagio al citar una obra ajena en nuestro trabajo. Te aconsejo que consultes la página sobre [propiedad intelectual en la UCLM](https://publicaciones.uclm.es/propiedad-intelectual/).

Algunos consejos:

- Busca que el material ajeno esté protegido mediante licencias de tipo copyleft (p.ej.; *Creative Commons*) que son las más permisivas y comparte del mismo modo tu trabajo.
- Acostumbra a proporcionar atribución a los autores siempre, incluso aunque la licencia de uso no lo exija. Una forma apropiada suele ser la inclusión de leyendas en las figuras y tablas en las que se indica entre paréntesis la licencia bajo la que se distribuye, autores, título de la obra y fuente donde se publicó la obra. Si existe un permiso expreso de uso del material independiente de su licencia, es normal expresar el uso por cortesía del autor o de la entidad poseedora de los derechos. 
- Si no vas a distribuir tu trabajo con una licencia *copyleft* procura que todo el material incluido sea de elaboración propia.
- No abuses del derecho de cita. Este derecho permite el uso de material ajeno cuando nuestro trabajo consiste en el análisis y estudio del mismo.
  












### <a name="includebbl"></a>¿Cómo conseguir que las referencias bibliográficas aparezcan en el idioma correcto?
El procesamiento de la bibliografía con BibTeX, a pesar de ser muy cómodo, presenta limitaciones como el reconocimiento de idiomas. Esta herramienta procesa los registros de los ficheros de bibliografía (``*.bib``) asumiendo que están en inglés. Por esta razón en la bibliografía del documento producido pueden aparecer los nombres de meses y algunos textos automáticos en inglés (p.ej., conjunciones ``and`` en lugar de ``y`` en lista de autores, ``et. al.`` en vez de ``y col.``, etc.). Para resolver este problema se ha diseñado ``biblatex``, un paquete extremadamente versátil que resuelve este tipo de cuestiones. Sin embargo, el ajuste y uso de este nuevo paquete puede no estar justificado por las complicaciones que añade. 

Para poder subsanar los errores de BibTeX sin necesidad de emplear paquetes adicionales como ``biblatex`` se sugiere emplear una técnica heterodoxa pero muy efectiva. Dicha técnica se debe aplicar en la fase final de preparación del documento final cuando ya no se van a añadir más registros a la bibliografía. En este momento la compilación de mismo produce un fichero intermedio ``*.bbl`` en el que BibTeX genera el entorno de ``thebibliography`` con la lista ordenada de entradas para la bibliografía a las que se ha aplicado el estilo indicado por el comando ``\bibliographystyle``.  En este punto se debe renombrar el fichero ``bbl`` cambiando su extensión a ``tex`` (p.ej., ``refs.tex``) y editarlo manualmente con los errores a subsanar y cambios adicionales que se desee, e incluso información adicional. Para incorporar esta información en el documento se debe substituir el comando ``\bibliography`` por el contenido de este nuevo fichero modificado, bien directamente o mediante un comando ``\input``.   

*NOTA: El fichero bbl también se puede obtener cuando se emplea Overleaf. En este caso se debe ir a la ventana de ``Logs and output files``. En la parte inferior se puede hacer clic sobre ``other logs and files`` para desplegar una lista en la que se encuentra el fichero ``output.bbl``  que se puede descargar para aplicar la estrategia comentada anteriormente.*











### <a name="unsorted"></a>¿Cómo conseguir una lista de referencias bibliográficas ordenadas por orden de citación en el texto?
Los distintos estilos de citación de referencias bibliográficas en el texto y de la lista de referencias correspondientes se obtienen indicando a BibTeX el estilo deseado con el comando \bibliographystyle. De modo resumido los estilos de citación son:

- **Numérico**. Identificando la referencia con un número entre corchetes (p.ej., [25]). Este es el estilo preferido en ingenierías y el empleado en LaTeX con el estilo más simple ``plain``.
- **Autor-Año**. Este estilo es preferido en humanidades, ciencias sociales y ciencias naturales. En este caso el estilo de referencia es el estandarizado por la APA (*American Psychological Association*). Este estilo de citación se puede usar mediante el paquete ``apacite`` con la opción ``natbibapa``. El estilo de la bibliografía se ajustaría con el argumento ``apacite`` correspondiente. 

Estos estilos de citación se pueden combinar con distintos estilos para la lista de referencias. En general, estas se ordenan alfabéticamente por el apellido del primer autor. Sin embargo, también puede interesar una lista ordenada por orden de citación en el documento. Este es el estilo preferido por el IEEE y por tanto exigido en muchas escuelas de ingeniería. Para conseguir este resultado con LaTeX, lo más sencillo es emplear el estilo nativo ``ieeetr`` (estilo *IEEE transactions*) o ``unsrt`` (estilo *unsorted*). Este estilo solo tiene sentido en el caso de citación numérica pues es muy sencillo encontrar la referencia por su número en la lista. Por esta razón, este estilo carece de sentido con un estilo de citación autor-año.








---

(by Jesús Salido Tercero, LaTeX4TFG 2022)
