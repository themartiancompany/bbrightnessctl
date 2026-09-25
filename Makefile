#
# SPDX-License-Identifier: AGPL-3.0-or-later

_PROJECT=bbrightnessctl
PREFIX ?= /usr/local
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

DOC_FILES=\
  $(wildcard \
      *.rst)
SCRIPT_FILES=\
  $(wildcard \
      $(_PROJECT)/*)

all:

check: shellcheck

prepare:

	git \
	  submodule \
	    update \
	    --init \
	      "man" || \
	true

shellcheck:

	shellcheck \
	  -s \
	    "bash" \
	  $(SCRIPT_FILES)

install: install-scripts install-doc install-man

install-scripts:

	install \
	  -vDm755 \
	  "$(_PROJECT)/$(_PROJECT)" \
	  "$(BIN_DIR)/$(_PROJECT)"

install-doc:

	install \
	  -vDm644 \
	  $(DOC_FILES) \
	  -t \
	  $(DOC_DIR)

install-man:

	make \
	  prepare
	cd \
	  "man"; \
  	make \
	  "install-man"	

uninstall: uninstall-man uninstall-scripts

uninstall-man:

	make \
	  prepare
	cd \
	  "man"; \
  	make \
	  "uninstall-man"	

uninstall-scripts:

	rm \
	  -rf \
	  "$(BIN_DIR)/$(_PROJECT)"

.PHONY: check install install-doc install-man install-scripts shellcheck uninstall uninstall-man uninstall-scripts
