DESTDIR = /usr/local
FILES = AUTHORS ChangeLog COPYING NEWS README TODO

all: 
	cd lib ; make all
	cd src ; make all

test:
	cd src ; make test

install:
	mkdir -p $(DESTDIR)
	cd lib ; make install DESTDIR=$(DESTDIR)
	cd src ; make install DESTDIR=$(DESTDIR)

	mkdir -p $(DESTDIR)/share/man/man1
	gzip -c doc/barcode.1 > $(DESTDIR)/share/man/man1/barcode.1.gz

	mkdir -p $(DESTDIR)/share/man/man3
	gzip -c doc/barcode.3 > $(DESTDIR)/share/man/man3/barcode.3.gz

	cd doc ; makeinfo barcode.texi
	mkdir -p $(DESTDIR)/share/info
	cp doc/barcode.info $(DESTDIR)/share/info

	mkdir -p $(DESTDIR)/share/barcode
	cp $(FILES) $(DESTDIR)/share/barcode

uninstall:
	cd src ; make uninstall DESTDIR=$(DESTDIR)
	cd lib ; make uninstall DESTDIR=$(DESTDIR)

	rm -f $(DESTDIR)/share/info/barcode.info
	rm -f $(DESTDIR)/share/man/man1/barcode.1.gz $(DESTDIR)/share/man/man3/barcode.3.gz

	rm -f $(DESTDIR)/share/barcode/*

clean:
	cd lib ; make clean
	cd src ; make clean

.PHONY: all test install uninstall clean