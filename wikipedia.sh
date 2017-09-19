#!/bin/bash

raw=$(
  wget https://en.wikipedia.org/wiki/Category:Academic_publishing_companies -o /dev/null -O -|
  hxnormalize -x -l 1000|hxselect div#mw-pages|hxselect li|hxnormalize -x -l 998|grep -v List_of_university_presses|grep \<li
);

echo "$raw" > wikipedia-raw.html;

for line in $(seq 1 "$(echo "$raw"|wc -l)"); do echo "$raw"|head -n"$line"|tail -n 1 |hxselect a -c|html2text; done > wikipedia.txt

