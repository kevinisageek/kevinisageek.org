#!/bin/bash

cd "$(dirname "$0")"
calibredb catalog content/media/library/books.csv --fields=authors,title,isbn,series,series_index --search="#read:yes"
#csv2mdtab content/media/library/books.csv content/media/library/books.md
csvjson content/media/library/books.csv > content/media/library/books.json
cd "$OLDPWD"
