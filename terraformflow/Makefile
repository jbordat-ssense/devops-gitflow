#
#           ╦╔╗   ┌─┐  ╔═╗╔═╗╔═╗╔╗╔╔═╗╔═╗
#           ║╠╩╗  │└┘  ╚═╗╚═╗║╣ ║║║╚═╗║╣
#          ╚╝╚═╝  └──  ╚═╝╚═╝╚═╝╝╚╝╚═╝╚═╝
#
# Author:  Jean Bordat <jean.bordat@ssense.com>
# Date:    2018-12-26
#
# Summary: Makefile to ease the installation
# Version: 0.1
#


prefix=/usr/local

# files that need mode 755
EXEC_FILES=terraform-flow

# files that need mode 644
SCRIPT_FILES =terraform-flow-init
# SCRIPT_FILES+=terraform-flow-feature
# SCRIPT_FILES+=terraform-flow-hotfix
# SCRIPT_FILES+=terraform-flow-release
# SCRIPT_FILES+=terraform-flow-support
SCRIPT_FILES+=terraform-flow-version
SCRIPT_FILES+=terraformflow-common
SCRIPT_FILES+=terraformflow-shFlags

# TODO setup dynamic naming ?
# PREFIX_FILES=terraform-flow-prefix

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	@test -f terraformflow-shFlags || (echo "Run 'terraform submodule init && terraform submodule update' first." ; exit 1 )
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0644 $(SCRIPT_FILES) $(prefix)/bin
	# install -m 0644 $(PREFIX_FILES) $(prefix)/bin
	@echo "Run 'terraform doflow version' to check the installation"

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) $(SCRIPT_FILES)
