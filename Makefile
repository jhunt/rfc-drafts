all: draft-hunt-tsdp-00.txt
clean:
	rm -f *.txt

%.txt: %.nroff
	nroff -ms $+ | ./fix.pl >$@
