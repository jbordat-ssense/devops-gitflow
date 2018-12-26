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

cmdprefix=do

prefix=$$HOME

BASH_EXEC_FILE_IN=.git-cflow-completion.bash
BASH_EXEC_FILE_ON=.git-$(cmdprefix)flow-completion.bash
BASH_SOURCE_S="[[ -r $$HOME/$(BASH_EXEC_FILE_ON) ]] && source $$HOME/$(BASH_EXEC_FILE_ON)"
BASHRC=`cat $$HOME/.bashrc | grep $(BASH_EXEC_FILE_ON)`
BASH_EVAL=$(shell [[ $(BASHRC) = $(BASH_SOURCE_S) ]] && echo 1 || echo 0)

ZSH_EXEC_FILE_IN=.git-cflow-completion.zsh
ZSH_EXEC_FILE_ON=.git-$(cmdprefix)flow-completion.zsh
ZSH_SOURCE_S="[[ -r $$HOME/$(ZSH_EXEC_FILE_ON) ]] && source $$HOME/$(ZSH_EXEC_FILE_ON)"
ZSHRC=`cat $$HOME/.zshrc.local | grep $(ZSH_EXEC_FILE_ON)`
ZSH_EVAL=$(shell [[ $(ZSHRC) = $(ZSH_SOURCE_S) ]] && echo 1 || echo 0)

all:
	@echo "usage: make install"
	@echo "       make uninstall"


install:
	install -m 0644 $(BASH_EXEC_FILE_IN) $(prefix)
	sed -i -e "s/git_flow/git_$(cmdprefix)flow/g" $(prefix)/$(BASH_EXEC_FILE_IN)
	mv $(prefix)/$(BASH_EXEC_FILE_IN) $(prefix)/$(BASH_EXEC_FILE_ON)
ifeq ($(BASH_EVAL), 0)
	@echo $(BASH_SOURCE_S) >> $(prefix)/.bashrc
endif
	install -m 0644 $(ZSH_EXEC_FILE_IN) $(prefix)
	sed -i -e "s/cflow/$(cmdprefix)flow/g" $(prefix)/$(ZSH_EXEC_FILE_IN)
	mv $(prefix)/$(ZSH_EXEC_FILE_IN) $(prefix)/$(ZSH_EXEC_FILE_ON)
ifeq ($(ZSH_EVAL), 0)
	@echo $(ZSH_SOURCE_S) >> $(prefix)/.zshrc.local
endif

uninstall:
	test -d $(prefix) && \
	cd $(prefix) && \
	rm -f $(BASH_EXEC_FILE_ON) $(ZSH_EXEC_FILE_ON)
