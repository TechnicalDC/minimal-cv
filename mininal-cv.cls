\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mininal-cv}[2023/01/08 My CV template]
\LoadClass[a4paper]{article}

% Required Packages
\RequirePackage{titlesec}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{fontspec}
\RequirePackage{fontawesome}
\RequirePackage{multicol}
\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage{array}

\setmainfont{Lato}
\setlength{\parindent}{0pt}

% Custom colors
\definecolor{lightgray}{gray}{0.8}
\definecolor{Charcoal}{HTML}{3d3d3d}
\definecolor{Ivory}{HTML}{ece9e1}

% Command to output section title headings
\newcommand{\CvSection}[1]{% The only parameter is the section text
	\vspace{1em} % Whitespace before the section title
	\colorbox{Charcoal}{\textcolor{white}{\MakeUppercase{\textbf{\large #1}}}}\\% Section title
	\vspace{1em} % Whitespace before the section title
}

% Custom command
\newcolumntype{L}{>{\raggedleft}p{0.14\textwidth}}
\newcolumntype{R}{p{0.8\textwidth}}
\newcommand{\VRule}{\color{Ivory}\vrule width 0.5pt}

\newcommand{\MakeHeader}[6]{
	{\Huge \bfseries \color{MidnightBlue} #1}
	{\Huge \bfseries \color{MidnightBlue} #2}
	\begin{tabular}{l r}
		{
			{\textcolor{MidnightBlue}{\faHome} #3}
			&
			\begin{flushright}
				\textcolor{MidnightBlue}\textbf{Email:} \hspace{5pt}#4 \\
				\textcolor{MidnightBlue}\textbf{Phone:} \hspace{10pt}#5 \\
				\textcolor{MidnightBlue}\textbf{Linked:} \hspace{10pt}#6 \\
			\end{flushright}
		}
	\end{tabular}
}

\newcommand{\CvWorkEntry}[3]{
	\begin{tabular}{L!{\VRule}R}
		{\bf#1}&{\bf #2.}\\
		&#3\\
	\end{tabular}
	\vspace{1em}
}

\newcommand{\CvEdEntry}[3]{
	\begin{tabular}{L!{\VRule}R}
		{\bf#1}&{\bf #2.}\\
		&#3\\
	\end{tabular}
	\vspace{1em}
}
