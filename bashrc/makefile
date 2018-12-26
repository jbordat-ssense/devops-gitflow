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

EXEC_FILE_IN=.git-cflowrc
EXEC_FILE_ON=.git-$(cmdprefix)flowrc

SOURCE_S="[[ -r $$HOME/$(EXEC_FILE_ON) ]] && source $$HOME/$(EXEC_FILE_ON)"

BASHRC=`cat $$HOME/.bashrc | grep $(EXEC_FILE_ON)`
BASH_EVAL=$(shell [[ $(BASHRC) = $(SOURCE_S) ]] && echo 1 || echo 0)

ZSHRC=`cat $$HOME/.zshrc.local | grep $(EXEC_FILE_ON)`
ZSH_EVAL=$(shell [[ $(ZSHRC) = $(SOURCE_S) ]] && echo 1 || echo 0)

all:
	@echo "usage: make install"
	@echo "       make uninstall"


install:
	install -m 0644 $(EXEC_FILE_IN) $(prefix)
	sed -i -e "s/cof/$(cmdprefix)f/g" $(prefix)/$(EXEC_FILE_IN)
	mv $(prefix)/$(EXEC_FILE_IN) $(prefix)/$(EXEC_FILE_ON)
ifeq ($(BASH_EVAL), 0)
	@echo $(SOURCE_S) >> $(prefix)/.bashrc
endif
ifeq ($(ZSH_EVAL), 0)
	@echo $(SOURCE_S) >> $(prefix)/.zshrc.local
endif

uninstall:
	test -d $(prefix) && \
	cd $(prefix) && \
	rm -f $(EXEC_FILE_ON)
