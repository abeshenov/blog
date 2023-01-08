all: docs/2022-12-04-data-classes.html docs/2023-01-07-java-util-date.html docs/2023-01-08-serviceloader.html docs/index.html

docs/index.html: index.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css index.adoc --out-file=docs/index.html
	cp pinapple.png docs

docs/2022-12-04-data-classes.html: 2022-12-04-data-classes.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css 2022-12-04-data-classes.adoc --out-file=docs/2022-12-04-data-classes.html
	cp 2022-12-04-data-classes-cover.jpg docs

docs/2023-01-07-java-util-date.html: 2023-01-07-java-util-date.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css 2023-01-07-java-util-date.adoc --out-file=docs/2023-01-07-java-util-date.html
	cp 2023-01-07-java-util-date-cover.jpg docs

docs/2023-01-08-serviceloader.html: 2023-01-08-serviceloader.adoc blog.css
	asciidoctor -n -a stylesheet=blog.css 2023-01-08-serviceloader.adoc --out-file=docs/2023-01-08-serviceloader.html
	cp 2023-01-08-serviceloader-cover.jpg docs

clean:
	rm -f docs/*.html docs/*.jpg
