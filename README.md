# Plantilla guía de TFG de la Escuela Superior de Informática (ESI-UCLM)

Esta plantilla debe servir como guía para preparar, con LaTeX, el TFG en la [Escuela Superior de Informática](http://webpub.esi.uclm.es/) (ESI) de la Univ. de Castilla-La Mancha (UCLM) siguiendo la [normativa de aplicación](https://pruebasaluuclm.sharepoint.com/sites/esicr/tfg/SitePages/Inicio.aspx). Está disponible en [GitHub](https://github.com/JesusSalido/TFG_ESI_UCLM)  y [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw). Por tanto, puede emplearse tanto en modo local en un equipo con LaTeX instalado ([MiKTeX](https://miktex.org/), LiveTeX, etc.), o bien en línea empleando el servicio de edición [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw).

> Esta plantilla ha sido desarrollada para el curso de enseñanzas propias impartido en la ESI: [LaTeX esencial para preparación de TFG, Tesis y otros documentos académicos](http://visilab.etsii.uclm.es/?page_id=1468), en el que se explican las estrategias fundamentales para aumentar la productividad y la calidad de resultados finales empleando el sistema de preparación de documentos [LaTeX](https://www.latex-project.org/) en el contexto académico.
>
> __IMPORTANTE__: 
>_Aunque la plantilla se ajusta a las necesidades y reglamentación de la ESI-UCLM, su adaptación es sencilla a otras titulaciones, instituciones y otros documentos de carácter académico. Esta plantilla permite de modo automático la elaboración de la memoria del documento en idioma inglés y puede ser utilizada en cualquier SO (Windows, Linux, Mac OSX, etc.)._

>_Alumnos de titulaciones que han empleado esta plantilla con éxito:_
> - Grado en Ing. Informática,
> - Grados en Ing. Industrial,
> - Grados en Química,
> - Grados en Administración y Dirección de Empresas,... y la lista sigue creciendo.

Esta plantilla consta de:
  - Un fichero LaTeX principal (``uclmTFGesi.tex``) en el que se cargan paquetes que emplea el documento. Los paquetes cargados en este fichero emplean las opciones que respetan la normativa actual de la ESI-UCLM, pero algunas de las opciones pueden ser modificadas sin contravenir dicha normativa. Algunos de los paquetes son opcionales (señalado en los comentarios con el tag `OPT.`).
  - Un fichero de estilo ``*.sty`` (paquete `uclmTFGesi`) en el que se han agrupado los aspectos de formato. Y que admite como opciones: seleccionar el idioma principal del documento (opción `english`) o prefijos de género (opciones `autora`, `tutora` o `cotutora`).
    > __NOTA__: _Se recomienda evitar la modificación de este fichero si se carece de conocimientos avanzados de LaTeX._ 
  - Un fichero de estilo ``uclmTFG.ist`` para el índice temático.
  - Un fichero de configuración ``latexmkrc`` para automatizar la compilación.
  - Varios ficheros LaTeX (``*.tex``) correspondientes a los principales capítulos de un TFG.
  - Un fichero de bibliografía (``biblioTFG.bib``) de ejemplo para procesar con  ``biblatex``. De este modo en la plantilla se muestra el empleo de este tipo de fichero.
  - Directorio (``./portadas``) con ejemplos de portadas (en formatos ``doc`` y ``PDF``) cuyo diseño no se ajusta al generado automáticamente por la plantilla,
  - Directorio (``./figs``) de figuras contenidas en el documento final.
  - Directorio de porciones de código fuente (``./code``) incluido como parte de los documentos finales.

#### Compilación 

Esta plantilla ha sido preparada para compilarse con `pdflatex`, `biblatex` (bibliografía con `biber`) y `makeindex` (sólo si se incluye índice temático).

Para su compilación se aconseja utilizar `latexmk` (requiere para su ejecución de un intérprete [`Perl`](http://strawberryperl.com/)):

> \$> latexmk -pdf -silent -synctex=1 uclmTFGesi.tex

Para la automatización del trabajo con esta plantilla es recomendable el empleo de IDE dedicados como [TeXstudio](https://www.texstudio.org/).

> IMPORTANTE: Para garantizar una compilación correcta es recomendable limpiar el directorio de trabajo de los ficheros auxiliares generados en compilaciones previas. Consultar manual de `latexmk` para opciones adicionales.
-----
##### Citación y contacto

Si esta plantilla le resulta útil considere la posibilidad de citarla con la información del registro `bib`:

```
@Www{salidoTFGgit,
  author       = {Jesús Salido},
  title        = {Plantilla guía de TFG de la ESI-UCLM},
  year         = {2019},
  editor       = {GitHub},
  organization = {Universidad de Castilla-La Mancha},
  url          = {https://github.com/JesusSalido/TFG_ESI_UCLM},
}
```

Comunique cualquier asunto relacionado con esta plantilla (comentarios, errores, incompatibilidades, mejoras, etc.) a:

`jesus.salido@uclm.es`

<img src="./figs/by-nc-sa.png" width="150">
