##
# Helper Scripts
#
# @file
# @version 0.1
SOURCES := $(wildcard src/*)
FILES := $(shell ls src/)
PREFIX ?= ~/.local

show:
	echo $(SOURCES)
	echo $(PREFIX)
	echo $(PREFIX)/bin
	echo $(FILES)

install:
	for i in $(SOURCES) ; do \
		echo "$$i" ; \
		mkdir -p $(PREFIX)/bin ; \
		cp $$i $(PREFIX)/bin/ ; \
	done

uninstall:
	for i in $(FILES) ; do \
		echo $$i ; \
		rm $(PREFIX)/bin/$$i ; \
	done


# end
