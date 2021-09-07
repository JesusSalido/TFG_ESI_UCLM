**junio 2021**

Quizá te preguntas por qué transcurrido el tiempo sigo haciendo cambios en esta plantilla. La respuesta rápida es: *"Porque puedo y porque quiero."*

Sin embargo, el principal motivo es que al igual que sucede con el desarrollo del software, rara vez un programa queda completado y finalizado. Por tanto, cada poco tiempo descubro algo nuevo que puedo modificar y que, en mi opinión, mejora el resultado final. También las experiencias de los usuarios son una fuente de realimentación para plantearme cambios que mejoren la experiencia de los usuarios si menoscabar la flexibilidad de uso.

En esta nueva release de trabajo he decidido incluir bastantes cambios para facilitar el trabajo con la plantilla propuesta. A continuación describo brevemente los cambios más importantes:

1. Eliminación de paquete `uclmTFGesi.sty` para limpieza de código y transferencia de la carga de paquetes y configuración de los mismos en el fichero `packagesTFG.tex`.
2. Eliminación de comandos creados para configuración de portadas. Se ha reducido el número de comandos. Ahora el usuario puede inspeccionar en el fichero `.\preambulo\Portadas.tex` los entornos `titlepage` con los que se crea cada portada para su edición directa de un modo muy flexible.
3. Organización general del proyecto con directorio raíz más limpio. El fichero maestro `uclmTFGesi.tex` queda mejor estructurado y fácil de comprender.