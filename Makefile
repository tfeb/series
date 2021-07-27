# Makefile for maintenance only (not build)
#

QUICKLISP = /Local/tfb/packages/quicklisp
FASLS	  = *fasl *fsl

.PHONY: default clean install uninstall

default:
	@echo \'make clean\' to remove crud
	@echo \'make QUICKLISP=/path/to/quicklisp install\' installs to local QL
	@echo \'make QUICKLISP=/path/to/quicklisp install\' uninstalls from QL

clean:
	@rm -f $(FASLS) *~

install:
	@[ -d "$(QUICKLISP)" ] || (echo "no $(QUICKLISP)" && exit 1)
	@mkdir -p "$(QUICKLISP)/local-projects/series"
	@install -C -v -m 444 *.lisp *.asd "$(QUICKLISP)/local-projects/series"
	@touch "$(QUICKLISP)/local-projects/"

uninstall:
	@if [ -d "$(QUICKLISP)/local-projects/series" ]; \
         then rm -rf "$(QUICKLISP)/local-projects/series"; fi
