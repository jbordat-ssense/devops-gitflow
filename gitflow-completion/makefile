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

BASH_EXEC_FILE=.git-flow-completion.bash
BASH_SOURCE_S="[[ -r $$HOME/$(BASH_EXEC_FILE) ]] && source $$HOME/$(BASH_EXEC_FILE)"
BASHRC=`cat $$HOME/.bashrc | grep $(BASH_EXEC_FILE)`
BASH_EVAL=$(shell [[ $(BASHRC) = $(BASH_SOURCE_S) ]] && echo 1 || echo 0)

ZSH_EXEC_FILE=.git-flow-completion.zsh
ZSH_SOURCE_S="[[ -r $$HOME/$(ZSH_EXEC_FILE) ]] && source $$HOME/$(ZSH_EXEC_FILE)"
ZSHRC=`cat $$HOME/.zshrc.local | grep $(ZSH_EXEC_FILE)`
ZSH_EVAL=$(shell [[ $(ZSHRC) = $(ZSH_SOURCE_S) ]] && echo 1 || echo 0)

all:
	@echo "usage: make install"
	@echo "       make uninstall"


install:
	install -m 0644 $(BASH_EXEC_FILE) $(prefix)
ifeq ($(BASH_EVAL), 0)
	@echo $(BASH_SOURCE_S) >> $(prefix)/.bashrc
endif
	install -m 0644 $(ZSH_EXEC_FILE) $(prefix)
ifeq ($(ZSH_EVAL), 0)
	@echo $(ZSH_SOURCE_S) >> $(prefix)/.zshrc.local
endif
