.ONESHELL:

all: vps gh-pages

vps:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o kevinisageek.org -s config-vps.py
	rsync -Ppruvzc --delete kevinisageek.org/ kevinisageek:website/ --cvs-exclude
	deactivate

gh-pages:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o kevinisageek.github.io -s config-ghpages.py
	deactivate

.PHONY: all vps gh-pages
