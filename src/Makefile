all: huhu.pat hyph_hu.dic hyph_hu.tex huhyphn.tex

huhu.pat: words/?.txt
	cat words/[a-z].txt | iconv -f utf8 -t latin2 > dict.in
	./patgen dict.in base.pat huhu.pat magyar.tra < patgen.in
	rm dict.in

hyph_hu.dic: hyph_hu.dic.erb huhu.pat
	eruby < hyph_hu.dic.erb > hyph_hu.dic

hyph_hu.tex: hyph_hu.tex.erb huhu.pat
	eruby < hyph_hu.tex.erb > hyph_hu.tex

huhyphn.tex: huhyphn.tex.erb huhu.pat
	eruby < huhyphn.tex.erb > huhyphn.tex
