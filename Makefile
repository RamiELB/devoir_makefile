DESDIR = /usr/local

all: 
	cd lib ; make all
	cd src ; make all

test:
	cd src ; make test

install: all

clean:
	cd src ; make clean
	cd lib ; make clean

.PHONY: all clean test install	