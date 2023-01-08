all: html/data-classes.html html/java-util-date.html

html/data-classes.html: data-classes.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css data-classes.adoc --out-file=html/data-classes.html
	cp data-classes-cover.jpg html

html/java-util-date.html: java-util-date.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css java-util-date.adoc --out-file=html/java-util-date.html
	cp java-util-date-cover.jpg html

clean:
	rm -f html/*.html html/*.jpg
