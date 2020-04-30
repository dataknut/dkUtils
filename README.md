# dkUtils
dataknut's utilities including

 * a deMacron function useful for [Te Reo Māori](https://www.tpk.govt.nz/en/whakamahia/te-reo-maori) as used in the [NZ #birdOfTheYear 2018 twitter analysis](https://dataknut.github.io/hashTagR/boty2018.html). And yes, the [Prime Minister did join in the fun](https://twitter.com/jacindaardern/status/1051569120066469889). #onlyInNZ :-)
 * various number tidying & duration extraction functions
 * a bib file of references I use regulary in .Rmd files. To make this work on a unix-like platform do `ln -s ~/github/dataknut/dkUtils/bibliography.bib ~/bibliography.bib` and then put bibliography: '`r path.expand("~/bibliography.bib")`' in your .Rmd yaml header.

#YMMV

The repo is a package. To install do:

 * `devtools::install_github("dataknut/dkUtils")`

For terms of re-use see the [LICENSE](LICENSE)
