%%%%%%%%%%%%%%
% Fichero: TFGesi.cls
% Autor: Jesús Salido Tercero (https://www.esi.uclm.es/www/jsalido)
% Fecha (creación): abril 2025
% Rev. : ---
% Descripción: Clase para memoria de TFG % (Escuela Sup. de Informática, UCLM).
%
% IMPORTANTE: Se recomienda no modificar sin conocimientos avanzados.
% Modifica bajo tu responsabilidad. 
%%%%%%%%%%%%%%
\ProvidesClass{TFGesi}
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{kvoptions}
\RequirePackage{etoolbox}

% --- Declaracinoes de opciones de la clase
\DeclareBoolOption{draft} % Modo borrador (False)
\DeclareComplementaryOption{final}{draft} % Modo borrador (True)

\SetupKeyvalOptions{family=ESI, prefix=ESI@}

\DeclareBoolOption[true]{spanish} % Por defecto idioma español (False)
\DeclareComplementaryOption{english}{spanish} % Modo borrador (True)
\DeclareBoolOption[true]{pageonfooter} % Nº de página en el pie (False)

\ProcessKeyvalOptions* % Procesa las opciones pasadas en la llamada
% --- Declaracinoes de opciones de la clase

\LoadClass[ 		    % Clase base del documento
	11pt,				% Tamaño de letra
	a4paper,			% Tamaño de papel
	twoside,			% Impresión a doble cara
	openright,			% La apertura de cap. a la dcha.
]{book}

\setcounter{tocdepth}{1} % Suprime del índice los apdos. de nivel mayor
\setcounter{secnumdepth}{3} % Suprime numeración de secciones de nivel mayor

%--- Márgenes del documento
\RequirePackage[top=2.5cm,    % Superior
            bottom=2.5cm, % Inferior
            inner=3.5cm,  % Interior 
            outer=2cm     % Exterior
]{geometry}

%\pdfcompresslevel=1

% Inputenx con UTF8 (necesario en versiones LaTeX anteriores 2018)
%\RequirePackage[utf8]{inputenx}

\RequirePackage[ % Ambos idiomas son precisos para bibliografía multilingüe
    english,     % Se emplea porque el resumen siempre en inglés
    spanish,     % Se emplea para resumen en español
    es-tabla,    % Cambia denominacion de cuadro a tabla (en español)
    es-noindentfirst % No sangra primer párrafo de sección (en español)
]{babel} % Internacionalización


\RequirePackage[skip=.3\baselineskip plus 2pt,indent]{parskip} % Salto entre párrafos 
% skip= .5\baselineskip plus 2pt -> Valor por defecto
% 

% -------------------------
% AJUSTE DE TIPOGRAFÍA (paquete específico para cada tipografía)
% -------------------------
% Símbolos matemáticos de la AMS
\RequirePackage{amssymb,amsfonts} % Para ecuaciones
\RequirePackage{amsmath}

%--- (Opción: Latin Modern)
%\RequirePackage{lmodern} % Latin Modern. Sucesora de Computer Modern.

%--- (Opción: Libertine)
\RequirePackage[tt=false]{libertine} % Libertine con Old-Style Figures [osf]
\RequirePackage[libertine]{newtxmath} % Times

%--- (Opción: Palatino)
%\RequirePackage{newpxtext} % Palatino: La opción osf proporciona números en old style.
%\RequirePackage{newpxmath}	% Palatino

%--- (Opción: Fourier)
%\RequirePackage{fourier}   % Utopía
%---

%--- (Opción excepcional y extraña)
% Preferida en algunos centros docentes (ADE-UCLM).
% Con esta elección es más conveniente una tipografía tipo Helvética/Arial 
%(no Libertine)
%\RequirePackage{helvet}
%\renewcommand{\familydefault}{\sfdefault} % Familia por defecto sans serif
%---


\RequirePackage{textcomp,marvosym,pifont,fontawesome5} % Símbolos especiales


\RequirePackage[T1]{fontenc}% Codificación de salida    
\RequirePackage[
    protrusion=true,
    activate={true,nocompatibility},
    final,
    tracking=true,
    kerning=true,
    spacing=true,
    factor=1100]{microtype} % Mejoras de microtipografía (solo pdflatex)
\SetTracking{encoding={*}, shape=sc}{40}

\RequirePackage{setspace}   % Permite el ajuste del interlineado

\RequirePackage[shortlabels]{enumitem} 	% Control de listas
%\setlist[itemize,1]{label=\textbullet}  % Viñeta para el primer nivel de listas (cuidado no repetir viñeta si incluyes un 2º nivel)

\RequirePackage{multicol}	% Texto en varias columnas

\RequirePackage{float} % Forzado de pos. de floats (opción H)

\RequirePackage{array,booktabs,tabularx} % Paquetes para tablas

\RequirePackage{graphicx,subcaption,rotating,pdflscape} % Incl. de sub-figuras

\DeclareGraphicsExtensions{.pdf,.png,.jpg} % Precedencia de extensiones
\graphicspath{{./figs/}}% Path de búsqueda de ficheros gráficos

\RequirePackage[  % Personalización de títulos de figuras y tablas
	margin=10pt,  % Margen
	font=small,	  % Tamaño de tipografía
	labelfont=bf, % Prefijo-Etiqueta en negrita
	format=hang	  %
]{caption}
\captionsetup[table]{skip=5pt} 	% Separación de título tablas
\captionsetup[figure]{skip=5pt} % Separación de título en figuras

\RequirePackage[dvipsnames,svgnames,x11names,table]{xcolor}
\definecolor{palered}{rgb}{0.78, 0.03, 0.08}
\definecolor{ocre}{RGB}{243,102,25} % Ocre
%\definecolor{aquaESI}{RGB}{0,151,215} % Aqua
\definecolor{aquaESI}{cmyk}{0.85,0.2,0.0,0.0} % Aqua
\definecolor{marineESI}{cmyk}{1.0,0.9,0.0,0.3} % Marine
\definecolor{turquesa}{RGB}{64,132,64} % Turquesa
\definecolor{UCLMred}{cmyk}{0.19, 1.0, 0.74, 0.12} % Color imagen corporativa UCLM
\definecolor{sombra}{HTML}{F0F0F0} % Sombra código
\definecolor{grisESI}{RGB}{167,174,178} % Gris numeración código
%\definecolor{grisESI}{cmyk}{8.0, 0.0, 0.0, 0.4} % Gris numeración código
\definecolor{gris}{gray}{0.4} % Gris numeración código

\RequirePackage{hyperref}
\urlstyle{sf}		        % Estilo sans serif para URLs
\hypersetup{% (Metadatos del fichero PDF generado)
	breaklinks=true,         % Enlaces con división entre líneas
    linktocpage=true,        % T/F=enlace al nº de pág./texto completo
	colorlinks=true,         % T/F=texto en color/recuadro al texto
%    hidelinks,               % Oculta colores en los enlaces (en negro)
    linkcolor=UCLMred,       % Color links internos
    anchorcolor=UCLMred,     % Color para anclas a texto
	urlcolor=aquaESI,        % Color para URL enlazadas
	citecolor=UCLMred,       % Color para citas a bibliografía
	bookmarksopen=true,      % Abre PDF con panel de marcadores abierto
	bookmarksnumbered=true,  % Incluye números en marcadores
	pdftoolbar=true,         % Muestra la toolbar de Acrobat
	pdfmenubar=true,	     % Muestra la menubar de Acrobat
}

\RequirePackage{pdfpages}   % Permite inclusión de páginas de un PDF

\RequirePackage{tikz}       % Paquete para gráficos

% -------------------------
% AJUSTE DE CABECERA Y PIE DE PÁGINA (paquete fancyhdr)
% -------------------------
\RequirePackage{fancyhdr}	% Ajuste de cabeceras y pies
\fancyhf{} % Reset de la cabecera y pie
\fancyhead[LO]{\sffamily\leftmark} % pág impar: [Capítulo                      pág]
\fancyhead[RE]{\sffamily\rightmark} % pág par:  [pág.                      Sección]
\makeatletter
\ifbool{ESI@pageonfooter}{\fancyfoot[C]{\sffamily\thepage}}%
	{\fancyhead[RO,LE]{\sffamily\thepage}}
\makeatother

% Formato para el capítulo: N. Nombre
\renewcommand{\chaptermark}[1]{\markboth{\textbf{\thechapter.#1}}{}}
% Formato para la sección: N.M. Nombre
\renewcommand{\sectionmark}[1]{\markright{\textbf{\thesection. #1}}} 
\renewcommand{\headrulewidth}{0.6pt} % Ancho línea horizontal bajo el encabezado
% Ancho de la línea horizontal sobre el pie (en este ejemplo está vacío)
%\renewcommand{\footrulewidth}{0.6pt} 
\setlength{\headheight}{1.5\headheight} % Aumenta la altura del encabezado en una vez y media

% Añade una página en blanco al final del capítulo si este acaba en página dcha.
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside
\ifodd\c@page
\else\hbox{}\thispagestyle{empty}\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother

\newcommand{\cleanhdfirst}{% Quita cabecera y pie al ppio de capítulo
	\fancypagestyle{plain}{%
		\fancyhf{}%
		\renewcommand{\headrulewidth}{0pt}
		\renewcommand{\footrulewidth}{0pt}
	}
}
% -------------------------




% -------------------------
% CONFIGURACIÓN INICIO CAPÍTULOS Y SECCIONES (paquete titlesec)
% -------------------------
\RequirePackage{titlesec}   % Ajustes de títulos de secciones
\newcommand{\bigrule}{\titlerule[0.5mm]}

\titleformat{\chapter}[display]% {<command>}[<shape>]
{\filleft\bfseries\Huge\sffamily}% {<format>}
{\titlerule
\vspace{0.2\baselineskip}
\Large{\MakeUppercase\chaptertitlename{} \thechapter}
} % {<label>}
{0mm}{}[\bigrule]% {<sep>}{<before-code>}[<after-code>]
\titleformat{\section}{\sffamily\bfseries\MakeUppercase}{\thesection .}{1ex}{}
\titleformat{\subsection}{\sffamily\bfseries}{\thesubsection .}{1ex}{}
\titleformat{\subsubsection}{\sffamily\bfseries}{\thesubsubsection .}{1ex}{}

%\titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\titlespacing*{\section}{0pt}{.5\baselineskip plus 2pt}{.2\baselineskip plus 2pt}
\titlespacing*{\subsection}{0pt}{.5\baselineskip plus 2pt}{.2\baselineskip plus 2pt}
\titlespacing*{\subsubsection}{0pt}{.5\baselineskip plus 2pt}{.2\baselineskip plus 2pt}
% -------------------------




% -------------------------
% CONFIGURACIÓN ALGORITMOS Y LISTADOS DE CÓDIGO
% -------------------------
\RequirePackage[% Inclusión de algoritmos
	lined,boxruled,algochapter,commentsnumbered,%
    \ifbool{ESI@spanish}{spanish}{english}% 
]{algorithm2e} 

\RequirePackage{listings}	% Inclusión de listados de código
\lstset{inputencoding=utf8, extendedchars=true,
	literate=%
	{á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
	{Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
	{à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
	{À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
	{ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
	{Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
	{â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
	{Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
	{œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
	{ű}{{\H{u}}}1 {Ű}{{\H{U}}}1 {ő}{{\H{o}}}1 {Ő}{{\H{O}}}1
	{ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
	{€}{{\euro}}1 {£}{{\pounds}}1 {«}{{\guillemotleft}}1
	{»}{{\guillemotright}}1 {ñ}{{\~n}}1 {Ñ}{{\~N}}1 {¿}{{?`}}1
	{¡}{{\textexclamdown}}1
}

\lstset{ % Estilo por defecto de listados
	belowcaptionskip=5pt, % Espacio bajo el título
	basicstyle={\footnotesize\ttfamily}, % Estilo básico para el texto
	%stringstyle=\textsl,        % Estilo para las cadenas
	stringstyle={\color{Green4}},
	commentstyle={\color{Green4}},% Estilo para los comentarios
	keywordstyle={\color{Blue1}},% Estilo para las palabras clave
	%	deletekeywords={}, 			% Quita keywords separadas por comas
	captionpos=t,               % Ajusta la posición de títulos 
	numbers=left,               % Posición de números de línea
	numberstyle={\color{grisESI}\tiny\sffamily},          % Tamaño del número de línea
	numberfirstline=false,
	firstnumber=1, 				%  Nº de la primera línea
	stepnumber=1,               % Paso de línea numerada
	numbersep=10pt,             % Separación del texto al número de línea
	tabsize=2,                  % Tamaño del tabulador
	texcl=true,				    % Necesario para unicode en los comentarios
	breaklines=true,            % Ajusta división automática de líneas
	breakatwhitespace=true,     % Indica si la división automática sólo ocurre en los espacios en blanco
	frame=none,               % none, leftline, topline, bottomline, lines, single, shadowbox 
%	frameround=tttt, 			% Redondea los bordes del frame
%	rulecolor={\color{black}},  % Color del frame
	showspaces=false,           % Muestra espacios en blanco
	showtabs=false,             % Muestra tabuladores
	showstringspaces=true,      % Muestra espacios en blanco en las cadenas        
	xleftmargin=1cm,xrightmargin=1cm,
	breaklines=true,
	postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space}, % Flecha al saltar de linea
	prebreak=\mbox{\textcolor{red}{$\hookleftarrow$}\space}, % Flecha al saltar de linea	
    framexleftmargin=8mm, % Ajuste para que el nº de línea quede dentro del frame
	%	framexrightmargin=5pt,
	%	framexbottommargin=4pt,
	backgroundcolor={\color{sombra}} % Color del fondo
}


% Estilo consola
\lstdefinestyle{consola}{% Estilo para comandos tipo consola
	basicstyle={\color{white}\scriptsize\bf\ttfamily},
	backgroundcolor={\color{black}},
	frame=none,
	showspaces=true
}


% Estilo con filete izdo.
\lstdefinestyle{ruled}{% Estilo para listado con filete a la izda.
	frame=L,
	rulesep=.1pt,
   	framexleftmargin=0mm,
	rulecolor=\color{black}
}
% -------------------------







% -------------------------
% -------------------------
% COMANDOS DE USUARIO
% -------------------------
% -------------------------
% -------------------------
% DEFINICIÓN DE DATOS DEL DOCUMENTO
\makeatletter % Estas declaraciones son precisas fuera del paquete
\newcommand{\@tituloPrimera}[1]{\newcommand{\tituloPrimera}{#1}}
\newcommand{\@tituloSegunda}[1]{\newcommand{\tituloSegunda}{#1}}
\newcommand{\@tituloCorto}[1]{\newcommand{\tituloCorto}{#1}\renewcommand{\title}{#1}}
\newcommand{\@tituloCortoAlt}[1]{\newcommand{\tituloCortoAlt}{#1}}
\newcommand{\@autor}[1]{\newcommand{\autor}{#1}\renewcommand{\author}{#1}}
\newcommand{\@email}[1]{\newcommand{\email}{\url{#1}}}
\newcommand{\@autorline}[1]{\newcommand{\autorline}{#1}}
\newcommand{\@tutline}[1]{\newcommand{\tutline}{#1}}
\newcommand{\@cotutline}[1]{\newcommand{\cotutline}{#1}}
\newcommand{\@instEdu}[1]{\newcommand{\instEdu}{#1}}
\newcommand{\@centroEdu}[1]{\newcommand{\centroEdu}{#1}}
\newcommand{\@titulacion}[1]{\newcommand{\titulacion}{#1}}
\newcommand{\@titulacionAlt}[1]{\newcommand{\titulacionAlt}{#1}}
\newcommand{\@especialidad}[1]{\newcommand{\especialidad}{#1}}
\newcommand{\@depto}[1]{\newcommand{\depto}{#1}}
\newcommand{\@tipoDoc}[1]{\newcommand{\tipoDoc}{#1}}
\newcommand{\@tipoDocAlt}[1]{\newcommand{\tipoDocAlt}{#1}}
\newcommand{\@mesTF}[1]{\newcommand{\mesTF}{#1}}
\newcommand{\@monthTF}[1]{\newcommand{\monthTF}{#1}}
\newcommand{\@yearTF}[1]{\newcommand{\yearTF}{#1}}
\newcommand{\@cityTF}[1]{\newcommand{\cityTF}{#1}}
\newcommand{\@escudo}[1]{\newcommand{\escudo}{#1}}
\makeatother


% Nombres en spanish (babel)
\newcommand{\setindexnames}{%
	\ifbool{ESI@spanish}{
		%--- No necesarios al añadir la opción es-tabla para babel.
		%\renewcommand{\tablename}{Tabla} % Se sustituye 'Cuadro' por 'Tabla'
		%\renewcommand{\listtablename}{Índice de tablas}
		%---
		\renewcommand{\lstlistingname}{Listado}
		\renewcommand{\lstlistlistingname}{Índice de listados}
		\SetAlgorithmName{Algoritmo}{Alg}{Índice de algoritmos}
		% Modififica las macros \algorithmcfname y \listalgoritmcfname
		\renewcommand{\appendixname}{Anexo}
		\renewcommand{\bibname}{Bibliografía}
		\renewcommand{\indexname}{Índice temático}}{}
}



\newcommand{\keywordslist}{} % Variable que almacenará la lista
\newcommand{\setkeywords}[1]{% Declara la lista de palabras clave
  \renewcommand{\keywordslist}{#1}% guarda lista
  \hypersetup{% (Metadatos del fichero PDF generado)
	  pdftitle={\title},      % Título
	  pdfauthor={\author},    % Autor
	  pdfsubject={\tipoDoc},  % Tipo de de documento
	  pdfkeywords={#1}        % Palabras clave
  }
}


% -------------------------
% INDICACIÓN DE PULSACIÓN DE TECLA
% -------------------------
% Uso: \tecla{<key>}
\usetikzlibrary{shadows} % Necesario para poder crear nuevo comando de indicación de pulsación de tecla.
\newcommand*\tecla[1]{%  Para crear indicaciones de pulsación de teclas
  \tikz[baseline=(key.base)]
    \node[%
      draw,fill=white,
      drop shadow={shadow xshift=0.25ex,shadow yshift=-0.25ex,fill=black,opacity=0.75},
      rectangle,rounded corners=2pt,inner sep=1pt,line width=0.5pt,
      font=\scriptsize\sffamily
    ](key) {#1\strut}
  ;
}
% -------------------------

% -------------------------
% INCLUSIÓN DE MENÚS, PATHS Y TECLAS
% -------------------------
\RequirePackage[os=win]{menukeys} 
% OJO: Incompatibilidad con otros paquetes, debe cargarse el último.
% Estas definiciones permiten cambiar el estilo de los elementos. Si se 
%desean otros estilos o su configuación es preciso recurrir a la 
%documentación del paquete (no lo recomiendo).
\renewmenumacro{\menu}[:]{menus} % Estilo menus
\renewmenumacro{\directory}[/]{pathswithblackfolder} % Estilo paths
\renewmenumacro{\keys}[+]{shadowedroundedkeys} % Estilo keys
%---

% -------------------------
% DESACTIVACIÓN DE DIVISIÓN DE PALABRAS 
% -------------------------
% Uso: \nodivide o \nodivide[<n>]
\newcommand{\nodivide}[1][10000]{%
	\hyphenpenalty=#1 % Valor típico: hasta 10000
	\exhyphenpenalty=#1 % Valor típico: hasta 10000
	\sloppy
}
% -------------------------

% -------------------------
% EVITACIÓN DE VIUDAS Y HUÉRFANAS
% -------------------------
% Uso: \nowidowandorphan o \nowidowandorphan[<n>]
\newcommand{\nowidowandorphan}[1][10000]{%
	\clubpenalty=#1  % % Valor típico: hasta 10000
	\widowpenalty=#1 % % Valor típico: hasta 10000
}
% -------------------------

% -------------------------
% EVITACIÓN DE DIVISIÓN DE NOTAS AL PIE
% -------------------------
% Código para evitar la división de notas al pie en págs. diferentes
% Uso: \nodividenotas o \nodividenotas[<n>]
\newcommand{\nodividenotes}[1][10000]{%
	\interfootnotelinepenalty=#1 % Valor típico: hasta 10000
}
% -------------------------

% -------------------------
% Creación de un contador nuevo para almacenar el nº de páginas actual
% -------------------------
% Debe ir antes de \mainmatter (antes de que se reinicie en cnt page)
\newcommand{\savepagecnt}{%
	\newcounter{totpages}
	\setcounter{totpages}{\value{page}}
	\addtocounter{totpages}{1}
}
% -------------------------
% Continuación de la paginación desde el valor almacenado en \totpages
\newcommand{\contpagination}{%
	\setcounter{page}{\value{totpages}}
}

% -------------------------
% Ajustes de formato en distintas partes del documento
\apptocmd{\frontmatter}{\pagestyle{empty}}{}{}
\apptocmd{\mainmatter}{\savepagecnt %
	\ifbool{ESI@pageonfooter}{}{\cleanhdfirst}
}{}{}
\apptocmd{\appendix}{%    
	\phantomsection
	\ifbool{ESI@spanish}{%
		\part*{\sffamily ANEXOS}
		\pdfbookmark[0]{Anexos}{anexos}
	}%
	{
		\part*{\sffamily APPENDICES \phantomsection}
		\pdfbookmark[0]{Appendices}{anexos}
	}
}{}{}

\pretocmd{\bibliography}{\cleardoublepage %
	\phantomsection  % Ojo necesario con hyperref.
	\addcontentsline{toc}{chapter}{\bibname} % Añade la bibliografía al Índice de contenidos
}{}{}





% -------------------------
% -------------------------
% -------------------------
% -------------------------
% AJUSTES PARA INCLUIR DISTINTAS PARTES DEL DOCUMENTO (PREÁMBULO)
% -------------------------
% -------------------------
% -------------------------
% -------------------------
% PORTADA PRAL. (1)
\newcommand{\portadaPral}{%
	\begin{titlepage}
		\begin{center}
	        \ifbool{ESI@spanish}{\pdfbookmark{Portada}{portada}}
	        	{\pdfbookmark{Front page}{portada}}
	        \vspace{1cm}
			\includegraphics[width=4.5cm]{\escudo}\vspace{1cm} 
			
			{\LARGE \textbf{\instEdu\\[0.5ex]
					\centroEdu\\[2cm]
					\titulacion}}\\[0.5cm]
	        {\large \textbf{\especialidad}}\\[1.5cm] 
			{\LARGE \textbf{\tipoDoc}}\\[1cm]	
			
			{\LARGE \tituloPrimera}\\ \smallskip%			
			\ifdefined\tituloSegunda{\LARGE \tituloSegunda}
			\else \phantom{\LARGE Texto fantasma}
			\fi
			\vspace{3cm} 
			\Large \autor
		\end{center}
		\vfill%
		\begin{flushright}
			{\Large \ifbool{ESI@spanish}{\mesTF}{\monthTF}, \yearTF}
		\end{flushright}
	\end{titlepage}
}


% -------------------------------------------------------------------------
% PORTADA INT. (2)
\newcommand{\portadaInt}{%
	\begin{titlepage}
		\begin{center}
	        \ifbool{ESI@spanish}{\pdfbookmark[1]{Portada Int.}{portadaInt}}
	        	{\pdfbookmark[1]{Front page int.}{portadaInt}}
	        \vspace{1cm}
			\includegraphics[width=4.55cm]{\escudo}\vspace{1cm}
			
			{\LARGE \textbf{\instEdu \\[0.5ex]
					\centroEdu}}\\[0.5cm]
			{\Large \textbf{\depto}}\\ [1cm]%
			{\large \textbf{\especialidad}}\\[1.5cm]
			{\LARGE \textbf{\tipoDoc}}\\[1cm]
			
			{\LARGE \textbf{\tituloPrimera}}\\ \smallskip%		
			\ifdefined\tituloSegunda{\LARGE \textbf{\tituloSegunda}}
			\else \phantom{\LARGE Texto fantasma}
			\fi
		\end{center}
		\vfill%
		\begin{flushleft}
			{\Large \autorline} \\ \bigskip%
			{\Large \tutline} \\ \bigskip% 
			\ifdefined\cotutline{\Large \cotutline}
			\else \phantom{\Large Texto fantasma}
			\fi  
		\end{flushleft}
		\vspace{2cm}%
		\begin{flushright}
			{\Large \ifbool{ESI@spanish}{\mesTF}{\monthTF}, \yearTF}
		\end{flushright}
		\cleardoublepage
	\end{titlepage}
}

% -------------------------------------------------------------------------
% PORTADA PARA CALIFICACIÓN TRIBUNAL
% Puedes incluir directamente la portada realizada por un programa externo.
%---
\newcommand{\tribunal}{%
\begin{titlepage}
    \pdfbookmark[1]{Tribunal}{tribunal}
 %   \makeatletter
	{\flushright \LARGE \textsc{Tribunal:}}
	
	\vspace*{\stretch{0.5}}
	\hspace*{1cm}{\Large Presidente: \hrulefill}
	
	\vspace*{\stretch{0.5}}
	\hspace*{1cm}{\Large Vocal: \hrulefill}
	
	\vspace*{\stretch{0.5}}
	\hspace*{1cm}{\Large Secretario(a): \hrulefill}
	
	\vspace*{\stretch{0.5}}
	{\flushright \LARGE \textsc{Fecha de defensa:} \hrulefill}
	
	\vspace*{\stretch{1.5}}
	{\flushright \LARGE \textsc{Calificación:} \hrulefill}
	
	\vspace*{\stretch{2.5}}
	\begin{center}
		\begin{tabularx}{\linewidth}{X X X}
			{\large \textsc{Presidente}} & {\large \textsc{Vocal}} & {\large \textsc{Secretario(a)}}\\[2.5cm]
			Fdo.: & Fdo.: & Fdo.:		
		\end{tabularx}
	\end{center}
	\cleardoublepage
\end{titlepage}}


% -------------------------
% Entorno para incluir créditos
% -------------------------
\newenvironment{creditos}[1][\tituloCorto]{%
	\ifbool{ESI@spanish}{\selectlanguage{spanish}%
		\pdfbookmark[1]{Créditos}{creditos}%
	}{\selectlanguage{english}%
		\pdfbookmark[1]{Credits}{creditos}%
	}
	\null\vspace{6cm}
	\small \noindent {#1}\\
	\textcopyright{} \autor, \yearTF\\[1cm]
}{%
	\vfill
	Este texto ha sido preparado con la plantilla \LaTeX{} para Trabajo Fin de 
	Estudios en Ingeniería Informática para la UCLM publicada por 
	\href{https://www.esi.uclm.es/www/jsalido}{Jesús Salido} en el repositorio 
	público Zenodo, DOI: 
	\href{https://doi.org/10.5281/zenodo.4561708}{10.5281/zenodo.4561708}, como 
	parte del curso 
	\href{http://visilab.etsii.uclm.es/?page_id=1468}{\emph{<<\LaTeX{} esencial 
	para preparación de TFG, tesis y otros documentos académicos>>}} impartido 
	en la Escuela Superior de Informática de la Universidad de Castilla-La 
	Mancha.
	\cleardoublepage
}	

% -------------------------
% Entorno para incluir dedicatoria
% -------------------------
\newenvironment{dedicatoria}{\null\vspace{\stretch{1}}\begin{flushright}}
	{\end{flushright}\vspace{\stretch{2}}\null\cleardoublepage}

% -------------------------
% Entorno para incluir resumen
% -------------------------
\newenvironment{resumenPral}[1][spanish]{%
	\phantomsection  % Necesario con hyperref
	\ifstrequal{#1}{spanish}{
		\addcontentsline{toc}{chapter}{Resumen} % Añade al TOC.
		\selectlanguage{spanish} % Selección de idioma del resumen.
		\def\txtkey{Palabras clave}
	}
	{
		\addcontentsline{toc}{chapter}{Abstract} % Añade al TOC.
		\selectlanguage{english} % Selección de idioma del resumen.
		\def\txtkey{Keywords}
	}
	\begin{center} %
	   {\textsc{\tipoDoc - \centroEdu{}
	   (UCLM)}\par} % Tipo de trabajo
	   \vspace{1cm} %  
	   {\textbf{\Large\tituloCorto}\par}  % Título del trabajo
	   \vspace{0.4cm} %
	   {\autor \\ \cityTF,{} \mesTF{} \yearTF\par} 
	   \vspace{0.9cm} % 
		\ifstrequal{#1}{spanish}{
			{\textbf{\large\textsf{Resumen}}\par}}
		{
			{\textbf{\large\textsf{Abstract}}\par}}
	\end{center}   
}{\par \bigskip %
	\noindent \textbf{\txtkey}: \keywordslist.
	\cleardoublepage
}

\newenvironment{resumenAlt}[1][english]{%
	\phantomsection  % Necesario con hyperref
	\ifstrequal{#1}{spanish}{
		\addcontentsline{toc}{chapter}{Resumen} % Añade al TOC.
		\selectlanguage{spanish} % Selección de idioma del resumen.
		\def\txtkey{Palabras clave}
	}
	{
		\addcontentsline{toc}{chapter}{Abstract} % Añade al TOC.
		\selectlanguage{english} % Selección de idioma del resumen.
		\def\txtkey{Keywords}
	}
	\begin{center} %
	   {\textsc{\tipoDocAlt - \centroEdu{}
	   (UCLM)}\par} % Tipo de trabajo
	   \vspace{1cm} %  
	   {\textbf{\Large\tituloCortoAlt}\par}  % Título del trabajo
	   \vspace{0.4cm} %
	   {\autor \\ \cityTF,{} \mesTF{} \yearTF\par} 
	   \vspace{0.9cm} % 
		\ifstrequal{#1}{spanish}{
			{\textbf{\large\textsf{Resumen}}\par}}
		{
			{\textbf{\large\textsf{Abstract}}\par}}
	\end{center}   
}{\par \bigskip %
	\noindent \textbf{\txtkey}: \keywordslist.
	\cleardoublepage
}

\newcommand{\firma}{%
	\leavevmode
	\vspace{1,5cm}
	\begin{flushright}
		\textit{\autor}\\
		\cityTF, \yearTF
	\end{flushright}
}

\newcommand{\auxchapter}[1]{
	\cleardoublepage
	\phantomsection % Necesario con hyperref
	\chapter*{#1} % Opción con * para que no aparezca en TOC ni numerada
	\addcontentsline{toc}{chapter}{#1} % Añade al TOC.
}

% -------------------------
% Comandos para incluir índices
% -------------------------
\newcommand{\idxGral}{%
	\setindexnames % Ajusta nombres (sólo en español).
	\pagestyle{fancy} % Estilo de página ajustado por fancyhdr
	\cleardoublepage
	\phantomsection % Necesario con hyperref
	\pdfbookmark[0]{Índice general}{idx_toc}% idx_toc.0 % Bookmark en PDF
	\tableofcontents  % Índice general
}

\newcommand{\idxFiguras}{%
	\cleardoublepage
	\phantomsection % Necesario con hyperref
	\addcontentsline{toc}{chapter}{\listfigurename} % Añade la lista de figuras al TOC (también a bookmarks en PDF)
	%\pdfbookmark[0]{\listfigurename}{idx_lof}% idx_lof.0 % Bookmark en PDF
	\listoffigures    % Índice de figuras (opcional)
}

\newcommand{\idxTablas}{%
	\cleardoublepage
	\phantomsection % Necesario con hyperref
	\addcontentsline{toc}{chapter}{\listtablename} % Añade la lista de tablas al TOC (también a bookmarks en PDF)
	%\pdfbookmark[0]{\listtablename}{idx_lot}% idx_lot.0 % Bookmark en PDF
	\listoftables % Índice de tablas (opcional)
}

\newcommand{\idxListados}{%
	\cleardoublepage
	\phantomsection % Necesario con hyperref
	\addcontentsline{toc}{chapter}{\lstlistlistingname} % Añade la lista de listados al TOC (también a bookmarks en PDF)
	%\pdfbookmark[0]{\lstlistlistingname}{idx_lol}% idx_lol.0 % Bookmark en PDF
	\lstlistoflistings % Índice de listados creados con listings (opcional)
}

\newcommand{\idxAlgoritmos}{%
	\cleardoublepage
	\phantomsection % Necesario con hyperref
	\addcontentsline{toc}{chapter}{\listalgorithmcfname} % Añade la lista de algoritmos al TOC (también a bookmarks en PDF)
	\listofalgorithms % Índice de algoritmos creados con algortihm2e
}

