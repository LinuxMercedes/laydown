Grammar Specification
=====================

The grammar follows that of [Markdown](http://daringfireball.net/projects/markdown/syntax), with elements from [Scholmd](https://github.com/scholmd/scholmd/wiki/_pages) and [Github-flavored Markdown](https://help.github.com/articles/github-flavored-markdown).

It deviates from the original Markdown as follows:

Inline Blocks
-------------
Inline code supports a schema like so: `tag, actual code`, where tag can be used for various things such as syntax highlighting.
For instance, code highlighting and explicit inclusion of raw latex could be denoted by this.
As well, perhaps it could be used as a method to inline scripts for text generation?

Inline Math
-----------
Inline math equations can be denoted by $ signs. \$ will place a literal $ in either text or inlined math equations.

Code Blocks
-----------
These also support tags in the same fashion that inline blocks do, and should be handled in the same way.

Citations
---------
Citations need to handle bibtex-style citations. This also means we'll need a method for including bibtex files.

Table Syntax
------------
LaTeX's table syntax sucks.
The original Markdown doesn't provide a spec for tables, but Reddit's does, so that may be worth investigating.

Current State of the Grammar
============================

Completed Features
------------------
* Headings
* Paragraphs and Lines
* Inline blocks
* Inline math
* Code blocks

Inline Blocks
-------------
Currently implemented as [] instead of ``, which may/will need to get changed.

