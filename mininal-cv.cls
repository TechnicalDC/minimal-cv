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
\RequirePackage{hyperref}

\setmainfont{Montserrat}

\setlength{\parindent}{0pt}

\urlstyle{same}
\hypersetup{
	colorlinks=true,
	linkcolor=black,
	filecolor=black,
	urlcolor=black,
 }

% Custom colors
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

\newcolumntype{A}{>{\raggedright}p{0.4\textwidth}}
\newcolumntype{B}{p{0.5\textwidth}}
\newcommand{\VRule}{\color{Ivory}\vrule width 0.5pt}

\newcommand{\CvWorkEntry}[4]{
	\begin{tabular}{L!{\VRule}R}
		{\bf#1}&{\bf #2.}\\
		&\textit{#3}\\
		&#4\\
	\end{tabular}
	\vspace{1em}
}

\newcommand{\CvEdEntry}[3]{
	\begin{tabular}{L!{\VRule}R}
		{\bf#1}&{\bf #2.}\\
		&\textit{#3}\\
	\end{tabular}
	\vspace{1em}
}

\newcommand{\CvEntry}[2]{
	\begin{tabular}{L!{\VRule}R}
		{\bf#1}&#2.\\
	\end{tabular}
	\vspace{1em}
}

\newcommand{\CvCert}[3]{
	\begin{tabular}{L!{\VRule}R}
		{\bf#1}&{\bf#2.}\\
		&\textit{#3}\\
	\end{tabular}
	\vspace{1em}
}

\newcommand{\CvHeader}[5]{
	\begin{tabular}[t]{A B}
		{
			\colorbox{Charcoal}{\textcolor{white}{\MakeUppercase{\Huge \textbf{#1}}}}\\% Section title
			\colorbox{Charcoal}{\textcolor{white}{\MakeUppercase{\Huge \textbf{#2}}}}
		}
		&
		\begin{minipage}[t]{0.3\textwidth}
			\begin{tabular}{l l}
			\textbf{Email:}&#3\\
			\textbf{Phone:}&#4\\
				\textbf{Linkedin:}&\href{https://www.linkedin.com/in/#5}{#5}
			% \textbf{Linkedin:} \url{#5}.
			\end{tabular}
		\end{minipage}
	\end{tabular}
	\vspace{1em}
}
