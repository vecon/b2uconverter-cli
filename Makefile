VERSION=$(shell cat doc/VERSION)

all:
	cd b2uconverter; scripts/build-B2UConverter.sh > ../B2UConverter.py
