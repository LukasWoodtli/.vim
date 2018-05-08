
source ~/.vim/bundle.vim

syntax on
filetype plugin indent on


syntax enable
set background=dark
colorscheme solarized

if has('gui_macvim')
	set guifont=DejaVu\ Sans\ Mono:h18
elseif has('gui_running')
	set guifont=DejaVu\ Sans\ Mono\ 14
	set linespace=2
endif

" Line numbers
set number

nmap <F8> :TagbarToggle<CR>

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()
nmap <F9> :NERDTree<CR>

