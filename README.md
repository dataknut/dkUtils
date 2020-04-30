# dkUtils
dataknut's utilities including

 * a deMacron function useful for [Te Reo Māori](https://www.tpk.govt.nz/en/whakamahia/te-reo-maori)
 * various number tidying & duration extraction functions
 * a bib file of references I use regulary in .Rmd files. To make this work on a unix-like platform do `ln -s ~/github/dataknut/dkUtils/bibliography.bib ~/bibliography.bib` and then put bibliography: '`r path.expand("~/bibliography.bib")`' in your .Rmd yaml header.

#YMMV

The repo is a package. To install do:

 * `devtools::install_github("dataknut/dkUtils")`

For terms of re-use see the [LICENSE](LICENSE)
