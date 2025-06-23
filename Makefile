.ONESHELL:

all: vps 

vps:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o kevinisageek.org -s config-vps.py
	rsync -Ppruvzc --delete --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r kevinisageek.org/ kevin@vps-1.ferret-interval.ts.net:website/ --cvs-exclude
	deactivate

container:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o container -s config-container.py
	deactivate

gokrazy:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o gokrazy -s config-gokrazy.py
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

clean:
	rm -rf kevinisageek.org
	rm -rf kevinisageek.github.io
	rm -rf kevinisageek-org.fly.dev

.PHONY: all vps gh-pages fly clean container

