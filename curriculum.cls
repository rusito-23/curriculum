%-------------------------------------------------------------------------------
% CURRICULUM VITAE
% Author: Igor Andruskiewitsch
% Description: Defines the basic style for my Curriculum Vitae
%-------------------------------------------------------------------------------
% Acknowledgments:
%   * LinkedIn Icon: Made by Freepik from Flaticon
%   * GitHub Icon: Made by Dave Gandy from Flaticon
%   * Email Icon: Made by Freepik from Flaticon

%-------------------------------------------------------------------------------
%   CLASS DEFINITION
%-------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{curriculum}[2021/09/23 Basic Curriculum Vitae Style]
\LoadClass{article}

%-------------------------------------------------------------------------------
%   PACKAGES
%-------------------------------------------------------------------------------

\RequirePackage[margin=0.5in]{geometry}
\RequirePackage{fontspec}
\RequirePackage{textcomp}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{relsize}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{xcolor}
\RequirePackage[semibold]{libertine}

%-------------------------------------------------------------------------------
%   GENERAL SETUP
%-------------------------------------------------------------------------------

% Set up main font
\setmainfont
    [BoldFont = {Avenir Next Demi Bold}]
    {Avenir Next}

\renewcommand\labelitemi{\tiny$\bullet$}           % Tiny bullets
\setlength\multicolsep{0pt}                        % Consistent spacing for multi columns
\hypersetup{colorlinks, urlcolor={blue!50!black}}  % Consistent URL colors

%-------------------------------------------------------------------------------
%   ICONS
%-------------------------------------------------------------------------------

% Load an in-line icon that matches the current text font size
\DeclareRobustCommand*{\icon}[1]{%
  \begingroup\normalfont
  \includegraphics[height=\fontcharht\font`\B]{res/#1.png}%
  \endgroup
}

% GitHub, takes username as parameter
\DeclareRobustCommand*{\github}[1]{%
    \href{http://www.github.com/#1}{\large{github.com/#1}}
    \Large{\icon{github}}
}

% Display Email, takes full email as parameter
\DeclareRobustCommand*{\email}[1]{%
    \href{mailto:#1}{\large{#1}}
    \Large{\icon{email}}
}

% Display LinkedIn, takes username as parameter
\DeclareRobustCommand*{\linkedin}[1]{%
    \href{http://www.linkedin.com/in/#1}{\large{linkedin.com/in/#1}}
    \Large{\icon{linkedin}}
}

%-------------------------------------------------------------------------------
%   HEADER ENVIRONMENTS
%-------------------------------------------------------------------------------

% Define an environment for the curriculum header
\newenvironment{cvheader}{
    \begin{center}
}{
    \end{center}
}

%-------------------------------------------------------------------------------
%   HEADER COMMANDS
%-------------------------------------------------------------------------------

% Create the header
% The header will be made up of three titles and social info:
% Title ---------------------------------- Social Info
% Subtitle ------------------------------- Social Info
% Subtitle ------------------------------- Social Info
% Parameters:
% 1, 3, 5 -> Titles
% 2, 3, 6 -> Social Information
\DeclareRobustCommand*{\makeheader}[6]{%
    \Huge{#1} \hfill #2 \\
    \Large{#3} \hfill #4 \\
    \large{#5} \hfill #6 \\
}

%-------------------------------------------------------------------------------
%   SECTION COMMANDS
%-------------------------------------------------------------------------------

% Create a horizontal separator that takes the text width
\DeclareRobustCommand*{\separator}{
    \noindent\hrule width \textwidth
}

% Create a section item header
% Will be made up of two headings:
% Title ---------------------------------- Extra Info
% Subtitle ------------------------------- Extra Info
\DeclareRobustCommand*{\makesectionitemheader}[4]{
    \vspace{0.5ex}
    \Large{#1}
    \hfill
    \large{#2}

    \large{\textit{#3}}
    \hfill
    \large{#4}
}

%-------------------------------------------------------------------------------
%   SECTION ENVIRONMENTS
%-------------------------------------------------------------------------------

% Define an environment for the curriculum sections
% Automatically displays the separator and aligns the text
% Parameter: Section Title
\newenvironment{cvsection}[1]{
    \separator
    \begin{flushleft}
    \LARGE{#1}
}{
    \end{flushleft}
}

% Define an environment for section item list
% Sets the font and customizes the itemize margins and spacings
\newenvironment{sectionitemlist}{
    \large
    \begin{itemize}[noitemsep, leftmargin=*, topsep=0.5ex]
}{
    \end{itemize}
    \reset@font
}

% Define an environment for colonnade section item list
\newenvironment{colsectionitemlist}[1]{
    \begin{multicols}{#1}
    \begin{sectionitemlist}
}{
    \end{sectionitemlist}
    \end{multicols}
}

