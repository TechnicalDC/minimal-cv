\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mininal-cv}[2023/01/08 My CV template]
\LoadClass[a4paper]{article}

% Required Packages
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{fontspec}
\RequirePackage{fontawesome}
\RequirePackage{multicol}
\RequirePackage{geometry}

% Formatting the \section
\titleformat{\section}
{\color{MidnightBlue}\Large\bfseries}
{}
{0em}
{}[{\titlerule[2pt]}]

\newcommand{\MakeHeader}{
	{\Huge \bfseries \color{MidnightBlue} #1}
	{\Huge \bfseries \color{MidnightBlue} #2}
	\begin{multicols}{2}
		{ \noindent
			\textcolor{MidnightBlue}{\faHome} #3
			\columnbreak
			\begin{flushright}
				\textcolor{MidnightBlue}\textbf{Email:} \hspace{5pt}#4 \\
				\textcolor{MidnightBlue}\textbf{Phone:} \hspace{10pt}#5 \\
				\textcolor{MidnightBlue}\textbf{Linked:} \hspace{10pt}#6 \\
			\end{flushright}
		}
	\end{multicols}
	}

\newcommand{\WorkEntry}{
	\begin{multicols}{2}
		{
			\textbf{#1}
			\columnbreak
			\begin{flushright}
				\textbf{#2}
			\end{flushright}
		}
		#3
	}

\newcommand{\EdEntry}{
	\begin{multicols}{2}
		{
			\textbf{#1}
			\columnbreak
			\begin{flushright}
				\textbf{#2}
			\end{flushright}
		}
		#3
	}
