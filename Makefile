.ONESHELL:

all: vps 

vps:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o kevinisageek.org -s config-vps.py
	rsync -Ppruvzc --delete --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r kevinisageek.org/ kevin@vps-1:website/ --cvs-exclude
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
