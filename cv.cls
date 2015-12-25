\ProvidesClass{cv}[2015/12/25 version 0.5.0 Curriculum Vitae]
\NeedsTeXFormat{LaTeX2e}

% Extend the article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax
\LoadClass{article}

% Header
\RequirePackage{tabularx}
\newcommand{\header}[4]{\begin{tabularx}{\textwidth}{@{}Xl@{}}
                          #1 & #3\\
                          #2 & #4
                        \end{tabularx}}

% Footer
\pagestyle{empty} % Temporary

% Listing
\RequirePackage{tabularx}
\newcommand{\listing}[4]{\begin{tabularx}{\textwidth}{Xr}
                           \textbf{#1}       & \textbf{#2}\\
                           {\small\emph{#3}} & {\small\emph{#4}}
                         \end{tabularx}}

% Colorbox
\RequirePackage{tcolorbox}
\renewcommand{\colorbox}[1]{\begin{tcolorbox}[size=fbox, height=\boxheight,
                                              valign=center, sharp corners,
                                              colback=boxcolor, colframe=boxcolor]
                              {\large\textbf{#1}}
                            \end{tcolorbox}}
