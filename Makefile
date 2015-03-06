make:
	install
	revealjs
	slidy
	beamer
	clean

revealjs:	
#	pandoc -s -t revealjs habits.md -o habits_rv.html  --self-contained -V revealjs-url=node_modules/reveal.js
	pandoc -i -s -t revealjs habits.md -o habits_rv.html  \
			-V revealjs-url=node_modules/reveal.js \
#not working			-V theme=moon \
			--slide-level 2 \
			--self-contained 
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

install:
	npm install

clean:
  