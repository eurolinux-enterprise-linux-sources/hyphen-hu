#!/bin/bash

cat pattmp.* | grep [\.-] | sort | uniq | iconv -f latin2 -t utf8 > failed.txt
