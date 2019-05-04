CC = gcc
CFLAGS = -DHAVE_CONFIG_H -I. -DHAVE_CONFIG_H -DNO_LIBPAPER -g -O2
AR = ar
ARFLAGS = cru
RANLIB = ranlib
SRCFILES = codabar.c code128.c code93.c i25.c msi.c plessey.c svg.c code11.c code39.c ean.c library.c pcl.c ps.c
DESTDIR = .


all: libbarcode.a

libbarcode.a: $(SRCFILES:.c=.o)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< 

install: libbarcode.a barcode.h
	mkdir -p $(DESTDIR)/lib && cp libbarcode.a $(DESTDIR)/lib
	mkdir -p $(DESTDIR)/include && cp barcode.h $(DESTDIR)/include

uninstall:
	rm -f $(DESTDIR)/lib/libbarcode.a
	rm -f $(DESTDIR)/include/barcode.h

clean:
	rm -f $(SRCFILES:.c=.o) libbarcode.a

.PHONY: all clean install uninstall
