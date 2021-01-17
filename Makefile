all: publish tilde html

html:
	./books.sh
	pelican content -o nomadic.local -s nomadic.local.py

tilde:
	./books.sh
	pelican content -o tilde -s kevinisageek.org-tilde.py
	rsync -Prvzc --delete tilde/ kevinisageek.org:public_html/ --cvs-exclude

publish:
	./books.sh
	pelican content -o kevinisageek.org -s kevinisageek.org.py
	rsync -Prvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

regenerate:
		pelican -r content -o $(OUTPUTDIR) -s $(CONFFILE)

.PHONY: html clean publish tilde
