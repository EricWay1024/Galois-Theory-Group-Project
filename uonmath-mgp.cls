%%
%% This is file `uonmathreport.cls',
%% a class used for projects and dissertations
%% at the University of Nottingham
%%
%% original version Chris Wuthrich 
%% last modified : Sep 29, 2021
%%
%% --------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uonmathreport}[2021/9/29 LaTeX class for University of Nottingham maths dissertations]
% base it on article.cls
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{a5paper}{\OptionNotUsed}
\DeclareOption{b5paper}{\OptionNotUsed}
\DeclareOption{letterpaper}{\OptionNotUsed}
\DeclareOption{legalpaper}{\OptionNotUsed}
\DeclareOption{executivepaper}{\OptionNotUsed}
\DeclareOption{landscape}{\OptionNotUsed}
\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{11pt}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}
\DeclareOption{notitlepage}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt,oneside,titlepage,onecolumn]{article}
% load maths
\RequirePackage{mathtools, amssymb, graphicx}
% margins required by regulations
\RequirePackage[a4paper, margin=2.5cm, top=2.5cm]{geometry}
% sans serif font for accessibility
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\renewcommand\familydefault{\sfdefault}
% double interline space required by regulations
%\PassOptionsToPackage{doublespacing}{setspace}
%\RequirePackage{setspace}

\numberwithin{equation}{section}%

% switches

\newif\if@pja
\@pjafalse
\newif\if@pjs
\@pjsfalse
\newif\if@dis
\@disfalse
\newif\if@msc
\@mscfalse
\newcommand{\PJA}{\@pjatrue}
\newcommand{\PJS}{\@pjstrue}
\newcommand{\DIS}{\@distrue}
\newcommand{\MSc}{\@msctrue}
\newcommand\academicyear[1]{\renewcommand\@academicyear{#1}}
\newcommand\@academicyear{\@latex@error{No \noexpand\academicyear given}\@ehc}
\newcommand\stream[1]{\renewcommand\@stream{#1}}
\newcommand\@stream{\@latex@error{No \noexpand\stream given}\@ehc}
\newcommand\projectno[1]{\renewcommand\@projectno{#1}}
\newcommand\@projectno{\@latex@error{No \noexpand\projectno given}\@ehc}

% title page

\renewcommand\maketitle{\begin{titlepage}%
  \newlength{\my@gap}%
  \setlength{\my@gap}{7mm}%
  \let\footnotesize\small%
  \let\footnoterule\relax%
  \let \footnote \thanks%
  \null\vfil%
  \begin{center}%
    {\Huge\bf
      \@title
     \par}%
    \vskip \my@gap%
    {\Large%
     MATH4045 - MGP -  \@stream \\
     \@academicyear \\
       \@projectno\\%
    \par}%
    \vskip \my@gap%
    {\large\it%
      School of Mathematical Sciences \\%
      University of Nottingham%
    \par}%
    \vskip \my@gap%
    {\Large \bf%
      \@author%
     \par}%
    \vskip \my@gap%
  \end{center}\par
   \vskip \my@gap%
   \noindent {\textit{
    We~have read and understood the School and University guidelines
    on plagiarism. We~confirm that this work is our own, apart from the
    acknowledged references.}}%
  \vfil\null
  
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
} 

\endinput
%%
%% End of file `uonmath-mgp-report.cls'.
