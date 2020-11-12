\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ICLSarticle}[2020/03/02 TLC]

%-------------------------------------------%
% Class arranged by		: Tsz Leong Chan	%
% Date             		: Mar, 2020			%
%-------------------------------------------%

\LoadClass[10pt,a4paper]{article}   % A4 paper and 10 pt font
\setlength\parindent{.5in}          % Indents are 0.5 inches
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%no date on \maketitle
\date{}

%single space
\usepackage{setspace}
\singlespacing

%no page number
\pagenumbering{gobble}

%margins%
\usepackage[margin=1in]{geometry}

%fix quotation environment for abstract%
\usepackage{etoolbox}
\patchcmd{\quotation}{\rightmargin}{\leftmargin .5in \rightmargin}{}{}

\RequirePackage{mathptmx} %times new roman


%custom abstract environment
\newenvironment{ICLSabstract}
	{\begin{quotation}\noindent\textbf{Abstract.}
	}
    { 
    \end{quotation}
    }
 
%custom title command
\newcommand{\ICLStitle}[1]{\title{\fontsize{14}{14}\selectfont #1}} 
    
%custom keyword command
\providecommand{\ICLSkeywords}[1]
{\begin{quotation}\noindent\textbf{Keywords:} #1\\\end{quotation}
}

%===FORMATTING SECTIONS/TITLES===%
\usepackage[explicit]{titlesec} % package for customization of headings
\usepackage{titling}            % modify \maketitle command
\usepackage[scaled]{helvet}     % Standard replacement for times new roman font

%make title 14 pt Helvetica 
\renewcommand{\maketitlehooka}{\normalfont\sffamily\Large\bfseries}
\posttitle{\par\end{center}\vskip -2em}
%change behavior of \and for authors
\renewcommand{\and}{\unskip\\}
\posttitle{\par\end{center}}

%TODO: Does this need adjustment?
\setlength{\droptitle}{-1.5cm}


% format sections
\usepackage{mfirstuc}
\titleformat{\section}
	{\normalfont\sffamily\large\bfseries}{}{0em}{#1}
\titlespacing*{\section}
	{0pt}{\baselineskip}{0pt}
  
\titleformat{\subsection}
	{\normalfont\sffamily\large}{}{0em}{#1}
\titlespacing*{\subsection}
	{0pt}{\baselineskip}{0pt}

\usepackage[normalem]{ulem}
\titleformat{\subsubsection}
	{\normalfont\sffamily}{}{0em}{\uline{#1}}
\titlespacing*{\subsubsection}
	{0pt}{\baselineskip}{0pt}
% indent first line after section  
%\usepackage{indentfirst}


% formatting for affiliations
\RequirePackage[blocks]{authblk} 
%\setlength{\affilsep}{-2em}
\renewcommand\Authfont{\fontsize{10}{10}\selectfont\normalfont}
\renewcommand\Affilfont{\fontsize{10}{10}\selectfont\normalfont}


%	enumerate environment
\RequirePackage[shortlabels]{enumitem}	% Additional customization of lists	
% Make lists spacing consistent	spacing
\setlist{itemsep=3pt}

% Defining captions as it appears in the word template.
% TODO: Should there be consistency? What should be underlined? 
\usepackage{caption}
\DeclareCaptionFormat{underlcap}{#1#2#3\par}
\DeclareCaptionLabelFormat{underlcap}{\uline{#1~#2}}
\DeclareCaptionTextFormat{underlcap}{\uline{#1}}
\DeclareCaptionLabelSeparator{underlcap}{\uline{:~}}
\captionsetup[table]{justification = raggedright,
              singlelinecheck = false,
             labelformat = underlcap,
             textformat = underlcap,
             labelseparator = underlcap}
\DeclareCaptionLabelSeparator{underlcap2}{\uline{.}~}
\captionsetup[figure]{justification = centering,
              singlelinecheck = false,
             labelformat = underlcap,
             labelseparator =underlcap2}
