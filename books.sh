#!/usr/bin/env bash

cd "$(dirname "$0")"
calibredb catalog content/media/library/books.csv --fields=authors,title,isbn,series,series_index --search="#read:yes"
#csv2mdtab content/media/library/books.csv content/media/library/books.md
csvjson content/media/library/books.csv > content/media/library/books.json
(echo "<table class=\"table table-hover table-striped stripe\" id=\"library-table\">" ; while read INPUT ; do echo "<tr><td>${INPUT//,/</td><td>}</td></tr>" ; done < content/media/library/books.csv ; echo "</table>") | sed 's/"//g' > content/media/library/books.html
cd "$OLDPWD"
