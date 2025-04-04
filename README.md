# Plantilla guía de TFG de la Escuela Superior de Informática (ESI-UCLM)

Esta plantilla debe servir como guía para preparar, con LaTeX, el TFG en la [Escuela Superior de Informática](http://webpub.esi.uclm.es/) (ESI) de la Univ. de Castilla-La Mancha (UCLM) siguiendo la [normativa de aplicación](https://esi.uclm.es/index.php/grado-en-ingenieria-informatica/trabajos-fin-de-grado/). Está disponible en [GitHub](https://github.com/JesusSalido/TFG_ESI_UCLM)  y [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw). Por tanto, puede emplearse tanto en modo local en un equipo con LaTeX instalado ([MiKTeX](https://miktex.org/), [TeX Live](https://www.tug.org/texlive/), etc.), o bien en línea mediante el servicio de edición [Overleaf](https://www.overleaf.com/latex/templates/plantilla-de-tfg-escuela-superior-de-informatica-uclm/phjgscmfqtsw).

>
> __IMPORTANTE__: 
>_Aunque la plantilla se ajusta a las necesidades y reglamentación de la ESI-UCLM, su adaptación es sencilla a otras titulaciones, instituciones y otros documentos de carácter académico. Esta plantilla permite de modo automático la elaboración de la memoria del documento en idioma inglés y puede ser utilizada en cualquier SO (Windows, Linux, Mac OSX, etc.)._
>
> Titulaciones en las que se ha empleado esta plantilla con éxito:
> - Grado en Ing. Informática,
> - Grados en Ing. Industrial,
> - Grados en Química,
> - Grados en Administración y Dirección de Empresas,
> - Máster en Humanidades, ... y la lista sigue creciendo.

Esta plantilla está organizada en ficheros y directorios del modo que se indica a continuación:
  - Este fichero ``README.md``.
  - ``FAQ.md`` Preguntas frecuentes respondidas sobre el uso de la plantilla en las que puede estar la respuesta a esa duda que te atormenta. 
  - Un fichero LaTeX principal o maestro (``principal.tex``) que carga la clase ``TGFesi.cls`` encargada del formato del documento. Los paquetes cargados en este último fichero emplean las opciones que respetan la normativa actual de la ESI-UCLM, pero algunas de las opciones pueden ser modificadas sin contravenir dicha normativa.
  - Un fichero ``preambulo.tex`` en el que se incluye los comandos para generar:  portadas, créditos, dedicatoria, resumen, agradecimientos, notación y los índices.
  - Directorio ``/Caps`` con ficheros para los capítulos principales de la memoria.
  - Directorio ``/Anexos`` con ficheros para los anexos.
  - Directorio ``/figs`` donde se ubican los ficheros (``.pdf``, ``.png`` o ``.jpg``) de las figuras incluidas en el documento.

>
> __IMPORTANTE__: 
>_Los únicos ficheros que se deben editar son aquellos con extensión ``.tex``, teniendo en cuenta que los ficheros correspondientes a capítulos y anexos se ubican por defecto en los directorios correspondientes (``Caps`` y ``Anexos``)_


### Compilación 

Esta plantilla ha sido preparada para compilarse con `pdflatex` y `bibtex`. Para su compilación se aconseja utilizar `latexmk` (requiere un intérprete [`Perl`](http://strawberryperl.com/) para su ejecución):

> \$> latexmk -gg -pdf -bibtex-cond1 -quiet -outdir=build principal.tex

Para la automatización del trabajo con esta plantilla es recomendable el empleo de IDE dedicados como [Overleaf](https://www.overleaf.com/) o [TeXstudio](https://www.texstudio.org/).

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
