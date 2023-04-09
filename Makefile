.ONESHELL:

all: vps gh-pages fly

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

fly:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o kevinisageek-org.fly.dev -s config-fly.py
	deactivate
	fly deploy --local-only

.PHONY: all vps gh-pages fly
