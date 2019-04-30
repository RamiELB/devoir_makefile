CC = gcc
CFLAGS = -DHAVE_CONFIG_H -I../lib -I. -DHAVE_CONFIG_H -DNO_LIBPAPER -g -O2
LDLIBS = -lbarcode
LDLFLAGS = -L../lib


all: barcode

sample: sample.o barcode

barcode: main.o cmdline.o
	$(CC) $(CFLAGS) $(LDLIBS) $(LDLFLAGS) -o $@ $^ 

%.o: %.c
	$(CC) $(CFLAGS) -c $< 

clean:
	rm -f main.o cmdline.o sample barcode

.PHONY: all clean
