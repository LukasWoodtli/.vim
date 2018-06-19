" inspired by:
" https://github.com/mdippery/vimfiles/blob/master/vim/.vim/bundle.vim

" Install Vundle if it is not already installed
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
	silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif


set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle - required!
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'

Plugin 'Tagbar'

Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

call vundle#end()

