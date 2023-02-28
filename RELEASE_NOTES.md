**marzo 2023**
- Renombrado de fichero `packagesTFG.tex` para limpieza de código y transferencia de la carga de paquetes y configuración de los mismos al fichero `uclmTFGesi.sty`.
- Cambios menores de limpieza y corrección.
  
**junio 2022**

Esta nueva versión incluye cambios menores. 

- Revisión completa de textos.
- Eliminación de ficheros gráficos auxiliares.
- Adición de fichero con FAQ (Respuestas a preguntas frecuentes sobre el uso de la plantilla).
- Adición de paquete ``float`` para anclaje de objetos flotantes mediante opción ``H``. 
- Cambios menores.

**septiembre 2021**

Esta nueva versión surge de los comentarios de realimentación recibidos por los usuarios y un proceso natural de evolución de este proyecto. Cada poco tiempo descubro algo nuevo que puedo modificar y que, en mi opinión, mejora el resultado final o la experiencia del usuario.

En esta nueva release de la plantilla he decidido incluir bastantes cambios para facilitar su uso y configuración. A continuación describo brevemente los cambios más importantes:

1. Organización general del proyecto con directorio raíz más limpio. El fichero maestro `uclmTFGesi.tex` queda mejor estructurado y fácil de comprender. De este modo se facilita la configuración y ajustes propios a la plantilla.
2. Eliminación de comandos creados para configuración de portadas. Se ha reducido el número de comandos. Ahora el usuario puede inspeccionar en el fichero `.\preambulo\Portadas.tex` los entornos `titlepage` con los que se crea cada portada para su edición directa de un modo muy flexible.
3. Las páginas de resumen/abstract se han completado con información primordial del documento (tipo de trabajo, centro, autor, lugar y fecha) para facilitar su difusión.
4. Se eliminan todos los códigos, paquete `makeidx` y ficheros auxiliares (`latexmkrc` y `uclmTFGesi.ist`) precisos para la elaboración de un índice de contenidos al final del documento.
5. Eliminación de paquete `biblatex` y ajustes para procesamiento tradicional de bibliografía. Aunque `biblatex` posee una gran flexibilidad de formato y resuelve muchos aspectos de las bibliografías multilingües, su empleo y configuración es más complejo que el procesamiento tradicional mediante entorno `thebibliography` o procesamiento de ficheros `bib` para **BibTeX** que continúa siendo un estándar en multitud de publicaciones científicas. El documento incluye los comentarios con información para poder usar la plantilla con estilo de citación (Autor, año) mediante el paquete `apacite` con la opción `natbibapa`. En este caso el estilo empleado en la bibliografía es `apacite`. También se debe recordar que el uso de `apacite` con citación `natbib` permite el uso de comandos de citación alternativos a `\cite`.  

    *NOTA: El uso de BibTeX permite aplicar estilos a los ficheros de bibliografía `bib` y en el paso de generación del documento final sustituir la generación de lista de referencias por el entorno `thebibliography` obtenido en el fichero `bbl`. De este modo es muy sencillo aplicar manualmente los cambios deseados en el formato de la bibliografía sin necesidad de recurrir a nuevos procesamientos con BibTeX.*
