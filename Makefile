.ONESHELL:

all: publish

publish:
	. pelican/bin/activate
	#./dump-read-library
	pelican content -o kevinisageek.org -s config.py
	rsync -Ppruvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude
	deactivate

.PHONY: publish
