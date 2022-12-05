CHRONIC=

main.html: main.org
	$(CHRONIC) emacs $< -l ~/.emacs --batch -f org-reveal-export-to-html --kill

PHONY: download
download:
	wget https://github.com/hakimel/reveal.js/archive/refs/tags/4.4.0.tar.gz
	tar -zxvpf 4.4.0.tar.gz

PHONY: view
view: main.html
	xdg-open main.html
