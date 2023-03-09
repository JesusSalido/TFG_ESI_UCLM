# Plantilla guía de TFG de la Escuela Superior de Informática (ESI-UCLM)

Esta plantilla debe servir como guía para preparar, con LaTeX, el TFG en la [Escuela Superior de Informática](http://webpub.esi.uclm.es/) (ESI) de la Univ. de Castilla-La Mancha (UCLM) siguiendo la [normativa de aplicación](https://pruebasaluuclm.sharepoint.com/sites/esicr/tfg/SitePages/Inicio.aspx). Está disponible en [GitHub](https://github.com/JesusSalido/TFG_ESI_UCLM)  y [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw). Por tanto, puede emplearse tanto en modo local en un equipo con LaTeX instalado ([MiKTeX](https://miktex.org/), [TeX Live](https://www.tug.org/texlive/), etc.), o bien en línea empleando el servicio de edición [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw).

> Esta plantilla ha sido desarrollada para el curso de enseñanzas propias impartido en la ESI: [LaTeX esencial para preparación de TFG, Tesis y otros documentos académicos](http://visilab.etsii.uclm.es/?page_id=1468), en el que se explican las estrategias fundamentales para aumentar la productividad y la calidad de resultados finales empleando el sistema de preparación de documentos [LaTeX](https://www.latex-project.org/) en el contexto académico.
>
> __IMPORTANTE__: 
>_Aunque la plantilla se ajusta a las necesidades y reglamentación de la ESI-UCLM, su adaptación es sencilla a otras titulaciones, instituciones y otros documentos de carácter académico. Esta plantilla permite de modo automático la elaboración de la memoria del documento en idioma inglés y puede ser utilizada en cualquier SO (Windows, Linux, Mac OSX, etc.)._

>_Alumnos de titulaciones que han empleado esta plantilla con éxito:_
> - Grado en Ing. Informática,
> - Grados en Ing. Industrial,
> - Grados en Química,
> - Grados en Administración y Dirección de Empresas,
> - Máster en Humanidades, ... y la lista sigue creciendo.

Esta plantilla está organizada en ficheros y directorios del modo que se indica a continuación:
  - Este fichero ``README.md``.
  - ``RELEASE_NOTES.md`` comentarios sobre la release actual.
  - ``FAQ.md`` Preguntas frecuentes respondidas sobre el uso de la plantilla en las que puede estar la respuesta a esa duda que te atormenta. 
  - Un fichero LaTeX principal o maestro (``uclmTFGesi.tex``) que carga el paquete ``uclmTFGesi.sty`` en el que se incluyen los paquetes que emplea la plantilla. Los paquetes cargados en este último fichero emplean las opciones que respetan la normativa actual de la ESI-UCLM, pero algunas de las opciones pueden ser modificadas sin contravenir dicha normativa. Algunos de los paquetes son opcionales (señalado en los comentarios con el tag `OPT.`).  
  - Directorio ``/frontmatter`` con ficheros con los elementos de la parte delantera del documento no incluidos en las portadas (``Creditos.tex``, ``Resumen.tex``, ``Agradecimientos.tex``, ``Notación.tex``, e ``Indices.tex``).
  - Directorio ``/caps`` con ficheros para los capítulos principales de la memoria.
  - Directorio ``/anexos`` con ficheros para los anexos.
  - Directorio ``/figs`` de figuras contenidas en el documento final.
  
    > __NOTA__: Si alguno de los ficheros incluidos en los directorios ``/frontmatter``, ``/caps`` y ``/anexos``, no es necesario, su inclusión en el fichero maestro se debe eliminar/comentar. 
 

### Compilación 

Esta plantilla ha sido preparada para compilarse con `pdflatex` y `bibtex`.

Para su compilación se aconseja utilizar `latexmk` (requiere para su ejecución de un intérprete [`Perl`](http://strawberryperl.com/)):

> \$> latexmk -gg -pdf -bibtex-cond1 -quiet -outdir=build uclmTFGesi.tex

Para la automatización del trabajo con esta plantilla es recomendable el empleo de IDE dedicados como [TeXstudio](https://www.texstudio.org/).

-----
#### Citación y contacto

[![DOI](https://zenodo.org/badge/191907589.svg)](https://zenodo.org/badge/latestdoi/191907589)

Si esta plantilla le resulta útil considere la posibilidad de citarla con la información del registro `bib`:

```
@www{salidoTFGgit,
  author       = {Jesús Salido},
  title        = {Plantilla guía de TFG de la ESI-UCLM},
  year         = {2019},
  editor       = {GitHub},
  organization = {Universidad de Castilla-La Mancha},
  url          = {https://github.com/JesusSalido/TFG_ESI_UCLM},
  doi          = {10.5281/zenodo.4561708}
}
```

Comunique cualquier asunto relacionado con esta plantilla (comentarios, errores, incompatibilidades, mejoras, etc.) a:

`jesus.salido@uclm.es`

<img src="./figs/by-nc-sa.png" width="150">
