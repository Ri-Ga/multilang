The multilang Package
=======================

Copyright (C) 2016-2017 Richard Gay

Released under the [LaTeX Project Public License](http://www.latex-project.org/lppl/) version 1.2 or later

## Abstract

Maintaining a LaTeX document with translations for multiple languages
can be cumbersome and error-prone.
The `multilang` package provides a set of macros for defining macros and
environments as wrappers around existing macros and environments.
These wrappers allow one to clearly specify multiple translations for the
arguments to the wrapped macros and environments while only the
translation of the document's language is actually shown.
Choosing a translation then is as simple as choosing the document's
language via `babel` or `polyglossia`.

## Availability

The `multilang` package is on [CTAN](http://www.ctan.org/pkg/multilang),
where you can also find the [documentation](http://mirrors.ctan.org/macros/latex/contrib/multilang/multilang.pdf),
as well as on [github](https://github.com/Ri-Ga/multilang).

## Manual Installation

The `multilang` package comes with (at least) the following files
* multilang.ins
* multilang.dtx
* README.md

and possibly also with
* Makefile
* multilang.pdf (generated from multilang.dtx)
* multilang.sty (generated from multilang.dtx)

To install the `multilang` package, you additionally need
* docstrip.tex

To build the package (`multilang.sty`), run one of the following
```
    latex multilang.ins
    make package (needs Makefile)
```

Put the resulting `multilang.sty` somewhere where LaTeX can find it.
Read the documentation of your LaTeX system to find out where this
might be.

## Building Documentation

To build the documentation of the `multilang` package, you additionally
need the following classes and packages (including their dependencies)
* ltxdoc
* babel
* cleveref
* csquotes
* datetime2
* enumitem
* environ
* etoolbox
* hypdoc
* idxlayout
* pbox
* pgfkeys
* pgfopts
* sectionbox
* showexpl
* translations
* xcolor
* xspace

as well as
* pdflatex

To build the documentation (`multilang.pdf`), either run
```
    make docs
```
or the following sequence of commands
```
    pdflatex multilang.dtx
    makeindex -s gind.ist -o multilang.ind multilang.idx
    makeindex -s gglo.ist -o multilang.gls multilang.glo
    pdflatex multilang.dtx
    pdflatex multilang.dtx
```

Happy TeX'ing
