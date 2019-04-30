CC = gcc
CFLAGS = -DHAVE_CONFIG_H -I. -DHAVE_CONFIG_H -DNO_LIBPAPER -g -O2
AR = ar
ARFLAGS = cru
RANLIB = ranlib
SRCFILES = codabar.c code128.c code93.c i25.c msi.c plessey.c svg.c code11.c code39.c ean.c library.c pcl.c ps.c


all: libbarcode.a

libbarcode.a: $(SRCFILES:.c=.o)
	$(AR) $(ARFLAGS) $@ $^
	$(RANLIB) $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< 

clean:
	rm -f $(SRCFILES:.c=.o) libbarcode.a

.PHONY: all clean
