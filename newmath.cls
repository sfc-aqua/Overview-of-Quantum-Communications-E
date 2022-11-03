\def\currversion{March 1, 2017}
%\def\currversion{Feb 22, 2017}
%\def\currversion{June 10, 2016}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  
%%  MIT Press New Math Book Style                               
%%  May 21,2016
%%  Written by Amy Hendrickson
%%  amykaren@mit.edu
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% SEARCH FOR THE NUMBER BELOW TO FIND PARTICULAR MACRO GROUP

    %% Macro Contents:
    %% 1) Declaring Options, Processing Options
    %% 2) Set Dimensions, Parameters, Defaults
    %% 3) Crop Marks
    %% 4) Font family declarations; Special use fonts
    %% 5) Running Heads
    %% 6) Footnotes
    %% 7) Table of Contents, List of Figures, List of Tables 
    %% 8) Front Matter: Title Pages, Series Page, List of Contributors
    %% 9) Part, Chapter, and Appendix Commands 
    %% 10) Counters, Header Level Counters
    %% 11) Section Commands 
    %% 12) Listing
    %% 13) Math
    %% 14) Figure and Table Captions 
    %% 15) Endmatter: Bibliography, References, Index
    %% 16) Special Use Environments: Quote, Quotation
    %% 17) Etc: Hyphenation Dictionary, \today, more
    %% 18) Additional Packages included here
    %% 19) Initial settings

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 1) Declaring Options, Processing Options

%% crop mark dimensions, needed before options declared
\newdimen\widthofcropmarks
\newdimen\raisetopcropmarks
\newdimen\raisebottomcropmarks
\newdimen\movecropmarksright

\newif\ifsixbynine
\DeclareOption{6x9}{\global\sixbyninetrue
\widthofcropmarks=6in
\advance\widthofcropmarks-2pt
\movecropmarksright=22pt
\raisetopcropmarks=-15pt
\raisebottomcropmarks=-34pt
%%%%
\parindent=8pt
\parskip0pt
\textwidth=26pc %% ok
\textheight=43pc %% ok ???
\oddsidemargin=6.5pc %12.5pc
\advance\oddsidemargin 3pt
\evensidemargin=\oddsidemargin
\topmargin4pc
\headsep 2pc
\advance\headsep by 1pt
\footskip 28pt
\headheight 12pt
\voffset=-15pt
\hoffset=0pt
\pdfpagewidth=8.5in
\pdfpageheight=11in
}

\newif\ifsevenbynine
\DeclareOption{7x9}{\global\sevenbyninetrue
\widthofcropmarks=7in
\advance\widthofcropmarks-2pt
\movecropmarksright=22pt
\advance\movecropmarksright-3pc
\raisetopcropmarks=-15pt
\raisebottomcropmarks=-34pt
%%%%
\parindent=8pt
\parskip0pt
\textwidth=30pc %% ok
\textheight=43pc %% ok 
\oddsidemargin=4.5pc %
\advance\oddsidemargin 3pt
\evensidemargin=\oddsidemargin
\topmargin4pc
\headsep 2pc
\advance\headsep by 1pt
\footskip 28pt
\headheight 12pt
\voffset=-15pt
\hoffset=0pt
\pdfpagewidth=8.5in
\pdfpageheight=11in
}

\newif\ifsevenbyninewide
\DeclareOption{7x9wide}{\global\sevenbyninewidetrue
\widthofcropmarks=7in
\advance\widthofcropmarks-2pt
\movecropmarksright=22pt
\advance\movecropmarksright-3pc
\raisetopcropmarks=-15pt
\raisebottomcropmarks=-34pt
%%%%
\parindent=8pt
\parskip0pt
\textwidth=32pc %% ok
\textheight=43pc %% ok
\oddsidemargin=3.5pc %
\advance\oddsidemargin 3pt
\evensidemargin=\oddsidemargin
\topmargin4pc
\headsep 2pc
\advance\headsep by 1pt
\footskip 28pt
\headheight 12pt
\voffset=-15pt
\hoffset=0pt
\pdfpagewidth=8.5in
\pdfpageheight=11in
}

\newif\ifeightbynine
\DeclareOption{8x9}{\global\eightbyninetrue
\widthofcropmarks=8in
\movecropmarksright=-14pt
\advance\movecropmarksright-3pc
\raisetopcropmarks=-15pt
\raisebottomcropmarks=-34pt
%%%%
\parindent=8pt
\parskip0pt
\textwidth=30pc %% ok
\textheight=43pc %% ok
\oddsidemargin=7.5pc %
\advance\oddsidemargin 3pt
\evensidemargin=\oddsidemargin
\topmargin4pc
\headsep 2pc
\advance\headsep by 1pt
\footskip 28pt
\headheight 12pt
\voffset=-15pt
\hoffset=-4pt
\pdfpagewidth=8.5in
\pdfpageheight=11in
}

\newif\ifmanuscript
\DeclareOption{manuscript}{\global\manuscripttrue}

%% to turn on hyperref
\newif\ifhyper
\DeclareOption{hyper}{\global\hypertrue}

\ProcessOptions

%% <==== End Setting Options 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 2) Set Dimensions, Parameters, Defaults

  %% \topmargin space between top of page and running head

  %% \headheight height of running head

  %% \headsep  space between running head and text

  %% \topskip  space between top of text and baseline of first line
  %%            of text

  %% \footskip space between text and baseline of first footnote

  %% \columnsep space between two column text

  %% \columnseprule width of optional rule between columns, usually set to 0pt

  %%  \footnotesep Distance between two footnotes

  %%  \skip\footins Distance between text and footnote

  %%  \floatsep Distance between float and another
  %%       float for single col floats.

  %%  \textfloatsep Distance between float and text at top
  %%                     or bottom of page.

  %%  \intextsep  Distance between float and text if float is mid page
  %%                 or mid column

  %%  \dblfloatsep  For float spanning both columns in two column text,
  %%  above or below both columns, space between float and and float.




\topskip  10pt


\columnsep 10pt
\columnseprule 0pt

\footnotesep 9.65pt
\skip\footins 20pt

\floatsep 14pt %plus 2pt minus 2pt
\textfloatsep 10pt %plus 2pt minus 4pt
\intextsep 12pt %plus 2pt minus 2pt

\dblfloatsep 12pt plus 2pt minus 2pt
\dbltextfloatsep 20pt plus 2pt minus 4pt

  %% float placement, used by output routine
\@fptop 0pt plus 1fil
\@fpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil
\@dblfptop 0pt plus 1fil
\@dblfpsep 8pt plus 2fil
\@dblfpbot 0pt plus 1fil

  %% page makeup, used by output routine and also for
  %% splitting boxes
\maxdepth=4pt   %% 2e default is .5\topskip

  %% When using \marginpar, how wide can marginal note be?

\marginparwidth .75in

  %% When using \marginpar, how much horizontal space between marginal
  %% note and text

\if@twocolumn
 \setlength\marginparsep {10\p@}
\else
  \setlength\marginparsep{7\p@}
\fi

  %% When to push marginal note on to next page, minimum vertical space between
  %% two marginal notes

\setlength\marginparpush{5\p@}

  %% space added before trivlist, which is used in many other
  %% macros, (for instance, verbatim environment) 
  %% if macro is called in vertical mode, otherwise only parskip
  %% is added. Can set this without stretch if you don't like
  %% the stretchy space added.

\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}

  %% Comment
  %% Setting parameters that control float placement
  %% 
  %% \topnumber counter holds the maximum number of
  %% floats that can appear on the top of a text page.
  %% 
  %% \topfraction indicates the maximum part of a text page that can be
  %%     occupied by floats at the top.
  %% 
  %% \bottomnumber counter holds the maximum number of
  %%     floats that can appear on the bottom of a text page.
  %% 
  %% \bottomfraction indicates the maximum part of a text page that can be
  %%     occupied by floats at the bottom.
  %% 
  %% \totalnumber indicates the maximum number of floats that can appear on
  %%     any text page.
  %% 
  %% \textfraction indicates the minimum part of a text page that has to be
  %%     occupied by text.
  %% 
  %% \floatpagefraction indicates the minimum part of a page that has to be
  %%     occupied by floating objects before a `float page' is produced.
  %% 
  %% \dbltopnumber counter holds the maximum number of
  %%     two column floats that can appear on the top of a two column text
  %%     page.
  %% 
  %% \dbltopfraction indicates the maximum part of a two column text page that
  %%     can be occupied by two column floats at the top.
  %% 
  %% \dblfloatpagefraction indicates the minimum part of a page that has to be
  %%     occupied by two column wide floating objects before a `float
  %%     page' is produced.
  %%%

\setcounter{topnumber}{10}
\def\topfraction{.9}
\setcounter{bottomnumber}{10}
\def\bottomfraction{.1}
\setcounter{totalnumber}{10}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}
  %%%

%%%%%%%%%%%%%
%% Setting Array and Table Spacing
  %% distance between columns in array
\setlength\arraycolsep{5\p@}

  %% distance between columns in tabular
\tabcolsep 6pt

  %% width of lines in array
\setlength\arrayrulewidth{.4\p@}

  %% space between two lines in array
\setlength\doublerulesep{2\p@}

  %% space between two lines in tabular
\setlength\tabbingsep{\labelsep}
%%%%%%%%%%%%%%

  %% Minipage
  %% minipage space
\skip\@mpfootins = \skip\footins

  %% Framebox \fbox{} or \framebox{}
  %% space between line in framebox and text within it
\setlength\fboxsep{3\p@}

  %% width of ruled line in framebox
\setlength\fboxrule{.4\p@}


  %% Makes sure that there will not be any widow or club lines,
  %% smaller numbers allow them occassionally, but you probably need
  %% these set to 10000 so that there are never any

\widowpenalty10000
\clubpenalty10000


  %% How many levels deep do you want sections to be numbered-- higher number
  %% means more levels will be numbered. Here was are asking only for
  %% sections to be numbered, not subsections, or subsubsection etc.
\setcounter{secnumdepth}{3}

  %% How many levels of section heads do you want to appear in the
  %% table of contents: here we are asking for only parts, chapters and
  %% sections to appear.
\setcounter{tocdepth}{2} %% ?

  %% To make left and right page position differently, and have
  %% running heads be different on even and odd pages
\@twosidetrue  

  %% Marginal notes should be on the left on even numbered pages; on
  %% right on odd numbered pages.
\@mparswitchtrue

  %% Starting with one column text
\@twocolumnfalse

  %% openbib will allow separate lines for parts of bibliography
  %% entries, default is to run different parts of bib entry into a
  %% paragraph form.

\newif\if@openbib
\@openbibfalse

  %% Conditionals that we can set and use later
\newif\if@openright
\newif\if@mainmatter 
\newif\if@restonecol
\newif\if@titlepage
\newif\ifdraft

  %% Start new chapter on right side
\@openrighttrue

  %% Comment
  %% Set Names, to be used later, usually in more than one
  %% macro.

\newcommand{\contentsname}{Contents}
\newcommand{\bibname}{Bibliography}
\newcommand{\indexname}{Index}
\newcommand{\figurename}{Figure}
\newcommand{\tablename}{Table}
\newcommand{\partname}{Part}
\newcommand{\chaptername}{Chapter}
\newcommand{\appendixname}{Appendix}
\newcommand{\tablelistname}{Tables}
\newcommand{\figurelistname}{Figures}

%%% <== end parameters, dimensions and defaults
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3) Crop Mark Macros
%% LaTeX2e Cropmark Macros
%% Copyright Amy Hendrickson, TeXnology Inc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\ifcropmarkson
\global\cropmarksontrue

\def\topcropmarks{\ifcropmarkson
\vtop to0pt{\vss%
\hbox to0pt{\hskip\movecropmarksright\hbox to0pt{\hss%
\hbox to2pc{\hrulefill\hskip3pt}\raise6pt\hbox{\vrule height 2pc}}%
\hskip.5\widthofcropmarks\hbox to 0pt{\hss\vbox to
0pt{\vss\copy\cropmarktext\vskip5pt}\hss}\hskip.5\widthofcropmarks%
\hbox to0pt{%
\raise6pt\hbox{\vrule height 2pc}\hbox to2pc{\hskip3pt\hrulefill}\hss}\hss}%
\vskip\raisetopcropmarks}%
\fi}

\def\bottomcropmarks{\ifcropmarkson
\vtop to0pt{\vskip-\raisebottomcropmarks
\hbox to0pt{\hskip\movecropmarksright\hbox to0pt{\hss%
\hbox to2pc{\hrulefill\hskip3pt}\lower6pt\hbox{\vrule depth 2pc height
0pt}}%
\hskip\widthofcropmarks%
\hbox to0pt{%
\lower6pt\hbox{\vrule depth 2pc height0pt}\hbox
to2pc{\hskip3pt\hrulefill}\hss}\hss}%
\vss}\fi}

\newif\ifnocropmarks
\def\nocropmarks{\global\nocropmarkstrue}

\def\@outputpage{\begingroup \let \protect \noexpand \@resetactivechars 
\global \let \@@if@newlist 
\if@newlist \global \@newlistfalse \@parboxrestore%
\shipout
\vbox {\ifnocropmarks\else\topcropmarks\fi
\set@typeset@protect \aftergroup \endgroup \aftergroup \set@typeset@protect 
\if@specialpage \global \@specialpagefalse \@nameuse {ps@\@specialstyle }\fi 
\if@twoside \ifodd \count \z@ \let \@thehead \@oddhead \let \@thefoot \@oddfoot 
\let \@themargin \oddsidemargin \else \let \@thehead \@evenhead \let \@thefoot \@evenfoot 
\let \@themargin \evensidemargin \fi \fi \reset@font \normalsize \normalsfcodes
 \let \label \@gobble \let \index \@gobble \let \glossary \@gobble 
\baselineskip \z@skip \lineskip \z@skip \lineskiplimit \z@ \@begindvi 
\vskip \topmargin \moveright \@themargin \vbox {\setbox \@tempboxa 
\vbox to\headheight {\vfil \color@hbox \normalcolor \hb@xt@ \textwidth {\@thehead }\color@endbox }
\dp \@tempboxa \z@ \box \@tempboxa \vskip \headsep  \box
\@outputbox \baselineskip \footskip 
\color@hbox \normalcolor \hb@xt@ \textwidth {\@thefoot }\color@endbox
}\ifnocropmarks\else\bottomcropmarks\fi}%
\global \let \if@newlist 
\@@if@newlist \global \@colht \textheight \stepcounter {page}\let
\firstmark \botmark }

%\long\def\docropmarks{\let\saveshipout\shipout
%\long\def\shipout\vbox##1{\saveshipout\vbox{\topcropmarks##1\bottomcropmarks}}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4) Font Families, Special Use Fonts
\newcommand{\@ptsize}{}

%%% Font Families
  %% Comment
  %% Set font sizes, normal baselineskip, for the range of sizes, 
  %% changing baselineskip to be larger if draft option is true
  %% \setfontsize takes the first arg as the size of the font and
  %% the second as the size of the baselineskip
  %% \abovedisplayskip and \belowdisplayskip is the space before and
  %% after an equation, adjusted in some sizes. 

  %% \Huge 25pt
  %% \huge 20pt
  %% \LARGE 17pt
  %% \Large 14pt
  %% \large 13pt
  %% \normalsize 11 pt font
  %% \small 10pt
  %% \footnotesize 9pt
  %% \scriptsize 7pt font
  %% \xscriptsize 6pt font
  %% \tiny 5pt font



% 10pt /13pt baselineskip
\newdimen\manuSkip
\manuSkip=23pt
\renewcommand\normalsize{%
\ifmanuscript
   \@setfontsize\normalsize\@xpt{\manuSkip}
\else
   \@setfontsize\normalsize\@xpt{13}
\fi
   \abovedisplayskip 6\p@ %\@plus2\p@ \@minus2\p@
   \abovedisplayshortskip \z@ %\@plus3\p@
   \belowdisplayshortskip 6\p@ %\@plus3\p@ \@minus3\p@
   \belowdisplayskip 8pt
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
\ifmanuscript
   \@setfontsize\small\@ixpt{\manuSkip}%
\else
   \@setfontsize\small\@ixpt{11}%
\fi
   \abovedisplayskip 8.5\p@ % \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ %\@plus2\p@
   \belowdisplayshortskip 4\p@ %\@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
\ifmanuscript
   \@setfontsize\footnotesize\@viiipt{\manuSkip}%
\else
   \@setfontsize\footnotesize\@viiipt{9.5}%
\fi
   \abovedisplayskip 4pt
   \abovedisplayshortskip \z@ %\@plus\p@
   \belowdisplayshortskip\abovedisplayshortskip
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip 1pt
}
\newcommand{\xscriptsize}{\@setfontsize\scriptsize\@vipt\@viipt}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\newcommand{\HHuge}{\@setfontsize\HHuge{36pt}{36}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\@maxdepth\maxdepth
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand{\mit}{\@fontswitch{\relax}{\mathnormal}}

%%%%%%%%%%%% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Using Berry naming conventions.
%%% Will work the same on Mac, PC, and Unix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Times-Roman
%------------------
%% Berry Names:
 \def\timesroman{ptmr}
 \def\timesbold{ptmb}
 \def\timesitalic{ptmri}
 \def\timesbolditalic{ptmbi}

\xdef\timesroman{\timesroman\space}
\xdef\timesbold{\timesbold\space}
\xdef\timesitalic{\timesitalic\space}
\xdef\timesbolditalic{\timesbolditalic\space}

%% Helvetica
\def\helvetica{phvr}
\def\helveticaoblique{phvro}
\def\helveticabold{phvb}
\def\helveticaboldoblique{phvbo}
\def\helveticamedium{phvr} %% Use helvetica unless you have helvetica-medium

\xdef\helvetica{\helvetica\space}
\xdef\helveticaoblique{\helveticaoblique\space}
\xdef\helveticabold{\helveticabold\space}
\xdef\helveticaboldoblique{\helveticaboldoblique\space}
\xdef\helveticamedium{\helveticamedium\space}

%% Courier
\def\courier{pcrr}
\def\courieroblique{pcrro}
\def\courierbold{pcrb}
\def\courierboldoblique{pcrbo}

\xdef\courier{\courier\space}
\xdef\courieroblique{\courieroblique\space}
\xdef\courierbold{\courierbold\space}
\xdef\courierboldoblique{\courierboldoblique\space}

%\font\boldtt=pcrb at 8pt 
%\font\tt=pcrr at 8pt 
\font\verbatim@font=cmtt10 at 9pt% \courier at 8.5pt (too light)

%\usepackage[T1]{fontenc}
%\usepackage{tgpagella}
%\usepackage{euler}
%\usepackage{mathpazo}

%% Special Use Fonts 
%%
%% Table of Contents
\font\tocchapnumfont=\timesbold at 14pt
\font\tocchapfont=\timesbold at 12pt
\font\tocsectnumfont=\timesbold at 10pt
\font\tocfmfont=\timesroman at 9pt
\font\tocfonts=\timesroman at 10pt

%% Running heads
\font\runningheadfont=\timesitalic at 9pt
\font\foliofont=\timesroman at 9pt % 

%% Book Title Page
\font\titlefont=\timesbold at  12pt
\font\subtitlefont=\timesroman at 10.5pt
\font\authorfont=\timesroman at 10.5pt
\font\imprintfont=\timesroman at 10pt

\font\dedicationfont=\timesitalic at 14pt
\font\prefaceauthorfont=\timesroman at 10pt

%% Part Title
\font\partfont=\timesbold at 11pt 
\font\partnumberfont=\timesroman at 36pt

%% Chapter Title 
\font\starchapterfont=\timesbold\space at 11pt
\font\chapternumberfont=\timesroman at 36pt
\font\xchaptertitlefont=\timesbold at 11pt
\def\chaptertitlefont{\xchaptertitlefont \baselineskip=13pt}

%% Section heads
\font\sectionfont=\timesbold at 10pt
\font\subsectionfont=\timesbold at 10pt
\font\subsubsectionfont=\timesbold at 10pt
\font\paragraphfont=\timesbold at 10pt

%% Appendix title
\font\appendixtitlefont=\timesbold at 12pt

%% Caption 
\font\fignumfont=\timesbold at 9pt
\font\tabnumfont=\timesbold at 9pt 
\font\figtextfont=\timesroman at 9pt

%% Table fonts
\def\tablefontsize{\small} 
\def\tablefootnotesize{\small}

%% References/Bibliography
\def\bibfontsize{\small}

%% Text fonts
\font\bit=\timesbolditalic at 8pt
\font\smallcaps=cmcsc10 at 10pt

%% Theorem font
\font\theoremfont=cmcsc10 at 10pt
\font\theoremtextfont=\timesitalic at 10pt
\font\prooffont=\timesitalic at 10pt
\font\demofont=\timesitalic at 10pt

%% Index letters
\font\iletterfont=\helveticabold at 12pt



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5) %% Running heads ===>>>

  %% unless we need these, leave these uncommented
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble

  %% \iftitle: conditional set true in chapter openings, used here to
  %% turn off running heads and turn on running feet, and resetting
  %% for next page.

\newif\iftitle

  \def\ps@headings{%
      \def\@oddfoot{\hfill\global\titlefalse}
       \let\@evenfoot\@empty
      \def\@evenhead{\foliofont\thepage\hfil\runningheadfont \leftmark}%
      \def\@oddhead{\iftitle\else{\runningheadfont \rightmark}\hfil\foliofont\thepage\fi}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {{%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \@chapapp\ \thechapter\ \ \ \ %
          \fi%
        \fi%
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright {{%
        \ifnum \c@secnumdepth >\z@
          \thesection\ \ \ \ \fi%
        ##1}}}}

  %% After ps@headings is defined, now we use it to activate the definitions
\ps@headings

  %% If you want to supply a different chapter or section running head,
  %% use these commands after the chapter or section command.
\def\shortchaprunninghead#1{\chaptermark{#1}}
\def\shortsectrunninghead#1{\sectionmark{#1}}

\markboth{}{}
  %% start with roman page numbers, switch over to Arabic when
  %% the first part or chapter starts.
\pagenumbering{roman}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6) Footnotes 

  %% save these definitions so that we can use them if
  %% we don't like the redefinition
\let\savefootnote\footnote
\let\savefootnotetext\footnotetext

  %%% ruled line above footnote

  \renewcommand{\footnoterule}{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}

\let\savefootnoterule\footnoterule

% turn off footnote rule, line at bottom of page above footnotes
  \let\footnoterule\relax

% can turn it back on by uncommenting
% \let\footnoterule\savefootnoterule

% Start footnotes renumbering
\@addtoreset{footnote}{chapter}

% Making footnote not indent 
\long\def\@makefntext#1{%
\noindent\@makefnmark\,#1}

\newcount\notenum
\newcount\endnotenum

\long\def\note#1{%%%% For notes at end of chapter
\global\advance\notenum by 1\relax\leavevmode\ [\the\notenum]%
\global\advance\endnotenum by 1\relax%
\long\expandafter\gdef\csname note\the\notenum\endcsname{%
{\leftskip=1.5pc\small\hsize=\textwidth\relax%
\noindent\llap{\hbox to 1.5pc{\the\notenum.\hfill}}%
#1\strut\vskip1sp}\vskip1pt}%
%%%% now for endnotes:
\ifnum\notenum=1\relax%
\immediate\write\@auxout{\string\expandafter\string\gdef\string\csname\space
chapendnote\the\endnotenum\string\endcsname{%
%% The commented out part Might be good, but malfunctioned on first small test.
\ifnum\c@chapter>2 \string\newpage\fi
%\else
%\ifappendon
%\string\newpage
%\fi\fi
%%
%\string\markboth\string{Notes for Chapter \the\c@chapter\string}
%\string{Notes for Chapter \the\c@chapter\string}
%\else
%\ifnum\c@chapter<1
%\string\markboth\string{Notes for Frontmatter\string}
%\string{Notes for Frontmatter\string}
%\else
%\ifnum\c@chapter=1
%\string\markboth\string{Notes for Chapter \the\c@chapter\string}
%\string{Notes for Chapter \the\c@chapter\string}
%\fi\fi
\string\goodbreak\string\vskip14pt\string\penalty-8000%
{\string\normalsize\string\bf\space Notes for
\ifnum\c@chapter>0
\@chapapp\space
\ifappendon\Alph{chapter}\else\arabic{chapter}\fi%
\else Frontmatter\fi}\string\vskip6pt\global\notenum=1}}\fi%
\long\expandafter\gdef\csname endnote\the\endnotenum\endcsname{%
{\leftskip=1.5pc\small\hsize=\textwidth\relax%
\noindent\llap{\hbox to 1.5pc{\the\notenum.\hfill}}%
#1\strut\vskip1sp}\vskip1pt}}

\def\chapternotes{\ifnum\notenum>0
\section*{\small\bfseries\itshape Notes for Chapter \arabic{chapter}}
\markright{Notes for Chapter \arabic{chapter}}
\addcontentsline{toc}{section}{\protect\numberline{}Chapter Notes}
\parindent=0pt 
\parskip=4pt
\notenum=0
\noindent\loop\global\advance\notenum by1\relax%
\expandafter\ifx\csname note\the\notenum\endcsname\relax%
\else
\csname note\the\notenum\endcsname\relax
\expandafter\gdef\csname note\the\notenum\endcsname{\relax}
\repeat
\fi
\global\notenum=0\relax
\vskip1sp
\leftskip=0pt\relax}

\def\endnotes{\chapter*{Notes}
\markboth{Notes}{Notes}
\parindent=0pt 
\parskip=4pt
\endnotenum=0
\noindent\loop\global\advance\endnotenum by1\relax%
\global\advance\notenum by 1
\expandafter\ifx\csname endnote\the\endnotenum\endcsname\relax%
\else
\expandafter\csname chapendnote\the\endnotenum\endcsname
\expandafter\csname endnote\the\endnotenum\endcsname
\repeat
\vskip1sp
\leftskip=0pt\relax}

  %%% <<<=== End Footnotes, Endnotes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7) Table of Contents, List of Figures, List of Tables

  %% How wide should the box be that contains the page number?
\newcommand{\@pnumwidth}{4pc}% ??

  %%   \@tocrmarg  : Right margin indentation for all but last line of
  %%                multiple-line entries.
\newcommand{\@tocrmarg} {2.55em  plus .5in}

  %% How much space between dots in the dotted line in the TOC?
\newcommand{\@dotsep}{4.5}

  %% To format the Table of Contents
  %% Start on odd page, use schapter to format the heading,
  %% \@mkboth sends info to running heads
  %% \tocfonts are used to format table of contents
  %% \hypenpenalty=10000 means no hyphenation
  %% \@startoc{toc} from LaTeX code, will bring in material in *.toc file.

\newif\iftoc
\newcommand{\tableofcontents}{%
\startonoddpage
{\toctrue
    \chapter*{Contents}}
        \@mkboth{\contentsname}{\contentsname}%
\bgroup\parskip=0pt
{\tocfonts
\hyphenpenalty=10000
    \@starttoc{toc}%
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\markboth{}{}
\global\spaceaboveline=2pt    }

  %% Very similar to table of contents
\newcommand{\listoffigures}{%
\startonoddpage
\global\titletrue
{\toctrue \chapter*{List of Figures}}
\addcontentsline{toc}{starchap}{List of Figures}
\markboth{List of Figures}{List of Figures}
\vskip3pt
\bgroup\parskip=5pt
{\ifsixbynine\else\hsize=30pc\fi
\small\tocfonts \parindent=0pt
\let\numberline\fignumberline
\hyphenpenalty=10000
    \@starttoc{lof}%
}
\egroup
\newpage
\markboth{}{}
    }

\def\fignumberline#1{\noindent\hskip1pc
\llap{\tocsectnumfont#1}\hskip1pc}%

  %% Very similar to table of contents
\newcommand{\listoftables}{%
\startonoddpage
\global\titletrue
{\toctrue
    \chapter*{List of Tables}}
\addcontentsline{toc}{starchap}{List of Tables}
        \@mkboth{List of Tables}{List of Tables}%
\vskip3pt
\bgroup\parskip=5pt
{\ifsixbynine\else\hsize=30pc\fi
\small\tocfonts \parindent=0pt
\let\numberline\fignumberline
\hyphenpenalty=10000
    \@starttoc{lot}%
}
\egroup
\newpage
\markboth{}{}
    }

\def\l@figure{\figtabtocline{2}{2pc}{2.3em}}
\let\l@table\l@figure


  %% This macro used in l@figure and l@table as well as l@section and lower
  %% levels of section heads in the table of contents

% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE} :
%   Macro to produce a table of contents line with the following
%   parameters:
%     LEVEL    : If LEVEL > \c@tocdepth, then no line produced.
%     INDENT   : Total indentation from the left margin.
%     NUMWIDTH : Width of box for number if the TITLE has a
%                \numberline command.
%                As of 25 Jan 88, this is also the amount of extra indentation
%                added to second and later lines of a multiple line entry.
%     TITLE    : Contents of entry.
%     PAGE     : Page number.
%
%  Uses the following parameters, which must be set by the document style.
%  They should be defined with \def's.
%    \@pnumwidth : Width of box in which page number is set.
%    \@tocrmarg  : Right margin indentation for all but last line of
%                  multiple-line entries.
%    \@dotsep    : Separation between dots, in mu units.  Should be \def'd to
%                  a number like 2 or 1.7
%


\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip.75in% \@tocrmarg 
\parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     #4\nobreak
%     \leaders\hbox{$\m@th
 %       \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
  %      mu$}
\hfill
     \nobreak
     \hb@xt@\@pnumwidth
{\hss\normalfont \normalcolor #5}%
     \par}%
  \fi}

\def\figtabtocline#1#2#3#4#5{%
    \vskip \z@ \@plus.2\p@
    {\leftskip 0pt\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent 0pt\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
%     \leaders\hbox{$\m@th
 %       \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
  %      mu$}
\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hss\normalfont \normalcolor #5}%
     \par}%
}


\def\numberline#1{\hb@xt@\@tempdima{#1\hfill}}

\newcount\c@tocchapnum

  %%%% Formating entries in List of Tables, Figures, and Table of Contents,
  %% \l@xxx will format xxx in these environments; ie, l@part formats part

  %% Format of Part when it appears in TOC
\def\l@part#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 11pt 
     \setlength\@tempdima{24pt}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
{\bf\uppercase{#1}}\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss \bf% #2
}\par
      \penalty\@highpenalty
    \endgroup
  \fi\vskip6pt}

  %% Format of Chapter when it appears in TOC
\def\l@chapter#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 6pt 
     \setlength\@tempdima{24pt}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
  {\bf #1}\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss \rm #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi\vskip1pt}

\def\l@chapauthor#1#2{\vskip-\lastskip\vskip2pt\noindent\hskip24pt\rm\relax#1\vskip2pt}

  %% This is to format entries that use \chapter*, like Table of Contents,
  %% Index, etc.
\def\l@starchap#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
\vskip1pt
     \setlength\@tempdima{48pt}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
{\hskip2pc\relax#1}\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss\rm #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

  %% Make starchapter work the same as starchap
%\let\l@starchapter\l@starchap


%% For chapter appendix
%\def\l@chapapp#1#2{\vskip1sp\noindent\rm\relax#1\vskip1sp}


  %% Format Appendix entries in TOC
\def\l@appendix#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 20pt \@plus\p@
     \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
   {\large\bf #1}\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss\bf% #2
   }\par
      \penalty\@highpenalty
    \endgroup
  \fi}

  %% Here we determine how much sections, subsections, etc, are indented
% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}

\def\l@partintro{\vskip-7pt\@dottedtocline{1}{24pt}{24pt}}%was 2.3em

\def\l@section{\vskip1pt\@dottedtocline{1}{24pt}{24pt}}%was 2.3em
\def\l@subsection{\vskip1pt\@dottedtocline{2}{48pt}{30pt}}% was 24pt
\def\l@subsubsection{\vskip1pt\@dottedtocline{3}{7.0em}{36pt}}%{4.1em}}
\def\l@paragraph{\vskip1pt\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}


%%% <<=== end TOC

% 8) Front Matter: Title Pages, Preface, Introduction==>>

 %% Used below, to make sure that page starts on odd number
\def\startonoddpage{\clearpage
\ifodd\c@page\else\null\thispagestyle{empty}\newpage\fi}

\def\emptypage{\newpage\thispagestyle{empty}\null\newpage}
\def\blankpage{\newpage\thispagestyle{empty}\null\newpage}

  %% This is an easy way to save the value of title, subtitle, or (optional)
  %% edition and author. The argument is used as the body of a definition
  %% or definitions that we can call later.

\def\title#1{\def\thetitle{#1}}
\def\subtitle#1{\def\thesubtitle{#1}}
\def\edition#1{\def\theedition{#1}}
\def\author#1{\def\theauthor{#1}}
\def\editor#1{\def\theauthor{#1}}

%% in case there is no subtitle or edition:
\let\thesubtitle\relax
\let\theedition\relax

\def\titlepage{\startonoddpage\thispagestyle{empty}
\vbox to\textheight{\parindent=0pt
{\vrule height 14pt width0pt\raggedright\titlefont\thetitle

}
\vskip1sp
{\vrule height 34pt width0pt\subtitlefont\thesubtitle}
\vskip1sp
\expandafter\ifx\csname theedition\endcsname\relax
\else
{\vrule height 20pt width0pt\authorfont \theedition}
\fi

{\vrule height 108pt width0pt\authorfont \theauthor}

\vfill\imprintfont
 The MIT Press\\
 Cambridge, Massachusetts\\
 London, England
}}

\long\def\copyrightpage{%
\newpage\thispagestyle{empty}\bgroup\parindent=0pt \parskip=18pt
\vglue12pc\small\relax}

\def\endcopyrightpage{\vskip1sp\egroup\newpage}

\def\halftitlepage{\thispagestyle{empty}
{\raggedright\titlefont\thetitle\vskip1pt}
\newpage}

%% immediately after halftitlepage
\def\seriespage{\thispagestyle{empty}\parindent=0pt\parskip=0pt
\def\title##1{\vskip6pt{\bf##1}}
\def\author##1{\vskip1sp{\rm ##1}}
}
\def\endseriespage{\newpage}
\def\seriestitle#1{{\normalsize\bf MIT PRESS BOOK SERIES\\[12pt] #1}}
\def\serieseditor#1{\vskip1sp{\normalsize\rm  #1}\vskip18pt}

\def\dedication#1{\startonoddpage{\parindent=0pt\parskip=6pt
\thispagestyle{empty}\vglue12pc\normalsize #1\vskip1sp}\newpage}

\def\epigraphpage{%
\bgroup
\startonoddpage\def\epigraph##1##2{\noindent%
\vrule height 20pt width0pt\llap{``}{\it ##1}\\
---##2}
\parindent=0pt\parskip=6pt
\thispagestyle{empty}\vglue11.25pc\small
}
\def\endepigraphpage{\egroup\newpage}

\def\epigraph#1#2{\vskip9pt\noindent{\small\it\llap{``}#1}\vskip1sp
\noindent{\small\rm ---#2}\vskip1pt}

\def\abstract{\vskip9pt\bgroup\small\noindent{\bf Abstract.} }
\def\endabstract{\vskip1sp\egroup\vskip9pt}

\def\preface{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{Preface}
  %% send Preface to table of contents, formatted with macro \l@starchap
  %% defined below
%\addcontentsline{toc}{starchap}{Preface}
  %% title true turns off headline, turns on footline for page number
\global\titletrue
  %% for running heads
\markboth{Preface}{Preface}
\def\author##1{\vskip6pt\hbox to\textwidth{\hfill\it##1}\vskip1pt}
\def\date##1{\vskip-.5\parskip\hbox to\textwidth{\hfill\it##1}\vskip1pt}
}

\def\endpreface{\newpage\markboth{}{}}

\def\acknowledgments{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{Acknowledgments}
  %% send acknowledgment to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{Acknowledgments}
  %% title true turns off headline, turns on footline for page number
\global\titletrue
  %% for running heads
\markboth{Acknowledgments}{Acknowledgments}}

\def\endacknowledgments{\newpage\markboth{}{}}

\def\acknowledgment{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{Acknowledgment}
  %% send acknowledgment to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{Acknowledgment}
  %% title true turns off headline, turns on footline for page number
\global\titletrue
  %% for running heads
\markboth{Acknowledgments}{Acknowledgment}}

\def\endacknowledgment{\newpage\markboth{}{}}


  %% Comment
  %% We set up the argument of \prefaceauthor{} to start new
  %% lines with \\ and be pushed to the right of the page, but
  %% be left aligned, by putting argument in an halign table
  %% and pushing the table to the right

\def\prefaceauthor#1{\vskip1pc\hbox to\textwidth{\hfill\prefaceauthorfont
\let\\=\cr
\vtop{\halign{##\hfill\cr
#1\crcr}}}}

  %% \ignorespaces gets rid of any spaces introduced between
  %% the macro and text following the \noindent
\def\xacknowledgments{\vskip2.5pc
\noindent{\it
Acknowledgements:}
\vskip1pc\noindent\ignorespaces}

  %% from 2e, kept on in case they are used in any embedded 2e macros
\newcommand{\frontmatter}{\cleardoublepage
            \@mainmatterfalse\pagenumbering{roman}}
\newcommand{\mainmatter}{\cleardoublepage
       \@mainmattertrue\pagenumbering{arabic}}
\newcommand{\backmatter}{\if@openright\cleardoublepage\else\clearpage\fi
      \@mainmatterfalse}
  %%

\newif\iftwocolcontributors
\def\contributors{\@ifnextchar[{\global\twocolcontributorstrue\xcontributors}{\ycontributors}}

\def\ycontributors{\startonoddpage\parindent=0pt\parskip=3pt\thispagestyle{empty}
\chapter*{Contributors}
}

\def\endcontributors{\vskip1sp
\iftwocolcontributors\def\go{\end{multicols}}\else\let\go\relax\fi\go
\newpage}

\def\contrib#1\\{\vskip1sp{\bf #1}\\
}

\def\xcontributors[#1]{\startonoddpage\parindent=0pt\parskip=3pt\thispagestyle{empty}
\chapter*{Contributors}
\columnsep=1pc
\hyphenpenalty=10000
\raggedright
\begin{multicols}{2}}



%% <=== end Front Matter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9) Part, Chapter, and Appendix Commands

  %% to disable chaptermark
%\def\chaptermark#1{}

  %% sphrulefill makes a ruled line 2pt heigh that we can make any 
  %% width, depending on the width of the box it is used in.

\def\sphrulefill{\leavevmode \leaders \hrule height 2pt\hfill \kern \z@}
\def\smsphrulefill{\leavevmode \leaders \hrule height 1.5pt\hfill \kern \z@}

  %% Comment
  %% You'll see \secdef, in this case \secdef\@part\@spart, in the chapter
  %% macro as well.

  %% First \@ifstar, which is in the definition of \secdef 
  %% checks to see if there is a * argument, ie, \part*{Title},
  %% then \secdef will call \@spart, \@part will be called if there is no star.

  %% Then it will use \@dblarg to check to see it there is a square
  %% bracket optional argument in the nonstarred version of the
  %% part title: ie, \part[alt heading]{Part title},
  %% which it does with the \@ifnextchar[ 

  %% If there is not a square bracket it will supply \part[#1]{#2},
  %% If there is one it will supply \part[]{#2}, so that the
  %% macro \def\@part[#1]#2{% which needs an argument in square bracket,
  %% will work whether or not the user has supplied a square bracket.

\newif\ifpart
\newcommand{\part}{\startonoddpage
\global\parttrue
                 \thispagestyle{empty}%
                     \@tempswafalse
                \secdef\@part\@spart}


  %% The first time \part is used pagenumbering will be set to arabic,
  %% and also start the page numbers from 1.

  %% \hyphenpenalty=10000, stops words from hyphenating


\def\@part[#1]#2{%
\ifnum\c@part=0 \global\@mainmattertrue
\pagenumbering{arabic}\fi
      \refstepcounter{part}%
    \markboth{}{}
\addcontentsline{toc}{part}{\numberline{\hskip1pt\space\thepart}{\uppercase{#1}}}%
  {\parindent \z@ 
    \interlinepenalty\@M
\noindent
\partnumberfont \thepart\hskip12pt\vbox to 23pt{\raggedright\hyphenpenalty10000 
\baselineskip=15pt\partfont
{#2}\vskip 1sp\vss}}\vfill\emptypage}

  %% This is for a \part*{} which probably will not be used.
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \reset@font
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfill\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{empty}%
                \newpage
             \fi}

\def\partintro{\startonoddpage
\bgroup
\setcounter{secnumdepth}{0}
\thispagestyle{empty}
}

\def\endpartintro{\egroup\newpage
\setcounter{secnumdepth}{3}
}

\def\partintrotitle#1{\addcontentsline{toc}{partintro}{#1}\section*{#1}}

  %% Comment
  %% \chapter starts with setting particular counters to zero. 
  %% \@topnum\z@ will keep float, like figures or tables from going
  %% to the top of the page. \secdef works the same as for part, above.

%\def\secdef#1#2{\@ifstar{#2}{\@dblarg{#1}}}



%
\def\chapter{
\global\notenum=0
\global\c@chapapp=0
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

  %% \if@mainmatter\else test to see if
  %% if part has been used in which case mainmatter will be set to be true,
  %% Otherwise, if it is the first chapter the pagenumber should
  %% be set to zero. Also pagenumbering is set to be arabic whether
  %% or not it is the first chapter. 

  %% \refstepcounter{chapter} advances the chapter counter.

  %% \addcontentsline{toc}{chapter}{\numberline{\thechapter}{#1}}}%
  %% sends chapter 

  %% \expandafter\chaptermark\one is taking the optional square
  %% bracket argument and sending it to the running head
  %% (\chapter[alt heading]{Normal Chapter Title})

\newif\iffirstchapter
\global\firstchaptertrue
\def\@chapter[#1]#2{%
\startonoddpage
\global\titletrue
\suppressfloats
  %%
  \global\@mainmattertrue%
    \iffirstchapter\global\firstchapterfalse 
\ifpart\else
\pagenumbering{arabic}
\setcounter{page}{1}\fi\fi%
%
\refstepcounter{chapter}% 
\expandafter\label{chapter\the\c@chapter}
\ifnum \c@secnumdepth >\m@ne
\typeout{\@chapapp\space\thechapter.}%
{\def\\ {\ }
\addcontentsline{toc}{chapter}{\numberline{\thechapter}{#1}}}%
\fi
{\def\\ {\ }\edef\one{{#1}}
                    \expandafter\chaptermark\one}%
\bgroup\def\\ {\vskip1sp}
                      \@makechapterhead{#2}\egroup%
         \@afterheading}
%
  %% Chapter without star
  %% if appendix, change to use letter instead of number
\newbox\chapnumberbox

\def\@makechapterhead#1{\ifappendon
\renewcommand{\@chapapp}{\appendixname}%
\renewcommand{\thechapter}{\Alph{chapter}}
\else
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\@chapapp}{Chapter}%
\fi
%\chaptermark{#1}{}%
  {\parindent \z@ 
    \interlinepenalty\@M
\Large\fboxsep=0pt\global\setbox\chapnumberbox=\hbox{\chapternumberfont\thechapter\hskip8pt}
\vbox{\hbox to\textwidth{%
\chapternumberfont \thechapter\hskip8pt%
\vbox{\hyphenpenalty10000 
\advance\hsize by -\wd0
\advance\hsize -6pt \raggedright
\def\\ {\vskip1sp}
\chaptertitlefont 
\noindent\relax{#1}
}}}}
\vskip9pc
\vskip9pt
\ignorespaces}

  %% Chapter with star (\chapter*)
  %% \chapter* environment used for Table of Contents head, 
  %%     Index head, Bib head, etc
\def\@schapter#1{\startonoddpage
\@makeschapterhead{#1}%
                   \@afterheading
                 }

\def\@makeschapterhead#1{\global\titletrue
      \global\@topnum\z@   % Prevents figures from going at top of page.
\phantomsection
\iftoc\else
\addcontentsline{toc}{starchap}{#1}\fi
  {\starchapterfont\noindent\relax{#1}}
\vskip11pc
\vskip6pt
\ignorespaces}

\long\def\chapterauthor#1{\addcontentsline{toc}{chapauthor}{#1}
\vskip-97pt\vbox to
0pt{\vss\normalsize\bf\noindent\hskip\wd\chapnumberbox\relax#1}\vskip83pt
\@afterheading} 



\newdimen\spaceaboveline
\spaceaboveline=4pt

  %%% Chapter Appendices
  %% Chapter Appendix, uses chapapp for counter to change letters
  %% \def\one{#1} and \ifx\one\empty is used to see if an appendix title
  %% has been given or \chapappendix{}. 
  %% If title used, supply <title name and :> , otherwise do neither.

\newcount\c@chapapp
\def\chapappendix#1{\bgroup\par
\appendontrue
\global\advance\c@chapapp by 1
  \setcounter{section}{0}%
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
  \setcounter{equation}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
\renewcommand{\thechapter}{\Alph{chapapp}}
\def\one{#1}\ifx\one\empty
\vskip6pt
\vskip1sp
\section*{Chapter Appendix}
\else
\vskip6pt
\vskip1sp
\section*{Chapter Appendix: #1}
\fi
%\addcontentsline{toc}{chapapp}{\protect\numberline{}Chapter
% Appendix}
\font\sectionfont=\timesbold at 8pt
\font\subsectionfont=\timesbold at 8pt
\font\subsubsectionfont=\timesbold at 8pt
\font\paragraphfont=\timesbold at 8pt
\small }

\def\endchapappendix{\egroup}

\newif\iffirstappendix
\global\firstappendixtrue

  %% \immediate\write\@auxout sends `Appendices' and current page number
  %%     to *.toc for table of contents; reset counters and conditionals

  %% \renewcommands are used to redefine chapapp which is used to
  %% make either `Chapter' or `Appendix' in chapter heads and running heads;
  %% also redefines the chapter number to be a letter, and section to
  %% be appendix letter followed by section number.

\newif\ifappendon
\def\appendix{\newpage
                    \global\@topnum\z@
\font\sectionfont=\timesbold at 8pt
\font\subsectionfont=\timesbold at 8pt
\font\subsubsectionfont=\timesbold at 8pt
\font\paragraphfont=\timesbold at 8pt
\global\appendontrue
\setcounter{chapter}{0}%
\renewcommand{\@chapapp}{\appendixname}%
\renewcommand{\thechapter}{\Alph{chapter}}%
\renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}\small}

%%% <<=== end Chapter, Part, and Appendix Commands 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 10) Counters, Header Level Counters 

  %% the argument in square brackets is for the command that will reset
  %% counter to zero
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

  %% Header Level Counters ==>>
  %% Change to any level will change the levels below

\renewcommand{\thepart}         {\Roman{part}}
\renewcommand{\thechapter}      {\arabic{chapter}}
\renewcommand{\thesection}      {\thechapter.\arabic{section}}
\renewcommand{\thesubsection}   {\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}    {\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph} {\theparagraph.\arabic{subparagraph}}

\newcommand{\@chapapp}{\chaptername}

  %%% <<== End Header Level Counters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 11) Section Commands 

  %% Definition printed here so that you can see what the various arguments are
  %% when used for \section, \subsection, etc, below
  %% \newcommand{\section}{\@startsection {section}{1}{\z@}...


% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}
%            optional * [ALTHEADING]{HEADING}
%    Generic command to start a section.
%    NAME       : e.g., 'subsection'
%    LEVEL      : a number, denoting depth of section -- e.g., chapter=1,
%                 section = 2, etc.
%    INDENT     : Indentation of heading from left margin
%    BEFORESKIP : Absolute value = skip to leave above the heading.
%                 If negative, then paragraph indent of text following
%                 heading is suppressed.
%    AFTERSKIP  : if positive, then skip to leave below heading, else
%                 negative of skip to leave to right of run-in heading.
%    STYLE      : commands to set style
%  If '*' missing, then increments the counter.  If it is present, then
%  there should be no [ALTHEADING] argument.
%  Uses the counter 'secnumdepth' whose value is the highest section
%  level that is to be numbered.


  %% Startsection calls \@sect, defined below,
  %% the engine that formats each section

\let\savequad\quad
\def\@seccntformat#1{\csname the#1\endcsname\hskip10pt\relax}


\def\@sect#1#2#3#4#5#6[#7]#8{%
\ifnum #2=1 \def\quad{\hskip0pt}\fi%
  %% check to see if counter is wanted for this level of heading,
  \ifnum #2>\c@secnumdepth
  \let\@svsec\@empty%
  %% if not wanted make \@sevsec={}
  \else%
  %% if  wanted define \@svsec to equal the formatting info for that level
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi%
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
\noindent\hskip-18pt\hbox to 18pt{\hss\@svsec\hskip5pt}%
%\@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
  %% \csname #1mark\endcsname  will produce \sectionmark if #1 is section, 
  %% and \sectionmark can be used in the running head
    \csname #1mark\endcsname{#7}%
  %% This sends \numberline{\thesection}<section title> 
  %%  to the table of contents
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi%
        #7}}%
  \fi%
\let\quad\savequad\@xsect{#5}}

\def\@sect#1#2#3#4#5#6[#7]#8{%
  %% check to see if counter is wanted for this level of heading,
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  %% if not wanted make \@sevsec={}
  \else
  %% if  wanted define \@svsec to equal the formatting info for that level
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
  %% \csname #1mark\endcsname  will produce \sectionmark if #1 is section, 
  %% and \sectionmark can be used in the running head
    \csname #1mark\endcsname{#7}%
  %% This sends \numberline{\thesection}<section title> 
  %%  to the table of contents
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}

  %% the minus dimensions are used to tell LaTeX not to indent
  %% the text following the section head 
  %% (silly, isn't it? but built into LaTeX)
  %% You can add things like underline or uppercase to the last arg
  %% to get those effects in a section head

\newcommand{\section}{\@startsection {section}{1}{0pt}%
                                   {-11pt} 
                                   {5pt}%
                                   {\hyphenpenalty=10000\boldmath\reset@font\normalsize\sectionfont}}
\newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-8pt}%
                                     {3pt}%
                                 {\hyphenpenalty=10000\reset@font\normalsize\bfseries\subsectionfont}}
\newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                     {-8pt}%
                                     {-1em}
                           {\hyphenpenalty=10000\hskip-3pt\reset@font\normalsize\bfseries\subsubsectionfont}}
\newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
                                    {-6pt}%
                                    {-1em}%
                               {\hskip-3pt\reset@font\normalsize\bfseries\paragraphfont}}
\newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize\bfseries}}


  %%% <<=== end section commands


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 12) Listing

\def\outline{\bgroup\let\itemize\enumerate}
\def\endoutline{\egroup}

\def\@listI{\leftmargin\leftmargini
%\parskip=0pt
           \parsep 0\p@ 
            \topsep 4\p@
            \itemsep1\p@
}
\let\@listi\@listI

\@listi

\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}

  %% amount left edge of text is indented relative to normal text
  %% i is for first level in, ii is for second level in, etc.
\setlength\leftmargini  {18pt}
\setlength\leftmarginii  {16pt}
\setlength\leftmarginiii {12pt}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}


  %% default indentation for first level itemized lists
\setlength\leftmargin    {\leftmargini}

  %% horizontal distance between item and following text
\setlength  \labelsep  {6pt}

  %% how wide should item be?
\setlength  \labelwidth{\leftmargini}

  %% subtract width of label separation
\addtolength\labelwidth{-\labelsep}

  %% more listing defaults
\leftmargin\leftmargini
\labelwidth\leftmargini\advance\labelwidth-\labelsep
\labelwidth\parindent

\let\saveitemize\itemize
\def\itemize{\leftmargini=8pt
\setlength\leftmarginii  {12pt}
\setlength\leftmarginiii {10pt}
\saveitemize}

\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

  %% defining listing markers for enumerate
\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\theenumiv}{\Alph{enumiv}}

  %% using listing markers for enumerate
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{(\theenumii)}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}

  %% crossreferencing for listing markers
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi(\theenumii)}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}

  %% listing markers for itemize (no crossreferencing needed)
\newcommand{\labelitemi}{\tiny\raise1pt\llap{$\bullet$}}
\newcommand{\labelitemii}{\normalfont\bfseries --}
\newcommand{\labelitemiii}{$\m@th\ast$}
\newcommand{\labelitemiv}{$\m@th\cdot$}

  %% Setting up description listing environment
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}

\newcommand*{\descriptionlabel}[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

%%% <<=== end of listing commands 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 13) Math 

  %% Makes equations start from zero with each new chapter
\@addtoreset{equation}{chapter}

  %% Makes equation number include the chapter number
\renewcommand{\theequation}{\thechapter.\arabic{equation}}

\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[theorem]

\def\newtheorem#1{%
  \@ifnextchar[{\@othm{#1}}{\@nthm{#1}}}
\def\@nthm#1#2{%
  \@ifnextchar[{\@xnthm{#1}{#2}}{\@ynthm{#1}{#2}}}
\def\@xnthm#1#2[#3]{%
  \expandafter\@ifdefinable\csname #1\endcsname
    {\@definecounter{#1}\@newctr{#1}[#3]%
     \expandafter\xdef\csname the#1\endcsname{%
       \expandafter\noexpand\csname the#3\endcsname \@thmcountersep
          \@thmcounter{#1}}%
     \global\@namedef{#1}{\@thm{#1}{#2}}%
     \global\@namedef{end#1}{\@endtheorem}}}
\def\@ynthm#1#2{%
  \expandafter\@ifdefinable\csname #1\endcsname
    {\@definecounter{#1}%
     \expandafter\xdef\csname the#1\endcsname{\@thmcounter{#1}}%
     \global\@namedef{#1}{\@thm{#1}{#2}}%
     \global\@namedef{end#1}{\@endtheorem}}}
\def\@othm#1[#2]#3{%
  \@ifundefined{c@#2}{\@nocounterr{#2}}%
    {\expandafter\@ifdefinable\csname #1\endcsname
    {\global\@namedef{the#1}{\@nameuse{the#2}}%
  \global\@namedef{#1}{\@thm{#2}{#3}}%
  \global\@namedef{end#1}{\@endtheorem}}}}
\def\@thm#1#2{%
  \refstepcounter{#1}%
  \@ifnextchar[{\@ythm{#1}{#2}}{\@xthm{#1}{#2}}}
\def\@xthm#1#2{%
  \@begintheorem{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@ythm#1#2[#3]{%
  \@opargbegintheorem{#2}{\csname the#1\endcsname}{#3}\ignorespaces}
\def\@thmcounter#1{\noexpand\arabic{#1}}
\def\@thmcountersep{.}
\def\@begintheorem#1#2{\trivlist
   \item[\hskip \labelsep{\bfseries\itshape #1\ #2}]\itshape}
\def\@opargbegintheorem#1#2#3{\trivlist
      \item[\hskip \labelsep{\bfseries\itshape #1\ #2\ (#3)}]\itshape}
\def\@endtheorem{\endtrivlist}

%% <<<=== end Math 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 14) Figure and Table Captions 


  %%  Name of Figure or Table is set with \figurename or \tablename above
  %% \@float is what puts the text at the top or bottom of the page
  %% \@dblfloat is for floats in two column text

\newcounter{figure}[chapter]
\renewcommand{\thefigure}{\thechapter.\arabic{figure}}

\def\fps@figure{tbp} % position figure at top, bottom, or on its own page
\def\ftype@figure{1} % used for placing float in page
\def\ext@figure{lof} % send info to .lof file
\def\fnum@figure{\figurename~~\thefigure} % \figurename, defined above,
                              %% and the current state of figure counter

  %% \begin{figure} calls up float and gives it the {figure} argument,
  %% which is then used to call up the definitions above, by using
  %% \csname fps@\captype\endcsname, for instance, to get \fps@figure;
  %% adjusting the macro to do different things depending on whether
  %% figure, table, environment, or other term is used.

\newenvironment{figure}
               {\@float{figure}}
               {\end@float}

  %% figure in two column text
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

  %% Similar as the sequence of definitions above used for figure
\newcounter{table}[chapter]
\renewcommand{\thetable}{\thechapter.\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}

\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

\let\savetabular\tabular
\let\savetable\table
\let\saveendtable\endtable

\def\table{\bgroup
\def\tabular{\tablefontsize\savetabular}
\@namedef{tabular*}##1{\def\@halignto{to##1}
\tablefontsize\@tabular}
\savetable}
\def\endtable{\saveendtable\egroup}

  %%%%%%%%%%%%%%%%
  %% Setting space between caption in table or figure and the
  %% table or figure
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{3\p@}
\setlength\belowcaptionskip{9\p@}

  %% to test in caption to see whether it is a figure or table
\def\xfigure{figure}

  %% Variation on LaTeX code
  %% Switch built in to change font to figtextfont if it a figure;
  %% to tabtextfont if it is a table. Also skips below caption
  %% an extra 3pt if it is a table to give extra space between caption
  %% and table, since caption for table goes above table.

  %% \sbox\@tempboxa sets a temporary box so that we can measure
  %% the width of the caption; if width is greater than .9\hsize
  %% then make it format in a paragraph, otherwise center it.

  %% Test to see if it a figure or table: \ifx\@captype\xfigure
  %% If figure, \vskip\belowcaptionskip

\newif\ifcontinued

\long\def\@caption#1[#2]#3{%
  \par
\ifcontinued\else
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
    {\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
\fi
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}

\long\def\@makecaption#1#2{%
\vskip\abovecaptionskip
{\small
\ifx\@captype\xfigure
\ifcontinued\global\advance\c@figure-1\fi
\fignumfont #1\ifcontinued\ (Continued)\fi\vskip1pt
\small
#2
\else
\ifcontinued\global\advance\c@table-1\fi
\small\tabnumfont#1\ifcontinued\ (Continued)\fi\vskip1pt
\small
#2\fi
\vskip\belowcaptionskip
}\global\continuedfalse}
\let\mitcaption\caption

\def\continuedcaption{\continuedtrue\caption{}}


  %%% <<=== end Figure and Table Captions


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 15) End Matter: Bibliography, References, Index

\def\endmatter{\addtocontents{toc}{\string\vskip8pt}}
\let\thebibliography\null
\usepackage{natbib}

\newif\ifchapbib
\def\chapbibliography#1{\chapbibtrue\bibliography{#1}}

\def\chapreferences{\notes
\markright{References}
\vskip6pt\vskip1sp\section*{References}
    \addcontentsline{toc}{section}{References}
\list
   {[\arabic{enumi}]}{\settowidth\labelwidth{6}
   \leftmargin\labelwidth
   \advance\leftmargin\labelsep
   \advance\leftmargin\bibindent
   \itemindent -\bibindent
   \listparindent \itemindent
   \parsep \z@
   \usecounter{enumi}}
   \def\newblock{}
   \sloppy
   \sfcode`\.=1000
    %% in case there are no entries with \bibitem... we supply this
    %% to make listing env work correctly.
\item[]\relax}

\def\endchapreferences{\vskip1sp\endlist\markright{}}




\newdimen\bibindent
\setlength\bibindent{1.5em}
%% need \renew because this is previously defined in natbib
\renewenvironment{thebibliography}[1]
     {\ifchapbib\vskip24pt\relax\vskip1sp\section*{Bibliography}\else\chapter*{Bibliography}\fi
        \@mkboth{\bibname}{\bibname}%
\small
\leftskip=0pt
      \list{\@biblabel{\@arabic\c@enumiv}}%
          {\labelwidth=0pt
\settowidth\labelwidth{\@biblabel{#1}}%
          \leftmargin\labelwidth
%         \advance\leftmargin\labelsep
        \@openbib@code
       \usecounter{enumiv}%
      \let\p@enumiv\@empty
     \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist
\global\chapbibfalse}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty

  %% In case you want to enter bib entries without using bibtex
\def\references{\thebibliography{}\item[]}
\let\endreferences\endthebibliography

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Index 

  %% Making an Index, using LaTeX default index,

%% these commands are included later in the .cls file
%% so no need to type \usepackage{makeidx} after \documentclass
%% or to write \makeindex before \begin{document}

  %% Then write \index{term} in the text whereever you want something 
  %% indexed;
  %% if you want subentries, you write the first entry followed by an
  %% exclamation mark, i.e., \index{trees!pointy}, if you want a subsub
  %% entry, follow the second entry with an exclamation mark too:
  %% \index{trees!pointy!green}
 
  %% Run LaTeX on the file. This will produce an .idx file.
  %% If you run each chapter separately you will have to combine all
  %% the separate .idx files into one file.
 
  %% Use the makeindx program to turn the .idx file into an .ind
  %% file. Use the command makeindx filename.idx, outside of LaTeX.
  %% makeindx is a stand-alone program.

  %% Write \printindex in your file, which will bring in
  %% the new filename.ind, formatted in two columns.

% Comments on definition of \theindex code below

% columnseprule is optional ruled line between columns;
% columnsep is space between columns;
% \@makeschapterhead is what you'll get with \chapter*{}
% so this will match the top of table of contents and similar
% environments;
% \addcontentsline adds Index to the Table of Contents; 
% \thispagestyle{plain} will put page number in the center of
% bottom of first page of index;
% \footnotesize makes index print in 8pt fonts

%% from book.cls
% \newenvironment{theindex}
               %{\if@twocolumn
                %  \@restonecolfalse
                %\else
                 % \@restonecoltrue
                %\fi
                %\columnseprule \z@
                                %\columnsep 35\p@
                %                \twocolumn[\@makeschapterhead{\indexname}]%
                %                \@mkboth{\MakeUppercase\indexname}%
                %                        {\MakeUppercase\indexname}%
                %                \thispagestyle{plain}\parindent\z@
                %                \parskip\z@ \@plus .3\p@\relax
                %                \let\item\@idxitem}
                %               {\if@restonecol\onecolumn\else\clearpage\fi}
                %\newcommand\@idxitem{\par\hangindent 40\p@}
                %\newcommand\subitem{\@idxitem \hspace*{20\p@}}
                %\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
                %\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}

\providecommand*\seealso[2]{\emph{\alsoname} #1}
\providecommand*\alsoname{see also}

\def\theindex{\columnseprule \z@
                \columnsep 1pc
\pagestyle{headings}
\thispagestyle{empty}
\phantomsection
                %\begin{multicols}{2}[
               \twocolumn[\@makeschapterhead{\indexname}]%
                \markboth{\indexname}%
                        {\indexname}%
                \global\titletrue\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
\small\raggedright
                \let\item\@idxitem}
\def\endtheindex{%\end{multicols}
\clearpage}

% Basic index item, how much of a hang indent do you want?
% how much will it hang out to the left?
\newcommand{\@idxitem}  {\par\hangindent 15\p@}

% Next level down, how much additional indent, set with hspace?
\newcommand{\subitem}   {\par\hangindent 5\p@ \hspace*{5\p@}}

% Next level down, how much additional indent, set with hspace?
\newcommand{\subsubitem}{\par\hangindent 10\p@ \hspace*{10\p@}}

% How much vertical space if you use the \indexspace between
% parts of the index starting with a new letter
\newcommand{\indexspace}{\par \vskip 14\p@ \@plus5\p@ \@minus3\p@\relax}

%%%%
%% Index letter

  %% You can add an index letter `by hand' by using \ltr{A} etc
  %% after every indexspace in the xxx.ind file that you've made
  %% by running makeindx on xxx.inx
  %%
  %% Or by setting \indexspace=\iletter with \let\indexspace\iletter,
  %% in which case the
  %% letters will be entered automatically with the exception
  %% of the letter before the `A' section. You can get that
  %% letter by  typing \Aletter before the A entries, which
  %% may not be the beginning of the index because there may
  %% be symbols preceding the A section.

\newskip\iletterskip
\iletterskip=8pt plus 2pt minus 2pt

\def\iletter 

\item #1{\goodbreak
\vskip\iletterskip{\iletterfont\uppercase{#1}}\vskip.5\iletterskip
\par\hangindent 20\p@ #1}

\def\spiletter{\goodbreak
\vskip\iletterskip{\iletterfont\uppercase{A}}\vskip.5\iletterskip
\par\hangindent 20\p@}

\let\Aletter\spiletter


  %% Another option is to use \ltr{A}, \ltr{B} etc between different
  %% lettered sections of xxx.ind file.
  %% If you want to letter by hand, comment out \let\indexspace\iletter

\def\ltr#1{\nobreak\vskip5pt
\hrule
\nobreak
\vskip3pt
{\bf#1}
\nobreak
\vskip5pt}

\usepackage{makeidx}
\makeindex

\renewcommand\printindex{\startonoddpage
\def\see##1##2{\emph{\seename} ##1}
\def\seename{see}
\@input@{\jobname.ind}}

%%%%%%% To get final page of index to balance columns, we use
%%%%%%% multicols.
%% <<== End of Indexing macros

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 16) Special use Environments, Quote, Quotation
\newenvironment{quotation}
               {\small
\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin  0pt
                        \parsep        \z@ \@plus\p@}%
                \item[]}
               {\endlist}

\newenvironment{extract}
               {\bgroup\small
\begin{itemize}\item[]
}
               {\vskip6pt\end{itemize}\egroup}



\newenvironment{quote}
               {\small
\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}


%% Extract

%% Boxed Text
\newcounter{boxtextnum}
\@addtoreset{boxtextnum}{chapter}


\def\bsection#1{\global\advance\c@section by 1
\vskip1sp\noindent{\bf \thesection.\hskip4pt
#1}\\ }

\def\csection#1{\vskip1sp\noindent{\bf #1}\\ }
\def\csubsection#1{\vskip1sp\noindent{\bf #1}\\ }
\def\csubsubsection#1{\vskip1sp\noindent{\bf #1}\\ }

\def\bsubsection#1{\global\advance\c@subsection by 1
\vskip1sp\noindent{\bf \thesubsection.\hskip4pt
#1}\\ }

\def\bsubsubsection#1{\global\advance\c@subsubsection by 1
\vskip1sp\noindent{\bf \thesubsubsection.\hskip4pt
#1}\\ }

\def\xstar{*}

\def\boxedtext#1{%
\vskip12pt
\def\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {-1sp}%
                                    {-1em}%
                               {\reset@font\small\bfseries}}
\c@section=0
\c@subsection=0
\c@subsubsection=0

%%
\def\thesection{\arabic{section}}
\def\thesubsection{\thesection.\arabic{subsection}}
\def\thesubsubsection{\thesubsection.\arabic{subsubsection}}
\let\section\bsection
\let\subsection\bsubsection
\let\subsubsection\bsubsubsection
%%
\def\section##1{\def\one{##1}\ifx\one\xstar\let\go\csection\else\def\go{\bsection{##1}}\fi\go}
\def\subsection##1{\def\one{##1}\ifx\one\xstar\let\go\csubsection\else\def\go{\bsubsection{##1}}\fi\go}
\def\subsubsection##1{\def\one{##1}\ifx\one\xstar\let\go\csubsubsection\else\def\go{\bsubsubsection{##1}}\fi\go}
%%
\def\extract{\leftskip=12pt \rightskip\leftskip}
\def\endextract{\vskip6pt}

\global\advance\c@boxtextnum by 1
\fboxsep=1pc \fboxrule=.5pt \framed\small
\parskip=6pt \parindent=0pt
{\bf Box \arabic{chapter}.\arabic{boxtextnum}}\\
\rm #1
\vskip6pt
}

\def\endboxedtext{\endframed}


%% Exercises

\newcounter{exercise}
\newcounter{subexercise}
\newcounter{subsubexercise}

\def\exercises{\section*{Exercises}\small
\markright{Exercises}
\addcontentsline{toc}{section}{\protect\numberline{}Exercises}
\setcounter{exercise}{0}
\parindent=2pc
\parskip=4pt
}

\def\endexercises{}

\def\endbookexercises{\chapter*{Exercises}\small
\markright{Exercises}
\setcounter{exercise}{0}
\parindent=2pc
\parskip=4pt
}

\def\endendbookexercises{}

\long\def\exer#1{\vskip3pt\global\advance\c@exercise by 1
\global\c@subexercise=0
{\leftskip=1pc
\noindent\hskip-1pc\hbox to 1pc{\bf \arabic{exercise}.\hfill}\ignorespaces#1
\vskip1sp}
}

\long\def\subexer#1{\vskip3pt\global\advance\c@subexercise by 1
\global\c@subsubexercise=0
{\leftskip=2pc
\noindent\hskip-1pc\hbox to
1pc{\bf\alph{subexercise})\hfill}\ignorespaces#1\vskip1sp}} 

\long\def\subsubexer#1{\vskip3pt\global\advance\c@subsubexercise by 1
{\leftskip=3pc
\noindent\hskip-1pc\hbox to 1pc{\bf\roman{subsubexercise}.\hfill}\ignorespaces#1\vskip1sp}}

\def\sidebysidesubexer#1#2{\vskip3pt\centerline{\hskip1pc\vtop{\global\advance\c@subexercise by 1
\advance\hsize -1pc \hsize=.5\hsize
\noindent\hbox to 1pc{\bf\alph{subexercise})\hfill}
#1}\hfill\vtop{\global\advance\c@subexercise by 1 
\advance\hsize -1pc \hsize=.5\hsize
\noindent\hbox to 1pc{\bf\alph{subexercise})\hfill} #2}}}

\def\sidebysidesubsubexer#1#2{\vskip3pt\centerline{\hskip2pc\vtop{\global\advance\c@subsubexercise
by 1\relax%
\advance\hsize -2pc \hsize=.5\hsize
\noindent\hbox to 1pc{\bf\roman{subsubexercise}.\hfill}#1}\hfill\vtop{\global\advance\c@subsubexercise by 1
\advance\hsize -2pc \hsize=.5\hsize
 \noindent\hbox to 1pc{\bf\roman{subsubexercise}.\hfill}#2}}}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Glossary
\def\glossary{\chapter*{Glossary}\bgroup\small
\parindent=0pt
}
\def\endglossary{\vskip1sp\egroup}

\long\def\term#1#2{\noindent\hbox to
.8in{\vtop{\raggedright\hsize=.7in\small\bf
#1}}\vtop{\small\advance\hsize-.8in
#2}\vskip7pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Notation
\def\notation{\vskip10pt\bgroup\parskip=0pt
\noindent{\small\bf Notation}
\vskip1pt
\let\\=\cr
\halign\bgroup##\hfill\hskip10pt\vrule depth 6pt width0pt height 10pt&##\hfill\\
}
\def\endnotation{\crcr\egroup\egroup\vskip14pt\global\everypar={\noindent\hskip-\parindent\global\everypar={}}}

\def\dialogue{\vskip7pt}
\def\enddialogue{\vskip7pt}
\def\speaker#1{\vskip3pt\noindent{\it #1}\hskip10pt\relax}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 17)  ETC. \today, \hyphenation

% Nice example of \ifcase which takes a counter and activates
% the slot following the counter that matches the same number;
% \month expands to a number, so ifcase will activate the slot
% matching that number
\newcommand{\today}{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

%%% Time in AM/PM by AH
\def\fix{\ifcase\oldtime 0\or0\or0\or%
0\or0\or0\or0\or0\or0\or0\fi}
\def\fixtiming{\ifcase\timing 0\or0\or0\or% 
0\or0\or0\or0\or0\or0\or0\fi}
\newcount\timing 
\newcount\hourcount
\newcount\oldtime 

\def\realtime{\timing=\time \oldtime=\time
\ifnum\timing>60 \divide\timing by 60
\hourcount=\the\timing
\multiply\timing by 60
\advance\oldtime by-\timing
\ifnum\hourcount<12 \number\hourcount:\fix\number\oldtime am\fi%
\ifnum\hourcount=12 \number\hourcount:\fix\number\oldtime pm\fi%
\ifnum\hourcount>12 \advance\hourcount by-12
\number\hourcount:\fix\number\oldtime pm\fi
\else12:\fixtiming\number\timing am\fi}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Hyphenation Library
%% Add to this list if desired. 
%% Dashes tell LaTeX where to hyphenate

\hyphenation{
dem-o-graph-ics
mi-cro-ec-o-nom-ic
or-gan-i-za-tion
or-gan-i-za-tions
ra-tion-ale
sys-tem-at-i-cal-ly
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 18) Added Packages

\usepackage{longtable}
\setlength{\LTleft}{0pt}

\def\longtable{%
\small %%<<== added this
  \par
  \ifx\multicols\@undefined
  \else
     \ifnum\col@number>\@ne
       \@twocolumntrue
     \fi
  \fi
  \if@twocolumn
    \LT@err{longtable not in 1-column mode}\@ehc
  \fi
  \begingroup
  \@ifnextchar[\LT@array{\LT@array[x]}}

%% to make caption be left aligned, not centered
\def\LT@makecaption#1#2#3{%
  \LT@mcol\LT@cols {@{}l}{{\parbox[t]\LTcapwidth{%
    \sbox\@tempboxa{#1{\bf #2 }\rm #3}%
    \ifdim\wd\@tempboxa>\hsize
      #1{\bf #2 }\\\rm #3%
   \else
\hbox{\bf #2}
\hbox{\rm #3}
    \fi
    \endgraf\vskip9pt}%
  }}}

\def\longtablecontinued{{\small\bf Table \thetable\ \rm
(continued)}}

\usepackage{multicol}
\usepackage{graphicx}
\usepackage{framed} 
\usepackage{xcolor}

%% hyperref link color
\definecolor{dkblue}{cmyk}{1,.54,.04,.19} 

%% Times and MathTimes fonts+++
\usepackage{amsmath}
\usepackage{txfonts}
\usepackage{times}
\usepackage[hyphens]{url}


\usepackage{algorithm} %% wrapper
\usepackage{algorithmicx}
\usepackage{algpseudocode}


\def\code{\bgroup\begin{itemize}\item[]\footnotesize}
\def\endcode{\end{itemize}\egroup}

%% space following longtable:
\LTpost=-24pt

\renewcommand{\thealgorithm}{\vrule height 9pt depth 4pt width
0pt\arabic{algorithm}} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 19) Initial page settings
\pagenumbering{roman} %% can switch over to arabic within \chapter command.

\newbox\cropmarktext

\setbox\cropmarktext=\hbox{\footnotesize\sf 
MITPress NewMath.cls\hskip.25in \LaTeX\ Book Style \hskip.25in Size:\ \ifsixbynine 6x9\fi%
\ifsevenbynine 7x9\fi%
\ifsevenbyninewide 7x9 32pc text width\fi%
\ifeightbynine 8x9\fi%
\hskip.25in
\today\hskip.25in \realtime} 

\arrayrulewidth=.5pt

\pagenumbering{roman}
\def\arraystretch{1.1}
\def\ps@empty{%
  \let\@mkboth\@gobbletwo\def\@oddfoot{\global\titlefalse\hfill}
\let\@evenfoot\@oddfoot
\let\@oddhead\@empty
  \let\@evenhead\@empty}


\pagestyle{headings}

\long\def\ignorethis#1{}

\def\blankline{\vskip15pt\noindent\ignorespaces}

%\usepackage{chapterbib}

%% if the user has chosen `hyper' as an option, the hyperref
%% package will be brought in; else, \endinput here

\def\phantomsection{}

\ifhyper\else\endinput\fi
%% We don't want this for default, but authors may comment
%% out \endinput if they want to use hyperref.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Set up hyperref

\usepackage[bookmarks=false,
colorlinks=true,      % 
    linkcolor=dkblue,                     % color of internal links
    citecolor=dkblue,                     % color of links to bibliography
    filecolor=dkblue,                   % color of file links
    urlcolor=dkblue,                        % color of external links
]{hyperref}

\paperheight=11in
\paperwidth=8.5in


\endinput

changes:
Feb 22, 2017
defined and added \phantomsection to \@makeschapterhead in order
to get the hyperlink from TOC to work correctly for Index, Exercises,
Glossary, and any other environment that uses \chapter*{}

In response to report that bold math was not working with mathptmx,
killed \usepackage{mathptmx} and added this:

\usepackage{amsmath}
\usepackage{txfonts}
\usepackage{times}