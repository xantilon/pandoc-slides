make:
	install
	revealjs
	#slidy
	#beamer
	#dz
	clean

revealjs:	
#	pandoc -s -t revealjs habits.md -o habits_rv.html  --self-contained -V revealjs-url=node_modules/reveal.js
	pandoc -i -s -t revealjs habits.md -o habits_rv.html  \
			-V revealjs-url=node_modules/reveal.js \
			--slide-level 2 \
			--self-contained \
			--webtex
#not working			--mathml=http://www.maths.nottingham.ac.uk/personal/drw/LaTeXMathML.js			
#not working			--jsmath
#not working			-V theme:moon
#not working			-V theme=moon \	
#not working			--css node_modules\reveal.js\css\moon.css
	
	open habits_rv.html

slidy:	
	pandoc -t slidy -s habits.md -o habits_sl.html \
			--slide-level 2 \
			--self-contained

	open habits_sl.html

beamer:	
	pandoc -t beamer -s habits.md -o habits_bm.pdf  --self-contained \
			-V theme:Warsaw \
			--slide-level 2 \
			--self-contained

	open habits_bm.pdf

dz:
	pandoc -t dzslides -s habits.md -o habits_dz.html  \
	--self-contained \
	--slide-level 2 \

	open habits_dz.html

install:
	npm install

clean:
  