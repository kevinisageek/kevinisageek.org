#!/bin/bash -x

cd "$(dirname "$0")"

calibredb catalog content/media/library/books.csv --fields=id,author_sort,title,isbn,identifiers,series,series_index,uuid --search="#read:yes"

#gsed -i '1 s/[\d128-\d255]//g' content/media/misc/books.csv

csvjson -i 4 content/media/library/books.csv > content/media/library/books.json
cd "$OLDPWD"
