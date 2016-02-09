all: draft-hunt-tsdp-00.txt
clean:
	rm -f *.txt

%.txt: %.nroff
	cat $< | tr -d '\r' | sed -e 's/ *$$//' >.$<
	mv .$< $<
	nroff -ms $< | ./fix.pl | tr -d '\r' | sed -e 's/ *$$//' >$@
