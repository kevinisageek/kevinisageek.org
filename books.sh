#!/bin/bash

cd "$(dirname "$0")"
calibredb catalog content/media/library/books.csv --fields=id,authors,title,isbn,identifiers,series,series_index,uuid --search="#read:yes"
csvjson -i 4 content/media/library/books.csv > content/media/library/books.json
cd "$OLDPWD"
