.ONESHELL:

all: publish

publish:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o kevinisageek.org -s config.py
	rsync -Ppruvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude
	#feed2toot -c feed2toot/feed2toot.ini
	deactivate

.PHONY: publish
