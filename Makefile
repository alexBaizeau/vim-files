# Installs extensions and compiles things that need compiling.
#
##
help:
	@echo "install - install + compile native things."

install: symlink vundle

vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
	vim +PluginInstall +qall

symlink:
	ln -sf ~+/vimrc ~/.vimrc

