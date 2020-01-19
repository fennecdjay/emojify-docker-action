#!/bin/sh -l

set -e

curl https://raw.githubusercontent.com/mrowa44/emojify/master/emojify -o ./emojify
chmod +x ./emojify

for file in "$1"/*.md "$1"/*.mdr
do
  cat "$file" | ./emojify > "$file.tmp"
  mv "$file.tmp" "$file"
done
