.ONESHELL:

all: vps 

vps:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o build/kevinisageek.org -s config-vps.py
	rsync -Ppruvzc --delete --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r build/kevinisageek.org/ kevin@vps-1.ferret-interval.ts.net:website/ --cvs-exclude
	deactivate

container:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o build/container -s config-container.py
	deactivate

gokrazy:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o build/gokrazy -s config-gokrazy.py
	deactivate

gh-pages:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o build/kevinisageek.github.io -s config-ghpages.py
	deactivate

fly:
	. pelican/bin/activate
	./dump-read-library
	pelican content -o build/kevinisageek-org.fly.dev -s config-fly.py
	deactivate
	fly deploy --local-only

clean:
	rm -rf build/kevinisageek.org
	rm -rf build/kevinisageek.github.io
	rm -rf build/kevinisageek-org.fly.dev

.PHONY: all vps gh-pages fly clean container gokrazy

