html:
	pandoc -s README.md --toc --toc-depth=2 -c css/mvp.css \
	--template template.html -o README.html

clean:
	rm -rvf build
