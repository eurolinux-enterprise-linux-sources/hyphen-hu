#!/bin/sh

DISTDIR=huhyphn-`date +%Y%m%d`
mkdir "$DISTDIR"
cp ../huhyphn.tex ../hyph_hu.tex ../hyph_hu.dic ../gpl.txt ../doc/huhyphn.pdf "$DISTDIR"
tar -cvzf "$DISTDIR".tar.gz "$DISTDIR"
rm -r "$DISTDIR"
