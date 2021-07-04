all: publish tilde nomadic

publish:
	./books.sh
	pelican content -o kevinisageek.org -s kevinisageek.org.py
	rsync -Pprvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude

tilde:
	./books.sh
	pelican content -o tilde -s kevinisageek.org-tilde.py
	rsync -Pprvzc --delete tilde/ kevinisageek.org:public_html/ --cvs-exclude

nomadic:
	./books.sh
	pelican content -o ~/public_html -s nomadic.kevinisageek.org.py

basecamp:
	./books.sh
	pelican content -o basecamp -s basecamp.kevinisageek.org.py
	rsync -Pprvzc --delete basecamp/ basecamp.local:public_html/ --cvs-exclude

home:
	./books.sh
	pelican content -o home -s home.kevinisageek.org.py
	rsync -Pprvzc --delete home/ basecamp.local:public_html/ --cvs-exclude

.PHONY: publish tilde nomadic basecamp home
