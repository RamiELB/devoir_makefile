CC = gcc
CFLAGS = -DHAVE_CONFIG_H -I../lib -DHAVE_CONFIG_H -DNO_LIBPAPER -g -O2
LDLIBS = -lbarcode
LDLFLAGS = -L../lib


all: barcode

sample: sample.o
	$(CC) $(CFLAGS) $(LDLFLAGS) -o $@ $^ $(LDLIBS)

barcode: cmdline.o main.o 
	$(CC) $(CFLAGS) $(LDLFLAGS) -o $@ $^ $(LDLIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< 

test: barcode 
	@./barcode -b bonjour -E > test-bonjour.eps
	@cmp bonjour.eps test-bonjour.eps || exit 1

clean:
	rm -f main.o cmdline.o sample barcode test-bonjour.eps

.PHONY: all clean test
