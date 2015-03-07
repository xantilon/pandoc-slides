# pandoc-slides

**This is for Mac OS X**

I just pulled together some information on how to easily create slides from markdown.

RevealJS is the way to go for me. The other slide outputs (slidy, beamer, dzslides) are for evalution purpose only. Also they are a kind of fallback, since they don't need extra files. (Beamer maybe does, but I have TEX installed) 

## Prerequisites

It needs to have [pandoc](//johnmacfarlane.net/pandoc/README.html) and [npm](//npmjs.com) installed and available.  

## Usage

* git clone this
* cd pandoc-slides
* make install
* subl . (or whatever editor you're using now)
* (edit the example habits.md)
* make revealjs

## Todo

still didn't get pandoc to use the theme
