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

## Conclusion

Pandoc is great. But it is so powerful (=complex, versatile), that it is difficult to keep all the features updated. I found out, that ~~all~~ most I was trying here is due to [this bug](https://github.com/jgm/pandoc/issues/1891). The RevealJS update broke functionalities in pandoc. So downloading nd installing all the dependencies with npm shouldn't be necessary once this bug is fixed.

After that just remember the one commandline:

```
pandoc -i -s -t revealjs habits.md -o habits_rv.html  \
            -V revealjs-url=node_modules/reveal.js \
            --slide-level 2 \
            --self-contained \
            -V theme:moon
```

For MathML support, I have to look into, when I need it. For now none of the options deliver usable result. Only *--webtex* works, but is hideous. 

