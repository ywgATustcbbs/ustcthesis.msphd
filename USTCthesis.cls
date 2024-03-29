﻿%
% University of Science and Technology of China Thesis Template
%
%   $Id$
%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{USTCthesis}[2011/01/01 USTCthesis document class]

\newif\ifustc@master\ustc@masterfalse
\newif\ifustc@doctor\ustc@doctorfalse
\newif\ifustc@adobefont\ustc@adobefontfalse
\DeclareOption{master}{\ustc@mastertrue}
\DeclareOption{doctor}{\ustc@doctortrue}
\DeclareOption{adobefont}{\ustc@adobefonttrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}


\ifustc@master\relax\else
    \ifustc@doctor\relax\else
      \ClassError{USTCthesis}%
                 {You have to specify one of thesis options: master or doctor.}{}
    \fi
  \fi

\RequirePackage{times}
\RequirePackage{ccaption}
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
\RequirePackage[lined,boxed,linesnumbered,algochapter]{algorithm2e}
\RequirePackage{graphicx,psfrag}
\RequirePackage[small,bf,labelsep=space]{caption}
\RequirePackage{titlesec}
\RequirePackage{subfig}
\RequirePackage{titletoc}
\RequirePackage[left=3.17cm,right=3.17cm,top=4.0cm,bottom=4.5cm]{geometry}%left=3.17cm,right=3.17cm,top=2.54cm,bottom=2.54cm
\RequirePackage{enumerate}
\RequirePackage{multirow}
\RequirePackage{subfig,epsfig}
\RequirePackage{float}
\RequirePackage{paralist}
\RequirePackage{booktabs}
\RequirePackage{setspace}
\RequirePackage[perpage,symbol]{footmisc}
\RequirePackage{pifont}
\RequirePackage{hyperref}
\RequirePackage[numbers,sort&compress,square]{natbib}
\hypersetup{
	CJKbookmarks=true,%
	bookmarksnumbered=true,%
    bookmarksopen=true,
	breaklinks=true,
	colorlinks=true,%
	linkcolor=black,%
	citecolor=black,%
	plainpages=false,%
	pdfstartview=FitH}

\ifustc@adobefont
\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
\setCJKsansfont{Adobe Heiti Std}
\setCJKmonofont{Adobe Fangsong Std}

\setCJKfamilyfont{song}{Adobe Song Std}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{kai}{Adobe Kaiti Std}
\setCJKfamilyfont{fs}{Adobe Fangsong Std}
\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{Adobe Heiti Std}%{Adobe Heiti Std} 这里还是改成Adobe Heiti Std吧，在Linux下面SimHei貌似不行，改成这个就好了
\else
\setCJKmainfont[BoldFont={SimHei}, ItalicFont={KaiTi}]{NSimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}

\setCJKfamilyfont{song}{NSimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{kai}{KaiTi}   % XP对应 KaiTi_GB2312，Vista对应KaiTi，注意根据系统切换
\setCJKfamilyfont{fs}{FangSong} % XP对应 FangSong_GB2312，Vista对应FangSong，注意根据系统切换
\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{SimHei}%{Adobe Heiti Std}
\fi

\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\verthei}{\CJKfamily{verthei}}

%\setmainfont{Times New Roman}
\setsansfont[BoldFont={Courier New Bold}]{Courier New}
\setmonofont[BoldFont={Arial:style=Bold}]{Arial}

%Chinese font size
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}

%titleformat
%\renewcommand{\thesection}{\S\hspace{0.2em}\arabic{chapter}.\arabic{section}}
\setcounter{secnumdepth}{3}
\titleformat{\section}{\flushleft\hei\sihao}{\thesection}{1em}{}
\titleformat{\subsection}{\flushleft\hei\xiaosi}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\flushleft\hei\wuhao}{\thesubsubsection}{1em}{}
\renewcommand\chaptername{第\,\chinese{chapter}\,章}
\titleformat{\chapter}{\centering\sanhao\hei}{\chaptername}{1em}{}
\titlespacing{\chapter}{0cm}{.5cm}{1.5cm} %left above below

\newtheorem{theorem}{\textbf{\hspace{0.7cm}定理}}[section]
\newtheorem{lemma}{\textbf{\hspace{0.7cm}引理}}[section]
\newtheorem{example}{\textbf{\hspace{0.7pt}例}}[section]
\newtheorem{definition}{\textbf{\hspace{0.7pt}定义}}[section]
\newtheorem{axiom}{\textbf{\hspace{0.7pt}公理}}[section]
\newtheorem{property}{\textbf{\hspace{0.7pt}性质}}[section]
\newtheorem{proposition}{\textbf{\hspace{0.7pt}命题}}[section]
\newtheorem{corollary}{\textbf{\hspace{0.7pt}推论}}[section]
\newtheorem{remark}{\textbf{\hspace{0.7pt}注解}}[section]
\newtheorem{condition}{\textbf{\hspace{0.7pt}条件}}[section]
\newtheorem{conclusion}{\textbf{\hspace{0.7pt}结论}}[section]
\newtheorem{assumption}{\textbf{\hspace{0.7pt}假设}}[section]
\newtheorem{prove}{\textbf{\hspace{0.7cm}证明}}[section]
\renewcommand{\listalgorithmcfname}{算法}
\renewcommand{\algorithmcfname}{算法}
\renewcommand\appendixname{附录}

\renewcommand\baselinestretch{1.4}
\newcommand\ustc@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\setlength{\parskip}{0pt plus3pt minus0pt}%{1ex plus1.5ex minus0.5ex}%{0.5\baselineskip}%{1.5pt plus1pt minus1pt}
\newcommand\USTCHUGE{\fontsize{56}{67.2}\selectfont}
\newcommand\USTCLARGE{\fontsize{20}{30}\selectfont}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
\newcommand\USTCTspace{\protect\CTEX@spaceChar}
\def\ustc@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname ustc@#1\endcsname{##1}}
  \csname #1\endcsname{}}

\ustc@define@term{depart}
\ustc@define@term{degree}
\renewcommand\title[1]{\def\ustc@title{#1}}
\renewcommand\author[1]{\def\ustc@author{#1}}
\ustc@define@term{advisor}
\ustc@define@term{coadvisor}
\ustc@define@term{major}
\ustc@define@term{submitdate}
\renewcommand\maketitle{%
  \pdfbookmark[-1]{\ustc@title}{title}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  	\vspace*{-1.0cm}
      \includegraphics[scale=0.8]{ustc_logo_text.eps}
    \vskip -0.5cm
    \ifustc@doctor
      \hei\USTCHUGE {博士学位论文}
    \else
      \hei\USTCHUGE {硕士学位论文}
    \fi
    \vskip 1.5cm
      \includegraphics[scale=0.225]{ustc_logo_fig.eps}
    \vskip 0.5cm %0.75cm
      \renewcommand{\baselinestretch}{0.5}%行距
        \parbox[c]{11cm}%\begin{minipage}
        {\center\hei\yihao\ustc@title}
      %\end{minipage}
  \end{center}
  \vskip 1.0cm %0.6cm 0.7cm 2.3cm
  \begin{center}
  {\sanhao
  \begin{tabular}{lc}
    \hei{作者姓名：} & \ustc@underline[6cm]{\ustc@author}\\
    \hei{学科专业：} & \ustc@underline[6cm]{\ustc@major}\\
    \hei{导师姓名：} & \ustc@underline[6cm]{\ustc@advisor}\\
    \ifx\ustc@coadvisor\@empty\else
                     & \ustc@underline[6cm]{\ustc@coadvisor}\\
    \fi
    \hei{完成时间：} & \ustc@underline[6cm]{\ustc@submitdate}
  \end{tabular}}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

\ustc@define@term{etitle}
\ustc@define@term{eauthor}
\ustc@define@term{eadvisor}
\ustc@define@term{ecoadvisor}
\ustc@define@term{esubmitdate}
\ustc@define@term{emajor}

\newcommand\makeetitle{%
  %\pdfbookmark{英文标题}{etitle}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{0cm}
      \USTCLARGE{University of Science and Technology of China}
    \vskip -0.5cm %-0.6cm
    \ifustc@doctor
      \zihao{1} {A dissertation for doctor degree}
    \else
      \zihao{1} {A dissertation for master degree}
    \fi
    \vskip 1.5cm %1.25cm
      \includegraphics[scale=0.225]{ustc_logo_fig.eps}
    \vskip 1.5cm %2.4cm
      \renewcommand{\baselinestretch}{1}
      \bfseries\yihao\ustc@etitle
  \end{center}
  \vskip 1.0cm %1.8cm 2cm 3.1cm
  \begin{center}
  {\sanhao
  \begin{tabular}{cc}
  	Author :& \ustc@underline[6cm]{\ustc@eauthor}\\
  	Speciality :& \ustc@underline[6cm]{\ustc@emajor}\\
  	Supervisor :& \ustc@underline[6cm]{\ustc@eadvisor}\\
	\ifx\ustc@ecoadvisor\@empty\else
                     & \ustc@underline[6cm]{\ustc@ecoadvisor}\\
    \fi
  	Finished Time :& \ustc@underline[6cm]{\ustc@esubmitdate}
  \end{tabular}}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\makebookspine{
%\pdfbookmark{书\hspace{1em}脊}{bookmark}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
   \rotatebox{-90}{
   \framebox[0.97\textheight][c]{\ziju{0.17}\verthei\zihao{-4} \raisebox{10pt}{ \ustc@title
   \hspace*{20pt}  \ustc@depart \hspace*{20pt}  \ustc@author  \hspace*{30pt}{中国科学技术大学} }}
   }
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
  }

%% 定义页眉横线
\newcommand{\makeheadrule}{%
    \rule[.7\baselineskip]{\headwidth}{1.2pt}\vskip-0.97\baselineskip%
    \rule[.6\baselineskip]{\headwidth}{0.4pt}}%

%\makeatletter
\renewcommand{\headrule}{%
    {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi}%
     \makeheadrule}
%\makeatother
\newcommand{\ustc@declaretext}{%
本人声明所呈交的学位论文,是本人在导师指导下进行研究工作所取得的成果。
除已特别加以标注和致谢的地方外，论文中不包含任何他人已经发表或撰写过
的研究成果。与我一同工作的同志对本研究所做的贡献均已在论文中作了明确的说明。
}
\newcommand{\ustc@authorization}{%
作为申请学位的条件之一，学位论文著作权拥有者授权中国科学技术大学拥有
学位论文的部分使用权，即：学校有权按有关规定向国家有关部门或机构送交
论文的复印件和电子版，允许论文被查阅和借阅，可以将学位论文编入《中国
学位论文全文数据库》等有关数据库进行检索，可以采用影印、缩印或扫描等
复制手段保存、汇编学位论文。本人提交的电子文档的内容和纸质论文的内容
相一致。

保密的学位论文在解密后也遵守此规定。
}
\def\ustc@secret@newtitle{%
   □\ 公开\hspace{0.5cm}□\ 保密\ \ustc@underline[4em]\relax\hspace{0.1em}年}
\newcommand\makeauthorization{%
 % \pdfbookmark{原创与授权声明}{authorization}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}\sanhao\hei{中国科学技术大学学位论文原创性声明}\end{center}
  \par\ustc@declaretext\par
  \vskip1.0cm
  {\begin{tabular}{p{6cm}p{6cm}}
  作者签名：\ustc@underline{} & 签字日期：\ustc@underline{}
  \end{tabular}}
   \vskip2.0cm
  \begin{center}\sanhao\hei{中国科学技术大学学位论文授权使用声明}\end{center}
  \par\ustc@authorization\par
  \vskip0.5cm
  \ustc@secret@newtitle\par
  \vskip1.0cm
  {\renewcommand{\arraystretch}{2.0}%行高
  \begin{tabular}{p{6cm}p{6cm}}
  作者签名：\ustc@underline{} & 导师签名：\ustc@underline{}\\
  签字日期：\ustc@underline{} & 签字日期：\ustc@underline{}
  \end{tabular}}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\fancypagestyle{plain}{}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead[C]{\small \leftmark}
  \renewcommand{\headrulewidth}{0.7pt}

\renewcommand\frontmatter{%
    \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}
  \fancyfoot{}
  \fancyfoot[C]{\small \thepage}}

  \renewcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}
  \fancyfoot{}
  \fancyfoot[RO,LE]{\small \thepage}}

  \newenvironment{abstract}
  {\chapter{摘\hspace{1em}要}}
  {}
\newcommand\keywords[1]{%
  \vspace{3.5ex}\noindent{\hei 关键词：} #1}
\newenvironment{eabstract}
  {\chapter{ABSTRACT}}
  {}
\newcommand\ekeywords[1]{%
  \vspace{3.5ex}\noindent{\bf Keywords:~} #1}

%tableofcontents
\renewcommand{\contentsname}{目\hspace{1em}录}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter{\contentsname}%
    \renewcommand{\baselinestretch}{1}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
%% tableofcontent
\titlecontents{chapter}[0em]
  {\vspace{6bp}\hei\xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{section}[1.1\ccwd]
  {\vspace{1bp} \xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[2.3\ccwd]
  {\vspace{1bp} \xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
 {\titlerule*[0.5pc]{$\cdot$}\contentspage}

%\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
%\newdimen\bibspace
%\setlength\bibspace{3pt}
%\renewenvironment{thebibliography}[1]
%     {\chapter{\bibname}%
%\renewcommand{\baselinestretch}{0.5}
 %     \xiaowu%\linestretch{1.0}
%	  %\addtolength{\bibsep}{-0.5cm}
%      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
%      \list{\@biblabel{\@arabic\c@enumiv}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%            \leftmargin\labelwidth
%            \advance\leftmargin\labelsep
%            \@openbib@code
%            \usecounter{enumiv}%
%            \let\p@enumiv\@empty
%            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%      \sloppy
%      \clubpenalty4000
%      \@clubpenalty \clubpenalty
%      \widowpenalty4000%
%      \sfcode`\.\@m}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `thebibliography' environment}}%
%      \endlist}
%\newcommand{\bibfont}{\small}
%\def\bibpreamble{\linespread{0.2}}
\renewcommand{\bibsection}{
  \chapter{\bibname}
\renewcommand{\baselinestretch}{0.8}
  %\setlength{\linestretch}{1.0}
  \xiaowu%%\small
  %\linespread{1.36}
  \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}
%\setlength{\bibsep}{0ex}
\let\OLDappendix\appendix
\newif\if@appendixinbackmatter
\renewenvironment{appendix}
{
  \if@mainmatter
     \@appendixinbackmatterfalse\OLDappendix
  \else
      \@appendixinbackmattertrue\@mainmattertrue\OLDappendix
  \fi
	\renewcommand\chaptername{\appendixname~\thechapter}}
  {\if@appendixinbackmatter\@mainmatterfalse\fi
}
\renewenvironment{thanks}
  {\chapter{致$\quad$谢}}
  {}

\newenvironment{denotation}[1][2.5cm]{
  \chapter{主要符号对照表} % no tocline
  \noindent\begin{list}{}%
    {\vskip-30bp%\xiaosihao[1.6]
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\dimexpr\labelwidth+\labelsep} % 左边界，zym@USTC说\dimexpr在texlive2011/12上不正常，替代方法是使用calc宏包
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
   }}{\end{list}}

\endinput
%%
%% End of file `USTCthesis.cls'.
