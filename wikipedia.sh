#!/bin/bash

echo "Fetching list..." 1>&2
raw=$(
  wget https://en.wikipedia.org/wiki/Category:Academic_publishing_companies -o /dev/null -O -|
  hxnormalize -x -l 1000|hxselect div#mw-pages|hxselect li|hxnormalize -x -l 998|grep -v List_of_university_presses|grep \<li
);

echo "$raw" > wikipedia-raw.html;

echo "Processing list:" 1>&2
for line in $(seq 1 "$(echo "$raw"|wc -l)"); do
  wikipediaUrl=$(echo "$raw"|head -n"$line"|tail -n 1 | cut -d\" -f2);
  name=$(echo "$raw"|head -n"$line"|tail -n 1 |hxselect a -c|html2text);
  echo ": Processing $name" 1>&2;
  # echo ":: Fetching https://en.wikipedia.org/$wikipediaUrl" 1>&2;
  url=$(wget https://en.wikipedia.org$wikipediaUrl -o /dev/null -O -|hxnormalize -x -l 1000|hxselect table.infobox|hxselect td.url -c|hxselect a -c);
  # FIXME: already works for some results, but not all...
  # echo "$name; $url";
  echo $name;
done > wikipedia.txt
