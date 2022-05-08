all: publish

publish:
	./dump-read-library
	pelican content -o kevinisageek.org -s config.py
	rsync -Ppruvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude

.PHONY: publish
