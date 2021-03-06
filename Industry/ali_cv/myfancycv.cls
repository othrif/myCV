%% Copyright 2019 Othmane Rifki (othrif@gmail.com).

\ProvidesClass{myfancycv}[2017/11/22 CV Class]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

%----------------------------------------------------------------------------------------
%	 REQUIRED PACKAGES
%----------------------------------------------------------------------------------------
\RequirePackage[sfdefault]{ClearSans}

\usepackage[none]{hyphenat}
\usepackage{fontawesome}
\RequirePackage{ifthen}
\RequirePackage{xcolor}
\RequirePackage{parskip}
\RequirePackage[absolute,overlay]{textpos}

\RequirePackage[hidelinks]{hyperref}
\hypersetup{
    pdftitle={},
    pdfauthor={},
    pdfsubject={},
    pdfkeywords={},
    colorlinks=false,           % no lik border color
    allbordercolors=white       % white border color for all
}

%----------------------------------------------------------------------------------------
%	 COLOURS
%----------------------------------------------------------------------------------------
\definecolor{yt}{HTML}{c71610}
\definecolor{linkedin}{HTML}{0085AE}
\definecolor{mainblue}{HTML}{2196F3}

%----------------------------------------------------------------------------------------
%	 MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------
\pagestyle{empty} % Disable headers and footers
\setlength{\parindent}{0pt} % Disable paragraph indentation

%----------------------------------------------------------------------------------------
%	 HEADER DEFINITIONS
%----------------------------------------------------------------------------------------
\newcommand{\cvname}[1]{\renewcommand{\cvname}{#1}}
\newcommand{\cvaddress}[1]{\renewcommand{\cvaddress}{#1}}
\newcommand{\cvnumberphone}[1]{\renewcommand{\cvnumberphone}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\cvmail}{#1}}
\newcommand{\cvlinkedin}[1]{\renewcommand{\cvlinkedin}{#1}}
\newcommand{\cvgithub}[1]{\renewcommand{\cvgithub}{#1}}
\newcommand{\cvwebpage}[1]{\renewcommand{\cvwebpage}{#1}}
\newcommand{\CC}{C\nolinebreak\hspace{-.05em}\raisebox{.4ex}{\tiny\bf +}\nolinebreak\hspace{-.10em}\raisebox{.4ex}{\tiny\bf +}}
\newcommand{\cvresident}[1]{\renewcommand{\cvresident}{#1}}
\def\CC{{C\nolinebreak[4]\hspace{-.05em}\raisebox{.4ex}{\tiny\bf ++}}}

%----------------------------------------------------------------------------------------
% 	 HEADER LAYOUT
%----------------------------------------------------------------------------------------
\newcommand{\makeheader}{

  %------------------------------------------------
  \begin{center}
	\ifthenelse{\equal{\cvname}		{}}{}{ {\Huge \textcolor{mainblue}{\cvname}} } \\
	%\vspace{2mm}
	%\large
	%\ifthenelse{\equal{\cvaddress}		{}}{}{ \textcolor{darkgray}{\cvaddress} } \\
	\vspace{2mm}
	\ifthenelse{\equal{\cvnumberphone}	{}}{}{ \textnormal{\faMobile} \textcolor{darkgray}{\cvnumberphone} }
	\ifthenelse{\equal{\cvmail}			{}}{}{ \textnormal{\textcolor{yt}{\faEnvelopeO}} \href{mailto:\cvmail}{\textcolor{darkgray}{\cvmail}} }
  \ifthenelse{\equal{\cvwebpage}    {}}{}{ \textnormal{\faHome} \href{\cvwebpage}{\textcolor{darkgray}{\cvwebpage}} }
	\vspace{2mm}
	\ifthenelse{\equal{\cvgithub}		{}}{}{ \textnormal{\faGithub} \href{https://www.github.com\cvgithub}{\textcolor{darkgray}{\cvgithub}} }
	\ifthenelse{\equal{\cvlinkedin}		{}}{}{ \textnormal{\textcolor{linkedin}{\faLinkedin}} \href{https://www.linkedin.com\cvlinkedin}{\textcolor{darkgray}{\cvlinkedin}} }
  \ifthenelse{\equal{\cvresident}    {}}{}{ \textcolor{darkgray}{\cvresident} } \\
  \end{center}

  %------------------------------------------------
  %\vspace{3mm}
}

%----------------------------------------------------------------------------------------
%	 SECTION TITLE BOX
%----------------------------------------------------------------------------------------
\renewcommand{\section}[1]{
  \par\vspace{\parskip}
	{%
		\LARGE \textcolor{mainblue}{#1}%
	}%
	\hspace{1mm}\textcolor{mainblue}{\hrulefill}%
  \par\vspace{\parskip}
}


%----------------------------------------------------------------------------------------
%	 TWEAKING ITEMIZE
%----------------------------------------------------------------------------------------
\renewcommand\labelitemi{\faCheckCircleO}
\renewcommand\labelitemii{$\m@th\bullet$}
\let\tempone\itemize
\let\temptwo\enditemize
\renewenvironment{itemize}{\tempone\addtolength{\itemsep}{-0.5em}\addtolength{\itemindent}{-1.1em}}{\temptwo}


%----------------------------------------------------------------------------------------
%	 JOB/EDUCATION ENTRIES
%----------------------------------------------------------------------------------------
\newcommand*{\cventry}[7][0.25em]{
  \hspace*{-0.6em}\begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}%
    {\bfseries #4} & {\bfseries #5}\\%
    {\itshape #3\ifthenelse{\equal{#6}{}}{}{, #6}} & {\itshape #2}\\%
  \end{tabular*}%
  \ifx&#7&%
  \else{\\%
    \begin{minipage}{\textwidth}%
      \small#7%
    \end{minipage}}\fi%
  \par\addvspace{#1}}

\newcommand*{\cventryNEW}[7][0.25em]{
  \hspace*{-0.6em}\begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}%
    {\bfseries #4} {\itshape #3} & {\bfseries #5}%\\%
   % {\itshape #3} & {\itshape #2}\\%
  \end{tabular*}%
  \ifx&#7&%
  \else{\\%
    \begin{minipage}{\textwidth}%
      \small#7%
    \end{minipage}}\fi%
  \par\addvspace{#1}}

%----------------------------------------------------------------------------------------
%  Awards ENTRIES
%----------------------------------------------------------------------------------------
\newcommand*{\cventryaward}[7][0.25em]{
  \hspace*{-0.6em}\begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}%
    %{ } & {\bfseries #5}\\%
    { \itshape #3\ifthenelse{\equal{#6}{}}{}{, #6}} & {\itshape #2}\\%
  \end{tabular*}%
  \par\addvspace{#1}}

%----------------------------------------------------------------------------------------
%	 MARGINS AND LINKS
%----------------------------------------------------------------------------------------

\RequirePackage[left=1.5cm,top=1cm,right=1.5cm,bottom=1cm,nohead,nofoot]{geometry}
%\RequirePackage[left=0.75in,top=1cm,right=0.75in,bottom=0.75in,nohead,nofoot]{geometry}


\newcommand{\ttbarV}{\ensuremath{t\bar{t}V}~}
\newcommand{\ttbarW}{\ensuremath{t\bar{t}W}~}
\newcommand{\ttbarZ}{\ensuremath{t\bar{t}Z}~}
\newcommand{\TeV}{\ifmmode {\mathrm{\ Te\kern -0.1em V}}\else
  \textrm{Te\kern -0.1em V}\fi}%
\newcommand{\bluelink}[1]{\color{blue}{\underline{#1}}}