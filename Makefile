.ONESHELL:

all: publish

publish:
	./dump-read-library
	. pelican/bin/activate
	pelican content -o kevinisageek.org -s config.py
	rsync -Ppruvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude
	#feed2toot -c feed2toot/feed2toot.ini
	deactivate

.PHONY: publish
