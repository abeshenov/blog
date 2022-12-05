all: html/data-classes.html

html/data-classes.html: data-classes.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css data-classes.adoc --out-file=html/data-classes.html

clean:
	rm -f html/data-classes.html
