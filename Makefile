pdf:
	pandoc -o index.pdf docs/index.md

html:
	pandoc -o index.html docs/index.md

clean:
	rm index.pdf index.html
