#!/bin/bash

cd "$(dirname "$0")"

calibredb catalog content/misc/books.csv --fields=id,author_sort,title,isbn,identifiers,series,series_index,uuid --search="#read:yes"

#gsed -i '1 s/[\d128-\d255]//g' content/misc/books.csv

csvjson -i 4 content/misc/books.csv > content/misc/books.json
cd "$OLDPWD"
