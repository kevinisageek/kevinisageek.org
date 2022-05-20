.ONESHELL:

all: publish

publish:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o kevinisageek.org -s config.py
	deactivate
	rsync -Ppruvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude

.PHONY: publish
