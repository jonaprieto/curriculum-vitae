\ProvidesClass{cv}[2015/12/25 version 0.7.0 Curriculum Vitae]
\NeedsTeXFormat{LaTeX2e}

% Extend the article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass{article}

%% Header
\RequirePackage{tabularx}
\newcommand{\header}[4]{\begin{tabularx}{\textwidth}{@{}Xl@{}}
                          #1 &#3\\
                          #2 &#4
                        \end{tabularx}}

%% Footer
\RequirePackage{fancyhdr, zref-totpages}
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{0pt}
\renewcommand{\headrulewidth}{0pt}
% Remove page number if there is only a page
\rfoot{%
  \ifnum\ztotpages=1 \else\emph{\thepage}\fi
}

%% Listing
\RequirePackage{tabularx}
\RequirePackage{hyperref}
\newcommand{\listing}[4]{\begin{tabularx}{\textwidth}{Xr}
                           {\color{plum!60!black}\textbf{#1}}       & {\color{plum!60!black}\textbf{#2}}\\
                           {\footnotesize #3} & {\footnotesize #4}
                         \end{tabularx}}

\newcommand{\education}[5]{\begin{tabularx}{\textwidth}{Xr}
                           {\color{plum!60!black}\textbf{#1}}       & {\color{plum!60!black}\textbf{#2}}\\
                           {\color{plum!65!black}\footnotesize #3} & {\footnotesize #4}\\
                           {\footnotesize #5}
                         \end{tabularx}}

\newcommand{\project}[4]{\begin{tabularx}{\textwidth}{Xr}
    {\color{plum!60!black}\textbf{#1}}   &  {\color{plum!60!black}\textbf\footnotesize #4}\\
    \hyperlink{#2}{#2}   &
  \end{tabularx}
  \begin{tabularx}{\linewidth}{Xr}
    {\footnotesize #3}
  \end{tabularx}
  }
%% Colorbox
\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\renewcommand{\colorbox}[1]{
  \begin{tcolorbox}[size=fbox
      , height=\boxheight
      , valign=center
      , sharp corners
      , colback=plum!80!black
      , coltext=white
      , colframe=boxcolor]
    {\large\textbf{#1}}
  \end{tcolorbox}}
