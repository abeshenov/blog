all: docs/data-classes.html docs/java-util-date.html docs/index.html

docs/index.html: index.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css index.adoc --out-file=docs/index.html

docs/data-classes.html: data-classes.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css data-classes.adoc --out-file=docs/data-classes.html
	cp data-classes-cover.jpg docs

docs/java-util-date.html: java-util-date.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css java-util-date.adoc --out-file=docs/java-util-date.html
	cp java-util-date-cover.jpg docs

clean:
	rm -f docs/*.html docs/*.jpg
