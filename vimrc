
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
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F9> :NERDTree<CR>

" powerline
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Show trailling whitespaces
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

