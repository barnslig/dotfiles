LINK := ln -fs

WITH_VIM = yes
WITH_GIT = yes

.PHONY: install uninstall

install: uninstall
ifeq ($(WITH_VIM),yes)
	$(LINK) $(PWD)/vimrc $(HOME)/.vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
endif
ifeq ($(WITH_GIT),yes)
	$(LINK) $(PWD)/gitconfig $(HOME)/.gitconfig
endif

uninstall:
	$(RM) -r $(HOME)/.vim*
	$(RM) $(HOME)/.gitconfig
