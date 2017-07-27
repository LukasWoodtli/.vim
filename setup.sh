#!/bin/bash

set -e
set -u

# https://stackoverflow.com/questions/18197705/adding-your-vim-vimrc-to-github-aka-dot-files/18203545#18203545

readonly THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
readonly VIMRC_FILE="$THIS_SCRIPT_DIR/../.vimrc"

if [ -f "$VIMRC_FILE" ]
then
	echo ".vimrc exists: create backup file .vimrc.bak"
	mv "$VIMRC_FILE" "$VIMRC_FILE.bak"
fi

echo "runtime vimrc" > "$VIMRC_FILE"

readonly VUNDLE_DIR="$THIS_SCRIPT_DIR/bundle/Vundle.vim"
if [ ! -d  "$VUNDLE_DIR" ]
then
	mkdir -p "$VUNDLE_DIR"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# install all plugins
	vim +PluginInstall +qall
fi

