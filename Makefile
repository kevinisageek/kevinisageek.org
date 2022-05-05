all: publish #tilde laptop basecamp

publish:
	./dump-read-library
	pelican content -o kevinisageek.org -s kevinisageek.org.py
	rsync -Ppruvzc --delete kevinisageek.org/ kevinisageek.org:website/ --cvs-exclude

tilde:
	./dump-read-library
	pelican content -o tilde -s kevinisageek.org-tilde.py
	rsync -Ppruvzc --delete tilde/ kevinisageek.org:public_html/ --cvs-exclude

laptop:
	./dump-read-library
	pelican content -o ~/public_html -s runabout.kevinisageek.org.py

basecamp:
	./dump-read-library
	pelican content -o basecamp -s home.kevinisageek.org.py
	rsync -Pprvuzc --delete basecamp/ basecamp.kevinisageek.org:public_html/ --cvs-exclude

.PHONY: publish tilde laptop basecamp
