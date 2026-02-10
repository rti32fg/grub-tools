# SPDX-License-Identifier: GPL-3.0-or-later

#    ----------------------------------------------------------------------
#    Copyright © 2024, 2025, 2026  Pellegrino Prevete
#
#    All rights reserved
#    ----------------------------------------------------------------------
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

_PROJECT=grub-tools
PREFIX ?= /usr/local
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
LIB_DIR=$(DESTDIR)$(PREFIX)/lib

_INSTALL_FILE=\
  install \
    -vDm644
_INSTALL_DIR=\
  install \
    -vdm755
_INSTALL_EXE=\
  install \
    -vDm755

DOC_FILES=\
  $(wildcard \
      *.rst)
SCRIPT_FILES=\
  $(wildcard \
      $(_PROJECT)/*)

all:

check: shellcheck

shellcheck:

	shellcheck \
	  -s \
	    "bash" \
	    $(SCRIPT_FILES)

install: install-scripts install-doc

install-scripts:

	$(_INSTALL_EXE) \
	  "$(_PROJECT)/mkgrub" \
	    "$(BIN_DIR)/mkgrub"
	$(_INSTALL_EXE) \
	  "$(_PROJECT)/mkgrubcfg" \
	  "$(BIN_DIR)/mkgrubcfg"
	$(_INSTALL_FILE) \
	  "configs/grub-embed.cfg" \
	  "$(LIB_DIR)/mkgrub/configs/grub-embed.cfg"

install-doc:

	$(_INSTALL_FILE) \
	  $(DOC_FILES) \
	  -t \
	  $(DOC_DIR)

install-man:

	$(_INSTALL_DIR) \
	  "$(MAN_DIR)/man1"
	rst2man \
	  "man/mkgrub.1.rst" \
	  "$(MAN_DIR)/man1/mkgrub.1"
	rst2man \
	  "man/mkgrubcfg.1.rst" \
	  "$(MAN_DIR)/man1/mkgrubcfg.1"

.PHONY: check install install-doc install-man install-scripts shellcheck
