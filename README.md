# Plantilla LaTeX para TFG de la Esc. Sup. de Informática (ESI-UCLM)

El propósito de este proyecto es utilizarlo como plantilla para preparar, con LaTeX, el TFG en la [Escuela Superior de Informática](http://webpub.esi.uclm.es/) (ESI) de la Univ. de Castilla-La Mancha (UCLM) siguiendo la [normativa de aplicación](https://pruebasaluuclm.sharepoint.com/sites/esicr/tfg/SitePages/Inicio.aspx). Esta plantilla está disponible en [GitHub](https://github.com/JesusSalido/TFG_ESI_UCLM) (versión de desarrollo) y [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw) (versión estable). Por tanto puede emplearse con comodidad, bien de modo local en un equipo con LaTeX instalado ([MiKTeX](https://miktex.org/), LiveTeX, etc.), o bien en línea empleando el servicio de edición [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw).

> Esta plantilla ha sido desarrollada para el curso de enseñanzas propias impartido en la ESI: [LaTeX esencial para preparación de TFG, Tesis y otros documentos académicos](http://visilab.etsii.uclm.es/?page_id=1468), en el que se explican las estrategias fundamentales para aumentar la productividad y la calidad de resultados finales empleando el sistema de preparación de documentos [LaTeX](https://www.latex-project.org/) en el contexto académico.
>
> __IMPORTANTE__: 
>_Aunque la plantilla se ajusta a las necesidades y reglamentación de la ESI-UCLM, su adaptación es sencilla a otras titulaciones, instituciones y otros documentos de carácter académico. Esta plantilla permite de modo automático la elaboración de la memoria del documento en idioma inglés y puede ser utilizada en cualquier SO (Windows, Linux, Mac OSX, etc.)._

El proyecto está constituido por:
  - Un fichero LaTeX principal (``uclmTFGesi.tex``) en el que se cargan paquetes que emplea el documento. Los paquetes cargados en este fichero emplean las opciones que respetan la normativa actual de la ESI-UCLM, pero algunas de las opciones pueden ser modificadas sin contravenir dicha normativa. Algunos de los paquetes son opcionales (señalado en los comentarios con el tag `OPT.`).
  - Un fichero de estilo ``*.sty`` (paquete `uclmTFGesi`) en el que se han agrupado los aspectos de formato. Y que admite como opciones seleccionar el idioma principal del documento (opción: `english`) o prefijos de género (opciones: `autora`, `tutora` o `cotutora`).
    > __NOTA__: _Se recomienda evitar su modificación si se carece de conocimientos avanzados de LaTeX._- 
  - Varios ficheros LaTeX (``*.tex``) correspondientes a los principales capítulos de un TFG.
  - Un fichero de bibliografía (``biblioTFG.bib``) de ejemplo para procesar con  ``biblatex``. De este modo en la plantilla se muestra el empleo de este tipo de fichero.
  - Directorio (``./figs``) de figuras contenidas en el documento final.
  - Directorio de porciones de código fuente (``./code``) incluido como parte de los documentos finales.

#### Compilación 

Esta plantilla ha sido preparada para compilarse con `pdflatex`, `biblatex` (bibliografía con `biber`) y `makeindex` (sólo si se incluye índice temático).

Para su compilación se aconseja utilizar `latexmk` (requiere para su ejecución de un intérprete [`Perl`](http://strawberryperl.com/)):

> \$> latexmk -pdf -silent -synctex=1 --enable-write18 

Para la automatización del trabajo con esta plantilla es recomendable el empleo de IDE dedicados como [TeXstudio](https://www.texstudio.org/).

-----
##### Contacto

Comunique cualquier asunto relacionado con esta plantilla (comentarios, errores, incompatibilidades, mejoras, etc.) a:

`jesus.salido@uclm.es`