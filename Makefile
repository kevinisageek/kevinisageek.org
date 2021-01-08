DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

all: publish tilde html

html:
	./books.sh
	pelican content -o nomadic.local -s nomadic.local.py

tilde:
	pelican content -o tilde -s kevinisageek.org-tilde.py
	./books.sh
	rsync -P -rvzc --delete tilde/ kevinisageek.org:public_html/ --cvs-exclude

publish:
	pelican content -o kevinisageek.org -s kevinisageek.org.py
	./books.sh
	rsync -P -rvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)
	regenerate:
		pelican -r content -o $(OUTPUTDIR) -s $(CONFFILE)

.PHONY: html clean publish tilde
