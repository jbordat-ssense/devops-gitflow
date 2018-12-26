#
#           ╦╔╗   ┌─┐  ╔═╗╔═╗╔═╗╔╗╔╔═╗╔═╗
#           ║╠╩╗  │└┘  ╚═╗╚═╗║╣ ║║║╚═╗║╣
#          ╚╝╚═╝  └──  ╚═╝╚═╝╚═╝╝╚╝╚═╝╚═╝
#
# Author:  Jean Bordat <jean.bordat@ssense.com>
# Date:    2018-12-21
#
# Summary: Makefile that easily installs the
# Version: 0.1
#

prefix=$$HOME

EXEC_FILE=.gitdoflowrc

SOURCE_S="[[ -r $$HOME/$(EXEC_FILE) ]] && source $$HOME/$(EXEC_FILE)"

BASHRC=`cat $$HOME/.bashrc | grep $(EXEC_FILE)`
BASH_EVAL=$(shell [[ $(BASHRC) = $(SOURCE_S) ]] && echo 1 || echo 0)

ZSHRC=`cat $$HOME/.zshrc.local | grep $(EXEC_FILE)`
ZSH_EVAL=$(shell [[ $(ZSHRC) = $(SOURCE_S) ]] && echo 1 || echo 0)

all:
	@echo "usage: make install"
	@echo "       make uninstall"


install:
	install -m 0644 $(EXEC_FILE) $(prefix)
ifeq ($(BASH_EVAL), 0)
	@echo $(SOURCE_S) >> $(prefix)/.bashrc
endif
ifeq ($(ZSH_EVAL), 0)
	@echo $(SOURCE_S) >> $(prefix)/.zshrc.local
endif
