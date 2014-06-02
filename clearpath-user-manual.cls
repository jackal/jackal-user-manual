\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{clearpath-user-manual}

%% Build on the standard article class

\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

%% Setup typefaces

\RequirePackage{microtype}
\RequirePackage{fontspec}
\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}

\setmainfont{DINPro}
\setsansfont{DINPro}
\setmonofont{Consolas}

%% Define Clearpath colours

\RequirePackage{color}
\definecolor{orange}{RGB}{243,130,55}
\definecolor{grey}{RGB}{71,71,71}

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

\RequirePackage{upquote}
\RequirePackage{listings}
\lstset{basicstyle=\ttfamily,breaklines=true}

\RequirePackage{longtable}

\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{graphicx}
\RequirePackage[setpagesize=false, % page size defined by xetex
            unicode=false, % unicode breaks when used with xetex
            xetex]{hyperref}
\hypersetup{colorlinks=true,urlcolor=blue}

%% Clearpath watermark in the top right corner of each page

\RequirePackage{background}
\backgroundsetup{
  scale=1,
  angle=0,
  opacity=1,
  color=black,
  contents={
    \begin{tikzpicture}[remember picture,overlay]
      \node at ([xshift=-1.8in,yshift=-1.0in] current page.north east)
      {
        \includegraphics[width=2.2in]{clearpath-logo.pdf}
      }; % logo goes here
    \end{tikzpicture}
  }
}

\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt plus 2pt minus 1pt}
\setlength{\emergencystretch}{3em}  % prevent overfull lines

\newcommand{coverpage}[1]{
  \thispagestyle{empty}
  \begin{tikzpicture}[remember picture,overlay]
  \node[anchor=north west,inner sep=0pt] at ($(current page.north west)+(0cm,0cm)$) {
    \includegraphics{$1}
  };
  \end{tikzpicture}
}

\endinput
