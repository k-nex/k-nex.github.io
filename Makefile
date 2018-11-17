SCRIBBLE=scribble
FLAGS=--htmls

CONTENTDIR=content/

INDEXFILE=index.scrbl

INDEXPATH=$(addprefix $(CONTENTDIR), $(INDEXFILE))

.PHONY: clean

clean:
	rm -f *.js *.css *.html *~
	rm -f content/*~

site:
	$(SCRIBBLE) $(FLAGS) $(INDEXPATH)
	mv index/* .
	rm -rf index/
