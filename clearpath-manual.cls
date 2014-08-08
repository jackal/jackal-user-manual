\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{clearpathmanual}[2014/06/02 v1.0 Clearpath User Manual Class]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[]{article}

%% Setup typefaces

\RequirePackage{microtype}
\RequirePackage{fontspec}
\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}

\setmainfont{Helvetica}
\setsansfont{Helvetica}
\setmonofont{Consolas}

%% Define Clearpath colours

\RequirePackage{xcolor}
\definecolor{orange}{RGB}{243,130,55}
\definecolor{grey}{RGB}{71,71,71}
\definecolor{lightgrey}{RGB}{228,228,228}

%% Make TOC links black rather than blue
\AtBeginDocument{
\hypersetup{colorlinks=true, linkcolor=black}
}

%% Set up page formatting

\RequirePackage[letterpaper, total={6.5in, 8in}, top=1.75in, left=1.25in]{geometry}
\newcommand{\sectionbreak}{\clearpage\thispagestyle{plain}}
\pagenumbering{arabic}

%% Set up heading

\RequirePackage{titlesec}
\titleformat{\section}
  {\normalfont\sffamily\fontsize{22pt}{8pt}\bfseries\color{orange}}{\thesection}{12pt}{\MakeUppercase}
\titleformat{\subsection}
  {\normalfont\sffamily\fontsize{14pt}{6pt}\bfseries\color{grey}}{\thesubsection}{12pt}{}

%% Set up source code listings

\usepackage{upquote}
\usepackage{listings}
\lstset{
  basicstyle=\ttfamily,
  breaklines=true,
  upquote=false,
  backgroundcolor=\color{lightgrey},
  aboveskip=8pt,
  belowskip=-1pt,
  framexleftmargin=5pt,
  framexrightmargin=5pt,
  framextopmargin=2pt,
  framexbottommargin=2pt,
  frame=tb, framerule=0pt
}

\usepackage{longtable}

\usepackage{tikz}
\usetikzlibrary{calc}
\usepackage{graphicx}
\usepackage[setpagesize=false, % page size defined by xetex
            unicode=false, % unicode breaks when used with xetex
            xetex]{hyperref}
\hypersetup{colorlinks=true,urlcolor=blue}

%% Clearpath watermark in the top right corner of each page

\usepackage{background}
\backgroundsetup{
  scale=1,
  angle=0,
  opacity=1,
  color=black,
  contents={
    \begin{tikzpicture}[remember picture,overlay]
      \node at ([xshift=3.495in,yshift=3.6in] current page.north west)
      {\includegraphics[width=2.0in]{clearpath-logo.pdf}};
    \end{tikzpicture}
  }
}

\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt plus 2pt minus 1pt}
\setlength{\emergencystretch}{3em}  % prevent overfull lines

\newcommand{\manualcover}[1]{
  \thispagestyle{empty}
  \begin{tikzpicture}[remember picture,overlay]
  \node[anchor=north west,inner sep=0pt] at ($(current page.north west)+(0cm,0cm)$) {
    \includegraphics{#1}
  };
  \end{tikzpicture}
}

\endinput
