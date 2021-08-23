html:
	pandoc -s sample.md --toc --toc-depth=2 -c css/mvp.css \
	--template template.html -o sample.html

clean:
	rm -rvf build
